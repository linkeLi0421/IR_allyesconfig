; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/navi10_ih.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/navi10_ih.c"
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

@navi10_ih_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @navi10_ih_early_init, ptr null, ptr @navi10_ih_sw_init, ptr @navi10_ih_sw_fini, ptr null, ptr @navi10_ih_hw_init, ptr @navi10_ih_hw_fini, ptr null, ptr @navi10_ih_suspend, ptr @navi10_ih_resume, ptr @navi10_ih_is_idle, ptr @navi10_ih_wait_for_idle, ptr null, ptr null, ptr @navi10_ih_soft_reset, ptr null, ptr @navi10_ih_set_clockgating_state, ptr @navi10_ih_set_powergating_state, ptr @navi10_ih_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@navi10_ih_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 2, i32 5, i32 0, i32 0, ptr @navi10_ih_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"navi10_ih\00", [22 x i8] zeroinitializer }, align 32
@navi10_ih_funcs = internal constant { %struct.amdgpu_ih_funcs, [16 x i8] } { %struct.amdgpu_ih_funcs { ptr @navi10_ih_get_wptr, ptr @amdgpu_ih_decode_iv_helper, ptr @amdgpu_ih_decode_iv_ts_helper, ptr @navi10_ih_set_rptr }, [16 x i8] zeroinitializer }, align 32
@navi10_ih_get_wptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"navi10_ih_get_wptr\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/navi10_ih.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@navi10_ih_get_wptr._entry_ptr = internal global ptr @navi10_ih_get_wptr._entry, section ".printk_index", align 4
@navi10_ih_self_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @navi10_ih_self_irq }, [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PSP program IH_RB_CNTL failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 327683, i64 328192, i64 328193]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"navi10_ih_ip_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 698, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"navi10_ih_ip_block\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 729, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 699, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"navi10_ih_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 716, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 435, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"navi10_ih_self_irq_funcs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 524, i32 42 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/navi10_ih.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 284, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @navi10_ih_get_wptr._entry, ptr @navi10_ih_get_wptr._entry_ptr, ptr @navi10_ih_ip_funcs, ptr @navi10_ih_ip_block, ptr @.str, ptr @navi10_ih_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @navi10_ih_self_irq_funcs, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_ih_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_ih_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_ih_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_ih_get_wptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_ih_self_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi10_ih_early_init(ptr nocapture noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ih_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 9
  %0 = ptrtoint ptr %ih_funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ih_funcs.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then.i, label %entry.navi10_ih_set_interrupt_funcs.exit_crit_edge

entry.navi10_ih_set_interrupt_funcs.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %navi10_ih_set_interrupt_funcs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %ih_funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @navi10_ih_funcs, ptr %ih_funcs.i, align 8
  br label %navi10_ih_set_interrupt_funcs.exit

navi10_ih_set_interrupt_funcs.exit:               ; preds = %if.then.i, %entry.navi10_ih_set_interrupt_funcs.exit_crit_edge
  %self_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 13
  %3 = ptrtoint ptr %self_irq.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %self_irq.i, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 13, i32 2
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @navi10_ih_self_irq_funcs, ptr %funcs.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_ih_sw_init(ptr noundef %handle) #1 align 64 {
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
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %2 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ne i32 %3, 2
  br label %if.end3

if.end3:                                          ; preds = %lor.lhs.false, %if.end.if.end3_crit_edge
  %use_bus_addr.0.off0 = phi i1 [ false, %if.end.if.end3_crit_edge ], [ %cmp, %lor.lhs.false ]
  %ih = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5
  %call6 = tail call i32 @amdgpu_ih_ring_init(ptr noundef %handle, ptr noundef %ih, i32 noundef 262144, i1 noundef zeroext %use_bus_addr.0.off0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %use_doorbell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 3
  %4 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %use_doorbell, align 4
  %ih12 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 15
  %5 = ptrtoint ptr %ih12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ih12, align 4
  %shl = shl i32 %6, 1
  %doorbell_index15 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 2
  %7 = ptrtoint ptr %doorbell_index15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl, ptr %doorbell_index15, align 8
  %ih1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 6
  %8 = ptrtoint ptr %ih1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ih1, align 8
  %ih2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 7
  %9 = ptrtoint ptr %ih2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ih2, align 8
  %10 = ptrtoint ptr %ih to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ih, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end9.navi10_ih_init_register_offset.exit_crit_edge, label %if.then.i

if.end9.navi10_ih_init_register_offset.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %navi10_ih_init_register_offset.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %ih_regs3.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.i = add i32 %15, 129
  %16 = ptrtoint ptr %ih_regs3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %ih_regs3.i, align 4
  %17 = load i32, ptr %13, align 4
  %add10.i = add i32 %17, 130
  %ih_rb_base_hi.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 1
  %18 = ptrtoint ptr %ih_rb_base_hi.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add10.i, ptr %ih_rb_base_hi.i, align 4
  %19 = load i32, ptr %13, align 4
  %add15.i = add i32 %19, 128
  %ih_rb_cntl.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 2
  %20 = ptrtoint ptr %ih_rb_cntl.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add15.i, ptr %ih_rb_cntl.i, align 4
  %21 = load i32, ptr %13, align 4
  %add20.i = add i32 %21, 132
  %ih_rb_wptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 3
  %22 = ptrtoint ptr %ih_rb_wptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add20.i, ptr %ih_rb_wptr.i, align 4
  %23 = load i32, ptr %13, align 4
  %add25.i = add i32 %23, 131
  %ih_rb_rptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 4
  %24 = ptrtoint ptr %ih_rb_rptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add25.i, ptr %ih_rb_rptr.i, align 4
  %25 = load i32, ptr %13, align 4
  %add30.i = add i32 %25, 135
  %ih_doorbell_rptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 5
  %26 = ptrtoint ptr %ih_doorbell_rptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add30.i, ptr %ih_doorbell_rptr.i, align 4
  %27 = load i32, ptr %13, align 4
  %add35.i = add i32 %27, 134
  %ih_rb_wptr_addr_lo.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 6
  %28 = ptrtoint ptr %ih_rb_wptr_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add35.i, ptr %ih_rb_wptr_addr_lo.i, align 4
  %29 = load i32, ptr %13, align 4
  %add40.i = add i32 %29, 133
  %ih_rb_wptr_addr_hi.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 7
  %30 = ptrtoint ptr %ih_rb_wptr_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add40.i, ptr %ih_rb_wptr_addr_hi.i, align 4
  %psp_reg_id.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 8
  %31 = ptrtoint ptr %psp_reg_id.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %psp_reg_id.i, align 4
  br label %navi10_ih_init_register_offset.exit

navi10_ih_init_register_offset.exit:              ; preds = %if.then.i, %if.end9.navi10_ih_init_register_offset.exit_crit_edge
  %ih_soft = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 8
  %call20 = tail call i32 @amdgpu_ih_ring_init(ptr noundef %handle, ptr noundef %ih_soft, i32 noundef 4096, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %navi10_ih_init_register_offset.exit.cleanup_crit_edge

navi10_ih_init_register_offset.exit.cleanup_crit_edge: ; preds = %navi10_ih_init_register_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %navi10_ih_init_register_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 @amdgpu_irq_init(ptr noundef %handle) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %navi10_ih_init_register_offset.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ %call20, %navi10_ih_init_register_offset.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_ih_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_irq_fini_sw(ptr noundef %handle) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_ih_hw_init(ptr noundef %handle) #1 align 64 {
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
  %call.i = tail call fastcc i32 @navi10_ih_toggle_interrupts(ptr noundef %handle, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.navi10_ih_irq_init.exit_crit_edge

entry.navi10_ih_irq_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %navi10_ih_irq_init.exit

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
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %9 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then8.i, label %if.end.i.if.end137.i_crit_edge, !prof !29

if.end.i.if.end137.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.i

if.then8.i:                                       ; preds = %if.end.i
  %use_bus_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 4
  %11 = ptrtoint ptr %use_bus_addr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_bus_addr.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not.i = icmp eq i8 %12, 0
  br i1 %tobool9.not.i, label %if.then8.i.if.end137.i_crit_edge, label %if.then10.i

if.then8.i.if.end137.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.i

if.then10.i:                                      ; preds = %if.then8.i
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 21
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %sw.default.i [
    i32 327683, label %if.then10.i.sw.bb.i_crit_edge
    i32 328192, label %if.then10.i.sw.bb.i_crit_edge3
    i32 328193, label %if.then10.i.sw.bb.i_crit_edge4
  ]

if.then10.i.sw.bb.i_crit_edge4:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.i.sw.bb.i_crit_edge3:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.i.sw.bb.i_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then10.i.sw.bb.i_crit_edge, %if.then10.i.sw.bb.i_crit_edge3, %if.then10.i.sw.bb.i_crit_edge4
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %16 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %sw.bb.i.cond.false.i_crit_edge, label %land.lhs.true.i

sw.bb.i.cond.false.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %funcs14.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs14.i, align 4
  %tobool15.not.i = icmp eq ptr %19, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true16.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool20.not.i = icmp eq ptr %21, null
  br i1 %tobool20.not.i, label %land.lhs.true16.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true16.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx25.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %22 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx25.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add.i = add i32 %25, 397
  %call28.i = tail call i32 %21(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true16.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %sw.bb.i.cond.false.i_crit_edge
  %arrayidx30.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %26 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx30.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add33.i = add i32 %29, 397
  %call34.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add33.i, i32 noundef 0) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call28.i, %cond.true.i ], [ %call34.i, %cond.false.i ]
  %or.i = or i32 %cond.i, 16
  %30 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt.i, align 8
  %and38.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %cond.end.i.cond.false60.i_crit_edge, label %land.lhs.true40.i

cond.end.i.cond.false60.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false60.i

land.lhs.true40.i:                                ; preds = %cond.end.i
  %funcs43.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %32 = ptrtoint ptr %funcs43.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs43.i, align 4
  %tobool44.not.i = icmp eq ptr %33, null
  br i1 %tobool44.not.i, label %land.lhs.true40.i.cond.false60.i_crit_edge, label %land.lhs.true45.i

land.lhs.true40.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false60.i

land.lhs.true45.i:                                ; preds = %land.lhs.true40.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool49.not.i = icmp eq ptr %35, null
  br i1 %tobool49.not.i, label %land.lhs.true45.i.cond.false60.i_crit_edge, label %cond.true50.i

land.lhs.true45.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false60.i

cond.true50.i:                                    ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx56.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %36 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx56.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add59.i = add i32 %39, 397
  tail call void %35(ptr noundef %handle, i32 noundef %add59.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 21) #7
  br label %if.end137.i

cond.false60.i:                                   ; preds = %land.lhs.true45.i.cond.false60.i_crit_edge, %land.lhs.true40.i.cond.false60.i_crit_edge, %cond.end.i.cond.false60.i_crit_edge
  %arrayidx62.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %40 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx62.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add65.i = add i32 %43, 397
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add65.i, i32 noundef %or.i, i32 noundef 0) #7
  br label %if.end137.i

sw.default.i:                                     ; preds = %if.then10.i
  %virt67.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %44 = ptrtoint ptr %virt67.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %virt67.i, align 8
  %and69.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %sw.default.i.cond.false93.i_crit_edge, label %land.lhs.true71.i

sw.default.i.cond.false93.i_crit_edge:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false93.i

land.lhs.true71.i:                                ; preds = %sw.default.i
  %funcs74.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %46 = ptrtoint ptr %funcs74.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs74.i, align 4
  %tobool75.not.i = icmp eq ptr %47, null
  br i1 %tobool75.not.i, label %land.lhs.true71.i.cond.false93.i_crit_edge, label %land.lhs.true76.i

land.lhs.true71.i.cond.false93.i_crit_edge:       ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false93.i

land.lhs.true76.i:                                ; preds = %land.lhs.true71.i
  %sriov_rreg80.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %sriov_rreg80.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sriov_rreg80.i, align 4
  %tobool81.not.i = icmp eq ptr %49, null
  br i1 %tobool81.not.i, label %land.lhs.true76.i.cond.false93.i_crit_edge, label %cond.true82.i

land.lhs.true76.i.cond.false93.i_crit_edge:       ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false93.i

cond.true82.i:                                    ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx88.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %50 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx88.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add91.i = add i32 %53, 396
  %call92.i = tail call i32 %49(ptr noundef %handle, i32 noundef %add91.i, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end100.i

cond.false93.i:                                   ; preds = %land.lhs.true76.i.cond.false93.i_crit_edge, %land.lhs.true71.i.cond.false93.i_crit_edge, %sw.default.i.cond.false93.i_crit_edge
  %arrayidx95.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %54 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx95.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add98.i = add i32 %57, 396
  %call99.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add98.i, i32 noundef 0) #7
  br label %cond.end100.i

cond.end100.i:                                    ; preds = %cond.false93.i, %cond.true82.i
  %cond101.i = phi i32 [ %call92.i, %cond.true82.i ], [ %call99.i, %cond.false93.i ]
  %or103.i = or i32 %cond101.i, 16
  %58 = ptrtoint ptr %virt67.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %virt67.i, align 8
  %and106.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %cond.end100.i.cond.false129.i_crit_edge, label %land.lhs.true108.i

cond.end100.i.cond.false129.i_crit_edge:          ; preds = %cond.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false129.i

land.lhs.true108.i:                               ; preds = %cond.end100.i
  %funcs111.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %60 = ptrtoint ptr %funcs111.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %funcs111.i, align 4
  %tobool112.not.i = icmp eq ptr %61, null
  br i1 %tobool112.not.i, label %land.lhs.true108.i.cond.false129.i_crit_edge, label %land.lhs.true113.i

land.lhs.true108.i.cond.false129.i_crit_edge:     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false129.i

land.lhs.true113.i:                               ; preds = %land.lhs.true108.i
  %sriov_wreg117.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %sriov_wreg117.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sriov_wreg117.i, align 4
  %tobool118.not.i = icmp eq ptr %63, null
  br i1 %tobool118.not.i, label %land.lhs.true113.i.cond.false129.i_crit_edge, label %cond.true119.i

land.lhs.true113.i.cond.false129.i_crit_edge:     ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false129.i

cond.true119.i:                                   ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx125.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %64 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx125.i, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add128.i = add i32 %67, 396
  tail call void %63(ptr noundef %handle, i32 noundef %add128.i, i32 noundef %or103.i, i32 noundef 0, i32 noundef 21) #7
  br label %if.end137.i

cond.false129.i:                                  ; preds = %land.lhs.true113.i.cond.false129.i_crit_edge, %land.lhs.true108.i.cond.false129.i_crit_edge, %cond.end100.i.cond.false129.i_crit_edge
  %arrayidx131.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %68 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx131.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add134.i = add i32 %71, 396
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add134.i, i32 noundef %or103.i, i32 noundef 0) #7
  br label %if.end137.i

if.end137.i:                                      ; preds = %cond.false129.i, %cond.true119.i, %cond.false60.i, %cond.true50.i, %if.then8.i.if.end137.i_crit_edge, %if.end.i.if.end137.i_crit_edge
  %msi_enabled.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 4
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %reg_access.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 18
  %psp.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113
  %ih_rb_wptr_addr_lo.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 6
  %wptr_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 8
  %ih_rb_wptr_addr_hi.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 14, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end137.i
  %i.0236.i = phi i32 [ 0, %if.end137.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx139.i = getelementptr [3 x ptr], ptr %ih.i, i32 0, i32 %i.0236.i
  %72 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx139.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool140.not.i = icmp eq i32 %75, 0
  br i1 %tobool140.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then141.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then141.i:                                     ; preds = %for.body.i
  %ih_regs1.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 14
  %76 = ptrtoint ptr %ih_regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ih_regs1.i.i, align 4
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 7
  %78 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %gpu_addr.i.i, align 8
  %shr.i.i = lshr i64 %79, 8
  %conv.i.i = trunc i64 %shr.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %77, i32 noundef %conv.i.i, i32 noundef 0) #7
  %ih_rb_base_hi.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 14, i32 1
  %80 = ptrtoint ptr %ih_rb_base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ih_rb_base_hi.i.i, align 4
  %82 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %gpu_addr.i.i, align 8
  %shr3.i.i = lshr i64 %83, 40
  %84 = trunc i64 %shr3.i.i to i32
  %conv4.i.i = and i32 %84, 255
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %81, i32 noundef %conv4.i.i, i32 noundef 0) #7
  %ih_rb_cntl.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 14, i32 2
  %85 = ptrtoint ptr %ih_rb_cntl.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ih_rb_cntl.i.i, align 4
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %86, i32 noundef 0) #7
  %87 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %73, align 8
  %div69.i.i.i = lshr i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %88)
  %cmp.i.i.i.i = icmp ugt i32 %88, 7
  %sub.i70.i.i.i = add nsw i32 %div69.i.i.i, -1
  %89 = tail call i32 @llvm.ctlz.i32(i32 %sub.i70.i.i.i, i1 false) #7, !range !31
  %and.i.i.i = and i32 %call.i.i, 11468481
  %use_bus_addr.i.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 4
  %90 = ptrtoint ptr %use_bus_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %use_bus_addr.i.i.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i.i.i = icmp eq i8 %91, 0
  %cond35.i.i.i = select i1 %tobool.not.i.i.i, i32 1073741824, i32 268435456
  %.neg = mul nuw nsw i32 %89, 62
  %.neg.op = and i32 %.neg, 62
  %and43.i.i.i = select i1 %cmp.i.i.i.i, i32 %.neg.op, i32 0
  %or.i.i.i = or i32 %and.i.i.i, %and43.i.i.i
  %or40.i.i.i = or i32 %or.i.i.i, %cond35.i.i.i
  %or48.i.i.i = or i32 %or40.i.i.i, -2146369280
  %cmp.i.i = icmp eq ptr %ih1.i, %73
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then141.i.if.end.i.i_crit_edge

