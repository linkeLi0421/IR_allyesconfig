; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }

@uvd_v3_1_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @uvd_v3_1_early_init, ptr null, ptr @uvd_v3_1_sw_init, ptr @uvd_v3_1_sw_fini, ptr null, ptr @uvd_v3_1_hw_init, ptr @uvd_v3_1_hw_fini, ptr null, ptr @uvd_v3_1_suspend, ptr @uvd_v3_1_resume, ptr @uvd_v3_1_is_idle, ptr @uvd_v3_1_wait_for_idle, ptr null, ptr null, ptr @uvd_v3_1_soft_reset, ptr null, ptr @uvd_v3_1_set_clockgating_state, ptr @uvd_v3_1_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvd_v3_1_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 8, i32 3, i32 1, i32 0, ptr @uvd_v3_1_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uvd_v3_1\00", [23 x i8] zeroinitializer }, align 32
@uvd_v3_1_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 3, i32 15, i32 0, i8 0, i8 1, i32 0, i32 0, ptr @uvd_v3_1_ring_get_rptr, ptr @uvd_v3_1_ring_get_wptr, ptr @uvd_v3_1_ring_set_wptr, ptr @amdgpu_uvd_ring_parse_cs, ptr null, i32 14, i32 4, ptr @uvd_v3_1_ring_emit_ib, ptr @uvd_v3_1_ring_emit_fence, ptr null, ptr null, ptr null, ptr null, ptr @uvd_v3_1_ring_test_ring, ptr @amdgpu_uvd_ring_test_ib, ptr @uvd_v3_1_ring_insert_nop, ptr null, ptr null, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_uvd_ring_begin_use, ptr @amdgpu_uvd_ring_end_use, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@uvd_v3_1_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @uvd_v3_1_set_interrupt_state, ptr @uvd_v3_1_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IH: UVD TRAP\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: UVD Firmware validate fail (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: UVD ring test fail (%d).\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: ring failed to lock UVD ring (%d).\0A\00", [52 x i8] zeroinitializer }, align 32
@uvd_v3_1_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] UVD initialized successfully.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvd_v3_1_hw_init\00", [47 x i8] zeroinitializer }, align 32
@uvd_v3_1_hw_init._entry_ptr = internal global ptr @uvd_v3_1_hw_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UVD not responding, trying to reset the VCPU!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UVD not responding, giving up!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"uvd_v3_1_ip_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 801, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"uvd_v3_1_ip_block\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 818, i32 38 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 802, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"uvd_v3_1_ring_funcs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 179, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 314, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 113, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"uvd_v3_1_irq_funcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 522, i32 42 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 516, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 641, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 652, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 658, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 685, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 394, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 404, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @uvd_v3_1_hw_init._entry, ptr @uvd_v3_1_hw_init._entry_ptr, ptr @uvd_v3_1_ip_funcs, ptr @uvd_v3_1_ip_block, ptr @.str, ptr @uvd_v3_1_ring_funcs, ptr @.str.1, ptr @.str.2, ptr @uvd_v3_1_irq_funcs, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v3_1_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v3_1_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v3_1_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v3_1_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v3_1_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @uvd_v3_1_early_init(ptr nocapture noundef writeonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 4
  %0 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %num_uvd_inst, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @uvd_v3_1_ring_funcs, ptr %funcs.i, align 4
  %irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 6
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %irq.i, align 8
  %funcs.i3 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %funcs.i3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @uvd_v3_1_irq_funcs, ptr %funcs.i3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 6
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 124, ptr noundef %irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @amdgpu_uvd_sw_init(ptr noundef %handle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ring8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4
  %name = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 29
  %0 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1970693120, ptr %name, align 1
  %call15 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring8, i32 noundef 512, ptr noundef %irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  %call19 = tail call i32 @amdgpu_uvd_resume(ptr noundef %handle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %cpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu_addr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 208
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %ucode_len.0.copyload = load i32, ptr %add.ptr, align 1
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %ucode_len.0.copyload
  %keyselect = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 14
  %4 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr25, align 1
  %6 = ptrtoint ptr %keyselect to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %keyselect, align 4
  %call27 = tail call i32 @amdgpu_uvd_entity_init(ptr noundef %handle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call15, %if.end4.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_uvd_suspend(ptr noundef %handle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @amdgpu_uvd_sw_fini(ptr noundef %handle) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4
  %uvd.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 2
  %0 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr.i, align 8
  %add.i = add i64 %1, 256
  %shr.i = lshr i64 %add.i, 3
  %2 = ptrtoint ptr %uvd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uvd.i, align 8
  %data.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ucode_size_bytes.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %add3.i = add i32 %8, 4103
  %and.i = and i32 %add3.i, -4096
  %sub.i = add i32 %and.i, -256
  %shr4.i = lshr exact i32 %sub.i, 3
  %conv.i = trunc i64 %shr.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15746, i32 noundef %conv.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15747, i32 noundef %shr4.i, i32 noundef 0) #6
  %conv7.i = add i32 %shr4.i, %conv.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15748, i32 noundef %conv7.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15749, i32 noundef 32768, i32 noundef 0) #6
  %max_handles.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 2
  %9 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_handles.i, align 8
  %mul.i = mul i32 %10, 51200
  %add11.i = add i32 %mul.i, 204800
  %shr12.i = lshr exact i32 %add11.i, 3
  %conv13.i = add i32 %conv7.i, 32768
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15750, i32 noundef %conv13.i, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15751, i32 noundef %shr12.i, i32 noundef 0) #6
  %11 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %gpu_addr.i, align 8
  %13 = trunc i64 %12 to i32
  %14 = lshr i32 %13, 28
  %conv21.i = mul nuw nsw i32 %14, 4097
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15717, i32 noundef %conv21.i, i32 noundef 0) #6
  %15 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %gpu_addr.i, align 8
  %shr26.i = lshr i64 %16, 32
  %17 = trunc i64 %shr26.i to i32
  %18 = and i32 %17, 255
  %conv30.i = or i32 %18, -2146893824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15654, i32 noundef %conv30.i, i32 noundef 0) #6
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %19 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15315, i32 noundef %20, i32 noundef 0) #6
  %21 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15316, i32 noundef %22, i32 noundef 0) #6
  %23 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15317, i32 noundef %24, i32 noundef 0) #6
  %keyselect.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 14
  %25 = ptrtoint ptr %keyselect.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %keyselect.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15687, i32 noundef %26, i32 noundef 0) #6
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i.while.cond.preheader.i_crit_edge, %entry
  %i.041.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.while.cond.preheader.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15703, i32 noundef 0) #6
  %and.i48 = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool1.not.i = icmp eq i32 %and.i48, 0
  br i1 %tobool1.not.i, label %for.inc.i, label %for.end.i

for.inc.i:                                        ; preds = %while.cond.preheader.i
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.while.cond.preheader.i_crit_edge

for.inc.i.while.cond.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.end.i:                                        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.041.i)
  %cmp2.i = icmp eq i32 %i.041.i, 10
  br i1 %cmp2.i, label %for.end.i.if.then_crit_edge, label %if.end4.i

for.end.i.if.then_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end4.i:                                        ; preds = %for.end.i
  %call5.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15703, i32 noundef 0) #6
  %and6.i = and i32 %call5.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.then_crit_edge, label %if.end4.i.while.cond14.preheader.i_crit_edge

if.end4.i.while.cond14.preheader.i_crit_edge:     ; preds = %if.end4.i
  br label %while.cond14.preheader.i

if.end4.i.if.then_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

