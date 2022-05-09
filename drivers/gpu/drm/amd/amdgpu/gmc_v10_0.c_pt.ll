; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_mmhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_gfxhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.amdgpu_umc_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_vmhub_funcs = type { ptr, ptr }
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
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.kiq_pm4_funcs = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.amdgpu_bo_va_mapping = type { ptr, %struct.list_head, %struct.rb_node, i64, i64, i64, i64, i64 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gmc_v10_0\00", [22 x i8] zeroinitializer }, align 32
@gmc_v10_0_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @gmc_v10_0_early_init, ptr @gmc_v10_0_late_init, ptr @gmc_v10_0_sw_init, ptr @gmc_v10_0_sw_fini, ptr null, ptr @gmc_v10_0_hw_init, ptr @gmc_v10_0_hw_fini, ptr null, ptr @gmc_v10_0_suspend, ptr @gmc_v10_0_resume, ptr @gmc_v10_0_is_idle, ptr @gmc_v10_0_wait_for_idle, ptr null, ptr null, ptr @gmc_v10_0_soft_reset, ptr null, ptr @gmc_v10_0_set_clockgating_state, ptr @gmc_v10_0_set_powergating_state, ptr @gmc_v10_0_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@gmc_v10_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 1, i32 10, i32 0, i32 0, ptr @gmc_v10_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@mmhub_v2_3_funcs = external dso_local constant %struct.amdgpu_mmhub_funcs, align 4
@mmhub_v2_0_funcs = external dso_local constant %struct.amdgpu_mmhub_funcs, align 4
@gfxhub_v2_1_funcs = external dso_local constant %struct.amdgpu_gfxhub_funcs, align 4
@gfxhub_v2_0_funcs = external dso_local constant %struct.amdgpu_gfxhub_funcs, align 4
@gmc_v10_0_gmc_funcs = internal constant { %struct.amdgpu_gmc_funcs, [60 x i8] } { %struct.amdgpu_gmc_funcs { ptr @gmc_v10_0_flush_gpu_tlb, ptr @gmc_v10_0_flush_gpu_tlb_pasid, ptr @gmc_v10_0_emit_flush_gpu_tlb, ptr @gmc_v10_0_emit_pasid_mapping, ptr null, ptr @gmc_v10_0_map_mtype, ptr @gmc_v10_0_get_vm_pde, ptr @gmc_v10_0_get_vm_pte, ptr @gmc_v10_0_get_vbios_fb_size }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error flushing GPU TLB using the SDMA (%d)!\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Timeout waiting for sem acquire in VM flush!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Timeout waiting for VM flush hub: %d!\0A\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_emu_mode = external dso_local local_unnamed_addr global i32, align 4
@gmc_v10_0_flush_gpu_tlb_pasid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 437, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: wait for kiq fence error: %ld.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gmc_v10_0_flush_gpu_tlb_pasid\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gmc_v10_0_flush_gpu_tlb_pasid._entry_ptr = internal global ptr @gmc_v10_0_flush_gpu_tlb_pasid._entry, section ".printk_index", align 4
@gmc_v10_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gmc_v10_0_vm_fault_interrupt_state, ptr @gmc_v10_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@gmc_v10_0_ecc_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @gmc_v10_0_ecc_interrupt_state, ptr @amdgpu_umc_process_ecc_irq }, [24 x i8] zeroinitializer }, align 32
@__func__.gmc_v10_0_process_interrupt = private unnamed_addr constant [28 x i8] c"gmc_v10_0_process_interrupt\00", align 1
@gmc_v10_0_process_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.gmc_v10_0_process_interrupt, ptr @.str.6, i32 155, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"amdgpu: [%s] page fault (src_id:%u ring:%u vmid:%u pasid:%u, for process %s pid %d thread %s pid %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@gmc_v10_0_process_interrupt._entry_ptr = internal global ptr @gmc_v10_0_process_interrupt._entry, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmhub\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gfxhub\00", [25 x i8] zeroinitializer }, align 32
@gmc_v10_0_process_interrupt._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.gmc_v10_0_process_interrupt, ptr @.str.6, i32 158, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"amdgpu:   in page starting at address 0x%016llx from client 0x%x (%s)\0A\00", [57 x i8] zeroinitializer }, align 32
@gmc_v10_0_process_interrupt._entry_ptr.14 = internal global ptr @gmc_v10_0_process_interrupt._entry.12, section ".printk_index", align 4
@soc15_ih_clientid_name = external dso_local local_unnamed_addr global [0 x ptr], align 4
@umc_v8_7_channel_idx_tbl = external dso_local constant [8 x [2 x i32]], align 4
@umc_v8_7_ras_funcs = external dso_local constant %struct.amdgpu_umc_ras_funcs, align 4
@gmc_v10_0_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&adev->gmc.invalidate_lock\00", [37 x i8] zeroinitializer }, align 32
@gmc_v10_0_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014amdgpu: No suitable DMA available.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gmc_v10_0_sw_init\00", [46 x i8] zeroinitializer }, align 32
@gmc_v10_0_sw_init._entry_ptr = internal global ptr @gmc_v10_0_sw_init._entry, section ".printk_index", align 4
@amdgpu_gart_size = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NAVI10 PCIE GART already initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@gmc_v10_0_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 985, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: No VRAM object for PCIE GART.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gmc_v10_0_gart_enable\00", [42 x i8] zeroinitializer }, align 32
@gmc_v10_0_gart_enable._entry_ptr = internal global ptr @gmc_v10_0_gart_enable._entry, section ".printk_index", align 4
@amdgpu_vm_fault_stop = external dso_local local_unnamed_addr global i32, align 4
@gmc_v10_0_gart_enable._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.6, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@gmc_v10_0_gart_enable._entry_ptr.23 = internal global ptr @gmc_v10_0_gart_enable._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"For SRIOV client, shouldn't do anything.\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 655617, i64 655618, i64 655619, i64 655626, i64 656128, i64 656129, i64 656130, i64 656131, i64 656132, i64 656133]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1161, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"gmc_v10_0_ip_funcs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1160, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"gmc_v10_0_ip_block\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1178, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"gmc_v10_0_gmc_funcs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 641, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 395, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 259, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 301, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 437, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"gmc_v10_0_irq_funcs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 167, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"gmc_v10_0_ecc_funcs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 172, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 149, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 156, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 843, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 913, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 818, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 985, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1018, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1073, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @gmc_v10_0_flush_gpu_tlb_pasid._entry, ptr @gmc_v10_0_flush_gpu_tlb_pasid._entry_ptr, ptr @gmc_v10_0_gart_enable._entry, ptr @gmc_v10_0_gart_enable._entry.21, ptr @gmc_v10_0_gart_enable._entry_ptr, ptr @gmc_v10_0_gart_enable._entry_ptr.23, ptr @gmc_v10_0_process_interrupt._entry, ptr @gmc_v10_0_process_interrupt._entry.12, ptr @gmc_v10_0_process_interrupt._entry_ptr, ptr @gmc_v10_0_process_interrupt._entry_ptr.14, ptr @gmc_v10_0_sw_init._entry, ptr @gmc_v10_0_sw_init._entry_ptr, ptr @.str, ptr @gmc_v10_0_ip_funcs, ptr @gmc_v10_0_ip_block, ptr @gmc_v10_0_gmc_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @gmc_v10_0_irq_funcs, ptr @gmc_v10_0_ecc_funcs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @gmc_v10_0_sw_init.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_gmc_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_flush_gpu_tlb_pasid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_ecc_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_process_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_process_interrupt._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmc_v10_0_gart_enable._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v10_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 11
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = add i32 %1, -131840
  %switch.and.i = and i32 %2, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %3 = select i1 %switch.selectcmp.i, ptr @mmhub_v2_3_funcs, ptr @mmhub_v2_0_funcs
  %funcs3.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %4 = ptrtoint ptr %funcs3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %funcs3.i, align 4
  %arrayidx.i20 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 1
  %5 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i20, align 4
  %.off.i = add i32 %6, -656128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 6
  %spec.select.i = select i1 %switch.i, ptr @gfxhub_v2_1_funcs, ptr @gfxhub_v2_0_funcs
  %7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select.i, ptr %7, align 4
  %gmc_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 38
  %9 = ptrtoint ptr %gmc_funcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gmc_funcs.i, align 4
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %if.then.i, label %entry.gmc_v10_0_set_gmc_funcs.exit_crit_edge

entry.gmc_v10_0_set_gmc_funcs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v10_0_set_gmc_funcs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %gmc_funcs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gmc_v10_0_gmc_funcs, ptr %gmc_funcs.i, align 4
  br label %gmc_v10_0_set_gmc_funcs.exit

gmc_v10_0_set_gmc_funcs.exit:                     ; preds = %if.then.i, %entry.gmc_v10_0_set_gmc_funcs.exit_crit_edge
  %vm_fault.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %12 = ptrtoint ptr %vm_fault.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %vm_fault.i, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20, i32 2
  %13 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gmc_v10_0_irq_funcs, ptr %funcs.i, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %14 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i21, label %gmc_v10_0_set_gmc_funcs.exit.gmc_v10_0_set_irq_funcs.exit_crit_edge

