; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/vega20_ih.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/vega20_ih.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ih_funcs = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vega20_ih\00", [22 x i8] zeroinitializer }, align 32
@vega20_ih_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @vega20_ih_early_init, ptr null, ptr @vega20_ih_sw_init, ptr @vega20_ih_sw_fini, ptr null, ptr @vega20_ih_hw_init, ptr @vega20_ih_hw_fini, ptr null, ptr @vega20_ih_suspend, ptr @vega20_ih_resume, ptr @vega20_ih_is_idle, ptr @vega20_ih_wait_for_idle, ptr null, ptr null, ptr @vega20_ih_soft_reset, ptr null, ptr @vega20_ih_set_clockgating_state, ptr @vega20_ih_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@vega20_ih_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 2, i32 4, i32 2, i32 0, ptr @vega20_ih_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@vega20_ih_funcs = internal constant { %struct.amdgpu_ih_funcs, [16 x i8] } { %struct.amdgpu_ih_funcs { ptr @vega20_ih_get_wptr, ptr @amdgpu_ih_decode_iv_helper, ptr @amdgpu_ih_decode_iv_ts_helper, ptr @vega20_ih_set_rptr }, [16 x i8] zeroinitializer }, align 32
@vega20_ih_get_wptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vega20_ih_get_wptr\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/vega20_ih.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vega20_ih_get_wptr._entry_ptr = internal global ptr @vega20_ih_get_wptr._entry, section ".printk_index", align 4
@vega20_ih_self_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @vega20_ih_self_irq }, [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@vega20_ih_toggle_ring_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 117, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: PSP program IH_RB_CNTL failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vega20_ih_toggle_ring_interrupts\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vega20_ih_toggle_ring_interrupts._entry_ptr = internal global ptr @vega20_ih_toggle_ring_interrupts._entry, section ".printk_index", align 4
@vega20_ih_enable_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.9, ptr @.str.3, i32 232, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vega20_ih_enable_ring\00", [42 x i8] zeroinitializer }, align 32
@vega20_ih_enable_ring._entry_ptr = internal global ptr @vega20_ih_enable_ring._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 672, i32 10 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"vega20_ih_ip_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 671, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"vega20_ih_ip_block\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 700, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"vega20_ih_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 688, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 412, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"vega20_ih_self_irq_funcs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 502, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 117, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 232, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @vega20_ih_enable_ring._entry, ptr @vega20_ih_enable_ring._entry_ptr, ptr @vega20_ih_get_wptr._entry, ptr @vega20_ih_get_wptr._entry_ptr, ptr @vega20_ih_toggle_ring_interrupts._entry, ptr @vega20_ih_toggle_ring_interrupts._entry_ptr, ptr @.str, ptr @vega20_ih_ip_funcs, ptr @vega20_ih_ip_block, ptr @vega20_ih_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vega20_ih_self_irq_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_ih_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_ih_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_ih_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_ih_get_wptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_ih_self_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_ih_toggle_ring_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_ih_enable_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vega20_ih_early_init(ptr nocapture noundef writeonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ih_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 9
  %0 = ptrtoint ptr %ih_funcs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vega20_ih_funcs, ptr %ih_funcs.i, align 8
  %self_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 13
  %1 = ptrtoint ptr %self_irq.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %self_irq.i, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 13, i32 2
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vega20_ih_self_irq_funcs, ptr %funcs.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %self_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 13
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 0, ptr noundef %self_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ih = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5
  %call2 = tail call i32 @amdgpu_ih_ring_init(ptr noundef %handle, ptr noundef %ih, i32 noundef 262144, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %use_doorbell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 3
  %0 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %use_doorbell, align 4
  %ih8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 15
  %1 = ptrtoint ptr %ih8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ih8, align 4
  %shl = shl i32 %2, 1
  %doorbell_index11 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 2
  %3 = ptrtoint ptr %doorbell_index11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %doorbell_index11, align 8
  %ih1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6
  %call13 = tail call i32 @amdgpu_ih_ring_init(ptr noundef %handle, ptr noundef %ih1, i32 noundef 4096, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %use_doorbell19 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 3
  %4 = ptrtoint ptr %use_doorbell19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %use_doorbell19, align 4
  %5 = ptrtoint ptr %ih8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ih8, align 4
  %add = shl i32 %6, 1
  %shl22 = add i32 %add, 2
  %doorbell_index25 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 2
  %7 = ptrtoint ptr %doorbell_index25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl22, ptr %doorbell_index25, align 8
  %ih2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7
  %call27 = tail call i32 @amdgpu_ih_ring_init(ptr noundef %handle, ptr noundef %ih2, i32 noundef 4096, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end16
  %use_doorbell33 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 3
  %8 = ptrtoint ptr %use_doorbell33 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %use_doorbell33, align 4
  %9 = ptrtoint ptr %ih8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ih8, align 4
  %add36 = shl i32 %10, 1
  %shl37 = add i32 %add36, 4
  %doorbell_index40 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 2
  %11 = ptrtoint ptr %doorbell_index40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl37, ptr %doorbell_index40, align 8
  %12 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ih, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end30.if.end.i_crit_edge, label %if.then.i

if.end30.if.end.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %ih_regs3.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add.i = add i32 %17, 129
  %18 = ptrtoint ptr %ih_regs3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %ih_regs3.i, align 4
  %19 = load i32, ptr %15, align 4
  %add10.i = add i32 %19, 130
  %ih_rb_base_hi.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 1
  %20 = ptrtoint ptr %ih_rb_base_hi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add10.i, ptr %ih_rb_base_hi.i, align 4
  %21 = load i32, ptr %15, align 4
  %add15.i = add i32 %21, 128
  %ih_rb_cntl.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 2
  %22 = ptrtoint ptr %ih_rb_cntl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add15.i, ptr %ih_rb_cntl.i, align 4
  %23 = load i32, ptr %15, align 4
  %add20.i = add i32 %23, 132
  %ih_rb_wptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 3
  %24 = ptrtoint ptr %ih_rb_wptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add20.i, ptr %ih_rb_wptr.i, align 4
  %25 = load i32, ptr %15, align 4
  %add25.i = add i32 %25, 131
  %ih_rb_rptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 4
  %26 = ptrtoint ptr %ih_rb_rptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add25.i, ptr %ih_rb_rptr.i, align 4
  %27 = load i32, ptr %15, align 4
  %add30.i = add i32 %27, 135
  %ih_doorbell_rptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 5
  %28 = ptrtoint ptr %ih_doorbell_rptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add30.i, ptr %ih_doorbell_rptr.i, align 4
  %29 = load i32, ptr %15, align 4
  %add35.i = add i32 %29, 134
  %ih_rb_wptr_addr_lo.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 6
  %30 = ptrtoint ptr %ih_rb_wptr_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add35.i, ptr %ih_rb_wptr_addr_lo.i, align 4
  %31 = load i32, ptr %15, align 4
  %add40.i = add i32 %31, 133
  %ih_rb_wptr_addr_hi.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 7
  %32 = ptrtoint ptr %ih_rb_wptr_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add40.i, ptr %ih_rb_wptr_addr_hi.i, align 4
  %psp_reg_id.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 8
  %33 = ptrtoint ptr %psp_reg_id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %psp_reg_id.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end30.if.end.i_crit_edge
  %34 = ptrtoint ptr %ih1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ih1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool43.not.i = icmp eq i32 %35, 0
  br i1 %tobool43.not.i, label %if.end.i.if.end85.i_crit_edge, label %if.then44.i

if.end.i.if.end85.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.then44.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ih_regs47.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 14
  %arrayidx49.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %36 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx49.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add52.i = add i32 %39, 141
  %40 = ptrtoint ptr %ih_regs47.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add52.i, ptr %ih_regs47.i, align 4
  %41 = load i32, ptr %37, align 4
  %add58.i = add i32 %41, 142
  %ih_rb_base_hi59.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 14, i32 1
  %42 = ptrtoint ptr %ih_rb_base_hi59.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add58.i, ptr %ih_rb_base_hi59.i, align 4
  %43 = load i32, ptr %37, align 4
  %add64.i = add i32 %43, 140
  %ih_rb_cntl65.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 14, i32 2
  %44 = ptrtoint ptr %ih_rb_cntl65.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add64.i, ptr %ih_rb_cntl65.i, align 4
  %45 = load i32, ptr %37, align 4
  %add70.i = add i32 %45, 144
  %ih_rb_wptr71.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 14, i32 3
  %46 = ptrtoint ptr %ih_rb_wptr71.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add70.i, ptr %ih_rb_wptr71.i, align 4
  %47 = load i32, ptr %37, align 4
  %add76.i = add i32 %47, 143
  %ih_rb_rptr77.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 14, i32 4
  %48 = ptrtoint ptr %ih_rb_rptr77.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add76.i, ptr %ih_rb_rptr77.i, align 4
  %49 = load i32, ptr %37, align 4
  %add82.i = add i32 %49, 147
  %ih_doorbell_rptr83.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 14, i32 5
  %50 = ptrtoint ptr %ih_doorbell_rptr83.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add82.i, ptr %ih_doorbell_rptr83.i, align 4
  %psp_reg_id84.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6, i32 14, i32 8
  %51 = ptrtoint ptr %psp_reg_id84.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %psp_reg_id84.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then44.i, %if.end.i.if.end85.i_crit_edge
  %52 = ptrtoint ptr %ih2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ih2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool89.not.i = icmp eq i32 %53, 0
  br i1 %tobool89.not.i, label %if.end85.i.vega20_ih_init_register_offset.exit_crit_edge, label %if.then90.i

if.end85.i.vega20_ih_init_register_offset.exit_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vega20_ih_init_register_offset.exit

if.then90.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  %ih_regs93.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 14
  %arrayidx95.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %54 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx95.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add98.i = add i32 %57, 153
  %58 = ptrtoint ptr %ih_regs93.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add98.i, ptr %ih_regs93.i, align 4
  %59 = load i32, ptr %55, align 4
  %add104.i = add i32 %59, 154
  %ih_rb_base_hi105.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 14, i32 1
  %60 = ptrtoint ptr %ih_rb_base_hi105.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add104.i, ptr %ih_rb_base_hi105.i, align 4
  %61 = load i32, ptr %55, align 4
  %add110.i = add i32 %61, 152
  %ih_rb_cntl111.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 14, i32 2
  %62 = ptrtoint ptr %ih_rb_cntl111.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add110.i, ptr %ih_rb_cntl111.i, align 4
  %63 = load i32, ptr %55, align 4
  %add116.i = add i32 %63, 156
  %ih_rb_wptr117.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 14, i32 3
  %64 = ptrtoint ptr %ih_rb_wptr117.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add116.i, ptr %ih_rb_wptr117.i, align 4
  %65 = load i32, ptr %55, align 4
  %add122.i = add i32 %65, 155
  %ih_rb_rptr123.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 14, i32 4
  %66 = ptrtoint ptr %ih_rb_rptr123.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add122.i, ptr %ih_rb_rptr123.i, align 4
  %67 = load i32, ptr %55, align 4
  %add128.i = add i32 %67, 159
  %ih_doorbell_rptr129.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 14, i32 5
  %68 = ptrtoint ptr %ih_doorbell_rptr129.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add128.i, ptr %ih_doorbell_rptr129.i, align 4
  %psp_reg_id130.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7, i32 14, i32 8
  %69 = ptrtoint ptr %psp_reg_id130.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %psp_reg_id130.i, align 4
  br label %vega20_ih_init_register_offset.exit

vega20_ih_init_register_offset.exit:              ; preds = %if.then90.i, %if.end85.i.vega20_ih_init_register_offset.exit_crit_edge
  %ih_soft = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 8
  %call42 = tail call i32 @amdgpu_ih_ring_init(ptr noundef %handle, ptr noundef %ih_soft, i32 noundef 4096, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %vega20_ih_init_register_offset.exit.cleanup_crit_edge

vega20_ih_init_register_offset.exit.cleanup_crit_edge: ; preds = %vega20_ih_init_register_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %vega20_ih_init_register_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = tail call i32 @amdgpu_irq_init(ptr noundef %handle) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %vega20_ih_init_register_offset.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %if.end45 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call13, %if.end5.cleanup_crit_edge ], [ %call27, %if.end16.cleanup_crit_edge ], [ %call42, %vega20_ih_init_register_offset.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_irq_fini_sw(ptr noundef %handle) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  %ih.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ih.i) #7
  %0 = getelementptr inbounds [3 x ptr], ptr %ih.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x ptr], ptr %ih.i, i32 0, i32 2
  %ih1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5
  %2 = ptrtoint ptr %ih.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ih1.i, ptr %ih.i, align 4
  %ih13.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ih13.i, ptr %0, align 4
  %ih2.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ih2.i, ptr %1, align 4
  %call.i = tail call fastcc i32 @vega20_ih_toggle_interrupts(ptr noundef %handle, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vega20_ih_irq_init.exit_crit_edge

entry.vega20_ih_irq_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vega20_ih_irq_init.exit

if.end.i:                                         ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %5 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs.i, align 8
  %ih_control.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %ih_control.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ih_control.i, align 4
  tail call void %8(ptr noundef %handle) #7
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %9 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %10)
  %cmp.i = icmp eq i32 %10, 23
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end67.i_crit_edge

if.end.i.if.end67.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %11 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.i = icmp eq i32 %12, 0
  br i1 %cmp6.i, label %if.then7.i, label %land.lhs.true.i.if.end67thread-pre-split.i_crit_edge

land.lhs.true.i.if.end67thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67thread-pre-split.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %13 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.then7.i.cond.false.i_crit_edge, label %land.lhs.true9.i

if.then7.i.cond.false.i_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true9.i:                                 ; preds = %if.then7.i
  %funcs10.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %15 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs10.i, align 4
  %tobool11.not.i = icmp eq ptr %16, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.cond.false.i_crit_edge, label %land.lhs.true12.i

land.lhs.true9.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true12.i:                                ; preds = %land.lhs.true9.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool16.not.i = icmp eq ptr %18, null
  br i1 %tobool16.not.i, label %land.lhs.true12.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true12.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add.i = add i32 %22, 396
  %call23.i = tail call i32 %18(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true12.i.cond.false.i_crit_edge, %land.lhs.true9.i.cond.false.i_crit_edge, %if.then7.i.cond.false.i_crit_edge
  %arrayidx25.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %23 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx25.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add28.i = add i32 %26, 396
  %call29.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add28.i, i32 noundef 0) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call23.i, %cond.true.i ], [ %call29.i, %cond.false.i ]
  %use_bus_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 4
  %27 = ptrtoint ptr %use_bus_addr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %use_bus_addr.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool32.not.i = icmp eq i8 %28, 0
  %or.i = or i32 %cond.i, 16
  %spec.select.i = select i1 %tobool32.not.i, i32 %cond.i, i32 %or.i
  %29 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %virt.i, align 8
  %and38.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %cond.end.i.cond.false60.i_crit_edge, label %land.lhs.true40.i

cond.end.i.cond.false60.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false60.i

land.lhs.true40.i:                                ; preds = %cond.end.i
  %funcs43.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %31 = ptrtoint ptr %funcs43.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs43.i, align 4
  %tobool44.not.i = icmp eq ptr %32, null
  br i1 %tobool44.not.i, label %land.lhs.true40.i.cond.false60.i_crit_edge, label %land.lhs.true45.i

land.lhs.true40.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false60.i

land.lhs.true45.i:                                ; preds = %land.lhs.true40.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool49.not.i = icmp eq ptr %34, null
  br i1 %tobool49.not.i, label %land.lhs.true45.i.cond.false60.i_crit_edge, label %cond.true50.i

land.lhs.true45.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false60.i

cond.true50.i:                                    ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx56.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %35 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx56.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add59.i = add i32 %38, 396
  tail call void %34(ptr noundef %handle, i32 noundef %add59.i, i32 noundef %spec.select.i, i32 noundef 0, i32 noundef 21) #7
  br label %if.end67thread-pre-split.i

cond.false60.i:                                   ; preds = %land.lhs.true45.i.cond.false60.i_crit_edge, %land.lhs.true40.i.cond.false60.i_crit_edge, %cond.end.i.cond.false60.i_crit_edge
  %arrayidx62.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %39 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx62.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add65.i = add i32 %42, 396
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add65.i, i32 noundef %spec.select.i, i32 noundef 0) #7
  br label %if.end67thread-pre-split.i

if.end67thread-pre-split.i:                       ; preds = %cond.false60.i, %cond.true50.i, %land.lhs.true.i.if.end67thread-pre-split.i_crit_edge
  %43 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr.i = load i32, ptr %asic_type.i, align 8
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end67thread-pre-split.i, %if.end.i.if.end67.i_crit_edge
  %44 = phi i32 [ %.pr.i, %if.end67thread-pre-split.i ], [ %10, %if.end.i.if.end67.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %44)
  %cmp69.i = icmp eq i32 %44, 25
  br i1 %cmp69.i, label %if.then70.i, label %if.end67.i.if.end146.i_crit_edge

if.end67.i.if.end146.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.then70.i:                                      ; preds = %if.end67.i
  %virt71.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %45 = ptrtoint ptr %virt71.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt71.i, align 8
  %and73.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.then70.i.cond.false97.i_crit_edge, label %land.lhs.true75.i

if.then70.i.cond.false97.i_crit_edge:             ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false97.i

land.lhs.true75.i:                                ; preds = %if.then70.i
  %funcs78.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %47 = ptrtoint ptr %funcs78.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs78.i, align 4
  %tobool79.not.i = icmp eq ptr %48, null
  br i1 %tobool79.not.i, label %land.lhs.true75.i.cond.false97.i_crit_edge, label %land.lhs.true80.i

land.lhs.true75.i.cond.false97.i_crit_edge:       ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false97.i

land.lhs.true80.i:                                ; preds = %land.lhs.true75.i
  %sriov_rreg84.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %sriov_rreg84.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_rreg84.i, align 4
  %tobool85.not.i = icmp eq ptr %50, null
  br i1 %tobool85.not.i, label %land.lhs.true80.i.cond.false97.i_crit_edge, label %cond.true86.i

land.lhs.true80.i.cond.false97.i_crit_edge:       ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false97.i

cond.true86.i:                                    ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx92.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %51 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx92.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add95.i = add i32 %54, 397
  %call96.i = tail call i32 %50(ptr noundef %handle, i32 noundef %add95.i, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end104.i

cond.false97.i:                                   ; preds = %land.lhs.true80.i.cond.false97.i_crit_edge, %land.lhs.true75.i.cond.false97.i_crit_edge, %if.then70.i.cond.false97.i_crit_edge
  %arrayidx99.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %55 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx99.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add102.i = add i32 %58, 397
  %call103.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add102.i, i32 noundef 0) #7
  br label %cond.end104.i

cond.end104.i:                                    ; preds = %cond.false97.i, %cond.true86.i
  %cond105.i = phi i32 [ %call96.i, %cond.true86.i ], [ %call103.i, %cond.false97.i ]
  %use_bus_addr108.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 4
  %59 = ptrtoint ptr %use_bus_addr108.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %use_bus_addr108.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool109.not.i = icmp eq i8 %60, 0
  %or112.i = or i32 %cond105.i, 16
  %spec.select243.i = select i1 %tobool109.not.i, i32 %cond105.i, i32 %or112.i
  %61 = ptrtoint ptr %virt71.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %virt71.i, align 8
  %and116.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %cond.end104.i.cond.false139.i_crit_edge, label %land.lhs.true118.i

cond.end104.i.cond.false139.i_crit_edge:          ; preds = %cond.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false139.i

land.lhs.true118.i:                               ; preds = %cond.end104.i
  %funcs121.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %63 = ptrtoint ptr %funcs121.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %funcs121.i, align 4
  %tobool122.not.i = icmp eq ptr %64, null
  br i1 %tobool122.not.i, label %land.lhs.true118.i.cond.false139.i_crit_edge, label %land.lhs.true123.i

land.lhs.true118.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false139.i

land.lhs.true123.i:                               ; preds = %land.lhs.true118.i
  %sriov_wreg127.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %sriov_wreg127.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sriov_wreg127.i, align 4
  %tobool128.not.i = icmp eq ptr %66, null
  br i1 %tobool128.not.i, label %land.lhs.true123.i.cond.false139.i_crit_edge, label %cond.true129.i

land.lhs.true123.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false139.i

cond.true129.i:                                   ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx135.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %67 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx135.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add138.i = add i32 %70, 397
  tail call void %66(ptr noundef %handle, i32 noundef %add138.i, i32 noundef %spec.select243.i, i32 noundef 0, i32 noundef 21) #7
  br label %if.end146.i

cond.false139.i:                                  ; preds = %land.lhs.true123.i.cond.false139.i_crit_edge, %land.lhs.true118.i.cond.false139.i_crit_edge, %cond.end104.i.cond.false139.i_crit_edge
  %arrayidx141.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %71 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx141.i, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add144.i = add i32 %74, 397
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add144.i, i32 noundef %spec.select243.i, i32 noundef 0) #7
  br label %if.end146.i

if.end146.i:                                      ; preds = %cond.false139.i, %cond.true129.i, %if.end67.i.if.end146.i_crit_edge
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %msi_enabled.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 4
  %psp.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113
  %ih_rb_wptr_addr_lo.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 6
  %wptr_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 8
  %ih_rb_wptr_addr_hi.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end146.i
  %i.0250.i = phi i32 [ 0, %if.end146.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx148.i = getelementptr [3 x ptr], ptr %ih.i, i32 0, i32 %i.0250.i
  %75 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx148.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool149.not.i = icmp eq i32 %78, 0
  br i1 %tobool149.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then150.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then150.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0250.i)
  %cmp151.i = icmp eq i32 %i.0250.i, 1
  br i1 %cmp151.i, label %if.then152.i, label %if.then150.i.if.end153.i_crit_edge

if.then150.i.if.end153.i_crit_edge:               ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153.i

if.then152.i:                                     ; preds = %if.then150.i
  %79 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %80)
  %cmp.i.i = icmp ugt i32 %80, 22
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then152.i.if.end153.i_crit_edge

