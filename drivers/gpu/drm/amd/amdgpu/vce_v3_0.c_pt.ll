; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/vce_v3_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c"
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
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@vce_v3_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @vce_v3_0_early_init, ptr null, ptr @vce_v3_0_sw_init, ptr @vce_v3_0_sw_fini, ptr null, ptr @vce_v3_0_hw_init, ptr @vce_v3_0_hw_fini, ptr null, ptr @vce_v3_0_suspend, ptr @vce_v3_0_resume, ptr @vce_v3_0_is_idle, ptr @vce_v3_0_wait_for_idle, ptr @vce_v3_0_check_soft_reset, ptr @vce_v3_0_pre_soft_reset, ptr @vce_v3_0_soft_reset, ptr @vce_v3_0_post_soft_reset, ptr @vce_v3_0_set_clockgating_state, ptr @vce_v3_0_set_powergating_state, ptr @vce_v3_0_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@vce_v3_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 9, i32 3, i32 0, i32 0, ptr @vce_v3_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@vce_v3_1_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 9, i32 3, i32 1, i32 0, ptr @vce_v3_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@vce_v3_4_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 9, i32 3, i32 4, i32 0, ptr @vce_v3_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vce_v3_0\00", [23 x i8] zeroinitializer }, align 32
@vce_v3_0_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 4, i32 15, i32 0, i8 0, i8 1, i32 0, i32 0, ptr @vce_v3_0_ring_get_rptr, ptr @vce_v3_0_ring_get_wptr, ptr @vce_v3_0_ring_set_wptr, ptr @amdgpu_vce_ring_parse_cs_vm, ptr null, i32 22, i32 5, ptr @vce_v3_0_ring_emit_ib, ptr @amdgpu_vce_ring_emit_fence, ptr @vce_v3_0_emit_pipeline_sync, ptr @vce_v3_0_emit_vm_flush, ptr null, ptr null, ptr @amdgpu_vce_ring_test_ring, ptr @amdgpu_vce_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr null, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_vce_ring_begin_use, ptr @amdgpu_vce_ring_end_use, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vce_v3_0_set_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm] VCE enabled in VM mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vce_v3_0_set_ring_funcs\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/vce_v3_0.c\00", [58 x i8] zeroinitializer }, align 32
@vce_v3_0_set_ring_funcs._entry_ptr = internal global ptr @vce_v3_0_set_ring_funcs._entry, section ".printk_index", align 4
@vce_v3_0_ring_phys_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 4, i32 15, i32 0, i8 0, i8 1, i32 0, i32 0, ptr @vce_v3_0_ring_get_rptr, ptr @vce_v3_0_ring_get_wptr, ptr @vce_v3_0_ring_set_wptr, ptr @amdgpu_vce_ring_parse_cs, ptr null, i32 10, i32 4, ptr @amdgpu_vce_ring_emit_ib, ptr @amdgpu_vce_ring_emit_fence, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_vce_ring_test_ring, ptr @amdgpu_vce_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr null, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_vce_ring_begin_use, ptr @amdgpu_vce_ring_end_use, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vce_v3_0_set_ring_funcs._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] VCE enabled in physical mode\0A\00", [58 x i8] zeroinitializer }, align 32
@vce_v3_0_set_ring_funcs._entry_ptr.6 = internal global ptr @vce_v3_0_set_ring_funcs._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@vce_v3_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @vce_v3_0_set_interrupt_state, ptr @vce_v3_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IH: VCE\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vce%d\00", [26 x i8] zeroinitializer }, align 32
@vce_v3_0_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] VCE initialized successfully.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vce_v3_0_hw_init\00", [47 x i8] zeroinitializer }, align 32
@vce_v3_0_hw_init._entry_ptr = internal global ptr @vce_v3_0_hw_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vce_v3_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 687, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vce_v3_0_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vce_v3_0_soft_reset._entry_ptr = internal global ptr @vce_v3_0_soft_reset._entry, section ".printk_index", align 4
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VCE not responding, giving up!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"VCE not responding, trying to reset the ECPU!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@vce_v3_0_get_clockgating_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016[drm] Cannot get clockgating state when VCE is powergated.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vce_v3_0_get_clockgating_state\00", [33 x i8] zeroinitializer }, align 32
@vce_v3_0_get_clockgating_state._entry_ptr = internal global ptr @vce_v3_0_get_clockgating_state._entry, section ".printk_index", align 4
@switch.table.vce_v3_0_ring_get_rptr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 7, i32 23, i32 7], [20 x i8] zeroinitializer }, align 32
@switch.table.vce_v3_0_ring_get_wptr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 7, i32 23, i32 7], [20 x i8] zeroinitializer }, align 32
@switch.table.vce_v3_0_ring_set_wptr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 7, i32 23, i32 7], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 14]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"vce_v3_0_ip_funcs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 899, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"vce_v3_0_ip_block\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1001, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"vce_v3_1_ip_block\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1010, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"vce_v3_4_ip_block\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1019, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 900, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"vce_v3_0_ring_vm_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 944, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 980, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [25 x i8] c"vce_v3_0_ring_phys_funcs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 920, i32 39 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 986, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 314, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"vce_v3_0_irq_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 990, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 747, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 758, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 446, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 485, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 687, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 319, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 248, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 847, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [36 x i8] c"switch.table.vce_v3_0_ring_get_rptr\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [36 x i8] c"switch.table.vce_v3_0_ring_get_wptr\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [36 x i8] c"switch.table.vce_v3_0_ring_set_wptr\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @vce_v3_0_get_clockgating_state._entry, ptr @vce_v3_0_get_clockgating_state._entry_ptr, ptr @vce_v3_0_hw_init._entry, ptr @vce_v3_0_hw_init._entry_ptr, ptr @vce_v3_0_set_ring_funcs._entry, ptr @vce_v3_0_set_ring_funcs._entry.4, ptr @vce_v3_0_set_ring_funcs._entry_ptr, ptr @vce_v3_0_set_ring_funcs._entry_ptr.6, ptr @vce_v3_0_soft_reset._entry, ptr @vce_v3_0_soft_reset._entry_ptr, ptr @vce_v3_0_ip_funcs, ptr @vce_v3_0_ip_block, ptr @vce_v3_1_ip_block, ptr @vce_v3_4_ip_block, ptr @.str, ptr @vce_v3_0_ring_vm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vce_v3_0_ring_phys_funcs, ptr @.str.5, ptr @.str.7, ptr @vce_v3_0_irq_funcs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @switch.table.vce_v3_0_ring_get_rptr, ptr @switch.table.vce_v3_0_ring_get_wptr, ptr @switch.table.vce_v3_0_ring_set_wptr], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_1_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_4_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_set_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_ring_phys_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_set_ring_funcs._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vce_v3_0_get_clockgating_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vce_v3_0_ring_get_rptr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vce_v3_0_ring_get_wptr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vce_v3_0_ring_set_wptr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end.i [
    i32 12, label %entry.if.end_crit_edge
    i32 14, label %entry.if.end_crit_edge26
  ]