gmc_v10_0_set_gmc_funcs.exit.gmc_v10_0_set_irq_funcs.exit_crit_edge: ; preds = %gmc_v10_0_set_gmc_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v10_0_set_irq_funcs.exit

if.then.i21:                                      ; preds = %gmc_v10_0_set_gmc_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ecc_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40
  %16 = ptrtoint ptr %ecc_irq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %ecc_irq.i, align 8
  %funcs7.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40, i32 2
  %17 = ptrtoint ptr %funcs7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gmc_v10_0_ecc_funcs, ptr %funcs7.i, align 8
  br label %gmc_v10_0_set_irq_funcs.exit

gmc_v10_0_set_irq_funcs.exit:                     ; preds = %if.then.i21, %gmc_v10_0_set_gmc_funcs.exit.gmc_v10_0_set_irq_funcs.exit_crit_edge
  %arrayidx.i22 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 27
  %18 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 526080, i32 %19)
  %cond.i = icmp eq i32 %19, 526080
  br i1 %cond.i, label %sw.bb.i, label %gmc_v10_0_set_irq_funcs.exit.gmc_v10_0_set_umc_funcs.exit_crit_edge

gmc_v10_0_set_irq_funcs.exit.gmc_v10_0_set_umc_funcs.exit_crit_edge: ; preds = %gmc_v10_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v10_0_set_umc_funcs.exit

sw.bb.i:                                          ; preds = %gmc_v10_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %umc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116
  %20 = ptrtoint ptr %umc.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %umc.i, align 8
  %channel_inst_num.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 1
  %21 = ptrtoint ptr %channel_inst_num.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %channel_inst_num.i, align 4
  %umc_inst_num.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 2
  %22 = ptrtoint ptr %umc_inst_num.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %umc_inst_num.i, align 8
  %channel_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 3
  %23 = ptrtoint ptr %channel_offs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1024, ptr %channel_offs.i, align 4
  %channel_idx_tbl.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 4
  %24 = ptrtoint ptr %channel_idx_tbl.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @umc_v8_7_channel_idx_tbl, ptr %channel_idx_tbl.i, align 8
  %ras_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 7
  %25 = ptrtoint ptr %ras_funcs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @umc_v8_7_ras_funcs, ptr %ras_funcs.i, align 4
  br label %gmc_v10_0_set_umc_funcs.exit

gmc_v10_0_set_umc_funcs.exit:                     ; preds = %sw.bb.i, %gmc_v10_0_set_irq_funcs.exit.gmc_v10_0_set_umc_funcs.exit_crit_edge
  %shared_aperture_start = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 26
  %26 = ptrtoint ptr %shared_aperture_start to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 2305843009213693952, ptr %shared_aperture_start, align 8
  %shared_aperture_end = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 27
  %27 = ptrtoint ptr %shared_aperture_end to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 2305843013508661247, ptr %shared_aperture_end, align 8
  %private_aperture_start = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 28
  %28 = ptrtoint ptr %private_aperture_start to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1152921504606846976, ptr %private_aperture_start, align 8
  %private_aperture_end = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 29
  %29 = ptrtoint ptr %private_aperture_end to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1152921508901814271, ptr %private_aperture_end, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_late_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_gmc_allocate_vm_inv_eng(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @amdgpu_gmc_ras_late_init(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call5 = tail call i32 @amdgpu_irq_get(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %vram_width = alloca i32, align 4
  %vram_type = alloca i32, align 4
  %vram_vendor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_width) #10
  %0 = ptrtoint ptr %vram_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vram_width, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_type) #10
  %1 = ptrtoint ptr %vram_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vram_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_vendor) #10
  %2 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vram_vendor, align 4
  %gfxhub = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %3 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gfxhub, align 4
  %init = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 4
  tail call void %6(ptr noundef %handle) #10
  %funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %7 = ptrtoint ptr %funcs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs1, align 4
  %init2 = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %init2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init2, align 4
  tail call void %10(ptr noundef %handle) #10
  %invalidate_lock = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %invalidate_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @gmc_v10_0_sw_init.__key, i16 noundef signext 3) #10
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_emu_mode to i32))
  %.pr = load i32, ptr @amdgpu_emu_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp7 = icmp eq i32 %.pr, 1
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.else13_crit_edge

land.lhs.true.if.else13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %vram_type4 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 21
  %13 = ptrtoint ptr %vram_type4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %vram_type4, align 4
  %vram_width6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 14
  %14 = ptrtoint ptr %vram_width6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %vram_width6, align 8
  br label %if.end21

if.else:                                          ; preds = %entry
  br i1 %cmp7, label %if.then8, label %if.else.if.else13_crit_edge

if.else.if.else13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %vram_type10 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 21
  %15 = ptrtoint ptr %vram_type10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %vram_type10, align 4
  %vram_width12 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 14
  %16 = ptrtoint ptr %vram_width12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %vram_width12, align 8
  br label %if.end21

if.else13:                                        ; preds = %if.else.if.else13_crit_edge, %land.lhs.true.if.else13_crit_edge
  %call14 = call i32 @amdgpu_atomfirmware_get_vram_info(ptr noundef %handle, ptr noundef nonnull %vram_width, ptr noundef nonnull %vram_type, ptr noundef nonnull %vram_vendor) #10
  %17 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vram_width, align 4
  %vram_width16 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 14
  %19 = ptrtoint ptr %vram_width16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vram_width16, align 8
  %20 = ptrtoint ptr %vram_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vram_type, align 4
  %vram_type18 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 21
  %22 = ptrtoint ptr %vram_type18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %vram_type18, align 4
  %23 = ptrtoint ptr %vram_vendor to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vram_vendor, align 4
  %conv = trunc i32 %24 to i8
  %vram_vendor20 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 22
  %25 = ptrtoint ptr %vram_vendor20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %vram_vendor20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.then8, %if.then
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.end21.sw.epilog_crit_edge [
    i32 655626, label %if.end21.sw.bb_crit_edge
    i32 655617, label %if.end21.sw.bb_crit_edge119
    i32 655618, label %if.end21.sw.bb_crit_edge120
    i32 655619, label %if.end21.sw.bb_crit_edge121
    i32 656128, label %if.end21.sw.bb_crit_edge122
    i32 656130, label %if.end21.sw.bb_crit_edge123
    i32 656129, label %if.end21.sw.bb_crit_edge124
    i32 656132, label %if.end21.sw.bb_crit_edge125
    i32 656133, label %if.end21.sw.bb_crit_edge126
    i32 656131, label %if.end21.sw.bb_crit_edge127
  ]

if.end21.sw.bb_crit_edge127:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge126:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge125:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge124:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge123:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge122:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge121:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge120:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge119:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.bb_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21.sw.bb_crit_edge, %if.end21.sw.bb_crit_edge119, %if.end21.sw.bb_crit_edge120, %if.end21.sw.bb_crit_edge121, %if.end21.sw.bb_crit_edge122, %if.end21.sw.bb_crit_edge123, %if.end21.sw.bb_crit_edge124, %if.end21.sw.bb_crit_edge125, %if.end21.sw.bb_crit_edge126, %if.end21.sw.bb_crit_edge127
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 67
  %29 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %num_vmhubs, align 8
  call void @amdgpu_vm_adjust_size(ptr noundef %handle, i32 noundef 262144, i32 noundef 9, i32 noundef 3, i32 noundef 48) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end21.sw.epilog_crit_edge
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call24 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 18, i32 noundef 0, ptr noundef %vm_fault) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %sw.epilog
  %call30 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 27, i32 noundef 0, ptr noundef %vm_fault) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt, align 8
  %and34 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36:                                        ; preds = %if.end33
  %ecc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40
  %call38 = call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 23, i32 noundef 0, ptr noundef %ecc_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then36.if.end42_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %if.then36.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %mc_mask = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 17
  %32 = ptrtoint ptr %mc_mask to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 281474976710655, ptr %mc_mask, align 8
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle, align 8
  %call.i = call i32 @dma_set_mask(ptr noundef %34, i64 noundef 17592186044415) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %34, i64 noundef 17592186044415) #10
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %35 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs.i, align 8
  %get_memsize.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %get_memsize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_memsize.i, align 4
  %call.i113 = call i32 %38(ptr noundef %handle) #10
  %conv.i = zext i32 %call.i113 to i64
  %mul1.i = shl nuw nsw i64 %conv.i, 20
  %gmc.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62
  %mc_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 2
  %39 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %mul1.i, ptr %mc_vram_size.i, align 8
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 15
  %40 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %mul1.i, ptr %real_vram_size.i, align 8
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 8
  %and.i = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i114, label %if.end51.if.end8.i_crit_edge