if.then141.i.if.end.i.i_crit_edge:                ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #9
  %and8.i.i = and i32 %or48.i.i.i, -794820609
  %92 = ptrtoint ptr %msi_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %msi_enabled.i.i, align 4, !range !30
  %94 = zext i8 %93 to i32
  %shl.i.i = shl nuw nsw i32 %94, 21
  %or.i.i = or i32 %shl.i.i, %and8.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then141.i.if.end.i.i_crit_edge
  %tmp.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %or48.i.i.i, %if.then141.i.if.end.i.i_crit_edge ]
  %cmp13.i.i = icmp eq ptr %ih13.i, %73
  %or17.i.i = or i32 %tmp.0.i.i, 512
  %spec.select.i.i = select i1 %cmp13.i.i, i32 %or17.i.i, i32 %tmp.0.i.i
  %95 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %virt.i.i, align 8
  %and19.i.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end.i.i.if.else.i.i_crit_edge, label %land.lhs.true25.i.i

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true25.i.i:                              ; preds = %if.end.i.i
  %97 = ptrtoint ptr %reg_access.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reg_access.i.i, align 4
  %and27.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %land.lhs.true25.i.i.if.else.i.i_crit_edge, label %if.then29.i.i

land.lhs.true25.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then29.i.i:                                    ; preds = %land.lhs.true25.i.i
  %psp_reg_id.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 14, i32 8
  %99 = ptrtoint ptr %psp_reg_id.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %psp_reg_id.i.i, align 4
  %call30.i.i = tail call i32 @psp_reg_program(ptr noundef %psp.i.i, i32 noundef %100, i32 noundef %spec.select.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.then29.i.i.if.end35.i.i_crit_edge, label %navi10_ih_enable_ring.exit.i

if.then29.i.i.if.end35.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i.i

if.else.i.i:                                      ; preds = %land.lhs.true25.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge
  %101 = ptrtoint ptr %ih_rb_cntl.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ih_rb_cntl.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %102, i32 noundef %spec.select.i.i, i32 noundef 0) #7
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.else.i.i, %if.then29.i.i.if.end35.i.i_crit_edge
  br i1 %cmp.i.i, label %if.then40.i.i, label %if.end35.i.i.if.end48.i.i_crit_edge

