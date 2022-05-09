; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.mc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_bo_va_mapping = type { ptr, %struct.list_head, %struct.rb_node, i64, i64, i64, i64, i64 }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }
%struct.kfd_vm_fault_info = type { i64, i32, i32, i32, i8, i8, i8, i8 }

@__UNIQUE_ID_firmware343 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/tonga_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/polaris11_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/polaris10_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/polaris12_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/polaris12_32_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/polaris11_k_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/polaris10_k_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/polaris12_k_mc.bin\00", section ".modinfo", align 1
@gmc_v8_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @gmc_v8_0_early_init, ptr @gmc_v8_0_late_init, ptr @gmc_v8_0_sw_init, ptr @gmc_v8_0_sw_fini, ptr null, ptr @gmc_v8_0_hw_init, ptr @gmc_v8_0_hw_fini, ptr null, ptr @gmc_v8_0_suspend, ptr @gmc_v8_0_resume, ptr @gmc_v8_0_is_idle, ptr @gmc_v8_0_wait_for_idle, ptr @gmc_v8_0_check_soft_reset, ptr @gmc_v8_0_pre_soft_reset, ptr @gmc_v8_0_soft_reset, ptr @gmc_v8_0_post_soft_reset, ptr @gmc_v8_0_set_clockgating_state, ptr @gmc_v8_0_set_powergating_state, ptr @gmc_v8_0_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@gmc_v8_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 1, i32 8, i32 0, i32 0, ptr @gmc_v8_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gmc_v8_1_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 1, i32 8, i32 1, i32 0, ptr @gmc_v8_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@gmc_v8_5_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 1, i32 8, i32 5, i32 0, ptr @gmc_v8_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gmc_v8_0\00", [23 x i8] zeroinitializer }, align 32
@gmc_v8_0_gmc_funcs = internal constant { %struct.amdgpu_gmc_funcs, [60 x i8] } { %struct.amdgpu_gmc_funcs { ptr @gmc_v8_0_flush_gpu_tlb, ptr @gmc_v8_0_flush_gpu_tlb_pasid, ptr @gmc_v8_0_emit_flush_gpu_tlb, ptr @gmc_v8_0_emit_pasid_mapping, ptr @gmc_v8_0_set_prt, ptr null, ptr @gmc_v8_0_get_vm_pde, ptr @gmc_v8_0_get_vm_pte, ptr @gmc_v8_0_get_vbios_fb_size }, [60 x i8] zeroinitializer }, align 32
@gmc_v8_0_set_prt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 780, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Disabling VM faults because of PRT request!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v8_0_set_prt\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gmc_v8_0_set_prt._entry_ptr = internal global ptr @gmc_v8_0_set_prt._entry, section ".printk_index", align 4
@gmc_v8_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gmc_v8_0_vm_fault_interrupt_state, ptr @gmc_v8_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@gmc_v8_0_process_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1447, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: GPU fault detected: %d 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gmc_v8_0_process_interrupt\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gmc_v8_0_process_interrupt._entry_ptr = internal global ptr @gmc_v8_0_process_interrupt._entry, section ".printk_index", align 4
@gmc_v8_0_process_interrupt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 1448, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu:  Can't decode VM fault info here on SRIOV VF\0A\00", [42 x i8] zeroinitializer }, align 32
@gmc_v8_0_process_interrupt._entry_ptr.11 = internal global ptr @gmc_v8_0_process_interrupt._entry.9, section ".printk_index", align 4
@amdgpu_vm_fault_stop = external dso_local local_unnamed_addr global i32, align 4
@gmc_v8_0_process_interrupt._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.3, i32 1472, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"amdgpu: GPU fault detected: %d 0x%08x for process %s pid %d thread %s pid %d\0A\00", [50 x i8] zeroinitializer }, align 32
@gmc_v8_0_process_interrupt._entry_ptr.14 = internal global ptr @gmc_v8_0_process_interrupt._entry.12, section ".printk_index", align 4
@gmc_v8_0_process_interrupt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.3, i32 1474, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu:   VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@gmc_v8_0_process_interrupt._entry_ptr.17 = internal global ptr @gmc_v8_0_process_interrupt._entry.15, section ".printk_index", align 4
@gmc_v8_0_process_interrupt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.3, i32 1476, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu:   VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@gmc_v8_0_process_interrupt._entry_ptr.20 = internal global ptr @gmc_v8_0_process_interrupt._entry.18, section ".printk_index", align 4
@gmc_v8_0_vm_decode_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1032, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"amdgpu: VM fault (0x%02x, vmid %d, pasid %d) at page %u, %s from '%s' (0x%08x) (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gmc_v8_0_vm_decode_fault\00", [39 x i8] zeroinitializer }, align 32
@gmc_v8_0_vm_decode_fault._entry_ptr = internal global ptr @gmc_v8_0_vm_decode_fault._entry, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@gmc_v8_0_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014amdgpu: No suitable DMA available\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v8_0_sw_init\00", [47 x i8] zeroinitializer }, align 32
@gmc_v8_0_sw_init._entry_ptr = internal global ptr @gmc_v8_0_sw_init._entry, section ".printk_index", align 4
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load mc firmware!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tonga\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"polaris11_k\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"polaris11\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"polaris10_k\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"polaris10\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"polaris12_k\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"polaris12_32\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"polaris12\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_mc.bin\00", [47 x i8] zeroinitializer }, align 32
@gmc_v8_0_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013amdgpu: mc: Failed to load firmware \22%s\22\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gmc_v8_0_init_microcode\00", [40 x i8] zeroinitializer }, align 32
@gmc_v8_0_init_microcode._entry_ptr = internal global ptr @gmc_v8_0_init_microcode._entry, section ".printk_index", align 4
@gmc_v8_0_mc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016[drm] Probable bad vram size: 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmc_v8_0_mc_init\00", [47 x i8] zeroinitializer }, align 32
@gmc_v8_0_mc_init._entry_ptr = internal global ptr @gmc_v8_0_mc_init._entry, section ".printk_index", align 4
@amdgpu_gart_size = external dso_local local_unnamed_addr global i32, align 4
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"R600 PCIE GART already initialized\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load MC firmware!\0A\00", [35 x i8] zeroinitializer }, align 32
@fiji_mgcg_cgcg_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2090, i32 -1, i32 260], [20 x i8] zeroinitializer }, align 32
@golden_settings_fiji_a10 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1324, i32 268435455, i32 268435455, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [48 x i8] zeroinitializer }, align 32
@tonga_mgcg_cgcg_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2090, i32 -1, i32 260], [20 x i8] zeroinitializer }, align 32
@golden_settings_tonga_a11 = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 2529, i32 3, i32 0, i32 2120, i32 127, i32 40, i32 2165, i32 32694, i32 2449, i32 1324, i32 268435455, i32 268435455, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [44 x i8] zeroinitializer }, align 32
@golden_settings_polaris11_a11 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1324, i32 268435455, i32 268435455, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [48 x i8] zeroinitializer }, align 32
@golden_settings_polaris10_a11 = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 2529, i32 3, i32 0, i32 1324, i32 268435455, i32 268435455, i32 1325, i32 268435455, i32 268435455, i32 1326, i32 268435455, i32 268435455, i32 1327, i32 268435455, i32 268435455], [36 x i8] zeroinitializer }, align 32
@cz_mgcg_cgcg_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2090, i32 -1, i32 260], [20 x i8] zeroinitializer }, align 32
@stoney_mgcg_cgcg_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3284, i32 -1, i32 786944, i32 2090, i32 -1, i32 260], [40 x i8] zeroinitializer }, align 32
@golden_settings_stoney_common = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2144, i32 6, i32 4, i32 2055, i32 15728640, i32 6291456], [40 x i8] zeroinitializer }, align 32
@gmc_v8_0_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Wait for MC idle timedout !\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gmc_v8_0_mc_program\00", [44 x i8] zeroinitializer }, align 32
@gmc_v8_0_mc_program._entry_ptr = internal global ptr @gmc_v8_0_mc_program._entry, section ".printk_index", align 4
@gmc_v8_0_mc_program._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@gmc_v8_0_mc_program._entry_ptr.47 = internal global ptr @gmc_v8_0_mc_program._entry.46, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gmc_v8_0_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 844, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: No VRAM object for PCIE GART.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gmc_v8_0_gart_enable\00", [43 x i8] zeroinitializer }, align 32
@gmc_v8_0_gart_enable._entry_ptr = internal global ptr @gmc_v8_0_gart_enable._entry, section ".printk_index", align 4
@gmc_v8_0_gart_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@gmc_v8_0_gart_enable._entry_ptr.52 = internal global ptr @gmc_v8_0_gart_enable._entry.50, section ".printk_index", align 4
@gmc_v8_0_pre_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 1349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Wait for GMC idle timed out !\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gmc_v8_0_pre_soft_reset\00", [40 x i8] zeroinitializer }, align 32
@gmc_v8_0_pre_soft_reset._entry_ptr = internal global ptr @gmc_v8_0_pre_soft_reset._entry, section ".printk_index", align 4
@gmc_v8_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1369, ptr @.str.57, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gmc_v8_0_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gmc_v8_0_soft_reset._entry_ptr = internal global ptr @gmc_v8_0_soft_reset._entry, section ".printk_index", align 4
@switch.table.gmc_v8_0_sw_init = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], [48 x i8] zeroinitializer }, align 32
@switch.table.gmc_v8_0_sw_init.58 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.30, ptr @.str.31, ptr @.str.31, ptr @.str.30], [40 x i8] zeroinitializer }, align 32
@switch.table.gmc_v8_0_sw_init.59 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 8, i32 3, i32 6, i32 10, i32 12, i32 16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 26607, i64 26623]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 207, i64 239, i64 255]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 16, i64 27009, i64 27015]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 16]
@__sancov_gen_cov_switch_values.64 = internal global [10 x i64] [i64 8, i64 32, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 11, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"gmc_v8_0_ip_funcs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1712, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"gmc_v8_0_ip_block\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1760, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"gmc_v8_1_ip_block\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1769, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"gmc_v8_5_ip_block\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1778, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1713, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"gmc_v8_0_gmc_funcs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1733, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 780, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"gmc_v8_0_irq_funcs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1744, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1446, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1448, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1470, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1473, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1475, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1028, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1147, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1154, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 227, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 231, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 236, i32 16 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 238, i32 16 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 242, i32 16 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 244, i32 16 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 248, i32 16 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 253, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 255, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 266, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 274, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 568, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 965, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1228, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"fiji_mgcg_cgcg_init\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 91, i32 18 }
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"golden_settings_fiji_a10\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 83, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant [21 x i8] c"tonga_mgcg_cgcg_init\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 78, i32 18 }
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"golden_settings_tonga_a11\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 67, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant [30 x i8] c"golden_settings_polaris11_a11\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 96, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant [30 x i8] c"golden_settings_polaris10_a11\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 104, i32 18 }
@___asan_gen_.241 = private unnamed_addr constant [18 x i8] c"cz_mgcg_cgcg_init\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 113, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant [22 x i8] c"stoney_mgcg_cgcg_init\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 118, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant [30 x i8] c"golden_settings_stoney_common\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 124, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 458, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 493, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 844, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 953, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1349, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1369, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [30 x i8] c"switch.table.gmc_v8_0_sw_init\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [33 x i8] c"switch.table.gmc_v8_0_sw_init.58\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [33 x i8] c"switch.table.gmc_v8_0_sw_init.59\00", align 1
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @gmc_v8_0_gart_enable._entry, ptr @gmc_v8_0_gart_enable._entry.50, ptr @gmc_v8_0_gart_enable._entry_ptr, ptr @gmc_v8_0_gart_enable._entry_ptr.52, ptr @gmc_v8_0_init_microcode._entry, ptr @gmc_v8_0_init_microcode._entry_ptr, ptr @gmc_v8_0_mc_init._entry, ptr @gmc_v8_0_mc_init._entry_ptr, ptr @gmc_v8_0_mc_program._entry, ptr @gmc_v8_0_mc_program._entry.46, ptr @gmc_v8_0_mc_program._entry_ptr, ptr @gmc_v8_0_mc_program._entry_ptr.47, ptr @gmc_v8_0_pre_soft_reset._entry, ptr @gmc_v8_0_pre_soft_reset._entry_ptr, ptr @gmc_v8_0_process_interrupt._entry, ptr @gmc_v8_0_process_interrupt._entry.12, ptr @gmc_v8_0_process_interrupt._entry.15, ptr @gmc_v8_0_process_interrupt._entry.18, ptr @gmc_v8_0_process_interrupt._entry.9, ptr @gmc_v8_0_process_interrupt._entry_ptr, ptr @gmc_v8_0_process_interrupt._entry_ptr.11, ptr @gmc_v8_0_process_interrupt._entry_ptr.14, ptr @gmc_v8_0_process_interrupt._entry_ptr.17, ptr @gmc_v8_0_process_interrupt._entry_ptr.20, ptr @gmc_v8_0_set_prt._entry, ptr @gmc_v8_0_set_prt._entry_ptr, ptr @gmc_v8_0_soft_reset._entry, ptr @gmc_v8_0_soft_reset._entry_ptr, ptr @gmc_v8_0_sw_init._entry, ptr @gmc_v8_0_sw_init._entry_ptr, ptr @gmc_v8_0_vm_decode_fault._entry, ptr @gmc_v8_0_vm_decode_fault._entry_ptr, ptr @gmc_v8_0_ip_funcs, ptr @gmc_v8_0_ip_block, ptr @gmc_v8_1_ip_block, ptr @gmc_v8_5_ip_block, ptr @.str, ptr @gmc_v8_0_gmc_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gmc_v8_0_irq_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @fiji_mgcg_cgcg_init, ptr @golden_settings_fiji_a10, ptr @tonga_mgcg_cgcg_init, ptr @golden_settings_tonga_a11, ptr @golden_settings_polaris11_a11, ptr @golden_settings_polaris10_a11, ptr @cz_mgcg_cgcg_init, ptr @stoney_mgcg_cgcg_init, ptr @golden_settings_stoney_common, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @switch.table.gmc_v8_0_sw_init, ptr @switch.table.gmc_v8_0_sw_init.58, ptr @switch.table.gmc_v8_0_sw_init.59], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_1_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_5_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_gmc_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_set_prt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_process_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_process_interrupt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_process_interrupt._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_process_interrupt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_process_interrupt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_vm_decode_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_mc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_mgcg_cgcg_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_fiji_a10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_mgcg_cgcg_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_tonga_a11 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_polaris11_a11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_polaris10_a11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_mgcg_cgcg_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stoney_mgcg_cgcg_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_stoney_common to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_mc_program._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_gart_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_pre_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v8_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v8_0_sw_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v8_0_sw_init.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gmc_v8_0_sw_init.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @gmc_v8_0_early_init(ptr nocapture noundef writeonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gmc_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 38
  %0 = ptrtoint ptr %gmc_funcs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @gmc_v8_0_gmc_funcs, ptr %gmc_funcs.i, align 4
  %vm_fault.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %1 = ptrtoint ptr %vm_fault.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %vm_fault.i, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20, i32 2
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gmc_v8_0_irq_funcs, ptr %funcs.i, align 8
  %shared_aperture_start = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 26
  %3 = ptrtoint ptr %shared_aperture_start to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 2305843009213693952, ptr %shared_aperture_start, align 8
  %shared_aperture_end = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 27
  %4 = ptrtoint ptr %shared_aperture_end to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 2305843013508661247, ptr %shared_aperture_end, align 8
  %private_aperture_start = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 28
  %5 = ptrtoint ptr %private_aperture_start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2305843013508661248, ptr %private_aperture_start, align 8
  %private_aperture_end = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 29
  %6 = ptrtoint ptr %private_aperture_end to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2305843017803628543, ptr %private_aperture_end, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_late_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %0 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call = tail call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 67
  %0 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_vmhubs, align 8
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else:                                          ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %3 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %switch.selectcmp.case1 = icmp eq i32 %4, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %4)
  %switch.selectcmp.case2 = icmp eq i32 %4, 18
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %5 = select i1 %switch.selectcmp, i32 2673, i32 2688
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %5, i32 noundef 0) #10
  %6 = add i32 %call5, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %6)
  %7 = icmp ult i32 %6, -1073741824
  br i1 %7, label %switch.lookup, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %8 = lshr i32 %6, 28
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.gmc_v8_0_sw_init, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end10