if.end51.if.end8.i_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i114:                                     ; preds = %if.end51
  %call5.i = call i32 @amdgpu_device_resize_fb_bar(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then.i114.if.end8.i_crit_edge, label %if.then.i114.cleanup_crit_edge

if.then.i114.cleanup_crit_edge:                   ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i114.if.end8.i_crit_edge:                 ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i114.if.end8.i_crit_edge, %if.end51.if.end8.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %43 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 47
  %45 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %resource.i, align 8
  %aper_base.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 1
  %47 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %aper_base.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 47, i32 0, i32 1
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i115 = icmp eq i32 %49, 0
  br i1 %cmp.i115, label %if.end8.i.if.end55_crit_edge, label %cond.false.i

if.end8.i.if.end55_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

cond.false.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %49, 1
  %add.i = sub i32 %sub.i, %51
  br label %if.end55

if.end55:                                         ; preds = %cond.false.i, %if.end8.i.if.end55_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end8.i.if.end55_crit_edge ]
  %52 = ptrtoint ptr %gmc.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i, ptr %gmc.i, align 8
  %conv25.i = zext i32 %cond.i to i64
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 3
  %53 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %real_vram_size.i, align 8
  %55 = call i64 @llvm.umin.i64(i64 %54, i64 %conv25.i) #10
  %56 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %visible_vram_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_gart_size to i32))
  %57 = load i32, ptr @amdgpu_gart_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp39.i = icmp eq i32 %57, -1
  %conv43.i = sext i32 %57 to i64
  %shl.i = shl nsw i64 %conv43.i, 20
  %shl.sink.i = select i1 %cmp39.i, i64 536870912, i64 %shl.i
  %58 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %shl.sink.i, ptr %58, align 8
  %60 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gfxhub, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call.i.i = call i64 %63(ptr noundef %handle) #10
  %physical_node_id.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 3
  %64 = ptrtoint ptr %physical_node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %physical_node_id.i.i, align 8
  %conv.i.i = zext i32 %65 to i64
  %node_segment_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 2
  %66 = ptrtoint ptr %node_segment_size.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %node_segment_size.i.i, align 8
  %mul.i.i = mul i64 %67, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %call.i.i
  call void @amdgpu_gmc_vram_location(ptr noundef %handle, ptr noundef %gmc.i, i64 noundef %add.i.i) #10
  call void @amdgpu_gmc_gart_location(ptr noundef %handle, ptr noundef %gmc.i) #10
  call void @amdgpu_gmc_agp_location(ptr noundef %handle, ptr noundef %gmc.i) #10
  %68 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gfxhub, align 4
  %get_mc_fb_offset.i.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %get_mc_fb_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %get_mc_fb_offset.i.i, align 4
  %call6.i.i = call i64 %71(ptr noundef %handle) #10
  %vram_base_offset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 10
  %72 = ptrtoint ptr %physical_node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %physical_node_id.i.i, align 8
  %conv10.i.i = zext i32 %73 to i64
  %74 = ptrtoint ptr %node_segment_size.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %node_segment_size.i.i, align 8
  %mul14.i.i = mul i64 %75, %conv10.i.i
  %add17.i.i = add i64 %mul14.i.i, %call6.i.i
  %76 = ptrtoint ptr %vram_base_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %add17.i.i, ptr %vram_base_offset.i.i, align 8
  call void @amdgpu_gmc_get_vbios_allocations(ptr noundef %handle) #10
  call void @amdgpu_gmc_get_reserved_allocation(ptr noundef %handle) #10
  %call56 = call i32 @amdgpu_bo_init(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %call60 = call fastcc i32 @gmc_v10_0_gart_init(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %first_kfd_vmid = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 1
  %77 = ptrtoint ptr %first_kfd_vmid to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8, ptr %first_kfd_vmid, align 8
  call void @amdgpu_vm_manager_init(ptr noundef %handle) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then.i114.cleanup_crit_edge, %do.end49, %if.then36.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end49 ], [ 0, %if.end63 ], [ %call24, %sw.epilog.cleanup_crit_edge ], [ %call30, %if.end27.cleanup_crit_edge ], [ %call38, %if.then36.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ %call60, %if.end59.cleanup_crit_edge ], [ %call5.i, %if.then.i114.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_vendor) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_type) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_width) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_vm_manager_fini(ptr noundef %handle) #10
  tail call void @amdgpu_gart_table_vram_free(ptr noundef %handle) #10
  tail call void @amdgpu_gem_force_release(ptr noundef %handle) #10
  tail call void @amdgpu_bo_fini(ptr noundef %handle) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gfxhub = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %0 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gfxhub, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %utcl2_harvest = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %utcl2_harvest to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %utcl2_harvest, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %handle) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63
  %4 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gart.i, align 8
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %in_gpu_reset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 141
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %in_gpu_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %in_gpu_reset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end3.i_crit_edge, label %land.lhs.true.i.skip_pin_bo.i_crit_edge

land.lhs.true.i.skip_pin_bo.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_pin_bo.i

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %gtt_mgr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 9
  %call4.i = tail call i32 @amdgpu_gtt_mgr_recover(ptr noundef %gtt_mgr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.skip_pin_bo.i_crit_edge, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i.skip_pin_bo.i_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_pin_bo.i

skip_pin_bo.i:                                    ; preds = %if.end3.i.skip_pin_bo.i_crit_edge, %land.lhs.true.i.skip_pin_bo.i_crit_edge
  %12 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gfxhub, align 4
  %gart_enable.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %gart_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gart_enable.i, align 4
  %call8.i = tail call i32 %15(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %skip_pin_bo.i.cleanup_crit_edge

skip_pin_bo.i.cleanup_crit_edge:                  ; preds = %skip_pin_bo.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.i:                                       ; preds = %skip_pin_bo.i
  %funcs12.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %16 = ptrtoint ptr %funcs12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs12.i, align 4
  %gart_enable13.i = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %gart_enable13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gart_enable13.i, align 4
  %call14.i = tail call i32 %19(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end9, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end11.i
  %funcs18.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 102, i32 1
  %20 = ptrtoint ptr %funcs18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs18.i, align 4
  %init_registers.i = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %init_registers.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_registers.i, align 4
  tail call void %23(ptr noundef %handle) #10
  %24 = ptrtoint ptr %funcs18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs18.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %handle, ptr noundef null) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32))
  %28 = load i32, ptr @amdgpu_vm_fault_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp21.i = icmp ne i32 %28, 2
  %29 = ptrtoint ptr %gfxhub to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gfxhub, align 4
  %set_fault_enable_default.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %set_fault_enable_default.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_fault_enable_default.i, align 4
  tail call void %32(ptr noundef %handle, i1 noundef zeroext %cmp21.i) #10
  %33 = ptrtoint ptr %funcs12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs12.i, align 4
  %set_fault_enable_default28.i = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %set_fault_enable_default28.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_fault_enable_default28.i, align 4
  tail call void %36(ptr noundef %handle, i1 noundef zeroext %cmp21.i) #10
  tail call void @gmc_v10_0_flush_gpu_tlb(ptr noundef %handle, i32 noundef 0, i32 noundef 1, i32 noundef 0) #10
  tail call void @gmc_v10_0_flush_gpu_tlb(ptr noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %gart_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 7
  %37 = ptrtoint ptr %gart_size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %gart_size.i, align 8
  %shr.i = lshr i64 %38, 20
  %conv.i = trunc i64 %shr.i to i32
  %39 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gart.i, align 8
  %call35.i = tail call i64 @amdgpu_bo_gpu_offset(ptr noundef %40) #10
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv.i, i64 noundef %call35.i) #13
  %ready.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 63, i32 5
  %41 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ready.i, align 4
  %funcs10 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 116, i32 6
  %42 = ptrtoint ptr %funcs10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %funcs10, align 8
  %tobool11.not = icmp eq ptr %43, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true12:                                  ; preds = %if.end9
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool15.not = icmp eq ptr %45, null
  br i1 %tobool15.not, label %land.lhs.true12.cleanup_crit_edge, label %if.then16

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %45(ptr noundef %handle) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %skip_pin_bo.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %land.lhs.true12.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call14.i, %if.end11.i.cleanup_crit_edge ], [ %call8.i, %skip_pin_bo.i.cleanup_crit_edge ], [ %call4.i, %if.end3.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gfxhub.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %0 = ptrtoint ptr %gfxhub.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gfxhub.i, align 4
  %gart_disable.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gart_disable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gart_disable.i, align 4
  tail call void %3(ptr noundef %handle) #10
  %funcs1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %4 = ptrtoint ptr %funcs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs1.i, align 4
  %gart_disable2.i = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gart_disable2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gart_disable2.i, align 4
  tail call void %7(ptr noundef %handle) #10
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ecc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %ecc_irq, i32 noundef 0) #10
  %vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call2 = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %vm_fault, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gfxhub.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 105
  %0 = ptrtoint ptr %gfxhub.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gfxhub.i.i, align 4
  %gart_disable.i.i = getelementptr inbounds %struct.amdgpu_gfxhub_funcs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gart_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gart_disable.i.i, align 4
  tail call void %3(ptr noundef %handle) #10
  %funcs1.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %4 = ptrtoint ptr %funcs1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs1.i.i, align 4
  %gart_disable2.i.i = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gart_disable2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gart_disable2.i.i, align 4
  tail call void %7(ptr noundef %handle) #10
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24) #10
  br label %gmc_v10_0_hw_fini.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ecc_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 40
  %call.i = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %ecc_irq.i, i32 noundef 0) #10
  %vm_fault.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 20
  %call2.i = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %vm_fault.i, i32 noundef 0) #10
  br label %gmc_v10_0_hw_fini.exit