if.end35.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i

if.then40.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %ih_rb_wptr_addr_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ih_rb_wptr_addr_lo.i.i, align 4
  %105 = ptrtoint ptr %wptr_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %wptr_addr.i.i, align 8
  %conv42.i.i = trunc i64 %106 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %104, i32 noundef %conv42.i.i, i32 noundef 0) #7
  %107 = ptrtoint ptr %ih_rb_wptr_addr_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ih_rb_wptr_addr_hi.i.i, align 4
  %109 = ptrtoint ptr %wptr_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %wptr_addr.i.i, align 8
  %shr44.i.i = lshr i64 %110, 32
  %conv46.i.i = trunc i64 %shr44.i.i to i32
  %and47.i.i = and i32 %conv46.i.i, 65535
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %108, i32 noundef %and47.i.i, i32 noundef 0) #7
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then40.i.i, %if.end35.i.i.if.end48.i.i_crit_edge
  %ih_rb_wptr.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 14, i32 3
  %111 = ptrtoint ptr %ih_rb_wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ih_rb_wptr.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %112, i32 noundef 0, i32 noundef 0) #7
  %ih_rb_rptr.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 14, i32 4
  %113 = ptrtoint ptr %ih_rb_rptr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ih_rb_rptr.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %114, i32 noundef 0, i32 noundef 0) #7
  %ih_doorbell_rptr.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 14, i32 5
  %115 = ptrtoint ptr %ih_doorbell_rptr.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ih_doorbell_rptr.i.i, align 4
  %use_doorbell.i.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 3
  %117 = ptrtoint ptr %use_doorbell.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %use_doorbell.i.i.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i89.i.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i89.i.i, label %if.end48.i.i.navi10_ih_enable_ring.exit.thread.i_crit_edge, label %if.then.i.i.i

