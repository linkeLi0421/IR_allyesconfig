; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/vce_v4_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.mmsch_v1_0_init_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.80, i64, i64, i32, %struct.kref, i32 }
%union.anon.80 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vce_v4_0\00", [23 x i8] zeroinitializer }, align 32
@vce_v4_0_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @vce_v4_0_early_init, ptr null, ptr @vce_v4_0_sw_init, ptr @vce_v4_0_sw_fini, ptr null, ptr @vce_v4_0_hw_init, ptr @vce_v4_0_hw_fini, ptr null, ptr @vce_v4_0_suspend, ptr @vce_v4_0_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vce_v4_0_set_clockgating_state, ptr @vce_v4_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@vce_v4_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 9, i32 4, i32 0, i32 0, ptr @vce_v4_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@vce_v4_0_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 4, i32 63, i32 0, i8 0, i8 1, i32 1, i32 0, ptr @vce_v4_0_ring_get_rptr, ptr @vce_v4_0_ring_get_wptr, ptr @vce_v4_0_ring_set_wptr, ptr @amdgpu_vce_ring_parse_cs_vm, ptr null, i32 45, i32 5, ptr @vce_v4_0_ring_emit_ib, ptr @vce_v4_0_ring_emit_fence, ptr null, ptr @vce_v4_0_emit_vm_flush, ptr null, ptr null, ptr @amdgpu_vce_ring_test_ring, ptr @amdgpu_vce_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr @vce_v4_0_ring_insert_end, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_vce_ring_begin_use, ptr @amdgpu_vce_ring_end_use, ptr null, ptr null, ptr null, ptr @vce_v4_0_emit_wreg, ptr @vce_v4_0_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vce_v4_0_set_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm] VCE enabled in VM mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vce_v4_0_set_ring_funcs\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/vce_v4_0.c\00", [58 x i8] zeroinitializer }, align 32
@vce_v4_0_set_ring_funcs._entry_ptr = internal global ptr @vce_v4_0_set_ring_funcs._entry, section ".printk_index", align 4
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@vce_v4_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @vce_v4_0_set_interrupt_state, ptr @vce_v4_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IH: VCE\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@vce_v4_0_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] PSP loading VCE firmware\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vce_v4_0_sw_init\00", [47 x i8] zeroinitializer }, align 32
@vce_v4_0_sw_init._entry_ptr = internal global ptr @vce_v4_0_sw_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vce%d\00", [26 x i8] zeroinitializer }, align 32
@vce_v4_0_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] VCE initialized successfully.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vce_v4_0_hw_init\00", [47 x i8] zeroinitializer }, align 32
@vce_v4_0_hw_init._entry_ptr = internal global ptr @vce_v4_0_hw_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vce_v4_0_mmsch_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 198, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: failed to init MMSCH, mmVCE_MMSCH_VF_MAILBOX_RESP = %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vce_v4_0_mmsch_start\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vce_v4_0_mmsch_start._entry_ptr = internal global ptr @vce_v4_0_mmsch_start._entry, section ".printk_index", align 4
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VCE not responding, giving up!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"VCE not responding, trying to reset the ECPU!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"For SRIOV client, shouldn't do anything.\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1081, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"vce_v4_0_ip_funcs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1080, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"vce_v4_0_ip_block\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1155, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"vce_v4_0_ring_vm_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1100, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1141, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 314, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"vce_v4_0_irq_funcs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1144, i32 42 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1063, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1072, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 458, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 469, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 538, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 198, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 381, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 139, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 554, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @vce_v4_0_hw_init._entry, ptr @vce_v4_0_hw_init._entry_ptr, ptr @vce_v4_0_mmsch_start._entry, ptr @vce_v4_0_mmsch_start._entry_ptr, ptr @vce_v4_0_set_ring_funcs._entry, ptr @vce_v4_0_set_ring_funcs._entry_ptr, ptr @vce_v4_0_sw_init._entry, ptr @vce_v4_0_sw_init._entry_ptr, ptr @.str, ptr @vce_v4_0_ip_funcs, ptr @vce_v4_0_ip_block, ptr @vce_v4_0_ring_vm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vce_v4_0_irq_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v4_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v4_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v4_0_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v4_0_set_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v4_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v4_0_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v4_0_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v4_0_mmsch_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_early_init(ptr nocapture noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 3, i32 1
  %2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry ]
  %funcs.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.012.i, i32 1
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vce_v4_0_ring_vm_funcs, ptr %funcs.i, align 4
  %me.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.012.i, i32 16
  %5 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.012.i, ptr %me.i, align 8
  %inc.i = add nuw i32 %i.012.i, 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %vce_v4_0_set_ring_funcs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vce_v4_0_set_ring_funcs.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  %irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 13
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %irq.i, align 8
  %funcs.i7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 13, i32 2
  %9 = ptrtoint ptr %funcs.i7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vce_v4_0_irq_funcs, ptr %funcs.i7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vce = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 13
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 17, i32 noundef 167, ptr noundef %irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup76_crit_edge

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

if.end:                                           ; preds = %entry
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %0 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  %spec.select = select i1 %cmp.not, i32 380928, i32 774144
  %call3 = tail call i32 @amdgpu_vce_sw_init(ptr noundef %handle, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup76_crit_edge

if.end.cleanup76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp9 = icmp eq i32 %3, 2
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %4 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vce, align 8
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %5, i32 0, i32 4, i32 0, i32 5
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 8
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %7, i32 noundef 3264, i32 noundef -1) #12
  %saved_bo = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 3
  %8 = ptrtoint ptr %saved_bo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %saved_bo, align 4
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.then10.cleanup76_crit_edge, label %if.end20

if.then10.cleanup76_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

if.end20:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 11
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 27
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 27, ptr %arrayidx, align 8
  %fw28 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 27, i32 1
  %14 = ptrtoint ptr %fw28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %fw28, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ucode_size_bytes, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add29 = add i32 %17, 4095
  %and = and i32 %add29, -4096
  %fw_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 3
  %18 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_size, align 8
  %add31 = add i32 %and, %19
  store i32 %add31, ptr %fw_size, align 8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %if.end38

if.else:                                          ; preds = %if.end6
  %call34 = tail call i32 @amdgpu_vce_resume(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else.if.end38_crit_edge, label %if.else.cleanup76_crit_edge

if.else.cleanup76_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %if.else.if.end38_crit_edge, %if.end20
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 17
  %20 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp40127.not = icmp eq i32 %21, 0
  br i1 %cmp40127.not, label %if.end38.for.end_crit_edge, label %for.body.lr.ph

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end38
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %vce_ring2_3 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16, i32 0, i32 5
  %vce_ring0_1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16, i32 0, i32 4
  %doorbell_index51 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 23
  br label %for.body

for.cond:                                         ; preds = %if.end58
  %inc = add nuw i32 %i.0128, 1
  %22 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rings, align 4
  %cmp40 = icmp ult i32 %inc, %23
  br i1 %cmp40, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call41 = tail call i32 @amdgpu_vce_get_ring_prio(i32 noundef %i.0128) #8
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.0128
  %name = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.0128, i32 29
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.9, i32 noundef %i.0128)
  %24 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %virt, align 8
  %and46 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %for.body.if.end58_crit_edge, label %if.then48

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then48:                                        ; preds = %for.body
  %use_doorbell = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.0128, i32 24
  %26 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %use_doorbell, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0128)
  %cmp49 = icmp eq i32 %i.0128, 0
  br i1 %cmp49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %vce_ring0_1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vce_ring0_1, align 4
  %mul = shl i32 %28, 1
  %29 = ptrtoint ptr %doorbell_index51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %doorbell_index51, align 8
  br label %if.end58

if.else52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %vce_ring2_3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vce_ring2_3, align 4
  %mul54 = shl i32 %31, 1
  %add55 = or i32 %mul54, 1
  %doorbell_index56 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.0128, i32 23
  %32 = ptrtoint ptr %doorbell_index56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add55, ptr %doorbell_index56, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.then50, %for.body.if.end58_crit_edge
  %call61 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx44, i32 noundef 512, ptr noundef %irq, i32 noundef 0, i32 noundef %call41, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.cond, label %if.end58.cleanup76_crit_edge