if.end10:                                         ; preds = %switch.lookup, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %retval.0.i.sink = phi i32 [ 0, %entry.if.end10_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.else.if.end10_crit_edge ]
  %vram_type9 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 21
  %10 = ptrtoint ptr %vram_type9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.sink, ptr %vram_type9, align 4
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call12 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 146, ptr noundef %vm_fault) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call18 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 147, ptr noundef %vm_fault) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  tail call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 64, i32 noundef 9, i32 noundef 1, i32 noundef 40) #10
  %mc_mask = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 17
  %11 = ptrtoint ptr %mc_mask to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1099511627775, ptr %mc_mask, align 8
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %13, i64 noundef 1099511627775) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %13, i64 noundef 1099511627775) #10
  %call29 = tail call zeroext i1 @drm_need_swiotlb(i32 noundef 40) #10
  %need_swiotlb = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 14
  %frombool = zext i1 %call29 to i8
  %14 = ptrtoint ptr %need_swiotlb to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %need_swiotlb, align 1
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #10
  %15 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #10
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %16 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asic_type.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.body.i [
    i32 11, label %if.end28.sw.epilog.i_crit_edge
    i32 16, label %sw.bb1.i110
    i32 15, label %sw.bb48.i
    i32 17, label %sw.bb69.i
    i32 12, label %if.end28.if.end33_crit_edge
    i32 13, label %if.end28.if.end33_crit_edge136
    i32 14, label %if.end28.if.end33_crit_edge137
    i32 18, label %if.end28.if.end33_crit_edge138
  ]

if.end28.if.end33_crit_edge138:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end28.if.end33_crit_edge137:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end28.if.end33_crit_edge136:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end28.sw.epilog.i_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb1.i110:                                      ; preds = %if.end28
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device.i, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %22, label %sw.bb1.i110.if.else.i_crit_edge [
    i16 26607, label %land.lhs.true.i
    i16 26623, label %land.lhs.true18.i
  ]

sw.bb1.i110.if.else.i_crit_edge:                  ; preds = %sw.bb1.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb1.i110
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 12
  %24 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %revision.i, align 4
  %switch.tableidx = add i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %26 = icmp ult i8 %switch.tableidx, 6
  br i1 %26, label %switch.lookup126, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true18.i:                                ; preds = %sw.bb1.i110
  %revision20.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 12
  %27 = ptrtoint ptr %revision20.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %revision20.i, align 4
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %28, label %land.lhs.true18.i.if.else.i_crit_edge [
    i8 -49, label %land.lhs.true18.i.sw.epilog.i_crit_edge
    i8 -17, label %land.lhs.true18.i.sw.epilog.i_crit_edge139
    i8 -1, label %land.lhs.true18.i.sw.epilog.i_crit_edge140
  ]

land.lhs.true18.i.sw.epilog.i_crit_edge140:       ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true18.i.sw.epilog.i_crit_edge139:       ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true18.i.sw.epilog.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true18.i.if.else.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true18.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %sw.bb1.i110.if.else.i_crit_edge
  br label %sw.epilog.i

sw.bb48.i:                                        ; preds = %if.end28
  %pdev49.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %30 = ptrtoint ptr %pdev49.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev49.i, align 4
  %device50.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %device50.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %device50.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26591, i16 %33)
  %cmp52.i = icmp eq i16 %33, 26591
  br i1 %cmp52.i, label %land.lhs.true54.i, label %sw.bb48.i.sw.epilog.i_crit_edge

sw.bb48.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true54.i:                                ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #12
  %revision56.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 12
  %34 = ptrtoint ptr %revision56.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %revision56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %35)
  %switch.selectcmp.case1.i = icmp eq i8 %35, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %35)
  %switch.selectcmp.case2.i = icmp eq i8 %35, -9
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %36 = select i1 %switch.selectcmp.i, ptr @.str.32, ptr @.str.33
  br label %sw.epilog.i

sw.bb69.i:                                        ; preds = %if.end28
  %pdev70.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %37 = ptrtoint ptr %pdev70.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev70.i, align 4
  %device71.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %device71.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device71.i, align 2
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %40, label %sw.bb69.i.if.else124.i_crit_edge [
    i16 27015, label %land.lhs.true75.i
    i16 27009, label %land.lhs.true105.i
  ]

sw.bb69.i.if.else124.i_crit_edge:                 ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else124.i

land.lhs.true75.i:                                ; preds = %sw.bb69.i
  %revision77.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 12
  %42 = ptrtoint ptr %revision77.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %revision77.i, align 4
  %switch.tableidx130 = add i8 %43, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx130)
  %44 = icmp ult i8 %switch.tableidx130, 8
  br i1 %44, label %switch.hole_check, label %land.lhs.true75.i.if.else124.i_crit_edge

land.lhs.true75.i.if.else124.i_crit_edge:         ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else124.i

land.lhs.true105.i:                               ; preds = %sw.bb69.i
  %revision107.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 12
  %45 = ptrtoint ptr %revision107.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %revision107.i, align 4
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %46, label %land.lhs.true105.i.if.else124.i_crit_edge [
    i8 0, label %land.lhs.true105.i.sw.epilog.i_crit_edge
    i8 1, label %land.lhs.true105.i.sw.epilog.i_crit_edge141
    i8 16, label %land.lhs.true105.i.sw.epilog.i_crit_edge142
  ]

land.lhs.true105.i.sw.epilog.i_crit_edge142:      ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true105.i.sw.epilog.i_crit_edge141:      ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true105.i.sw.epilog.i_crit_edge:         ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

land.lhs.true105.i.if.else124.i_crit_edge:        ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else124.i

if.else124.i:                                     ; preds = %switch.hole_check.if.else124.i_crit_edge, %land.lhs.true105.i.if.else124.i_crit_edge, %land.lhs.true75.i.if.else124.i_crit_edge, %sw.bb69.i.if.else124.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2705, i32 noundef 159, i32 noundef 0) #10
  %call.i111 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2706, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 95738944, i32 %call.i111)
  %cmp125.i = icmp eq i32 %call.i111, 95738944
  %.str.35..str.36.i = select i1 %cmp125.i, ptr @.str.35, ptr @.str.36
  br label %sw.epilog.i

do.body.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #10, !srcloc !163
  unreachable

switch.lookup126:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = sext i8 %switch.tableidx to i32
  %switch.gep127 = getelementptr inbounds [6 x ptr], ptr @switch.table.gmc_v8_0_sw_init.58, i32 0, i32 %48
  %49 = ptrtoint ptr %switch.gep127 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load128 = load ptr, ptr %switch.gep127, align 4
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %land.lhs.true75.i
  %switch.shifted = lshr i8 -117, %switch.tableidx130
  %50 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %switch.lobit.not = icmp eq i8 %50, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.else124.i_crit_edge, label %switch.hole_check.sw.epilog.i_crit_edge

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

switch.hole_check.if.else124.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else124.i