if.end48.i.i.navi10_ih_enable_ring.exit.thread.i_crit_edge: ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %navi10_ih_enable_ring.exit.thread.i

if.then.i.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %doorbell_index.i.i.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %73, i32 0, i32 2
  %119 = ptrtoint ptr %doorbell_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %doorbell_index.i.i.i, align 8
  %and1.i.i.i = and i32 %120, 67108863
  %or3.i.i.i = or i32 %and1.i.i.i, 268435456
  br label %navi10_ih_enable_ring.exit.thread.i

navi10_ih_enable_ring.exit.thread.i:              ; preds = %if.then.i.i.i, %if.end48.i.i.navi10_ih_enable_ring.exit.thread.i_crit_edge
  %ih_doorbell_rtpr.0.i.i.i = phi i32 [ %or3.i.i.i, %if.then.i.i.i ], [ 0, %if.end48.i.i.navi10_ih_enable_ring.exit.thread.i_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %116, i32 noundef %ih_doorbell_rtpr.0.i.i.i, i32 noundef 0) #7
  br label %for.inc.i

navi10_ih_enable_ring.exit.i:                     ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #7
  br label %navi10_ih_irq_init.exit

for.inc.i:                                        ; preds = %navi10_ih_enable_ring.exit.thread.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0236.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %121 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %funcs.i, align 8
  %ih_doorbell_range.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %122, i32 0, i32 14
  %123 = ptrtoint ptr %ih_doorbell_range.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ih_doorbell_range.i, align 4
  %use_doorbell.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 3
  %125 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %use_doorbell.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool151.i = icmp ne i8 %126, 0
  %doorbell_index.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 5, i32 2
  %127 = ptrtoint ptr %doorbell_index.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %doorbell_index.i, align 8
  tail call void %124(ptr noundef %handle, i1 noundef zeroext %tobool151.i, i32 noundef %128) #7
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %129 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_set_master(ptr noundef %130) #7
  %call153.i = tail call fastcc i32 @navi10_ih_toggle_interrupts(ptr noundef %handle, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153.i)
  %tobool154.not.i = icmp eq i32 %call153.i, 0
  br i1 %tobool154.not.i, label %if.end156.i, label %for.end.i.navi10_ih_irq_init.exit_crit_edge

