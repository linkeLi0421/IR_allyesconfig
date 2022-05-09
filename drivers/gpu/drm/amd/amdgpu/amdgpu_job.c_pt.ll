; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_job.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.80, i64, i64, i32, %struct.kref, i32 }
%union.anon.80 = type { i64 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@amdgpu_sched_ops = dso_local constant { %struct.drm_sched_backend_ops, [16 x i8] } { %struct.drm_sched_backend_ops { ptr @amdgpu_job_dependency, ptr @amdgpu_job_run, ptr @amdgpu_job_timedout, ptr @amdgpu_job_free_cb }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error adding fence (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error getting VM ID (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_job_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] Skip scheduling IBs!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_job_run\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_job.c\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_job_run._entry_ptr = internal global ptr @amdgpu_job_run._entry, section ".printk_index", align 4
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error scheduling IBs (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_sched_run_job = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_sched_run_job.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_job_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016[drm] %s - device unplugged skipping recovery on scheduler:%s\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu_job_timedout\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_job_timedout._entry_ptr = internal global ptr @amdgpu_job_timedout._entry, section ".printk_index", align 4
@amdgpu_gpu_recovery = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ring %s timeout, but soft recovered\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ring %s timeout, signaled seq=%u, emitted seq=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Process information: process %s pid %d thread %s pid %d\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"amdgpu_sched_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 316, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 545, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 225, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 233, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 259, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 264, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 190, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 108, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 42, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 53, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 59, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 62, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @amdgpu_job_run._entry, ptr @amdgpu_job_run._entry_ptr, ptr @amdgpu_job_timedout._entry, ptr @amdgpu_job_timedout._entry_ptr, ptr @amdgpu_sched_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sched_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_job_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_job_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_job_alloc(ptr noundef %adev, i32 noundef %num_ibs, ptr nocapture noundef %job, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ibs)
  %cmp = icmp eq i32 %num_ibs, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %mul = mul i32 %num_ibs, 24
  %add = add i32 %mul, 416
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %0 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %job, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end2

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 90
  %1 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rings, align 4
  %sched = getelementptr inbounds %struct.amdgpu_ring, ptr %2, i32 0, i32 3
  %sched3 = getelementptr inbounds %struct.drm_sched_job, ptr %call9.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %sched3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sched, ptr %sched3, align 4
  %4 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %job, align 4
  %vm4 = getelementptr inbounds %struct.amdgpu_job, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %vm4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vm, ptr %vm4, align 8
  %7 = load ptr, ptr %job, align 4
  %arrayidx5 = getelementptr %struct.amdgpu_job, ptr %7, i32 1
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ibs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx5, ptr %ibs, align 4
  %9 = load ptr, ptr %job, align 4
  %num_ibs6 = getelementptr inbounds %struct.amdgpu_job, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %num_ibs6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %num_ibs, ptr %num_ibs6, align 4
  %11 = load ptr, ptr %job, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %11, i32 0, i32 2
  tail call void @amdgpu_sync_create(ptr noundef %sync) #9
  %12 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %job, align 4
  %sched_sync = getelementptr inbounds %struct.amdgpu_job, ptr %13, i32 0, i32 3
  tail call void @amdgpu_sync_create(ptr noundef %sched_sync) #9
  %vram_lost_counter = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 75
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_lost_counter, i32 noundef 4) #9
  %14 = ptrtoint ptr %vram_lost_counter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %vram_lost_counter, align 4
  %16 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %job, align 4
  %vram_lost_counter8 = getelementptr inbounds %struct.amdgpu_job, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %vram_lost_counter8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %vram_lost_counter8, align 8
  %19 = load ptr, ptr %job, align 4
  %vm_pd_addr = getelementptr inbounds %struct.amdgpu_job, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %vm_pd_addr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 2147483647, ptr %vm_pd_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sync_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef %adev, i32 noundef %size, i32 noundef %pool_type, ptr nocapture noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 440) #13
  %1 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %job, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rings.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 90
  %2 = ptrtoint ptr %rings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rings.i, align 4
  %sched.i = getelementptr inbounds %struct.amdgpu_ring, ptr %3, i32 0, i32 3
  %sched3.i = getelementptr inbounds %struct.drm_sched_job, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %sched3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sched.i, ptr %sched3.i, align 4
  %vm4.i = getelementptr inbounds %struct.amdgpu_job, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %vm4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vm4.i, align 8
  %arrayidx5.i = getelementptr %struct.amdgpu_job, ptr %call7.i.i.i, i32 1
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ibs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx5.i, ptr %ibs.i, align 4
  %num_ibs6.i = getelementptr inbounds %struct.amdgpu_job, ptr %call7.i.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %num_ibs6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %num_ibs6.i, align 4
  %sync.i = getelementptr inbounds %struct.amdgpu_job, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @amdgpu_sync_create(ptr noundef %sync.i) #9
  %8 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %job, align 4
  %sched_sync.i = getelementptr inbounds %struct.amdgpu_job, ptr %9, i32 0, i32 3
  tail call void @amdgpu_sync_create(ptr noundef %sched_sync.i) #9
  %vram_lost_counter.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 75
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_lost_counter.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %vram_lost_counter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %vram_lost_counter.i, align 4
  %12 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %job, align 4
  %vram_lost_counter8.i = getelementptr inbounds %struct.amdgpu_job, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %vram_lost_counter8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %vram_lost_counter8.i, align 8
  %15 = load ptr, ptr %job, align 4
  %vm_pd_addr.i = getelementptr inbounds %struct.amdgpu_job, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %vm_pd_addr.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 2147483647, ptr %vm_pd_addr.i, align 8
  %17 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ibs, align 4
  %call1 = tail call i32 @amdgpu_ib_get(ptr noundef %adev, ptr noundef null, i32 noundef %size, i32 noundef %pool_type, ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %job, align 4
  tail call void @kfree(ptr noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_job_free_resources(ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -144
  %ops = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %external_hw_fence = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 6
  %4 = ptrtoint ptr %external_hw_fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %external_hw_fence, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw_fence1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hw_fence.0 = phi ptr [ %5, %if.then ], [ %hw_fence1, %if.else ]
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %6 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fence, align 8
  %tobool.not = icmp eq ptr %7, null
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %7, i32 0, i32 1
  %cond = select i1 %tobool.not, ptr %hw_fence.0, ptr %finished
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 9
  %8 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ibs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp616.not = icmp eq i32 %9, 0
  br i1 %cmp616.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %12 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ibs, align 4
  %arrayidx = getelementptr %struct.amdgpu_ib, ptr %13, i32 %i.017
  tail call void @amdgpu_ib_free(ptr noundef %11, ptr noundef %arrayidx, ptr noundef %cond) #9
  %inc = add nuw i32 %i.017, 1
  %14 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ibs, align 4
  %cmp6 = icmp ult i32 %inc, %15
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_job_free(ptr noundef %job) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -144
  %ops.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %external_hw_fence.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 6
  %4 = ptrtoint ptr %external_hw_fence.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %external_hw_fence.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw_fence1.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %hw_fence.0.i = phi ptr [ %5, %if.then.i ], [ %hw_fence1.i, %if.else.i ]
  %s_fence.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %6 = ptrtoint ptr %s_fence.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fence.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  %finished.i = getelementptr inbounds %struct.drm_sched_fence, ptr %7, i32 0, i32 1
  %cond.i = select i1 %tobool.not.i, ptr %hw_fence.0.i, ptr %finished.i
  %num_ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 9
  %8 = ptrtoint ptr %num_ibs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ibs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp616.not.i = icmp eq i32 %9, 0
  br i1 %cmp616.not.i, label %if.end.i.amdgpu_job_free_resources.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.amdgpu_job_free_resources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_job_free_resources.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %12 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ibs.i, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_ib, ptr %13, i32 %i.017.i
  tail call void @amdgpu_ib_free(ptr noundef %11, ptr noundef %arrayidx.i, ptr noundef %cond.i) #9
  %inc.i = add nuw i32 %i.017.i, 1
  %14 = ptrtoint ptr %num_ibs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ibs.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %15
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.amdgpu_job_free_resources.exit_crit_edge

for.body.i.amdgpu_job_free_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_job_free_resources.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

amdgpu_job_free_resources.exit:                   ; preds = %for.body.i.amdgpu_job_free_resources.exit_crit_edge, %if.end.i.amdgpu_job_free_resources.exit_crit_edge
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 2
  tail call void @amdgpu_sync_free(ptr noundef %sync) #9
  %sched_sync = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 3
  tail call void @amdgpu_sync_free(ptr noundef %sched_sync) #9
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %amdgpu_job_free_resources.exit
  %hw_fence = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 5
  %tobool.not.i7 = icmp eq ptr %hw_fence, null
  br i1 %tobool.not.i7, label %if.then.if.end_crit_edge, label %if.then.i8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i8:                                       ; preds = %if.then
  %refcount.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 5, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !47

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %if.end

if.else:                                          ; preds = %amdgpu_job_free_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %job) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sync_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_job_submit(ptr noundef %job, ptr noundef %entity, ptr noundef %owner, ptr noundef writeonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %f, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @drm_sched_job_init(ptr noundef %job, ptr noundef %entity, ptr noundef %owner) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @drm_sched_job_arm(ptr noundef %job) #9
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %finished, null
  br i1 %tobool.not.i, label %if.end3.dma_fence_get.exit_crit_edge, label %if.then.i

if.end3.dma_fence_get.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.end3
  %refcount.i = getelementptr inbounds %struct.drm_sched_fence, ptr %1, i32 0, i32 1, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !50

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !47

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

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.end3.dma_fence_get.exit_crit_edge
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %finished, ptr %f, align 4
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %5 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sched.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -144
  %ops.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %if.then.i14, label %if.else.i

if.then.i14:                                      ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %external_hw_fence.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 6
  %9 = ptrtoint ptr %external_hw_fence.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %external_hw_fence.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hw_fence1.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i14
  %hw_fence.0.i = phi ptr [ %10, %if.then.i14 ], [ %hw_fence1.i, %if.else.i ]
  %11 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fence, align 8
  %tobool.not.i15 = icmp eq ptr %12, null
  %finished.i = getelementptr inbounds %struct.drm_sched_fence, ptr %12, i32 0, i32 1
  %cond.i = select i1 %tobool.not.i15, ptr %hw_fence.0.i, ptr %finished.i
  %num_ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 9
  %13 = ptrtoint ptr %num_ibs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_ibs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp616.not.i = icmp eq i32 %14, 0
  br i1 %cmp616.not.i, label %if.end.i.amdgpu_job_free_resources.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.amdgpu_job_free_resources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_job_free_resources.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %17 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ibs.i, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_ib, ptr %18, i32 %i.017.i
  tail call void @amdgpu_ib_free(ptr noundef %16, ptr noundef %arrayidx.i, ptr noundef %cond.i) #9
  %inc.i = add nuw i32 %i.017.i, 1
  %19 = ptrtoint ptr %num_ibs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ibs.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %20
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.amdgpu_job_free_resources.exit_crit_edge

for.body.i.amdgpu_job_free_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_job_free_resources.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

amdgpu_job_free_resources.exit:                   ; preds = %for.body.i.amdgpu_job_free_resources.exit_crit_edge, %if.end.i.amdgpu_job_free_resources.exit_crit_edge
  tail call void @drm_sched_entity_push_job(ptr noundef %job) #9
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_job_free_resources.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %amdgpu_job_free_resources.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_arm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_push_job(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_job_submit_direct(ptr noundef %job, ptr noundef %ring, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3
  %sched1 = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 2
  %0 = ptrtoint ptr %sched1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sched, ptr %sched1, align 4
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 9
  %1 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_ibs, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 4
  %3 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ibs, align 4
  %call = tail call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef %2, ptr noundef %4, ptr noundef null, ptr noundef %fence) #9
  %5 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.dma_fence_get.exit_crit_edge, label %if.then.i

entry.dma_fence_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !50

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !47

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

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %entry.dma_fence_get.exit_crit_edge
  %external_hw_fence = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 6
  %9 = ptrtoint ptr %external_hw_fence to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %external_hw_fence, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %dma_fence_get.exit.cleanup_crit_edge

dma_fence_get.exit.cleanup_crit_edge:             ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dma_fence_get.exit
  tail call void @amdgpu_job_free(ptr noundef %job)
  %10 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fence, align 4
  %tobool.not.i11 = icmp eq ptr %11, null
  br i1 %tobool.not.i11, label %if.end.cleanup_crit_edge, label %if.then.i14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i14:                                      ; preds = %if.end
  %refcount.i12 = getelementptr inbounds %struct.dma_fence, ptr %11, i32 0, i32 6
  %call.i.i.i.i.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i12, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %refcount.i12, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i12, ptr %refcount.i12, i32 1, ptr elementtype(i32) %refcount.i12) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i15 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i15, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !47

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i12, i32 noundef 3) #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @dma_fence_release(ptr noundef %refcount.i12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dma_fence_get.exit.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_job_stop_all_jobs_on_sched(ptr noundef %sched) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 3, %entry ], [ %dec, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 %i.071
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_lock(ptr noundef nonnull %arrayidx) #9
  %entities = getelementptr %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 4, i32 %i.071, i32 2
  %0 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %0)
  %s_entity.068 = load ptr, ptr %entities, align 4
  %cmp3.not69 = icmp eq ptr %s_entity.068, %entities
  br i1 %cmp3.not69, label %if.end.for.end_crit_edge, label %if.end.while.cond.preheader_crit_edge

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  br label %while.cond.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond1.loopexit:                               ; preds = %dma_fence_set_error.exit.for.cond1.loopexit_crit_edge, %while.cond.preheader.for.cond1.loopexit_crit_edge
  %1 = ptrtoint ptr %s_entity.070 to i32
  call void @__asan_load4_noabort(i32 %1)
  %s_entity.0 = load ptr, ptr %s_entity.070, align 4
  %cmp3.not = icmp eq ptr %s_entity.0, %entities
  br i1 %cmp3.not, label %for.cond1.loopexit.for.end_crit_edge, label %for.cond1.loopexit.while.cond.preheader_crit_edge

for.cond1.loopexit.while.cond.preheader_crit_edge: ; preds = %for.cond1.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.cond1.loopexit.for.end_crit_edge:             ; preds = %for.cond1.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

while.cond.preheader:                             ; preds = %for.cond1.loopexit.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %s_entity.070 = phi ptr [ %s_entity.0, %for.cond1.loopexit.while.cond.preheader_crit_edge ], [ %s_entity.068, %if.end.while.cond.preheader_crit_edge ]
  %job_queue = getelementptr inbounds %struct.drm_sched_entity, ptr %s_entity.070, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  %2 = ptrtoint ptr %job_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %job_queue, align 4
  %tobool.not.i66 = icmp eq ptr %3, null
  br i1 %tobool.not.i66, label %while.cond.preheader.for.cond1.loopexit_crit_edge, label %do.end9.i.lr.ph

while.cond.preheader.for.cond1.loopexit_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.loopexit

do.end9.i.lr.ph:                                  ; preds = %while.cond.preheader
  %job_count.i.c = getelementptr inbounds %struct.drm_sched_entity, ptr %s_entity.070, i32 0, i32 6, i32 2
  %tail.i = getelementptr inbounds %struct.drm_sched_entity, ptr %s_entity.070, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %job_queue to i32
  br label %do.end9.i

do.end9.i:                                        ; preds = %dma_fence_set_error.exit.do.end9.i_crit_edge, %do.end9.i.lr.ph
  %5 = phi ptr [ %3, %do.end9.i.lr.ph ], [ %22, %dma_fence_set_error.exit.do.end9.i_crit_edge ]
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %8 = ptrtoint ptr %job_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %job_queue, align 4
  %tobool22.not.i = icmp eq ptr %7, null
  br i1 %tobool22.not.i, label %if.then26.i, label %while.body.critedge, !prof !50

if.then26.i:                                      ; preds = %do.end9.i
  %9 = ptrtoint ptr %5 to i32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tail.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %tail.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then26.i
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %tail.i, ptr %tail.i, i32 %9, i32 %4, ptr elementtype(i32) %tail.i) #9, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_long_cmpxchg.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

atomic_long_cmpxchg.exit.i:                       ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i, i32 %9)
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i.i, %9
  br i1 %cmp.not.i, label %atomic_long_cmpxchg.exit.i.if.end56.i_crit_edge, label %atomic_long_cmpxchg.exit.i.do.body31.i_crit_edge

atomic_long_cmpxchg.exit.i.do.body31.i_crit_edge: ; preds = %atomic_long_cmpxchg.exit.i
  br label %do.body31.i

atomic_long_cmpxchg.exit.i.if.end56.i_crit_edge:  ; preds = %atomic_long_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

do.body31.i:                                      ; preds = %do.body31.i.do.body31.i_crit_edge, %atomic_long_cmpxchg.exit.i.do.body31.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %5, align 4
  %13 = ptrtoint ptr %job_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %job_queue, align 4
  %tobool45.not.i = icmp eq ptr %12, null
  br i1 %tobool45.not.i, label %do.body31.i.do.body31.i_crit_edge, label %do.body31.i.if.end56.i_crit_edge, !prof !50

do.body31.i.if.end56.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

do.body31.i.do.body31.i_crit_edge:                ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31.i

if.end56.i:                                       ; preds = %do.body31.i.if.end56.i_crit_edge, %atomic_long_cmpxchg.exit.i.if.end56.i_crit_edge
  %call.i.i69.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %job_count.i.c, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %job_count.i.c, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %job_count.i.c, ptr %job_count.i.c, i32 1, ptr elementtype(i32) %job_count.i.c) #9, !srcloc !56
  br label %while.body