while.cond14.preheader.i:                         ; preds = %for.inc24.i.while.cond14.preheader.i_crit_edge, %if.end4.i.while.cond14.preheader.i_crit_edge
  %i.143.i = phi i32 [ %inc25.i, %for.inc24.i.while.cond14.preheader.i_crit_edge ], [ 0, %if.end4.i.while.cond14.preheader.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #6
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15703, i32 noundef 0) #6
  %and20.i = and i32 %call19.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %for.end26.i, label %for.inc24.i

for.inc24.i:                                      ; preds = %while.cond14.preheader.i
  %inc25.i = add nuw nsw i32 %i.143.i, 1
  %exitcond44.not.i = icmp eq i32 %inc25.i, 10
  br i1 %exitcond44.not.i, label %for.inc24.i.if.then_crit_edge, label %for.inc24.i.while.cond14.preheader.i_crit_edge

for.inc24.i.while.cond14.preheader.i_crit_edge:   ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond14.preheader.i

for.inc24.i.if.then_crit_edge:                    ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.end26.i:                                      ; preds = %while.cond14.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.143.i)
  %cmp27.i = icmp eq i32 %i.143.i, 10
  br i1 %cmp27.i, label %for.end26.i.if.then_crit_edge, label %if.end

for.end26.i.if.then_crit_edge:                    ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.end26.i.if.then_crit_edge, %for.inc24.i.if.then_crit_edge, %if.end4.i.if.then_crit_edge, %for.end.i.if.then_crit_edge, %for.inc.i.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end4.i.if.then_crit_edge ], [ -110, %for.end.i.if.then_crit_edge ], [ -110, %for.end26.i.if.then_crit_edge ], [ -110, %for.inc24.i.if.then_crit_edge ], [ -110, %for.inc.i.if.then_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

if.end:                                           ; preds = %for.end26.i
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %47 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cg_flags.i, align 8
  %and.i49 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool1.not.i50 = icmp eq i32 %and.i49, 0
  %uvd_ctx_rreg5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 46
  %49 = ptrtoint ptr %uvd_ctx_rreg5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %uvd_ctx_rreg5.i, align 4
  %call6.i = tail call i32 %50(ptr noundef %handle, i32 noundef 192) #6
  br i1 %tobool1.not.i50, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %or.i = or i32 %call6.i, 16383
  %uvd_ctx_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %51 = ptrtoint ptr %uvd_ctx_wreg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %uvd_ctx_wreg.i, align 8
  tail call void %52(ptr noundef %handle, i32 noundef 192, i32 noundef %or.i) #6
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15660, i32 noundef 0) #6
  %or3.i = or i32 %call2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %or3.i)
  %cmp.not.i = icmp eq i32 %call2.i, %or3.i
  br i1 %cmp.not.i, label %if.then.i.uvd_v3_1_enable_mgcg.exit_crit_edge, label %if.then.i.if.end14.sink.split.i_crit_edge

if.then.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.sink.split.i

if.then.i.uvd_v3_1_enable_mgcg.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvd_v3_1_enable_mgcg.exit

if.else.i:                                        ; preds = %if.end
  %and7.i = and i32 %call6.i, -16384
  %uvd_ctx_wreg8.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 47
  %53 = ptrtoint ptr %uvd_ctx_wreg8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %uvd_ctx_wreg8.i, align 8
  tail call void %54(ptr noundef %handle, i32 noundef 192, i32 noundef %and7.i) #6
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15660, i32 noundef 0) #6
  %and10.i = and i32 %call9.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %and10.i)
  %cmp11.not.i = icmp eq i32 %call9.i, %and10.i
  br i1 %cmp11.not.i, label %if.else.i.uvd_v3_1_enable_mgcg.exit_crit_edge, label %if.else.i.if.end14.sink.split.i_crit_edge

if.else.i.if.end14.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.sink.split.i

if.else.i.uvd_v3_1_enable_mgcg.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvd_v3_1_enable_mgcg.exit

if.end14.sink.split.i:                            ; preds = %if.else.i.if.end14.sink.split.i_crit_edge, %if.then.i.if.end14.sink.split.i_crit_edge
  %and10.sink.i = phi i32 [ %or3.i, %if.then.i.if.end14.sink.split.i_crit_edge ], [ %and10.i, %if.else.i.if.end14.sink.split.i_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 15660, i32 noundef %and10.sink.i, i32 noundef 0) #6
  br label %uvd_v3_1_enable_mgcg.exit

uvd_v3_1_enable_mgcg.exit:                        ; preds = %if.end14.sink.split.i, %if.else.i.uvd_v3_1_enable_mgcg.exit_crit_edge, %if.then.i.uvd_v3_1_enable_mgcg.exit_crit_edge
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %55 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %asic_funcs, align 4
  %set_uvd_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_uvd_clocks, align 4
  %call2 = tail call i32 %58(ptr noundef %handle, i32 noundef 53300, i32 noundef 40000) #6
  %call3 = tail call fastcc i32 @uvd_v3_1_start(ptr noundef %handle)
  %call4 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %uvd_v3_1_enable_mgcg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %call4) #6
  br label %cleanup

if.end7:                                          ; preds = %uvd_v3_1_enable_mgcg.exit
  %call8 = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring1, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %call8) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %count_dw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 11
  %59 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i = icmp slt i32 %60, 1
  br i1 %cmp.i, label %if.then.i51, label %if.end11.amdgpu_ring_write.exit_crit_edge

if.end11.amdgpu_ring_write.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit

if.then.i51:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i51, %if.end11.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 5
  %61 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 7
  %63 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %wptr.i, align 8
  %inc.i52 = add i64 %64, 1
  store i64 %inc.i52, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 14
  %65 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buf_mask.i, align 8
  %67 = trunc i64 %64 to i32
  %idxprom.i = and i32 %66, %67
  %arrayidx.i = getelementptr i32, ptr %62, i32 %idxprom.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 15794, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 7, i32 0, i32 4, i32 13
  %69 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %ptr_mask.i, align 8
  %71 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %71, %70
  store i64 %and3.i, ptr %wptr.i, align 8
  %72 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %73, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i54 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i54, label %if.then.i55, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit65_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit65_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit65

if.then.i55:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit65

amdgpu_ring_write.exit65:                         ; preds = %if.then.i55, %amdgpu_ring_write.exit.amdgpu_ring_write.exit65_crit_edge
  %74 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring1.i, align 4
  %76 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %wptr.i, align 8
  %inc.i58 = add i64 %77, 1
  store i64 %inc.i58, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buf_mask.i, align 8
  %80 = trunc i64 %77 to i32
  %idxprom.i60 = and i32 %79, %80
  %arrayidx.i61 = getelementptr i32, ptr %75, i32 %idxprom.i60
  %81 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 1048575, ptr %arrayidx.i61, align 4
  %82 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ptr_mask.i, align 8
  %84 = load i64, ptr %wptr.i, align 8
  %and3.i63 = and i64 %84, %83
  store i64 %and3.i63, ptr %wptr.i, align 8
  %85 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count_dw.i, align 8
  %dec.i64 = add i32 %86, -1
  store i32 %dec.i64, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i64)
  %cmp.i67 = icmp slt i32 %dec.i64, 1
  br i1 %cmp.i67, label %if.then.i68, label %amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge

amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge: ; preds = %amdgpu_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit78

if.then.i68:                                      ; preds = %amdgpu_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit78