entry.if.end_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %smc_rreg5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %5 = ptrtoint ptr %smc_rreg5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smc_rreg5.i, align 4
  %..i = select i1 %tobool.not.i, i32 -1072955352, i32 -1073659788
  %.37.i = select i1 %tobool.not.i, i32 1, i32 27
  %call6.i = tail call i32 %6(ptr noundef %handle, i32 noundef %..i) #4
  %and7.i = lshr i32 %call6.i, %.37.i
  %tmp.0.i = and i32 %and7.i, 3
  %7 = zext i32 %tmp.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %tmp.0.i, label %vce_v3_0_get_harvest_config.exit [
    i32 1, label %if.end.i.if.end_crit_edge
    i32 2, label %sw.bb10.i
    i32 3, label %vce_v3_0_get_harvest_config.exit.thread16
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

vce_v3_0_get_harvest_config.exit.thread16:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %harvest_config18 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 14
  %8 = ptrtoint ptr %harvest_config18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %harvest_config18, align 4
  br label %cleanup

vce_v3_0_get_harvest_config.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asic_type.i, align 8
  %.off.i = add i32 %10, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  %spec.select.i = select i1 %switch.i, i32 2, i32 0
  br label %if.end

if.end:                                           ; preds = %vce_v3_0_get_harvest_config.exit, %sw.bb10.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge26
  %spec.select.i.sink = phi i32 [ %spec.select.i, %vce_v3_0_get_harvest_config.exit ], [ %tmp.0.i, %if.end.i.if.end_crit_edge ], [ 2, %entry.if.end_crit_edge ], [ 2, %entry.if.end_crit_edge26 ], [ 2, %sw.bb10.i ]
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 14
  %11 = ptrtoint ptr %harvest_config to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select.i.sink, ptr %harvest_config, align 4
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 17
  %12 = ptrtoint ptr %num_rings to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %num_rings, align 4
  %13 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %14)
  %cmp.i = icmp ugt i32 %14, 13
  br i1 %cmp.i, label %if.end.for.body.i_crit_edge, label %if.end.for.body10.i_crit_edge

if.end.for.body10.i_crit_edge:                    ; preds = %if.end
  br label %for.body10.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %funcs.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.045.i, i32 1
  %15 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vce_v3_0_ring_vm_funcs, ptr %funcs.i, align 4
  %me.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.045.i, i32 16
  %16 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.045.i, ptr %me.i, align 8
  %inc.i = add nuw i32 %i.045.i, 1
  %17 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_rings, align 4
  %cmp1.i = icmp ult i32 %inc.i, %18
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vce_v3_0_set_ring_funcs.exit_crit_edge

for.body.i.vce_v3_0_set_ring_funcs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vce_v3_0_set_ring_funcs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %if.end.for.body10.i_crit_edge
  %i.143.i = phi i32 [ %inc20.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %if.end.for.body10.i_crit_edge ]
  %funcs14.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.143.i, i32 1
  %19 = ptrtoint ptr %funcs14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vce_v3_0_ring_phys_funcs, ptr %funcs14.i, align 4
  %me18.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.143.i, i32 16
  %20 = ptrtoint ptr %me18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.143.i, ptr %me18.i, align 8
  %inc20.i = add nuw i32 %i.143.i, 1
  %21 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_rings, align 4
  %cmp9.i = icmp ult i32 %inc20.i, %22
  br i1 %cmp9.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.vce_v3_0_set_ring_funcs.exit_crit_edge

for.body10.i.vce_v3_0_set_ring_funcs.exit_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vce_v3_0_set_ring_funcs.exit

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10.i

vce_v3_0_set_ring_funcs.exit:                     ; preds = %for.body10.i.vce_v3_0_set_ring_funcs.exit_crit_edge, %for.body.i.vce_v3_0_set_ring_funcs.exit_crit_edge
  %.str.5.sink.i = phi ptr [ @.str.1, %for.body.i.vce_v3_0_set_ring_funcs.exit_crit_edge ], [ @.str.5, %for.body10.i.vce_v3_0_set_ring_funcs.exit_crit_edge ]
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink.i) #7
  %irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 13
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %irq.i, align 8
  %funcs.i11 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 13, i32 2
  %24 = ptrtoint ptr %funcs.i11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @vce_v3_0_irq_funcs, ptr %funcs.i11, align 8
  br label %cleanup