while.body.critedge:                              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i69.i.c = tail call zeroext i1 @__kasan_check_write(ptr noundef %job_count.i.c, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %job_count.i.c, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %job_count.i.c, ptr %job_count.i.c, i32 1, ptr elementtype(i32) %job_count.i.c) #9, !srcloc !56
  br label %while.body

while.body:                                       ; preds = %while.body.critedge, %if.end56.i
  %s_fence9 = getelementptr inbounds %struct.drm_sched_job, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %s_fence9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fence9, align 8
  %call10 = tail call i32 @dma_fence_signal(ptr noundef %17) #9
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %17, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.drm_sched_fence, ptr %17, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i59 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i59, label %while.body.dma_fence_set_error.exit_crit_edge, label %do.end.i, !prof !47

while.body.dma_fence_set_error.exit_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_set_error.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end.i, %while.body.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr inbounds %struct.drm_sched_fence, ptr %17, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -133, ptr %error51.i, align 8
  %call12 = tail call i32 @dma_fence_signal(ptr noundef %finished) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  %21 = ptrtoint ptr %job_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %job_queue, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %dma_fence_set_error.exit.for.cond1.loopexit_crit_edge, label %dma_fence_set_error.exit.do.end9.i_crit_edge

dma_fence_set_error.exit.do.end9.i_crit_edge:     ; preds = %dma_fence_set_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

