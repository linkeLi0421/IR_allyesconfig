; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.amdgpu_sa_bo = type { %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
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
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.83 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@amdgpu_ib_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: failed to get a new IB (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amdgpu_ib_get\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_ib_get._entry_ptr = internal global ptr @amdgpu_ib_get._entry, section ".printk_index", align 4
@amdgpu_ib_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: couldn't schedule ib on ring <%s>\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu_ib_schedule\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_ib_schedule._entry_ptr = internal global ptr @amdgpu_ib_schedule._entry, section ".printk_index", align 4
@amdgpu_ib_schedule._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: VM IB without ID\0A\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_ib_schedule._entry_ptr.9 = internal global ptr @amdgpu_ib_schedule._entry.7, section ".printk_index", align 4
@amdgpu_ib_schedule._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: secure submissions not supported on compute rings\0A\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_ib_schedule._entry_ptr.12 = internal global ptr @amdgpu_ib_schedule._entry.10, section ".printk_index", align 4
@amdgpu_ib_schedule._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: scheduling IB failed (%d).\0A\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_ib_schedule._entry_ptr.15 = internal global ptr @amdgpu_ib_schedule._entry.13, section ".printk_index", align 4
@amdgpu_ib_schedule._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: failed to emit fence (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_ib_schedule._entry_ptr.18 = internal global ptr @amdgpu_ib_schedule._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ib test on %s succeeded\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* IB test failed on %s (%d).\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_sa_info\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_sa_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_debugfs_sa_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_ib_pipe_sync = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_ib_pipe_sync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"--------------------- DELAYED --------------------- \0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"-------------------- IMMEDIATE -------------------- \0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"--------------------- DIRECT ---------------------- \0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 74, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 159, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 164, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 170, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 179, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 267, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 406, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 412, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 458, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"amdgpu_debugfs_sa_info_fops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 448, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 516, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 108, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 436, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 439, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 442, i32 16 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @amdgpu_ib_get._entry, ptr @amdgpu_ib_get._entry_ptr, ptr @amdgpu_ib_schedule._entry, ptr @amdgpu_ib_schedule._entry.10, ptr @amdgpu_ib_schedule._entry.13, ptr @amdgpu_ib_schedule._entry.16, ptr @amdgpu_ib_schedule._entry.7, ptr @amdgpu_ib_schedule._entry_ptr, ptr @amdgpu_ib_schedule._entry_ptr.12, ptr @amdgpu_ib_schedule._entry_ptr.15, ptr @amdgpu_ib_schedule._entry_ptr.18, ptr @amdgpu_ib_schedule._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @amdgpu_debugfs_sa_info_fops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ib_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ib_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ib_schedule._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ib_schedule._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ib_schedule._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ib_schedule._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_sa_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ib_get(ptr noundef %adev, ptr noundef readnone %vm, i32 noundef %size, i32 noundef %pool_type, ptr noundef %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 %pool_type
  %call = tail call i32 @amdgpu_sa_bo_new(ptr noundef %arrayidx, ptr noundef %ib, i32 noundef %size, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %ib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib, align 8
  %manager.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %manager.i, align 4
  %cpu_ptr.i = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_ptr.i, align 8
  %soffset.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %soffset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soffset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %9
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %ptr, align 8
  %flags = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64, ptr %flags, align 4
  %tobool5.not = icmp eq ptr %vm, null
  br i1 %tobool5.not, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %manager.i, align 4
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %gpu_addr.i, align 8
  %16 = ptrtoint ptr %soffset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %soffset.i, align 4
  %conv.i = zext i32 %17 to i64
  %add.i = add i64 %15, %conv.i
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %18 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add.i, ptr %gpu_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sa_bo_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ib_free(ptr noundef %adev, ptr noundef %ib, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_sa_bo_free(ptr noundef %adev, ptr noundef %ib, ptr noundef %f) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sa_bo_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef %num_ibs, ptr noundef %ibs, ptr noundef %job, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ibs)
  %cmp = icmp eq i32 %num_ibs, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %if.end7.thread, label %if.then2

if.then2:                                         ; preds = %if.end
  %vm3 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 1
  %2 = ptrtoint ptr %vm3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm3, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %job, i32 0, i32 3
  %4 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fence, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %cond.true

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cond.true:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %context = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %context, align 8
  br label %if.end7

if.end7:                                          ; preds = %cond.true, %if.then2.if.end7_crit_edge
  %fence_ctx.0 = phi i64 [ %7, %cond.true ], [ 0, %if.then2.if.end7_crit_edge ]
  %ready = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3, i32 17
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end7.do.end_crit_edge, label %if.end10

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7.thread:                                   ; preds = %if.end
  %ready397 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3, i32 17
  %10 = ptrtoint ptr %ready397 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ready397, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not398 = icmp eq i8 %11, 0
  br i1 %tobool8.not398, label %if.end7.thread.do.end_crit_edge, label %if.end7.thread.if.end18_crit_edge

if.end7.thread.if.end18_crit_edge:                ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end7.thread.do.end_crit_edge:                  ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end7.thread.do.end_crit_edge, %if.end7.do.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef %name) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %land.lhs.true

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %vmid = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %14 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vmid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %do.end16, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end16:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge, %if.end7.thread.if.end18_crit_edge
  %tobool11.not405 = phi i1 [ false, %land.lhs.true.if.end18_crit_edge ], [ true, %if.end10.if.end18_crit_edge ], [ true, %if.end7.thread.if.end18_crit_edge ]
  %fence_ctx.0400404 = phi i64 [ %fence_ctx.0, %land.lhs.true.if.end18_crit_edge ], [ %fence_ctx.0, %if.end10.if.end18_crit_edge ], [ 0, %if.end7.thread.if.end18_crit_edge ]
  %flags = getelementptr %struct.amdgpu_ib, ptr %ibs, i32 0, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.if.end27_crit_edge, label %land.lhs.true20

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true20:                                  ; preds = %if.end18
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp21 = icmp eq i32 %23, 1
  br i1 %cmp21, label %do.end25, label %land.lhs.true20.if.end27_crit_edge

land.lhs.true20.if.end27_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end25:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true20.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %funcs28 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %26 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs28, align 4
  %emit_frame_size = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %emit_frame_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %emit_frame_size, align 4
  %emit_ib_size = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %27, i32 0, i32 13
  %30 = ptrtoint ptr %emit_ib_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %emit_ib_size, align 4
  %mul = mul i32 %31, %num_ibs
  %add = add i32 %mul, %29
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool30.not = icmp eq i32 %call, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.14, i32 noundef %call) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %current_ctx = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 28
  %34 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %current_ctx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %fence_ctx.0400404)
  %cmp37.not = icmp eq i64 %35, %fence_ctx.0400404
  %36 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs28, align 4
  %emit_pipeline_sync = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %emit_pipeline_sync to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %emit_pipeline_sync, align 4
  %tobool39.not = icmp eq ptr %39, null
  %brmerge = or i1 %tobool.not, %tobool39.not
  br i1 %brmerge, label %if.end36.if.end55_crit_edge, label %land.lhs.true42

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true42:                                  ; preds = %if.end36
  %sched_sync = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 3
  %call43 = tail call ptr @amdgpu_sync_get_fence(ptr noundef %sched_sync) #6
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %lor.lhs.false, label %if.then.i

lor.lhs.false:                                    ; preds = %land.lhs.true42
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %40 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %virt, align 8
  %and45 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %brmerge392 = select i1 %tobool46.not, i1 true, i1 %cmp37.not
  br i1 %brmerge392, label %lor.lhs.false49, label %lor.lhs.false.if.end54.thread_crit_edge

lor.lhs.false.if.end54.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.thread

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %call50 = tail call zeroext i1 @amdgpu_vm_need_pipeline_sync(ptr noundef %ring, ptr noundef nonnull %job) #6
  br i1 %call50, label %lor.lhs.false49.if.end54.thread_crit_edge, label %lor.lhs.false49.if.end55_crit_edge

lor.lhs.false49.if.end55_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

lor.lhs.false49.if.end54.thread_crit_edge:        ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.thread

if.end54.thread:                                  ; preds = %lor.lhs.false49.if.end54.thread_crit_edge, %lor.lhs.false.if.end54.thread_crit_edge
  br label %if.end55

if.then.i:                                        ; preds = %land.lhs.true42
  tail call fastcc void @trace_amdgpu_ib_pipe_sync(ptr noundef nonnull %job, ptr noundef nonnull %call43)
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call43, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end55_crit_edge, label %if.then10.i.i.i.i.i, !prof !64

if.end5.i.i.i.i.i.if.end55_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %if.end55

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @dma_fence_release(ptr noundef %refcount.i) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end55_crit_edge, %if.end54.thread, %lor.lhs.false49.if.end55_crit_edge, %if.end36.if.end55_crit_edge
  %need_pipe_sync.0.off0 = phi i1 [ false, %lor.lhs.false49.if.end55_crit_edge ], [ false, %if.end36.if.end55_crit_edge ], [ true, %if.end54.thread ], [ true, %if.end5.i.i.i.i.i.if.end55_crit_edge ], [ true, %if.then10.i.i.i.i.i ], [ true, %if.then.i.i ]
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and57 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end65_crit_edge, label %land.lhs.true59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end55
  %45 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %funcs28, align 4
  %emit_mem_sync = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %46, i32 0, i32 39
  %47 = ptrtoint ptr %emit_mem_sync to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %emit_mem_sync, align 4
  %tobool61.not = icmp eq ptr %48, null
  br i1 %tobool61.not, label %land.lhs.true59.if.end65_crit_edge, label %if.then62

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %48(ptr noundef %ring) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %land.lhs.true59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  %49 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs28, align 4
  %emit_wave_limit = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %50, i32 0, i32 40
  %51 = ptrtoint ptr %emit_wave_limit to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %emit_wave_limit, align 4
  %tobool67.not = icmp eq ptr %52, null
  br i1 %tobool67.not, label %if.end65.if.end73_crit_edge, label %land.lhs.true68

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

land.lhs.true68:                                  ; preds = %if.end65
  %hw_prio = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 41
  %53 = ptrtoint ptr %hw_prio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw_prio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp69 = icmp eq i32 %54, 2
  br i1 %cmp69, label %if.then70, label %land.lhs.true68.if.end73_crit_edge

land.lhs.true68.if.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then70:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %52(ptr noundef %ring, i1 noundef zeroext true) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %land.lhs.true68.if.end73_crit_edge, %if.end65.if.end73_crit_edge
  %55 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %funcs28, align 4
  %insert_start = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %56, i32 0, i32 23
  %57 = ptrtoint ptr %insert_start to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %insert_start, align 4
  %tobool75.not = icmp eq ptr %58, null
  br i1 %tobool75.not, label %if.end73.if.end79_crit_edge, label %if.then76

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %58(ptr noundef %ring) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end73.if.end79_crit_edge
  br i1 %tobool.not, label %for.body.lr.ph, label %if.then81

if.then81:                                        ; preds = %if.end79
  %call83 = tail call i32 @amdgpu_vm_flush(ptr noundef %ring, ptr noundef nonnull %job, i1 noundef zeroext %need_pipe_sync.0.off0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true89.critedge, label %if.then85

if.then85:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_ring_undo(ptr noundef %ring) #6
  br label %cleanup

land.lhs.true89.critedge:                         ; preds = %if.then81
  %59 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %funcs28, align 4
  %init_cond_exec = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %60, i32 0, i32 26
  %61 = ptrtoint ptr %init_cond_exec to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_cond_exec, align 4
  %tobool91.not = icmp eq ptr %62, null
  br i1 %tobool91.not, label %land.lhs.true89.critedge.land.lhs.true101_crit_edge, label %if.then92

land.lhs.true89.critedge.land.lhs.true101_crit_edge: ; preds = %land.lhs.true89.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true101

if.then92:                                        ; preds = %land.lhs.true89.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = tail call i32 %62(ptr noundef %ring) #6
  br label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.then92, %land.lhs.true89.critedge.land.lhs.true101_crit_edge
  %patch_offset.0.ph = phi i32 [ -1, %land.lhs.true89.critedge.land.lhs.true101_crit_edge ], [ %call95, %if.then92 ]
  tail call void @amdgpu_device_flush_hdp(ptr noundef %1, ptr noundef %ring) #6
  %spec.select407 = select i1 %cmp37.not, i32 0, i32 4
  %63 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %funcs28, align 4
  %emit_cntxcntl = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %64, i32 0, i32 31
  %65 = ptrtoint ptr %emit_cntxcntl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %emit_cntxcntl, align 4
  %tobool103.not = icmp eq ptr %66, null
  br i1 %tobool103.not, label %land.lhs.true101.land.lhs.true111_crit_edge, label %if.then104

land.lhs.true101.land.lhs.true111_crit_edge:      ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true111

if.then104:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #8
  %preamble_status = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 7
  %67 = ptrtoint ptr %preamble_status to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %preamble_status, align 4
  %or105 = or i32 %68, %spec.select407
  %preemption_status = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 8
  %69 = ptrtoint ptr %preemption_status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %preemption_status, align 8
  %or106 = or i32 %or105, %70
  tail call void %66(ptr noundef %ring, i32 noundef %or106) #6
  br label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.then104, %land.lhs.true101.land.lhs.true111_crit_edge
  %status.1.ph = phi i32 [ %spec.select407, %land.lhs.true101.land.lhs.true111_crit_edge ], [ %or106, %if.then104 ]
  %71 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %funcs28, align 4
  %emit_frame_cntl = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %72, i32 0, i32 36
  %73 = ptrtoint ptr %emit_frame_cntl to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %emit_frame_cntl, align 4
  %tobool113.not = icmp eq ptr %74, null
  br i1 %tobool113.not, label %land.lhs.true111.land.lhs.true126.peel_crit_edge, label %if.then114

land.lhs.true111.land.lhs.true126.peel_crit_edge: ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true126.peel

if.then114:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %and116 = and i32 %76, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117 = icmp ne i32 %and116, 0
  tail call void %74(ptr noundef %ring, i1 noundef zeroext true, i1 noundef zeroext %tobool117) #6
  br label %land.lhs.true126.peel

for.body.lr.ph:                                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_flush_hdp(ptr noundef %1, ptr noundef %ring) #6
  %spec.select = select i1 %cmp37.not, i32 0, i32 4
  br label %if.end150.peel

land.lhs.true126.peel:                            ; preds = %if.then114, %land.lhs.true111.land.lhs.true126.peel_crit_edge
  %secure.0.off0.ph = phi i1 [ false, %land.lhs.true111.land.lhs.true126.peel_crit_edge ], [ %tobool117, %if.then114 ]
  %77 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %funcs28, align 4
  %emit_frame_cntl128.peel = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %78, i32 0, i32 36
  %79 = ptrtoint ptr %emit_frame_cntl128.peel to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %emit_frame_cntl128.peel, align 4
  %tobool129.not.peel = icmp eq ptr %80, null
  br i1 %tobool129.not.peel, label %land.lhs.true126.peel.if.end150.peel_crit_edge, label %if.then130.peel

land.lhs.true126.peel.if.end150.peel_crit_edge:   ; preds = %land.lhs.true126.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150.peel

if.then130.peel:                                  ; preds = %land.lhs.true126.peel
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %83 = and i32 %82, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %84 = icmp eq i32 %83, 0
  %cmp136.not.peel = xor i1 %secure.0.off0.ph, %84
  br i1 %cmp136.not.peel, label %if.then130.peel.if.end150.peel_crit_edge, label %if.then138.peel

if.then130.peel.if.end150.peel_crit_edge:         ; preds = %if.then130.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150.peel

if.then138.peel:                                  ; preds = %if.then130.peel
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %80(ptr noundef %ring, i1 noundef zeroext false, i1 noundef zeroext %secure.0.off0.ph) #6
  %lnot143.peel = xor i1 %secure.0.off0.ph, true
  %85 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %funcs28, align 4
  %emit_frame_cntl147.peel = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %86, i32 0, i32 36
  %87 = ptrtoint ptr %emit_frame_cntl147.peel to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %emit_frame_cntl147.peel, align 4
  tail call void %88(ptr noundef %ring, i1 noundef zeroext true, i1 noundef zeroext %lnot143.peel) #6
  br label %if.end150.peel

if.end150.peel:                                   ; preds = %if.then138.peel, %if.then130.peel.if.end150.peel_crit_edge, %land.lhs.true126.peel.if.end150.peel_crit_edge, %for.body.lr.ph
  %patch_offset.0409414431 = phi i32 [ %patch_offset.0.ph, %if.then138.peel ], [ %patch_offset.0.ph, %if.then130.peel.if.end150.peel_crit_edge ], [ %patch_offset.0.ph, %land.lhs.true126.peel.if.end150.peel_crit_edge ], [ -1, %for.body.lr.ph ]
  %status.1416429 = phi i32 [ %status.1.ph, %if.then138.peel ], [ %status.1.ph, %if.then130.peel.if.end150.peel_crit_edge ], [ %status.1.ph, %land.lhs.true126.peel.if.end150.peel_crit_edge ], [ %spec.select, %for.body.lr.ph ]
  %secure.2.off0.peel = phi i1 [ %lnot143.peel, %if.then138.peel ], [ %secure.0.off0.ph, %if.then130.peel.if.end150.peel_crit_edge ], [ %secure.0.off0.ph, %land.lhs.true126.peel.if.end150.peel_crit_edge ], [ false, %for.body.lr.ph ]
  %89 = and i32 %status.1416429, -5
  %90 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %funcs28, align 4
  %emit_ib.peel = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %91, i32 0, i32 14
  %92 = ptrtoint ptr %emit_ib.peel to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %emit_ib.peel, align 4
  tail call void %93(ptr noundef %ring, ptr noundef %job, ptr noundef %ibs, i32 noundef %status.1416429) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_ibs)
  %exitcond.peel.not = icmp ult i32 %num_ibs, 2
  br i1 %exitcond.peel.not, label %if.end150.peel.for.end_crit_edge, label %if.end150.peel.for.body_crit_edge

if.end150.peel.for.body_crit_edge:                ; preds = %if.end150.peel
  br label %for.body

if.end150.peel.for.end_crit_edge:                 ; preds = %if.end150.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end150.for.body_crit_edge, %if.end150.peel.for.body_crit_edge
  %i.0420 = phi i32 [ %inc, %if.end150.for.body_crit_edge ], [ 1, %if.end150.peel.for.body_crit_edge ]
  %secure.1.off0419 = phi i1 [ %secure.2.off0, %if.end150.for.body_crit_edge ], [ %secure.2.off0.peel, %if.end150.peel.for.body_crit_edge ]
  %arrayidx124 = getelementptr %struct.amdgpu_ib, ptr %ibs, i32 %i.0420
  br i1 %tobool.not, label %for.body.if.end150_crit_edge, label %land.lhs.true126

for.body.if.end150_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

land.lhs.true126:                                 ; preds = %for.body
  %94 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %funcs28, align 4
  %emit_frame_cntl128 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %95, i32 0, i32 36
  %96 = ptrtoint ptr %emit_frame_cntl128 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %emit_frame_cntl128, align 4
  %tobool129.not = icmp eq ptr %97, null
  br i1 %tobool129.not, label %land.lhs.true126.if.end150_crit_edge, label %if.then130

land.lhs.true126.if.end150_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then130:                                       ; preds = %land.lhs.true126
  %flags132 = getelementptr %struct.amdgpu_ib, ptr %ibs, i32 %i.0420, i32 4
  %98 = ptrtoint ptr %flags132 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags132, align 4
  %100 = and i32 %99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %101 = icmp eq i32 %100, 0
  %cmp136.not = xor i1 %secure.1.off0419, %101
  br i1 %cmp136.not, label %if.then130.if.end150_crit_edge, label %if.then138

if.then130.if.end150_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then138:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %97(ptr noundef %ring, i1 noundef zeroext false, i1 noundef zeroext %secure.1.off0419) #6
  %lnot143 = xor i1 %secure.1.off0419, true
  %102 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %funcs28, align 4
  %emit_frame_cntl147 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %103, i32 0, i32 36
  %104 = ptrtoint ptr %emit_frame_cntl147 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %emit_frame_cntl147, align 4
  tail call void %105(ptr noundef %ring, i1 noundef zeroext true, i1 noundef zeroext %lnot143) #6
  br label %if.end150

if.end150:                                        ; preds = %if.then138, %if.then130.if.end150_crit_edge, %land.lhs.true126.if.end150_crit_edge, %for.body.if.end150_crit_edge
  %secure.2.off0 = phi i1 [ %lnot143, %if.then138 ], [ %secure.1.off0419, %if.then130.if.end150_crit_edge ], [ %secure.1.off0419, %land.lhs.true126.if.end150_crit_edge ], [ %secure.1.off0419, %for.body.if.end150_crit_edge ]
  %106 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %funcs28, align 4
  %emit_ib = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %107, i32 0, i32 14
  %108 = ptrtoint ptr %emit_ib to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %emit_ib, align 4
  tail call void %109(ptr noundef %ring, ptr noundef %job, ptr noundef %arrayidx124, i32 noundef %89) #6
  %inc = add nuw i32 %i.0420, 1
  %exitcond.not = icmp eq i32 %inc, %num_ibs
  br i1 %exitcond.not, label %if.end150.for.end_crit_edge, label %if.end150.for.body_crit_edge, !llvm.loop !66

if.end150.for.body_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end150.for.end_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end150.for.end_crit_edge, %if.end150.peel.for.end_crit_edge
  %secure.2.off0.lcssa = phi i1 [ %secure.2.off0.peel, %if.end150.peel.for.end_crit_edge ], [ %secure.2.off0, %if.end150.for.end_crit_edge ]
  %arrayidx124.lcssa = phi ptr [ %ibs, %if.end150.peel.for.end_crit_edge ], [ %arrayidx124, %if.end150.for.end_crit_edge ]
  br i1 %tobool.not, label %if.end162, label %land.lhs.true154

land.lhs.true154:                                 ; preds = %for.end
  %110 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %funcs28, align 4
  %emit_frame_cntl156 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %111, i32 0, i32 36
  %112 = ptrtoint ptr %emit_frame_cntl156 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %emit_frame_cntl156, align 4
  %tobool157.not = icmp eq ptr %113, null
  br i1 %tobool157.not, label %land.lhs.true154.land.lhs.true170_crit_edge, label %if.then158

land.lhs.true154.land.lhs.true170_crit_edge:      ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true170

if.then158:                                       ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %113(ptr noundef %ring, i1 noundef zeroext false, i1 noundef zeroext %secure.2.off0.lcssa) #6
  br label %land.lhs.true170

if.end162:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_invalidate_hdp(ptr noundef %1, ptr noundef %ring) #6
  %flags163 = getelementptr inbounds %struct.amdgpu_ib, ptr %arrayidx124.lcssa, i32 0, i32 4
  %114 = ptrtoint ptr %flags163 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags163, align 4
  %and164 = lshr i32 %115, 1
  %116 = and i32 %and164, 4
  br label %if.end176

land.lhs.true170:                                 ; preds = %if.then158, %land.lhs.true154.land.lhs.true170_crit_edge
  tail call void @amdgpu_device_invalidate_hdp(ptr noundef %1, ptr noundef %ring) #6
  %flags163435 = getelementptr inbounds %struct.amdgpu_ib, ptr %arrayidx124.lcssa, i32 0, i32 4
  %117 = ptrtoint ptr %flags163435 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags163435, align 4
  %and164436 = lshr i32 %118, 1
  %119 = and i32 %and164436, 4
  %uf_addr = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 21
  %120 = ptrtoint ptr %uf_addr to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %uf_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %121)
  %tobool171.not = icmp eq i64 %121, 0
  br i1 %tobool171.not, label %land.lhs.true170.if.end176_crit_edge, label %if.then172

land.lhs.true170.if.end176_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.then172:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %funcs28, align 4
  %emit_fence = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %123, i32 0, i32 15
  %124 = ptrtoint ptr %emit_fence to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %emit_fence, align 4
  %uf_sequence = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 22
  %126 = ptrtoint ptr %uf_sequence to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %uf_sequence, align 8
  %or175 = or i32 %119, 1
  tail call void %125(ptr noundef %ring, i64 noundef %121, i64 noundef %127, i32 noundef %or175) #6
  br label %if.end176

if.end176:                                        ; preds = %if.then172, %land.lhs.true170.if.end176_crit_edge, %if.end162
  %128 = phi i32 [ %119, %if.then172 ], [ %119, %land.lhs.true170.if.end176_crit_edge ], [ %116, %if.end162 ]
  %call177 = tail call i32 @amdgpu_fence_emit(ptr noundef %ring, ptr noundef %f, ptr noundef %job, i32 noundef %128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end192, label %do.end182

do.end182:                                        ; preds = %if.end176
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.17, i32 noundef %call177) #9
  br i1 %tobool.not, label %do.end182.if.end191_crit_edge, label %land.lhs.true185

do.end182.if.end191_crit_edge:                    ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

land.lhs.true185:                                 ; preds = %do.end182
  %vmid186 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %131 = ptrtoint ptr %vmid186 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vmid186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool187.not = icmp eq i32 %132, 0
  br i1 %tobool187.not, label %land.lhs.true185.if.end191_crit_edge, label %if.then188

land.lhs.true185.if.end191_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.then188:                                       ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %funcs28, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %134, i32 0, i32 5
  %135 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %vmhub, align 4
  tail call void @amdgpu_vmid_reset(ptr noundef %1, i32 noundef %136, i32 noundef %132) #6
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %land.lhs.true185.if.end191_crit_edge, %do.end182.if.end191_crit_edge
  tail call void @amdgpu_ring_undo(ptr noundef %ring) #6
  br label %cleanup

if.end192:                                        ; preds = %if.end176
  %137 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %funcs28, align 4
  %insert_end = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %138, i32 0, i32 24
  %139 = ptrtoint ptr %insert_end to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %insert_end, align 4
  %tobool194.not = icmp eq ptr %140, null
  br i1 %tobool194.not, label %if.end192.if.end198_crit_edge, label %if.then195

if.end192.if.end198_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %140(ptr noundef %ring) #6
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %if.end192.if.end198_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %patch_offset.0409414431)
  %cmp199.not = icmp eq i32 %patch_offset.0409414431, -1
  br i1 %cmp199.not, label %if.end198.if.end207_crit_edge, label %land.lhs.true201