if.then152.i.if.end153.i_crit_edge:               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153.i

if.then.i.i:                                      ; preds = %if.then152.i
  %81 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %virt.i.i, align 8
  %and.i.i = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.cond.false.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %83 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %funcs.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %84, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %sriov_wreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %sriov_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sriov_wreg.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %86, null
  br i1 %tobool6.not.i.i, label %land.lhs.true2.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true2.i.i.cond.false.i.i_crit_edge:      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add.i.i = add i32 %90, 392
  tail call void %86(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef 18, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true2.i.i.cond.false.i.i_crit_edge, %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.then.i.i.cond.false.i.i_crit_edge
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add17.i.i = add i32 %94, 392
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add17.i.i, i32 noundef 18, i32 noundef 0) #7
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %95 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %virt.i.i, align 8
  %and20.i.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %cond.end.i.i.cond.false42.i.i_crit_edge, label %land.lhs.true22.i.i

cond.end.i.i.cond.false42.i.i_crit_edge:          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false42.i.i

land.lhs.true22.i.i:                              ; preds = %cond.end.i.i
  %97 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %funcs.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %98, null
  br i1 %tobool26.not.i.i, label %land.lhs.true22.i.i.cond.false42.i.i_crit_edge, label %land.lhs.true27.i.i

land.lhs.true22.i.i.cond.false42.i.i_crit_edge:   ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false42.i.i