amdgpu_ring_write.exit78:                         ; preds = %if.then.i68, %amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge
  %87 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring1.i, align 4
  %89 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %wptr.i, align 8
  %inc.i71 = add i64 %90, 1
  store i64 %inc.i71, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_mask.i, align 8
  %93 = trunc i64 %90 to i32
  %idxprom.i73 = and i32 %92, %93
  %arrayidx.i74 = getelementptr i32, ptr %88, i32 %idxprom.i73
  %94 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 15793, ptr %arrayidx.i74, align 4
  %95 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ptr_mask.i, align 8
  %97 = load i64, ptr %wptr.i, align 8
  %and3.i76 = and i64 %97, %96
  store i64 %and3.i76, ptr %wptr.i, align 8
  %98 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count_dw.i, align 8
  %dec.i77 = add i32 %99, -1
  store i32 %dec.i77, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i77)
  %cmp.i80 = icmp slt i32 %dec.i77, 1
  br i1 %cmp.i80, label %if.then.i81, label %amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge

amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge: ; preds = %amdgpu_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit91

if.then.i81:                                      ; preds = %amdgpu_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit91

amdgpu_ring_write.exit91:                         ; preds = %if.then.i81, %amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge
  %100 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ring1.i, align 4
  %102 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %wptr.i, align 8
  %inc.i84 = add i64 %103, 1
  store i64 %inc.i84, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %buf_mask.i, align 8
  %106 = trunc i64 %103 to i32
  %idxprom.i86 = and i32 %105, %106
  %arrayidx.i87 = getelementptr i32, ptr %101, i32 %idxprom.i86
  %107 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 1048575, ptr %arrayidx.i87, align 4
  %108 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %ptr_mask.i, align 8
  %110 = load i64, ptr %wptr.i, align 8
  %and3.i89 = and i64 %110, %109
  store i64 %and3.i89, ptr %wptr.i, align 8
  %111 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count_dw.i, align 8
  %dec.i90 = add i32 %112, -1
  store i32 %dec.i90, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i90)
  %cmp.i93 = icmp slt i32 %dec.i90, 1
  br i1 %cmp.i93, label %if.then.i94, label %amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge

amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge: ; preds = %amdgpu_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit104

if.then.i94:                                      ; preds = %amdgpu_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit104

amdgpu_ring_write.exit104:                        ; preds = %if.then.i94, %amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge
  %113 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ring1.i, align 4
  %115 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %wptr.i, align 8
  %inc.i97 = add i64 %116, 1
  store i64 %inc.i97, ptr %wptr.i, align 8
  %117 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %buf_mask.i, align 8
  %119 = trunc i64 %116 to i32
  %idxprom.i99 = and i32 %118, %119
  %arrayidx.i100 = getelementptr i32, ptr %114, i32 %idxprom.i99
  %120 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 15795, ptr %arrayidx.i100, align 4
  %121 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %ptr_mask.i, align 8
  %123 = load i64, ptr %wptr.i, align 8
  %and3.i102 = and i64 %123, %122
  store i64 %and3.i102, ptr %wptr.i, align 8
  %124 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count_dw.i, align 8
  %dec.i103 = add i32 %125, -1
  store i32 %dec.i103, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i103)
  %cmp.i106 = icmp slt i32 %dec.i103, 1
  br i1 %cmp.i106, label %if.then.i107, label %amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge

amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge: ; preds = %amdgpu_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit117

if.then.i107:                                     ; preds = %amdgpu_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit117

amdgpu_ring_write.exit117:                        ; preds = %if.then.i107, %amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge
  %126 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ring1.i, align 4
  %128 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %wptr.i, align 8
  %inc.i110 = add i64 %129, 1
  store i64 %inc.i110, ptr %wptr.i, align 8
  %130 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %buf_mask.i, align 8
  %132 = trunc i64 %129 to i32
  %idxprom.i112 = and i32 %131, %132
  %arrayidx.i113 = getelementptr i32, ptr %127, i32 %idxprom.i112
  %133 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 1048575, ptr %arrayidx.i113, align 4
  %134 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %ptr_mask.i, align 8
  %136 = load i64, ptr %wptr.i, align 8
  %and3.i115 = and i64 %136, %135
  store i64 %and3.i115, ptr %wptr.i, align 8
  %137 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %count_dw.i, align 8
  %dec.i116 = add i32 %138, -1
  store i32 %dec.i116, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i116)
  %cmp.i119 = icmp slt i32 %dec.i116, 1
  br i1 %cmp.i119, label %if.then.i120, label %amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge

amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge: ; preds = %amdgpu_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit130

if.then.i120:                                     ; preds = %amdgpu_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit130

amdgpu_ring_write.exit130:                        ; preds = %if.then.i120, %amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge
  %139 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ring1.i, align 4
  %141 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %wptr.i, align 8
  %inc.i123 = add i64 %142, 1
  store i64 %inc.i123, ptr %wptr.i, align 8
  %143 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %buf_mask.i, align 8
  %145 = trunc i64 %142 to i32
  %idxprom.i125 = and i32 %144, %145
  %arrayidx.i126 = getelementptr i32, ptr %140, i32 %idxprom.i125
  %146 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 15792, ptr %arrayidx.i126, align 4
  %147 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %ptr_mask.i, align 8
  %149 = load i64, ptr %wptr.i, align 8
  %and3.i128 = and i64 %149, %148
  store i64 %and3.i128, ptr %wptr.i, align 8
  %150 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %count_dw.i, align 8
  %dec.i129 = add i32 %151, -1
  store i32 %dec.i129, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i129)
  %cmp.i132 = icmp slt i32 %dec.i129, 1
  br i1 %cmp.i132, label %if.then.i133, label %amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge

amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge: ; preds = %amdgpu_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit143

if.then.i133:                                     ; preds = %amdgpu_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit143

amdgpu_ring_write.exit143:                        ; preds = %if.then.i133, %amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge
  %152 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ring1.i, align 4
  %154 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %wptr.i, align 8
  %inc.i136 = add i64 %155, 1
  store i64 %inc.i136, ptr %wptr.i, align 8
  %156 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %buf_mask.i, align 8
  %158 = trunc i64 %155 to i32
  %idxprom.i138 = and i32 %157, %158
  %arrayidx.i139 = getelementptr i32, ptr %153, i32 %idxprom.i138
  %159 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile i32 8, ptr %arrayidx.i139, align 4
  %160 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %ptr_mask.i, align 8
  %162 = load i64, ptr %wptr.i, align 8
  %and3.i141 = and i64 %162, %161
  store i64 %and3.i141, ptr %wptr.i, align 8
  %163 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %count_dw.i, align 8
  %dec.i142 = add i32 %164, -1
  store i32 %dec.i142, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i142)
  %cmp.i145 = icmp slt i32 %dec.i142, 1
  br i1 %cmp.i145, label %if.then.i146, label %amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge

amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge: ; preds = %amdgpu_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit156

if.then.i146:                                     ; preds = %amdgpu_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit156

amdgpu_ring_write.exit156:                        ; preds = %if.then.i146, %amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge
  %165 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ring1.i, align 4
  %167 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %wptr.i, align 8
  %inc.i149 = add i64 %168, 1
  store i64 %inc.i149, ptr %wptr.i, align 8
  %169 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %buf_mask.i, align 8
  %171 = trunc i64 %168 to i32
  %idxprom.i151 = and i32 %170, %171
  %arrayidx.i152 = getelementptr i32, ptr %166, i32 %idxprom.i151
  %172 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 15616, ptr %arrayidx.i152, align 4
  %173 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %ptr_mask.i, align 8
  %175 = load i64, ptr %wptr.i, align 8
  %and3.i154 = and i64 %175, %174
  store i64 %and3.i154, ptr %wptr.i, align 8
  %176 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %count_dw.i, align 8
  %dec.i155 = add i32 %177, -1
  store i32 %dec.i155, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i155)
  %cmp.i158 = icmp slt i32 %dec.i155, 1
  br i1 %cmp.i158, label %if.then.i159, label %amdgpu_ring_write.exit156.do.end_crit_edge