gmc_v10_0_hw_fini.exit:                           ; preds = %if.end.i, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gmc_v10_0_hw_init(ptr noundef %handle)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gmc_v10_0_is_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v10_0_wait_for_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v10_0_soft_reset(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %set_clockgating = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %set_clockgating to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_clockgating, align 4
  %call = tail call i32 %3(ptr noundef %handle, i32 noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131327, i32 %5)
  %cmp = icmp ugt i32 %5, 131327
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @athub_v2_1_set_clockgating(ptr noundef %handle, i32 noundef %state) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @athub_v2_0_set_clockgating(ptr noundef %handle, i32 noundef %state) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %call4, %if.else ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v10_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v10_0_get_clockgating_state(ptr noundef %handle, ptr noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 655619, i32 %1)
  %cmp = icmp eq i32 %1, 655619
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 104, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %get_clockgating = getelementptr inbounds %struct.amdgpu_mmhub_funcs, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_clockgating to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_clockgating, align 4
  tail call void %5(ptr noundef %handle, ptr noundef %flags) #10
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 12
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131327, i32 %7)
  %cmp5 = icmp ugt i32 %7, 131327
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @athub_v2_1_get_clockgating(ptr noundef %handle, ptr noundef %flags) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @athub_v2_0_get_clockgating(ptr noundef %handle, ptr noundef %flags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v10_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid, i32 noundef %vmhub, i32 noundef %flush_type) #1 align 64 {
entry:
  %fence = alloca ptr, align 4
  %job = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_funcs_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %0 = ptrtoint ptr %buffer_funcs_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_funcs_ring, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #10
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #10
  %3 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !68
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 102, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %adev, ptr noundef null) #10
  %ready = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 3, i32 17
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt, align 8
  %12 = and i32 %11, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %.not = icmp eq i32 %12, 4
  br i1 %.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %reset_sem = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 143
  %call = tail call i32 @down_read_trylock(ptr noundef %reset_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end_crit_edge, label %if.then

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  %vmhub_funcs = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 13
  %13 = ptrtoint ptr %vmhub_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vmhub_funcs, align 4
  %get_invalidate_req = getelementptr inbounds %struct.amdgpu_vmhub_funcs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %get_invalidate_req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_invalidate_req, align 4
  %call10 = tail call i32 %16(i32 noundef %vmid, i32 noundef %flush_type) #10
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 3
  %17 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_inv_eng0_req, align 4
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %19 = ptrtoint ptr %eng_distance to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eng_distance, align 4
  %mul = mul i32 %20, 17
  %add = add i32 %mul, %18
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 4
  %21 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_inv_eng0_ack, align 4
  %add13 = add i32 %22, %mul
  %shl = shl nuw i32 1, %vmid
  tail call void @amdgpu_virt_kiq_reg_write_reg_wait(ptr noundef %adev, i32 noundef %add, i32 noundef %add13, i32 noundef %call10, i32 noundef %shl) #10
  tail call void @up_read(ptr noundef %reset_sem) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gtt_window_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 6
  tail call void @mutex_lock_nested(ptr noundef %gtt_window_lock, i32 noundef 0) #10
  %23 = zext i32 %vmhub to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %vmhub, label %do.body24 [
    i32 1, label %if.then16
    i32 0, label %do.end30
  ], !prof !70

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gmc_v10_0_flush_vm_hub(ptr noundef %adev, i32 noundef %vmid, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef %gtt_window_lock) #10
  br label %cleanup

do.body24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 353, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.end30:                                         ; preds = %if.end
  %buffer_funcs_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 5
  %24 = ptrtoint ptr %buffer_funcs_enabled to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buffer_funcs_enabled, align 8, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not = icmp eq i8 %25, 0
  br i1 %tobool32.not, label %do.end30.if.then44_crit_edge, label %lor.lhs.false33

do.end30.if.then44_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false33:                                  ; preds = %do.end30
  %ib_pool_ready = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 91
  %26 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ib_pool_ready, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool34.not = icmp eq i8 %27, 0
  br i1 %tobool34.not, label %lor.lhs.false33.if.then44_crit_edge, label %lor.lhs.false35

lor.lhs.false33.if.then44_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #10
  %28 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %lor.lhs.false35.if.then44_crit_edge

lor.lhs.false35.if.then44_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %ready40 = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 3, i32 17
  %30 = ptrtoint ptr %ready40 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ready40, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp42 = icmp eq i8 %31, 0
  br i1 %cmp42, label %lor.lhs.false38.if.then44_crit_edge, label %if.end47

lor.lhs.false38.if.then44_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false38.if.then44_crit_edge, %lor.lhs.false35.if.then44_crit_edge, %lor.lhs.false33.if.then44_crit_edge, %do.end30.if.then44_crit_edge
  tail call fastcc void @gmc_v10_0_flush_vm_hub(ptr noundef %adev, i32 noundef %vmid, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %gtt_window_lock) #10
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false38
  %call48 = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %adev, i32 noundef 64, i32 noundef 1, ptr noundef nonnull %job) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.error_alloc_crit_edge

if.end47.error_alloc_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_alloc

if.end51:                                         ; preds = %if.end47
  %gart = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %32 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gart, align 8
  %call52 = call i64 @amdgpu_gmc_pd_addr(ptr noundef %33) #10
  %34 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %job, align 4
  %vm_pd_addr = getelementptr inbounds %struct.amdgpu_job, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %vm_pd_addr to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call52, ptr %vm_pd_addr, align 8
  %vm_needs_flush = getelementptr inbounds %struct.amdgpu_job, ptr %35, i32 0, i32 10
  %37 = ptrtoint ptr %vm_needs_flush to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %vm_needs_flush, align 8
  %funcs53 = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %funcs53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs53, align 4
  %nop = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %nop to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nop, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %35, i32 0, i32 4
  %42 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ibs, align 4
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length_dw, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx55 = getelementptr i32, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %41, ptr %arrayidx55, align 4
  %49 = load ptr, ptr %funcs53, align 4
  %pad_ib = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %49, i32 0, i32 25
  %50 = ptrtoint ptr %pad_ib to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pad_ib, align 4
  %52 = load ptr, ptr %job, align 4
  %ibs57 = getelementptr inbounds %struct.amdgpu_job, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %ibs57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ibs57, align 4
  call void %51(ptr noundef %1, ptr noundef %54) #10
  %55 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %job, align 4
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 7
  %call60 = call i32 @amdgpu_job_submit(ptr noundef %56, ptr noundef %entity, ptr noundef null, ptr noundef nonnull %fence) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %error_submit

if.end63:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %gtt_window_lock) #10
  %57 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fence, align 4
  %call.i = call i32 @dma_fence_wait_timeout(ptr noundef %58, i1 noundef zeroext false, i32 noundef 2147483647) #10
  %59 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fence, align 4
  call fastcc void @dma_fence_put(ptr noundef %60)
  br label %cleanup

error_submit:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %62) #10
  br label %error_alloc

error_alloc:                                      ; preds = %error_submit, %if.end47.error_alloc_crit_edge
  %r.0 = phi i32 [ %call48, %if.end47.error_alloc_crit_edge ], [ %call60, %error_submit ]
  call void @mutex_unlock(ptr noundef %gtt_window_lock) #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %r.0) #10
  br label %cleanup

cleanup:                                          ; preds = %error_alloc, %if.end63, %if.then44, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_flush_gpu_tlb_pasid(ptr noundef %adev, i16 noundef zeroext %pasid, i32 noundef %flush_type, i1 noundef zeroext %all_hub) #1 align 64 {
entry:
  %seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #10
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %seq, align 4, !annotation !68
  %ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_emu_mode to i32))
  %1 = load i32, ptr @amdgpu_emu_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %ready = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 3, i32 17
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end22_crit_edge, label %if.then

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %ring_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 2
  tail call void @_raw_spin_lock(ptr noundef %ring_lock) #10
  %pmf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 5
  %4 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmf, align 4
  %invalidate_tlbs_size = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %invalidate_tlbs_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %invalidate_tlbs_size, align 4
  %add = add i32 %7, 8
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring1, i32 noundef %add) #10
  %8 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmf, align 4
  %kiq_invalidate_tlbs = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %kiq_invalidate_tlbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kiq_invalidate_tlbs, align 4
  tail call void %11(ptr noundef %ring1, i16 noundef zeroext %pasid, i32 noundef %flush_type, i1 noundef zeroext %all_hub) #10
  %call9 = call i32 @amdgpu_fence_emit_polling(ptr noundef %ring1, ptr noundef nonnull %seq, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_ring_undo(ptr noundef %ring1) #10
  call void @_raw_spin_unlock(ptr noundef %ring_lock) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @amdgpu_ring_commit(ptr noundef %ring1) #10
  call void @_raw_spin_unlock(ptr noundef %ring_lock) #10
  %12 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq, align 4
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %14 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usec_timeout, align 8
  %call18 = call i32 @amdgpu_fence_wait_polling(ptr noundef %ring1, i32 noundef %13, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %call18) #13
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %if.end22
  %vmid.083 = phi i32 [ 1, %if.end22 ], [ %inc43, %for.inc42.for.body_crit_edge ]
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add.i = add nuw nsw i32 %vmid.083, 12
  %add3.i = add i32 %add.i, %21
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add3.i, i32 noundef 0) #10
  %conv4.i = trunc i32 %call.i to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %conv4.i, i16 %pasid)
  %cmp31 = icmp eq i16 %conv4.i, %pasid
  %or.cond = and i1 %tobool.i, %cmp31
  br i1 %or.cond, label %if.then33, label %for.inc42