sw.epilog.i:                                      ; preds = %switch.hole_check.sw.epilog.i_crit_edge, %switch.lookup126, %if.else124.i, %land.lhs.true105.i.sw.epilog.i_crit_edge, %land.lhs.true105.i.sw.epilog.i_crit_edge141, %land.lhs.true105.i.sw.epilog.i_crit_edge142, %land.lhs.true54.i, %sw.bb48.i.sw.epilog.i_crit_edge, %if.else.i, %land.lhs.true18.i.sw.epilog.i_crit_edge, %land.lhs.true18.i.sw.epilog.i_crit_edge139, %land.lhs.true18.i.sw.epilog.i_crit_edge140, %if.end28.sw.epilog.i_crit_edge
  %chip_name.0.i = phi ptr [ @.str.31, %if.else.i ], [ @.str.29, %if.end28.sw.epilog.i_crit_edge ], [ @.str.30, %land.lhs.true18.i.sw.epilog.i_crit_edge ], [ @.str.30, %land.lhs.true18.i.sw.epilog.i_crit_edge139 ], [ @.str.30, %land.lhs.true18.i.sw.epilog.i_crit_edge140 ], [ @.str.34, %land.lhs.true105.i.sw.epilog.i_crit_edge ], [ @.str.34, %land.lhs.true105.i.sw.epilog.i_crit_edge141 ], [ @.str.34, %land.lhs.true105.i.sw.epilog.i_crit_edge142 ], [ %.str.35..str.36.i, %if.else124.i ], [ %36, %land.lhs.true54.i ], [ @.str.33, %sw.bb48.i.sw.epilog.i_crit_edge ], [ %switch.load128, %switch.lookup126 ], [ @.str.34, %switch.hole_check.sw.epilog.i_crit_edge ]
  %call135.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.37, ptr noundef nonnull %chip_name.0.i) #10
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %51 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %handle, align 8
  %call137.i = call i32 @request_firmware(ptr noundef %fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool.not.i, label %out.i, label %sw.epilog.i.if.then32_crit_edge

sw.epilog.i.if.then32_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

out.i:                                            ; preds = %sw.epilog.i
  %53 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i, align 8
  %call142.i = call i32 @amdgpu_ucode_validate(ptr noundef %54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %out.i.if.end33_crit_edge, label %out.i.if.then32_crit_edge

out.i.if.then32_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

out.i.if.end33_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then32:                                        ; preds = %out.i.if.then32_crit_edge, %sw.epilog.i.if.then32_crit_edge
  %err.0191.i = phi i32 [ %call142.i, %out.i.if.then32_crit_edge ], [ %call137.i, %sw.epilog.i.if.then32_crit_edge ]
  %call149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %fw_name.i) #13
  %55 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw.i, align 8
  call void @release_firmware(ptr noundef %56) #10
  %57 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %fw.i, align 8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end33:                                         ; preds = %out.i.if.end33_crit_edge, %if.end28.if.end33_crit_edge, %if.end28.if.end33_crit_edge136, %if.end28.if.end33_crit_edge137, %if.end28.if.end33_crit_edge138
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #10
  %call.i113 = call i32 @amdgpu_atombios_get_vram_width(ptr noundef %handle) #10
  %gmc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62
  %vram_width.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 14
  %58 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.i113, ptr %vram_width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %if.then.i115, label %if.end33.if.end19.i_crit_edge

if.end33.if.end19.i_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then.i115:                                     ; preds = %if.end33
  %call3.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2520, i32 noundef 0) #10
  %59 = and i32 %call3.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool4.not.i = icmp eq i32 %59, 0
  %..i = select i1 %tobool4.not.i, i32 32, i32 64
  %call6.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2049, i32 noundef 0) #10
  %and7.i = lshr i32 %call6.i, 12
  %shr8.i = and i32 %and7.i, 15
  %switch.tableidx133 = add nsw i32 %shr8.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx133)
  %60 = icmp ult i32 %switch.tableidx133, 8
  br i1 %60, label %switch.lookup132, label %if.then.i115.sw.epilog.i116_crit_edge

if.then.i115.sw.epilog.i116_crit_edge:            ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i116

switch.lookup132:                                 ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep134 = getelementptr inbounds [8 x i32], ptr @switch.table.gmc_v8_0_sw_init.59, i32 0, i32 %switch.tableidx133
  %61 = ptrtoint ptr %switch.gep134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load135 = load i32, ptr %switch.gep134, align 4
  br label %sw.epilog.i116

sw.epilog.i116:                                   ; preds = %switch.lookup132, %if.then.i115.sw.epilog.i116_crit_edge
  %numchan.0.i = phi i32 [ 1, %if.then.i115.sw.epilog.i116_crit_edge ], [ %switch.load135, %switch.lookup132 ]
  %mul.i = mul nuw nsw i32 %numchan.0.i, %..i
  %62 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul.i, ptr %vram_width.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %sw.epilog.i116, %if.end33.if.end19.i_crit_edge
  %call20.i = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 5386, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call20.i)
  %tobool22.not.i = icmp ult i32 %call20.i, 65536
  br i1 %tobool22.not.i, label %if.end19.i.if.end31.i_crit_edge, label %do.end.i

if.end19.i.if.end31.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

do.end.i:                                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call20.i) #13
  %and26.i = and i32 %call20.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %spec.select.i = select i1 %tobool27.not.i, i32 %call20.i, i32 %and26.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end.i, %if.end19.i.if.end31.i_crit_edge
  %tmp.0.i = phi i32 [ %call20.i, %if.end19.i.if.end31.i_crit_edge ], [ %spec.select.i, %do.end.i ]
  %conv.i = zext i32 %tmp.0.i to i64
  %mul33.i = shl nuw nsw i64 %conv.i, 20
  %mc_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 2
  %63 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %mul33.i, ptr %mc_vram_size.i, align 8
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 15
  %64 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %mul33.i, ptr %real_vram_size.i, align 8
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags, align 8
  %and38.i = and i32 %66, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end31.i.if.end45.i_crit_edge

if.end31.i.if.end45.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then40.i:                                      ; preds = %if.end31.i
  %call41.i = call i32 @amdgpu_device_resize_fb_bar(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then40.i.if.end45.i_crit_edge, label %if.then40.i.cleanup_crit_edge

if.then40.i.cleanup_crit_edge:                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40.i.if.end45.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then40.i.if.end45.i_crit_edge, %if.end31.i.if.end45.i_crit_edge
  %pdev.i117 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %67 = ptrtoint ptr %pdev.i117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev.i117, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 47
  %69 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %resource.i, align 8
  %aper_base.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 1
  %71 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %aper_base.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 47, i32 0, i32 1
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i118 = icmp eq i32 %73, 0
  br i1 %cmp.i118, label %if.end45.i.cond.end.i_crit_edge, label %cond.false.i

if.end45.i.cond.end.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %73, 1
  %add.i = sub i32 %sub.i, %75
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end45.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end45.i.cond.end.i_crit_edge ]
  %76 = ptrtoint ptr %gmc.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cond.i, ptr %gmc.i, align 8
  %conv62.i = zext i32 %cond.i to i64
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 3
  %77 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %real_vram_size.i, align 8
  %79 = call i64 @llvm.umin.i64(i64 %78, i64 %conv62.i) #10
  %80 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %visible_vram_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_gart_size to i32))
  %81 = load i32, ptr @amdgpu_gart_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp76.i = icmp eq i32 %81, -1
  br i1 %cmp76.i, label %if.then78.i, label %if.else86.i

if.then78.i:                                      ; preds = %cond.end.i
  %82 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %asic_type.i, align 8
  %.off.i = add i32 %83, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  %gart_size84.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  br i1 %switch.i, label %sw.bb82.i, label %sw.default80.i

sw.default80.i:                                   ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %gart_size84.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 268435456, ptr %gart_size84.i, align 8
  br label %if.end90.i

sw.bb82.i:                                        ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %gart_size84.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 1073741824, ptr %gart_size84.i, align 8
  br label %if.end90.i

if.else86.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv87.i = sext i32 %81 to i64
  %shl.i = shl nsw i64 %conv87.i, 20
  %gart_size89.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %86 = ptrtoint ptr %gart_size89.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %shl.i, ptr %gart_size89.i, align 8
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.else86.i, %sw.bb82.i, %sw.default80.i
  %smu_prv_buffer_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 21
  %87 = ptrtoint ptr %smu_prv_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %smu_prv_buffer_size.i, align 4
  %conv91.i = zext i32 %88 to i64
  %gart_size93.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %89 = ptrtoint ptr %gart_size93.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %gart_size93.i, align 8
  %add94.i = add i64 %90, %conv91.i
  store i64 %add94.i, ptr %gart_size93.i, align 8
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %91 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %virt.i.i, align 8
  %and.i.i = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end90.i.if.end37_crit_edge

if.end90.i.if.end37_crit_edge:                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then.i.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i120 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2057, i32 noundef 0) #10
  %and1.i.i = and i32 %call.i.i120, 65535
  %conv.i.i = zext i32 %and1.i.i to i64
  %phi.bo.i.i = shl nuw nsw i64 %conv.i.i, 24
  br label %if.end37

if.end37:                                         ; preds = %if.then.i.i, %if.end90.i.if.end37_crit_edge
  %base.0.i.i = phi i64 [ 0, %if.end90.i.if.end37_crit_edge ], [ %phi.bo.i.i, %if.then.i.i ]
  call void @amdgpu_gmc_vram_location(ptr noundef %handle, ptr noundef %gmc.i, i64 noundef %base.0.i.i) #10
  call void @amdgpu_gmc_gart_location(ptr noundef %handle, ptr noundef %gmc.i) #10
  call void @amdgpu_gmc_get_vbios_allocations(ptr noundef %handle) #10
  %call38 = call i32 @amdgpu_bo_init(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = call fastcc i32 @gmc_v8_0_gart_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %first_kfd_vmid = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 1
  %93 = ptrtoint ptr %first_kfd_vmid to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 8, ptr %first_kfd_vmid, align 8
  call void @amdgpu_vm_manager_init(ptr noundef %handle) #10
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags, align 8
  %and47 = and i32 %95, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.if.end56_crit_edge, label %if.then49

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2074, i32 noundef 0) #10
  %conv = zext i32 %call51 to i64
  %shl = shl nuw nsw i64 %conv, 22
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end45.if.end56_crit_edge
  %shl.sink = phi i64 [ %shl, %if.then49 ], [ 0, %if.end45.if.end56_crit_edge ]
  %96 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 10
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %shl.sink, ptr %96, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3264, i32 noundef 24) #14
  %vm_fault_info = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 32
  %99 = ptrtoint ptr %vm_fault_info to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i, ptr %vm_fault_info, align 8
  %tobool61.not = icmp eq ptr %call7.i, null
  br i1 %tobool61.not, label %if.end56.cleanup_crit_edge, label %if.end63

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %vm_fault_info_updated = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 33
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %vm_fault_info_updated, i32 noundef 4) #10
  %100 = ptrtoint ptr %vm_fault_info_updated to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 0, ptr %vm_fault_info_updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end56.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then40.i.cleanup_crit_edge, %if.then32, %do.end, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.0191.i, %if.then32 ], [ 0, %if.end63 ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call18, %if.end15.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ -12, %if.end56.cleanup_crit_edge ], [ %call41.i, %if.then40.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_gem_force_release(ptr noundef %handle) #10
  tail call void @amdgpu_vm_manager_fini(ptr noundef %handle) #10
  %vm_fault_info = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 32
  %0 = ptrtoint ptr %vm_fault_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_fault_info, align 8
  tail call void @kfree(ptr noundef %1) #10
  tail call void @amdgpu_gart_table_vram_free(ptr noundef %handle) #10
  tail call void @amdgpu_bo_fini(ptr noundef %handle) #10
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %3) #10
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fw, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %1, label %entry.for.body.i.preheader_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %sw.bb1.i
    i32 16, label %entry.sw.bb2.i_crit_edge
    i32 17, label %entry.sw.bb2.i_crit_edge89
    i32 18, label %entry.sw.bb2.i_crit_edge90
    i32 15, label %sw.bb3.i
    i32 13, label %sw.bb4.i
    i32 14, label %sw.bb5.i
  ]