amdgpu_ring_write.exit156.do.end_crit_edge:       ; preds = %amdgpu_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.i159:                                     ; preds = %amdgpu_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then.i159, %amdgpu_ring_write.exit156.do.end_crit_edge
  %178 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ring1.i, align 4
  %180 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %wptr.i, align 8
  %inc.i162 = add i64 %181, 1
  store i64 %inc.i162, ptr %wptr.i, align 8
  %182 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %buf_mask.i, align 8
  %184 = trunc i64 %181 to i32
  %idxprom.i164 = and i32 %183, %184
  %arrayidx.i165 = getelementptr i32, ptr %179, i32 %idxprom.i164
  %185 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile i32 3, ptr %arrayidx.i165, align 4
  %186 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %ptr_mask.i, align 8
  %188 = load i64, ptr %wptr.i, align 8
  %and3.i167 = and i64 %188, %187
  store i64 %and3.i167, ptr %wptr.i, align 8
  %189 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %count_dw.i, align 8
  %dec.i168 = add i32 %190, -1
  store i32 %dec.i168, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring1) #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10, %if.then6, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %do.end ], [ %call8, %if.then10 ], [ %call4, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #6
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15791, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @uvd_v3_1_stop(ptr noundef %handle)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 108, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #6
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_dpm_enable_uvd(ptr noundef %handle, i1 noundef zeroext false) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 4
  %set_uvd_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_uvd_clocks, align 4
  %call1 = tail call i32 %5(ptr noundef %handle, i32 noundef 0, i32 noundef 0) #6
  %call2 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 8, i32 noundef 0) #6
  %call3 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %handle, i32 noundef 8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #6
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 15791, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end.uvd_v3_1_hw_fini.exit_crit_edge, label %if.then.i

if.end.uvd_v3_1_hw_fini.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %uvd_v3_1_hw_fini.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @uvd_v3_1_stop(ptr noundef %handle) #6
  br label %uvd_v3_1_hw_fini.exit

uvd_v3_1_hw_fini.exit:                            ; preds = %if.then.i, %if.end.uvd_v3_1_hw_fini.exit_crit_edge
  %call8 = tail call i32 @amdgpu_uvd_suspend(ptr noundef %handle) #6
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_uvd_resume(ptr noundef %handle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @uvd_v3_1_hw_init(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @uvd_v3_1_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #6
  %and = and i32 %call, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.05, 1
  %2 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 916, i32 noundef 0) #6
  %and = and i32 %call, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %for.cond.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @uvd_v3_1_stop(ptr noundef %handle)
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #6
  %or = or i32 %call, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  %call1 = tail call fastcc i32 @uvd_v3_1_start(ptr noundef %handle)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvd_v3_1_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvd_v3_1_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v3_1_ring_get_rptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 15780, i32 noundef 0) #6
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @uvd_v3_1_ring_get_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 15781, i32 noundef 0) #6
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v3_1_ring_set_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %3 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 15781, i32 noundef %conv, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_ring_parse_cs(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v3_1_ring_emit_ib(ptr nocapture noundef %ring, ptr nocapture noundef readnone %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 15777, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %15 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i6 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i6, label %if.then.i7, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit17

if.then.i7:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit17

amdgpu_ring_write.exit17:                         ; preds = %if.then.i7, %amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i10 = add i64 %20, 1
  store i64 %inc.i10, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i12 = and i32 %22, %23
  %arrayidx.i13 = getelementptr i32, ptr %18, i32 %idxprom.i12
  %24 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %conv, ptr %arrayidx.i13, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i15 = and i64 %27, %26
  store i64 %and3.i15, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i16 = add i32 %29, -1
  store i32 %dec.i16, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i16)
  %cmp.i19 = icmp slt i32 %dec.i16, 1
  br i1 %cmp.i19, label %if.then.i20, label %amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge

amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge: ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit30

if.then.i20:                                      ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit30

amdgpu_ring_write.exit30:                         ; preds = %if.then.i20, %amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 4
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr.i, align 8
  %inc.i23 = add i64 %33, 1
  store i64 %inc.i23, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_mask.i, align 8
  %36 = trunc i64 %33 to i32
  %idxprom.i25 = and i32 %35, %36
  %arrayidx.i26 = getelementptr i32, ptr %31, i32 %idxprom.i25
  %37 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 15778, ptr %arrayidx.i26, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ptr_mask.i, align 8
  %40 = load i64, ptr %wptr.i, align 8
  %and3.i28 = and i64 %40, %39
  store i64 %and3.i28, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 8
  %dec.i29 = add i32 %42, -1
  store i32 %dec.i29, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %43 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i29)
  %cmp.i32 = icmp slt i32 %dec.i29, 1
  br i1 %cmp.i32, label %if.then.i33, label %amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge

amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge: ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit43

if.then.i33:                                      ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit43

amdgpu_ring_write.exit43:                         ; preds = %if.then.i33, %amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 4
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wptr.i, align 8
  %inc.i36 = add i64 %48, 1
  store i64 %inc.i36, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_mask.i, align 8
  %51 = trunc i64 %48 to i32
  %idxprom.i38 = and i32 %50, %51
  %arrayidx.i39 = getelementptr i32, ptr %46, i32 %idxprom.i38
  %52 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %44, ptr %arrayidx.i39, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptr_mask.i, align 8
  %55 = load i64, ptr %wptr.i, align 8
  %and3.i41 = and i64 %55, %54
  store i64 %and3.i41, ptr %wptr.i, align 8
  %56 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count_dw.i, align 8
  %dec.i42 = add i32 %57, -1
  store i32 %dec.i42, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v3_1_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !43

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 113, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 15805, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i41 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i41, label %if.then.i42, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit52_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit52_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit52

if.then.i42:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit52

amdgpu_ring_write.exit52:                         ; preds = %if.then.i42, %amdgpu_ring_write.exit.amdgpu_ring_write.exit52_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i45 = add i64 %18, 1
  store i64 %inc.i45, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i47 = and i32 %20, %21
  %arrayidx.i48 = getelementptr i32, ptr %16, i32 %idxprom.i47
  %22 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i48, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i50 = and i64 %25, %24
  store i64 %and3.i50, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i51 = add i32 %27, -1
  store i32 %dec.i51, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i51)
  %cmp.i54 = icmp slt i32 %dec.i51, 1
  br i1 %cmp.i54, label %if.then.i55, label %amdgpu_ring_write.exit52.amdgpu_ring_write.exit65_crit_edge

amdgpu_ring_write.exit52.amdgpu_ring_write.exit65_crit_edge: ; preds = %amdgpu_ring_write.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit65

if.then.i55:                                      ; preds = %amdgpu_ring_write.exit52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit65

amdgpu_ring_write.exit65:                         ; preds = %if.then.i55, %amdgpu_ring_write.exit52.amdgpu_ring_write.exit65_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i58 = add i64 %31, 1
  store i64 %inc.i58, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i60 = and i32 %33, %34
  %arrayidx.i61 = getelementptr i32, ptr %29, i32 %idxprom.i60
  %35 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 15300, ptr %arrayidx.i61, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i63 = and i64 %38, %37
  store i64 %and3.i63, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i64 = add i32 %40, -1
  store i32 %dec.i64, ptr %count_dw.i, align 8
  %conv21 = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i64)
  %cmp.i67 = icmp slt i32 %dec.i64, 1
  br i1 %cmp.i67, label %if.then.i68, label %amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge

amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge: ; preds = %amdgpu_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit78

if.then.i68:                                      ; preds = %amdgpu_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit78

amdgpu_ring_write.exit78:                         ; preds = %if.then.i68, %amdgpu_ring_write.exit65.amdgpu_ring_write.exit78_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i71 = add i64 %44, 1
  store i64 %inc.i71, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i73 = and i32 %46, %47
  %arrayidx.i74 = getelementptr i32, ptr %42, i32 %idxprom.i73
  %48 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv21, ptr %arrayidx.i74, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i76 = and i64 %51, %50
  store i64 %and3.i76, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i77 = add i32 %53, -1
  store i32 %dec.i77, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i77)
  %cmp.i80 = icmp slt i32 %dec.i77, 1
  br i1 %cmp.i80, label %if.then.i81, label %amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge

amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge: ; preds = %amdgpu_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit91

if.then.i81:                                      ; preds = %amdgpu_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit91

amdgpu_ring_write.exit91:                         ; preds = %if.then.i81, %amdgpu_ring_write.exit78.amdgpu_ring_write.exit91_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i84 = add i64 %57, 1
  store i64 %inc.i84, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i86 = and i32 %59, %60
  %arrayidx.i87 = getelementptr i32, ptr %55, i32 %idxprom.i86
  %61 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 15301, ptr %arrayidx.i87, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i89 = and i64 %64, %63
  store i64 %and3.i89, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i90 = add i32 %66, -1
  store i32 %dec.i90, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv23 = trunc i64 %shr to i32
  %and24 = and i32 %conv23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i90)
  %cmp.i93 = icmp slt i32 %dec.i90, 1
  br i1 %cmp.i93, label %if.then.i94, label %amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge

amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge: ; preds = %amdgpu_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit104

if.then.i94:                                      ; preds = %amdgpu_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit104

amdgpu_ring_write.exit104:                        ; preds = %if.then.i94, %amdgpu_ring_write.exit91.amdgpu_ring_write.exit104_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i97 = add i64 %70, 1
  store i64 %inc.i97, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i99 = and i32 %72, %73
  %arrayidx.i100 = getelementptr i32, ptr %68, i32 %idxprom.i99
  %74 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %and24, ptr %arrayidx.i100, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i102 = and i64 %77, %76
  store i64 %and3.i102, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i103 = add i32 %79, -1
  store i32 %dec.i103, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i103)
  %cmp.i106 = icmp slt i32 %dec.i103, 1
  br i1 %cmp.i106, label %if.then.i107, label %amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge

amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge: ; preds = %amdgpu_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit117

if.then.i107:                                     ; preds = %amdgpu_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit117

amdgpu_ring_write.exit117:                        ; preds = %if.then.i107, %amdgpu_ring_write.exit104.amdgpu_ring_write.exit117_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i110 = add i64 %83, 1
  store i64 %inc.i110, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i112 = and i32 %85, %86
  %arrayidx.i113 = getelementptr i32, ptr %81, i32 %idxprom.i112
  %87 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 15299, ptr %arrayidx.i113, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i115 = and i64 %90, %89
  store i64 %and3.i115, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i116 = add i32 %92, -1
  store i32 %dec.i116, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i116)
  %cmp.i119 = icmp slt i32 %dec.i116, 1
  br i1 %cmp.i119, label %if.then.i120, label %amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge

amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge: ; preds = %amdgpu_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit130

if.then.i120:                                     ; preds = %amdgpu_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit130

amdgpu_ring_write.exit130:                        ; preds = %if.then.i120, %amdgpu_ring_write.exit117.amdgpu_ring_write.exit130_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i123 = add i64 %96, 1
  store i64 %inc.i123, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i125 = and i32 %98, %99
  %arrayidx.i126 = getelementptr i32, ptr %94, i32 %idxprom.i125
  %100 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 0, ptr %arrayidx.i126, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i128 = and i64 %103, %102
  store i64 %and3.i128, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i129 = add i32 %105, -1
  store i32 %dec.i129, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i129)
  %cmp.i132 = icmp slt i32 %dec.i129, 1
  br i1 %cmp.i132, label %if.then.i133, label %amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge

amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge: ; preds = %amdgpu_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit143

if.then.i133:                                     ; preds = %amdgpu_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit143

amdgpu_ring_write.exit143:                        ; preds = %if.then.i133, %amdgpu_ring_write.exit130.amdgpu_ring_write.exit143_crit_edge
  %106 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring1.i, align 4
  %108 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %wptr.i, align 8
  %inc.i136 = add i64 %109, 1
  store i64 %inc.i136, ptr %wptr.i, align 8
  %110 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf_mask.i, align 8
  %112 = trunc i64 %109 to i32
  %idxprom.i138 = and i32 %111, %112
  %arrayidx.i139 = getelementptr i32, ptr %107, i32 %idxprom.i138
  %113 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 15300, ptr %arrayidx.i139, align 4
  %114 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ptr_mask.i, align 8
  %116 = load i64, ptr %wptr.i, align 8
  %and3.i141 = and i64 %116, %115
  store i64 %and3.i141, ptr %wptr.i, align 8
  %117 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count_dw.i, align 8
  %dec.i142 = add i32 %118, -1
  store i32 %dec.i142, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i142)
  %cmp.i145 = icmp slt i32 %dec.i142, 1
  br i1 %cmp.i145, label %if.then.i146, label %amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge

amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge: ; preds = %amdgpu_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit156

if.then.i146:                                     ; preds = %amdgpu_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit156

amdgpu_ring_write.exit156:                        ; preds = %if.then.i146, %amdgpu_ring_write.exit143.amdgpu_ring_write.exit156_crit_edge
  %119 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ring1.i, align 4
  %121 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %wptr.i, align 8
  %inc.i149 = add i64 %122, 1
  store i64 %inc.i149, ptr %wptr.i, align 8
  %123 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %buf_mask.i, align 8
  %125 = trunc i64 %122 to i32
  %idxprom.i151 = and i32 %124, %125
  %arrayidx.i152 = getelementptr i32, ptr %120, i32 %idxprom.i151
  %126 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 0, ptr %arrayidx.i152, align 4
  %127 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %ptr_mask.i, align 8
  %129 = load i64, ptr %wptr.i, align 8
  %and3.i154 = and i64 %129, %128
  store i64 %and3.i154, ptr %wptr.i, align 8
  %130 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count_dw.i, align 8
  %dec.i155 = add i32 %131, -1
  store i32 %dec.i155, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i155)
  %cmp.i158 = icmp slt i32 %dec.i155, 1
  br i1 %cmp.i158, label %if.then.i159, label %amdgpu_ring_write.exit156.amdgpu_ring_write.exit169_crit_edge

amdgpu_ring_write.exit156.amdgpu_ring_write.exit169_crit_edge: ; preds = %amdgpu_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit169

if.then.i159:                                     ; preds = %amdgpu_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit169