if.end58.cleanup76_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end38.for.end_crit_edge
  %call68 = tail call i32 @amdgpu_vce_entity_init(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %for.end.cleanup76_crit_edge

for.end.cleanup76_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

if.end71:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call72 = tail call i32 @amdgpu_virt_alloc_mm_table(ptr noundef %handle) #8
  br label %cleanup76

cleanup76:                                        ; preds = %if.end71, %for.end.cleanup76_crit_edge, %if.end58.cleanup76_crit_edge, %if.else.cleanup76_crit_edge, %if.then10.cleanup76_crit_edge, %if.end.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  %retval.4 = phi i32 [ %call, %entry.cleanup76_crit_edge ], [ %call3, %if.end.cleanup76_crit_edge ], [ %call34, %if.else.cleanup76_crit_edge ], [ %call68, %for.end.cleanup76_crit_edge ], [ %call72, %if.end71 ], [ -12, %if.then10.cleanup76_crit_edge ], [ %call61, %if.end58.cleanup76_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_virt_free_mm_table(ptr noundef %handle) #8
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %0 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %saved_bo = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 3
  %2 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %saved_bo, align 4
  tail call void @kvfree(ptr noundef %3) #8
  %4 = ptrtoint ptr %saved_bo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %saved_bo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @amdgpu_vce_suspend(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @amdgpu_vce_sw_fini(ptr noundef %handle) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 8, i32 1
  %2 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_addr.i, align 4
  %vce_table_offset.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %vce_table_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vce_table_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end294.i_crit_edge

if.then.if.end294.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end294.i

land.lhs.true.i:                                  ; preds = %if.then
  %vce_table_size.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %vce_table_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vce_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.i = icmp eq i32 %7, 0
  br i1 %cmp13.i, label %if.then.i, label %land.lhs.true.i.if.end294.i_crit_edge

land.lhs.true.i.if.end294.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end294.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %3, align 4
  %header_size.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %header_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %header_size.i, align 4
  %uvd_table_offset.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %uvd_table_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uvd_table_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14.i = icmp eq i32 %11, 0
  br i1 %cmp14.i, label %land.lhs.true15.i, label %if.then.i.if.else.i_crit_edge

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true15.i:                                ; preds = %if.then.i
  %uvd_table_size.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %uvd_table_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uvd_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16.i = icmp eq i32 %13, 0
  br i1 %cmp16.i, label %land.lhs.true15.i.if.end.i_crit_edge, label %land.lhs.true15.i.if.else.i_crit_edge

land.lhs.true15.i.if.else.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true15.i.if.end.i_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true15.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %uvd_table_size20.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %uvd_table_size20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uvd_table_size20.i, align 4
  %add.i = add i32 %15, %11
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true15.i.if.end.i_crit_edge
  %storemerge.i = phi i32 [ %add.i, %if.else.i ], [ 8, %land.lhs.true15.i.if.end.i_crit_edge ]
  %16 = ptrtoint ptr %vce_table_offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %vce_table_offset.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 %storemerge.i
  %arrayidx25.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %17 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx25.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 12
  %21 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gpu_addr.i, align 8
  %add28.i = shl i32 %20, 4
  %bf.shl.i.i = add i32 %add28.i, 42496
  %direct_wt.sroa.71.0.insert.ext.i = and i64 %22, 4294967295
  %direct_wt.sroa.0.0.insert.ext.i = zext i32 %bf.shl.i.i to i64
  %direct_wt.sroa.0.0.insert.shift.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext.i, 32
  %direct_wt.sroa.0.0.insert.insert.i = or i64 %direct_wt.sroa.0.0.insert.shift.i, %direct_wt.sroa.71.0.insert.ext.i
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert.i, ptr %add.ptr.i, align 1
  %add.ptr29.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %24 = load ptr, ptr %arrayidx25.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = load i64, ptr %gpu_addr.i, align 8
  %add35.i = shl i32 %26, 4
  %bf.shl.i458.i = add i32 %add35.i, 42512
  %direct_wt.sroa.0.0.insert.ext648.i = zext i32 %bf.shl.i458.i to i64
  %direct_wt.sroa.0.0.insert.insert651.i = tail call i64 @llvm.fshl.i64(i64 %direct_wt.sroa.0.0.insert.ext648.i, i64 %27, i64 32) #8
  %28 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert651.i, ptr %add.ptr29.i, align 1
  %add.ptr39.i = getelementptr i32, ptr %add.ptr29.i, i32 2
  %29 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx25.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %ring_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 9
  %33 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ring_size.i, align 8
  %div456.i = lshr i32 %34, 2
  %add45.i = shl i32 %32, 4
  %bf.shl.i463.i = add i32 %add45.i, 42528
  %direct_wt.sroa.71.0.insert.ext757.i = zext i32 %div456.i to i64
  %direct_wt.sroa.0.0.insert.ext653.i = zext i32 %bf.shl.i463.i to i64
  %direct_wt.sroa.0.0.insert.shift654.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext653.i, 32
  %direct_wt.sroa.0.0.insert.insert656.i = or i64 %direct_wt.sroa.0.0.insert.shift654.i, %direct_wt.sroa.71.0.insert.ext757.i
  %35 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert656.i, ptr %add.ptr39.i, align 1
  %add.ptr46.i = getelementptr i32, ptr %add.ptr39.i, i32 2
  %36 = load ptr, ptr %arrayidx25.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add52.i = shl i32 %38, 4
  %bf.shl.i468.i = add i32 %add52.i, 64864
  %direct_wt.sroa.0.0.insert.ext658.i = zext i32 %bf.shl.i468.i to i64
  %direct_wt.sroa.0.0.insert.shift659.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext658.i, 32
  %direct_wt.sroa.0.0.insert.insert661.i = or i64 %direct_wt.sroa.0.0.insert.shift659.i, 3768320
  %39 = ptrtoint ptr %add.ptr46.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert661.i, ptr %add.ptr46.i, align 1
  %add.ptr53.i = getelementptr i32, ptr %add.ptr46.i, i32 2
  %40 = load ptr, ptr %arrayidx25.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add59.i = shl i32 %42, 4
  %bf.set.i475.i = add i32 %add59.i, 65219
  %43 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %bf.set.i475.i, ptr %add.ptr53.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr53.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr53.i, i32 4
  %44 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr53.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 0, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr53.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr53.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr53.i, i32 8
  %45 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr53.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 -2, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr53.sroa_idx.i, align 1
  %add.ptr60.i = getelementptr i32, ptr %add.ptr53.i, i32 3
  %46 = load ptr, ptr %arrayidx25.i, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add66.i = shl i32 %48, 4
  %bf.shl.i477.i = add i32 %add66.i, 64976
  %direct_wt.sroa.0.0.insert.ext663.i = zext i32 %bf.shl.i477.i to i64
  %direct_wt.sroa.0.0.insert.shift664.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext663.i, 32
  %49 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.shift664.i, ptr %add.ptr60.i, align 1
  %add.ptr67.i = getelementptr i32, ptr %add.ptr60.i, i32 2
  %50 = load ptr, ptr %arrayidx25.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add73.i = shl i32 %52, 4
  %bf.shl.i482.i = add i32 %add73.i, 64992
  %direct_wt.sroa.0.0.insert.ext668.i = zext i32 %bf.shl.i482.i to i64
  %direct_wt.sroa.0.0.insert.shift669.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext668.i, 32
  %53 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.shift669.i, ptr %add.ptr67.i, align 1
  %add.ptr74.i = getelementptr i32, ptr %add.ptr67.i, i32 2
  %54 = load ptr, ptr %arrayidx25.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add80.i = shl i32 %56, 4
  %bf.shl.i487.i = add i32 %add80.i, 64896
  %direct_wt.sroa.0.0.insert.ext673.i = zext i32 %bf.shl.i487.i to i64
  %direct_wt.sroa.0.0.insert.shift674.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext673.i, 32
  %57 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.shift674.i, ptr %add.ptr74.i, align 1
  %add.ptr81.i = getelementptr i32, ptr %add.ptr74.i, i32 2
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %58 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp83.i = icmp eq i32 %59, 2
  br i1 %cmp83.i, label %if.then85.i, label %if.else119.i

if.then85.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %tmr_mc_addr_lo.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 27, i32 5
  %60 = ptrtoint ptr %tmr_mc_addr_lo.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tmr_mc_addr_lo.i, align 8
  %tmr_mc_addr_hi.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 0, i32 27, i32 6
  %62 = ptrtoint ptr %tmr_mc_addr_hi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tmr_mc_addr_hi.i, align 4
  %conv91.i = zext i32 %63 to i64
  %shl.i = shl nuw i64 %conv91.i, 32
  %conv92.i = zext i32 %61 to i64
  %or.i = or i64 %shl.i, %conv92.i
  %64 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx25.i, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %shr98.i = lshr i64 %or.i, 8
  %add97.i = shl i32 %67, 4
  %bf.shl.i492.i = add i32 %add97.i, 67936
  %direct_wt.sroa.71.0.insert.ext777.i = and i64 %shr98.i, 4294967295
  %direct_wt.sroa.0.0.insert.ext678.i = zext i32 %bf.shl.i492.i to i64
  %direct_wt.sroa.0.0.insert.shift679.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext678.i, 32
  %direct_wt.sroa.0.0.insert.insert681.i = or i64 %direct_wt.sroa.0.0.insert.shift679.i, %direct_wt.sroa.71.0.insert.ext777.i
  %68 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert681.i, ptr %add.ptr81.i, align 1
  %add.ptr100.i = getelementptr i32, ptr %add.ptr81.i, i32 2
  %69 = load ptr, ptr %arrayidx25.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %shr107.i = lshr i32 %63, 8
  %and108.i = and i32 %shr107.i, 255
  %add106.i = shl i32 %71, 4
  %bf.shl.i497.i = add i32 %add106.i, 67680
  %direct_wt.sroa.71.0.insert.ext781.i = zext i32 %and108.i to i64
  %direct_wt.sroa.0.0.insert.ext683.i = zext i32 %bf.shl.i497.i to i64
  %direct_wt.sroa.0.0.insert.shift684.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext683.i, 32
  %direct_wt.sroa.0.0.insert.insert686.i = or i64 %direct_wt.sroa.0.0.insert.shift684.i, %direct_wt.sroa.71.0.insert.ext781.i
  %72 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert686.i, ptr %add.ptr100.i, align 1
  %add.ptr110.i = getelementptr i32, ptr %add.ptr100.i, i32 2
  %73 = load ptr, ptr %arrayidx25.i, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add116.i = shl i32 %75, 4
  %bf.shl.i502.i = add i32 %add116.i, 41104
  %direct_wt.sroa.0.0.insert.ext688.i = zext i32 %bf.shl.i502.i to i64
  %direct_wt.sroa.0.0.insert.shift689.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext688.i, 32
  %76 = ptrtoint ptr %add.ptr110.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.shift689.i, ptr %add.ptr110.i, align 1
  br label %if.end151.i

if.else119.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx25.i, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %gpu_addr126.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 1
  %81 = ptrtoint ptr %gpu_addr126.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %gpu_addr126.i, align 8
  %shr127.i = lshr i64 %82, 8
  %add124.i = shl i32 %80, 4
  %bf.shl.i507.i = add i32 %add124.i, 67936
  %direct_wt.sroa.71.0.insert.ext789.i = and i64 %shr127.i, 4294967295
  %direct_wt.sroa.0.0.insert.ext693.i = zext i32 %bf.shl.i507.i to i64
  %direct_wt.sroa.0.0.insert.shift694.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext693.i, 32
  %direct_wt.sroa.0.0.insert.insert696.i = or i64 %direct_wt.sroa.0.0.insert.shift694.i, %direct_wt.sroa.71.0.insert.ext789.i
  %83 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert696.i, ptr %add.ptr81.i, align 1
  %add.ptr129.i = getelementptr i32, ptr %add.ptr81.i, i32 2
  %84 = load ptr, ptr %arrayidx25.i, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %87 = load i64, ptr %gpu_addr126.i, align 8
  %shr138.i = lshr i64 %87, 40
  %add135.i = shl i32 %86, 4
  %bf.shl.i512.i = add i32 %add135.i, 67680
  %direct_wt.sroa.71.0.insert.ext793.i = and i64 %shr138.i, 255
  %direct_wt.sroa.0.0.insert.ext698.i = zext i32 %bf.shl.i512.i to i64
  %direct_wt.sroa.0.0.insert.shift699.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext698.i, 32
  %direct_wt.sroa.0.0.insert.insert701.i = or i64 %direct_wt.sroa.0.0.insert.shift699.i, %direct_wt.sroa.71.0.insert.ext793.i
  %88 = ptrtoint ptr %add.ptr129.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert701.i, ptr %add.ptr129.i, align 1
  %add.ptr141.i = getelementptr i32, ptr %add.ptr129.i, i32 2
  %89 = load ptr, ptr %arrayidx25.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add147.i = shl i32 %91, 4
  %bf.shl.i517.i = add i32 %add147.i, 41104
  %direct_wt.sroa.0.0.insert.ext703.i = zext i32 %bf.shl.i517.i to i64
  %direct_wt.sroa.0.0.insert.shift704.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext703.i, 32
  %direct_wt.sroa.0.0.insert.insert706.i = or i64 %direct_wt.sroa.0.0.insert.shift704.i, 256
  %92 = ptrtoint ptr %add.ptr141.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert706.i, ptr %add.ptr141.i, align 1
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else119.i, %if.then85.i
  %direct_wt.sroa.0.0.i = phi i32 [ %bf.shl.i502.i, %if.then85.i ], [ %bf.shl.i517.i, %if.else119.i ]
  %93 = getelementptr i32, ptr %add.ptr81.i, i32 2
  %init_table.0.i = getelementptr i32, ptr %93, i32 4
  %94 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx25.i, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %gpu_addr158.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 1
  %98 = ptrtoint ptr %gpu_addr158.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %gpu_addr158.i, align 8
  %shr159.i = lshr i64 %99, 8
  %add156.i = shl i32 %97, 4
  %bf.shl.i522.i = add i32 %add156.i, 67952
  %bf.clear.i523.i = and i32 %direct_wt.sroa.0.0.i, 15
  %bf.set.i524.i = or i32 %bf.shl.i522.i, %bf.clear.i523.i
  %direct_wt.sroa.71.0.insert.ext801.i = and i64 %shr159.i, 4294967295
  %direct_wt.sroa.0.0.insert.ext708.i = zext i32 %bf.set.i524.i to i64
  %direct_wt.sroa.0.0.insert.shift709.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext708.i, 32
  %direct_wt.sroa.0.0.insert.insert711.i = or i64 %direct_wt.sroa.0.0.insert.shift709.i, %direct_wt.sroa.71.0.insert.ext801.i
  %100 = ptrtoint ptr %init_table.0.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert711.i, ptr %init_table.0.i, align 1
  %add.ptr161.i = getelementptr i32, ptr %init_table.0.i, i32 2
  %101 = load ptr, ptr %arrayidx25.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %104 = load i64, ptr %gpu_addr158.i, align 8
  %shr170.i = lshr i64 %104, 40
  %add167.i = shl i32 %103, 4
  %bf.shl.i527.i = add i32 %add167.i, 67696
  %bf.set.i529.i = or i32 %bf.shl.i527.i, %bf.clear.i523.i
  %direct_wt.sroa.71.0.insert.ext805.i = and i64 %shr170.i, 255
  %direct_wt.sroa.0.0.insert.ext713.i = zext i32 %bf.set.i529.i to i64
  %direct_wt.sroa.0.0.insert.shift714.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext713.i, 32
  %direct_wt.sroa.0.0.insert.insert716.i = or i64 %direct_wt.sroa.0.0.insert.shift714.i, %direct_wt.sroa.71.0.insert.ext805.i
  %105 = ptrtoint ptr %add.ptr161.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert716.i, ptr %add.ptr161.i, align 1
  %add.ptr173.i = getelementptr i32, ptr %add.ptr161.i, i32 2
  %106 = load ptr, ptr %arrayidx25.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %109 = load i64, ptr %gpu_addr158.i, align 8
  %shr182.i = lshr i64 %109, 8
  %add179.i = shl i32 %108, 4
  %bf.shl.i532.i = add i32 %add179.i, 67968
  %bf.set.i534.i = or i32 %bf.shl.i532.i, %bf.clear.i523.i
  %direct_wt.sroa.71.0.insert.ext809.i = and i64 %shr182.i, 4294967295
  %direct_wt.sroa.0.0.insert.ext718.i = zext i32 %bf.set.i534.i to i64
  %direct_wt.sroa.0.0.insert.shift719.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext718.i, 32
  %direct_wt.sroa.0.0.insert.insert721.i = or i64 %direct_wt.sroa.0.0.insert.shift719.i, %direct_wt.sroa.71.0.insert.ext809.i
  %110 = ptrtoint ptr %add.ptr173.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert721.i, ptr %add.ptr173.i, align 1
  %add.ptr184.i = getelementptr i32, ptr %add.ptr173.i, i32 2
  %111 = load ptr, ptr %arrayidx25.i, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %114 = load i64, ptr %gpu_addr158.i, align 8
  %shr193.i = lshr i64 %114, 40
  %add190.i = shl i32 %113, 4
  %bf.shl.i537.i = add i32 %add190.i, 67712
  %bf.set.i539.i = or i32 %bf.shl.i537.i, %bf.clear.i523.i
  %direct_wt.sroa.71.0.insert.ext813.i = and i64 %shr193.i, 255
  %direct_wt.sroa.0.0.insert.ext723.i = zext i32 %bf.set.i539.i to i64
  %direct_wt.sroa.0.0.insert.shift724.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext723.i, 32
  %direct_wt.sroa.0.0.insert.insert726.i = or i64 %direct_wt.sroa.0.0.insert.shift724.i, %direct_wt.sroa.71.0.insert.ext813.i
  %115 = ptrtoint ptr %add.ptr184.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert726.i, ptr %add.ptr184.i, align 1
  %add.ptr196.i = getelementptr i32, ptr %add.ptr184.i, i32 2
  %116 = load ptr, ptr %arrayidx25.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %add202.i = shl i32 %118, 4
  %bf.shl.i542.i = add i32 %add202.i, 41120
  %bf.set.i544.i = or i32 %bf.shl.i542.i, %bf.clear.i523.i
  %direct_wt.sroa.0.0.insert.ext728.i = zext i32 %bf.set.i544.i to i64
  %direct_wt.sroa.0.0.insert.shift729.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext728.i, 32
  %direct_wt.sroa.0.0.insert.insert731.i = or i64 %direct_wt.sroa.0.0.insert.shift729.i, 393216
  %119 = ptrtoint ptr %add.ptr196.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert731.i, ptr %add.ptr196.i, align 1
  %add.ptr203.i = getelementptr i32, ptr %add.ptr196.i, i32 2
  %120 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp207.not.i = icmp eq i32 %121, 2
  %spec.select.i = select i1 %cmp207.not.i, i32 0, i32 393472
  %122 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx25.i, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %or216.i = or i32 %spec.select.i, 16777216
  %add214.i = shl i32 %125, 4
  %bf.shl.i547.i = add i32 %add214.i, 41136
  %bf.set.i549.i = or i32 %bf.shl.i547.i, %bf.clear.i523.i
  %direct_wt.sroa.71.0.insert.ext821.i = zext i32 %or216.i to i64
  %direct_wt.sroa.0.0.insert.ext733.i = zext i32 %bf.set.i549.i to i64
  %direct_wt.sroa.0.0.insert.shift734.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext733.i, 32
  %direct_wt.sroa.0.0.insert.insert736.i = or i64 %direct_wt.sroa.0.0.insert.shift734.i, %direct_wt.sroa.71.0.insert.ext821.i
  %126 = ptrtoint ptr %add.ptr203.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert736.i, ptr %add.ptr203.i, align 1
  %add.ptr217.i = getelementptr i32, ptr %add.ptr203.i, i32 2
  %127 = load ptr, ptr %arrayidx25.i, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %add223.i = shl i32 %129, 4
  %bf.shl.i552.i = add i32 %add223.i, 41152
  %bf.set.i554.i = or i32 %bf.shl.i552.i, %bf.clear.i523.i
  %direct_wt.sroa.0.0.insert.ext738.i = zext i32 %bf.set.i554.i to i64
  %direct_wt.sroa.0.0.insert.shift739.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext738.i, 32
  %direct_wt.sroa.0.0.insert.insert741.i = or i64 %direct_wt.sroa.0.0.insert.shift739.i, 65536
  %130 = ptrtoint ptr %add.ptr217.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert741.i, ptr %add.ptr217.i, align 1
  %add.ptr224.i = getelementptr i32, ptr %add.ptr217.i, i32 2
  %131 = load ptr, ptr %arrayidx25.i, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %or233.i = or i32 %spec.select.i, 33619968
  %add231.i = shl i32 %133, 4
  %bf.shl.i557.i = add i32 %add231.i, 41168
  %bf.set.i559.i = or i32 %bf.shl.i557.i, %bf.clear.i523.i
  %direct_wt.sroa.71.0.insert.ext829.i = zext i32 %or233.i to i64
  %direct_wt.sroa.0.0.insert.ext743.i = zext i32 %bf.set.i559.i to i64
  %direct_wt.sroa.0.0.insert.shift744.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext743.i, 32
  %direct_wt.sroa.0.0.insert.insert746.i = or i64 %direct_wt.sroa.0.0.insert.shift744.i, %direct_wt.sroa.71.0.insert.ext829.i
  %134 = ptrtoint ptr %add.ptr224.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert746.i, ptr %add.ptr224.i, align 1
  %add.ptr234.i = getelementptr i32, ptr %add.ptr224.i, i32 2
  %135 = load ptr, ptr %arrayidx25.i, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %add240.i = shl i32 %137, 4
  %bf.shl.i562.i = add i32 %add240.i, 41184
  %bf.set.i564.i = or i32 %bf.shl.i562.i, %bf.clear.i523.i
  %direct_wt.sroa.0.0.insert.ext748.i = zext i32 %bf.set.i564.i to i64
  %direct_wt.sroa.0.0.insert.shift749.i = shl nuw i64 %direct_wt.sroa.0.0.insert.ext748.i, 32
  %direct_wt.sroa.0.0.insert.insert751.i = or i64 %direct_wt.sroa.0.0.insert.shift749.i, 315392
  %138 = ptrtoint ptr %add.ptr234.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 8)
  store i64 %direct_wt.sroa.0.0.insert.insert751.i, ptr %add.ptr234.i, align 1
  %add.ptr241.i = getelementptr i32, ptr %add.ptr234.i, i32 2
  %139 = load ptr, ptr %arrayidx25.i, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %add247.i = shl i32 %141, 4
  %bf.set.i569.i = add i32 %add247.i, 64755
  %142 = ptrtoint ptr %add.ptr241.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %bf.set.i569.i, ptr %add.ptr241.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr241.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr241.i, i32 4
  %143 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr241.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %143, i32 4)
  store i32 0, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr241.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr241.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr241.i, i32 8
  %144 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr241.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 -257, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr241.sroa_idx.i, align 1
  %add.ptr248.i = getelementptr i32, ptr %add.ptr241.i, i32 3
  %145 = load ptr, ptr %arrayidx25.i, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  %add254.i = shl i32 %147, 4
  %bf.set.i575.i = add i32 %add254.i, 45059
  %148 = ptrtoint ptr %add.ptr248.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 4)
  store i32 %bf.set.i575.i, ptr %add.ptr248.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr248.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr248.i, i32 4
  %149 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr248.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 8, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr248.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr248.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr248.i, i32 8
  %150 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr248.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 8, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr248.sroa_idx.i, align 1
  %add.ptr255.i = getelementptr i32, ptr %add.ptr248.i, i32 3
  %151 = load ptr, ptr %arrayidx25.i, align 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %add261.i = shl i32 %153, 4
  %bf.set.i581.i = add i32 %add261.i, 40979
  %154 = ptrtoint ptr %add.ptr255.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 %bf.set.i581.i, ptr %add.ptr255.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr255.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr255.i, i32 4
  %155 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr255.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 -2, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr255.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr255.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr255.i, i32 8
  %156 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr255.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 1, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr255.sroa_idx.i, align 1
  %add.ptr262.i = getelementptr i32, ptr %add.ptr255.i, i32 3
  %157 = load ptr, ptr %arrayidx25.i, align 8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 4
  %add268.i = shl i32 %159, 4
  %bf.set.i587.i = add i32 %add268.i, 41043
  %160 = ptrtoint ptr %add.ptr262.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %bf.set.i587.i, ptr %add.ptr262.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr262.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr262.i, i32 4
  %161 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr262.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 1, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr262.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr262.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr262.i, i32 8
  %162 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr262.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 -2097154, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr262.sroa_idx.i, align 1
  %add.ptr269.i = getelementptr i32, ptr %add.ptr262.i, i32 3
  %163 = load ptr, ptr %arrayidx25.i, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  %add275.i = shl i32 %165, 4
  %bf.set.i593.i = add i32 %add275.i, 42115
  %166 = ptrtoint ptr %add.ptr269.i to i32
  call void @__asan_storeN_noabort(i32 %166, i32 4)
  store i32 %bf.set.i593.i, ptr %add.ptr269.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr269.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr269.i, i32 4
  %167 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr269.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 4)
  store i32 0, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr269.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr269.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr269.i, i32 8
  %168 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr269.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 -2, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr269.sroa_idx.i, align 1
  %add.ptr276.i = getelementptr i32, ptr %add.ptr269.i, i32 3
  %169 = load ptr, ptr %arrayidx25.i, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %add282.i = shl i32 %171, 4
  %bf.set.i599.i = add i32 %add282.i, 40978
  %172 = ptrtoint ptr %add.ptr276.i to i32
  call void @__asan_storeN_noabort(i32 %172, i32 4)
  store i32 %bf.set.i599.i, ptr %add.ptr276.i, align 1
  %direct_poll.sroa.8.0.add.ptr276.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr276.i, i32 4
  %173 = ptrtoint ptr %direct_poll.sroa.8.0.add.ptr276.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 2, ptr %direct_poll.sroa.8.0.add.ptr276.sroa_idx.i, align 1
  %direct_poll.sroa.9.0.add.ptr276.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr276.i, i32 8
  %174 = ptrtoint ptr %direct_poll.sroa.9.0.add.ptr276.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 2, ptr %direct_poll.sroa.9.0.add.ptr276.sroa_idx.i, align 1
  %add.ptr283.i = getelementptr i32, ptr %add.ptr276.i, i32 3
  %175 = load ptr, ptr %arrayidx25.i, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %add289.i = shl i32 %177, 4
  %bf.set.i604.i = add i32 %add289.i, 40979
  %178 = ptrtoint ptr %add.ptr283.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %bf.set.i604.i, ptr %add.ptr283.i, align 1
  %direct_rd_mod_wt.sroa.26.0.add.ptr283.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr283.i, i32 4
  %179 = ptrtoint ptr %direct_rd_mod_wt.sroa.26.0.add.ptr283.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %179, i32 4)
  store i32 0, ptr %direct_rd_mod_wt.sroa.26.0.add.ptr283.sroa_idx.i, align 1
  %direct_rd_mod_wt.sroa.33.0.add.ptr283.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr283.i, i32 8
  %180 = ptrtoint ptr %direct_rd_mod_wt.sroa.33.0.add.ptr283.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 4)
  store i32 -2, ptr %direct_rd_mod_wt.sroa.33.0.add.ptr283.sroa_idx.i, align 1
  %add.ptr290.i = getelementptr i32, ptr %add.ptr283.i, i32 3
  %181 = ptrtoint ptr %add.ptr290.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 15, ptr %add.ptr290.i, align 1
  %182 = ptrtoint ptr %vce_table_size.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 63, ptr %vce_table_size.i, align 4
  br label %if.end294.i