entry.sw.bb2.i_crit_edge90:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge89:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @fiji_mgcg_cgcg_init, i32 noundef 3) #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_fiji_a10, i32 noundef 12) #10
  br label %for.body.i.preheader

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @tonga_mgcg_cgcg_init, i32 noundef 3) #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_tonga_a11, i32 noundef 21) #10
  br label %for.body.i.preheader

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge89, %entry.sw.bb2.i_crit_edge90
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_polaris11_a11, i32 noundef 12) #10
  br label %for.body.i.preheader

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_polaris10_a11, i32 noundef 15) #10
  br label %for.body.i.preheader

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @cz_mgcg_cgcg_init, i32 noundef 3) #10
  br label %for.body.i.preheader

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @stoney_mgcg_cgcg_init, i32 noundef 6) #10
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_stoney_common, i32 noundef 6) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %j.0117.i = phi i32 [ %add5.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.0116.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add nuw nsw i32 %j.0117.i, 2821
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #10
  %add1.i = add nuw nsw i32 %j.0117.i, 2822
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add1.i, i32 noundef 0, i32 noundef 0) #10
  %add2.i = add nuw nsw i32 %j.0117.i, 2823
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add2.i, i32 noundef 0, i32 noundef 0) #10
  %add3.i = add nuw nsw i32 %j.0117.i, 2824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add3.i, i32 noundef 0, i32 noundef 0) #10
  %add4.i = add nuw nsw i32 %j.0117.i, 2825
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add4.i, i32 noundef 0, i32 noundef 0) #10
  %inc.i = add nuw nsw i32 %i.0116.i, 1
  %add5.i = add nuw nsw i32 %j.0117.i, 6
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5416, i32 noundef 0, i32 noundef 0) #10
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %3 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp5.not.i.i, label %for.end.i.do.end.i_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and.i.i = and i32 %call.i.i, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i_crit_edge, label %if.end.i.i

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %6 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %for.end.i.do.end.i_crit_edge
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.44) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.i.if.end.i_crit_edge
  %num_crtc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79, i32 20
  %10 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_crtc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then7.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 202, i32 noundef 0) #10
  %or.i = or i32 %call8.i, 16
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 202, i32 noundef %or.i, i32 noundef 0) #10
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 192, i32 noundef 0) #10
  %and10.i = and i32 %call9.i, -196609
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 192, i32 noundef %and10.i, i32 noundef 0) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then7.i, %if.end.i.if.end12.i_crit_edge
  %vram_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 10
  %12 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vram_start.i, align 8
  %shr.i = lshr i64 %13, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2061, i32 noundef %conv.i, i32 noundef 0) #10
  %vram_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 11
  %14 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vram_end.i, align 8
  %shr14.i = lshr i64 %15, 12
  %conv15.i = trunc i64 %shr14.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2062, i32 noundef %conv15.i, i32 noundef 0) #10
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 69, i32 2
  %16 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %gpu_addr.i, align 8
  %shr16.i = lshr i64 %17, 12
  %conv17.i = trunc i64 %shr16.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2063, i32 noundef %conv17.i, i32 noundef 0) #10
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %18 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt.i, align 8
  %and18.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end12.i.if.end37.i_crit_edge, label %if.then20.i

if.end12.i.if.end37.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then20.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %vram_end.i, align 8
  %22 = lshr i64 %21, 8
  %23 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %vram_start.i, align 8
  %shr28.i = lshr i64 %24, 24
  %and29.i = and i64 %shr28.i, 65535
  %conv30.i = and i64 %22, 4294901760
  %or31.i = or i64 %and29.i, %conv30.i
  %conv32.i = trunc i64 %or31.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2057, i32 noundef %conv32.i, i32 noundef 0) #10
  %25 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vram_start.i, align 8
  %shr35.i = lshr i64 %26, 8
  %conv36.i = trunc i64 %shr35.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2817, i32 noundef %conv36.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2818, i32 noundef 1073742080, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2819, i32 noundef 1073741823, i32 noundef 0) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then20.i, %if.end12.i.if.end37.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2060, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2058, i32 noundef 268435455, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2059, i32 noundef 268435455, i32 noundef 0) #10
  %27 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp5.not.i101.i = icmp eq i32 %28, 0
  br i1 %cmp5.not.i101.i, label %if.end37.i.do.end43.i_crit_edge, label %if.end37.i.for.body.i106.i_crit_edge

if.end37.i.for.body.i106.i_crit_edge:             ; preds = %if.end37.i
  br label %for.body.i106.i

if.end37.i.do.end43.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

for.body.i106.i:                                  ; preds = %if.end.i109.i.for.body.i106.i_crit_edge, %if.end37.i.for.body.i106.i_crit_edge
  %i.06.i102.i = phi i32 [ %inc.i107.i, %if.end.i109.i.for.body.i106.i_crit_edge ], [ 0, %if.end37.i.for.body.i106.i_crit_edge ]
  %call.i103.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and.i104.i = and i32 %call.i103.i, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104.i)
  %tobool.not.i105.i = icmp eq i32 %and.i104.i, 0
  br i1 %tobool.not.i105.i, label %for.body.i106.i.gmc_v8_0_mc_program.exit_crit_edge, label %if.end.i109.i

for.body.i106.i.gmc_v8_0_mc_program.exit_crit_edge: ; preds = %for.body.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v8_0_mc_program.exit

if.end.i109.i:                                    ; preds = %for.body.i106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #10
  %inc.i107.i = add nuw i32 %i.06.i102.i, 1
  %30 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i108.i = icmp ult i32 %inc.i107.i, %31
  br i1 %cmp.i108.i, label %if.end.i109.i.for.body.i106.i_crit_edge, label %if.end.i109.i.do.end43.i_crit_edge

if.end.i109.i.do.end43.i_crit_edge:               ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

if.end.i109.i.for.body.i106.i_crit_edge:          ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i106.i

do.end43.i:                                       ; preds = %if.end.i109.i.do.end43.i_crit_edge, %if.end37.i.do.end43.i_crit_edge
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.44) #13
  br label %gmc_v8_0_mc_program.exit

gmc_v8_0_mc_program.exit:                         ; preds = %do.end43.i, %for.body.i106.i.gmc_v8_0_mc_program.exit_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 3, i32 noundef 0) #10
  %call46.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3027, i32 noundef 0) #10
  %and47.i = and i32 %call46.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3027, i32 noundef %and47.i, i32 noundef 0) #10
  %call49.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2816, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2816, i32 noundef %call49.i, i32 noundef 0) #10
  %34 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asic_type.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %35, label %gmc_v8_0_mc_program.exit.if.end15_crit_edge [
    i32 11, label %if.then
    i32 16, label %gmc_v8_0_mc_program.exit.if.then9_crit_edge
    i32 15, label %gmc_v8_0_mc_program.exit.if.then9_crit_edge91
    i32 17, label %gmc_v8_0_mc_program.exit.if.then9_crit_edge92
  ]

gmc_v8_0_mc_program.exit.if.then9_crit_edge92:    ; preds = %gmc_v8_0_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

gmc_v8_0_mc_program.exit.if.then9_crit_edge91:    ; preds = %gmc_v8_0_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

gmc_v8_0_mc_program.exit.if.then9_crit_edge:      ; preds = %gmc_v8_0_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

gmc_v8_0_mc_program.exit.if.end15_crit_edge:      ; preds = %gmc_v8_0_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %gmc_v8_0_mc_program.exit
  %37 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i36, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end.i36:                                       ; preds = %if.then
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %39 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i, align 8
  %tobool1.not.i = icmp eq ptr %40, null
  br i1 %tobool1.not.i, label %if.then1, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i36
  %data.i = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  tail call void @amdgpu_ucode_print_mc_hdr(ptr noundef %42) #10
  %ucode_version.i = getelementptr inbounds %struct.common_firmware_header, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %ucode_version.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ucode_version.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 19
  %46 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %fw_version.i, align 4
  %io_debug_size_bytes.i = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %io_debug_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %io_debug_size_bytes.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  %div95.i = lshr i32 %49, 3
  %50 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw.i, align 8
  %data10.i = getelementptr inbounds %struct.firmware, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %data10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data10.i, align 4
  %io_debug_array_offset_bytes.i = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %42, i32 0, i32 2
  %54 = ptrtoint ptr %io_debug_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_debug_array_offset_bytes.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %42, i32 0, i32 7
  %56 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ucode_size_bytes.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %div1296.i = lshr i32 %58, 2
  %ucode_array_offset_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %42, i32 0, i32 8
  %59 = ptrtoint ptr %ucode_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ucode_array_offset_bytes.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  %add.ptr17.i = getelementptr i8, ptr %53, i32 %61
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 0) #10
  %and18.i37 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i37)
  %cmp.i = icmp eq i32 %and18.i37, 0
  br i1 %cmp.i, label %if.then19.i, label %if.end3.i.if.end15_crit_edge

if.end3.i.if.end15_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then19.i:                                      ; preds = %if.end3.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 8, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 16, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %49)
  %cmp2097.not.i = icmp ult i32 %49, 8
  br i1 %cmp2097.not.i, label %if.then19.i.for.cond24.preheader.i_crit_edge, label %for.body.preheader.i

if.then19.i.for.cond24.preheader.i_crit_edge:     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond24.preheader.i

for.body.preheader.i:                             ; preds = %if.then19.i
  %62 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  %add.ptr.i = getelementptr i8, ptr %53, i32 %62
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div95.i, i32 1) #10
  br label %for.body.i40

for.cond24.preheader.i:                           ; preds = %for.body.i40.for.cond24.preheader.i_crit_edge, %if.then19.i.for.cond24.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp25100.not.i = icmp ult i32 %58, 4
  br i1 %cmp25100.not.i, label %for.cond24.preheader.i.for.end31.i_crit_edge, label %for.body26.preheader.i

for.cond24.preheader.i.for.end31.i_crit_edge:     ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end31.i

for.body26.preheader.i:                           ; preds = %for.cond24.preheader.i
  %umax107.i = tail call i32 @llvm.umax.i32(i32 %div1296.i, i32 1) #10
  br label %for.body26.i

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %for.body.preheader.i
  %i.099.i = phi i32 [ %inc.i38, %for.body.i40.for.body.i40_crit_edge ], [ 0, %for.body.preheader.i ]
  %io_mc_regs.098.i = phi ptr [ %incdec.ptr22.i, %for.body.i40.for.body.i40_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %io_mc_regs.098.i, i32 1
  %63 = ptrtoint ptr %io_mc_regs.098.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_mc_regs.098.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2705, i32 noundef %65, i32 noundef 0) #10
  %incdec.ptr22.i = getelementptr i32, ptr %io_mc_regs.098.i, i32 2
  %66 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %incdec.ptr.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2706, i32 noundef %68, i32 noundef 0) #10
  %inc.i38 = add nuw nsw i32 %i.099.i, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, %umax.i
  br i1 %exitcond.not.i39, label %for.body.i40.for.cond24.preheader.i_crit_edge, label %for.body.i40.for.body.i40_crit_edge

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i40

for.body.i40.for.cond24.preheader.i_crit_edge:    ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond24.preheader.i

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.body26.preheader.i
  %i.1102.i = phi i32 [ %inc30.i, %for.body26.i.for.body26.i_crit_edge ], [ 0, %for.body26.preheader.i ]
  %fw_data.0101.i = phi ptr [ %incdec.ptr27.i, %for.body26.i.for.body26.i_crit_edge ], [ %add.ptr17.i, %for.body26.preheader.i ]
  %incdec.ptr27.i = getelementptr i32, ptr %fw_data.0101.i, i32 1
  %69 = ptrtoint ptr %fw_data.0101.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_data.0101.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2611, i32 noundef %71, i32 noundef 0) #10
  %inc30.i = add nuw nsw i32 %i.1102.i, 1
  %exitcond108.not.i = icmp eq i32 %inc30.i, %umax107.i
  br i1 %exitcond108.not.i, label %for.body26.i.for.end31.i_crit_edge, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.i