cleanup:                                          ; preds = %vce_v3_0_set_ring_funcs.exit, %vce_v3_0_get_harvest_config.exit.thread16
  %retval.0 = phi i32 [ 0, %vce_v3_0_set_ring_funcs.exit ], [ -2, %vce_v3_0_get_harvest_config.exit.thread16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 13
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 167, ptr noundef %irq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @amdgpu_vce_sw_init(ptr noundef %handle, i32 noundef 1155072) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup27_crit_edge

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

if.end4:                                          ; preds = %if.end
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 4
  %0 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 872940288, i32 %1)
  %cmp = icmp ult i32 %1, 872940288
  br i1 %cmp, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 17
  %2 = ptrtoint ptr %num_rings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %num_rings, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %call9 = tail call i32 @amdgpu_vce_resume(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond.preheader, label %if.end8.cleanup27_crit_edge

if.end8.cleanup27_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

for.cond.preheader:                               ; preds = %if.end8
  %num_rings14 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 17
  %3 = ptrtoint ptr %num_rings14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rings14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1554.not = icmp eq i32 %4, 0
  br i1 %cmp1554.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.055, 1
  %5 = ptrtoint ptr %num_rings14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_rings14, align 4
  %cmp15 = icmp ult i32 %inc, %6
  br i1 %cmp15, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call16 = tail call i32 @amdgpu_vce_get_ring_prio(i32 noundef %i.055) #4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.055
  %name = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.055, i32 29
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.10, i32 noundef %i.055)
  %call22 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx, i32 noundef 512, ptr noundef %irq, i32 noundef 0, i32 noundef %call16, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.cond, label %for.body.cleanup27_crit_edge

for.body.cleanup27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup27

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call26 = tail call i32 @amdgpu_vce_entity_init(ptr noundef %handle) #4
  br label %cleanup27

cleanup27:                                        ; preds = %for.end, %for.body.cleanup27_crit_edge, %if.end8.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.2 = phi i32 [ %call26, %for.end ], [ %call, %entry.cleanup27_crit_edge ], [ %call1, %if.end.cleanup27_crit_edge ], [ %call9, %if.end8.cleanup27_crit_edge ], [ %call22, %for.body.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_vce_suspend(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @amdgpu_vce_sw_fini(ptr noundef %handle) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32927, i32 noundef 0) #4
  %or.i = or i32 %call.i, 65536
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32927, i32 noundef %or.i, i32 noundef 0) #4
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %0 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs, align 4
  %set_vce_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %set_vce_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_vce_clocks, align 4
  %call = tail call i32 %3(ptr noundef %handle, i32 noundef 10000, i32 noundef 10000) #4
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 17
  %4 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not = icmp eq i32 %5, 0
  br i1 %cmp13.not, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.014, 1
  %6 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rings, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.014
  %call2 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call2, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #4
  %harvest_config.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 14
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.05.i, 1
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %3
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %harvest_config.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %harvest_config.i.i, align 4
  %and.i.i = shl i32 %5, 7
  %6 = and i32 %and.i.i, 128
  %and3.i.i = shl i32 %5, 13
  %7 = and i32 %and3.i.i, 16384
  %8 = or i32 %7, %6
  %or6.i.i = xor i32 %8, 16512
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #4
  %and7.i.i = and i32 %or6.i.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @vce_v3_0_stop(ptr noundef %handle)
  %call3 = tail call i32 @vce_v3_0_set_clockgating_state(ptr noundef %handle, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -110, %entry.cleanup_crit_edge ], [ -110, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #4
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_dpm_enable_vce(ptr noundef %handle, i1 noundef zeroext false) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %2 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_funcs, align 4
  %set_vce_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %set_vce_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_vce_clocks, align 4
  %call1 = tail call i32 %5(ptr noundef %handle, i32 noundef 0, i32 noundef 0) #4
  %call2 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 9, i32 noundef 0) #4
  %call3 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %handle, i32 noundef 9, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #4
  %harvest_config.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 14
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %6 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp4.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %8 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %9
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.cleanup_crit_edge

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %harvest_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %harvest_config.i.i.i, align 4
  %and.i.i.i = shl i32 %11, 7
  %12 = and i32 %and.i.i.i, 128
  %and3.i.i.i = shl i32 %11, 13
  %13 = and i32 %and3.i.i.i, 16384
  %14 = or i32 %13, %12
  %or6.i.i.i = xor i32 %14, 16512
  %call.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #4
  %and7.i.i.i = and i32 %or6.i.i.i, %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end7, label %for.cond.i.i