land.lhs.true27.i.i:                              ; preds = %land.lhs.true22.i.i
  %sriov_rreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %sriov_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sriov_rreg.i.i, align 4
  %tobool31.not.i.i = icmp eq ptr %100, null
  br i1 %tobool31.not.i.i, label %land.lhs.true27.i.i.cond.false42.i.i_crit_edge, label %cond.true32.i.i

land.lhs.true27.i.i.cond.false42.i.i_crit_edge:   ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false42.i.i

cond.true32.i.i:                                  ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %add41.i.i = add i32 %104, 393
  %call.i.i = tail call i32 %100(ptr noundef %handle, i32 noundef %add41.i.i, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end49.i.i

cond.false42.i.i:                                 ; preds = %land.lhs.true27.i.i.cond.false42.i.i_crit_edge, %land.lhs.true22.i.i.cond.false42.i.i_crit_edge, %cond.end.i.i.cond.false42.i.i_crit_edge
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %add47.i.i = add i32 %108, 393
  %call48.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add47.i.i, i32 noundef 0) #7
  br label %cond.end49.i.i

cond.end49.i.i:                                   ; preds = %cond.false42.i.i, %cond.true32.i.i
  %cond.i.i = phi i32 [ %call.i.i, %cond.true32.i.i ], [ %call48.i.i, %cond.false42.i.i ]
  %and50.i.i = and i32 %cond.i.i, -3932161
  %or52.i.i = or i32 %and50.i.i, 1310720
  %109 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %virt.i.i, align 8
  %and55.i.i = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %cond.end49.i.i.cond.false78.i.i_crit_edge, label %land.lhs.true57.i.i