dma_fence_set_error.exit.for.cond1.loopexit_crit_edge: ; preds = %dma_fence_set_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.loopexit

for.end:                                          ; preds = %for.cond1.loopexit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %dec = add nsw i32 %i.071, -1
  %cmp = icmp sgt i32 %i.071, 0
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end20

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end20:                                        ; preds = %cleanup
  %pending_list = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %23 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn73 = load ptr, ptr %pending_list, align 4
  %cmp28.not74 = icmp eq ptr %.pn73, %pending_list
  br i1 %cmp28.not74, label %for.end20.for.end42_crit_edge, label %for.end20.for.body30_crit_edge

for.end20.for.body30_crit_edge:                   ; preds = %for.end20
  br label %for.body30

for.end20.for.end42_crit_edge:                    ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.body30:                                       ; preds = %dma_fence_set_error.exit65.for.body30_crit_edge, %for.end20.for.body30_crit_edge
  %.pn75 = phi ptr [ %.pn, %dma_fence_set_error.exit65.for.body30_crit_edge ], [ %.pn73, %for.end20.for.body30_crit_edge ]
  %s_fence32 = getelementptr i8, ptr %.pn75, i32 12
  %24 = ptrtoint ptr %s_fence32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fence32, align 8
  %finished33 = getelementptr inbounds %struct.drm_sched_fence, ptr %25, i32 0, i32 1
  %flags.i60 = getelementptr inbounds %struct.drm_sched_fence, ptr %25, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i60, align 4
  %and1.i.i61 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i61)
  %tobool.not.i62 = icmp eq i32 %and1.i.i61, 0
  br i1 %tobool.not.i62, label %for.body30.dma_fence_set_error.exit65_crit_edge, label %do.end.i63, !prof !47