if.end7:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @vce_v3_0_stop(ptr noundef %handle) #4
  %call3.i = tail call i32 @vce_v3_0_set_clockgating_state(ptr noundef %handle, i32 noundef 0) #4
  %call8 = tail call i32 @amdgpu_vce_suspend(ptr noundef %handle) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.cond.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -110, %if.end.cleanup_crit_edge ], [ -110, %for.cond.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_vce_resume(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32927, i32 noundef 0) #4
  %or.i.i = or i32 %call.i.i, 65536
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32927, i32 noundef %or.i.i, i32 noundef 0) #4
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 12
  %0 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic_funcs.i, align 4
  %set_vce_clocks.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %set_vce_clocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_vce_clocks.i, align 4
  %call.i = tail call i32 %3(ptr noundef %handle, i32 noundef 10000, i32 noundef 10000) #4
  %num_rings.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 17
  %4 = ptrtoint ptr %num_rings.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not.i = icmp eq i32 %5, 0
  br i1 %cmp13.not.i, label %if.end.do.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %6 = ptrtoint ptr %num_rings.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_rings.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.do.end.i_crit_edge

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 %i.014.i
  %call2.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %for.cond.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end.i ], [ %call2.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vce_v3_0_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 14
  %0 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %harvest_config, align 4
  %and = shl i32 %1, 7
  %2 = and i32 %and, 128
  %and3 = shl i32 %1, 13
  %3 = and i32 %and3, 16384
  %4 = or i32 %3, %2
  %or6 = xor i32 %4, 16512
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #4
  %and7 = and i32 %or6, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  ret i1 %tobool8.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_wait_for_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %harvest_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 14
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.05, 1
  %2 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %harvest_config.i, align 4
  %and.i = shl i32 %5, 7
  %6 = and i32 %and.i, 128
  %and3.i = shl i32 %5, 13
  %7 = and i32 %and3.i, 16384
  %8 = or i32 %7, %6
  %or6.i = xor i32 %8, 16512
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #4
  %and7.i = and i32 %or6.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %for.cond.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vce_v3_0_check_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef 7, i32 noundef 0) #4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32769, i32 noundef 0) #4
  %and = and i32 %call, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef 23, i32 noundef 0) #4
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32769, i32 noundef 0) #4
  %and5 = and i32 %call4, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %0 = select i1 %tobool6.not, i1 %tobool.not, i1 false
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef 7, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #4
  %spec.select = select i1 %0, i32 0, i32 -2130706432
  %1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %1, align 8
  %3 = xor i1 %0, true
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_pre_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 16
  %0 = ptrtoint ptr %srbm_soft_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  %call = tail call i32 @vce_v3_0_suspend(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.body.preheader ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 16
  %0 = ptrtoint ptr %srbm_soft_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #4
  %or = or i32 %call, %1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %or) #7
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or, i32 noundef 0) #4
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #4
  %neg = xor i32 %1, -1
  %and = and i32 %call6, %neg
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and, i32 noundef 0) #4
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_post_soft_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 16
  %0 = ptrtoint ptr %srbm_soft_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  %call = tail call i32 @vce_v3_0_resume(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.body.preheader ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 8
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #4
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %cmp1 = phi i1 [ true, %if.end ], [ false, %for.inc.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %if.end ], [ 1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw nsw i32 1, %i.038
  %and2 = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %shl6 = shl nuw nsw i32 %i.038, 4
  %or = or i32 %shl6, 7
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef %or, i32 noundef 0) #4
  br i1 %cmp, label %if.end5.if.end14_crit_edge, label %if.then8

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32958, i32 noundef 0) #4
  %and9 = and i32 %call, -4096
  %or10 = or i32 %and9, 64
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32958, i32 noundef %or10, i32 noundef 0) #4
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33263, i32 noundef 0) #4
  %and12 = and i32 %call11, -4096
  %or13 = or i32 %and12, 64
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33263, i32 noundef %or13, i32 noundef 0) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end5.if.end14_crit_edge
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32927, i32 noundef 0) #4
  %or.i.i = or i32 %call.i.i, 65536
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32927, i32 noundef %or.i.i, i32 noundef 0) #4
  %call11.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32959, i32 noundef 0) #4
  br i1 %cmp, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = and i32 %call11.i, -15663616
  %and.i = or i32 %or.i, 511
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32959, i32 noundef %and.i, i32 noundef 0) #4
  %call1.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33263, i32 noundef 0) #4
  %or2.i = and i32 %call1.i, 4095
  %and3.i = or i32 %or2.i, 4190208
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33263, i32 noundef %and3.i, i32 noundef 0) #4
  %call4.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33296, i32 noundef 0) #4
  %or5.i = and i32 %call4.i, -65539
  %and6.i = or i32 %or5.i, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33296, i32 noundef %and6.i, i32 noundef 0) #4
  %call7.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33264, i32 noundef 0) #4
  %or8.i = or i32 %call7.i, 895
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33264, i32 noundef %or8.i, i32 noundef 0) #4
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33680, i32 noundef 0) #4
  %or10.i = or i32 %call9.i, 15
  br label %vce_v3_0_set_vce_sw_clock_gating.exit

if.else.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %and12.i = and i32 %call11.i, -15663129
  %or13.i = or i32 %and12.i, 15138824
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32959, i32 noundef %or13.i, i32 noundef 0) #4
  %call14.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33263, i32 noundef 0) #4
  %or15.i = or i32 %call14.i, -4194304
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33263, i32 noundef %or15.i, i32 noundef 0) #4
  %call16.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33296, i32 noundef 0) #4
  %or17.i = or i32 %call16.i, 65536
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33296, i32 noundef %or17.i, i32 noundef 0) #4
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33264, i32 noundef 0) #4
  %and19.i = and i32 %call18.i, -1024
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33264, i32 noundef %and19.i, i32 noundef 0) #4
  %call20.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33680, i32 noundef 0) #4
  %and21.i = and i32 %call20.i, -16
  br label %vce_v3_0_set_vce_sw_clock_gating.exit

vce_v3_0_set_vce_sw_clock_gating.exit:            ; preds = %if.else.i, %if.then.i
  %and21.sink.i = phi i32 [ %and21.i, %if.else.i ], [ %or10.i, %if.then.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33680, i32 noundef %and21.sink.i, i32 noundef 0) #4
  %call.i66.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32927, i32 noundef 0) #4
  %and.i67.i = and i32 %call.i66.i, -65537
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32927, i32 noundef %and.i67.i, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %vce_v3_0_set_vce_sw_clock_gating.exit, %for.body.for.inc_crit_edge
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @vce_v3_0_stop(ptr noundef %handle)
  br label %out

if.else:                                          ; preds = %entry
  %grbm_idx_mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex.i, i32 noundef 0) #4
  %harvest_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 14
  %wptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 7
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 12
  %ring_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 0, i32 9
  %wptr20.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 1, i32 7
  %gpu_addr26.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 1, i32 12
  %ring_size32.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 1, i32 9
  %wptr37.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 2, i32 7
  %gpu_addr43.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 2, i32 12
  %ring_size49.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 12, i32 2, i32 9
  %asic_type.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 109, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else
  %idx.0147.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %harvest_config.i, align 4
  %shl.i = shl nuw nsw i32 1, %idx.0147.i
  %and.i = and i32 %1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %shl1.i = shl i32 %idx.0147.i, 4
  %or.i = or i32 %shl1.i, 7
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef %or.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %idx.0147.i)
  %cmp2.not.i = icmp eq i32 %idx.0147.i, 1
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %if.end.i.if.then6.i_crit_edge

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %2 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5.i = icmp eq i32 %3, 1
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %lor.lhs.false.i.if.end51.i_crit_edge