if.end294.i:                                      ; preds = %if.end151.i, %land.lhs.true.i.if.end294.i_crit_edge, %if.then.if.end294.i_crit_edge
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 8, i32 2
  %183 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %gpu_addr.i.i, align 8
  %185 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cpu_addr.i, align 4
  %header_size.i.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %header_size.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %header_size.i.i, align 4
  %vce_table_size.i.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %186, i32 0, i32 5
  %189 = ptrtoint ptr %vce_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %vce_table_size.i.i, align 4
  %add.i.i = add i32 %190, %188
  %uvd_table_size.i.i = getelementptr inbounds %struct.mmsch_v1_0_init_header, ptr %186, i32 0, i32 7
  %191 = ptrtoint ptr %uvd_table_size.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %uvd_table_size.i.i, align 4
  %add1.i.i = add i32 %add.i.i, %192
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %193 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx.i.i, align 8
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  %add4.i.i = add i32 %196, 4300
  %conv.i.i = trunc i64 %184 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add4.i.i, i32 noundef %conv.i.i, i32 noundef 0) #8
  %197 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx.i.i, align 8
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %198, align 4
  %add9.i.i = add i32 %200, 4301
  %shr.i.i = lshr i64 %184, 32
  %conv11.i.i = trunc i64 %shr.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add9.i.i, i32 noundef %conv11.i.i, i32 noundef 0) #8
  %201 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %add16.i.i = add i32 %204, 4299
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add16.i.i, i32 noundef 0) #8
  %and17.i.i = and i32 %call.i.i, -16
  %205 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx.i.i, align 8
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %206, align 4
  %add22.i.i = add i32 %208, 4299
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add22.i.i, i32 noundef %and17.i.i, i32 noundef 0) #8
  %209 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx.i.i, align 8
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %210, align 4
  %add27.i.i = add i32 %212, 4302
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add27.i.i, i32 noundef %add1.i.i, i32 noundef 0) #8
  %213 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx.i.i, align 8
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 4
  %add32.i.i = add i32 %216, 4307
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add32.i.i, i32 noundef 0, i32 noundef 0) #8
  %doorbell_index.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 23
  %217 = ptrtoint ptr %doorbell_index.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %doorbell_index.i.i, align 8
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %handle, i32 noundef %218, i32 noundef 0) #8
  %wb34.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 1
  %219 = ptrtoint ptr %wb34.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %wb34.i.i, align 4
  %wptr_offs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 26
  %221 = ptrtoint ptr %wptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %wptr_offs.i.i, align 8
  %arrayidx38.i.i = getelementptr i32, ptr %220, i32 %222
  %223 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile i32 0, ptr %arrayidx38.i.i, align 4
  %wptr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 7
  %224 = call ptr @memset(ptr %wptr.i.i, i32 0, i32 16)
  %225 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx.i.i, align 8
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %226, align 4
  %add49.i.i = add i32 %228, 4306
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add49.i.i, i32 noundef 268435457, i32 noundef 0) #8
  %229 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx.i.i, align 8
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 4
  %add54.i.i = add i32 %232, 4307
  %call55.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add54.i.i, i32 noundef 0) #8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end294.i
  %loop.0.i.i = phi i32 [ 1000, %if.end294.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %data.0.i.i = phi i32 [ %call55.i.i, %if.end294.i ], [ %call63.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %and56.i.i = and i32 %data.0.i.i, 268435458
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435458, i32 %and56.i.i)
  %cmp.not.i.i = icmp eq i32 %and56.i.i, 268435458
  br i1 %cmp.not.i.i, label %while.cond.i.i.for.cond.preheader_crit_edge, label %while.body.i.i

while.cond.i.i.for.cond.preheader_crit_edge:      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %233(i32 noundef 2147480) #8
  %234 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.i.i, align 8
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 4
  %add62.i.i = add i32 %237, 4307
  %call63.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add62.i.i, i32 noundef 0) #8
  %dec.i.i = add nsw i32 %loop.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.thread, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