for.body30.dma_fence_set_error.exit65_crit_edge:  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_set_error.exit65

do.end.i63:                                       ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %dma_fence_set_error.exit65

dma_fence_set_error.exit65:                       ; preds = %do.end.i63, %for.body30.dma_fence_set_error.exit65_crit_edge
  %error51.i64 = getelementptr inbounds %struct.drm_sched_fence, ptr %25, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %error51.i64 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -133, ptr %error51.i64, align 8
  %call35 = tail call i32 @dma_fence_signal(ptr noundef %finished33) #9
  %29 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn75, align 4
  %cmp28.not = icmp eq ptr %.pn, %pending_list
  br i1 %cmp28.not, label %dma_fence_set_error.exit65.for.end42_crit_edge, label %dma_fence_set_error.exit65.for.body30_crit_edge

dma_fence_set_error.exit65.for.body30_crit_edge:  ; preds = %dma_fence_set_error.exit65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

dma_fence_set_error.exit65.for.end42_crit_edge:   ; preds = %dma_fence_set_error.exit65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.end42:                                        ; preds = %dma_fence_set_error.exit65.for.end42_crit_edge, %for.end20.for.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @amdgpu_job_dependency(ptr noundef %sched_job, ptr noundef %s_entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rq = getelementptr inbounds %struct.drm_sched_entity, ptr %s_entity, i32 0, i32 1
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %sched = getelementptr inbounds %struct.drm_sched_rq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -144
  %vm4 = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 1
  %4 = ptrtoint ptr %vm4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm4, align 8
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 2
  %call = tail call ptr @amdgpu_sync_get_fence(ptr noundef %sync) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call zeroext i1 @drm_sched_dependency_optimized(ptr noundef nonnull %call, ptr noundef %s_entity) #9
  br i1 %call5, label %if.then, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then:                                          ; preds = %land.lhs.true
  %sched_sync = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 3
  %call6 = tail call i32 @amdgpu_sync_fence(ptr noundef %sched_sync, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.while.end_crit_edge, label %if.then8

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %call6) #9
  br label %while.end

if.end9:                                          ; preds = %entry
  %vmid = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 12
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.end9.while.end_crit_edge, label %land.rhs.lr.ph

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end9
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end17.land.rhs_crit_edge, %land.rhs.lr.ph
  %6 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vmid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %9, i32 0, i32 1
  %call14 = tail call i32 @amdgpu_vmid_grab(ptr noundef nonnull %5, ptr noundef %add.ptr, ptr noundef %sync, ptr noundef %finished, ptr noundef %sched_job) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %while.body.if.end17_crit_edge, label %if.then16

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call14) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body.if.end17_crit_edge
  %call19 = tail call ptr @amdgpu_sync_get_fence(ptr noundef %sync) #9
  %cmp.not = icmp eq ptr %call19, null
  br i1 %cmp.not, label %if.end17.land.rhs_crit_edge, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end17.land.rhs_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end9.while.end_crit_edge, %if.then8, %if.then.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %fence.0.lcssa = phi ptr [ null, %if.end9.while.end_crit_edge ], [ %call, %if.then.while.end_crit_edge ], [ %call, %if.then8 ], [ %call, %land.lhs.true.while.end_crit_edge ], [ %call19, %if.end17.while.end_crit_edge ], [ null, %land.rhs.while.end_crit_edge ]
  ret ptr %fence.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @amdgpu_job_run(ptr noundef %sched_job) #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 2
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #9
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fence, align 4
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %sched_job, i32 0, i32 3
  %3 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fence, align 8
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 2
  %call = tail call ptr @amdgpu_sync_peek_fence(ptr noundef %sync, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end12, label %do.body7, !prof !47

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_job.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #9, !srcloc !57
  unreachable

do.end12:                                         ; preds = %entry
  tail call fastcc void @trace_amdgpu_sched_run_job(ptr noundef %sched_job)
  %vram_lost_counter = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 20
  %5 = ptrtoint ptr %vram_lost_counter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vram_lost_counter, align 8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %vram_lost_counter13 = getelementptr inbounds %struct.amdgpu_device, ptr %8, i32 0, i32 75
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_lost_counter13, i32 noundef 4) #9
  %9 = ptrtoint ptr %vram_lost_counter13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %vram_lost_counter13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp.not = icmp eq i32 %6, %10
  br i1 %cmp.not, label %do.end12.if.end16_crit_edge, label %if.then15