cond.end49.i.i.cond.false78.i.i_crit_edge:        ; preds = %cond.end49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false78.i.i

land.lhs.true57.i.i:                              ; preds = %cond.end49.i.i
  %111 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %funcs.i.i, align 4
  %tobool61.not.i.i = icmp eq ptr %112, null
  br i1 %tobool61.not.i.i, label %land.lhs.true57.i.i.cond.false78.i.i_crit_edge, label %land.lhs.true62.i.i

land.lhs.true57.i.i.cond.false78.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false78.i.i

land.lhs.true62.i.i:                              ; preds = %land.lhs.true57.i.i
  %sriov_wreg66.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %112, i32 0, i32 12
  %113 = ptrtoint ptr %sriov_wreg66.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sriov_wreg66.i.i, align 4
  %tobool67.not.i.i = icmp eq ptr %114, null
  br i1 %tobool67.not.i.i, label %land.lhs.true62.i.i.cond.false78.i.i_crit_edge, label %cond.true68.i.i

land.lhs.true62.i.i.cond.false78.i.i_crit_edge:   ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false78.i.i

cond.true68.i.i:                                  ; preds = %land.lhs.true62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %add77.i.i = add i32 %118, 393
  tail call void %114(ptr noundef %handle, i32 noundef %add77.i.i, i32 noundef %or52.i.i, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end84.i.i

cond.false78.i.i:                                 ; preds = %land.lhs.true62.i.i.cond.false78.i.i_crit_edge, %land.lhs.true57.i.i.cond.false78.i.i_crit_edge, %cond.end49.i.i.cond.false78.i.i_crit_edge
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %add83.i.i = add i32 %122, 393
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add83.i.i, i32 noundef %or52.i.i, i32 noundef 0) #7
  br label %cond.end84.i.i