for.body26.i.for.end31.i_crit_edge:               ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end31.i

for.end31.i:                                      ; preds = %for.body26.i.for.end31.i_crit_edge, %for.cond24.preheader.i.for.end31.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 8, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 4, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 1, i32 noundef 0) #10
  %72 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp33103.i = icmp sgt i32 %73, 0
  br i1 %cmp33103.i, label %for.end31.i.for.body34.i_crit_edge, label %for.end31.i.if.end15_crit_edge

for.end31.i.if.end15_crit_edge:                   ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.end31.i.for.body34.i_crit_edge:               ; preds = %for.end31.i
  br label %for.body34.i

for.body34.i:                                     ; preds = %if.end40.i.for.body34.i_crit_edge, %for.end31.i.for.body34.i_crit_edge
  %i.2104.i = phi i32 [ %inc42.i, %if.end40.i.for.body34.i_crit_edge ], [ 0, %for.end31.i.for.body34.i_crit_edge ]
  %call35.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2618, i32 noundef 0) #10
  %74 = and i32 %call35.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool38.not.i = icmp eq i32 %74, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %for.end43thread-pre-split.i

if.end40.i:                                       ; preds = %for.body34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #10
  %inc42.i = add nuw nsw i32 %i.2104.i, 1
  %76 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp33.i = icmp slt i32 %inc42.i, %77
  br i1 %cmp33.i, label %if.end40.i.for.body34.i_crit_edge, label %if.end40.i.for.end43.i_crit_edge

if.end40.i.for.end43.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end43.i

if.end40.i.for.body34.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34.i

for.end43thread-pre-split.i:                      ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr.i = load i32, ptr %usec_timeout.i.i, align 8
  br label %for.end43.i

for.end43.i:                                      ; preds = %for.end43thread-pre-split.i, %if.end40.i.for.end43.i_crit_edge
  %79 = phi i32 [ %.pr.i, %for.end43thread-pre-split.i ], [ %77, %if.end40.i.for.end43.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp46105.i = icmp sgt i32 %79, 0
  br i1 %cmp46105.i, label %for.end43.i.for.body47.i_crit_edge, label %for.end43.i.if.end15_crit_edge

for.end43.i.if.end15_crit_edge:                   ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.end43.i.for.body47.i_crit_edge:               ; preds = %for.end43.i
  br label %for.body47.i

for.body47.i:                                     ; preds = %if.end53.i.for.body47.i_crit_edge, %for.end43.i.for.body47.i_crit_edge
  %i.3106.i = phi i32 [ %inc55.i, %if.end53.i.for.body47.i_crit_edge ], [ 0, %for.end43.i.for.body47.i_crit_edge ]
  %call48.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2618, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call48.i)
  %tobool51.not.i = icmp sgt i32 %call48.i, -1
  br i1 %tobool51.not.i, label %if.end53.i, label %for.body47.i.if.end15_crit_edge

for.body47.i.if.end15_crit_edge:                  ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end53.i:                                       ; preds = %for.body47.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748) #10
  %inc55.i = add nuw nsw i32 %i.3106.i, 1
  %81 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp46.i = icmp slt i32 %inc55.i, %82
  br i1 %cmp46.i, label %if.end53.i.for.body47.i_crit_edge, label %if.end53.i.if.end15_crit_edge

if.end53.i.if.end15_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end53.i.for.body47.i_crit_edge:                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body47.i

if.then1:                                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.then9:                                         ; preds = %gmc_v8_0_mc_program.exit.if.then9_crit_edge, %gmc_v8_0_mc_program.exit.if.then9_crit_edge91, %gmc_v8_0_mc_program.exit.if.then9_crit_edge92
  %83 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %virt.i, align 8
  %and.i42 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  br i1 %tobool.not.i43, label %if.end.i46, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end.i46:                                       ; preds = %if.then9
  %fw.i44 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 18
  %85 = ptrtoint ptr %fw.i44 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw.i44, align 8
  %tobool1.not.i45 = icmp eq ptr %86, null
  br i1 %tobool1.not.i45, label %if.then12, label %if.end3.i54

if.end3.i54:                                      ; preds = %if.end.i46
  %data6.i = getelementptr inbounds %struct.firmware, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %data6.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data6.i, align 4
  tail call void @amdgpu_ucode_print_mc_hdr(ptr noundef %88) #10
  %ucode_version.i47 = getelementptr inbounds %struct.common_firmware_header, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %ucode_version.i47 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ucode_version.i47, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  %fw_version.i48 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 19
  %92 = ptrtoint ptr %fw_version.i48 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %fw_version.i48, align 4
  %io_debug_size_bytes.i49 = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %88, i32 0, i32 1
  %93 = ptrtoint ptr %io_debug_size_bytes.i49 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %io_debug_size_bytes.i49, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #10
  %96 = ptrtoint ptr %fw.i44 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fw.i44, align 8
  %data11.i = getelementptr inbounds %struct.firmware, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %data11.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data11.i, align 4
  %io_debug_array_offset_bytes.i50 = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %88, i32 0, i32 2
  %100 = ptrtoint ptr %io_debug_array_offset_bytes.i50 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %io_debug_array_offset_bytes.i50, align 4
  %ucode_size_bytes.i51 = getelementptr inbounds %struct.common_firmware_header, ptr %88, i32 0, i32 7
  %102 = ptrtoint ptr %ucode_size_bytes.i51 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ucode_size_bytes.i51, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  %div1379.i = lshr i32 %104, 2
  %ucode_array_offset_bytes.i52 = getelementptr inbounds %struct.common_firmware_header, ptr %88, i32 0, i32 8
  %105 = ptrtoint ptr %ucode_array_offset_bytes.i52 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ucode_array_offset_bytes.i52, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #10
  %add.ptr18.i = getelementptr i8, ptr %99, i32 %107
  %call.i53 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2688, i32 noundef 0) #10
  %and19.i = and i32 %call.i53, -65
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2688, i32 noundef %and19.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %95)
  %cmp80.not.i = icmp ult i32 %95, 8
  br i1 %cmp80.not.i, label %if.end3.i54.for.end.i61_crit_edge, label %for.body.preheader.i56

if.end3.i54.for.end.i61_crit_edge:                ; preds = %if.end3.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i61

for.body.preheader.i56:                           ; preds = %if.end3.i54
  %108 = tail call i32 @llvm.bswap.i32(i32 %101) #10
  %add.ptr.i55 = getelementptr i8, ptr %99, i32 %108
  %div78.i = lshr i32 %95, 3
  br label %for.body.i60

for.body.i60:                                     ; preds = %for.body.i60.for.body.i60_crit_edge, %for.body.preheader.i56
  %i.082.i = phi i32 [ %inc.i58, %for.body.i60.for.body.i60_crit_edge ], [ 0, %for.body.preheader.i56 ]
  %io_mc_regs.081.i = phi ptr [ %incdec.ptr21.i, %for.body.i60.for.body.i60_crit_edge ], [ %add.ptr.i55, %for.body.preheader.i56 ]
  %incdec.ptr.i57 = getelementptr i32, ptr %io_mc_regs.081.i, i32 1
  %109 = ptrtoint ptr %io_mc_regs.081.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %io_mc_regs.081.i, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2705, i32 noundef %111, i32 noundef 0) #10
  %incdec.ptr21.i = getelementptr i32, ptr %io_mc_regs.081.i, i32 2
  %112 = ptrtoint ptr %incdec.ptr.i57 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %incdec.ptr.i57, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2706, i32 noundef %114, i32 noundef 0) #10
  %inc.i58 = add nuw nsw i32 %i.082.i, 1
  %exitcond.not.i59 = icmp eq i32 %inc.i58, %div78.i
  br i1 %exitcond.not.i59, label %for.body.i60.for.end.i61_crit_edge, label %for.body.i60.for.body.i60_crit_edge

for.body.i60.for.body.i60_crit_edge:              ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i60

for.body.i60.for.end.i61_crit_edge:               ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i61

for.end.i61:                                      ; preds = %for.body.i60.for.end.i61_crit_edge, %if.end3.i54.for.end.i61_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 8, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 16, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %104)
  %cmp2483.not.i = icmp ult i32 %104, 4
  br i1 %cmp2483.not.i, label %for.end.i61.for.end30.i_crit_edge, label %for.body25.preheader.i

for.end.i61.for.end30.i_crit_edge:                ; preds = %for.end.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30.i

for.body25.preheader.i:                           ; preds = %for.end.i61
  %umax88.i = tail call i32 @llvm.umax.i32(i32 %div1379.i, i32 1) #10
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.body25.preheader.i
  %i.185.i = phi i32 [ %inc29.i, %for.body25.i.for.body25.i_crit_edge ], [ 0, %for.body25.preheader.i ]
  %fw_data.084.i = phi ptr [ %incdec.ptr26.i, %for.body25.i.for.body25.i_crit_edge ], [ %add.ptr18.i, %for.body25.preheader.i ]
  %incdec.ptr26.i = getelementptr i32, ptr %fw_data.084.i, i32 1
  %115 = ptrtoint ptr %fw_data.084.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fw_data.084.i, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2611, i32 noundef %117, i32 noundef 0) #10
  %inc29.i = add nuw nsw i32 %i.185.i, 1
  %exitcond89.not.i = icmp eq i32 %inc29.i, %umax88.i
  br i1 %exitcond89.not.i, label %for.body25.i.for.end30.i_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25.i

for.body25.i.for.end30.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end30.i

for.end30.i:                                      ; preds = %for.body25.i.for.end30.i_crit_edge, %for.end.i61.for.end30.i_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 8, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 4, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2610, i32 noundef 1, i32 noundef 0) #10
  %118 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp3286.i = icmp sgt i32 %119, 0
  br i1 %cmp3286.i, label %for.end30.i.for.body33.i_crit_edge, label %for.end30.i.if.end15_crit_edge

for.end30.i.if.end15_crit_edge:                   ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.end30.i.for.body33.i_crit_edge:               ; preds = %for.end30.i
  br label %for.body33.i

for.body33.i:                                     ; preds = %if.end38.i.for.body33.i_crit_edge, %for.end30.i.for.body33.i_crit_edge
  %i.287.i = phi i32 [ %inc40.i, %if.end38.i.for.body33.i_crit_edge ], [ 0, %for.end30.i.for.body33.i_crit_edge ]
  %call34.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2688, i32 noundef 0) #10
  %and35.i = and i32 %call34.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %for.body33.i.if.end15_crit_edge

for.body33.i.if.end15_crit_edge:                  ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end38.i:                                       ; preds = %for.body33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748) #10
  %inc40.i = add nuw nsw i32 %i.287.i, 1
  %121 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp32.i = icmp slt i32 %inc40.i, %122
  br i1 %cmp32.i, label %if.end38.i.for.body33.i_crit_edge, label %if.end38.i.if.end15_crit_edge

if.end38.i.if.end15_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end38.i.for.body33.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33.i

if.then12:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end38.i.if.end15_crit_edge, %for.body33.i.if.end15_crit_edge, %for.end30.i.if.end15_crit_edge, %if.then9.if.end15_crit_edge, %if.end53.i.if.end15_crit_edge, %for.body47.i.if.end15_crit_edge, %for.end43.i.if.end15_crit_edge, %for.end31.i.if.end15_crit_edge, %if.end3.i.if.end15_crit_edge, %if.then.if.end15_crit_edge, %gmc_v8_0_mc_program.exit.if.end15_crit_edge
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63
  %123 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %gart.i, align 8
  %cmp.i64 = icmp eq ptr %124, null
  br i1 %cmp.i64, label %do.end.i65, label %if.end.i68