lor.lhs.false.i.if.end51.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %conv.i = trunc i64 %5 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32867, i32 noundef %conv.i, i32 noundef 0) #4
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr.i, align 8
  %conv12.i = trunc i64 %7 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32868, i32 noundef %conv12.i, i32 noundef 0) #4
  %8 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %gpu_addr.i, align 8
  %conv13.i = trunc i64 %9 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32864, i32 noundef %conv13.i, i32 noundef 0) #4
  %10 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %gpu_addr.i, align 8
  %shr.i = lshr i64 %11, 32
  %conv16.i = trunc i64 %shr.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32865, i32 noundef %conv16.i, i32 noundef 0) #4
  %12 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_size.i, align 8
  %div138.i = lshr i32 %13, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32866, i32 noundef %div138.i, i32 noundef 0) #4
  %14 = ptrtoint ptr %wptr20.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wptr20.i, align 8
  %conv22.i = trunc i64 %15 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32862, i32 noundef %conv22.i, i32 noundef 0) #4
  %16 = ptrtoint ptr %wptr20.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wptr20.i, align 8
  %conv25.i = trunc i64 %17 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32863, i32 noundef %conv25.i, i32 noundef 0) #4
  %18 = ptrtoint ptr %gpu_addr26.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gpu_addr26.i, align 8
  %conv27.i = trunc i64 %19 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32859, i32 noundef %conv27.i, i32 noundef 0) #4
  %20 = ptrtoint ptr %gpu_addr26.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %gpu_addr26.i, align 8
  %shr29.i = lshr i64 %21, 32
  %conv31.i = trunc i64 %shr29.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32860, i32 noundef %conv31.i, i32 noundef 0) #4
  %22 = ptrtoint ptr %ring_size32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ring_size32.i, align 8
  %div33139.i = lshr i32 %23, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32861, i32 noundef %div33139.i, i32 noundef 0) #4
  %24 = ptrtoint ptr %wptr37.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wptr37.i, align 8
  %conv39.i = trunc i64 %25 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32983, i32 noundef %conv39.i, i32 noundef 0) #4
  %26 = ptrtoint ptr %wptr37.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %wptr37.i, align 8
  %conv42.i = trunc i64 %27 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32984, i32 noundef %conv42.i, i32 noundef 0) #4
  %28 = ptrtoint ptr %gpu_addr43.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %gpu_addr43.i, align 8
  %conv44.i = trunc i64 %29 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32980, i32 noundef %conv44.i, i32 noundef 0) #4
  %30 = ptrtoint ptr %gpu_addr43.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %gpu_addr43.i, align 8
  %shr46.i = lshr i64 %31, 32
  %conv48.i = trunc i64 %shr46.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32981, i32 noundef %conv48.i, i32 noundef 0) #4
  %32 = ptrtoint ptr %ring_size49.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ring_size49.i, align 8
  %div50140.i = lshr i32 %33, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32982, i32 noundef %div50140.i, i32 noundef 0) #4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then6.i, %lor.lhs.false.i.if.end51.i_crit_edge
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32958, i32 noundef 0) #4
  %and.i.i = and i32 %call.i.i, -65537
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32958, i32 noundef %and.i.i, i32 noundef 0) #4
  %call3.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33263, i32 noundef 0) #4
  %and4.i.i = and i32 %call3.i.i, 6295551
  %or5.i.i = or i32 %and4.i.i, 2093056
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33263, i32 noundef %or5.i.i, i32 noundef 0) #4
  %call10.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 33264, i32 noundef 0) #4
  %or12.i.i = or i32 %call10.i.i, 63
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 33264, i32 noundef %or12.i.i, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32959, i32 noundef 511, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34214, i32 noundef 3768320, i32 noundef 0) #4
  %call17.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 34237, i32 noundef 0) #4
  %and18.i.i = and i32 %call17.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34237, i32 noundef %and18.i.i, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34221, i32 noundef 0, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34222, i32 noundef 0, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34216, i32 noundef 0, i32 noundef 0) #4
  %call24.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32773, i32 noundef 0) #4
  %or26.i.i = or i32 %call24.i.i, 1048576
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32773, i32 noundef %or26.i.i, i32 noundef 0) #4
  %34 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asic_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %35)
  %cmp.i.i = icmp ugt i32 %35, 13
  %36 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %gpu_addr.i.i, align 8
  %shr.i.i = lshr i64 %37, 8
  %conv.i.i = trunc i64 %shr.i.i to i32
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34326, i32 noundef %conv.i.i, i32 noundef 0) #4
  %38 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %gpu_addr.i.i, align 8
  %shr31.i.i = lshr i64 %39, 8
  %conv32.i.i = trunc i64 %shr31.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34327, i32 noundef %conv32.i.i, i32 noundef 0) #4
  %40 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %gpu_addr.i.i, align 8
  %shr35.i.i = lshr i64 %41, 8
  %conv36.i.i = trunc i64 %shr35.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34328, i32 noundef %conv36.i.i, i32 noundef 0) #4
  br label %vce_v3_0_mc_resume.exit.i

if.else.i.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34199, i32 noundef %conv.i.i, i32 noundef 0) #4
  br label %vce_v3_0_mc_resume.exit.i