if.end.thread:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %238 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %239, ptr noundef nonnull @.str.12, i32 noundef %call63.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @vce_v4_0_start(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.for.cond.preheader_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.for.cond.preheader_crit_edge, %while.cond.i.i.for.cond.preheader_crit_edge
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 17
  %240 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %num_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp24.not = icmp eq i32 %241, 0
  br i1 %cmp24.not, label %for.cond.preheader.do.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.025, 1
  %242 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %num_rings, align 4
  %cmp = icmp ult i32 %inc, %243
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.025
  %call6 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ 0, %do.end ], [ %call1, %if.end.cleanup_crit_edge ], [ -16, %if.end.thread ], [ %call6, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 2565
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #8
  %and.i = and i32 %call.i, -2097154
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add7.i = add i32 %9, 2565
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add7.i, i32 noundef %and.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add14.i = add i32 %13, 2632
  %call15.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add14.i, i32 noundef 0) #8
  %or17.i = or i32 %call15.i, 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add22.i = add i32 %17, 2632
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add22.i, i32 noundef %or17.i, i32 noundef 0) #8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add28.i = add i32 %21, 2561
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add28.i, i32 noundef 0, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !56
  %vce = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109
  %1 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vce, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  %call1 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #8
  br i1 %call1, label %if.then2, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %3 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.then4, label %if.then2.if.end10_crit_edge

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vce, align 8
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %6, i32 0, i32 4, i32 0, i32 5
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 8
  %cpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 2
  %9 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr, align 8
  %saved_bo = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 3
  %11 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %saved_bo, align 4
  call void @mmiocpy(ptr noundef %12, ptr noundef %10, i32 noundef %8) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.then2.if.end10_crit_edge
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %14) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.if.end11_crit_edge
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 9
  %call13 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %15 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dpm_enabled, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_dpm_enable_vce(ptr noundef %handle, i1 noundef zeroext false) #8
  br label %if.end18

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %17 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic_funcs, align 4
  %set_vce_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %set_vce_clocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_vce_clocks, align 4
  %call15 = call i32 %20(ptr noundef %handle, i32 noundef 0, i32 noundef 0) #8
  %call16 = call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 9, i32 noundef 0) #8
  %call17 = call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %handle, i32 noundef 9, i32 noundef 0) #8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %call19 = call i32 @vce_v4_0_hw_fini(ptr noundef %handle)
  %call23 = call i32 @amdgpu_vce_suspend(ptr noundef %handle) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !56
  %vce = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109
  %1 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vce, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %3 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 2
  %call3 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #8
  br i1 %call3, label %if.then4, label %if.then2.if.end14_crit_edge