do.end.i65:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end.i68:                                       ; preds = %if.end15
  %gtt_mgr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 9
  %call.i66 = tail call i32 @amdgpu_gtt_mgr_recover(ptr noundef %gtt_mgr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end2.i, label %if.end.i68.cleanup_crit_edge

if.end.i68.cleanup_crit_edge:                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %gart.i, align 8
  %call5.i = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %128) #10
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2073, i32 noundef 0) #10
  %or12.i = and i32 %call6.i, -124
  %and13.i = or i32 %or12.i, 91
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2073, i32 noundef %and13.i, i32 noundef 0) #10
  %call15.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1280, i32 noundef 0) #10
  %or25.i = and i32 %call15.i, -1805828
  %or29.i = or i32 %or25.i, 757251
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1280, i32 noundef %or29.i, i32 noundef 0) #10
  %call30.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1281, i32 noundef 0) #10
  %or34.i = or i32 %call30.i, 3
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1281, i32 noundef %or34.i, i32 noundef 0) #10
  %fragment_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 8
  %129 = ptrtoint ptr %fragment_size.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %fragment_size.i, align 8
  %call35.i69 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1282, i32 noundef 0) #10
  %or37.i = and i32 %call35.i69, -2064448
  %and39.i = and i32 %130, 63
  %shl42.i = shl i32 %130, 15
  %and43.i = and i32 %shl42.i, 1015808
  %and38.i = or i32 %and39.i, %or37.i
  %or40.i = or i32 %and38.i, %and43.i
  %or44.i = or i32 %or40.i, 1048576
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1282, i32 noundef %or44.i, i32 noundef 0) #10
  %call45.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1400, i32 noundef 0) #10
  %and68.i = and i32 %call45.i, -262081
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1400, i32 noundef %and68.i, i32 noundef 0) #10
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 8
  %131 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %gart_start.i, align 8
  %shr.i70 = lshr i64 %132, 12
  %conv.i71 = trunc i64 %shr.i70 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1367, i32 noundef %conv.i71, i32 noundef 0) #10
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 9
  %133 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %gart_end.i, align 8
  %shr71.i = lshr i64 %134, 12
  %conv72.i = trunc i64 %shr71.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1375, i32 noundef %conv72.i, i32 noundef 0) #10
  %shr73.i = lshr i64 %call5.i, 12
  %conv74.i = trunc i64 %shr73.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1359, i32 noundef %conv74.i, i32 noundef 0) #10
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 64
  %135 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dummy_page_addr.i, align 8
  %shr75.i = lshr i32 %136, 12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1350, i32 noundef %shr75.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1292, i32 noundef 0, i32 noundef 0) #10
  %call76.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1284, i32 noundef 0) #10
  %or78.i = and i32 %call76.i, -24
  %or82.i = or i32 %or78.i, 17
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1284, i32 noundef %or82.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1397, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1398, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1399, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1368, i32 noundef 0, i32 noundef 0) #10
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 5
  %137 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %max_pfn.i, align 8
  %139 = trunc i64 %138 to i32
  %conv84.i = add i32 %139, -1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1376, i32 noundef %conv84.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1360, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1361, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1362, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1363, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1364, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1365, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1366, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1294, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1295, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1296, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1297, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1298, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1299, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1300, i32 noundef %conv74.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1301, i32 noundef %conv74.i, i32 noundef 0) #10
  %140 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dummy_page_addr.i, align 8
  %shr98.i = lshr i32 %141, 12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1351, i32 noundef %shr98.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1293, i32 noundef 4, i32 noundef 0) #10
  %call99.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0) #10
  %or101.i = and i32 %call99.i, -256451736
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 7
  %142 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %block_size.i, align 4
  %sub120.i = shl i32 %143, 24
  %shl121.i = add i32 %sub120.i, 117440512
  %and122.i = and i32 %shl121.i, 251658240
  %or117.i = or i32 %or101.i, %and122.i
  %or123.i = or i32 %or117.i, 4793491
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef %or123.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %144 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp124.i = icmp eq i32 %144, 2
  %call.i.i76 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0) #10
  %and.i.i77 = and i32 %call.i.i76, -4793489
  %masksel.i = select i1 %cmp124.i, i32 0, i32 4793488
  %or37.i.sink.i = or i32 %and.i.i77, %masksel.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef %or37.i.sink.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1310, i32 noundef 1, i32 noundef 0) #10
  %gart_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %145 = ptrtoint ptr %gart_size.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %gart_size.i, align 8
  %shr134.i = lshr i64 %146, 20
  %conv135.i = trunc i64 %shr134.i to i32
  %call136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv135.i, i64 noundef %call5.i) #13
  %ready.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63, i32 5
  %147 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %ready.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end.i68.cleanup_crit_edge, %do.end.i65, %if.then12, %if.then1
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -22, %if.then12 ], [ -22, %do.end.i65 ], [ 0, %if.end2.i ], [ %call.i66, %if.end.i68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1284, i32 noundef 0, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1285, i32 noundef 0, i32 noundef 0) #10
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2073, i32 noundef 0) #10
  %and3.i = and i32 %call.i, -68
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2073, i32 noundef %and3.i, i32 noundef 0) #10
  %call5.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1280, i32 noundef 0) #10
  %and6.i = and i32 %call5.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1280, i32 noundef %and6.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1281, i32 noundef 0, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gmc_v8_0_hw_fini(ptr noundef %handle)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gmc_v8_0_hw_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_vmid_reset_all(ptr noundef %handle) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gmc_v8_0_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and = and i32 %call, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and = and i32 %call, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  %inc = add nuw i32 %i.06, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gmc_v8_0_check_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and = shl i32 %call, 9
  %0 = and i32 %and, 131072
  %and2 = and i32 %call, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.if.end11_crit_edge, label %if.then4

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and5 = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or9 = or i32 %0, 2048
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool12.not = icmp ne i32 %0, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then4.cleanup_crit_edge
  %.sink = phi i32 [ %or9, %if.then4.cleanup_crit_edge ], [ %0, %if.end11 ]
  %tobool12.not30 = phi i1 [ true, %if.then4.cleanup_crit_edge ], [ %tobool12.not, %if.end11 ]
  %srbm_soft_reset16 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 23
  %3 = ptrtoint ptr %srbm_soft_reset16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %srbm_soft_reset16, align 4
  ret i1 %tobool12.not30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_pre_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 23
  %0 = ptrtoint ptr %srbm_soft_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %2 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp5.not.i.i, label %if.end.gmc_v8_0_wait_for_idle.exit.i_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.gmc_v8_0_wait_for_idle.exit.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v8_0_wait_for_idle.exit.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and.i.i = and i32 %call.i.i, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.gmc_v8_0_wait_for_idle.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.gmc_v8_0_wait_for_idle.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v8_0_wait_for_idle.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %5 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %6
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.gmc_v8_0_wait_for_idle.exit.i_crit_edge

if.end.i.i.gmc_v8_0_wait_for_idle.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v8_0_wait_for_idle.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

gmc_v8_0_wait_for_idle.exit.i:                    ; preds = %if.end.i.i.gmc_v8_0_wait_for_idle.exit.i_crit_edge, %for.body.i.i.gmc_v8_0_wait_for_idle.exit.i_crit_edge, %if.end.gmc_v8_0_wait_for_idle.exit.i_crit_edge
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2091, i32 noundef 0) #10
  %and.i = and i32 %call1.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i, label %gmc_v8_0_wait_for_idle.exit.i.gmc_v8_0_mc_stop.exit_crit_edge, label %if.then.i

gmc_v8_0_wait_for_idle.exit.i.gmc_v8_0_mc_stop.exit_crit_edge: ; preds = %gmc_v8_0_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v8_0_mc_stop.exit

if.then.i:                                        ; preds = %gmc_v8_0_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 0, i32 noundef 0) #10
  %and2.i = and i32 %call1.i, -8
  %or.i = or i32 %and2.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2091, i32 noundef %or.i, i32 noundef 0) #10
  br label %gmc_v8_0_mc_stop.exit

gmc_v8_0_mc_stop.exit:                            ; preds = %if.then.i, %gmc_v8_0_wait_for_idle.exit.i.gmc_v8_0_mc_stop.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #10
  %8 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not.i = icmp eq i32 %9, 0
  br i1 %cmp5.not.i, label %gmc_v8_0_mc_stop.exit.do.end_crit_edge, label %gmc_v8_0_mc_stop.exit.for.body.i_crit_edge

gmc_v8_0_mc_stop.exit.for.body.i_crit_edge:       ; preds = %gmc_v8_0_mc_stop.exit
  br label %for.body.i

gmc_v8_0_mc_stop.exit.do.end_crit_edge:           ; preds = %gmc_v8_0_mc_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %gmc_v8_0_mc_stop.exit.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %gmc_v8_0_mc_stop.exit.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #10
  %and.i7 = and i32 %call.i, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #10
  %inc.i = add nuw i32 %i.06.i, 1
  %11 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %gmc_v8_0_mc_stop.exit.do.end_crit_edge
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.53) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 23
  %0 = ptrtoint ptr %srbm_soft_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #10
  %or = or i32 %call, %1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef %or) #13
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or, i32 noundef 0) #10
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #10
  %neg = xor i32 %1, -1
  %and = and i32 %call6, %neg
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and, i32 noundef 0) #10
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_post_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 23
  %0 = ptrtoint ptr %srbm_soft_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2091, i32 noundef 0) #10
  %and.i = and i32 %call.i, -8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2091, i32 noundef %and.i, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 5412, i32 noundef 3, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cond = icmp eq i32 %3, 12
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %land.lhs.true.i, label %sw.bb.fiji_update_mc_medium_grain_clock_gating.exit_crit_edge

sw.bb.fiji_update_mc_medium_grain_clock_gating.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %fiji_update_mc_medium_grain_clock_gating.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %4 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.fiji_update_mc_medium_grain_clock_gating.exit_crit_edge, label %fiji_update_mc_medium_grain_clock_gating.exit.thread

land.lhs.true.i.fiji_update_mc_medium_grain_clock_gating.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fiji_update_mc_medium_grain_clock_gating.exit

fiji_update_mc_medium_grain_clock_gating.exit.thread: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2094, i32 noundef 0) #10
  %or.i = or i32 %call.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2094, i32 noundef %or.i, i32 noundef 0) #10
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2096, i32 noundef 0) #10
  %or3.i = or i32 %call2.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2096, i32 noundef %or3.i, i32 noundef 0) #10
  %call4.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2095, i32 noundef 0) #10
  %or5.i = or i32 %call4.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2095, i32 noundef %or5.i, i32 noundef 0) #10
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2334, i32 noundef 0) #10
  %or7.i = or i32 %call6.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2334, i32 noundef %or7.i, i32 noundef 0) #10
  %call8.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3284, i32 noundef 0) #10
  %or9.i = or i32 %call8.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3284, i32 noundef %or9.i, i32 noundef 0) #10
  %call10.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2451, i32 noundef 0) #10
  %or11.i = or i32 %call10.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2451, i32 noundef %or11.i, i32 noundef 0) #10
  %call12.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2450, i32 noundef 0) #10
  %or13.i = or i32 %call12.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2450, i32 noundef %or13.i, i32 noundef 0) #10
  %call14.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2452, i32 noundef 0) #10
  %or15.i = or i32 %call14.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2452, i32 noundef %or15.i, i32 noundef 0) #10
  %call16.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1392, i32 noundef 0) #10
  %or17.i = or i32 %call16.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1392, i32 noundef %or17.i, i32 noundef 0) #10
  br label %land.lhs.true.i9

