; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_pll.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d - %d, pll dividers - fb: %d.%d ref: %d, post %d\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_pll.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 257, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_pll_compute(ptr nocapture noundef readonly %adev, ptr nocapture noundef readonly %pll, i32 noundef %freq, ptr nocapture noundef %dot_clock_p, ptr nocapture noundef %fb_div_p, ptr nocapture noundef %frac_fb_div_p, ptr nocapture noundef writeonly %ref_div_p, ptr nocapture noundef writeonly %post_div_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %div = udiv i32 %freq, 10
  %cond = select i1 %tobool.not, i32 %div, i32 %freq
  %min_feedback_div = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 14
  %2 = ptrtoint ptr %min_feedback_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_feedback_div, align 4
  %max_feedback_div = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 15
  %4 = ptrtoint ptr %max_feedback_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_feedback_div, align 4
  %mul = mul i32 %3, 10
  %mul4 = mul i32 %5, 10
  %fb_div_max.0 = select i1 %tobool.not, i32 %5, i32 %mul4
  %fb_div_min.0 = select i1 %tobool.not, i32 %3, i32 %mul
  %and6 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %reference_div = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 1
  %min_ref_div = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 10
  %ref_div_min.0.in = select i1 %tobool7.not, ptr %min_ref_div, ptr %reference_div
  %6 = ptrtoint ptr %ref_div_min.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %ref_div_min.0 = load i32, ptr %ref_div_min.0.in, align 4
  %7 = and i32 %1, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %7)
  %.not = icmp eq i32 %7, 1028
  %max_ref_div = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 11
  %ref_div_max.0.in = select i1 %.not, ptr %reference_div, ptr %max_ref_div
  %8 = ptrtoint ptr %ref_div_max.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %ref_div_max.0 = load i32, ptr %ref_div_max.0.in, align 4
  %and21 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %post_div24 = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 2
  %9 = ptrtoint ptr %post_div24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %post_div24, align 4
  br label %if.end57

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and28 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %lcd_pll_out_min = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 7
  %lcd_pll_out_max = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 8
  %pll_out_min = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 5
  %pll_out_max = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 6
  %vco_min.0.in = select i1 %tobool29.not, ptr %pll_out_min, ptr %lcd_pll_out_min
  %vco_max.0.in = select i1 %tobool29.not, ptr %pll_out_max, ptr %lcd_pll_out_max
  %11 = ptrtoint ptr %vco_max.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %vco_max.0 = load i32, ptr %vco_max.0.in, align 4
  %12 = ptrtoint ptr %vco_min.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %vco_min.0 = load i32, ptr %vco_min.0.in, align 4
  %mul37 = mul i32 %vco_min.0, 10
  %mul38 = mul i32 %vco_max.0, 10
  %vco_min.1 = select i1 %tobool.not, i32 %vco_min.0, i32 %mul37
  %vco_max.1 = select i1 %tobool.not, i32 %vco_max.0, i32 %mul38
  %div40 = udiv i32 %vco_min.1, %cond
  %mul41 = mul i32 %div40, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %mul41, i32 %vco_min.1)
  %cmp = icmp ult i32 %mul41, %vco_min.1
  %inc = zext i1 %cmp to i32
  %post_div_min.0 = add i32 %div40, %inc
  %min_post_div = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 12
  %13 = ptrtoint ptr %min_post_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_post_div, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %post_div_min.0, i32 %14)
  %div48 = udiv i32 %vco_max.1, %cond
  %mul49 = mul i32 %div48, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %mul49, i32 %vco_max.1)
  %cmp50 = icmp ugt i32 %mul49, %vco_max.1
  %dec = sext i1 %cmp50 to i32
  %post_div_max.0 = add i32 %div48, %dec
  %max_post_div = getelementptr inbounds %struct.amdgpu_pll, ptr %pll, i32 0, i32 13
  %16 = ptrtoint ptr %max_post_div to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_post_div, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %post_div_max.0, i32 %17)
  br label %if.end57