amdgpu_ring_write.exit169:                        ; preds = %if.then.i159, %amdgpu_ring_write.exit156.amdgpu_ring_write.exit169_crit_edge
  %132 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ring1.i, align 4
  %134 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %wptr.i, align 8
  %inc.i162 = add i64 %135, 1
  store i64 %inc.i162, ptr %wptr.i, align 8
  %136 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %buf_mask.i, align 8
  %138 = trunc i64 %135 to i32
  %idxprom.i164 = and i32 %137, %138
  %arrayidx.i165 = getelementptr i32, ptr %133, i32 %idxprom.i164
  %139 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 15301, ptr %arrayidx.i165, align 4
  %140 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %ptr_mask.i, align 8
  %142 = load i64, ptr %wptr.i, align 8
  %and3.i167 = and i64 %142, %141
  store i64 %and3.i167, ptr %wptr.i, align 8
  %143 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %count_dw.i, align 8
  %dec.i168 = add i32 %144, -1
  store i32 %dec.i168, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i168)
  %cmp.i171 = icmp slt i32 %dec.i168, 1
  br i1 %cmp.i171, label %if.then.i172, label %amdgpu_ring_write.exit169.amdgpu_ring_write.exit182_crit_edge

amdgpu_ring_write.exit169.amdgpu_ring_write.exit182_crit_edge: ; preds = %amdgpu_ring_write.exit169
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit182

if.then.i172:                                     ; preds = %amdgpu_ring_write.exit169
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit182

amdgpu_ring_write.exit182:                        ; preds = %if.then.i172, %amdgpu_ring_write.exit169.amdgpu_ring_write.exit182_crit_edge
  %145 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ring1.i, align 4
  %147 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %wptr.i, align 8
  %inc.i175 = add i64 %148, 1
  store i64 %inc.i175, ptr %wptr.i, align 8
  %149 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %buf_mask.i, align 8
  %151 = trunc i64 %148 to i32
  %idxprom.i177 = and i32 %150, %151
  %arrayidx.i178 = getelementptr i32, ptr %146, i32 %idxprom.i177
  %152 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 0, ptr %arrayidx.i178, align 4
  %153 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %ptr_mask.i, align 8
  %155 = load i64, ptr %wptr.i, align 8
  %and3.i180 = and i64 %155, %154
  store i64 %and3.i180, ptr %wptr.i, align 8
  %156 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %count_dw.i, align 8
  %dec.i181 = add i32 %157, -1
  store i32 %dec.i181, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i181)
  %cmp.i184 = icmp slt i32 %dec.i181, 1
  br i1 %cmp.i184, label %if.then.i185, label %amdgpu_ring_write.exit182.amdgpu_ring_write.exit195_crit_edge

amdgpu_ring_write.exit182.amdgpu_ring_write.exit195_crit_edge: ; preds = %amdgpu_ring_write.exit182
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit195

if.then.i185:                                     ; preds = %amdgpu_ring_write.exit182
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit195

amdgpu_ring_write.exit195:                        ; preds = %if.then.i185, %amdgpu_ring_write.exit182.amdgpu_ring_write.exit195_crit_edge
  %158 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ring1.i, align 4
  %160 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %wptr.i, align 8
  %inc.i188 = add i64 %161, 1
  store i64 %inc.i188, ptr %wptr.i, align 8
  %162 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %buf_mask.i, align 8
  %164 = trunc i64 %161 to i32
  %idxprom.i190 = and i32 %163, %164
  %arrayidx.i191 = getelementptr i32, ptr %159, i32 %idxprom.i190
  %165 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 15299, ptr %arrayidx.i191, align 4
  %166 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %ptr_mask.i, align 8
  %168 = load i64, ptr %wptr.i, align 8
  %and3.i193 = and i64 %168, %167
  store i64 %and3.i193, ptr %wptr.i, align 8
  %169 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %count_dw.i, align 8
  %dec.i194 = add i32 %170, -1
  store i32 %dec.i194, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i194)
  %cmp.i197 = icmp slt i32 %dec.i194, 1
  br i1 %cmp.i197, label %if.then.i198, label %amdgpu_ring_write.exit195.amdgpu_ring_write.exit208_crit_edge

amdgpu_ring_write.exit195.amdgpu_ring_write.exit208_crit_edge: ; preds = %amdgpu_ring_write.exit195
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit208

if.then.i198:                                     ; preds = %amdgpu_ring_write.exit195
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit208

amdgpu_ring_write.exit208:                        ; preds = %if.then.i198, %amdgpu_ring_write.exit195.amdgpu_ring_write.exit208_crit_edge
  %171 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ring1.i, align 4
  %173 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %wptr.i, align 8
  %inc.i201 = add i64 %174, 1
  store i64 %inc.i201, ptr %wptr.i, align 8
  %175 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %buf_mask.i, align 8
  %177 = trunc i64 %174 to i32
  %idxprom.i203 = and i32 %176, %177
  %arrayidx.i204 = getelementptr i32, ptr %172, i32 %idxprom.i203
  %178 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 2, ptr %arrayidx.i204, align 4
  %179 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %ptr_mask.i, align 8
  %181 = load i64, ptr %wptr.i, align 8
  %and3.i206 = and i64 %181, %180
  store i64 %and3.i206, ptr %wptr.i, align 8
  %182 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %count_dw.i, align 8
  %dec.i207 = add i32 %183, -1
  store i32 %dec.i207, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_ring_test_ring(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 15805, i32 noundef -889266515, i32 noundef 0) #6
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %8 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_mask.i, align 8
  %10 = trunc i64 %7 to i32
  %idxprom.i = and i32 %9, %10
  %arrayidx.i = getelementptr i32, ptr %5, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 15805, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %12 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ptr_mask.i, align 8
  %14 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %14, %13
  store i64 %and3.i, ptr %wptr.i, align 8
  %15 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i25 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i25, label %if.then.i26, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit36_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit36_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit36

if.then.i26:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit36

amdgpu_ring_write.exit36:                         ; preds = %if.then.i26, %amdgpu_ring_write.exit.amdgpu_ring_write.exit36_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i29 = add i64 %20, 1
  store i64 %inc.i29, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i31 = and i32 %22, %23
  %arrayidx.i32 = getelementptr i32, ptr %18, i32 %idxprom.i31
  %24 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 -559038737, ptr %arrayidx.i32, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i34 = and i64 %27, %26
  store i64 %and3.i34, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i35 = add i32 %29, -1
  store i32 %dec.i35, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #6
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp37.not = icmp eq i32 %31, 0
  br i1 %cmp37.not, label %amdgpu_ring_write.exit36.for.end_crit_edge, label %amdgpu_ring_write.exit36.for.body_crit_edge

amdgpu_ring_write.exit36.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit36
  br label %for.body