for.end.i.navi10_ih_irq_init.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %navi10_ih_irq_init.exit

if.end156.i:                                      ; preds = %for.end.i
  tail call fastcc void @force_update_wptr_for_self_int(ptr noundef %handle, i1 noundef zeroext true) #7
  %ih_soft.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 8
  %131 = ptrtoint ptr %ih_soft.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ih_soft.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool159.not.i = icmp eq i32 %132, 0
  br i1 %tobool159.not.i, label %if.end156.i.navi10_ih_irq_init.exit_crit_edge, label %if.then160.i

if.end156.i.navi10_ih_irq_init.exit_crit_edge:    ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %navi10_ih_irq_init.exit

if.then160.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  %enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 94, i32 8, i32 12
  %133 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %enabled.i, align 4
  br label %navi10_ih_irq_init.exit

navi10_ih_irq_init.exit:                          ; preds = %if.then160.i, %if.end156.i.navi10_ih_irq_init.exit_crit_edge, %for.end.i.navi10_ih_irq_init.exit_crit_edge, %navi10_ih_enable_ring.exit.i, %entry.navi10_ih_irq_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.navi10_ih_irq_init.exit_crit_edge ], [ -110, %navi10_ih_enable_ring.exit.i ], [ %call153.i, %for.end.i.navi10_ih_irq_init.exit_crit_edge ], [ 0, %if.then160.i ], [ 0, %if.end156.i.navi10_ih_irq_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ih.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_ih_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @force_update_wptr_for_self_int(ptr noundef %handle, i1 noundef zeroext false) #7
  %call.i = tail call fastcc i32 @navi10_ih_toggle_interrupts(ptr noundef %handle, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_ih_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @force_update_wptr_for_self_int(ptr noundef %handle, i1 noundef zeroext false) #7
  %call.i.i = tail call fastcc i32 @navi10_ih_toggle_interrupts(ptr noundef %handle, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_ih_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @navi10_ih_hw_init(ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @navi10_ih_is_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi10_ih_wait_for_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi10_ih_soft_reset(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_ih_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
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
  br i1 %tobool.not.i, label %entry.navi10_ih_update_clockgating_state.exit_crit_edge, label %if.then.i

entry.navi10_ih_update_clockgating_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %navi10_ih_update_clockgating_state.exit

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
  %and23.i = and i32 %cond.i, 134217727
  %or36.i = select i1 %cmp, i32 0, i32 -134217728
  %or40.i = or i32 %and23.i, %or36.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %or40.i)
  %cmp.not.i = icmp eq i32 %cond.i, %or40.i
  br i1 %cmp.not.i, label %cond.end.i.navi10_ih_update_clockgating_state.exit_crit_edge, label %if.then41.i

cond.end.i.navi10_ih_update_clockgating_state.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %navi10_ih_update_clockgating_state.exit

if.then41.i:                                      ; preds = %cond.end.i
  %16 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt.i, align 8
  %and44.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.then41.i.cond.false66.i_crit_edge, label %land.lhs.true46.i

if.then41.i.cond.false66.i_crit_edge:             ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false66.i

land.lhs.true46.i:                                ; preds = %if.then41.i
  %funcs49.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs49.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs49.i, align 4
  %tobool50.not.i = icmp eq ptr %19, null
  br i1 %tobool50.not.i, label %land.lhs.true46.i.cond.false66.i_crit_edge, label %land.lhs.true51.i

land.lhs.true46.i.cond.false66.i_crit_edge:       ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false66.i

land.lhs.true51.i:                                ; preds = %land.lhs.true46.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool55.not.i = icmp eq ptr %21, null
  br i1 %tobool55.not.i, label %land.lhs.true51.i.cond.false66.i_crit_edge, label %cond.true56.i

land.lhs.true51.i.cond.false66.i_crit_edge:       ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false66.i

cond.true56.i:                                    ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx62.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %22 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx62.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add65.i = add i32 %25, 219
  tail call void %21(ptr noundef %handle, i32 noundef %add65.i, i32 noundef %or40.i, i32 noundef 0, i32 noundef 21) #7
  br label %navi10_ih_update_clockgating_state.exit

cond.false66.i:                                   ; preds = %land.lhs.true51.i.cond.false66.i_crit_edge, %land.lhs.true46.i.cond.false66.i_crit_edge, %if.then41.i.cond.false66.i_crit_edge
  %arrayidx68.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %26 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx68.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add71.i = add i32 %29, 219
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add71.i, i32 noundef %or40.i, i32 noundef 0) #7
  br label %navi10_ih_update_clockgating_state.exit

navi10_ih_update_clockgating_state.exit:          ; preds = %cond.false66.i, %cond.true56.i, %cond.end.i.navi10_ih_update_clockgating_state.exit_crit_edge, %entry.navi10_ih_update_clockgating_state.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi10_ih_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @navi10_ih_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 219
  %call = tail call i32 %5(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %cond.true.if.then_crit_edge, label %cond.true.if.end_crit_edge

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.true.if.then_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 21
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add18 = add i32 %13, 219
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add18, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cond.false.if.then_crit_edge, label %cond.false.if.end_crit_edge

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.false.if.then_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cond.false.if.then_crit_edge, %cond.true.if.then_crit_edge
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 134217728
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false.if.end_crit_edge, %cond.true.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_ih_get_wptr(ptr noundef %adev, ptr noundef %ih) #1 align 64 {
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
define internal void @navi10_ih_set_rptr(ptr noundef %adev, ptr nocapture noundef readonly %ih) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %ih, i32 0, i32 3
  %0 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_doorbell, align 4, !range !30
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
define internal i32 @navi10_ih_self_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
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
define internal fastcc i32 @navi10_ih_toggle_interrupts(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
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
  %psp.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %cond.i = zext i1 %enable to i32
  %shl9.i = select i1 %enable, i32 131072, i32 0
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %reg_access.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 18
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
  br i1 %tobool13.not.i, label %if.then.if.else.i_crit_edge, label %land.lhs.true18.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true18.i:                                ; preds = %if.then
  %13 = ptrtoint ptr %reg_access.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_access.i, align 4
  %and20.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true18.i.if.else.i_crit_edge, label %if.then22.i

land.lhs.true18.i.if.else.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then22.i:                                      ; preds = %land.lhs.true18.i
  %psp_reg_id.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 14, i32 8
  %15 = ptrtoint ptr %psp_reg_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %psp_reg_id.i, align 4
  %call23.i = tail call i32 @psp_reg_program(ptr noundef %psp.i, i32 noundef %16, i32 noundef %tmp.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then22.i.if.end28.i_crit_edge, label %if.then22.i.cleanup_crit_edge

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.i.if.end28.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.else.i:                                        ; preds = %land.lhs.true18.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %17 = ptrtoint ptr %ih_rb_cntl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ih_rb_cntl.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %18, i32 noundef %tmp.0.i, i32 noundef 0) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %if.then22.i.if.end28.i_crit_edge
  br i1 %enable, label %if.then30.i, label %if.else31.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %enabled.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 12
  %19 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enabled.i, align 4
  br label %for.inc

if.else31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %ih_rb_rptr.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 14, i32 4
  %20 = ptrtoint ptr %ih_rb_rptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ih_rb_rptr.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %21, i32 noundef 0, i32 noundef 0) #7
  %ih_rb_wptr.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 14, i32 3
  %22 = ptrtoint ptr %ih_rb_wptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ih_rb_wptr.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %23, i32 noundef 0, i32 noundef 0) #7
  %enabled32.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 12
  %24 = ptrtoint ptr %enabled32.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %enabled32.i, align 4
  %rptr.i = getelementptr inbounds %struct.amdgpu_ih_ring, ptr %6, i32 0, i32 13
  %25 = ptrtoint ptr %rptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rptr.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else31.i, %if.then30.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then22.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.cleanup_crit_edge ], [ -110, %if.then22.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ih) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @force_update_wptr_for_self_int(ptr noundef %adev, i1 noundef zeroext %enabled) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 21
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 327683, i32 %1)
  %cmp = icmp ult i32 %1, 327683
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 193
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19 = add i32 %15, 193
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add19, i32 noundef 0) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call20, %cond.false ]
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and23 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.end.cond.false47_crit_edge, label %land.lhs.true25