do.end12.if.end16_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %do.end12
  %flags.i = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then15.dma_fence_set_error.exit_crit_edge, label %do.end.i, !prof !47

if.then15.dma_fence_set_error.exit_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_fence_set_error.exit

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end.i, %if.then15.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -125, ptr %error51.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %dma_fence_set_error.exit, %do.end12.if.end16_crit_edge
  %error = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17 = icmp slt i32 %15, 0
  br i1 %cmp17, label %do.end21, label %if.else

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %if.end28

if.else:                                          ; preds = %if.end16
  %num_ibs = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 9
  %16 = ptrtoint ptr %num_ibs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ibs, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 4
  %18 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ibs, align 4
  %call24 = call i32 @amdgpu_ib_schedule(ptr noundef %add.ptr, i32 noundef %17, ptr noundef %19, ptr noundef %sched_job, ptr noundef nonnull %fence) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else.if.end28_crit_edge, label %if.then26

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %call24) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.else.if.end28_crit_edge, %do.end21
  %r.0 = phi i32 [ 0, %do.end21 ], [ %call24, %if.then26 ], [ 0, %if.else.if.end28_crit_edge ]
  %job_run_counter = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 23
  %20 = ptrtoint ptr %job_run_counter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %job_run_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.not = icmp eq i32 %21, 0
  br i1 %tobool29.not, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.end28
  %22 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fence, align 4
  %tobool.not.i58 = icmp eq ptr %23, null
  br i1 %tobool.not.i58, label %if.then30.if.end37_crit_edge, label %if.then.i

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then.i:                                        ; preds = %if.then30
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !50

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end37_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !47

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end37_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %if.end37