if.then33:                                        ; preds = %for.body
  br i1 %all_hub, label %for.cond36.preheader, label %if.else

for.cond36.preheader:                             ; preds = %if.then33
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 67
  %22 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_vmhubs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp3784.not = icmp eq i32 %23, 0
  br i1 %cmp3784.not, label %for.cond36.preheader.cleanup_crit_edge, label %for.cond36.preheader.for.body39_crit_edge

for.cond36.preheader.for.body39_crit_edge:        ; preds = %for.cond36.preheader
  br label %for.body39

for.cond36.preheader.cleanup_crit_edge:           ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.cond36.preheader.for.body39_crit_edge
  %i.085 = phi i32 [ %inc, %for.body39.for.body39_crit_edge ], [ 0, %for.cond36.preheader.for.body39_crit_edge ]
  tail call void @gmc_v10_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid.083, i32 noundef %i.085, i32 noundef %flush_type)
  %inc = add nuw i32 %i.085, 1
  %24 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_vmhubs, align 8
  %cmp37 = icmp ult i32 %inc, %25
  br i1 %cmp37, label %for.body39.for.body39_crit_edge, label %for.body39.cleanup_crit_edge

for.body39.cleanup_crit_edge:                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gmc_v10_0_flush_gpu_tlb(ptr noundef %adev, i32 noundef %vmid.083, i32 noundef 0, i32 noundef %flush_type)
  br label %cleanup