if.end198.if.end207_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

land.lhs.true201:                                 ; preds = %if.end198
  %141 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %funcs28, align 4
  %patch_cond_exec = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %142, i32 0, i32 27
  %143 = ptrtoint ptr %patch_cond_exec to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %patch_cond_exec, align 4
  %tobool203.not = icmp eq ptr %144, null
  br i1 %tobool203.not, label %land.lhs.true201.if.end207_crit_edge, label %if.then204

land.lhs.true201.if.end207_crit_edge:             ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then204:                                       ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %144(ptr noundef %ring, i32 noundef %patch_offset.0409414431) #6
  br label %if.end207

if.end207:                                        ; preds = %if.then204, %land.lhs.true201.if.end207_crit_edge, %if.end198.if.end207_crit_edge
  %145 = ptrtoint ptr %current_ctx to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %fence_ctx.0400404, ptr %current_ctx, align 8
  br i1 %tobool11.not405, label %if.end207.if.end216_crit_edge, label %land.lhs.true210

if.end207.if.end216_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end216

land.lhs.true210:                                 ; preds = %if.end207
  %146 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %funcs28, align 4
  %emit_switch_buffer = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %147, i32 0, i32 30
  %148 = ptrtoint ptr %emit_switch_buffer to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %emit_switch_buffer, align 4
  %tobool212.not = icmp eq ptr %149, null
  br i1 %tobool212.not, label %land.lhs.true210.if.end216_crit_edge, label %if.then213