if.else32:                                        ; preds = %if.end28
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp34 = icmp sgt i32 %27, -1
  %hw_fence = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 5
  %tobool.not.i59 = icmp eq ptr %hw_fence, null
  %or.cond = select i1 %cmp34, i1 true, i1 %tobool.not.i59
  br i1 %or.cond, label %if.else32.if.end37_crit_edge, label %if.then.i62

if.else32.if.end37_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then.i62:                                      ; preds = %if.else32
  %refcount.i60 = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 5, i32 6
  %call.i.i.i.i.i.i.i61 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i60, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @llvm.prefetch.p0(ptr %refcount.i60, i32 1, i32 3, i32 1) #9
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i60, ptr %refcount.i60, i32 1, ptr elementtype(i32) %refcount.i60) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i63 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i63, label %if.end5.i.i.i.i.i.if.end37_crit_edge, label %if.then10.i.i.i.i.i, !prof !47

if.end5.i.i.i.i.i.if.end37_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i60, i32 noundef 3) #9
  br label %if.end37

if.then.i.i:                                      ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @dma_fence_release(ptr noundef %refcount.i60) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end37_crit_edge, %if.else32.if.end37_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end37_crit_edge, %if.then30.if.end37_crit_edge
  %29 = ptrtoint ptr %job_run_counter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %job_run_counter, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %job_run_counter, align 8
  %31 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sched, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 -144
  %ops.i = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %34, null
  br i1 %cmp.i, label %if.then.i64, label %if.else.i