if.end57:                                         ; preds = %if.else26, %if.then23
  %post_div_min.2 = phi i32 [ %10, %if.then23 ], [ %15, %if.else26 ]
  %post_div_max.2 = phi i32 [ %10, %if.then23 ], [ %18, %if.else26 ]
  %19 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pll, align 4
  %call.i = tail call i32 @gcd(i32 noundef %cond, i32 noundef %20) #8
  %div.i = udiv i32 %cond, %call.i
  %div1.i = udiv i32 %20, %call.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %fb_div_min.0)
  %cmp.i = icmp ult i32 %div.i, %fb_div_min.0
  br i1 %cmp.i, label %if.then.i, label %if.end57.if.end.i_crit_edge

if.end57.if.end.i_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add i32 %fb_div_min.0, -1
  %sub.i = add i32 %add.i, %div.i
  %div2.i = udiv i32 %sub.i, %div.i
  %mul.i = mul i32 %div2.i, %div.i
  %mul3.i = mul i32 %div2.i, %div1.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end57.if.end.i_crit_edge
  %nom.0 = phi i32 [ %mul.i, %if.then.i ], [ %div.i, %if.end57.if.end.i_crit_edge ]
  %den.0 = phi i32 [ %mul3.i, %if.then.i ], [ %div1.i, %if.end57.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %den.0, i32 %post_div_min.2)
  %cmp4.i = icmp ult i32 %den.0, %post_div_min.2
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.amdgpu_pll_reduce_ratio.exit_crit_edge

if.end.i.amdgpu_pll_reduce_ratio.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_pll_reduce_ratio.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add6.i = add i32 %post_div_min.2, -1
  %sub7.i = add i32 %add6.i, %den.0
  %div8.i = udiv i32 %sub7.i, %den.0
  %mul9.i = mul i32 %div8.i, %nom.0
  %mul10.i = mul i32 %div8.i, %den.0
  br label %amdgpu_pll_reduce_ratio.exit

amdgpu_pll_reduce_ratio.exit:                     ; preds = %if.then5.i, %if.end.i.amdgpu_pll_reduce_ratio.exit_crit_edge
  %nom.1 = phi i32 [ %mul9.i, %if.then5.i ], [ %nom.0, %if.end.i.amdgpu_pll_reduce_ratio.exit_crit_edge ]
  %den.1 = phi i32 [ %mul10.i, %if.then5.i ], [ %den.0, %if.end.i.amdgpu_pll_reduce_ratio.exit_crit_edge ]
  %and59 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %post_div_max.2.post_div_min.2 = select i1 %tobool60.not, i32 %post_div_max.2, i32 %post_div_min.2
  call void @__sanitizer_cov_trace_cmp4(i32 %post_div_min.2, i32 %post_div_max.2)
  %cmp64.not286 = icmp ugt i32 %post_div_min.2, %post_div_max.2
  br i1 %cmp64.not286, label %amdgpu_pll_reduce_ratio.exit.for.end_crit_edge, label %for.body.lr.ph

amdgpu_pll_reduce_ratio.exit.for.end_crit_edge:   ; preds = %amdgpu_pll_reduce_ratio.exit
  call void @__sanitizer_cov_trace_pc() #7
  %.pre291 = lshr i32 %den.1, 1
  br label %for.end

for.body.lr.ph:                                   ; preds = %amdgpu_pll_reduce_ratio.exit
  %family.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 6
  %21 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %22)
  %cmp.i212 = icmp eq i32 %22, 110
  %..i = select i1 %cmp.i212, i32 100, i32 128
  %div2867.i = lshr i32 %den.1, 1
  %tobool60.not.not = xor i1 %tobool60.not, true
  br label %for.body