amdgpu_ring_write.exit36.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %amdgpu_ring_write.exit36.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %if.end5.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit36.for.body_crit_edge ]
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef 15805, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call2)
  %cmp3 = icmp eq i32 %call2, -559038737
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end5

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end5:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #6
  %inc = add nuw i32 %i.038, 1
  %33 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit36.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit36.for.end_crit_edge ], [ %i.038, %for.body.for.end_crit_edge ], [ %inc, %if.end5.for.end_crit_edge ]
  %35 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %36)
  %cmp7.not = icmp ult i32 %i.0.lcssa, %36
  %spec.select = select i1 %cmp7.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_ring_test_ib(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvd_v3_1_ring_insert_nop(ptr nocapture noundef %ring, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %0 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wptr, align 8
  %rem = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem)
  %tobool.not = icmp ne i64 %rem, 0
  %rem1 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool2 = icmp ne i32 %rem1, 0
  %2 = or i1 %tobool2, %tobool.not
  br i1 %2, label %do.end, label %entry.if.end_crit_edge, !prof !44

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 171, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp41.not = icmp ult i32 %count, 2
  br i1 %cmp41.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div27 = lshr i32 %count, 1
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %3 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %count_dw.i, align 8
  br label %for.body

for.body:                                         ; preds = %amdgpu_ring_write.exit40.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %.pr, %for.body.lr.ph ], [ %dec.i39, %amdgpu_ring_write.exit40.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %amdgpu_ring_write.exit40.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp slt i32 %4, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.amdgpu_ring_write.exit_crit_edge

for.body.amdgpu_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %for.body.amdgpu_ring_write.exit_crit_edge
  %5 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring1.i, align 4
  %7 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wptr, align 8
  %inc.i = add i64 %8, 1
  store i64 %inc.i, ptr %wptr, align 8
  %9 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_mask.i, align 8
  %11 = trunc i64 %8 to i32
  %idxprom.i = and i32 %10, %11
  %arrayidx.i = getelementptr i32, ptr %6, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 15359, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ptr_mask.i, align 8
  %15 = load i64, ptr %wptr, align 8
  %and3.i = and i64 %15, %14
  store i64 %and3.i, ptr %wptr, align 8
  %16 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i29 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i29, label %if.then.i30, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %amdgpu_ring_write.exit40

if.then.i30:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %amdgpu_ring_write.exit40

amdgpu_ring_write.exit40:                         ; preds = %if.then.i30, %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 4
  %20 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wptr, align 8
  %inc.i33 = add i64 %21, 1
  store i64 %inc.i33, ptr %wptr, align 8
  %22 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_mask.i, align 8
  %24 = trunc i64 %21 to i32
  %idxprom.i35 = and i32 %23, %24
  %arrayidx.i36 = getelementptr i32, ptr %19, i32 %idxprom.i35
  %25 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx.i36, align 4
  %26 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ptr_mask.i, align 8
  %28 = load i64, ptr %wptr, align 8
  %and3.i38 = and i64 %28, %27
  store i64 %and3.i38, ptr %wptr, align 8
  %29 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count_dw.i, align 8
  %dec.i39 = add i32 %30, -1
  store i32 %dec.i39, ptr %count_dw.i, align 8
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %div27
  br i1 %exitcond.not, label %amdgpu_ring_write.exit40.for.end_crit_edge, label %amdgpu_ring_write.exit40.for.body_crit_edge

amdgpu_ring_write.exit40.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

amdgpu_ring_write.exit40.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %amdgpu_ring_write.exit40.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_uvd_ring_begin_use(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_uvd_ring_end_use(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvd_v3_1_set_interrupt_state(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvd_v3_1_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3) #6
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_sw_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_entity_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_uvd_sw_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvd_v3_1_start(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15791, i32 noundef 0) #6
  %or = or i32 %call, 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15791, i32 noundef %or, i32 noundef 0) #6
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15658, i32 noundef 0) #6
  %and.i = and i32 %call.i, -9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15658, i32 noundef %and.i, i32 noundef 0) #6
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15660, i32 noundef 0) #6
  %or3.i = and i32 %call1.i, -2147483646
  %tmp.0.i = or i32 %or3.i, 261
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15660, i32 noundef %tmp.0.i, i32 noundef 0) #6
  %uvd_ctx_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 47
  %0 = ptrtoint ptr %uvd_ctx_wreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uvd_ctx_wreg.i, align 8
  tail call void %1(ptr noundef %adev, i32 noundef 193, i32 noundef 31) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15658, i32 noundef 0, i32 noundef 0) #6
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 920, i32 noundef 0) #6
  %and5 = and i32 %call4, -262145
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 920, i32 noundef %and5, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15768, i32 noundef 512, i32 noundef 0) #6
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15680, i32 noundef 0) #6
  %and12 = and i32 %call11, -3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15680, i32 noundef %and12, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15725, i32 noundef 10, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15727, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15718, i32 noundef 3154752, i32 noundef 0) #6
  %call16 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15735, i32 noundef 0) #6
  %or17 = or i32 %call16, 16
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15735, i32 noundef %or17, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15737, i32 noundef 67903552, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15738, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15739, i32 noundef 67903552, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15740, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15742, i32 noundef 0, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15741, i32 noundef 136, i32 noundef 0) #6
  %uvd_ctx_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 46
  %7 = ptrtoint ptr %uvd_ctx_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uvd_ctx_rreg, align 4
  %call18 = tail call i32 %8(ptr noundef %adev, i32 noundef 155) #6
  %9 = ptrtoint ptr %uvd_ctx_wreg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uvd_ctx_wreg.i, align 8
  %and19 = and i32 %call18, -17
  tail call void %10(ptr noundef %adev, i32 noundef 155, i32 noundef %and19) #6
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15677, i32 noundef 0) #6
  %and23 = and i32 %call22, -257
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15677, i32 noundef %and23, i32 noundef 0) #6
  %call29 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 0) #6
  %and30 = and i32 %call29, -5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef %and30, i32 noundef 0) #6
  %call36 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 0) #6
  %and37 = and i32 %call36, -8193
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef %and37, i32 noundef 0) #6
  %call43 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 0) #6
  %and44 = and i32 %call43, -9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef %and44, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  br label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %if.end69.for.cond54.preheader_crit_edge, %entry
  %i.0280 = phi i32 [ %inc97, %if.end69.for.cond54.preheader_crit_edge ], [ 0, %entry ]
  br label %for.body56

for.body56:                                       ; preds = %while.body64.preheader.for.body56_crit_edge, %for.cond54.preheader
  %j.0277 = phi i32 [ 0, %for.cond54.preheader ], [ %inc, %while.body64.preheader.for.body56_crit_edge ]
  %call57 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15791, i32 noundef 0) #6
  %and58 = and i32 %call57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %while.body64.preheader, label %do.body102

while.body64.preheader:                           ; preds = %for.body56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  %inc = add nuw nsw i32 %j.0277, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end69, label %while.body64.preheader.for.body56_crit_edge

while.body64.preheader.for.body56_crit_edge:      ; preds = %while.body64.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body56

if.end69:                                         ; preds = %while.body64.preheader
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #6
  %call72 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 0) #6
  %or74 = or i32 %call72, 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef %or74, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  %call85 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 0) #6
  %and86 = and i32 %call85, -9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef %and86, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #6
  %inc97 = add nuw nsw i32 %i.0280, 1
  %exitcond281.not = icmp eq i32 %inc97, 10
  br i1 %exitcond281.not, label %if.then100, label %if.end69.for.cond54.preheader_crit_edge

if.end69.for.cond54.preheader_crit_edge:          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond54.preheader

if.then100:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #6
  br label %cleanup167

do.body102:                                       ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15680, i32 noundef 0) #6
  %or106 = or i32 %call104, 6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15680, i32 noundef %or106, i32 noundef 0) #6
  %call111 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15791, i32 noundef 0) #6
  %and112 = and i32 %call111, -5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15791, i32 noundef %and112, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15785, i32 noundef 285278465, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15782, i32 noundef 0, i32 noundef 0) #6
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4, i32 12
  %51 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %52, 32
  %conv = trunc i64 %shr to i32
  %or118 = or i32 %conv, -2147024896
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15654, i32 noundef %or118, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15780, i32 noundef 0, i32 noundef 0) #6
  %call119 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15780, i32 noundef 0) #6
  %conv120 = zext i32 %call119 to i64
  %wptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4, i32 7
  %53 = ptrtoint ptr %wptr to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv120, ptr %wptr, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15781, i32 noundef %call119, i32 noundef 0) #6
  %54 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gpu_addr, align 8
  %conv125 = trunc i64 %55 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15779, i32 noundef %conv125, i32 noundef 0) #6
  %ring_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4, i32 9
  %56 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ring_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i = icmp ugt i32 %57, 1
  %sub.i267 = add i32 %57, -1
  %58 = tail call i32 @llvm.ctlz.i32(i32 %sub.i267, i1 false) #6, !range !45
  %add.i = sub nuw nsw i32 32, %58
  %phi.bo = and i32 %add.i, 73247
  %cond157 = select i1 %cmp.i, i32 %phi.bo, i32 0
  %call161 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15785, i32 noundef 0) #6
  %and162 = and i32 %call161, -73504
  %and163 = or i32 %cond157, %and162
  %or164 = or i32 %and163, 256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15785, i32 noundef %or164, i32 noundef 0) #6
  br label %cleanup167