if.then.i64:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %external_hw_fence.i = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 6
  %35 = ptrtoint ptr %external_hw_fence.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %external_hw_fence.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %hw_fence1.i = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i64
  %hw_fence.0.i = phi ptr [ %36, %if.then.i64 ], [ %hw_fence1.i, %if.else.i ]
  %37 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fence, align 8
  %tobool.not.i65 = icmp eq ptr %38, null
  %finished.i = getelementptr inbounds %struct.drm_sched_fence, ptr %38, i32 0, i32 1
  %cond.i = select i1 %tobool.not.i65, ptr %hw_fence.0.i, ptr %finished.i
  %num_ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 9
  %39 = ptrtoint ptr %num_ibs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_ibs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp616.not.i = icmp eq i32 %40, 0
  br i1 %cmp616.not.i, label %if.end.i.amdgpu_job_free_resources.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.amdgpu_job_free_resources.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_job_free_resources.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %sched_job, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %43 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ibs.i, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_ib, ptr %44, i32 %i.017.i
  call void @amdgpu_ib_free(ptr noundef %42, ptr noundef %arrayidx.i, ptr noundef %cond.i) #9
  %inc.i = add nuw i32 %i.017.i, 1
  %45 = ptrtoint ptr %num_ibs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_ibs.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %46
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.amdgpu_job_free_resources.exit_crit_edge

for.body.i.amdgpu_job_free_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_job_free_resources.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

amdgpu_job_free_resources.exit:                   ; preds = %for.body.i.amdgpu_job_free_resources.exit_crit_edge, %if.end.i.amdgpu_job_free_resources.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool39.not = icmp eq i32 %r.0, 0
  br i1 %tobool39.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %amdgpu_job_free_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  %47 = inttoptr i32 %r.0 to ptr
  br label %cond.end

cond.false:                                       ; preds = %amdgpu_job_free_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fence, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %47, %cond.true ], [ %49, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #9
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_job_timedout(ptr noundef %s_job) #0 align 64 {
entry:
  %ti = alloca %struct.amdgpu_task_info, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.drm_sched_job, ptr %s_job, i32 0, i32 2
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -144
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ti) #9
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %idx, align 4, !annotation !58
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2
  %call5 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #9
  br i1 %call5, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sched, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %8) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = call ptr @memset(ptr %ti, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_gpu_recovery to i32))
  %10 = load i32, ptr @amdgpu_gpu_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %vmid = getelementptr inbounds %struct.amdgpu_job, ptr %s_job, i32 0, i32 12
  %11 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vmid, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %s_job, i32 0, i32 3
  %13 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fence, align 8
  %parent = getelementptr inbounds %struct.drm_sched_fence, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %call9 = call zeroext i1 @amdgpu_ring_soft_recovery(ptr noundef %add.ptr, i32 noundef %12, ptr noundef %16) #9
  br i1 %call9, label %if.then10, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sched, align 4
  %name12 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name12, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, ptr noundef %20) #9
  br label %exit

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %pasid = getelementptr inbounds %struct.amdgpu_job, ptr %s_job, i32 0, i32 13
  %23 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pasid, align 4
  call void @amdgpu_vm_get_task_info(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %ti) #9
  %25 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sched, align 4
  %name16 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name16, align 4
  %last_seq = getelementptr i8, ptr %1, i32 -120
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 4) #9
  %29 = ptrtoint ptr %last_seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %last_seq, align 4
  %sync_seq = getelementptr i8, ptr %1, i32 -124
  %31 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sync_seq, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, ptr noundef %28, i32 noundef %30, i32 noundef %32) #9
  %tgid = getelementptr inbounds %struct.amdgpu_task_info, ptr %ti, i32 0, i32 3
  %33 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tgid, align 4
  %task_name = getelementptr inbounds %struct.amdgpu_task_info, ptr %ti, i32 0, i32 1
  %pid = getelementptr inbounds %struct.amdgpu_task_info, ptr %ti, i32 0, i32 2
  %35 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, ptr noundef nonnull %ti, i32 noundef %34, ptr noundef %task_name, i32 noundef %36) #9
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %call21 = call zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef %38) #9
  br i1 %call21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %call24 = call i32 @amdgpu_device_gpu_recover(ptr noundef %40, ptr noundef %s_job) #9
  br label %exit