cond.end.cond.false47_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false47

land.lhs.true25:                                  ; preds = %cond.end
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false47_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false47_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false47

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_rreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg34, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false47_crit_edge, label %cond.true36

land.lhs.true30.cond.false47_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx42, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add45 = add i32 %25, 140
  %call46 = tail call i32 %21(ptr noundef %adev, i32 noundef %add45, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true30.cond.false47_crit_edge, %land.lhs.true25.cond.false47_crit_edge, %cond.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx49, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add52 = add i32 %29, 140
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52, i32 noundef 0) #7
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true36
  %cond55 = phi i32 [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  %and56 = and i32 %cond, -288
  %or = select i1 %enabled, i32 264, i32 8
  %or62 = or i32 %or, %and56
  %and63 = and i32 %cond55, -61441
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt, align 8
  %and69 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %cond.end54.cond.false109_crit_edge, label %land.lhs.true76

cond.end54.cond.false109_crit_edge:               ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false109

land.lhs.true76:                                  ; preds = %cond.end54
  %reg_access = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 18
  %32 = ptrtoint ptr %reg_access to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_access, align 4
  %and78 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %land.lhs.true89, label %if.then80

if.then80:                                        ; preds = %land.lhs.true76
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call81 = tail call i32 @psp_reg_program(ptr noundef %psp, i32 noundef 1, i32 noundef %and63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then80.if.end116_crit_edge, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then80.if.end116_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.lhs.true89:                                  ; preds = %land.lhs.true76
  %funcs92 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %34 = ptrtoint ptr %funcs92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs92, align 4
  %tobool93.not = icmp eq ptr %35, null
  br i1 %tobool93.not, label %land.lhs.true89.cond.false109_crit_edge, label %land.lhs.true94

land.lhs.true89.cond.false109_crit_edge:          ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false109

land.lhs.true94:                                  ; preds = %land.lhs.true89
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg, align 4
  %tobool98.not = icmp eq ptr %37, null
  br i1 %tobool98.not, label %land.lhs.true94.cond.false109_crit_edge, label %cond.true99

land.lhs.true94.cond.false109_crit_edge:          ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false109

cond.true99:                                      ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx105 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %38 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx105, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add108 = add i32 %41, 140
  tail call void %37(ptr noundef %adev, i32 noundef %add108, i32 noundef %and63, i32 noundef 0, i32 noundef 21) #7
  br label %if.end116

cond.false109:                                    ; preds = %land.lhs.true94.cond.false109_crit_edge, %land.lhs.true89.cond.false109_crit_edge, %cond.end54.cond.false109_crit_edge
  %arrayidx111 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %42 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx111, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add114 = add i32 %45, 140
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add114, i32 noundef %and63, i32 noundef 0) #7
  br label %if.end116

if.end116:                                        ; preds = %cond.false109, %cond.true99, %if.then80.if.end116_crit_edge
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and119 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end116.cond.false143_crit_edge, label %land.lhs.true121

if.end116.cond.false143_crit_edge:                ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false143

land.lhs.true121:                                 ; preds = %if.end116
  %funcs124 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %48 = ptrtoint ptr %funcs124 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs124, align 4
  %tobool125.not = icmp eq ptr %49, null
  br i1 %tobool125.not, label %land.lhs.true121.cond.false143_crit_edge, label %land.lhs.true126

land.lhs.true121.cond.false143_crit_edge:         ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false143

land.lhs.true126:                                 ; preds = %land.lhs.true121
  %sriov_rreg130 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %sriov_rreg130 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sriov_rreg130, align 4
  %tobool131.not = icmp eq ptr %51, null
  br i1 %tobool131.not, label %land.lhs.true126.cond.false143_crit_edge, label %cond.true132

land.lhs.true126.cond.false143_crit_edge:         ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false143

cond.true132:                                     ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx138 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %52 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx138, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add141 = add i32 %55, 152
  %call142 = tail call i32 %51(ptr noundef %adev, i32 noundef %add141, i32 noundef 0, i32 noundef 21) #7
  br label %cond.end150

cond.false143:                                    ; preds = %land.lhs.true126.cond.false143_crit_edge, %land.lhs.true121.cond.false143_crit_edge, %if.end116.cond.false143_crit_edge
  %arrayidx145 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %56 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx145, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add148 = add i32 %59, 152
  %call149 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add148, i32 noundef 0) #7
  br label %cond.end150