for.inc42:                                        ; preds = %for.body
  %inc43 = add nuw nsw i32 %vmid.083, 1
  %exitcond.not = icmp eq i32 %inc43, 16
  br i1 %exitcond.not, label %for.inc42.cleanup_crit_edge, label %for.inc42.for.body_crit_edge

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc42.cleanup_crit_edge:                      ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc42.cleanup_crit_edge, %if.else, %for.body39.cleanup_crit_edge, %for.cond36.preheader.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then11
  %retval.0 = phi i32 [ -62, %if.then11 ], [ -62, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %for.cond36.preheader.cleanup_crit_edge ], [ 0, %for.body39.cleanup_crit_edge ], [ 0, %for.inc42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gmc_v10_0_emit_flush_gpu_tlb(ptr noundef %ring, i32 noundef %vmid, i64 noundef returned %pd_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub, align 4
  %vmhub.off.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vmhub.off.i)
  %switch.i = icmp ult i32 %vmhub.off.i, 2
  br i1 %switch.i, label %land.rhs.i, label %entry.gmc_v10_0_use_invalidate_semaphore.exit_crit_edge

entry.gmc_v10_0_use_invalidate_semaphore.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v10_0_use_invalidate_semaphore.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br label %gmc_v10_0_use_invalidate_semaphore.exit

gmc_v10_0_use_invalidate_semaphore.exit:          ; preds = %land.rhs.i, %entry.gmc_v10_0_use_invalidate_semaphore.exit_crit_edge
  %8 = phi i1 [ %tobool.not.i, %land.rhs.i ], [ false, %entry.gmc_v10_0_use_invalidate_semaphore.exit_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5
  %vmhub_funcs = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 13
  %9 = ptrtoint ptr %vmhub_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vmhub_funcs, align 4
  %get_invalidate_req = getelementptr inbounds %struct.amdgpu_vmhub_funcs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %get_invalidate_req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_invalidate_req, align 4
  %call5 = tail call i32 %12(i32 noundef %vmid, i32 noundef 0) #10
  %vm_inv_eng = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 37
  %13 = ptrtoint ptr %vm_inv_eng to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_inv_eng, align 4
  br i1 %8, label %if.then, label %gmc_v10_0_use_invalidate_semaphore.exit.if.end_crit_edge

gmc_v10_0_use_invalidate_semaphore.exit.if.end_crit_edge: ; preds = %gmc_v10_0_use_invalidate_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %gmc_v10_0_use_invalidate_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs, align 4
  %emit_reg_wait = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %16, i32 0, i32 34
  %17 = ptrtoint ptr %emit_reg_wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %emit_reg_wait, align 4
  %vm_inv_eng0_sem = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 2
  %19 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_inv_eng0_sem, align 4
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 10
  %21 = ptrtoint ptr %eng_distance to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eng_distance, align 4
  %mul = mul i32 %22, %14
  %add = add i32 %mul, %20
  tail call void %18(ptr noundef %ring, i32 noundef %add, i32 noundef 1, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %gmc_v10_0_use_invalidate_semaphore.exit.if.end_crit_edge
  %23 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %emit_wreg, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 9
  %29 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctx_addr_distance, align 4
  %mul8 = mul i32 %30, %vmid
  %add9 = add i32 %mul8, %28
  %conv = trunc i64 %pd_addr to i32
  tail call void %26(ptr noundef %ring, i32 noundef %add9, i32 noundef %conv) #10
  %31 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs, align 4
  %emit_wreg11 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %emit_wreg11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %emit_wreg11, align 4
  %ctx0_ptb_addr_hi32 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 1
  %35 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctx0_ptb_addr_hi32, align 4
  %37 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctx_addr_distance, align 4
  %mul13 = mul i32 %38, %vmid
  %add14 = add i32 %mul13, %36
  %shr = lshr i64 %pd_addr, 32
  %conv16 = trunc i64 %shr to i32
  tail call void %34(ptr noundef %ring, i32 noundef %add14, i32 noundef %conv16) #10
  %39 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs, align 4
  %emit_reg_write_reg_wait = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %40, i32 0, i32 35
  %41 = ptrtoint ptr %emit_reg_write_reg_wait to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %emit_reg_write_reg_wait, align 4
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 3
  %43 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vm_inv_eng0_req, align 4
  %eng_distance18 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 10
  %45 = ptrtoint ptr %eng_distance18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eng_distance18, align 4
  %mul19 = mul i32 %46, %14
  %add20 = add i32 %mul19, %44
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 4
  %47 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_inv_eng0_ack, align 4
  %add23 = add i32 %48, %mul19
  %shl = shl nuw i32 1, %vmid
  tail call void %42(ptr noundef %ring, i32 noundef %add20, i32 noundef %add23, i32 noundef %call5, i32 noundef %shl) #10
  br i1 %8, label %if.then25, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs, align 4
  %emit_wreg27 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %50, i32 0, i32 33
  %51 = ptrtoint ptr %emit_wreg27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %emit_wreg27, align 4
  %vm_inv_eng0_sem28 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 2
  %53 = ptrtoint ptr %vm_inv_eng0_sem28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vm_inv_eng0_sem28, align 4
  %55 = ptrtoint ptr %eng_distance18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %eng_distance18, align 4
  %mul30 = mul i32 %56, %14
  %add31 = add i32 %mul30, %54
  tail call void %52(ptr noundef %ring, i32 noundef %add31, i32 noundef 0) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end.if.end32_crit_edge
  ret i64 %pd_addr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v10_0_emit_pasid_mapping(ptr noundef %ring, i32 noundef %vmid, i32 noundef %pasid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 21
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add9 = add i32 %9, 16
  %.pn = select i1 %cmp, i32 %9, i32 %add9
  %reg.0 = add i32 %.pn, %vmid
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 33
  %10 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emit_wreg, align 4
  tail call void %11(ptr noundef %ring, i32 noundef %reg.0, i32 noundef %pasid) #10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @gmc_v10_0_map_mtype(ptr nocapture noundef readnone %adev, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %flags, i32 %flags, i32 27)
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %0, label %entry.return_crit_edge [
    i32 4, label %sw.bb4
    i32 3, label %sw.bb3
    i32 2, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %entry.return_crit_edge
  %retval.0 = phi i64 [ 844424930131968, %sw.bb4 ], [ 562949953421312, %sw.bb3 ], [ 281474976710656, %sw.bb2 ], [ 0, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmc_v10_0_get_vm_pde(ptr noundef %adev, i32 noundef %level, ptr nocapture noundef %addr, ptr nocapture noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %2 = and i64 %1, 18014398509481986
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %call = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %5) #10
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call, ptr %addr, align 8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %addr, align 8
  %and3 = and i64 %8, -281474976710593
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %do.end12, label %do.body8, !prof !72

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 582, 0\0A.popsection", ""() #10, !srcloc !73
  unreachable

do.end12:                                         ; preds = %do.body
  %translate_further = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %9 = ptrtoint ptr %translate_further to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %translate_further, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %do.end12.if.end31_crit_edge, label %if.end15

do.end12.if.end31_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end15:                                         ; preds = %do.end12
  %11 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %level, label %if.end15.if.end31_crit_edge [
    i32 1, label %if.then16
    i32 2, label %if.then22
  ]

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then16:                                        ; preds = %if.end15
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags, align 8
  %and17 = and i64 %13, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.then16.if.end31_crit_edge

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i64 %13, 5188146770730811392
  br label %if.end31.sink.split

if.then22:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags, align 8
  %and23 = and i64 %15, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %and26 = and i64 %15, -18014398509481985
  br label %if.end31.sink.split

if.else27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %or28 = or i64 %15, 72057594037927936
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else27, %if.then25, %if.then19
  %or28.sink = phi i64 [ %or28, %if.else27 ], [ %and26, %if.then25 ], [ %or, %if.then19 ]
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or28.sink, ptr %flags, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.then16.if.end31_crit_edge, %if.end15.if.end31_crit_edge, %do.end12.if.end31_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gmc_v10_0_get_vm_pte(ptr nocapture noundef readnone %adev, ptr nocapture noundef readonly %mapping, ptr nocapture noundef %flags) #0 align 64 {
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
  %and.masked = and i64 %1, -1970324836974609
  %and3 = or i64 %and2, %and.masked
  store i64 %and3, ptr %flags, align 8
  %4 = load i64, ptr %flags1, align 8
  %and5 = and i64 %4, 1970324836974592
  %or6 = or i64 %and5, %and3
  store i64 %or6, ptr %flags, align 8
  %5 = load i64, ptr %flags1, align 8
  %and8 = and i64 %5, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool.not = icmp eq i64 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or12 = and i64 %or6, -38280596832649224
  %and13 = or i64 %or12, 38280596832649222
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %and13, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_get_vbios_fb_size(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 12
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 20) #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %13, 12
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %cond.end
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and23 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else.cond.false47_crit_edge, label %land.lhs.true25

if.else.cond.false47_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false47

land.lhs.true25:                                  ; preds = %if.else
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false47_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false47_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false47

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_rreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg34, align 4
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false47_crit_edge, label %cond.true36

land.lhs.true30.cond.false47_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx42, align 8
  %arrayidx44 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %23, 1514
  %call46 = tail call i32 %19(ptr noundef %adev, i32 noundef %add45, i32 noundef 0, i32 noundef 20) #10
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true30.cond.false47_crit_edge, %land.lhs.true25.cond.false47_crit_edge, %if.else.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx49, align 8
  %arrayidx51 = getelementptr i32, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %27, 1514
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52, i32 noundef 0) #10
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true36
  %cond55 = phi i32 [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt, align 8
  %and58 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %cond.end54.cond.false82_crit_edge, label %land.lhs.true60

cond.end54.cond.false82_crit_edge:                ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false82

land.lhs.true60:                                  ; preds = %cond.end54
  %funcs63 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %30 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs63, align 4
  %tobool64.not = icmp eq ptr %31, null
  br i1 %tobool64.not, label %land.lhs.true60.cond.false82_crit_edge, label %land.lhs.true65

land.lhs.true60.cond.false82_crit_edge:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false82

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %sriov_rreg69 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %sriov_rreg69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_rreg69, align 4
  %tobool70.not = icmp eq ptr %33, null
  br i1 %tobool70.not, label %land.lhs.true65.cond.false82_crit_edge, label %cond.true71

land.lhs.true65.cond.false82_crit_edge:           ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false82

cond.true71:                                      ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx77 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %34 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx77, align 8
  %arrayidx79 = getelementptr i32, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx79, align 4
  %add80 = add i32 %37, 1543
  %call81 = tail call i32 %33(ptr noundef %adev, i32 noundef %add80, i32 noundef 0, i32 noundef 20) #10
  br label %cond.end89

cond.false82:                                     ; preds = %land.lhs.true65.cond.false82_crit_edge, %land.lhs.true60.cond.false82_crit_edge, %cond.end54.cond.false82_crit_edge
  %arrayidx84 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 20
  %38 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx84, align 8
  %arrayidx86 = getelementptr i32, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx86, align 4
  %add87 = add i32 %41, 1543
  %call88 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add87, i32 noundef 0) #10
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false82, %cond.true71
  %cond90 = phi i32 [ %call81, %cond.true71 ], [ %call88, %cond.false82 ]
  %and93 = and i32 %cond90, 16383
  %42 = lshr i32 %cond55, 14
  %mul = and i32 %42, 65532
  %mul95 = mul nuw nsw i32 %mul, %and93
  br label %if.end

if.end:                                           ; preds = %cond.end89, %cond.end.if.end_crit_edge
  %size.0 = phi i32 [ %mul95, %cond.end89 ], [ 9437184, %cond.end.if.end_crit_edge ]
  ret i32 %size.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_kiq_reg_write_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmc_v10_0_flush_vm_hub(ptr noundef %adev, i32 noundef %vmid, i32 noundef %vmhub) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vmhub.off.i = add i32 %vmhub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vmhub.off.i)
  %switch.i = icmp ult i32 %vmhub.off.i, 2
  br i1 %switch.i, label %land.rhs.i, label %entry.gmc_v10_0_use_invalidate_semaphore.exit_crit_edge

entry.gmc_v10_0_use_invalidate_semaphore.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gmc_v10_0_use_invalidate_semaphore.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br label %gmc_v10_0_use_invalidate_semaphore.exit

gmc_v10_0_use_invalidate_semaphore.exit:          ; preds = %land.rhs.i, %entry.gmc_v10_0_use_invalidate_semaphore.exit_crit_edge
  %2 = phi i1 [ %tobool.not.i, %land.rhs.i ], [ false, %entry.gmc_v10_0_use_invalidate_semaphore.exit_crit_edge ]
  %vmhub_funcs = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 13
  %3 = ptrtoint ptr %vmhub_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vmhub_funcs, align 4
  %get_invalidate_req = getelementptr inbounds %struct.amdgpu_vmhub_funcs, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get_invalidate_req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_invalidate_req, align 4
  %call2 = tail call i32 %6(i32 noundef %vmid, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vmhub)
  %cmp = icmp eq i32 %vmhub, 0
  %conv = select i1 %cmp, i8 1, i8 11
  %invalidate_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 30
  tail call void @_raw_spin_lock(ptr noundef %invalidate_lock) #10
  br i1 %2, label %for.cond.preheader, label %gmc_v10_0_use_invalidate_semaphore.exit.if.end32_crit_edge

gmc_v10_0_use_invalidate_semaphore.exit.if.end32_crit_edge: ; preds = %gmc_v10_0_use_invalidate_semaphore.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.cond.preheader:                               ; preds = %gmc_v10_0_use_invalidate_semaphore.exit
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp31.not = icmp eq i32 %8, 0
  br i1 %cmp31.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %vm_inv_eng0_sem = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 2
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %conv16 = zext i8 %conv to i32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.body.cond.false_crit_edge, label %land.lhs.true

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sriov_rreg, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_inv_eng0_sem, align 4
  %17 = ptrtoint ptr %eng_distance to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eng_distance, align 4
  %mul = mul i32 %18, 17
  %add = add i32 %mul, %16
  %call17 = tail call i32 %14(ptr noundef %adev, i32 noundef %add, i32 noundef 6, i32 noundef %conv16) #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %19 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_inv_eng0_sem, align 4
  %21 = ptrtoint ptr %eng_distance to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eng_distance, align 4
  %mul20 = mul i32 %22, 17
  %add21 = add i32 %mul20, %20
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i32 [ %call17, %cond.true ], [ %call22, %cond.false ]
  %and24 = and i32 %cond23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  %inc = add nuw i32 %i.02, 1
  %24 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usec_timeout, align 8
  %cmp3 = icmp ult i32 %inc, %25
  br i1 %cmp3, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %cond.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.02, %cond.end.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  %26 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %27)
  %cmp28.not = icmp ult i32 %i.0.lcssa, %27
  br i1 %cmp28.not, label %for.end.if.end32_crit_edge, label %if.then30

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.end.if.end32_crit_edge, %gmc_v10_0_use_invalidate_semaphore.exit.if.end32_crit_edge
  %virt33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %28 = ptrtoint ptr %virt33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt33, align 8
  %and35 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end32.cond.false56_crit_edge, label %land.lhs.true37

if.end32.cond.false56_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false56

land.lhs.true37:                                  ; preds = %if.end32
  %funcs40 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %30 = ptrtoint ptr %funcs40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs40, align 4
  %tobool41.not = icmp eq ptr %31, null
  br i1 %tobool41.not, label %land.lhs.true37.cond.false56_crit_edge, label %land.lhs.true42

land.lhs.true37.cond.false56_crit_edge:           ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false56

land.lhs.true42:                                  ; preds = %land.lhs.true37
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_wreg, align 4
  %tobool46.not = icmp eq ptr %33, null
  br i1 %tobool46.not, label %land.lhs.true42.cond.false56_crit_edge, label %cond.true47

land.lhs.true42.cond.false56_crit_edge:           ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false56

cond.true47:                                      ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 3
  %34 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vm_inv_eng0_req, align 4
  %eng_distance52 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %36 = ptrtoint ptr %eng_distance52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %eng_distance52, align 4
  %mul53 = mul i32 %37, 17
  %add54 = add i32 %mul53, %35
  %conv55 = zext i8 %conv to i32
  tail call void %33(ptr noundef %adev, i32 noundef %add54, i32 noundef %call2, i32 noundef 6, i32 noundef %conv55) #10
  br label %cond.end61

cond.false56:                                     ; preds = %land.lhs.true42.cond.false56_crit_edge, %land.lhs.true37.cond.false56_crit_edge, %if.end32.cond.false56_crit_edge
  %vm_inv_eng0_req57 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 3
  %38 = ptrtoint ptr %vm_inv_eng0_req57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vm_inv_eng0_req57, align 4
  %eng_distance58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %40 = ptrtoint ptr %eng_distance58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eng_distance58, align 4
  %mul59 = mul i32 %41, 17
  %add60 = add i32 %mul59, %39
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add60, i32 noundef %call2, i32 noundef 0) #10
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false56, %cond.true47
  br i1 %cmp, label %land.lhs.true64, label %cond.end61.if.end104_crit_edge

cond.end61.if.end104_crit_edge:                   ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

land.lhs.true64:                                  ; preds = %cond.end61
  %arrayidx65 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 656128, i32 %43)
  %cmp67 = icmp ult i32 %43, 656128
  br i1 %cmp67, label %if.then69, label %land.lhs.true64.if.end104_crit_edge

land.lhs.true64.if.end104_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then69:                                        ; preds = %land.lhs.true64
  %44 = ptrtoint ptr %virt33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %virt33, align 8
  %and72 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then69.cond.false96_crit_edge, label %land.lhs.true74

if.then69.cond.false96_crit_edge:                 ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false96

land.lhs.true74:                                  ; preds = %if.then69
  %funcs77 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %46 = ptrtoint ptr %funcs77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs77, align 4
  %tobool78.not = icmp eq ptr %47, null
  br i1 %tobool78.not, label %land.lhs.true74.cond.false96_crit_edge, label %land.lhs.true79

land.lhs.true74.cond.false96_crit_edge:           ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false96

land.lhs.true79:                                  ; preds = %land.lhs.true74
  %sriov_rreg83 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %sriov_rreg83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sriov_rreg83, align 4
  %tobool84.not = icmp eq ptr %49, null
  br i1 %tobool84.not, label %land.lhs.true79.cond.false96_crit_edge, label %cond.true85

land.lhs.true79.cond.false96_crit_edge:           ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false96

cond.true85:                                      ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  %vm_inv_eng0_req90 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 3
  %50 = ptrtoint ptr %vm_inv_eng0_req90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vm_inv_eng0_req90, align 4
  %eng_distance91 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 10
  %52 = ptrtoint ptr %eng_distance91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %eng_distance91, align 4
  %mul92 = mul i32 %53, 17
  %add93 = add i32 %mul92, %51
  %conv94 = zext i8 %conv to i32
  %call95 = tail call i32 %49(ptr noundef %adev, i32 noundef %add93, i32 noundef 6, i32 noundef %conv94) #10
  br label %if.end104

cond.false96:                                     ; preds = %land.lhs.true79.cond.false96_crit_edge, %land.lhs.true74.cond.false96_crit_edge, %if.then69.cond.false96_crit_edge
  %vm_inv_eng0_req97 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 3
  %54 = ptrtoint ptr %vm_inv_eng0_req97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vm_inv_eng0_req97, align 4
  %eng_distance98 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 10
  %56 = ptrtoint ptr %eng_distance98 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %eng_distance98, align 4
  %mul99 = mul i32 %57, 17
  %add100 = add i32 %mul99, %55
  %call101 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add100, i32 noundef 0) #10
  br label %if.end104