for.body:                                         ; preds = %amdgpu_pll_get_fb_ref_div.exit.for.body_crit_edge, %for.body.lr.ph
  %diff_best.0290 = phi i32 [ -1, %for.body.lr.ph ], [ %diff_best.1, %amdgpu_pll_get_fb_ref_div.exit.for.body_crit_edge ]
  %post_div_best.1289 = phi i32 [ %post_div_max.2.post_div_min.2, %for.body.lr.ph ], [ %post_div_best.2, %amdgpu_pll_get_fb_ref_div.exit.for.body_crit_edge ]
  %post_div.0287 = phi i32 [ %post_div_min.2, %for.body.lr.ph ], [ %inc83, %amdgpu_pll_get_fb_ref_div.exit.for.body_crit_edge ]
  %div2.i213 = udiv i32 %..i, %post_div.0287
  %23 = tail call i32 @llvm.umin.i32(i32 %div2.i213, i32 %ref_div_max.0) #5
  %div1066.i = lshr i32 %post_div.0287, 1
  %add.i214 = add i32 %div1066.i, %den.1
  %div11.i = udiv i32 %add.i214, %post_div.0287
  %24 = tail call i32 @llvm.umax.i32(i32 %div11.i, i32 1) #5
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %23) #5
  %mul.i215 = mul i32 %post_div.0287, %nom.1
  %mul25.i = mul i32 %mul.i215, %25
  %add29.i = add i32 %mul25.i, %div2867.i
  %div30.i = udiv i32 %add29.i, %den.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div30.i, i32 %fb_div_max.0)
  %cmp31.i = icmp ugt i32 %div30.i, %fb_div_max.0
  br i1 %cmp31.i, label %if.then32.i, label %for.body.amdgpu_pll_get_fb_ref_div.exit_crit_edge

for.body.amdgpu_pll_get_fb_ref_div.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_pll_get_fb_ref_div.exit

if.then32.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %mul34.i = mul i32 %25, %fb_div_max.0
  %div3768.i = lshr i32 %div30.i, 1
  %add38.i = add i32 %mul34.i, %div3768.i
  %div39.i = udiv i32 %add38.i, %div30.i
  br label %amdgpu_pll_get_fb_ref_div.exit

amdgpu_pll_get_fb_ref_div.exit:                   ; preds = %if.then32.i, %for.body.amdgpu_pll_get_fb_ref_div.exit_crit_edge
  %fb_div.0 = phi i32 [ %fb_div_max.0, %if.then32.i ], [ %div30.i, %for.body.amdgpu_pll_get_fb_ref_div.exit_crit_edge ]
  %ref_div.0 = phi i32 [ %div39.i, %if.then32.i ], [ %25, %for.body.amdgpu_pll_get_fb_ref_div.exit_crit_edge ]
  %mul66 = mul i32 %fb_div.0, %20
  %mul67 = mul i32 %ref_div.0, %post_div.0287
  %div68 = udiv i32 %mul66, %mul67
  %sub = sub i32 %cond, %div68
  %26 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %diff_best.0290)
  %cmp75 = icmp uge i32 %26, %diff_best.0290
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %diff_best.0290)
  %cmp76 = icmp ne i32 %26, %diff_best.0290
  %brmerge = select i1 %cmp76, i1 true, i1 %tobool60.not.not
  %or.cond = select i1 %cmp75, i1 %brmerge, i1 false
  %post_div_best.2 = select i1 %or.cond, i32 %post_div_best.1289, i32 %post_div.0287
  %diff_best.1 = select i1 %or.cond, i32 %diff_best.0290, i32 %26
  %inc83 = add i32 %post_div.0287, 1
  %cmp64.not = icmp ugt i32 %inc83, %post_div_max.2
  br i1 %cmp64.not, label %amdgpu_pll_get_fb_ref_div.exit.for.end_crit_edge, label %amdgpu_pll_get_fb_ref_div.exit.for.body_crit_edge

amdgpu_pll_get_fb_ref_div.exit.for.body_crit_edge: ; preds = %amdgpu_pll_get_fb_ref_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