land.lhs.true210.if.end216_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end216

if.then213:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %149(ptr noundef %ring) #6
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %land.lhs.true210.if.end216_crit_edge, %if.end207.if.end216_crit_edge
  %150 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %funcs28, align 4
  %emit_wave_limit218 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %151, i32 0, i32 40
  %152 = ptrtoint ptr %emit_wave_limit218 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %emit_wave_limit218, align 4
  %tobool219.not = icmp eq ptr %153, null
  br i1 %tobool219.not, label %if.end216.if.end227_crit_edge, label %land.lhs.true220

if.end216.if.end227_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227

land.lhs.true220:                                 ; preds = %if.end216
  %hw_prio221 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 41
  %154 = ptrtoint ptr %hw_prio221 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %hw_prio221, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %155)
  %cmp222 = icmp eq i32 %155, 2
  br i1 %cmp222, label %if.then224, label %land.lhs.true220.if.end227_crit_edge

land.lhs.true220.if.end227_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227

if.then224:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %153(ptr noundef %ring, i1 noundef zeroext false) #6
  br label %if.end227

if.end227:                                        ; preds = %if.then224, %land.lhs.true220.if.end227_crit_edge, %if.end216.if.end227_crit_edge
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end227, %if.end191, %if.then85, %do.end34, %do.end25, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end25 ], [ %call, %do.end34 ], [ %call83, %if.then85 ], [ %call177, %if.end191 ], [ 0, %if.end227 ], [ -22, %do.end16 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_sync_get_fence(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_vm_need_pipeline_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_ib_pipe_sync(ptr noundef %sched_job, ptr noundef %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_ib_pipe_sync, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_ib_pipe_sync, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !68

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !64

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !69
  %call42 = tail call i32 @__traceiter_amdgpu_ib_pipe_sync(ptr noundef null, ptr noundef %sched_job, ptr noundef %fence) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !51) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !64

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !51) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_ib_pipe_sync, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_ib_pipe_sync, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_ib_pipe_sync.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_amdgpu_ib_pipe_sync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 538, ptr noundef nonnull @.str.23) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !72
  %31 = tail call i32 @llvm.read_register.i32(metadata !51) #6
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
declare dso_local i32 @amdgpu_vm_flush(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_undo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_flush_hdp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_invalidate_hdp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_emit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ib_pool_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_pool_ready = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 91
  %0 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ib_pool_ready, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 0
  %call = tail call i32 @amdgpu_sa_bo_manager_init(ptr noundef %adev, ptr noundef %arrayidx, i32 noundef 1048576, i32 noundef 4096, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.inc, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 1
  %call.1 = tail call i32 @amdgpu_sa_bo_manager_init(ptr noundef %adev, ptr noundef %arrayidx.1, i32 noundef 1048576, i32 noundef 4096, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %for.inc.1, label %for.inc.while.body_crit_edge

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 2
  %call.2 = tail call i32 @amdgpu_sa_bo_manager_init(ptr noundef %adev, ptr noundef %arrayidx.2, i32 noundef 1048576, i32 noundef 4096, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %for.inc.2, label %for.inc.1.while.body_crit_edge

for.inc.1.while.body_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ib_pool_ready, align 4
  br label %cleanup

while.body:                                       ; preds = %for.inc.1.while.body_crit_edge, %for.inc.while.body_crit_edge
  %i.020.lcssa.ph = phi i32 [ 1, %for.inc.1.while.body_crit_edge ], [ 0, %for.inc.while.body_crit_edge ]
  %call.lcssa.ph = phi i32 [ %call.2, %for.inc.1.while.body_crit_edge ], [ %call.1, %for.inc.while.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 %i.020.lcssa.ph
  tail call void @amdgpu_sa_bo_manager_fini(ptr noundef %adev, ptr noundef %arrayidx7) #6
  br i1 %tobool1.not.1, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %dec.1 = add nsw i32 %i.020.lcssa.ph, -1
  %arrayidx7.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 %dec.1
  tail call void @amdgpu_sa_bo_manager_fini(ptr noundef %adev, ptr noundef %arrayidx7.1) #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.1, %while.body.cleanup_crit_edge, %for.inc.2, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.2 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %for.body.preheader.cleanup_crit_edge ], [ %call.lcssa.ph, %while.body.1 ], [ %call.lcssa.ph, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sa_bo_manager_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sa_bo_manager_fini(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ib_pool_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_pool_ready = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 91
  %0 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ib_pool_ready, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 0
  tail call void @amdgpu_sa_bo_manager_fini(ptr noundef %adev, ptr noundef %arrayidx) #6
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 1
  tail call void @amdgpu_sa_bo_manager_fini(ptr noundef %adev, ptr noundef %arrayidx.1) #6
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 92, i32 2
  tail call void @amdgpu_sa_bo_manager_fini(ptr noundef %adev, ptr noundef %arrayidx.2) #6
  %2 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ib_pool_ready, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ib_ring_tests(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select96 = select i1 %tobool.not, i32 100, i32 800
  %and4 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hive_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 1
  %2 = ptrtoint ptr %hive_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hive_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool9.not = icmp eq i64 %3, 0
  %spec.select97 = select i1 %tobool9.not, i32 100, i32 200
  br label %if.end13

if.end13:                                         ; preds = %if.else, %entry.if.end13_crit_edge
  %tmo_gfx.0 = phi i32 [ 800, %entry.if.end13_crit_edge ], [ %spec.select97, %if.else ]
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 89
  %4 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp99.not = icmp eq i32 %5, 0
  br i1 %cmp99.not, label %if.end13.cleanup60_crit_edge, label %for.body.lr.ph

if.end13.cleanup60_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

for.body.lr.ph:                                   ; preds = %if.end13
  %gfx_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1.ph, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 90, i32 %i.0101
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %ready = getelementptr inbounds %struct.amdgpu_ring, ptr %7, i32 0, i32 3, i32 17
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %test_ib = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %test_ib to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %test_ib, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end17

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end17:                                         ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %.off = add i32 %15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off)
  %switch = icmp ult i32 %.off, 6
  %spec.select = select i1 %switch, i32 %spec.select96, i32 %tmo_gfx.0
  %call45 = tail call i32 %13(ptr noundef %7, i32 noundef %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev, align 8
  %name = getelementptr inbounds %struct.amdgpu_ring, ptr %7, i32 0, i32 29
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef %name) #6
  br label %for.inc

if.end48:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ready, align 4
  %19 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adev, align 8
  %name52 = getelementptr inbounds %struct.amdgpu_ring, ptr %7, i32 0, i32 29
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20, ptr noundef %name52, i32 noundef %call45) #6
  %cmp55 = icmp eq ptr %7, %gfx_ring
  br i1 %cmp55, label %cleanup, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %accel_working = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 15
  %21 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup60

for.inc:                                          ; preds = %if.end48.for.inc_crit_edge, %if.then47, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1.ph = phi i32 [ %call45, %if.end48.for.inc_crit_edge ], [ %ret.0100, %for.body.for.inc_crit_edge ], [ %ret.0100, %lor.lhs.false.for.inc_crit_edge ], [ %ret.0100, %if.then47 ]
  %inc = add nuw i32 %i.0101, 1
  %22 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rings, align 8
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup60_crit_edge

for.inc.cleanup60_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup60:                                        ; preds = %for.inc.cleanup60_crit_edge, %cleanup, %if.end13.cleanup60_crit_edge
  %retval.2 = phi i32 [ %call45, %cleanup ], [ 0, %if.end13.cleanup60_crit_edge ], [ %ret.1.ph, %for.inc.cleanup60_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_debugfs_sa_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_debugfs_sa_info_fops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_ib_pipe_sync(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_sa_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_debugfs_sa_info_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_sa_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25) #6
  %ib_pools = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 92
  tail call void @amdgpu_sa_bo_dump_debug_info(ptr noundef %ib_pools, ptr noundef %m) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26) #6
  %arrayidx2 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 92, i32 1
  tail call void @amdgpu_sa_bo_dump_debug_info(ptr noundef %arrayidx2, ptr noundef %m) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27) #6
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 92, i32 2
  tail call void @amdgpu_sa_bo_dump_debug_info(ptr noundef %arrayidx4, ptr noundef %m) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sa_bo_dump_debug_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 74, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @amdgpu_ib_get._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @amdgpu_ib_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 159, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @amdgpu_ib_schedule._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @amdgpu_ib_schedule._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 164, i32 3}
!15 = !{ptr @amdgpu_ib_schedule._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @amdgpu_ib_schedule._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 170, i32 3}
!19 = !{ptr @amdgpu_ib_schedule._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @amdgpu_ib_schedule._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 179, i32 3}
!23 = !{ptr @amdgpu_ib_schedule._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @amdgpu_ib_schedule._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 267, i32 3}
!27 = !{ptr @amdgpu_ib_schedule._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @amdgpu_ib_schedule._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 406, i32 4}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 412, i32 3}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 458, i32 22}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 516, i32 1}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @amdgpu_debugfs_sa_info_fops, !44, !"amdgpu_debugfs_sa_info_fops", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 448, i32 1}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 436, i32 16}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 439, i32 16}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c", i32 442, i32 16}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{i64 2148493481}
!63 = !{i64 2148407945, i64 2148407977, i64 2148408006, i64 2148408040, i64 2148408071, i64 2148408094}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2150391770}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.peeled.count", i32 1}
!68 = !{i64 2148198407, i64 2148198412, i64 2148198425, i64 2148198469, i64 2148198503, i64 2148198524}
!69 = !{i64 2159712871}
!70 = !{i64 2159713104}
!71 = !{i64 2149543303}
!72 = !{i64 2149544339}