cond.end150:                                      ; preds = %cond.false143, %cond.true132
  %cond151 = phi i32 [ %call142, %cond.true132 ], [ %call149, %cond.false143 ]
  %and152 = and i32 %cond151, -61441
  %60 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %virt, align 8
  %and158 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %cond.end150.cond.false202_crit_edge, label %land.lhs.true165

cond.end150.cond.false202_crit_edge:              ; preds = %cond.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false202

land.lhs.true165:                                 ; preds = %cond.end150
  %reg_access167 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 18
  %62 = ptrtoint ptr %reg_access167 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg_access167, align 4
  %and168 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %land.lhs.true181, label %if.then170

if.then170:                                       ; preds = %land.lhs.true165
  %psp171 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call172 = tail call i32 @psp_reg_program(ptr noundef %psp171, i32 noundef 2, i32 noundef %and152) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then170.if.end209_crit_edge, label %if.then170.cleanup_crit_edge

if.then170.cleanup_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then170.if.end209_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209

land.lhs.true181:                                 ; preds = %land.lhs.true165
  %funcs184 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %64 = ptrtoint ptr %funcs184 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %funcs184, align 4
  %tobool185.not = icmp eq ptr %65, null
  br i1 %tobool185.not, label %land.lhs.true181.cond.false202_crit_edge, label %land.lhs.true186