if.end104:                                        ; preds = %cond.false96, %cond.true85, %land.lhs.true64.if.end104_crit_edge, %cond.end61.if.end104_crit_edge
  %usec_timeout106 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %58 = ptrtoint ptr %usec_timeout106 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %usec_timeout106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp1074.not = icmp eq i32 %59, 0
  br i1 %cmp1074.not, label %if.end104.for.end149_crit_edge, label %for.body109.lr.ph

if.end104.for.end149_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end149

for.body109.lr.ph:                                ; preds = %if.end104
  %funcs117 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 4
  %eng_distance130 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %conv133 = zext i8 %conv to i32
  %shl = shl nuw i32 1, %vmid
  br label %for.body109

for.body109:                                      ; preds = %if.end146.for.body109_crit_edge, %for.body109.lr.ph
  %i.15 = phi i32 [ 0, %for.body109.lr.ph ], [ %inc148, %if.end146.for.body109_crit_edge ]
  %60 = ptrtoint ptr %virt33 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %virt33, align 8
  %and112 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %for.body109.cond.false135_crit_edge, label %land.lhs.true114

for.body109.cond.false135_crit_edge:              ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false135

land.lhs.true114:                                 ; preds = %for.body109
  %62 = ptrtoint ptr %funcs117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs117, align 4
  %tobool118.not = icmp eq ptr %63, null
  br i1 %tobool118.not, label %land.lhs.true114.cond.false135_crit_edge, label %land.lhs.true119

land.lhs.true114.cond.false135_crit_edge:         ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false135

land.lhs.true119:                                 ; preds = %land.lhs.true114
  %sriov_rreg123 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %sriov_rreg123 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sriov_rreg123, align 4
  %tobool124.not = icmp eq ptr %65, null
  br i1 %tobool124.not, label %land.lhs.true119.cond.false135_crit_edge, label %cond.true125

land.lhs.true119.cond.false135_crit_edge:         ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false135

cond.true125:                                     ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vm_inv_eng0_ack, align 4
  %68 = ptrtoint ptr %eng_distance130 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %eng_distance130, align 4
  %mul131 = mul i32 %69, 17
  %add132 = add i32 %mul131, %67
  %call134 = tail call i32 %65(ptr noundef %adev, i32 noundef %add132, i32 noundef 6, i32 noundef %conv133) #10
  br label %cond.end141

cond.false135:                                    ; preds = %land.lhs.true119.cond.false135_crit_edge, %land.lhs.true114.cond.false135_crit_edge, %for.body109.cond.false135_crit_edge
  %70 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vm_inv_eng0_ack, align 4
  %72 = ptrtoint ptr %eng_distance130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %eng_distance130, align 4
  %mul138 = mul i32 %73, 17
  %add139 = add i32 %mul138, %71
  %call140 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add139, i32 noundef 0) #10
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false135, %cond.true125
  %cond142 = phi i32 [ %call134, %cond.true125 ], [ %call140, %cond.false135 ]
  %and143 = and i32 %cond142, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end146, label %cond.end141.for.end149_crit_edge

cond.end141.for.end149_crit_edge:                 ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end149

if.end146:                                        ; preds = %cond.end141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748) #10
  %inc148 = add nuw i32 %i.15, 1
  %75 = ptrtoint ptr %usec_timeout106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %usec_timeout106, align 8
  %cmp107 = icmp ult i32 %inc148, %76
  br i1 %cmp107, label %if.end146.for.body109_crit_edge, label %if.end146.for.end149_crit_edge

if.end146.for.end149_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end149

if.end146.for.body109_crit_edge:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body109

for.end149:                                       ; preds = %if.end146.for.end149_crit_edge, %cond.end141.for.end149_crit_edge, %if.end104.for.end149_crit_edge
  %i.1.lcssa = phi i32 [ 0, %if.end104.for.end149_crit_edge ], [ %i.15, %cond.end141.for.end149_crit_edge ], [ %inc148, %if.end146.for.end149_crit_edge ]
  br i1 %2, label %if.then151, label %for.end149.if.end183_crit_edge

for.end149.if.end183_crit_edge:                   ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.then151:                                       ; preds = %for.end149
  %77 = ptrtoint ptr %virt33 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %virt33, align 8
  %and154 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.then151.cond.false177_crit_edge, label %land.lhs.true156

if.then151.cond.false177_crit_edge:               ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false177

land.lhs.true156:                                 ; preds = %if.then151
  %funcs159 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %79 = ptrtoint ptr %funcs159 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %funcs159, align 4
  %tobool160.not = icmp eq ptr %80, null
  br i1 %tobool160.not, label %land.lhs.true156.cond.false177_crit_edge, label %land.lhs.true161

land.lhs.true156.cond.false177_crit_edge:         ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false177

land.lhs.true161:                                 ; preds = %land.lhs.true156
  %sriov_wreg165 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %sriov_wreg165 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sriov_wreg165, align 4
  %tobool166.not = icmp eq ptr %82, null
  br i1 %tobool166.not, label %land.lhs.true161.cond.false177_crit_edge, label %cond.true167

land.lhs.true161.cond.false177_crit_edge:         ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false177

cond.true167:                                     ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #12
  %vm_inv_eng0_sem172 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 2
  %83 = ptrtoint ptr %vm_inv_eng0_sem172 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vm_inv_eng0_sem172, align 4
  %eng_distance173 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %85 = ptrtoint ptr %eng_distance173 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %eng_distance173, align 4
  %mul174 = mul i32 %86, 17
  %add175 = add i32 %mul174, %84
  %conv176 = zext i8 %conv to i32
  tail call void %82(ptr noundef %adev, i32 noundef %add175, i32 noundef 0, i32 noundef 6, i32 noundef %conv176) #10
  br label %if.end183

cond.false177:                                    ; preds = %land.lhs.true161.cond.false177_crit_edge, %land.lhs.true156.cond.false177_crit_edge, %if.then151.cond.false177_crit_edge
  %vm_inv_eng0_sem178 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 2
  %87 = ptrtoint ptr %vm_inv_eng0_sem178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vm_inv_eng0_sem178, align 4
  %eng_distance179 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %vmhub, i32 10
  %89 = ptrtoint ptr %eng_distance179 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %eng_distance179, align 4
  %mul180 = mul i32 %90, 17
  %add181 = add i32 %mul180, %88
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add181, i32 noundef 0, i32 noundef 0) #10
  br label %if.end183