if.then2.if.end14_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vce, align 8
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %6, i32 0, i32 4, i32 0, i32 5
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 8
  %cpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 2
  %9 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr, align 8
  %saved_bo = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 3
  %11 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %saved_bo, align 4
  call void @mmiocpy(ptr noundef %10, ptr noundef %12, i32 noundef %8) #8
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %14) #8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call11 = tail call i32 @amdgpu_vce_resume(ptr noundef %handle) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.else.if.end14_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then4, %if.then2.if.end14_crit_edge
  %call15 = call i32 @vce_v4_0_hw_init(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ %call11, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vce_v4_0_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 18
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.i = add i32 %3, 2565
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #8
  %and.i = and i32 %call.i, -2097154
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add7.i = add i32 %7, 2565
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add7.i, i32 noundef %and.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add14.i = add i32 %11, 2632
  %call15.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add14.i, i32 noundef 0) #8
  %or17.i = or i32 %call15.i, 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add22.i = add i32 %15, 2632
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add22.i, i32 noundef %or17.i, i32 noundef 0) #8
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add28.i = add i32 %19, 2561
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add28.i, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @vce_v4_0_start(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vce_v4_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 1
  %switch.select = select i1 %switch.selectcmp, i32 2654, i32 2775
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.selectcmp32 = icmp eq i32 %3, 0
  %switch.select33 = select i1 %switch.selectcmp32, i32 2659, i32 %switch.select
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 18
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx17, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add20 = add i32 %7, %switch.select33
  %call21 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add20, i32 noundef 0) #8
  %retval.0 = zext i32 %call21 to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vce_v4_0_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wb2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %4 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb2, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %6 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %10 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %me, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.else20 [
    i32 0, label %if.then4
    i32 1, label %if.then12
  ]

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 18
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add = add i32 %16, 2660
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #8
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 18
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx14, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add17 = add i32 %20, 2655
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add17, i32 noundef 0) #8
  br label %cleanup

if.else20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 18
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx22, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add25 = add i32 %24, 2776
  %call26 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add25, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.then12, %if.then4, %if.then
  %retval.0.in = phi i32 [ %9, %if.then ], [ %call, %if.then4 ], [ %call18, %if.then12 ], [ %call26, %if.else20 ]
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v4_0_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %5 to i32
  %wb2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %6 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb2, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %8 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %conv, ptr %arrayidx, align 4
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %11 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %doorbell_index, align 8
  %13 = load i64, ptr %wptr, align 8
  %conv5 = trunc i64 %13 to i32
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %1, i32 noundef %12, i32 noundef %conv5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %14 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %me, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %15, label %if.else26 [
    i32 0, label %if.then7
    i32 1, label %if.then17
  ]

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 18
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx8, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add = add i32 %20, 2660
  %wptr11 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %21 = ptrtoint ptr %wptr11 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wptr11, align 8
  %conv13 = trunc i64 %22 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add, i32 noundef %conv13, i32 noundef 0) #8
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 18
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx19, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add22 = add i32 %26, 2655
  %wptr23 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %27 = ptrtoint ptr %wptr23 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wptr23, align 8
  %conv25 = trunc i64 %28 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add22, i32 noundef %conv25, i32 noundef 0) #8
  br label %cleanup