cleanup167:                                       ; preds = %do.body102, %if.then100
  %retval.0 = phi i32 [ -1, %if.then100 ], [ 0, %do.body102 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvd_v3_1_stop(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15785, i32 noundef 285278465, i32 noundef 0) #6
  br label %for.cond1.preheader

for.cond:                                         ; preds = %if.end
  %inc9 = add nuw nsw i32 %i.0103, 1
  %exitcond108.not = icmp eq i32 %inc9, 10
  br i1 %exitcond108.not, label %for.cond.for.cond14.preheader.preheader_crit_edge, label %for.cond.for.cond1.preheader_crit_edge

for.cond.for.cond1.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.cond.for.cond14.preheader.preheader_crit_edge: ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond14.preheader.preheader

for.cond1.preheader:                              ; preds = %for.cond.for.cond1.preheader_crit_edge, %entry
  %i.0103 = phi i32 [ 0, %entry ], [ %inc9, %for.cond.for.cond1.preheader_crit_edge ]
  br label %for.body3

for.body3:                                        ; preds = %if.end.for.body3_crit_edge, %for.cond1.preheader
  %j.0102 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %if.end.for.body3_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15791, i32 noundef 0) #6
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body3.for.cond14.preheader.preheader_crit_edge

for.body3.for.cond14.preheader.preheader_crit_edge: ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond14.preheader.preheader

for.cond14.preheader.preheader:                   ; preds = %for.body3.for.cond14.preheader.preheader_crit_edge, %for.cond.for.cond14.preheader.preheader_crit_edge
  br label %for.cond14.preheader

if.end:                                           ; preds = %for.body3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #6
  %inc = add nuw nsw i32 %j.0102, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.cond, label %if.end.for.body3_crit_edge

if.end.for.body3_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.cond11:                                       ; preds = %if.end21
  %inc30 = add nuw nsw i32 %i.1105, 1
  %exitcond110.not = icmp eq i32 %inc30, 10
  br i1 %exitcond110.not, label %for.cond11.do.body_crit_edge, label %for.cond11.for.cond14.preheader_crit_edge

for.cond11.for.cond14.preheader_crit_edge:        ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond14.preheader

for.cond11.do.body_crit_edge:                     ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.cond14.preheader:                             ; preds = %for.cond11.for.cond14.preheader_crit_edge, %for.cond14.preheader.preheader
  %i.1105 = phi i32 [ %inc30, %for.cond11.for.cond14.preheader_crit_edge ], [ 0, %for.cond14.preheader.preheader ]
  br label %for.body16

for.body16:                                       ; preds = %if.end21.for.body16_crit_edge, %for.cond14.preheader
  %j.1104 = phi i32 [ 0, %for.cond14.preheader ], [ %inc23, %if.end21.for.body16_crit_edge ]
  %call17 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15719, i32 noundef 0) #6
  %and18 = and i32 %call17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %for.body16.do.body_crit_edge

for.body16.do.body_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end21:                                         ; preds = %for.body16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  %inc23 = add nuw nsw i32 %j.1104, 1
  %exitcond109.not = icmp eq i32 %inc23, 100
  br i1 %exitcond109.not, label %for.cond11, label %if.end21.for.body16_crit_edge

if.end21.for.body16_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

do.body:                                          ; preds = %for.body16.do.body_crit_edge, %for.cond11.do.body_crit_edge
  %call32 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15677, i32 noundef 0) #6
  %or = or i32 %call32, 256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15677, i32 noundef %or, i32 noundef 0) #6
  br label %for.cond37.preheader

for.cond34:                                       ; preds = %if.end44
  %inc53 = add nuw nsw i32 %i.2107, 1
  %exitcond112.not = icmp eq i32 %inc53, 10
  br i1 %exitcond112.not, label %for.cond34.do.body55_crit_edge, label %for.cond34.for.cond37.preheader_crit_edge

for.cond34.for.cond37.preheader_crit_edge:        ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond37.preheader

for.cond34.do.body55_crit_edge:                   ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body55

for.cond37.preheader:                             ; preds = %for.cond34.for.cond37.preheader_crit_edge, %do.body
  %i.2107 = phi i32 [ 0, %do.body ], [ %inc53, %for.cond34.for.cond37.preheader_crit_edge ]
  br label %for.body39

for.body39:                                       ; preds = %if.end44.for.body39_crit_edge, %for.cond37.preheader
  %j.2106 = phi i32 [ 0, %for.cond37.preheader ], [ %inc46, %if.end44.for.body39_crit_edge ]
  %call40 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15719, i32 noundef 0) #6
  %and41 = and i32 %call40, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end44, label %for.body39.do.body55_crit_edge

for.body39.do.body55_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body55

if.end44:                                         ; preds = %for.body39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  %inc46 = add nuw nsw i32 %j.2106, 1
  %exitcond111.not = icmp eq i32 %inc46, 100
  br i1 %exitcond111.not, label %for.cond34, label %if.end44.for.body39_crit_edge

if.end44.for.body39_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

do.body55:                                        ; preds = %for.body39.do.body55_crit_edge, %for.cond34.do.body55_crit_edge
  %call57 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15689, i32 noundef 0) #6
  %and58 = and i32 %call57, -5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15689, i32 noundef %and58, i32 noundef 0) #6
  %call64 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15768, i32 noundef 0) #6
  %and65 = and i32 %call64, -513
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15768, i32 noundef %and65, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15776, i32 noundef 8204, i32 noundef 0) #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15791, i32 noundef 0, i32 noundef 0) #6
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15658, i32 noundef 0) #6
  %and.i = and i32 %call.i, -9
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15658, i32 noundef %and.i, i32 noundef 0) #6
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 15660, i32 noundef 0) #6
  %or3.i = and i32 %call1.i, -2147483646
  %tmp.0.i = or i32 %or3.i, 2147481861
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 15660, i32 noundef %tmp.0.i, i32 noundef 0) #6
  %uvd_ctx_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 47
  %3 = ptrtoint ptr %uvd_ctx_wreg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %uvd_ctx_wreg.i, align 8
  tail call void %4(ptr noundef %adev, i32 noundef 193, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_uvd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @uvd_v3_1_ip_block, !1, !"uvd_v3_1_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 818, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 802, i32 10}
!4 = !{ptr @uvd_v3_1_ip_funcs, !5, !"uvd_v3_1_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 801, i32 34}
!6 = !{ptr @uvd_v3_1_ring_funcs, !7, !"uvd_v3_1_ring_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 179, i32 39}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 113, i32 2}
!12 = !{ptr @uvd_v3_1_irq_funcs, !13, !"uvd_v3_1_irq_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 522, i32 42}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 516, i32 2}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 563, i32 22}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 641, i32 3}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 652, i32 3}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 658, i32 3}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 685, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @uvd_v3_1_hw_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @uvd_v3_1_hw_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 394, i32 3}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c", i32 404, i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i32 0, i32 33}