fiji_update_mc_medium_grain_clock_gating.exit:    ; preds = %land.lhs.true.i.fiji_update_mc_medium_grain_clock_gating.exit_crit_edge, %sw.bb.fiji_update_mc_medium_grain_clock_gating.exit_crit_edge
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2094, i32 noundef 0) #10
  %and19.i = and i32 %call18.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2094, i32 noundef %and19.i, i32 noundef 0) #10
  %call20.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2096, i32 noundef 0) #10
  %and21.i = and i32 %call20.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2096, i32 noundef %and21.i, i32 noundef 0) #10
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2095, i32 noundef 0) #10
  %and23.i = and i32 %call22.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2095, i32 noundef %and23.i, i32 noundef 0) #10
  %call24.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2334, i32 noundef 0) #10
  %and25.i = and i32 %call24.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2334, i32 noundef %and25.i, i32 noundef 0) #10
  %call26.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3284, i32 noundef 0) #10
  %and27.i = and i32 %call26.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3284, i32 noundef %and27.i, i32 noundef 0) #10
  %call28.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2451, i32 noundef 0) #10
  %and29.i = and i32 %call28.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2451, i32 noundef %and29.i, i32 noundef 0) #10
  %call30.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2450, i32 noundef 0) #10
  %and31.i = and i32 %call30.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2450, i32 noundef %and31.i, i32 noundef 0) #10
  %call32.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2452, i32 noundef 0) #10
  %and33.i = and i32 %call32.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2452, i32 noundef %and33.i, i32 noundef 0) #10
  %call34.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1392, i32 noundef 0) #10
  %and35.i = and i32 %call34.i, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1392, i32 noundef %and35.i, i32 noundef 0) #10
  br i1 %cmp, label %fiji_update_mc_medium_grain_clock_gating.exit.land.lhs.true.i9_crit_edge, label %fiji_update_mc_medium_grain_clock_gating.exit.if.else.i47_crit_edge

fiji_update_mc_medium_grain_clock_gating.exit.if.else.i47_crit_edge: ; preds = %fiji_update_mc_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i47

fiji_update_mc_medium_grain_clock_gating.exit.land.lhs.true.i9_crit_edge: ; preds = %fiji_update_mc_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i9

land.lhs.true.i9:                                 ; preds = %fiji_update_mc_medium_grain_clock_gating.exit.land.lhs.true.i9_crit_edge, %fiji_update_mc_medium_grain_clock_gating.exit.thread
  %cg_flags.i6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %6 = ptrtoint ptr %cg_flags.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cg_flags.i6, align 8
  %and.i7 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool1.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool1.not.i8, label %land.lhs.true.i9.if.else.i47_crit_edge, label %if.then.i28

land.lhs.true.i9.if.else.i47_crit_edge:           ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i47

if.then.i28:                                      ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i10 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2094, i32 noundef 0) #10
  %or.i11 = or i32 %call.i10, 524288
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2094, i32 noundef %or.i11, i32 noundef 0) #10
  %call2.i12 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2096, i32 noundef 0) #10
  %or3.i13 = or i32 %call2.i12, 524288
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2096, i32 noundef %or3.i13, i32 noundef 0) #10
  %call4.i14 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2095, i32 noundef 0) #10
  %or5.i15 = or i32 %call4.i14, 524288
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2095, i32 noundef %or5.i15, i32 noundef 0) #10
  %call6.i16 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2334, i32 noundef 0) #10
  %or7.i17 = or i32 %call6.i16, 524288
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2334, i32 noundef %or7.i17, i32 noundef 0) #10
  %call8.i18 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3284, i32 noundef 0) #10
  %or9.i19 = or i32 %call8.i18, 524288
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3284, i32 noundef %or9.i19, i32 noundef 0) #10
  %call10.i20 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2451, i32 noundef 0) #10
  %or11.i21 = or i32 %call10.i20, 524288
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2451, i32 noundef %or11.i21, i32 noundef 0) #10
  %call12.i22 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2450, i32 noundef 0) #10
  %or13.i23 = or i32 %call12.i22, 524288
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2450, i32 noundef %or13.i23, i32 noundef 0) #10
  %call14.i24 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2452, i32 noundef 0) #10
  %or15.i25 = or i32 %call14.i24, 524288
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2452, i32 noundef %or15.i25, i32 noundef 0) #10
  %call16.i26 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1392, i32 noundef 0) #10
  %or17.i27 = or i32 %call16.i26, 524288
  br label %fiji_update_mc_light_sleep.exit

if.else.i47:                                      ; preds = %land.lhs.true.i9.if.else.i47_crit_edge, %fiji_update_mc_medium_grain_clock_gating.exit.if.else.i47_crit_edge
  %call18.i29 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2094, i32 noundef 0) #10
  %and19.i30 = and i32 %call18.i29, -524289
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2094, i32 noundef %and19.i30, i32 noundef 0) #10
  %call20.i31 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2096, i32 noundef 0) #10
  %and21.i32 = and i32 %call20.i31, -524289
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2096, i32 noundef %and21.i32, i32 noundef 0) #10
  %call22.i33 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2095, i32 noundef 0) #10
  %and23.i34 = and i32 %call22.i33, -524289
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2095, i32 noundef %and23.i34, i32 noundef 0) #10
  %call24.i35 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2334, i32 noundef 0) #10
  %and25.i36 = and i32 %call24.i35, -524289
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2334, i32 noundef %and25.i36, i32 noundef 0) #10
  %call26.i37 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 3284, i32 noundef 0) #10
  %and27.i38 = and i32 %call26.i37, -524289
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 3284, i32 noundef %and27.i38, i32 noundef 0) #10
  %call28.i39 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2451, i32 noundef 0) #10
  %and29.i40 = and i32 %call28.i39, -524289
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2451, i32 noundef %and29.i40, i32 noundef 0) #10
  %call30.i41 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2450, i32 noundef 0) #10
  %and31.i42 = and i32 %call30.i41, -524289
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2450, i32 noundef %and31.i42, i32 noundef 0) #10
  %call32.i43 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2452, i32 noundef 0) #10
  %and33.i44 = and i32 %call32.i43, -524289
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 2452, i32 noundef %and33.i44, i32 noundef 0) #10
  %call34.i45 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 1392, i32 noundef 0) #10
  %and35.i46 = and i32 %call34.i45, -524289
  br label %fiji_update_mc_light_sleep.exit

fiji_update_mc_light_sleep.exit:                  ; preds = %if.else.i47, %if.then.i28
  %and35.sink.i48 = phi i32 [ %and35.i46, %if.else.i47 ], [ %or17.i27, %if.then.i28 ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 1392, i32 noundef %and35.sink.i48, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %fiji_update_mc_light_sleep.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v8_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v8_0_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 2094, i32 noundef 0) #10
  %and1 = and i32 %call, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 512
  store i32 %or, ptr %flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %call, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or8 = or i32 %6, 256
  store i32 %or8, ptr %flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v8_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid, i32 noundef %vmhub, i32 noundef %flush_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %vmid
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1310, i32 noundef %shl, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_flush_gpu_tlb_pasid(ptr noundef %adev, i16 noundef zeroext %pasid, i32 noundef %flush_type, i1 noundef zeroext %all_hub) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #10
  %0 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %vmid.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %add = add nuw nsw i32 %vmid.018, 3303
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp slt i32 %call1, 0
  %2 = trunc i32 %call1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %pasid)
  %cmp4 = icmp eq i16 %2, %pasid
  %or.cond = and i1 %tobool2.not, %cmp4
  br i1 %or.cond, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw nsw i32 1, %vmid.018
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1310, i32 noundef %shl, i32 noundef 0) #10
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1311, i32 noundef 0) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %vmid.018, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gmc_v8_0_emit_flush_gpu_tlb(ptr noundef %ring, i32 noundef %vmid, i64 noundef returned %pd_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %vmid)
  %cmp = icmp ult i32 %vmid, 8
  %reg.0.v = select i1 %cmp, i32 1359, i32 1286
  %reg.0 = add i32 %reg.0.v, %vmid
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  %shr = lshr i64 %pd_addr, 12
  %conv = trunc i64 %shr to i32
  tail call void %3(ptr noundef %ring, i32 noundef %reg.0, i32 noundef %conv) #10
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %emit_wreg3 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %emit_wreg3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emit_wreg3, align 4
  %shl = shl nuw i32 1, %vmid
  tail call void %7(ptr noundef %ring, i32 noundef 1310, i32 noundef %shl) #10
  ret i64 %pd_addr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v8_0_emit_pasid_mapping(ptr noundef %ring, i32 noundef %vmid, i32 noundef %pasid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  %add = add i32 %vmid, 3584
  tail call void %3(ptr noundef %ring, i32 noundef %add, i32 noundef %pasid) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v8_0_set_prt(ptr noundef %adev, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %prt_warning = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 24
  %0 = ptrtoint ptr %prt_warning to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prt_warning, align 8, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #13
  %4 = ptrtoint ptr %prt_warning to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %prt_warning, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %shl39 = phi i32 [ 64, %do.end ], [ 64, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl33 = phi i32 [ 8, %do.end ], [ 8, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl27 = phi i32 [ 4, %do.end ], [ 4, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl21 = phi i32 [ 32, %do.end ], [ 32, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl15 = phi i32 [ 2, %do.end ], [ 2, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %shl9 = phi i32 [ 16, %do.end ], [ 16, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1332, i32 noundef 0) #10
  %and = and i32 %call, -128
  %conv = zext i1 %enable to i32
  %or = or i32 %shl39, %conv
  %or11 = or i32 %or, %shl33
  %or17 = or i32 %or11, %shl27
  %or23 = or i32 %or17, %shl21
  %and30.masked = or i32 %or23, %shl15
  %and36 = or i32 %and30.masked, %shl9
  %or41 = or i32 %and36, %and
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1332, i32 noundef %or41, i32 noundef 0) #10
  br i1 %enable, label %if.then43, label %if.end.if.end45_crit_edge

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_pfn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %5 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %max_pfn, align 8
  %7 = trunc i64 %6 to i32
  %conv44 = add i32 %7, -512
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end.if.end45_crit_edge
  %.sink94 = phi i32 [ 512, %if.then43 ], [ 268435455, %if.end.if.end45_crit_edge ]
  %.sink90 = phi i32 [ %conv44, %if.then43 ], [ 0, %if.end.if.end45_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1324, i32 noundef %.sink94, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1325, i32 noundef %.sink94, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1326, i32 noundef %.sink94, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1327, i32 noundef %.sink94, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1328, i32 noundef %.sink90, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1329, i32 noundef %.sink90, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1330, i32 noundef %.sink90, i32 noundef 0) #10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1331, i32 noundef %.sink90, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v8_0_get_vm_pde(ptr nocapture noundef readnone %adev, i32 noundef %level, ptr nocapture noundef readonly %addr, ptr nocapture noundef readnone %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %addr, align 8
  %and = and i64 %1, -1099511623681
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !165

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 728, 0\0A.popsection", ""() #10, !srcloc !166
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gmc_v8_0_get_vm_pte(ptr nocapture noundef readnone %adev, ptr nocapture noundef readonly %mapping, ptr nocapture noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and = and i64 %1, -17
  store i64 %and, ptr %flags, align 8
  %flags1 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %mapping, i32 0, i32 7
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags1, align 8
  %and2 = and i64 %3, 16
  %and.masked = and i64 %1, -2251799813685265
  %and3 = or i64 %and2, %and.masked
  store i64 %and3, ptr %flags, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_get_vbios_fb_size(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 204, i32 noundef 0) #10
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 7005, i32 noundef 0) #10
  %and4 = lshr i32 %call1, 16
  %shr5 = and i32 %and4, 16383
  %and2 = shl i32 %call1, 2
  %mul = and i32 %and2, 65532
  %mul6 = mul nuw nsw i32 %mul, %shr5
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %size.0 = phi i32 [ %mul6, %if.else ], [ 9437184, %entry.if.end_crit_edge ]
  ret i32 %size.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_vm_fault_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1284, i32 noundef 0) #10
  %and = and i32 %call, -2396745
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1284, i32 noundef %and, i32 noundef 0) #10
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #10
  %and3 = and i32 %call1, -2396745
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1284, i32 noundef 0) #10
  %or = or i32 %call5, 2396744
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1284, i32 noundef %or, i32 noundef 0) #10
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #10
  %or7 = or i32 %call6, 2396744
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb
  %or7.sink = phi i32 [ %or7, %sw.bb4 ], [ %and3, %sw.bb ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1285, i32 noundef %or7.sink, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v8_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  %block.i = alloca [5 x i8], align 1
  %task_info = alloca %struct.amdgpu_task_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %4 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_id, align 8
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %6 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %7) #13
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1343, i32 noundef 0) #10
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1335, i32 noundef 0) #10
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1337, i32 noundef 0) #10
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1293, i32 noundef 0) #10
  %or = or i32 %call9, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1293, i32 noundef %or, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool14.not = icmp eq i32 %call6, 0
  %or.cond = select i1 %tobool13.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %10 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then17, label %if.end16.if.end18_crit_edge