amdgpu_pll_get_fb_ref_div.exit.for.end_crit_edge: ; preds = %amdgpu_pll_get_fb_ref_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %amdgpu_pll_get_fb_ref_div.exit.for.end_crit_edge, %amdgpu_pll_reduce_ratio.exit.for.end_crit_edge
  %div2867.i225.pre-phi = phi i32 [ %.pre291, %amdgpu_pll_reduce_ratio.exit.for.end_crit_edge ], [ %div2867.i, %amdgpu_pll_get_fb_ref_div.exit.for.end_crit_edge ]
  %post_div_best.1.lcssa = phi i32 [ %post_div_max.2.post_div_min.2, %amdgpu_pll_reduce_ratio.exit.for.end_crit_edge ], [ %post_div_best.2, %amdgpu_pll_get_fb_ref_div.exit.for.end_crit_edge ]
  %family.i216 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 6
  %27 = ptrtoint ptr %family.i216 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %family.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %28)
  %cmp.i217 = icmp eq i32 %28, 110
  %..i218 = select i1 %cmp.i217, i32 100, i32 128
  %div2.i219 = udiv i32 %..i218, %post_div_best.1.lcssa
  %29 = tail call i32 @llvm.umin.i32(i32 %div2.i219, i32 %ref_div_max.0) #5
  %div1066.i220 = lshr i32 %post_div_best.1.lcssa, 1
  %add.i221 = add i32 %div1066.i220, %den.1
  %div11.i222 = udiv i32 %add.i221, %post_div_best.1.lcssa
  %30 = tail call i32 @llvm.umax.i32(i32 %div11.i222, i32 1) #5
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %29) #5
  %mul.i223 = mul i32 %post_div_best.1.lcssa, %nom.1
  %mul25.i224 = mul i32 %mul.i223, %31
  %add29.i226 = add i32 %mul25.i224, %div2867.i225.pre-phi
  %div30.i227 = udiv i32 %add29.i226, %den.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div30.i227, i32 %fb_div_max.0)
  %cmp31.i228 = icmp ugt i32 %div30.i227, %fb_div_max.0
  br i1 %cmp31.i228, label %if.then32.i233, label %for.end.amdgpu_pll_get_fb_ref_div.exit234_crit_edge

for.end.amdgpu_pll_get_fb_ref_div.exit234_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_pll_get_fb_ref_div.exit234

if.then32.i233:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul34.i229 = mul i32 %31, %fb_div_max.0
  %div3768.i230 = lshr i32 %div30.i227, 1
  %add38.i231 = add i32 %mul34.i229, %div3768.i230
  %div39.i232 = udiv i32 %add38.i231, %div30.i227
  br label %amdgpu_pll_get_fb_ref_div.exit234

amdgpu_pll_get_fb_ref_div.exit234:                ; preds = %if.then32.i233, %for.end.amdgpu_pll_get_fb_ref_div.exit234_crit_edge
  %fb_div.1 = phi i32 [ %fb_div_max.0, %if.then32.i233 ], [ %div30.i227, %for.end.amdgpu_pll_get_fb_ref_div.exit234_crit_edge ]
  %ref_div.1 = phi i32 [ %div39.i232, %if.then32.i233 ], [ %31, %for.end.amdgpu_pll_get_fb_ref_div.exit234_crit_edge ]
  %call.i235 = tail call i32 @gcd(i32 noundef %fb_div.1, i32 noundef %ref_div.1) #8
  %div.i236 = udiv i32 %fb_div.1, %call.i235
  %div1.i237 = udiv i32 %ref_div.1, %call.i235
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i236, i32 %fb_div_min.0)
  %cmp.i238 = icmp ult i32 %div.i236, %fb_div_min.0
  br i1 %cmp.i238, label %if.then.i244, label %amdgpu_pll_get_fb_ref_div.exit234.if.end.i246_crit_edge

amdgpu_pll_get_fb_ref_div.exit234.if.end.i246_crit_edge: ; preds = %amdgpu_pll_get_fb_ref_div.exit234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i246

if.then.i244:                                     ; preds = %amdgpu_pll_get_fb_ref_div.exit234
  call void @__sanitizer_cov_trace_pc() #7
  %add.i239 = add i32 %fb_div_min.0, -1
  %sub.i240 = add i32 %add.i239, %div.i236
  %div2.i241 = udiv i32 %sub.i240, %div.i236
  %mul.i242 = mul i32 %div2.i241, %div.i236
  %mul3.i243 = mul i32 %div2.i241, %div1.i237
  br label %if.end.i246