land.lhs.true181.cond.false202_crit_edge:         ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false202

land.lhs.true186:                                 ; preds = %land.lhs.true181
  %sriov_wreg190 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %sriov_wreg190 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sriov_wreg190, align 4
  %tobool191.not = icmp eq ptr %67, null
  br i1 %tobool191.not, label %land.lhs.true186.cond.false202_crit_edge, label %cond.true192

land.lhs.true186.cond.false202_crit_edge:         ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false202

cond.true192:                                     ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx198 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %68 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx198, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add201 = add i32 %71, 152
  tail call void %67(ptr noundef %adev, i32 noundef %add201, i32 noundef %and152, i32 noundef 0, i32 noundef 21) #7
  br label %if.end209

cond.false202:                                    ; preds = %land.lhs.true186.cond.false202_crit_edge, %land.lhs.true181.cond.false202_crit_edge, %cond.end150.cond.false202_crit_edge
  %arrayidx204 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %72 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx204, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add207 = add i32 %75, 152
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add207, i32 noundef %and152, i32 noundef 0) #7
  br label %if.end209

if.end209:                                        ; preds = %cond.false202, %cond.true192, %if.then170.if.end209_crit_edge
  %76 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %virt, align 8
  %and212 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.end209.cond.false235_crit_edge, label %land.lhs.true214

if.end209.cond.false235_crit_edge:                ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false235

land.lhs.true214:                                 ; preds = %if.end209
  %funcs217 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %78 = ptrtoint ptr %funcs217 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %funcs217, align 4
  %tobool218.not = icmp eq ptr %79, null
  br i1 %tobool218.not, label %land.lhs.true214.cond.false235_crit_edge, label %land.lhs.true219

land.lhs.true214.cond.false235_crit_edge:         ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false235

land.lhs.true219:                                 ; preds = %land.lhs.true214
  %sriov_wreg223 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %sriov_wreg223 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sriov_wreg223, align 4
  %tobool224.not = icmp eq ptr %81, null
  br i1 %tobool224.not, label %land.lhs.true219.cond.false235_crit_edge, label %cond.true225

land.lhs.true219.cond.false235_crit_edge:         ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false235

cond.true225:                                     ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx231 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %82 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx231, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add234 = add i32 %85, 193
  tail call void %81(ptr noundef %adev, i32 noundef %add234, i32 noundef %or62, i32 noundef 0, i32 noundef 21) #7
  br label %cleanup

cond.false235:                                    ; preds = %land.lhs.true219.cond.false235_crit_edge, %land.lhs.true214.cond.false235_crit_edge, %if.end209.cond.false235_crit_edge
  %arrayidx237 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 21
  %86 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx237, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add240 = add i32 %89, 193
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add240, i32 noundef %or62, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.false235, %cond.true225, %if.then170.cleanup_crit_edge, %if.then80.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_reg_program(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @navi10_ih_ip_block, !1, !"navi10_ih_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/navi10_ih.c", i32 729, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/navi10_ih.c", i32 699, i32 10}
!4 = !{ptr @navi10_ih_ip_funcs, !5, !"navi10_ih_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/navi10_ih.c", i32 698, i32 34}
!6 = !{ptr @navi10_ih_funcs, !7, !"navi10_ih_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/navi10_ih.c", i32 716, i32 37}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/navi10_ih.c", i32 435, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @navi10_ih_get_wptr._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @navi10_ih_get_wptr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @navi10_ih_self_irq_funcs, !17, !"navi10_ih_self_irq_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/navi10_ih.c", i32 524, i32 42}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/navi10_ih.c", i32 284, i32 4}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i8 0, i8 2}
!31 = !{i32 0, i32 33}