if.else:                                          ; preds = %if.end13
  %call26 = call i32 @drm_sched_suspend_timeout(ptr noundef %1) #9
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 132
  %41 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %virt, align 8
  %and = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else.exit_crit_edge, label %if.then28

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %tdr_debug = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 132, i32 15
  %43 = ptrtoint ptr %tdr_debug to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %tdr_debug, align 8
  br label %exit

exit:                                             ; preds = %if.then28, %if.else.exit_crit_edge, %if.then22, %if.then10
  %44 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %45) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end
  %retval.0 = phi i32 [ 1, %exit ], [ 2, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ti) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_job_free_cb(ptr noundef %s_job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_sched_job_cleanup(ptr noundef %s_job) #9
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %s_job, i32 0, i32 2
  tail call void @amdgpu_sync_free(ptr noundef %sync) #9
  %sched_sync = getelementptr inbounds %struct.amdgpu_job, ptr %s_job, i32 0, i32 3
  tail call void @amdgpu_sync_free(ptr noundef %sched_sync) #9
  %ops = getelementptr inbounds %struct.amdgpu_job, ptr %s_job, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %hw_fence = getelementptr inbounds %struct.amdgpu_job, ptr %s_job, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %hw_fence, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %refcount.i = getelementptr inbounds %struct.amdgpu_job, ptr %s_job, i32 0, i32 5, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !47

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %s_job) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_sync_get_fence(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_sched_dependency_optimized(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vmid_grab(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_sync_peek_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_sched_run_job(ptr noundef %job) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_sched_run_job, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_sched_run_job, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !59

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !47

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %call42 = tail call i32 @__traceiter_amdgpu_sched_run_job(ptr noundef null, ptr noundef %job) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %13 = tail call i32 @llvm.read_register.i32(metadata !35) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !35) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !47

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_sched_run_job, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_sched_run_job, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_amdgpu_sched_run_job.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_amdgpu_sched_run_job.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 213, ptr noundef nonnull @.str.8) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  %31 = tail call i32 @llvm.read_register.i32(metadata !35) #9
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_sched_run_job(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_ring_soft_recovery(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_get_task_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_gpu_recover(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_suspend_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !28, !29, !31, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @amdgpu_sched_ops, !1, !"amdgpu_sched_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 316, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/dma-fence.h", i32 545, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 225, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 233, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 259, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @amdgpu_job_run._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @amdgpu_job_run._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 264, i32 4}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 190, i32 1}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!20 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 42, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @amdgpu_job_timedout._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @amdgpu_job_timedout._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 53, i32 3}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 59, i32 2}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_job.c", i32 62, i32 2}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148534171}
!46 = !{i64 2148448635, i64 2148448667, i64 2148448696, i64 2148448730, i64 2148448761, i64 2148448784}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2149569657}
!49 = !{i64 2148446170, i64 2148446202, i64 2148446231, i64 2148446265, i64 2148446296, i64 2148446319}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2152121554}
!52 = !{i64 2148546463}
!53 = !{i64 930153, i64 930177, i64 930198, i64 930215, i64 930232}
!54 = !{i64 2148546689}
!55 = !{i64 2152129396}
!56 = !{i64 2148447105, i64 2148447131, i64 2148447160, i64 2148447194, i64 2148447225, i64 2148447248}
!57 = !{i64 2159218460, i64 2159218964, i64 2159218497, i64 2159218553, i64 2159218587, i64 2159218611, i64 2159218652, i64 2159218673, i64 2159218701, i64 2159218735}
!58 = !{!"auto-init"}
!59 = !{i64 2148258033, i64 2148258038, i64 2148258051, i64 2148258095, i64 2148258129, i64 2148258150}
!60 = !{i64 2158893867}
!61 = !{i64 2158894076}
!62 = !{i64 2149270229}
!63 = !{i64 2149271265}