if.end.i246:                                      ; preds = %if.then.i244, %amdgpu_pll_get_fb_ref_div.exit234.if.end.i246_crit_edge
  %fb_div.2 = phi i32 [ %mul.i242, %if.then.i244 ], [ %div.i236, %amdgpu_pll_get_fb_ref_div.exit234.if.end.i246_crit_edge ]
  %ref_div.2 = phi i32 [ %mul3.i243, %if.then.i244 ], [ %div1.i237, %amdgpu_pll_get_fb_ref_div.exit234.if.end.i246_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ref_div.2, i32 %ref_div_min.0)
  %cmp4.i245 = icmp ult i32 %ref_div.2, %ref_div_min.0
  br i1 %cmp4.i245, label %if.then5.i252, label %if.end.i246.amdgpu_pll_reduce_ratio.exit253_crit_edge

if.end.i246.amdgpu_pll_reduce_ratio.exit253_crit_edge: ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_pll_reduce_ratio.exit253

if.then5.i252:                                    ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #7
  %add6.i247 = add i32 %ref_div_min.0, -1
  %sub7.i248 = add i32 %add6.i247, %ref_div.2
  %div8.i249 = udiv i32 %sub7.i248, %ref_div.2
  %mul9.i250 = mul i32 %div8.i249, %fb_div.2
  %mul10.i251 = mul i32 %div8.i249, %ref_div.2
  br label %amdgpu_pll_reduce_ratio.exit253

amdgpu_pll_reduce_ratio.exit253:                  ; preds = %if.then5.i252, %if.end.i246.amdgpu_pll_reduce_ratio.exit253_crit_edge
  %fb_div.3 = phi i32 [ %mul9.i250, %if.then5.i252 ], [ %fb_div.2, %if.end.i246.amdgpu_pll_reduce_ratio.exit253_crit_edge ]
  %ref_div.3 = phi i32 [ %mul10.i251, %if.then5.i252 ], [ %ref_div.2, %if.end.i246.amdgpu_pll_reduce_ratio.exit253_crit_edge ]
  br i1 %tobool.not, label %amdgpu_pll_reduce_ratio.exit253.if.end116_crit_edge, label %land.lhs.true87

amdgpu_pll_reduce_ratio.exit253.if.end116_crit_edge: ; preds = %amdgpu_pll_reduce_ratio.exit253
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

land.lhs.true87:                                  ; preds = %amdgpu_pll_reduce_ratio.exit253
  %rem = urem i32 %fb_div.3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool88.not = icmp eq i32 %rem, 0
  br i1 %tobool88.not, label %land.lhs.true87.if.then112_crit_edge, label %if.then89

land.lhs.true87.if.then112_crit_edge:             ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then112

if.then89:                                        ; preds = %land.lhs.true87
  %sub91 = sub nuw nsw i32 9, %rem
  %mul92 = mul nuw nsw i32 %sub91, 20
  %add = add nuw nsw i32 %mul92, 60
  %32 = tail call i32 @llvm.umax.i32(i32 %fb_div_min.0, i32 %add)
  call void @__sanitizer_cov_trace_cmp4(i32 %fb_div.3, i32 %32)
  %cmp99 = icmp ult i32 %fb_div.3, %32
  br i1 %cmp99, label %if.then100, label %if.then89.if.then112_crit_edge

if.then89.if.then112_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then112

if.then100:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  %add102 = add i32 %fb_div.3, -1
  %sub103 = add i32 %add102, %32
  %div104 = udiv i32 %sub103, %fb_div.3
  %mul105 = mul i32 %div104, %fb_div.3
  %mul106 = mul i32 %div104, %ref_div.3
  %.pre = urem i32 %mul105, 10
  br label %if.then112