cond.end84.i.i:                                   ; preds = %cond.false78.i.i, %cond.true68.i.i
  %123 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %virt.i.i, align 8
  %and87.i.i = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i.i)
  %tobool88.not.i.i = icmp eq i32 %and87.i.i, 0
  br i1 %tobool88.not.i.i, label %cond.end84.i.i.cond.false110.i.i_crit_edge, label %land.lhs.true89.i.i

cond.end84.i.i.cond.false110.i.i_crit_edge:       ; preds = %cond.end84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false110.i.i

land.lhs.true89.i.i:                              ; preds = %cond.end84.i.i
  %125 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %funcs.i.i, align 4
  %tobool93.not.i.i = icmp eq ptr %126, null
  br i1 %tobool93.not.i.i, label %land.lhs.true89.i.i.cond.false110.i.i_crit_edge, label %land.lhs.true94.i.i

land.lhs.true89.i.i.cond.false110.i.i_crit_edge:  ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false110.i.i

land.lhs.true94.i.i:                              ; preds = %land.lhs.true89.i.i
  %sriov_wreg98.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %126, i32 0, i32 12
  %127 = ptrtoint ptr %sriov_wreg98.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sriov_wreg98.i.i, align 4
  %tobool99.not.i.i = icmp eq ptr %128, null
  br i1 %tobool99.not.i.i, label %land.lhs.true94.i.i.cond.false110.i.i_crit_edge, label %cond.true100.i.i

land.lhs.true94.i.i.cond.false110.i.i_crit_edge:  ; preds = %land.lhs.true94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false110.i.i

cond.true100.i.i:                                 ; preds = %land.lhs.true94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %add109.i.i = add i32 %132, 392
  tail call void %128(ptr noundef %handle, i32 noundef %add109.i.i, i32 noundef 27, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end116.i.i

cond.false110.i.i:                                ; preds = %land.lhs.true94.i.i.cond.false110.i.i_crit_edge, %land.lhs.true89.i.i.cond.false110.i.i_crit_edge, %cond.end84.i.i.cond.false110.i.i_crit_edge
  %133 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %add115.i.i = add i32 %136, 392
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add115.i.i, i32 noundef 27, i32 noundef 0) #7
  br label %cond.end116.i.i

cond.end116.i.i:                                  ; preds = %cond.false110.i.i, %cond.true100.i.i
  %137 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %virt.i.i, align 8
  %and119.i.i = and i32 %138, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i.i)
  %tobool120.not.i.i = icmp eq i32 %and119.i.i, 0
  br i1 %tobool120.not.i.i, label %cond.end116.i.i.cond.false143.i.i_crit_edge, label %land.lhs.true121.i.i

cond.end116.i.i.cond.false143.i.i_crit_edge:      ; preds = %cond.end116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false143.i.i

land.lhs.true121.i.i:                             ; preds = %cond.end116.i.i
  %139 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %funcs.i.i, align 4
  %tobool125.not.i.i = icmp eq ptr %140, null
  br i1 %tobool125.not.i.i, label %land.lhs.true121.i.i.cond.false143.i.i_crit_edge, label %land.lhs.true126.i.i

land.lhs.true121.i.i.cond.false143.i.i_crit_edge: ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false143.i.i

land.lhs.true126.i.i:                             ; preds = %land.lhs.true121.i.i
  %sriov_rreg130.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %140, i32 0, i32 13
  %141 = ptrtoint ptr %sriov_rreg130.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sriov_rreg130.i.i, align 4
  %tobool131.not.i.i = icmp eq ptr %142, null
  br i1 %tobool131.not.i.i, label %land.lhs.true126.i.i.cond.false143.i.i_crit_edge, label %cond.true132.i.i

land.lhs.true126.i.i.cond.false143.i.i_crit_edge: ; preds = %land.lhs.true126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false143.i.i

cond.true132.i.i:                                 ; preds = %land.lhs.true126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i.i, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  %add141.i.i = add i32 %146, 393
  %call142.i.i = tail call i32 %142(ptr noundef %handle, i32 noundef %add141.i.i, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end150.i.i

cond.false143.i.i:                                ; preds = %land.lhs.true126.i.i.cond.false143.i.i_crit_edge, %land.lhs.true121.i.i.cond.false143.i.i_crit_edge, %cond.end116.i.i.cond.false143.i.i_crit_edge
  %147 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i.i, align 8
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  %add148.i.i = add i32 %150, 393
  %call149.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add148.i.i, i32 noundef 0) #7
  br label %cond.end150.i.i

cond.end150.i.i:                                  ; preds = %cond.false143.i.i, %cond.true132.i.i
  %cond151.i.i = phi i32 [ %call142.i.i, %cond.true132.i.i ], [ %call149.i.i, %cond.false143.i.i ]
  %and152.i.i = and i32 %cond151.i.i, -3145729
  %or153.i.i = or i32 %and152.i.i, 1048576
  %151 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %virt.i.i, align 8
  %and156.i.i = and i32 %152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i.i)
  %tobool157.not.i.i = icmp eq i32 %and156.i.i, 0
  br i1 %tobool157.not.i.i, label %cond.end150.i.i.cond.false179.i.i_crit_edge, label %land.lhs.true158.i.i

cond.end150.i.i.cond.false179.i.i_crit_edge:      ; preds = %cond.end150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false179.i.i

land.lhs.true158.i.i:                             ; preds = %cond.end150.i.i
  %153 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %funcs.i.i, align 4
  %tobool162.not.i.i = icmp eq ptr %154, null
  br i1 %tobool162.not.i.i, label %land.lhs.true158.i.i.cond.false179.i.i_crit_edge, label %land.lhs.true163.i.i

land.lhs.true158.i.i.cond.false179.i.i_crit_edge: ; preds = %land.lhs.true158.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false179.i.i

land.lhs.true163.i.i:                             ; preds = %land.lhs.true158.i.i
  %sriov_wreg167.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %154, i32 0, i32 12
  %155 = ptrtoint ptr %sriov_wreg167.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %sriov_wreg167.i.i, align 4
  %tobool168.not.i.i = icmp eq ptr %156, null
  br i1 %tobool168.not.i.i, label %land.lhs.true163.i.i.cond.false179.i.i_crit_edge, label %cond.true169.i.i

land.lhs.true163.i.i.cond.false179.i.i_crit_edge: ; preds = %land.lhs.true163.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false179.i.i

cond.true169.i.i:                                 ; preds = %land.lhs.true163.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i.i, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %add178.i.i = add i32 %160, 393
  tail call void %156(ptr noundef %handle, i32 noundef %add178.i.i, i32 noundef %or153.i.i, i32 noundef 0, i32 noundef 21) #7
  br label %if.end153.i