if.else26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx28 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 18
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx28, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add31 = add i32 %32, 2776
  %wptr32 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %33 = ptrtoint ptr %wptr32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %wptr32, align 8
  %conv34 = trunc i64 %34 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add31, i32 noundef %conv34, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %if.then17, %if.then7, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_ring_parse_cs_vm(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v4_0_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vmid1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %0 = ptrtoint ptr %vmid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmid1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %cond.end.amdgpu_ring_write.exit_crit_edge
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
  store volatile i32 258, ptr %arrayidx.i, align 4
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
  %cmp.i13 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i13, label %if.then.i14, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit24

if.then.i14:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit24

amdgpu_ring_write.exit24:                         ; preds = %if.then.i14, %amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i17 = add i64 %20, 1
  store i64 %inc.i17, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i19 = and i32 %22, %23
  %arrayidx.i20 = getelementptr i32, ptr %18, i32 %idxprom.i19
  %24 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %cond, ptr %arrayidx.i20, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i22 = and i64 %27, %26
  store i64 %and3.i22, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i23 = add i32 %29, -1
  store i32 %dec.i23, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %30 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i23)
  %cmp.i26 = icmp slt i32 %dec.i23, 1
  br i1 %cmp.i26, label %if.then.i27, label %amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge

amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge: ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit37

amdgpu_ring_write.exit37:                         ; preds = %if.then.i27, %amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i30 = add i64 %35, 1
  store i64 %inc.i30, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i32 = and i32 %37, %38
  %arrayidx.i33 = getelementptr i32, ptr %33, i32 %idxprom.i32
  %39 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %conv, ptr %arrayidx.i33, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i35 = and i64 %42, %41
  store i64 %and3.i35, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i36 = add i32 %44, -1
  store i32 %dec.i36, ptr %count_dw.i, align 8
  %45 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %46, 32
  %conv4 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i36)
  %cmp.i39 = icmp slt i32 %dec.i36, 1
  br i1 %cmp.i39, label %if.then.i40, label %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge

amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge: ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit50

amdgpu_ring_write.exit50:                         ; preds = %if.then.i40, %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i43 = add i64 %50, 1
  store i64 %inc.i43, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i45 = and i32 %52, %53
  %arrayidx.i46 = getelementptr i32, ptr %48, i32 %idxprom.i45
  %54 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %conv4, ptr %arrayidx.i46, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i48 = and i64 %57, %56
  store i64 %and3.i48, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i49 = add i32 %59, -1
  store i32 %dec.i49, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %60 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i49)
  %cmp.i52 = icmp slt i32 %dec.i49, 1
  br i1 %cmp.i52, label %if.then.i53, label %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge

amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge: ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit63

amdgpu_ring_write.exit63:                         ; preds = %if.then.i53, %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge
  %62 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ring1.i, align 4
  %64 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %wptr.i, align 8
  %inc.i56 = add i64 %65, 1
  store i64 %inc.i56, ptr %wptr.i, align 8
  %66 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buf_mask.i, align 8
  %68 = trunc i64 %65 to i32
  %idxprom.i58 = and i32 %67, %68
  %arrayidx.i59 = getelementptr i32, ptr %63, i32 %idxprom.i58
  %69 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %61, ptr %arrayidx.i59, align 4
  %70 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ptr_mask.i, align 8
  %72 = load i64, ptr %wptr.i, align 8
  %and3.i61 = and i64 %72, %71
  store i64 %and3.i61, ptr %wptr.i, align 8
  %73 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count_dw.i, align 8
  %dec.i62 = add i32 %74, -1
  store i32 %dec.i62, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v4_0_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
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
  store volatile i32 3, ptr %arrayidx.i, align 4
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
  %conv = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i30 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i30, label %if.then.i31, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit41

amdgpu_ring_write.exit41:                         ; preds = %if.then.i31, %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i34 = add i64 %18, 1
  store i64 %inc.i34, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i36 = and i32 %20, %21
  %arrayidx.i37 = getelementptr i32, ptr %16, i32 %idxprom.i36
  %22 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i37, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i39 = and i64 %25, %24
  store i64 %and3.i39, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i40 = add i32 %27, -1
  store i32 %dec.i40, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv21 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit54

amdgpu_ring_write.exit54:                         ; preds = %if.then.i44, %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i47 = add i64 %31, 1
  store i64 %inc.i47, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i49 = and i32 %33, %34
  %arrayidx.i50 = getelementptr i32, ptr %29, i32 %idxprom.i49
  %35 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %conv21, ptr %arrayidx.i50, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i52 = and i64 %38, %37
  store i64 %and3.i52, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i53 = add i32 %40, -1
  store i32 %dec.i53, ptr %count_dw.i, align 8
  %conv22 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i60 = add i64 %44, 1
  store i64 %inc.i60, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i62 = and i32 %46, %47
  %arrayidx.i63 = getelementptr i32, ptr %42, i32 %idxprom.i62
  %48 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv22, ptr %arrayidx.i63, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i65 = and i64 %51, %50
  store i64 %and3.i65, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %53, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge

amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge: ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i73 = add i64 %57, 1
  store i64 %inc.i73, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i75 = and i32 %59, %60
  %arrayidx.i76 = getelementptr i32, ptr %55, i32 %idxprom.i75
  %61 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 4, ptr %arrayidx.i76, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i78 = and i64 %64, %63
  store i64 %and3.i78, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %66, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v4_0_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub1 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub1, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %6 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %9(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 9
  %12 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %13, %vmid
  %add = add i32 %mul, %11
  %conv = trunc i64 %call to i32
  tail call void @vce_v4_0_emit_reg_wait(ptr noundef %ring, i32 noundef %add, i32 noundef %conv, i32 noundef -1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_ring_test_ring(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_ring_test_ib(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_insert_nop(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v4_0_ring_insert_end(ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
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
  store volatile i32 1, ptr %arrayidx.i, align 4
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
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vce_ring_begin_use(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vce_ring_end_use(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v4_0_emit_wreg(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
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
  store volatile i32 265, ptr %arrayidx.i, align 4
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
  %shl = shl i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i4 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i4, label %if.then.i5, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit15

if.then.i5:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit15

amdgpu_ring_write.exit15:                         ; preds = %if.then.i5, %amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i8 = add i64 %18, 1
  store i64 %inc.i8, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i10 = and i32 %20, %21
  %arrayidx.i11 = getelementptr i32, ptr %16, i32 %idxprom.i10
  %22 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %shl, ptr %arrayidx.i11, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i13 = and i64 %25, %24
  store i64 %and3.i13, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i14 = add i32 %27, -1
  store i32 %dec.i14, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i14)
  %cmp.i17 = icmp slt i32 %dec.i14, 1
  br i1 %cmp.i17, label %if.then.i18, label %amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge

amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge: ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit28

amdgpu_ring_write.exit28:                         ; preds = %if.then.i18, %amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i21 = add i64 %31, 1
  store i64 %inc.i21, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i23 = and i32 %33, %34
  %arrayidx.i24 = getelementptr i32, ptr %29, i32 %idxprom.i23
  %35 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %val, ptr %arrayidx.i24, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i26 = and i64 %38, %37
  store i64 %and3.i26, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i27 = add i32 %40, -1
  store i32 %dec.i27, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v4_0_emit_reg_wait(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
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
  store volatile i32 266, ptr %arrayidx.i, align 4
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
  %shl = shl i32 %reg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i5 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i5, label %if.then.i6, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit16

if.then.i6:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit16

amdgpu_ring_write.exit16:                         ; preds = %if.then.i6, %amdgpu_ring_write.exit.amdgpu_ring_write.exit16_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i9 = add i64 %18, 1
  store i64 %inc.i9, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i11 = and i32 %20, %21
  %arrayidx.i12 = getelementptr i32, ptr %16, i32 %idxprom.i11
  %22 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %shl, ptr %arrayidx.i12, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i14 = and i64 %25, %24
  store i64 %and3.i14, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i15 = add i32 %27, -1
  store i32 %dec.i15, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i15)
  %cmp.i18 = icmp slt i32 %dec.i15, 1
  br i1 %cmp.i18, label %if.then.i19, label %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge

amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge: ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit29

if.then.i19:                                      ; preds = %amdgpu_ring_write.exit16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit29

amdgpu_ring_write.exit29:                         ; preds = %if.then.i19, %amdgpu_ring_write.exit16.amdgpu_ring_write.exit29_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i22 = add i64 %31, 1
  store i64 %inc.i22, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i24 = and i32 %33, %34
  %arrayidx.i25 = getelementptr i32, ptr %29, i32 %idxprom.i24
  %35 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %mask, ptr %arrayidx.i25, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i27 = and i64 %38, %37
  store i64 %and3.i27, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i28 = add i32 %40, -1
  store i32 %dec.i28, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i28)
  %cmp.i31 = icmp slt i32 %dec.i28, 1
  br i1 %cmp.i31, label %if.then.i32, label %amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge

amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge: ; preds = %amdgpu_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_ring_write.exit42

if.then.i32:                                      ; preds = %amdgpu_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %amdgpu_ring_write.exit42

amdgpu_ring_write.exit42:                         ; preds = %if.then.i32, %amdgpu_ring_write.exit29.amdgpu_ring_write.exit42_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i35 = add i64 %44, 1
  store i64 %inc.i35, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i37 = and i32 %46, %47
  %arrayidx.i38 = getelementptr i32, ptr %42, i32 %idxprom.i37
  %48 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %val, ptr %arrayidx.i38, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i40 = and i64 %51, %50
  store i64 %and3.i40, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i41 = add i32 %53, -1
  store i32 %dec.i41, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_emit_reg_write_reg_wait_helper(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_set_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %spec.select = select i1 %cmp, i32 8, i32 0
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 18
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add = add i32 %5, 2816
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #8
  %and4 = and i32 %call, -9
  %or6 = or i32 %and4, %spec.select
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add11 = add i32 %9, 2816
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add11, i32 noundef %or6, i32 noundef 0) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then, %entry.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v4_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #8
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %0 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 %1
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %arrayidx4) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_id, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %1) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_sw_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_get_ring_prio(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_entity_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_virt_alloc_mm_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_free_mm_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_sw_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vce_v4_0_start(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 18
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx2, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 2659
  %wptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 0, i32 7
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %5 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %conv, i32 noundef 0) #8
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add9 = add i32 %9, 2660
  %10 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr, align 8
  %conv12 = trunc i64 %11 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add9, i32 noundef %conv12, i32 noundef 0) #8
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add17 = add i32 %15, 2656
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 0, i32 12
  %16 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %gpu_addr, align 8
  %conv18 = trunc i64 %17 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17, i32 noundef %conv18, i32 noundef 0) #8
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add23 = add i32 %21, 2657
  %22 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %23, 32
  %conv26 = trunc i64 %shr to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add23, i32 noundef %conv26, i32 noundef 0) #8
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx2, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add31 = add i32 %27, 2658
  %ring_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 0, i32 9
  %28 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_size, align 8
  %div254 = lshr i32 %29, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add31, i32 noundef %div254, i32 noundef 0) #8
  %30 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add39 = add i32 %33, 2654
  %wptr40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 1, i32 7
  %34 = ptrtoint ptr %wptr40 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr40, align 8
  %conv42 = trunc i64 %35 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add39, i32 noundef %conv42, i32 noundef 0) #8
  %36 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx2, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add47 = add i32 %39, 2655
  %40 = ptrtoint ptr %wptr40 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wptr40, align 8
  %conv50 = trunc i64 %41 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add47, i32 noundef %conv50, i32 noundef 0) #8
  %42 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx2, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add55 = add i32 %45, 2651
  %gpu_addr56 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 1, i32 12
  %46 = ptrtoint ptr %gpu_addr56 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %gpu_addr56, align 8
  %conv57 = trunc i64 %47 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add55, i32 noundef %conv57, i32 noundef 0) #8
  %48 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx2, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add62 = add i32 %51, 2652
  %52 = ptrtoint ptr %gpu_addr56 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %gpu_addr56, align 8
  %shr64 = lshr i64 %53, 32
  %conv66 = trunc i64 %shr64 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add62, i32 noundef %conv66, i32 noundef 0) #8
  %54 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx2, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add71 = add i32 %57, 2653
  %ring_size72 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 1, i32 9
  %58 = ptrtoint ptr %ring_size72 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ring_size72, align 8
  %div73255 = lshr i32 %59, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add71, i32 noundef %div73255, i32 noundef 0) #8
  %60 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx2, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add81 = add i32 %63, 2775
  %wptr82 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 2, i32 7
  %64 = ptrtoint ptr %wptr82 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %wptr82, align 8
  %conv84 = trunc i64 %65 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add81, i32 noundef %conv84, i32 noundef 0) #8
  %66 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx2, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add89 = add i32 %69, 2776
  %70 = ptrtoint ptr %wptr82 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %wptr82, align 8
  %conv92 = trunc i64 %71 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add89, i32 noundef %conv92, i32 noundef 0) #8
  %72 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx2, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add97 = add i32 %75, 2772
  %gpu_addr98 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 2, i32 12
  %76 = ptrtoint ptr %gpu_addr98 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %gpu_addr98, align 8
  %conv99 = trunc i64 %77 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add97, i32 noundef %conv99, i32 noundef 0) #8
  %78 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx2, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add104 = add i32 %81, 2773
  %82 = ptrtoint ptr %gpu_addr98 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %gpu_addr98, align 8
  %shr106 = lshr i64 %83, 32
  %conv108 = trunc i64 %shr106 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add104, i32 noundef %conv108, i32 noundef 0) #8
  %84 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx2, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %add113 = add i32 %87, 2774
  %ring_size114 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 2, i32 9
  %88 = ptrtoint ptr %ring_size114 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ring_size114, align 8
  %div115256 = lshr i32 %89, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add113, i32 noundef %div115256, i32 noundef 0) #8
  %90 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx2, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %add.i = add i32 %93, 2750
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #8
  %and.i = and i32 %call.i, -65537
  %94 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx2, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %add7.i = add i32 %97, 2750
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add7.i, i32 noundef %and.i, i32 noundef 0) #8
  %98 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx2, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add14.i = add i32 %101, 3055
  %call15.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add14.i, i32 noundef 0) #8
  %and16.i = and i32 %call15.i, 6295551
  %or17.i = or i32 %and16.i, 2093056
  %102 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx2, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %add22.i = add i32 %105, 3055
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22.i, i32 noundef %or17.i, i32 noundef 0) #8
  %106 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx2, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add31.i = add i32 %109, 3056
  %call32.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add31.i, i32 noundef 0) #8
  %or34.i = or i32 %call32.i, 63
  %110 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx2, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %add39.i = add i32 %113, 3056
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add39.i, i32 noundef %or34.i, i32 noundef 0) #8
  %114 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx2, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %add46.i = add i32 %117, 2751
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add46.i, i32 noundef 511, i32 noundef 0) #8
  %118 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx2, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add51.i = add i32 %121, 4054
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51.i, i32 noundef 3768320, i32 noundef 0) #8
  %122 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx2, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add58.i = add i32 %125, 4076
  %call59.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add58.i, i32 noundef 0) #8
  %and60.i = and i32 %call59.i, -2
  %126 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx2, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %add66.i = add i32 %129, 4076
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add66.i, i32 noundef %and60.i, i32 noundef 0) #8
  %130 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx2, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %add73.i = add i32 %133, 4061
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add73.i, i32 noundef 0, i32 noundef 0) #8
  %134 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx2, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %add78.i = add i32 %137, 4062
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add78.i, i32 noundef 0, i32 noundef 0) #8
  %138 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx2, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %add83.i = add i32 %141, 4056
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add83.i, i32 noundef 0, i32 noundef 0) #8
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %142 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cmp.i = icmp eq i32 %143, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmr_mc_addr_hi.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 0, i32 27, i32 6
  %144 = ptrtoint ptr %tmr_mc_addr_hi.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tmr_mc_addr_hi.i, align 4
  %conv.i = zext i32 %145 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %tmr_mc_addr_lo.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 0, i32 27, i32 5
  %146 = ptrtoint ptr %tmr_mc_addr_lo.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tmr_mc_addr_lo.i, align 8
  %conv89.i = zext i32 %147 to i64
  %or90.i = or i64 %shl.i, %conv89.i
  %148 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx2, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %add95.i = add i32 %151, 4246
  %shr.i = lshr i64 %or90.i, 8
  %conv96.i = trunc i64 %shr.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add95.i, i32 noundef %conv96.i, i32 noundef 0) #8
  %shr102.i = lshr i32 %145, 8
  br label %vce_v4_0_mc_resume.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx2, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %add114.i = add i32 %155, 4246
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 1
  %156 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %gpu_addr.i, align 8
  %shr115.i = lshr i64 %157, 8
  %conv116.i = trunc i64 %shr115.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add114.i, i32 noundef %conv116.i, i32 noundef 0) #8
  %158 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %gpu_addr.i, align 8
  %shr124.i = lshr i64 %159, 40
  %160 = trunc i64 %shr124.i to i32
  br label %vce_v4_0_mc_resume.exit