if.then112:                                       ; preds = %if.then100, %if.then89.if.then112_crit_edge, %land.lhs.true87.if.then112_crit_edge
  %rem114.pre-phi = phi i32 [ %rem, %if.then89.if.then112_crit_edge ], [ %.pre, %if.then100 ], [ 0, %land.lhs.true87.if.then112_crit_edge ]
  %fb_div.4.ph = phi i32 [ %fb_div.3, %if.then89.if.then112_crit_edge ], [ %mul105, %if.then100 ], [ %fb_div.3, %land.lhs.true87.if.then112_crit_edge ]
  %ref_div.4.ph = phi i32 [ %ref_div.3, %if.then89.if.then112_crit_edge ], [ %mul106, %if.then100 ], [ %ref_div.3, %land.lhs.true87.if.then112_crit_edge ]
  %div113 = udiv i32 %fb_div.4.ph, 10
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %amdgpu_pll_reduce_ratio.exit253.if.end116_crit_edge
  %storemerge292 = phi i32 [ %div113, %if.then112 ], [ %fb_div.3, %amdgpu_pll_reduce_ratio.exit253.if.end116_crit_edge ]
  %ref_div.4284 = phi i32 [ %ref_div.4.ph, %if.then112 ], [ %ref_div.3, %amdgpu_pll_reduce_ratio.exit253.if.end116_crit_edge ]
  %storemerge = phi i32 [ %rem114.pre-phi, %if.then112 ], [ 0, %amdgpu_pll_reduce_ratio.exit253.if.end116_crit_edge ]
  %33 = ptrtoint ptr %fb_div_p to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge292, ptr %fb_div_p, align 4
  %34 = ptrtoint ptr %frac_fb_div_p to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge, ptr %frac_fb_div_p, align 4
  %35 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pll, align 4
  %37 = load i32, ptr %fb_div_p, align 4
  %mul119 = mul i32 %37, 10
  %reass.add = add i32 %mul119, %storemerge
  %reass.mul = mul i32 %reass.add, %36
  %mul123 = mul i32 %post_div_best.1.lcssa, 10
  %mul124 = mul i32 %mul123, %ref_div.4284
  %div125 = udiv i32 %reass.mul, %mul124
  %38 = ptrtoint ptr %dot_clock_p to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div125, ptr %dot_clock_p, align 4
  %39 = ptrtoint ptr %ref_div_p to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %ref_div.4284, ptr %ref_div_p, align 4
  %40 = ptrtoint ptr %post_div_p to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %post_div_best.1.lcssa, ptr %post_div_p, align 4
  %41 = load i32, ptr %dot_clock_p, align 4
  %mul126 = mul i32 %41, 10
  %42 = load i32, ptr %fb_div_p, align 4
  %43 = load i32, ptr %frac_fb_div_p, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %freq, i32 noundef %mul126, i32 noundef %42, i32 noundef %43, i32 noundef %ref_div.4284, i32 noundef %post_div_best.1.lcssa) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_pll_get_use_mask(ptr noundef readonly %crtc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn24 = load ptr, ptr %crtc_list, align 4
  %cmp.not25 = icmp eq ptr %.pn24, %crtc_list
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn24, %entry.for.body_crit_edge ]
  %pll_in_use.026 = phi i32 [ %pll_in_use.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %test_crtc.0 = getelementptr i8, ptr %.pn27, i32 -8
  %cmp4 = icmp eq ptr %test_crtc.0, %crtc
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %pll_id = getelementptr i8, ptr %.pn27, i32 1168
  %3 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pll_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp8.not = icmp eq i32 %4, 255
  br i1 %cmp8.not, label %if.end.for.inc_crit_edge, label %if.then9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %4
  %or = or i32 %shl, %pll_in_use.026
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pll_in_use.1 = phi i32 [ %pll_in_use.026, %for.body.for.inc_crit_edge ], [ %or, %if.then9 ], [ %pll_in_use.026, %if.end.for.inc_crit_edge ]
  %5 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pll_in_use.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pll_in_use.1, %for.inc.for.end_crit_edge ]
  ret i32 %pll_in_use.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_pll_get_shared_dp_ppll(ptr noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn36 = load ptr, ptr %crtc_list, align 4
  %cmp.not37 = icmp eq ptr %.pn36, %crtc_list
  br i1 %cmp.not37, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn38 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %entry.for.body_crit_edge ]
  %test_crtc.0 = getelementptr i8, ptr %.pn38, i32 -8
  %cmp4 = icmp eq ptr %test_crtc.0, %crtc
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %encoder = getelementptr i8, ptr %.pn38, i32 1344
  %3 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %encoder, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef nonnull %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %land.lhs.true.if.then13_crit_edge, label %lor.lhs.false

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder, align 8
  %call11 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 5
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  %pll_id = getelementptr i8, ptr %.pn38, i32 1168
  %7 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %cmp14.not = icmp eq i32 %8, 255
  br i1 %cmp14.not, label %if.then13.for.inc_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then13.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn38, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %entry.cleanup_crit_edge ], [ 255, %for.inc.cleanup_crit_edge ], [ %8, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_pll_get_shared_nondp_ppll(ptr noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adjusted_clock2 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 28
  %0 = ptrtoint ptr %adjusted_clock2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjusted_clock2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 20
  %4 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn83 = load ptr, ptr %crtc_list, align 4
  %cmp8.not84 = icmp eq ptr %.pn83, %crtc_list
  br i1 %cmp8.not84, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %connector21 = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 34
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  %ss_enabled = getelementptr inbounds %struct.amdgpu_crtc, ptr %crtc, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn85 = phi ptr [ %.pn83, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %test_crtc.0 = getelementptr i8, ptr %.pn85, i32 -8
  %cmp9 = icmp eq ptr %test_crtc.0, %crtc
  br i1 %cmp9, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %encoder = getelementptr i8, ptr %.pn85, i32 1344
  %5 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end11.for.inc_crit_edge, label %land.lhs.true

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end11
  %call = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef nonnull %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp eq i32 %call, 0
  br i1 %cmp16, label %land.lhs.true.for.inc_crit_edge, label %lor.lhs.false

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder, align 8
  %call18 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 5
  br i1 %cmp19, label %lor.lhs.false.for.inc_crit_edge, label %if.then20

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then20:                                        ; preds = %lor.lhs.false
  %connector = getelementptr i8, ptr %.pn85, i32 1348
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector, align 4
  %11 = ptrtoint ptr %connector21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connector21, align 4
  %cmp22 = icmp eq ptr %10, %12
  br i1 %cmp22, label %if.then23, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then23:                                        ; preds = %if.then20
  %pll_id = getelementptr i8, ptr %.pn85, i32 1168
  %13 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %cmp24.not = icmp eq i32 %14, 255
  br i1 %cmp24.not, label %if.then23.if.end28_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %if.then20.if.end28_crit_edge
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  %mode30 = getelementptr i8, ptr %.pn85, i32 164
  %17 = ptrtoint ptr %mode30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp32 = icmp eq i32 %16, %18
  br i1 %cmp32, label %land.lhs.true33, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true33:                                  ; preds = %if.end28
  %adjusted_clock29 = getelementptr i8, ptr %.pn85, i32 1324
  %19 = ptrtoint ptr %adjusted_clock29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %adjusted_clock29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %20)
  %cmp34 = icmp eq i32 %1, %20
  br i1 %cmp34, label %land.lhs.true35, label %land.lhs.true33.for.inc_crit_edge

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %21 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ss_enabled, align 8, !range !11
  %ss_enabled37 = getelementptr i8, ptr %.pn85, i32 1320
  %23 = ptrtoint ptr %ss_enabled37 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ss_enabled37, align 8, !range !11
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp40 = icmp eq i8 %22, %24
  br i1 %cmp40, label %land.lhs.true42, label %land.lhs.true35.for.inc_crit_edge

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true42:                                  ; preds = %land.lhs.true35
  %pll_id43 = getelementptr i8, ptr %.pn85, i32 1168
  %25 = ptrtoint ptr %pll_id43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pll_id43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %26)
  %cmp44.not = icmp eq i32 %26, 255
  br i1 %cmp44.not, label %land.lhs.true42.for.inc_crit_edge, label %land.lhs.true42.cleanup_crit_edge

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true42.for.inc_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true42.for.inc_crit_edge, %land.lhs.true35.for.inc_crit_edge, %land.lhs.true33.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp8.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %entry.cleanup_crit_edge ], [ 255, %if.end.cleanup_crit_edge ], [ %14, %if.then23.cleanup_crit_edge ], [ %26, %land.lhs.true42.cleanup_crit_edge ], [ 255, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pll.c", i32 257, i32 2}
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