if.end183:                                        ; preds = %cond.false177, %cond.true167, %for.end149.if.end183_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %invalidate_lock) #10
  %91 = ptrtoint ptr %usec_timeout106 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %usec_timeout106, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %92)
  %cmp187 = icmp ult i32 %i.1.lcssa, %92
  br i1 %cmp187, label %if.end183.cleanup_crit_edge, label %if.end190

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end190:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %vmhub) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end190, %if.end183.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %fence) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !72

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @dma_fence_release(ptr noundef %refcount) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_emit_polling(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_undo(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_polling(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_vram_mc2pa(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_vm_fault_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink5 = phi i1 [ true, %sw.bb1 ], [ false, %entry.sw.epilog.sink.split_crit_edge ]
  tail call void @amdgpu_gmc_set_vm_fault_masks(ptr noundef %adev, i32 noundef 1, i1 noundef zeroext %.sink5) #10
  tail call void @amdgpu_gmc_set_vm_fault_masks(ptr noundef %adev, i32 noundef 0, i1 noundef zeroext %.sink5) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmc_v10_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr noundef %entry1) #1 align 64 {
entry:
  %task_info = alloca %struct.amdgpu_task_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %arrayidx = getelementptr %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6 = icmp ne i32 %and5, 0
  %vmid_src = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 5
  %2 = ptrtoint ptr %vmid_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmid_src, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %task_info) #10
  %4 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_data, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %6 = and i32 %1, 15
  %and16 = zext i32 %6 to i64
  %shl17 = shl nuw nsw i64 %and16, 44
  %or = or i64 %shl, %shl17
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry1, align 8
  %ih_soft = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 8
  %cmp.not = icmp eq ptr %8, %ih_soft
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %9 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pasid, align 4
  %conv21 = trunc i32 %10 to i16
  %timestamp = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 6
  %11 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %timestamp, align 8
  %call = tail call zeroext i1 @amdgpu_gmc_filter_faults(ptr noundef %adev, ptr noundef %8, i64 noundef %or, i16 noundef zeroext %conv21, i64 noundef %12) #10
  br i1 %call, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry1, align 8
  %ih26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94, i32 5
  %cmp27 = icmp eq ptr %14, %ih26
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_irq_delegate(ptr noundef %adev, ptr noundef %entry1, i32 noundef 8) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %pasid31 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %15 = ptrtoint ptr %pasid31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pasid31, align 4
  %call33 = tail call zeroext i1 @amdgpu_vm_handle_fault(ptr noundef %adev, i32 noundef %16, i64 noundef %or, i1 noundef zeroext %tobool6) #10
  br i1 %call33, label %if.end30.cleanup_crit_edge, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end30.if.end36_crit_edge, %entry.if.end36_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt, align 8
  %and37 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end36.if.end57_crit_edge

if.end36.if.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then39:                                        ; preds = %if.end36
  %19 = ptrtoint ptr %vmid_src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vmid_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp41 = icmp eq i32 %20, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.then39.if.end50_crit_edge

if.then39.if.end50_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true43:                                  ; preds = %if.then39
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 656128, i32 %22)
  %cmp46 = icmp ult i32 %22, 656128
  br i1 %cmp46, label %if.then48, label %land.lhs.true43.if.end50_crit_edge

land.lhs.true43.if.end50_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then48:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  %vm_l2_pro_fault_status = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %3, i32 6
  %23 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_l2_pro_fault_status, align 4
  %call49 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %24, i32 noundef 0) #10
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %land.lhs.true43.if.end50_crit_edge, %if.then39.if.end50_crit_edge
  %vm_l2_pro_fault_status51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %3, i32 6
  %25 = ptrtoint ptr %vm_l2_pro_fault_status51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_l2_pro_fault_status51, align 4
  %call52 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %26, i32 noundef 0) #10
  %vm_l2_pro_fault_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %3, i32 7
  %27 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_l2_pro_fault_cntl, align 4
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %28, i32 noundef 0) #10
  %or55 = or i32 %call53, 1
  %29 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_l2_pro_fault_cntl, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %30, i32 noundef %or55, i32 noundef 0) #10
  br label %if.end57

if.end57:                                         ; preds = %if.end50, %if.end36.if.end57_crit_edge
  %status.0 = phi i32 [ 0, %if.end36.if.end57_crit_edge ], [ %call52, %if.end50 ]
  %call58 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.gmc_v10_0_process_interrupt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %if.end61

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %31 = call ptr @memset(ptr %task_info, i32 0, i32 40)
  %pasid62 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %32 = ptrtoint ptr %pasid62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pasid62, align 4
  call void @amdgpu_vm_get_task_info(ptr noundef %adev, i32 noundef %33, ptr noundef nonnull %task_info) #10
  %34 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adev, align 8
  %36 = ptrtoint ptr %vmid_src to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vmid_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool67.not = icmp eq i32 %37, 0
  %cond = select i1 %tobool67.not, ptr @.str.11, ptr @.str.10
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %38 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_id, align 8
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %40 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_id, align 4
  %vmid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 4
  %42 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vmid, align 8
  %44 = ptrtoint ptr %pasid62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pasid62, align 4
  %tgid = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 3
  %46 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tgid, align 4
  %task_name = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 1
  %pid = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 2
  %48 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, ptr noundef nonnull %task_info, i32 noundef %47, ptr noundef %task_name, i32 noundef %49) #13
  %50 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adev, align 8
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %52 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %client_id, align 4
  %arrayidx75 = getelementptr [0 x ptr], ptr @soc15_ih_clientid_name, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx75, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.13, i64 noundef %or, i32 noundef %53, ptr noundef %55) #13
  %56 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt, align 8
  %and78 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then80:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %vmhub_funcs = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 %3, i32 13
  %58 = ptrtoint ptr %vmhub_funcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vmhub_funcs, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  call void %61(ptr noundef %adev, i32 noundef %status.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end61.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then29, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then29 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end30.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %task_info) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_set_vm_fault_masks(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_gmc_filter_faults(ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_irq_delegate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_vm_handle_fault(ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_get_task_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmc_v10_0_ecc_interrupt_state(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_umc_process_ecc_irq(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gmc_allocate_vm_inv_eng(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gmc_ras_late_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atomfirmware_get_vram_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_adjust_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_get_vbios_allocations(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_get_reserved_allocation(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gmc_v10_0_gart_init(ptr noundef %adev) unnamed_addr #1 align 64 {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 818, i32 noundef 9, ptr noundef nonnull @.str.18) #10
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
  store i64 844424930131984, ptr %gart_pte_flags, align 8
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
declare dso_local i32 @amdgpu_device_resize_fb_bar(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_gart_location(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gmc_agp_location(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_table_vram_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_manager_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gem_force_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gart_table_vram_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gtt_mgr_recover(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vmid_reset_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @athub_v2_1_set_clockgating(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @athub_v2_0_set_clockgating(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @athub_v2_1_get_clockgating(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @athub_v2_0_get_clockgating(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 1161, i32 10}
!2 = !{ptr @gmc_v10_0_ip_funcs, !3, !"gmc_v10_0_ip_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 1160, i32 27}
!4 = !{ptr @gmc_v10_0_ip_block, !5, !"gmc_v10_0_ip_block", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 1178, i32 38}
!6 = !{ptr @gmc_v10_0_gmc_funcs, !7, !"gmc_v10_0_gmc_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 641, i32 38}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 395, i32 2}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 259, i32 4}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 301, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 437, i32 4}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gmc_v10_0_flush_gpu_tlb_pasid._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @gmc_v10_0_flush_gpu_tlb_pasid._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @gmc_v10_0_irq_funcs, !23, !"gmc_v10_0_irq_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 167, i32 42}
!24 = !{ptr @__func__.gmc_v10_0_process_interrupt, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 143, i32 7}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 149, i32 2}
!28 = !{ptr @gmc_v10_0_process_interrupt._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gmc_v10_0_process_interrupt._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 156, i32 2}
!34 = !{ptr @gmc_v10_0_process_interrupt._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @gmc_v10_0_process_interrupt._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @gmc_v10_0_ecc_funcs, !37, !"gmc_v10_0_ecc_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 172, i32 42}
!38 = !{ptr @gmc_v10_0_sw_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 843, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 913, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gmc_v10_0_sw_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @gmc_v10_0_sw_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 818, i32 3}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 985, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @gmc_v10_0_gart_enable._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @gmc_v10_0_gart_enable._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 1018, i32 2}
!55 = !{ptr @gmc_v10_0_gart_enable._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @gmc_v10_0_gart_enable._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c", i32 1073, i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i8 0, i8 2}
!70 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!71 = !{i64 2168985417, i64 2168985920, i64 2168985454, i64 2168985510, i64 2168985544, i64 2168985568, i64 2168985609, i64 2168985630, i64 2168985658, i64 2168985692}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2168990405, i64 2168990908, i64 2168990442, i64 2168990498, i64 2168990532, i64 2168990556, i64 2168990597, i64 2168990618, i64 2168990646, i64 2168990680}
!74 = !{i64 2148678334}
!75 = !{i64 2148592774, i64 2148592806, i64 2148592835, i64 2148592869, i64 2148592900, i64 2148592923}
!76 = !{i64 2149876107}