cond.false179.i.i:                                ; preds = %land.lhs.true163.i.i.cond.false179.i.i_crit_edge, %land.lhs.true158.i.i.cond.false179.i.i_crit_edge, %cond.end150.i.i.cond.false179.i.i_crit_edge
  %161 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i.i, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %add184.i.i = add i32 %164, 393
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add184.i.i, i32 noundef %or153.i.i, i32 noundef 0) #7
  br label %if.end153.i

if.end153.i:                                      ; preds = %cond.false179.i.i, %cond.true169.i.i, %if.then152.i.if.end153.i_crit_edge, %if.then150.i.if.end153.i_crit_edge
  %ih_regs1.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 14
  %165 = ptrtoint ptr %ih_regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ih_regs1.i.i, align 4
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 7
  %167 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %gpu_addr.i.i, align 8
  %shr.i.i = lshr i64 %168, 8
  %conv.i.i = trunc i64 %shr.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %166, i32 noundef %conv.i.i, i32 noundef 0) #7
  %ih_rb_base_hi.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 14, i32 1
  %169 = ptrtoint ptr %ih_rb_base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ih_rb_base_hi.i.i, align 4
  %171 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %gpu_addr.i.i, align 8
  %shr3.i.i = lshr i64 %172, 40
  %173 = trunc i64 %shr3.i.i to i32
  %conv4.i.i = and i32 %173, 255
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %170, i32 noundef %conv4.i.i, i32 noundef 0) #7
  %ih_rb_cntl.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 14, i32 2
  %174 = ptrtoint ptr %ih_rb_cntl.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %ih_rb_cntl.i.i, align 4
  %call.i244.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %175, i32 noundef 0) #7
  %176 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %76, align 8
  %div69.i.i.i = lshr i32 %177, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %177)
  %cmp.i.i.i.i = icmp ugt i32 %177, 7
  %sub.i70.i.i.i = add nsw i32 %div69.i.i.i, -1
  %178 = tail call i32 @llvm.ctlz.i32(i32 %sub.i70.i.i.i, i1 false) #7, !range !38
  %and.i.i.i = and i32 %call.i244.i, 11468481
  %use_bus_addr.i.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 4
  %179 = ptrtoint ptr %use_bus_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %use_bus_addr.i.i.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i.i.i = icmp eq i8 %180, 0
  %cond35.i.i.i = select i1 %tobool.not.i.i.i, i32 1073741824, i32 268435456
  %.neg = mul nuw nsw i32 %178, 62
  %.neg.op = and i32 %.neg, 62
  %and43.i.i.i = select i1 %cmp.i.i.i.i, i32 %.neg.op, i32 0
  %or.i.i.i = or i32 %and.i.i.i, %and43.i.i.i
  %or40.i.i.i = or i32 %or.i.i.i, %cond35.i.i.i
  %or48.i.i.i = or i32 %or40.i.i.i, -2146369280
  %cmp.i245.i = icmp eq ptr %ih1.i, %76
  br i1 %cmp.i245.i, label %if.then.i246.i, label %if.end153.i.if.end.i.i_crit_edge

if.end153.i.if.end.i.i_crit_edge:                 ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i246.i:                                   ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  %and8.i.i = and i32 %or48.i.i.i, -794820609
  %181 = ptrtoint ptr %msi_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %msi_enabled.i.i, align 4, !range !37
  %183 = zext i8 %182 to i32
  %shl.i.i = shl nuw nsw i32 %183, 21
  %or.i.i = or i32 %shl.i.i, %and8.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i246.i, %if.end153.i.if.end.i.i_crit_edge
  %tmp.0.i.i = phi i32 [ %or.i.i, %if.then.i246.i ], [ %or48.i.i.i, %if.end153.i.if.end.i.i_crit_edge ]
  %cmp13.i.i = icmp eq ptr %ih13.i, %76
  %or17.i.i = or i32 %tmp.0.i.i, 512
  %spec.select.i.i = select i1 %cmp13.i.i, i32 %or17.i.i, i32 %tmp.0.i.i
  %184 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %virt.i.i, align 8
  %and19.i.i = and i32 %185, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.else.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end.i.i
  %psp_reg_id.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 14, i32 8
  %186 = ptrtoint ptr %psp_reg_id.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %psp_reg_id.i.i, align 4
  %call22.i.i = tail call i32 @psp_reg_program(ptr noundef %psp.i.i, i32 noundef %187, i32 noundef %spec.select.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.then21.i.i.if.end27.i.i_crit_edge, label %vega20_ih_enable_ring.exit.i

if.then21.i.i.if.end27.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %ih_rb_cntl.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %ih_rb_cntl.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %189, i32 noundef %spec.select.i.i, i32 noundef 0) #7
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.else.i.i, %if.then21.i.i.if.end27.i.i_crit_edge
  br i1 %cmp.i245.i, label %if.then32.i.i, label %if.end27.i.i.if.end40.i.i_crit_edge

if.end27.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i.i

if.then32.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %190 = ptrtoint ptr %ih_rb_wptr_addr_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %ih_rb_wptr_addr_lo.i.i, align 4
  %192 = ptrtoint ptr %wptr_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %wptr_addr.i.i, align 8
  %conv34.i.i = trunc i64 %193 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %191, i32 noundef %conv34.i.i, i32 noundef 0) #7
  %194 = ptrtoint ptr %ih_rb_wptr_addr_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ih_rb_wptr_addr_hi.i.i, align 4
  %196 = ptrtoint ptr %wptr_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %wptr_addr.i.i, align 8
  %shr36.i.i = lshr i64 %197, 32
  %conv38.i.i = trunc i64 %shr36.i.i to i32
  %and39.i.i = and i32 %conv38.i.i, 65535
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %195, i32 noundef %and39.i.i, i32 noundef 0) #7
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then32.i.i, %if.end27.i.i.if.end40.i.i_crit_edge
  %ih_rb_wptr.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 14, i32 3
  %198 = ptrtoint ptr %ih_rb_wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ih_rb_wptr.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %199, i32 noundef 0, i32 noundef 0) #7
  %ih_rb_rptr.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 14, i32 4
  %200 = ptrtoint ptr %ih_rb_rptr.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ih_rb_rptr.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %201, i32 noundef 0, i32 noundef 0) #7
  %ih_doorbell_rptr.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 14, i32 5
  %202 = ptrtoint ptr %ih_doorbell_rptr.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %ih_doorbell_rptr.i.i, align 4
  %use_doorbell.i.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 3
  %204 = ptrtoint ptr %use_doorbell.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %use_doorbell.i.i.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i80.i.i = icmp eq i8 %205, 0
  br i1 %tobool.not.i80.i.i, label %if.end40.i.i.vega20_ih_enable_ring.exit.thread.i_crit_edge, label %if.then.i.i.i

if.end40.i.i.vega20_ih_enable_ring.exit.thread.i_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vega20_ih_enable_ring.exit.thread.i