vce_v3_0_mc_resume.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32777, i32 noundef 256, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32778, i32 noundef 393216, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0147.i)
  %cmp42.i.i = icmp eq i32 %idx.0147.i, 0
  %..i.i = select i1 %cmp42.i.i, i32 393472, i32 774400
  %.132.i.i = select i1 %cmp42.i.i, i32 459008, i32 839936
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32779, i32 noundef %..i.i, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32780, i32 noundef 65536, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32781, i32 noundef %.132.i.i, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32782, i32 noundef 315392, i32 noundef 0) #4
  %call58.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 34205, i32 noundef 0) #4
  %and59.i.i = and i32 %call58.i.i, -257
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34205, i32 noundef %and59.i.i, i32 noundef 0) #4
  %call63.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 34112, i32 noundef 0) #4
  %or65.i.i = or i32 %call63.i.i, 8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 34112, i32 noundef %or65.i.i, i32 noundef 0) #4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32769, i32 noundef 0) #4
  %or53.i = or i32 %call.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32769, i32 noundef %or53.i, i32 noundef 0) #4
  %42 = ptrtoint ptr %asic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %asic_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %43)
  %cmp54.i = icmp ugt i32 %43, 13
  %call57.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32773, i32 noundef 0) #4
  %and58.i = and i32 %call57.i, -2097154
  %call57.sink.i = select i1 %cmp54.i, i32 %and58.i, i32 %call57.i
  %or62.i = or i32 %call57.sink.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32773, i32 noundef %or62.i, i32 noundef 0) #4
  %call64.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32840, i32 noundef 0) #4
  %and65.i = and i32 %call64.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32840, i32 noundef %and65.i, i32 noundef 0) #4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %vce_v3_0_mc_resume.exit.i
  %__ms.0146.i = phi i32 [ 100, %vce_v3_0_mc_resume.exit.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.0146.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #4
  %tobool67.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool67.not.i, label %while.body.i.for.cond1.preheader.i.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %while.body.i
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.end.i.i.for.cond1.preheader.i.i_crit_edge, %while.body.i.for.cond1.preheader.i.i_crit_edge
  %i.038.i.i = phi i32 [ %inc23.i.i, %for.end.i.i.for.cond1.preheader.i.i_crit_edge ], [ 0, %while.body.i.for.cond1.preheader.i.i_crit_edge ]
  br label %for.body3.i.i

for.cond1.i.i:                                    ; preds = %for.body3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #4
  %inc.i.i = add nuw nsw i32 %j.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.cond1.i.i.for.body3.i.i_crit_edge

for.cond1.i.i.for.body3.i.i_crit_edge:            ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.cond1.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i
  %j.035.i.i = phi i32 [ 0, %for.cond1.preheader.i.i ], [ %inc.i.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %call.i141.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32769, i32 noundef 0) #4
  %and.i142.i = and i32 %call.i141.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142.i)
  %tobool.not.i.i = icmp eq i32 %and.i142.i, 0
  br i1 %tobool.not.i.i, label %for.cond1.i.i, label %for.body3.i.i.vce_v3_0_firmware_loaded.exit.i_crit_edge

for.body3.i.i.vce_v3_0_firmware_loaded.exit.i_crit_edge: ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vce_v3_0_firmware_loaded.exit.i

for.end.i.i:                                      ; preds = %for.cond1.i.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #4
  %call5.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32840, i32 noundef 0) #4
  %or.i.i = or i32 %call5.i.i, 1
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32840, i32 noundef %or.i.i, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #4
  %call13.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32840, i32 noundef 0) #4
  %and14.i.i = and i32 %call13.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32840, i32 noundef %and14.i.i, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #4
  %inc23.i.i = add nuw nsw i32 %i.038.i.i, 1
  %exitcond40.not.i.i = icmp eq i32 %inc23.i.i, 10
  br i1 %exitcond40.not.i.i, label %for.end.i.i.vce_v3_0_firmware_loaded.exit.i_crit_edge, label %for.end.i.i.for.cond1.preheader.i.i_crit_edge

for.end.i.i.for.cond1.preheader.i.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond1.preheader.i.i

for.end.i.i.vce_v3_0_firmware_loaded.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vce_v3_0_firmware_loaded.exit.i

vce_v3_0_firmware_loaded.exit.i:                  ; preds = %for.end.i.i.vce_v3_0_firmware_loaded.exit.i_crit_edge, %for.body3.i.i.vce_v3_0_firmware_loaded.exit.i_crit_edge
  %retval.3.i.i = phi i32 [ 0, %for.body3.i.i.vce_v3_0_firmware_loaded.exit.i_crit_edge ], [ -110, %for.end.i.i.vce_v3_0_firmware_loaded.exit.i_crit_edge ]
  %call69.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32769, i32 noundef 0) #4
  %and70.i = and i32 %call69.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 32769, i32 noundef %and70.i, i32 noundef 0) #4
  br i1 %tobool.not.i.i, label %if.then73.i, label %vce_v3_0_firmware_loaded.exit.i.for.inc.i_crit_edge

vce_v3_0_firmware_loaded.exit.i.for.inc.i_crit_edge: ; preds = %vce_v3_0_firmware_loaded.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then73.i:                                      ; preds = %vce_v3_0_firmware_loaded.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #4
  br label %vce_v3_0_start.exit

for.inc.i:                                        ; preds = %vce_v3_0_firmware_loaded.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.0147.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #4
  br label %vce_v3_0_start.exit

vce_v3_0_start.exit:                              ; preds = %for.end.i, %if.then73.i
  %retval.0.i = phi i32 [ %retval.3.i.i, %if.then73.i ], [ 0, %for.end.i ]
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex.i) #4
  br label %out

out:                                              ; preds = %vce_v3_0_start.exit, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %vce_v3_0_start.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v3_0_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #4
  %flags1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %smc_rreg2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg2, align 4
  %. = select i1 %tobool.not, i32 -1071644004, i32 -803208548
  %call3 = tail call i32 %3(ptr noundef %handle, i32 noundef %.) #4
  %and4 = and i32 %call3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #7
  br label %out

if.end8:                                          ; preds = %entry
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 49664, i32 noundef 0) #4
  %and10 = and i32 %call9, -17
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 49664, i32 noundef %and10, i32 noundef 0) #4
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 32958, i32 noundef 0) #4
  %and12 = and i32 %call11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end8.out_crit_edge, label %if.then14

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or15 = or i32 %5, 16384
  store i32 %or15, ptr %flags, align 4
  br label %out

out:                                              ; preds = %if.then14, %if.end8.out_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %pm) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vce_v3_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #4
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 109, i32 14
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.vce_v3_0_ring_get_rptr, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 49664, i32 noundef %switch.load, i32 noundef 0) #4
  br label %if.end9

if.end9:                                          ; preds = %switch.lookup, %entry.if.end9_crit_edge
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %6 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 1
  %switch.select = select i1 %switch.selectcmp, i32 32862, i32 32983
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.selectcmp36 = icmp eq i32 %7, 0
  %switch.select37 = select i1 %switch.selectcmp36, i32 32867, i32 %switch.select
  %call16 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %switch.select37, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #4
  %conv = zext i32 %call16 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vce_v3_0_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #4
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 109, i32 14
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.vce_v3_0_ring_get_wptr, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 49664, i32 noundef %switch.load, i32 noundef 0) #4
  br label %if.end9