if.end16.if.end18_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1285, i32 noundef 0) #10
  %and.i = and i32 %call.i, -4793489
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1285, i32 noundef %and.i, i32 noundef 0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end16.if.end18_crit_edge
  %call19 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.end39_crit_edge, label %if.then21

if.end18.if.end39_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = lshr i32 %call6, 25
  %.pre126 = and i32 %.pre, 15
  br label %if.end39

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %task_info) #10
  %11 = call ptr @memset(ptr %task_info, i32 0, i32 40)
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %12 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pasid, align 4
  call void @amdgpu_vm_get_task_info(ptr noundef %adev, i32 noundef %13, ptr noundef nonnull %task_info) #10
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  %src_id26 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %16 = ptrtoint ptr %src_id26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_id26, align 8
  %src_data27 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %18 = ptrtoint ptr %src_data27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_data27, align 4
  %tgid = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 3
  %20 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tgid, align 4
  %task_name = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 1
  %pid = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 2
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %task_info, i32 noundef %21, ptr noundef %task_name, i32 noundef %23) #13
  %24 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef %call) #13
  %26 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.19, i32 noundef %call6) #13
  %28 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pasid, align 4
  %and.i125 = lshr i32 %call6, 25
  %shr.i = and i32 %and.i125, 15
  %and1.i = and i32 %call6, 255
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %block.i) #10
  %30 = getelementptr inbounds [5 x i8], ptr %block.i, i32 0, i32 1
  %31 = getelementptr inbounds [5 x i8], ptr %block.i, i32 0, i32 2
  %32 = getelementptr inbounds [5 x i8], ptr %block.i, i32 0, i32 3
  %33 = getelementptr inbounds [5 x i8], ptr %block.i, i32 0, i32 4
  %shr3.i = lshr i32 %call7, 24
  %conv.i = trunc i32 %shr3.i to i8
  %34 = ptrtoint ptr %block.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %block.i, align 1
  %shr4.i = lshr i32 %call7, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv6.i, ptr %30, align 1
  %shr8.i = lshr i32 %call7, 8
  %conv10.i = trunc i32 %shr8.i to i8
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv10.i, ptr %31, align 1
  %conv13.i = trunc i32 %call7 to i8
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv13.i, ptr %32, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %33, align 1
  %and15.i = lshr i32 %call6, 12
  %shr16.i = and i32 %and15.i, 511
  %39 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adev, align 8
  %41 = and i32 %call6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.24, ptr @.str.23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.21, i32 noundef %and1.i, i32 noundef %shr.i, i32 noundef %29, i32 noundef %call, ptr noundef nonnull %cond.i, ptr noundef nonnull %block.i, i32 noundef %call7, i32 noundef %shr16.i) #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %block.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %task_info) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then21, %if.end18.if.end39_crit_edge
  %shr.pre-phi = phi i32 [ %.pre126, %if.end18.if.end39_crit_edge ], [ %shr.i, %if.then21 ]
  %call41 = call zeroext i1 @amdgpu_amdkfd_is_kfd_vmid(ptr noundef %adev, i32 noundef %shr.pre-phi) #10
  br i1 %call41, label %land.lhs.true42, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true42:                                  ; preds = %if.end39
  %vm_fault_info_updated = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 33
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vm_fault_info_updated, i32 noundef 4) #10
  %42 = ptrtoint ptr %vm_fault_info_updated to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %vm_fault_info_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool44.not = icmp eq i32 %43, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true42.cleanup_crit_edge

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  %vm_fault_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 32
  %44 = ptrtoint ptr %vm_fault_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vm_fault_info, align 8
  %vmid49 = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %vmid49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr.pre-phi, ptr %vmid49, align 8
  %and50 = lshr i32 %call6, 12
  %shr51 = and i32 %and50, 511
  %mc_id = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %45, i32 0, i32 2
  %47 = ptrtoint ptr %mc_id to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr51, ptr %mc_id, align 4
  %status52 = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %status52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call6, ptr %status52, align 8
  %conv = zext i32 %call to i64
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv, ptr %45, align 8
  %and53 = and i32 %call6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54 = icmp ne i32 %and53, 0
  %prot_valid = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %45, i32 0, i32 4
  %frombool = zext i1 %tobool54 to i8
  %50 = ptrtoint ptr %prot_valid to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool, ptr %prot_valid, align 4
  %prot_read = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %45, i32 0, i32 5
  %51 = trunc i32 %call6 to i8
  %52 = lshr i8 %51, 3
  %53 = and i8 %52, 1
  %54 = ptrtoint ptr %prot_read to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %prot_read, align 1
  %prot_write = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %45, i32 0, i32 6
  %55 = lshr i8 %51, 4
  %56 = and i8 %55, 1
  %57 = ptrtoint ptr %prot_write to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %prot_write, align 2
  %prot_exec = getelementptr inbounds %struct.kfd_vm_fault_info, ptr %45, i32 0, i32 7
  %58 = lshr i8 %51, 5
  %59 = and i8 %58, 1
  %60 = ptrtoint ptr %prot_exec to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %prot_exec, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  call void @arm_heavy_mb() #10
  %call.i.i124 = call zeroext i1 @__kasan_check_write(ptr noundef %vm_fault_info_updated, i32 noundef 4) #10
  %61 = ptrtoint ptr %vm_fault_info_updated to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1, ptr %vm_fault_info_updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %land.lhs.true42.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_get_task_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_amdkfd_is_kfd_vmid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_adjust_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_need_swiotlb(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_get_vbios_allocations(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gmc_v8_0_gart_init(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gart = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %0 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 965, i32 noundef 9, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call = tail call i32 @amdgpu_gart_init(ptr noundef %adev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %num_gpu_pages = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 2
  %2 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_gpu_pages, align 8
  %mul = shl i32 %3, 3
  %table_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 4
  %4 = ptrtoint ptr %table_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %table_size, align 8
  %gart_pte_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 6
  %5 = ptrtoint ptr %gart_pte_flags to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 16, ptr %gart_pte_flags, align 8
  %call24 = tail call i32 @amdgpu_gart_table_vram_alloc(ptr noundef %adev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call24, %if.end20 ], [ %call, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_manager_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_vram_width(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_resize_fb_bar(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_gart_location(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_table_vram_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gem_force_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_manager_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gart_table_vram_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_mc_hdr(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gtt_mgr_recover(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_reset_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 59, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 60, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 61, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 62, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 63, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware349, !13, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 64, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware350, !15, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 65, i32 1}
!16 = !{ptr @gmc_v8_0_ip_block, !17, !"gmc_v8_0_ip_block", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1760, i32 38}
!18 = !{ptr @gmc_v8_1_ip_block, !19, !"gmc_v8_1_ip_block", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1769, i32 38}
!20 = !{ptr @gmc_v8_5_ip_block, !21, !"gmc_v8_5_ip_block", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1778, i32 38}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1713, i32 10}
!24 = !{ptr @gmc_v8_0_ip_funcs, !25, !"gmc_v8_0_ip_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1712, i32 34}
!26 = !{ptr @gmc_v8_0_gmc_funcs, !27, !"gmc_v8_0_gmc_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1733, i32 38}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 780, i32 3}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gmc_v8_0_set_prt._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @gmc_v8_0_set_prt._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @gmc_v8_0_irq_funcs, !37, !"gmc_v8_0_irq_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1744, i32 42}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1446, i32 3}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gmc_v8_0_process_interrupt._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @gmc_v8_0_process_interrupt._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1448, i32 3}
!46 = !{ptr @gmc_v8_0_process_interrupt._entry.9, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gmc_v8_0_process_interrupt._entry_ptr.11, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1470, i32 3}
!50 = !{ptr @gmc_v8_0_process_interrupt._entry.12, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @gmc_v8_0_process_interrupt._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1473, i32 3}
!54 = !{ptr @gmc_v8_0_process_interrupt._entry.15, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gmc_v8_0_process_interrupt._entry_ptr.17, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1475, i32 3}
!58 = !{ptr @gmc_v8_0_process_interrupt._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gmc_v8_0_process_interrupt._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1028, i32 2}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gmc_v8_0_vm_decode_fault._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @gmc_v8_0_vm_decode_fault._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1147, i32 3}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gmc_v8_0_sw_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @gmc_v8_0_sw_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1154, i32 3}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 227, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 231, i32 15}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 236, i32 16}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 238, i32 16}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 242, i32 16}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 244, i32 16}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 248, i32 16}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 253, i32 17}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 255, i32 17}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 266, i32 37}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 274, i32 3}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @gmc_v8_0_init_microcode._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @gmc_v8_0_init_microcode._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 568, i32 3}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @gmc_v8_0_mc_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @gmc_v8_0_mc_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 965, i32 3}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1228, i32 4}
!108 = !{ptr @fiji_mgcg_cgcg_init, !109, !"fiji_mgcg_cgcg_init", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 91, i32 18}
!110 = !{ptr @golden_settings_fiji_a10, !111, !"golden_settings_fiji_a10", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 83, i32 18}
!112 = !{ptr @tonga_mgcg_cgcg_init, !113, !"tonga_mgcg_cgcg_init", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 78, i32 18}
!114 = !{ptr @golden_settings_tonga_a11, !115, !"golden_settings_tonga_a11", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 67, i32 18}
!116 = !{ptr @golden_settings_polaris11_a11, !117, !"golden_settings_polaris11_a11", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 96, i32 18}
!118 = !{ptr @golden_settings_polaris10_a11, !119, !"golden_settings_polaris10_a11", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 104, i32 18}
!120 = !{ptr @cz_mgcg_cgcg_init, !121, !"cz_mgcg_cgcg_init", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 113, i32 18}
!122 = !{ptr @stoney_mgcg_cgcg_init, !123, !"stoney_mgcg_cgcg_init", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 118, i32 18}
!124 = !{ptr @golden_settings_stoney_common, !125, !"golden_settings_stoney_common", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 124, i32 18}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 458, i32 3}
!128 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @gmc_v8_0_mc_program._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @gmc_v8_0_mc_program._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @gmc_v8_0_mc_program._entry.46, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 493, i32 3}
!133 = !{ptr @gmc_v8_0_mc_program._entry_ptr.47, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 844, i32 3}
!136 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @gmc_v8_0_gart_enable._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @gmc_v8_0_gart_enable._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 953, i32 2}
!141 = !{ptr @gmc_v8_0_gart_enable._entry.50, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @gmc_v8_0_gart_enable._entry_ptr.52, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1349, i32 3}
!145 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @gmc_v8_0_pre_soft_reset._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @gmc_v8_0_pre_soft_reset._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c", i32 1369, i32 3}
!150 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @gmc_v8_0_soft_reset._entry, !149, !"_entry", i1 false, i1 false}
!153 = !{ptr @gmc_v8_0_soft_reset._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 2162619818, i64 2162620320, i64 2162619855, i64 2162619911, i64 2162619945, i64 2162619969, i64 2162620010, i64 2162620031, i64 2162620059, i64 2162620093}
!164 = !{i8 0, i8 2}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 2162643681, i64 2162644183, i64 2162643718, i64 2162643774, i64 2162643808, i64 2162643832, i64 2162643873, i64 2162643894, i64 2162643922, i64 2162643956}
!167 = !{i64 2162744986}