vce_v4_0_mc_resume.exit:                          ; preds = %if.else.i, %if.then.i
  %.sink336.i = phi i32 [ %160, %if.else.i ], [ %shr102.i, %if.then.i ]
  %.sink.i = phi i32 [ 256, %if.else.i ], [ 0, %if.then.i ]
  %161 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %add121.sink.in.in.i = load ptr, ptr %arrayidx2, align 8
  %162 = ptrtoint ptr %add121.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %add121.sink.in.i = load i32, ptr %add121.sink.in.in.i, align 4
  %add121.sink.i = add i32 %add121.sink.in.i, 4230
  %conv126.i = and i32 %.sink336.i, 255
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add121.sink.i, i32 noundef %conv126.i, i32 noundef 0) #8
  %163 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx2, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %add131.i = add i32 %166, 2569
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add131.i, i32 noundef %.sink.i, i32 noundef 0) #8
  %167 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx2, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %add137.i = add i32 %170, 2570
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add137.i, i32 noundef 393216, i32 noundef 0) #8
  %171 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx2, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  %add142.i = add i32 %174, 4247
  %gpu_addr144.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 1
  %175 = ptrtoint ptr %gpu_addr144.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %gpu_addr144.i, align 8
  %shr145.i = lshr i64 %176, 8
  %conv146.i = trunc i64 %shr145.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add142.i, i32 noundef %conv146.i, i32 noundef 0) #8
  %177 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx2, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %add151.i = add i32 %180, 4231
  %181 = ptrtoint ptr %gpu_addr144.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %gpu_addr144.i, align 8
  %shr154.i = lshr i64 %182, 40
  %183 = trunc i64 %shr154.i to i32
  %conv156.i = and i32 %183, 255
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add151.i, i32 noundef %conv156.i, i32 noundef 0) #8
  %184 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %185)
  %cmp159.not.i = icmp eq i32 %185, 2
  %spec.select.i = select i1 %cmp159.not.i, i32 0, i32 393472
  %186 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx2, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %add166.i = add i32 %189, 2571
  %or168.i = or i32 %spec.select.i, 16777216
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add166.i, i32 noundef %or168.i, i32 noundef 0) #8
  %190 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx2, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  %add173.i = add i32 %193, 2572
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add173.i, i32 noundef 65536, i32 noundef 0) #8
  %194 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx2, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  %add178.i = add i32 %197, 4248
  %198 = ptrtoint ptr %gpu_addr144.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %gpu_addr144.i, align 8
  %shr181.i = lshr i64 %199, 8
  %conv182.i = trunc i64 %shr181.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add178.i, i32 noundef %conv182.i, i32 noundef 0) #8
  %200 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx2, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  %add187.i = add i32 %203, 4232
  %204 = ptrtoint ptr %gpu_addr144.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %gpu_addr144.i, align 8
  %shr190.i = lshr i64 %205, 40
  %206 = trunc i64 %shr190.i to i32
  %conv192.i = and i32 %206, 255
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add187.i, i32 noundef %conv192.i, i32 noundef 0) #8
  %207 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx2, align 8
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 4
  %add198.i = add i32 %210, 2573
  %or200.i = or i32 %spec.select.i, 33619968
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add198.i, i32 noundef %or200.i, i32 noundef 0) #8
  %211 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx2, align 8
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %212, align 4
  %add205.i = add i32 %214, 2574
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add205.i, i32 noundef 315392, i32 noundef 0) #8
  %215 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx2, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 4
  %add212.i = add i32 %218, 4047
  %call213.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add212.i, i32 noundef 0) #8
  %and214.i = and i32 %call213.i, -257
  %219 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx2, align 8
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 4
  %add220.i = add i32 %222, 4047
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add220.i, i32 noundef %and214.i, i32 noundef 0) #8
  %223 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx2, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  %add229.i = add i32 %226, 2816
  %call230.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add229.i, i32 noundef 0) #8
  %or232.i = or i32 %call230.i, 8
  %227 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx2, align 8
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  %add237.i = add i32 %230, 2816
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add237.i, i32 noundef %or232.i, i32 noundef 0) #8
  %231 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %arrayidx2, align 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 4
  %add120 = add i32 %234, 2561
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add120, i32 noundef 0) #8
  %or = or i32 %call, 1
  %235 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx2, align 8
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  %add126 = add i32 %238, 2561
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add126, i32 noundef %or, i32 noundef 0) #8
  %239 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %arrayidx2, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %240, align 4
  %add133 = add i32 %242, 2565
  %call134 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add133, i32 noundef 0) #8
  %and135 = and i32 %call134, -2097154
  %or136 = or i32 %and135, 1
  %243 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx2, align 8
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %244, align 4
  %add141 = add i32 %246, 2565
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add141, i32 noundef %or136, i32 noundef 0) #8
  %247 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx2, align 8
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %248, align 4
  %add150 = add i32 %250, 2632
  %call151 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add150, i32 noundef 0) #8
  %and152 = and i32 %call151, -2
  %251 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %arrayidx2, align 8
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %252, align 4
  %add158 = add i32 %254, 2632
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add158, i32 noundef %and152, i32 noundef 0) #8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %vce_v4_0_mc_resume.exit
  %__ms.0267 = phi i32 [ 100, %vce_v4_0_mc_resume.exit ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0267, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %255 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %255(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.for.cond1.preheader.i_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.for.cond1.preheader.i_crit_edge:       ; preds = %while.body
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i.for.cond1.preheader.i_crit_edge, %while.body.for.cond1.preheader.i_crit_edge
  %i.073.i = phi i32 [ %inc49.i, %for.end.i.for.cond1.preheader.i_crit_edge ], [ 0, %while.body.for.cond1.preheader.i_crit_edge ]
  br label %for.body3.i

for.cond1.i:                                      ; preds = %for.body3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %256 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %256(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %257(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %258 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %258(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %259(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %260 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %260(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %261 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %261(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %262 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %262(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %263 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %263(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %264(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %265(i32 noundef 214748000) #8
  %inc.i = add nuw nsw i32 %j.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond1.i.for.body3.i_crit_edge

for.cond1.i.for.body3.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %j.070.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.cond1.i.for.body3.i_crit_edge ]
  %266 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx2, align 8
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %267, align 4
  %add.i258 = add i32 %269, 2561
  %call.i259 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i258, i32 noundef 0) #8
  %and.i260 = and i32 %call.i259, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i260)
  %tobool.not.i = icmp eq i32 %and.i260, 0
  br i1 %tobool.not.i, label %for.cond1.i, label %for.body3.i.vce_v4_0_firmware_loaded.exit_crit_edge

for.body3.i.vce_v4_0_firmware_loaded.exit_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vce_v4_0_firmware_loaded.exit

for.end.i:                                        ; preds = %for.cond1.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #8
  %270 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx2, align 8
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %271, align 4
  %add11.i = add i32 %273, 2632
  %call12.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add11.i, i32 noundef 0) #8
  %or.i = or i32 %call12.i, 1
  %274 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx2, align 8
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 4
  %add18.i = add i32 %277, 2632
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add18.i, i32 noundef %or.i, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %278 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %278(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %279 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %279(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %280 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %280(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %281 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %281(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %282(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %283 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %283(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %284 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %284(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %285 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %285(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %286 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %286(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %287 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %287(i32 noundef 214748000) #8
  %288 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx2, align 8
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %289, align 4
  %add31.i261 = add i32 %291, 2632
  %call32.i262 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add31.i261, i32 noundef 0) #8
  %and33.i = and i32 %call32.i262, -2
  %292 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx2, align 8
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %293, align 4
  %add39.i263 = add i32 %295, 2632
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add39.i263, i32 noundef %and33.i, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %296(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %297 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %297(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %298 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %298(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %299 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %299(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %300 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %300(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %301 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %301(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %302 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %302(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %303 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %303(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %304 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %304(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %305 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %305(i32 noundef 214748000) #8
  %inc49.i = add nuw nsw i32 %i.073.i, 1
  %exitcond75.not.i = icmp eq i32 %inc49.i, 10
  br i1 %exitcond75.not.i, label %for.end.i.vce_v4_0_firmware_loaded.exit_crit_edge, label %for.end.i.for.cond1.preheader.i_crit_edge

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i

for.end.i.vce_v4_0_firmware_loaded.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vce_v4_0_firmware_loaded.exit

vce_v4_0_firmware_loaded.exit:                    ; preds = %for.end.i.vce_v4_0_firmware_loaded.exit_crit_edge, %for.body3.i.vce_v4_0_firmware_loaded.exit_crit_edge
  %retval.3.i = phi i32 [ 0, %for.body3.i.vce_v4_0_firmware_loaded.exit_crit_edge ], [ -110, %for.end.i.vce_v4_0_firmware_loaded.exit_crit_edge ]
  %306 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx2, align 8
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %307, align 4
  %add168 = add i32 %309, 2561
  %call169 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add168, i32 noundef 0) #8
  %and170 = and i32 %call169, -2
  %310 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx2, align 8
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %311, align 4
  %add176 = add i32 %313, 2561
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add176, i32 noundef %and170, i32 noundef 0) #8
  br i1 %tobool.not.i, label %if.then, label %vce_v4_0_firmware_loaded.exit.cleanup_crit_edge

vce_v4_0_firmware_loaded.exit.cleanup_crit_edge:  ; preds = %vce_v4_0_firmware_loaded.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %vce_v4_0_firmware_loaded.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %vce_v4_0_firmware_loaded.exit.cleanup_crit_edge
  ret i32 %retval.3.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_vce(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 1081, i32 10}
!2 = !{ptr @vce_v4_0_ip_funcs, !3, !"vce_v4_0_ip_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 1080, i32 27}
!4 = !{ptr @vce_v4_0_ip_block, !5, !"vce_v4_0_ip_block", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 1155, i32 38}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 1141, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vce_v4_0_set_ring_funcs._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @vce_v4_0_set_ring_funcs._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @vce_v4_0_ring_vm_funcs, !13, !"vce_v4_0_ring_vm_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 1100, i32 39}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!16 = !{ptr @vce_v4_0_irq_funcs, !17, !"vce_v4_0_irq_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 1144, i32 42}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 1063, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 1072, i32 3}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 458, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vce_v4_0_sw_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @vce_v4_0_sw_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 469, i32 23}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 538, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vce_v4_0_hw_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @vce_v4_0_hw_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 198, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vce_v4_0_mmsch_start._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @vce_v4_0_mmsch_start._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 381, i32 3}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 139, i32 3}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v4_0.c", i32 554, i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i8 0, i8 2}
!58 = !{!"branch_weights", i32 2000, i32 1}