if.end9:                                          ; preds = %switch.lookup, %entry.if.end9_crit_edge
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %6 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 1
  %switch.select = select i1 %switch.selectcmp, i32 32863, i32 32984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.selectcmp36 = icmp eq i32 %7, 0
  %switch.select37 = select i1 %switch.selectcmp36, i32 32868, i32 %switch.select
  %call16 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %switch.select37, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #4
  %conv = zext i32 %call16 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v3_0_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #4
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 109, i32 14
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.vce_v3_0_ring_set_wptr, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 49664, i32 noundef %switch.load, i32 noundef 0) #4
  br label %if.end9

if.end9:                                          ; preds = %switch.lookup, %entry.if.end9_crit_edge
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %6 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 1
  %switch.select = select i1 %switch.selectcmp, i32 32863, i32 32984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.selectcmp45 = icmp eq i32 %7, 0
  %switch.select46 = select i1 %switch.selectcmp45, i32 32868, i32 %switch.select
  %wptr17 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr17 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr17, align 8
  %conv19 = trunc i64 %9 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %switch.select46, i32 noundef %conv19, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_ring_parse_cs_vm(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v3_0_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit24

if.then.i14:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vce_ring_emit_fence(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v3_0_emit_pipeline_sync(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_drv = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2
  %sync_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_seq, align 4
  %2 = ptrtoint ptr %fence_drv to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fence_drv, align 8
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %10 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask.i, align 8
  %12 = trunc i64 %9 to i32
  %idxprom.i = and i32 %11, %12
  %arrayidx.i = getelementptr i32, ptr %7, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 262, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %14 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ptr_mask.i, align 8
  %16 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %16, %15
  store i64 %and3.i, ptr %wptr.i, align 8
  %17 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i11 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i11, label %if.then.i12, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit22

if.then.i12:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit22

amdgpu_ring_write.exit22:                         ; preds = %if.then.i12, %amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 4
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wptr.i, align 8
  %inc.i15 = add i64 %22, 1
  store i64 %inc.i15, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_mask.i, align 8
  %25 = trunc i64 %22 to i32
  %idxprom.i17 = and i32 %24, %25
  %arrayidx.i18 = getelementptr i32, ptr %20, i32 %idxprom.i17
  %26 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %conv, ptr %arrayidx.i18, align 4
  %27 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ptr_mask.i, align 8
  %29 = load i64, ptr %wptr.i, align 8
  %and3.i20 = and i64 %29, %28
  store i64 %and3.i20, ptr %wptr.i, align 8
  %30 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count_dw.i, align 8
  %dec.i21 = add i32 %31, -1
  store i32 %dec.i21, ptr %count_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i21)
  %cmp.i24 = icmp slt i32 %dec.i21, 1
  br i1 %cmp.i24, label %if.then.i25, label %amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge

amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge: ; preds = %amdgpu_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit35

if.then.i25:                                      ; preds = %amdgpu_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit35

amdgpu_ring_write.exit35:                         ; preds = %if.then.i25, %amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i28 = add i64 %35, 1
  store i64 %inc.i28, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i30 = and i32 %37, %38
  %arrayidx.i31 = getelementptr i32, ptr %33, i32 %idxprom.i30
  %39 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %conv3, ptr %arrayidx.i31, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i33 = and i64 %42, %41
  store i64 %and3.i33, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i34 = add i32 %44, -1
  store i32 %dec.i34, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i34)
  %cmp.i37 = icmp slt i32 %dec.i34, 1
  br i1 %cmp.i37, label %if.then.i38, label %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge

amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge: ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit48

if.then.i38:                                      ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit48

amdgpu_ring_write.exit48:                         ; preds = %if.then.i38, %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 4
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wptr.i, align 8
  %inc.i41 = add i64 %48, 1
  store i64 %inc.i41, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_mask.i, align 8
  %51 = trunc i64 %48 to i32
  %idxprom.i43 = and i32 %50, %51
  %arrayidx.i44 = getelementptr i32, ptr %46, i32 %idxprom.i43
  %52 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %1, ptr %arrayidx.i44, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptr_mask.i, align 8
  %55 = load i64, ptr %wptr.i, align 8
  %and3.i46 = and i64 %55, %54
  store i64 %and3.i46, ptr %wptr.i, align 8
  %56 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count_dw.i, align 8
  %dec.i47 = add i32 %57, -1
  store i32 %dec.i47, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vce_v3_0_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
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
  store volatile i32 263, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i8 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i8, label %if.then.i9, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit19_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit19_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit19

if.then.i9:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit19

amdgpu_ring_write.exit19:                         ; preds = %if.then.i9, %amdgpu_ring_write.exit.amdgpu_ring_write.exit19_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i12 = add i64 %18, 1
  store i64 %inc.i12, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i14 = and i32 %20, %21
  %arrayidx.i15 = getelementptr i32, ptr %16, i32 %idxprom.i14
  %22 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %vmid, ptr %arrayidx.i15, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i17 = and i64 %25, %24
  store i64 %and3.i17, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i18 = add i32 %27, -1
  store i32 %dec.i18, ptr %count_dw.i, align 8
  %shr = lshr i64 %pd_addr, 12
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i18)
  %cmp.i21 = icmp slt i32 %dec.i18, 1
  br i1 %cmp.i21, label %if.then.i22, label %amdgpu_ring_write.exit19.amdgpu_ring_write.exit32_crit_edge

amdgpu_ring_write.exit19.amdgpu_ring_write.exit32_crit_edge: ; preds = %amdgpu_ring_write.exit19
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit32

if.then.i22:                                      ; preds = %amdgpu_ring_write.exit19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit32