if.then.i.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %doorbell_index.i.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %76, i32 0, i32 2
  %206 = ptrtoint ptr %doorbell_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %doorbell_index.i.i.i, align 8
  %and1.i.i.i = and i32 %207, 67108863
  %or3.i.i.i = or i32 %and1.i.i.i, 268435456
  br label %vega20_ih_enable_ring.exit.thread.i

vega20_ih_enable_ring.exit.thread.i:              ; preds = %if.then.i.i.i, %if.end40.i.i.vega20_ih_enable_ring.exit.thread.i_crit_edge
  %ih_doorbell_rtpr.0.i.i.i = phi i32 [ %or3.i.i.i, %if.then.i.i.i ], [ 0, %if.end40.i.i.vega20_ih_enable_ring.exit.thread.i_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %203, i32 noundef %ih_doorbell_rtpr.0.i.i.i, i32 noundef 0) #7
  br label %for.inc.i

vega20_ih_enable_ring.exit.i:                     ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %208 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.6) #10
  br label %vega20_ih_irq_init.exit

for.inc.i:                                        ; preds = %vega20_ih_enable_ring.exit.thread.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0250.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %210 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_set_master(ptr noundef %211) #7
  %call160.i = tail call fastcc i32 @vega20_ih_toggle_interrupts(ptr noundef %handle, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160.i)
  %tobool161.not.i = icmp eq i32 %call160.i, 0
  br i1 %tobool161.not.i, label %if.end163.i, label %for.end.i.vega20_ih_irq_init.exit_crit_edge

for.end.i.vega20_ih_irq_init.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vega20_ih_irq_init.exit

if.end163.i:                                      ; preds = %for.end.i
  %ih_soft.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 8
  %212 = ptrtoint ptr %ih_soft.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %ih_soft.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool166.not.i = icmp eq i32 %213, 0
  br i1 %tobool166.not.i, label %if.end163.i.vega20_ih_irq_init.exit_crit_edge, label %if.then167.i

if.end163.i.vega20_ih_irq_init.exit_crit_edge:    ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vega20_ih_irq_init.exit

if.then167.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #9
  %enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 8, i32 12
  %214 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 1, ptr %enabled.i, align 4
  br label %vega20_ih_irq_init.exit

vega20_ih_irq_init.exit:                          ; preds = %if.then167.i, %if.end163.i.vega20_ih_irq_init.exit_crit_edge, %for.end.i.vega20_ih_irq_init.exit_crit_edge, %vega20_ih_enable_ring.exit.i, %entry.vega20_ih_irq_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.vega20_ih_irq_init.exit_crit_edge ], [ -110, %vega20_ih_enable_ring.exit.i ], [ %call160.i, %for.end.i.vega20_ih_irq_init.exit_crit_edge ], [ 0, %if.then167.i ], [ 0, %if.end163.i.vega20_ih_irq_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ih.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @vega20_ih_toggle_interrupts(ptr noundef %handle, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call fastcc i32 @vega20_ih_toggle_interrupts(ptr noundef %handle, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vega20_ih_hw_init(ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vega20_ih_is_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega20_ih_wait_for_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega20_ih_soft_reset(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vega20_ih_update_clockgating_state.exit_crit_edge, label %if.then.i

entry.vega20_ih_update_clockgating_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vega20_ih_update_clockgating_state.exit

if.then.i:                                        ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and1.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.then.i.cond.false.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %land.lhs.true4.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true4.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 219
  %call.i = tail call i32 %7(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true4.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.then.i.cond.false.i_crit_edge
  %arrayidx16.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %12 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19.i = add i32 %15, 219
  %call20.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add19.i, i32 noundef 0) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call20.i, %cond.false.i ]
  %and23.i = and i32 %cond.i, 33554431
  %and45.i = select i1 %cmp, i32 0, i32 -33554432
  %or48.i = or i32 %and23.i, %and45.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %or48.i)
  %cmp.not.i = icmp eq i32 %cond.i, %or48.i
  br i1 %cmp.not.i, label %cond.end.i.vega20_ih_update_clockgating_state.exit_crit_edge, label %if.then49.i

cond.end.i.vega20_ih_update_clockgating_state.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vega20_ih_update_clockgating_state.exit

if.then49.i:                                      ; preds = %cond.end.i
  %16 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt.i, align 8
  %and52.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.then49.i.cond.false74.i_crit_edge, label %land.lhs.true54.i

if.then49.i.cond.false74.i_crit_edge:             ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false74.i

land.lhs.true54.i:                                ; preds = %if.then49.i
  %funcs57.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs57.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs57.i, align 4
  %tobool58.not.i = icmp eq ptr %19, null
  br i1 %tobool58.not.i, label %land.lhs.true54.i.cond.false74.i_crit_edge, label %land.lhs.true59.i

land.lhs.true54.i.cond.false74.i_crit_edge:       ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false74.i

land.lhs.true59.i:                                ; preds = %land.lhs.true54.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool63.not.i = icmp eq ptr %21, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i.cond.false74.i_crit_edge, label %cond.true64.i

land.lhs.true59.i.cond.false74.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false74.i

cond.true64.i:                                    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx70.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %22 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx70.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add73.i = add i32 %25, 219
  tail call void %21(ptr noundef %handle, i32 noundef %add73.i, i32 noundef %or48.i, i32 noundef 0, i32 noundef 21) #7
  br label %vega20_ih_update_clockgating_state.exit

cond.false74.i:                                   ; preds = %land.lhs.true59.i.cond.false74.i_crit_edge, %land.lhs.true54.i.cond.false74.i_crit_edge, %if.then49.i.cond.false74.i_crit_edge
  %arrayidx76.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %26 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx76.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add79.i = add i32 %29, 219
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add79.i, i32 noundef %or48.i, i32 noundef 0) #7
  br label %vega20_ih_update_clockgating_state.exit

vega20_ih_update_clockgating_state.exit:          ; preds = %cond.false74.i, %cond.true64.i, %cond.end.i.vega20_ih_update_clockgating_state.exit_crit_edge, %entry.vega20_ih_update_clockgating_state.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vega20_ih_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_get_wptr(ptr noundef %adev, ptr noundef %ih) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ih1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 5
  %cmp = icmp eq ptr %ih1, %ih
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %wptr_cpu = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 9
  %0 = ptrtoint ptr %wptr_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wptr_cpu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.out_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ih_rb_wptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %ih_rb_wptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ih_rb_wptr, align 4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %6, i32 noundef 2) #7
  %and5 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool7.not = icmp eq i32 %and5, 0
  br i1 %tobool7.not, label %if.end3.out_crit_edge, label %if.end9

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %and10 = and i32 %call, -2
  %add = add i32 %and10, 32
  %ptr_mask = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 1
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask, align 4
  %and11 = and i32 %8, %add
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %11 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rptr, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %and10, i32 noundef %12, i32 noundef %and11) #10
  %13 = ptrtoint ptr %rptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and11, ptr %rptr, align 8
  %ih_rb_cntl = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %ih_rb_cntl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ih_rb_cntl, align 4
  %call13 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %15, i32 noundef 2) #7
  %or15 = or i32 %call13, -2147483648
  %16 = ptrtoint ptr %ih_rb_cntl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ih_rb_cntl, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %17, i32 noundef %or15, i32 noundef 2) #7
  br label %out