amdgpu_ring_write.exit32:                         ; preds = %if.then.i22, %amdgpu_ring_write.exit19.amdgpu_ring_write.exit32_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i25 = add i64 %31, 1
  store i64 %inc.i25, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i27 = and i32 %33, %34
  %arrayidx.i28 = getelementptr i32, ptr %29, i32 %idxprom.i27
  %35 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %conv, ptr %arrayidx.i28, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i30 = and i64 %38, %37
  store i64 %and3.i30, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i31 = add i32 %40, -1
  store i32 %dec.i31, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i31)
  %cmp.i34 = icmp slt i32 %dec.i31, 1
  br i1 %cmp.i34, label %if.then.i35, label %amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge

amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge: ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit45

if.then.i35:                                      ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit45

amdgpu_ring_write.exit45:                         ; preds = %if.then.i35, %amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i38 = add i64 %44, 1
  store i64 %inc.i38, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i40 = and i32 %46, %47
  %arrayidx.i41 = getelementptr i32, ptr %42, i32 %idxprom.i40
  %48 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 264, ptr %arrayidx.i41, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i43 = and i64 %51, %50
  store i64 %and3.i43, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i44 = add i32 %53, -1
  store i32 %dec.i44, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i44)
  %cmp.i47 = icmp slt i32 %dec.i44, 1
  br i1 %cmp.i47, label %if.then.i48, label %amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge

amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge: ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit58

if.then.i48:                                      ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit58

amdgpu_ring_write.exit58:                         ; preds = %if.then.i48, %amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i51 = add i64 %57, 1
  store i64 %inc.i51, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i53 = and i32 %59, %60
  %arrayidx.i54 = getelementptr i32, ptr %55, i32 %idxprom.i53
  %61 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %vmid, ptr %arrayidx.i54, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i56 = and i64 %64, %63
  store i64 %and3.i56, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i57 = add i32 %66, -1
  store i32 %dec.i57, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i57)
  %cmp.i60 = icmp slt i32 %dec.i57, 1
  br i1 %cmp.i60, label %if.then.i61, label %amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge

amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge: ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit71

if.then.i61:                                      ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #4
  br label %amdgpu_ring_write.exit71

amdgpu_ring_write.exit71:                         ; preds = %if.then.i61, %amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i64 = add i64 %70, 1
  store i64 %inc.i64, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i66 = and i32 %72, %73
  %arrayidx.i67 = getelementptr i32, ptr %68, i32 %idxprom.i66
  %74 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 1, ptr %arrayidx.i67, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i69 = and i64 %77, %76
  store i64 %and3.i69, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i70 = add i32 %79, -1
  store i32 %dec.i70, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_ring_test_ring(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_ring_test_ib(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_insert_nop(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vce_ring_begin_use(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vce_ring_end_use(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_ring_parse_cs(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vce_ring_emit_ib(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_set_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %spec.select = select i1 %cmp, i32 8, i32 0
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 34112, i32 noundef 0) #4
  %and = and i32 %call, -9
  %or2 = or i32 %and, %spec.select
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 34112, i32 noundef %or2, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vce_v3_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #4
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 34113, i32 noundef 0) #4
  %or = or i32 %call, 8
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 34113, i32 noundef %or, i32 noundef 0) #4
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %0 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 %1
  %call5 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %arrayidx4) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_id, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %1) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_sw_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_get_ring_prio(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_entity_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vce_sw_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vce_v3_0_stop(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #4
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 14
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %harvest_config, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef 7, i32 noundef 0) #4
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %3)
  %cmp2 = icmp ugt i32 %3, 13
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 32773, i32 noundef 0) #4
  %. = select i1 %cmp2, i32 -2097154, i32 -2
  %and7 = and i32 %call, %.
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 32773, i32 noundef %and7, i32 noundef 0) #4
  %call10 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 32840, i32 noundef 0) #4
  %or12 = or i32 %call10, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 32840, i32 noundef %or12, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 32769, i32 noundef 0, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %4 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %harvest_config, align 4
  %and.1 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef 23, i32 noundef 0) #4
  %6 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp2.1 = icmp ugt i32 %7, 13
  %call.1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 32773, i32 noundef 0) #4
  %.3 = select i1 %cmp2.1, i32 -2097154, i32 -2
  %and4.1 = and i32 %call.1, %.3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 32773, i32 noundef %and4.1, i32 noundef 0) #4
  %call10.1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 32840, i32 noundef 0) #4
  %or12.1 = or i32 %call10.1, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 32840, i32 noundef %or12.1, i32 noundef 0) #4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 32769, i32 noundef 0, i32 noundef 0) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 49664, i32 noundef -536870912, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_vce(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @vce_v3_0_ip_block, !1, !"vce_v3_0_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 1001, i32 38}
!2 = !{ptr @vce_v3_1_ip_block, !3, !"vce_v3_1_ip_block", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 1010, i32 38}
!4 = !{ptr @vce_v3_4_ip_block, !5, !"vce_v3_4_ip_block", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 1019, i32 38}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 900, i32 10}
!8 = !{ptr @vce_v3_0_ip_funcs, !9, !"vce_v3_0_ip_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 899, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 980, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vce_v3_0_set_ring_funcs._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @vce_v3_0_set_ring_funcs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 986, i32 3}
!18 = !{ptr @vce_v3_0_set_ring_funcs._entry.4, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vce_v3_0_set_ring_funcs._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @vce_v3_0_ring_vm_funcs, !21, !"vce_v3_0_ring_vm_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 944, i32 39}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!24 = !{ptr @vce_v3_0_ring_phys_funcs, !25, !"vce_v3_0_ring_phys_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 920, i32 39}
!26 = !{ptr @vce_v3_0_irq_funcs, !27, !"vce_v3_0_irq_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 990, i32 42}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 747, i32 2}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 758, i32 3}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 446, i32 23}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 485, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vce_v3_0_hw_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @vce_v3_0_hw_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 687, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vce_v3_0_soft_reset._entry, !40, !"_entry", i1 false, i1 false}
!45 = !{ptr @vce_v3_0_soft_reset._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 319, i32 4}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 248, i32 3}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/vce_v3_0.c", i32 847, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @vce_v3_0_get_clockgating_state._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @vce_v3_0_get_clockgating_state._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i8 0, i8 2}