out:                                              ; preds = %if.end9, %if.end3.out_crit_edge, %if.then.out_crit_edge
  %wptr.0 = phi i32 [ %and10, %if.end9 ], [ %call, %if.end3.out_crit_edge ], [ %4, %if.then.out_crit_edge ]
  %ptr_mask17 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 1
  %18 = ptrtoint ptr %ptr_mask17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ptr_mask17, align 4
  %and18 = and i32 %19, %wptr.0
  ret i32 %and18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ih_decode_iv_helper(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_ih_decode_iv_ts_helper(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vega20_ih_set_rptr(ptr noundef %adev, ptr nocapture noundef readonly %ih) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 3
  %0 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_doorbell, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %2 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rptr, align 8
  %rptr_cpu = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 11
  %4 = ptrtoint ptr %rptr_cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rptr_cpu, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %3, ptr %5, align 4
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 2
  %7 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %doorbell_index, align 8
  %9 = load i32, ptr %rptr, align 8
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %adev, i32 noundef %8, i32 noundef %9) #7
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt, align 8
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end6_crit_edge, label %if.then3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.then
  %ih_rb_rptr.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 14, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %if.then3
  %i.012.i = phi i32 [ 0, %if.then3 ], [ %inc.i, %if.then.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %ih_rb_rptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ih_rb_rptr.i, align 4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %13, i32 noundef 2) #7
  %14 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ih, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %15)
  %cmp2.i = icmp ult i32 %call.i, %15
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.if.end6_crit_edge

for.body.i.if.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true.i:                                  ; preds = %for.body.i
  %16 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %17)
  %cmp3.not.i = icmp eq i32 %call.i, %17
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end6_crit_edge, label %if.then.i

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.i:                                        ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %doorbell_index, align 8
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %adev, i32 noundef %19, i32 noundef %17) #7
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.then.i.if.end6_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ih_rb_rptr = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 14, i32 4
  %20 = ptrtoint ptr %ih_rb_rptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ih_rb_rptr, align 4
  %rptr5 = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 13
  %22 = ptrtoint ptr %rptr5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rptr5, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %21, i32 noundef %23, i32 noundef 0) #7
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then.i.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge, %for.body.i.if.end6_crit_edge, %if.then.if.end6_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_ih_self_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ih1_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 10
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ih2_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb
  %ih2_work.sink = phi ptr [ %ih2_work, %sw.bb2 ], [ %ih1_work, %sw.bb ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i6 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %ih2_work.sink) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ih_ring_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_irq_fini_sw(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vega20_ih_toggle_interrupts(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  %ih = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ih) #7
  %0 = getelementptr inbounds [3 x ptr], ptr %ih, i32 0, i32 1
  %1 = getelementptr inbounds [3 x ptr], ptr %ih, i32 0, i32 2
  %ih1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 5
  %2 = ptrtoint ptr %ih to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ih1, ptr %ih, align 4
  %ih13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 6
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ih13, ptr %0, align 4
  %ih2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ih2, ptr %1, align 4
  %cond.i = zext i1 %enable to i32
  %shl9.i = select i1 %enable, i32 131072, i32 0
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %psp.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x ptr], ptr %ih, i32 0, i32 %i.022
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %ih_rb_cntl.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 14, i32 2
  %9 = ptrtoint ptr %ih_rb_cntl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ih_rb_cntl.i, align 4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %10, i32 noundef 0) #7
  %and.i = and i32 %call.i, -130
  %or.i = or i32 %and.i, %cond.i
  %or4.i = or i32 %or.i, 128
  %cmp.i = icmp eq ptr %ih1, %6
  %and6.i = and i32 %or4.i, -131073
  %or11.i = or i32 %and6.i, %shl9.i
  %tmp.0.i = select i1 %cmp.i, i32 %or11.i, i32 %or4.i
  %11 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %virt.i, align 8
  %and12.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then
  %psp_reg_id.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 14, i32 8
  %13 = ptrtoint ptr %psp_reg_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %psp_reg_id.i, align 4
  %call15.i = tail call i32 @psp_reg_program(ptr noundef %psp.i, i32 noundef %14, i32 noundef %tmp.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then14.i.if.end20.i_crit_edge, label %vega20_ih_toggle_ring_interrupts.exit

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %ih_rb_cntl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ih_rb_cntl.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %16, i32 noundef %tmp.0.i, i32 noundef 0) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then14.i.if.end20.i_crit_edge
  br i1 %enable, label %if.then22.i, label %if.else23.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %enabled.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 12
  %17 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %enabled.i, align 4
  br label %for.inc

if.else23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %ih_rb_rptr.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 14, i32 4
  %18 = ptrtoint ptr %ih_rb_rptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ih_rb_rptr.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %19, i32 noundef 0, i32 noundef 0) #7
  %ih_rb_wptr.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 14, i32 3
  %20 = ptrtoint ptr %ih_rb_wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ih_rb_wptr.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %21, i32 noundef 0, i32 noundef 0) #7
  %enabled24.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 12
  %22 = ptrtoint ptr %enabled24.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %enabled24.i, align 4
  %rptr.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 13
  %23 = ptrtoint ptr %rptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rptr.i, align 8
  br label %for.inc

vega20_ih_toggle_ring_interrupts.exit:            ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6) #10
  br label %cleanup

for.inc:                                          ; preds = %if.else23.i, %if.then22.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %vega20_ih_toggle_ring_interrupts.exit
  %retval.0 = phi i32 [ -110, %vega20_ih_toggle_ring_interrupts.exit ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ih) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_reg_program(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c", i32 672, i32 10}
!2 = !{ptr @vega20_ih_ip_funcs, !3, !"vega20_ih_ip_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c", i32 671, i32 27}
!4 = !{ptr @vega20_ih_ip_block, !5, !"vega20_ih_ip_block", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c", i32 700, i32 38}
!6 = !{ptr @vega20_ih_funcs, !7, !"vega20_ih_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c", i32 688, i32 37}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c", i32 412, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vega20_ih_get_wptr._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @vega20_ih_get_wptr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @vega20_ih_self_irq_funcs, !17, !"vega20_ih_self_irq_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c", i32 502, i32 42}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c", i32 117, i32 4}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vega20_ih_toggle_ring_interrupts._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @vega20_ih_toggle_ring_interrupts._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/vega20_ih.c", i32 232, i32 4}
!26 = !{ptr @vega20_ih_enable_ring._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vega20_ih_enable_ring._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{i32 0, i32 33}
