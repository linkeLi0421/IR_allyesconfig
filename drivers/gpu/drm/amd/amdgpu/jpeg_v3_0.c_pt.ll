; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c"
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@jpeg_v3_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @jpeg_v3_0_early_init, ptr null, ptr @jpeg_v3_0_sw_init, ptr @jpeg_v3_0_sw_fini, ptr null, ptr @jpeg_v3_0_hw_init, ptr @jpeg_v3_0_hw_fini, ptr null, ptr @jpeg_v3_0_suspend, ptr @jpeg_v3_0_resume, ptr @jpeg_v3_0_is_idle, ptr @jpeg_v3_0_wait_for_idle, ptr null, ptr null, ptr null, ptr null, ptr @jpeg_v3_0_set_clockgating_state, ptr @jpeg_v3_0_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@jpeg_v3_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 13, i32 3, i32 0, i32 0, ptr @jpeg_v3_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jpeg_v3_0\00", [22 x i8] zeroinitializer }, align 32
@jpeg_v3_0_dec_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 8, i32 15, i32 0, i8 0, i8 0, i32 1, i32 0, ptr @jpeg_v3_0_dec_ring_get_rptr, ptr @jpeg_v3_0_dec_ring_get_wptr, ptr @jpeg_v3_0_dec_ring_set_wptr, ptr null, ptr null, i32 128, i32 22, ptr @jpeg_v2_0_dec_ring_emit_ib, ptr @jpeg_v2_0_dec_ring_emit_fence, ptr null, ptr @jpeg_v2_0_dec_ring_emit_vm_flush, ptr null, ptr null, ptr @amdgpu_jpeg_dec_ring_test_ring, ptr @amdgpu_jpeg_dec_ring_test_ib, ptr @jpeg_v2_0_dec_ring_nop, ptr @jpeg_v2_0_dec_ring_insert_start, ptr @jpeg_v2_0_dec_ring_insert_end, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_jpeg_ring_begin_use, ptr @amdgpu_jpeg_ring_end_use, ptr null, ptr null, ptr null, ptr @jpeg_v2_0_dec_ring_emit_wreg, ptr @jpeg_v2_0_dec_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jpeg_v3_0_set_dec_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] JPEG decode is enabled in VM mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jpeg_v3_0_set_dec_ring_funcs\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c\00", [57 x i8] zeroinitializer }, align 32
@jpeg_v3_0_set_dec_ring_funcs._entry_ptr = internal global ptr @jpeg_v3_0_set_dec_ring_funcs._entry, section ".printk_index", align 4
@jpeg_v3_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @jpeg_v3_0_set_interrupt_state, ptr @jpeg_v3_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: JPEG TRAP\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jpeg_dec\00", [23 x i8] zeroinitializer }, align 32
@jpeg_v3_0_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] JPEG decode initialized successfully.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jpeg_v3_0_hw_init\00", [46 x i8] zeroinitializer }, align 32
@jpeg_v3_0_hw_init._entry_ptr = internal global ptr @jpeg_v3_0_hw_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jpeg_v3_0_wait_for_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014[drm] Register(%d) [%s] failed to reach value 0x%08x != 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jpeg_v3_0_wait_for_idle\00", [40 x i8] zeroinitializer }, align 32
@jpeg_v3_0_wait_for_idle._entry_ptr = internal global ptr @jpeg_v3_0_wait_for_idle._entry, section ".printk_index", align 4
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmUVD_JRBC_STATUS\00", [46 x i8] zeroinitializer }, align 32
@jpeg_v3_0_enable_static_power_gating._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"jpeg_v3_0_enable_static_power_gating\00", [59 x i8] zeroinitializer }, align 32
@jpeg_v3_0_enable_static_power_gating._entry_ptr = internal global ptr @jpeg_v3_0_enable_static_power_gating._entry, section ".printk_index", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmUVD_PGFSM_STATUS\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: JPEG enable power gating failed\0A\00", [55 x i8] zeroinitializer }, align 32
@jpeg_v3_0_disable_static_power_gating._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.15, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"jpeg_v3_0_disable_static_power_gating\00", [58 x i8] zeroinitializer }, align 32
@jpeg_v3_0_disable_static_power_gating._entry_ptr = internal global ptr @jpeg_v3_0_disable_static_power_gating._entry, section ".printk_index", align 4
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: JPEG disable power gating failed\0A\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"jpeg_v3_0_ip_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 534, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"jpeg_v3_0_ip_block\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 601, i32 38 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 535, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"jpeg_v3_0_dec_ring_vm_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 554, i32 39 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 587, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"jpeg_v3_0_irq_funcs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 590, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 519, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 526, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 98, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 150, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 465, i32 9 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 304, i32 7 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 309, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 269, i32 7 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 274, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @jpeg_v3_0_disable_static_power_gating._entry, ptr @jpeg_v3_0_disable_static_power_gating._entry_ptr, ptr @jpeg_v3_0_enable_static_power_gating._entry, ptr @jpeg_v3_0_enable_static_power_gating._entry_ptr, ptr @jpeg_v3_0_hw_init._entry, ptr @jpeg_v3_0_hw_init._entry_ptr, ptr @jpeg_v3_0_set_dec_ring_funcs._entry, ptr @jpeg_v3_0_set_dec_ring_funcs._entry_ptr, ptr @jpeg_v3_0_wait_for_idle._entry, ptr @jpeg_v3_0_wait_for_idle._entry_ptr, ptr @jpeg_v3_0_ip_funcs, ptr @jpeg_v3_0_ip_block, ptr @.str, ptr @jpeg_v3_0_dec_ring_vm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @jpeg_v3_0_irq_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_dec_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_set_dec_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_wait_for_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_enable_static_power_gating._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v3_0_disable_static_power_gating._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %1)
  %cmp.not = icmp eq i32 %1, 35
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %11, 7
  %call = tail call i32 %7(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %15, 7
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %cond.end.if.end22_crit_edge, label %cond.end.cleanup23_crit_edge

cond.end.cleanup23_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup23

cond.end.if.end22_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %cond.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %16 = ptrtoint ptr %jpeg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %jpeg, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @jpeg_v3_0_dec_ring_vm_funcs, ptr %funcs.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  %irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %irq.i, align 8
  %funcs.i37 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %funcs.i37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @jpeg_v3_0_irq_funcs, ptr %funcs.i37, align 8
  br label %cleanup23

cleanup23:                                        ; preds = %if.end22, %cond.end.cleanup23_crit_edge
  %retval.1 = phi i32 [ 0, %if.end22 ], [ -2, %cond.end.cleanup23_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 1
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 16, i32 noundef 153, ptr noundef %irq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @amdgpu_jpeg_sw_init(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @amdgpu_jpeg_resume(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %use_doorbell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 24
  %0 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %use_doorbell, align 4
  %1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shl = shl i32 %3, 1
  %add = or i32 %shl, 1
  %doorbell_index12 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 23
  %4 = ptrtoint ptr %doorbell_index12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %doorbell_index12, align 8
  %name = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 29
  %5 = call ptr @memcpy(ptr %name, ptr @.str.6, i32 9)
  %call19 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %inst, i32 noundef 512, ptr noundef %irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %internal = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 2
  %6 = ptrtoint ptr %internal to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16415, ptr %internal, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add26 = add i32 %10, 159
  %external = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %external to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add26, ptr %external, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call19, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_jpeg_suspend(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @amdgpu_jpeg_sw_fini(ptr noundef %handle) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %vcn_doorbell_range = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vcn_doorbell_range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcn_doorbell_range, align 4
  %use_doorbell = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 24
  %4 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_doorbell, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  %6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shl = shl i32 %8, 1
  tail call void %3(ptr noundef %handle, i1 noundef zeroext %tobool, i32 noundef %shl, i32 noundef 0) #4
  %call = tail call i32 @amdgpu_ring_test_helper(ptr noundef %inst) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 110, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #4
  %cur_state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 5
  %0 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true1

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true1:                                   ; preds = %land.lhs.true
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true1.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true1.cond.false_crit_edge:              ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 265
  %call14 = tail call i32 %7(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cond.true.if.end_crit_edge, label %cond.true.if.then_crit_edge

cond.true.if.then_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true1.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add20 = add i32 %15, 265
  %call21 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add20, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cond.false.if.end_crit_edge, label %cond.false.if.then_crit_edge

cond.false.if.then_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %cond.false.if.then_crit_edge, %cond.true.if.then_crit_edge
  %call23 = tail call i32 @jpeg_v3_0_set_powergating_state(ptr noundef %handle, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false.if.end_crit_edge, %cond.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jpeg_v3_0_hw_fini(ptr noundef %handle)
  %call1 = tail call i32 @amdgpu_jpeg_suspend(ptr noundef %handle) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_jpeg_resume(ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %inst.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs.i, align 8
  %vcn_doorbell_range.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vcn_doorbell_range.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcn_doorbell_range.i, align 4
  %use_doorbell.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 24
  %4 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_doorbell.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i = icmp ne i8 %5, 0
  %6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shl.i = shl i32 %8, 1
  tail call void %3(ptr noundef %handle, i1 noundef zeroext %tobool.i, i32 noundef %shl.i, i32 noundef 0) #4
  %call.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %inst.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @jpeg_v3_0_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 265
  %call = tail call i32 %5(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 265
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool21 = icmp ne i32 %and19, 0
  ret i1 %tobool21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_wait_for_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 265
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add, i32 noundef 0) #4
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %4 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usec_timeout, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %old_.0 = phi i32 [ 0, %entry ], [ %old_.1, %if.end.while.cond_crit_edge ]
  %tmp_.0 = phi i32 [ %call, %entry ], [ %call10, %if.end.while.cond_crit_edge ]
  %loop.0 = phi i32 [ %5, %entry ], [ %dec, %if.end.while.cond_crit_edge ]
  %and = and i32 %tmp_.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.not = icmp eq i32 %and, 0
  br i1 %cmp.not.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %old_.0, i32 %tmp_.0)
  %cmp3.not = icmp eq i32 %old_.0, %tmp_.0
  br i1 %cmp3.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %old_.1 = phi i32 [ %tmp_.0, %if.then ], [ %old_.0, %if.else ]
  %loop.1 = phi i32 [ %7, %if.then ], [ %loop.0, %if.else ]
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add9 = add i32 %12, 265
  %call10 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add9, i32 noundef 0) #4
  %dec = add i32 %loop.1, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and13 = and i32 %call10, 1
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %and13) #7
  br label %while.end

while.end:                                        ; preds = %do.end, %while.cond.while.end_crit_edge
  %ret.0 = phi i32 [ -110, %do.end ], [ 0, %while.cond.while.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.cond.false.i_crit_edge, label %land.lhs.true.i

if.then.cond.false.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add.i = add i32 %9, 265
  %call.i = tail call i32 %5(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 16) #4
  br label %jpeg_v3_0_is_idle.exit

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.then.cond.false.i_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17.i = add i32 %13, 265
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add17.i, i32 noundef 0) #4
  br label %jpeg_v3_0_is_idle.exit

jpeg_v3_0_is_idle.exit:                           ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call18.i, %cond.false.i ]
  %and19.i = and i32 %cond.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool21.i.not = icmp eq i32 %and19.i, 0
  br i1 %tobool21.i.not, label %jpeg_v3_0_is_idle.exit.cleanup_crit_edge, label %if.end

jpeg_v3_0_is_idle.exit.cleanup_crit_edge:         ; preds = %jpeg_v3_0_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %jpeg_v3_0_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @jpeg_v3_0_enable_clock_gating(ptr noundef %handle)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @jpeg_v3_0_disable_clock_gating(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %jpeg_v3_0_is_idle.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %jpeg_v3_0_is_idle.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 5
  %0 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp = icmp eq i32 %1, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp1 = icmp eq i32 %state, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 402
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #4
  %or.i = or i32 %call.i, 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add7.i = add i32 %9, 402
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add7.i, i32 noundef %or.i, i32 noundef 0) #4
  tail call fastcc void @jpeg_v3_0_enable_clock_gating(ptr noundef %handle) #4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx2.i.i = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i.i, align 4
  %add.i.i = add i32 %13, 10
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef 0) #4
  %or.i.i = or i32 %call.i.i, 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx6.i.i = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i.i, align 4
  %add7.i.i = add i32 %17, 10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add7.i.i, i32 noundef %or.i.i, i32 noundef 0) #4
  %pg_flags.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %18 = ptrtoint ptr %pg_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pg_flags.i.i, align 4
  %and8.i.i = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.if.end.i_crit_edge, label %if.then.i.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then2
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i.i = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %23, i32 noundef 8388608, i32 noundef 0) #4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx19.i.i = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19.i.i, align 4
  %add20.i.i = add i32 %27, 1
  %call21.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add20.i.i, i32 noundef 0) #4
  %usec_timeout.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %28 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usec_timeout.i.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %if.then.i.i
  %old_.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %old_.1.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %tmp_15.0.i.i = phi i32 [ %call21.i.i, %if.then.i.i ], [ %call31.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %loop.0.i.i = phi i32 [ %29, %if.then.i.i ], [ %dec.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %and22.i.i = and i32 %tmp_15.0.i.i, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %and22.i.i)
  %cmp.not.i.i = icmp eq i32 %and22.i.i, 8388608
  br i1 %cmp.not.i.i, label %while.cond.i.i.if.end.i_crit_edge, label %while.body.i.i

while.cond.i.i.if.end.i_crit_edge:                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %old_.0.i.i, i32 %tmp_15.0.i.i)
  %cmp23.not.i.i = icmp eq i32 %old_.0.i.i, %tmp_15.0.i.i
  br i1 %cmp23.not.i.i, label %if.else.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout.i.i, align 8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then24.i.i
  %old_.1.i.i = phi i32 [ %tmp_15.0.i.i, %if.then24.i.i ], [ %old_.0.i.i, %if.else.i.i ]
  %loop.1.i.i = phi i32 [ %31, %if.then24.i.i ], [ %loop.0.i.i, %if.else.i.i ]
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx29.i.i = getelementptr i32, ptr %34, i32 1
  %35 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx29.i.i, align 4
  %add30.i.i = add i32 %36, 1
  %call31.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add30.i.i, i32 noundef 0) #4
  %dec.i.i = add i32 %loop.1.i.i, -1
  %tobool32.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool32.not.i.i, label %jpeg_v3_0_enable_static_power_gating.exit.i, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

jpeg_v3_0_enable_static_power_gating.exit.i:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and36.i.i = and i32 %call31.i.i, 12582912
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef 8388608, i32 noundef %and36.i.i) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #4
  br label %cleanup

if.end.i:                                         ; preds = %while.cond.i.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  %dpm_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %37 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dpm_enabled.i, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool9.not.i = icmp eq i8 %38, 0
  br i1 %tobool9.not.i, label %if.end.i.if.then5_crit_edge, label %if.then10.i

if.end.i.if.then5_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_dpm_enable_jpeg(ptr noundef %handle, i1 noundef zeroext false) #4
  br label %if.then5

if.else:                                          ; preds = %if.end
  %dpm_enabled.i16 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %39 = ptrtoint ptr %dpm_enabled.i16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dpm_enabled.i16, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.else.if.end.i19_crit_edge, label %if.then.i

if.else.if.end.i19_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i19

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdgpu_dpm_enable_jpeg(ptr noundef %handle, i1 noundef zeroext true) #4
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.then.i, %if.else.if.end.i19_crit_edge
  %pg_flags.i.i17 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %41 = ptrtoint ptr %pg_flags.i.i17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pg_flags.i.i17, align 4
  %and.i.i = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i18, label %if.end.i19.if.end3.i_crit_edge, label %if.then.i.i25

if.end.i19.if.end3.i_crit_edge:                   ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

if.then.i.i25:                                    ; preds = %if.end.i19
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx2.i.i20 = getelementptr i32, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx2.i.i20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.i.i20, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %46, i32 noundef 4194304, i32 noundef 0) #4
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx6.i.i21 = getelementptr i32, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx6.i.i21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx6.i.i21, align 4
  %add7.i.i22 = add i32 %50, 1
  %call.i.i23 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add7.i.i22, i32 noundef 0) #4
  %usec_timeout.i.i24 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %51 = ptrtoint ptr %usec_timeout.i.i24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %usec_timeout.i.i24, align 8
  br label %while.cond.i.i30

while.cond.i.i30:                                 ; preds = %if.end.i.i35.while.cond.i.i30_crit_edge, %if.then.i.i25
  %tmp_.0.i.i = phi i32 [ %call.i.i23, %if.then.i.i25 ], [ %call17.i.i, %if.end.i.i35.while.cond.i.i30_crit_edge ]
  %loop.0.i.i26 = phi i32 [ %52, %if.then.i.i25 ], [ %dec.i.i34, %if.end.i.i35.while.cond.i.i30_crit_edge ]
  %old_.0.i.i27 = phi i32 [ 0, %if.then.i.i25 ], [ %tmp_.0.i.i, %if.end.i.i35.while.cond.i.i30_crit_edge ]
  %and8.i.i28 = and i32 %tmp_.0.i.i, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i28)
  %cmp.not.i.i29 = icmp eq i32 %and8.i.i28, 0
  br i1 %cmp.not.i.i29, label %while.cond.i.i30.if.end3.i_crit_edge, label %while.body.i.i31

while.cond.i.i30.if.end3.i_crit_edge:             ; preds = %while.cond.i.i30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

while.body.i.i31:                                 ; preds = %while.cond.i.i30
  call void @__sanitizer_cov_trace_cmp4(i32 %old_.0.i.i27, i32 %tmp_.0.i.i)
  %cmp9.not.i.i = icmp eq i32 %old_.0.i.i27, %tmp_.0.i.i
  br i1 %cmp9.not.i.i, label %if.else.i.i32, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %while.body.i.i31
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %usec_timeout.i.i24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usec_timeout.i.i24, align 8
  br label %if.end.i.i35

if.else.i.i32:                                    ; preds = %while.body.i.i31
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #4
  br label %if.end.i.i35

if.end.i.i35:                                     ; preds = %if.else.i.i32, %if.then10.i.i
  %loop.1.i.i33 = phi i32 [ %54, %if.then10.i.i ], [ %loop.0.i.i26, %if.else.i.i32 ]
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx15.i.i = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx15.i.i, align 4
  %add16.i.i = add i32 %59, 1
  %call17.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add16.i.i, i32 noundef 0) #4
  %dec.i.i34 = add i32 %loop.1.i.i33, -1
  %tobool18.not.i.i = icmp eq i32 %dec.i.i34, 0
  br i1 %tobool18.not.i.i, label %jpeg_v3_0_disable_static_power_gating.exit.i, label %if.end.i.i35.while.cond.i.i30_crit_edge

if.end.i.i35.while.cond.i.i30_crit_edge:          ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i30

jpeg_v3_0_disable_static_power_gating.exit.i:     ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #6
  %and21.i.i = and i32 %call17.i.i, 12582912
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef %and21.i.i) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #4
  br label %cleanup

if.end3.i:                                        ; preds = %while.cond.i.i30.if.end3.i_crit_edge, %if.end.i19.if.end3.i_crit_edge
  %arrayidx35.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %60 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i.i = getelementptr i32, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx37.i.i, align 4
  %add38.i.i = add i32 %63, 10
  %call39.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add38.i.i, i32 noundef 0) #4
  %and40.i.i = and i32 %call39.i.i, -2
  %64 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx44.i.i = getelementptr i32, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx44.i.i, align 4
  %add45.i.i = add i32 %67, 10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add45.i.i, i32 noundef %and40.i.i, i32 noundef 0) #4
  %68 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx53.i.i = getelementptr i32, ptr %69, i32 1
  %70 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx53.i.i, align 4
  %add54.i.i = add i32 %71, 10
  %call55.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add54.i.i, i32 noundef 0) #4
  %and56.i.i = and i32 %call55.i.i, -17
  %72 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx61.i.i = getelementptr i32, ptr %73, i32 1
  %74 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx61.i.i, align 4
  %add62.i.i = add i32 %75, 10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add62.i.i, i32 noundef %and56.i.i, i32 noundef 0) #4
  tail call fastcc void @jpeg_v3_0_disable_clock_gating(ptr noundef %handle) #4
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %76 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end3.i.cond.false.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %78 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %funcs.i, align 4
  %tobool5.not.i = icmp eq ptr %79, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool10.not.i = icmp eq ptr %81, null
  br i1 %tobool10.not.i, label %land.lhs.true6.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true6.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx35.i.i, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add.i36 = add i32 %85, 166
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %86 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %gb_addr_config.i, align 4
  tail call void %81(ptr noundef %handle, i32 noundef %add.i36, i32 noundef %87, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true6.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end3.i.cond.false.i_crit_edge
  %88 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx35.i.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add22.i = add i32 %91, 166
  %gb_addr_config25.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %92 = ptrtoint ptr %gb_addr_config25.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %gb_addr_config25.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add22.i, i32 noundef %93, i32 noundef 0) #4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %94 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %virt.i, align 8
  %and28.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %cond.end.i.cond.false54.i_crit_edge, label %land.lhs.true30.i

cond.end.i.cond.false54.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i

land.lhs.true30.i:                                ; preds = %cond.end.i
  %funcs33.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %96 = ptrtoint ptr %funcs33.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs33.i, align 4
  %tobool34.not.i = icmp eq ptr %97, null
  br i1 %tobool34.not.i, label %land.lhs.true30.i.cond.false54.i_crit_edge, label %land.lhs.true35.i

land.lhs.true30.i.cond.false54.i_crit_edge:       ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i

land.lhs.true35.i:                                ; preds = %land.lhs.true30.i
  %sriov_wreg39.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %sriov_wreg39.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sriov_wreg39.i, align 4
  %tobool40.not.i = icmp eq ptr %99, null
  br i1 %tobool40.not.i, label %land.lhs.true35.i.cond.false54.i_crit_edge, label %cond.true41.i

land.lhs.true35.i.cond.false54.i_crit_edge:       ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false54.i

cond.true41.i:                                    ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #6
  %100 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx35.i.i, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add50.i = add i32 %103, 236
  %gb_addr_config53.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %104 = ptrtoint ptr %gb_addr_config53.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %gb_addr_config53.i, align 4
  tail call void %99(ptr noundef %handle, i32 noundef %add50.i, i32 noundef %105, i32 noundef 0, i32 noundef 16) #4
  br label %do.body.i

cond.false54.i:                                   ; preds = %land.lhs.true35.i.cond.false54.i_crit_edge, %land.lhs.true30.i.cond.false54.i_crit_edge, %cond.end.i.cond.false54.i_crit_edge
  %106 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx35.i.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add59.i = add i32 %109, 236
  %gb_addr_config62.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  %110 = ptrtoint ptr %gb_addr_config62.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %gb_addr_config62.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add59.i, i32 noundef %111, i32 noundef 0) #4
  br label %do.body.i

do.body.i:                                        ; preds = %cond.false54.i, %cond.true41.i
  %112 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx35.i.i, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %add68.i = add i32 %115, 402
  %call69.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add68.i, i32 noundef 0) #4
  %and70.i = and i32 %call69.i, -2
  %116 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx35.i.i, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %add75.i = add i32 %119, 402
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add75.i, i32 noundef %and70.i, i32 noundef 0) #4
  %120 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx35.i.i, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %add82.i = add i32 %123, 449
  %call83.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add82.i, i32 noundef 0) #4
  %or85.i = or i32 %call83.i, 2
  %124 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx35.i.i, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 4
  %add90.i = add i32 %127, 449
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add90.i, i32 noundef %or85.i, i32 noundef 0) #4
  %128 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %virt.i, align 8
  %and95.i = and i32 %129, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %do.body.i.cond.false118.i_crit_edge, label %land.lhs.true97.i

do.body.i.cond.false118.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false118.i

land.lhs.true97.i:                                ; preds = %do.body.i
  %funcs100.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %130 = ptrtoint ptr %funcs100.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %funcs100.i, align 4
  %tobool101.not.i = icmp eq ptr %131, null
  br i1 %tobool101.not.i, label %land.lhs.true97.i.cond.false118.i_crit_edge, label %land.lhs.true102.i

land.lhs.true97.i.cond.false118.i_crit_edge:      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false118.i

land.lhs.true102.i:                               ; preds = %land.lhs.true97.i
  %sriov_wreg106.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %131, i32 0, i32 12
  %132 = ptrtoint ptr %sriov_wreg106.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sriov_wreg106.i, align 4
  %tobool107.not.i = icmp eq ptr %133, null
  br i1 %tobool107.not.i, label %land.lhs.true102.i.cond.false118.i_crit_edge, label %cond.true108.i

land.lhs.true102.i.cond.false118.i_crit_edge:     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false118.i

cond.true108.i:                                   ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #6
  %134 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx35.i.i, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %add117.i = add i32 %137, 336
  tail call void %133(ptr noundef %handle, i32 noundef %add117.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end124.i

cond.false118.i:                                  ; preds = %land.lhs.true102.i.cond.false118.i_crit_edge, %land.lhs.true97.i.cond.false118.i_crit_edge, %do.body.i.cond.false118.i_crit_edge
  %138 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx35.i.i, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %add123.i = add i32 %141, 336
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add123.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end124.i

cond.end124.i:                                    ; preds = %cond.false118.i, %cond.true108.i
  %142 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %virt.i, align 8
  %and127.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %cond.end124.i.cond.false150.i_crit_edge, label %land.lhs.true129.i

cond.end124.i.cond.false150.i_crit_edge:          ; preds = %cond.end124.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false150.i

land.lhs.true129.i:                               ; preds = %cond.end124.i
  %funcs132.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %144 = ptrtoint ptr %funcs132.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %funcs132.i, align 4
  %tobool133.not.i = icmp eq ptr %145, null
  br i1 %tobool133.not.i, label %land.lhs.true129.i.cond.false150.i_crit_edge, label %land.lhs.true134.i

land.lhs.true129.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false150.i

land.lhs.true134.i:                               ; preds = %land.lhs.true129.i
  %sriov_wreg138.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %145, i32 0, i32 12
  %146 = ptrtoint ptr %sriov_wreg138.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sriov_wreg138.i, align 4
  %tobool139.not.i = icmp eq ptr %147, null
  br i1 %tobool139.not.i, label %land.lhs.true134.i.cond.false150.i_crit_edge, label %cond.true140.i

land.lhs.true134.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false150.i

cond.true140.i:                                   ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #6
  %148 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx35.i.i, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %add149.i = add i32 %151, 257
  tail call void %147(ptr noundef %handle, i32 noundef %add149.i, i32 noundef 3, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end156.i

cond.false150.i:                                  ; preds = %land.lhs.true134.i.cond.false150.i_crit_edge, %land.lhs.true129.i.cond.false150.i_crit_edge, %cond.end124.i.cond.false150.i_crit_edge
  %152 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx35.i.i, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %add155.i = add i32 %155, 257
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add155.i, i32 noundef 3, i32 noundef 0) #4
  br label %cond.end156.i

cond.end156.i:                                    ; preds = %cond.false150.i, %cond.true140.i
  %156 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %virt.i, align 8
  %and159.i = and i32 %157, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  br i1 %tobool160.not.i, label %cond.end156.i.cond.false183.i_crit_edge, label %land.lhs.true161.i

cond.end156.i.cond.false183.i_crit_edge:          ; preds = %cond.end156.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183.i

land.lhs.true161.i:                               ; preds = %cond.end156.i
  %funcs164.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %158 = ptrtoint ptr %funcs164.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %funcs164.i, align 4
  %tobool165.not.i = icmp eq ptr %159, null
  br i1 %tobool165.not.i, label %land.lhs.true161.i.cond.false183.i_crit_edge, label %land.lhs.true166.i

land.lhs.true161.i.cond.false183.i_crit_edge:     ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183.i

land.lhs.true166.i:                               ; preds = %land.lhs.true161.i
  %sriov_wreg170.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %159, i32 0, i32 12
  %160 = ptrtoint ptr %sriov_wreg170.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %sriov_wreg170.i, align 4
  %tobool171.not.i = icmp eq ptr %161, null
  br i1 %tobool171.not.i, label %land.lhs.true166.i.cond.false183.i_crit_edge, label %cond.true172.i

land.lhs.true166.i.cond.false183.i_crit_edge:     ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false183.i

cond.true172.i:                                   ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #6
  %162 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx35.i.i, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  %add181.i = add i32 %165, 358
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %166 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %gpu_addr.i, align 8
  %conv.i = trunc i64 %167 to i32
  tail call void %161(ptr noundef %handle, i32 noundef %add181.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end192.i

cond.false183.i:                                  ; preds = %land.lhs.true166.i.cond.false183.i_crit_edge, %land.lhs.true161.i.cond.false183.i_crit_edge, %cond.end156.i.cond.false183.i_crit_edge
  %168 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx35.i.i, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %add188.i = add i32 %171, 358
  %gpu_addr189.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %172 = ptrtoint ptr %gpu_addr189.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %gpu_addr189.i, align 8
  %conv191.i = trunc i64 %173 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add188.i, i32 noundef %conv191.i, i32 noundef 0) #4
  br label %cond.end192.i

cond.end192.i:                                    ; preds = %cond.false183.i, %cond.true172.i
  %174 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %virt.i, align 8
  %and195.i = and i32 %175, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195.i)
  %tobool196.not.i = icmp eq i32 %and195.i, 0
  br i1 %tobool196.not.i, label %cond.end192.i.cond.false221.i_crit_edge, label %land.lhs.true197.i

cond.end192.i.cond.false221.i_crit_edge:          ; preds = %cond.end192.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false221.i

land.lhs.true197.i:                               ; preds = %cond.end192.i
  %funcs200.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %176 = ptrtoint ptr %funcs200.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %funcs200.i, align 4
  %tobool201.not.i = icmp eq ptr %177, null
  br i1 %tobool201.not.i, label %land.lhs.true197.i.cond.false221.i_crit_edge, label %land.lhs.true202.i

land.lhs.true197.i.cond.false221.i_crit_edge:     ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false221.i

land.lhs.true202.i:                               ; preds = %land.lhs.true197.i
  %sriov_wreg206.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %177, i32 0, i32 12
  %178 = ptrtoint ptr %sriov_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sriov_wreg206.i, align 4
  %tobool207.not.i = icmp eq ptr %179, null
  br i1 %tobool207.not.i, label %land.lhs.true202.i.cond.false221.i_crit_edge, label %cond.true208.i

land.lhs.true202.i.cond.false221.i_crit_edge:     ; preds = %land.lhs.true202.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false221.i

cond.true208.i:                                   ; preds = %land.lhs.true202.i
  call void @__sanitizer_cov_trace_pc() #6
  %180 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx35.i.i, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 4
  %add217.i = add i32 %183, 359
  %gpu_addr218.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %184 = ptrtoint ptr %gpu_addr218.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %gpu_addr218.i, align 8
  %shr.i = lshr i64 %185, 32
  %conv220.i = trunc i64 %shr.i to i32
  tail call void %179(ptr noundef %handle, i32 noundef %add217.i, i32 noundef %conv220.i, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end231.i

cond.false221.i:                                  ; preds = %land.lhs.true202.i.cond.false221.i_crit_edge, %land.lhs.true197.i.cond.false221.i_crit_edge, %cond.end192.i.cond.false221.i_crit_edge
  %186 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx35.i.i, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %add226.i = add i32 %189, 359
  %gpu_addr227.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %190 = ptrtoint ptr %gpu_addr227.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %gpu_addr227.i, align 8
  %shr228.i = lshr i64 %191, 32
  %conv230.i = trunc i64 %shr228.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add226.i, i32 noundef %conv230.i, i32 noundef 0) #4
  br label %cond.end231.i

cond.end231.i:                                    ; preds = %cond.false221.i, %cond.true208.i
  %192 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %virt.i, align 8
  %and234.i = and i32 %193, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i)
  %tobool235.not.i = icmp eq i32 %and234.i, 0
  br i1 %tobool235.not.i, label %cond.end231.i.cond.false257.i_crit_edge, label %land.lhs.true236.i

cond.end231.i.cond.false257.i_crit_edge:          ; preds = %cond.end231.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false257.i

land.lhs.true236.i:                               ; preds = %cond.end231.i
  %funcs239.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %194 = ptrtoint ptr %funcs239.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %funcs239.i, align 4
  %tobool240.not.i = icmp eq ptr %195, null
  br i1 %tobool240.not.i, label %land.lhs.true236.i.cond.false257.i_crit_edge, label %land.lhs.true241.i

land.lhs.true236.i.cond.false257.i_crit_edge:     ; preds = %land.lhs.true236.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false257.i

land.lhs.true241.i:                               ; preds = %land.lhs.true236.i
  %sriov_wreg245.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %195, i32 0, i32 12
  %196 = ptrtoint ptr %sriov_wreg245.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sriov_wreg245.i, align 4
  %tobool246.not.i = icmp eq ptr %197, null
  br i1 %tobool246.not.i, label %land.lhs.true241.i.cond.false257.i_crit_edge, label %cond.true247.i

land.lhs.true241.i.cond.false257.i_crit_edge:     ; preds = %land.lhs.true241.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false257.i

cond.true247.i:                                   ; preds = %land.lhs.true241.i
  call void @__sanitizer_cov_trace_pc() #6
  %198 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx35.i.i, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 4
  %add256.i = add i32 %201, 266
  tail call void %197(ptr noundef %handle, i32 noundef %add256.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end263.i

cond.false257.i:                                  ; preds = %land.lhs.true241.i.cond.false257.i_crit_edge, %land.lhs.true236.i.cond.false257.i_crit_edge, %cond.end231.i.cond.false257.i_crit_edge
  %202 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx35.i.i, align 8
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %203, align 4
  %add262.i = add i32 %205, 266
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add262.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end263.i

cond.end263.i:                                    ; preds = %cond.false257.i, %cond.true247.i
  %206 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %virt.i, align 8
  %and266.i = and i32 %207, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i)
  %tobool267.not.i = icmp eq i32 %and266.i, 0
  br i1 %tobool267.not.i, label %cond.end263.i.cond.false289.i_crit_edge, label %land.lhs.true268.i

cond.end263.i.cond.false289.i_crit_edge:          ; preds = %cond.end263.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false289.i

land.lhs.true268.i:                               ; preds = %cond.end263.i
  %funcs271.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %208 = ptrtoint ptr %funcs271.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %funcs271.i, align 4
  %tobool272.not.i = icmp eq ptr %209, null
  br i1 %tobool272.not.i, label %land.lhs.true268.i.cond.false289.i_crit_edge, label %land.lhs.true273.i

land.lhs.true268.i.cond.false289.i_crit_edge:     ; preds = %land.lhs.true268.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false289.i

land.lhs.true273.i:                               ; preds = %land.lhs.true268.i
  %sriov_wreg277.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %209, i32 0, i32 12
  %210 = ptrtoint ptr %sriov_wreg277.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %sriov_wreg277.i, align 4
  %tobool278.not.i = icmp eq ptr %211, null
  br i1 %tobool278.not.i, label %land.lhs.true273.i.cond.false289.i_crit_edge, label %cond.true279.i

land.lhs.true273.i.cond.false289.i_crit_edge:     ; preds = %land.lhs.true273.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false289.i

cond.true279.i:                                   ; preds = %land.lhs.true273.i
  call void @__sanitizer_cov_trace_pc() #6
  %212 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx35.i.i, align 8
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %213, align 4
  %add288.i = add i32 %215, 256
  tail call void %211(ptr noundef %handle, i32 noundef %add288.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end295.i

cond.false289.i:                                  ; preds = %land.lhs.true273.i.cond.false289.i_crit_edge, %land.lhs.true268.i.cond.false289.i_crit_edge, %cond.end263.i.cond.false289.i_crit_edge
  %216 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx35.i.i, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 4
  %add294.i = add i32 %219, 256
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add294.i, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end295.i

cond.end295.i:                                    ; preds = %cond.false289.i, %cond.true279.i
  %220 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %virt.i, align 8
  %and298.i = and i32 %221, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298.i)
  %tobool299.not.i = icmp eq i32 %and298.i, 0
  br i1 %tobool299.not.i, label %cond.end295.i.cond.false321.i_crit_edge, label %land.lhs.true300.i

cond.end295.i.cond.false321.i_crit_edge:          ; preds = %cond.end295.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false321.i

land.lhs.true300.i:                               ; preds = %cond.end295.i
  %funcs303.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %222 = ptrtoint ptr %funcs303.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %funcs303.i, align 4
  %tobool304.not.i = icmp eq ptr %223, null
  br i1 %tobool304.not.i, label %land.lhs.true300.i.cond.false321.i_crit_edge, label %land.lhs.true305.i

land.lhs.true300.i.cond.false321.i_crit_edge:     ; preds = %land.lhs.true300.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false321.i

land.lhs.true305.i:                               ; preds = %land.lhs.true300.i
  %sriov_wreg309.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %223, i32 0, i32 12
  %224 = ptrtoint ptr %sriov_wreg309.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %sriov_wreg309.i, align 4
  %tobool310.not.i = icmp eq ptr %225, null
  br i1 %tobool310.not.i, label %land.lhs.true305.i.cond.false321.i_crit_edge, label %cond.true311.i

land.lhs.true305.i.cond.false321.i_crit_edge:     ; preds = %land.lhs.true305.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false321.i

cond.true311.i:                                   ; preds = %land.lhs.true305.i
  call void @__sanitizer_cov_trace_pc() #6
  %226 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx35.i.i, align 8
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %227, align 4
  %add320.i = add i32 %229, 257
  tail call void %225(ptr noundef %handle, i32 noundef %add320.i, i32 noundef 2, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end327.i

cond.false321.i:                                  ; preds = %land.lhs.true305.i.cond.false321.i_crit_edge, %land.lhs.true300.i.cond.false321.i_crit_edge, %cond.end295.i.cond.false321.i_crit_edge
  %230 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx35.i.i, align 8
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 4
  %add326.i = add i32 %233, 257
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add326.i, i32 noundef 2, i32 noundef 0) #4
  br label %cond.end327.i

cond.end327.i:                                    ; preds = %cond.false321.i, %cond.true311.i
  %234 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %virt.i, align 8
  %and330.i = and i32 %235, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330.i)
  %tobool331.not.i = icmp eq i32 %and330.i, 0
  br i1 %tobool331.not.i, label %cond.end327.i.cond.false353.i_crit_edge, label %land.lhs.true332.i

cond.end327.i.cond.false353.i_crit_edge:          ; preds = %cond.end327.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false353.i

land.lhs.true332.i:                               ; preds = %cond.end327.i
  %funcs335.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %236 = ptrtoint ptr %funcs335.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %funcs335.i, align 4
  %tobool336.not.i = icmp eq ptr %237, null
  br i1 %tobool336.not.i, label %land.lhs.true332.i.cond.false353.i_crit_edge, label %land.lhs.true337.i

land.lhs.true332.i.cond.false353.i_crit_edge:     ; preds = %land.lhs.true332.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false353.i

land.lhs.true337.i:                               ; preds = %land.lhs.true332.i
  %sriov_wreg341.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %237, i32 0, i32 12
  %238 = ptrtoint ptr %sriov_wreg341.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %sriov_wreg341.i, align 4
  %tobool342.not.i = icmp eq ptr %239, null
  br i1 %tobool342.not.i, label %land.lhs.true337.i.cond.false353.i_crit_edge, label %cond.true343.i

land.lhs.true337.i.cond.false353.i_crit_edge:     ; preds = %land.lhs.true337.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false353.i

cond.true343.i:                                   ; preds = %land.lhs.true337.i
  call void @__sanitizer_cov_trace_pc() #6
  %240 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx35.i.i, align 8
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 4
  %add352.i = add i32 %243, 275
  %ring_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 9
  %244 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %ring_size.i, align 8
  %div534.i = lshr i32 %245, 2
  tail call void %239(ptr noundef %handle, i32 noundef %add352.i, i32 noundef %div534.i, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end361.i

cond.false353.i:                                  ; preds = %land.lhs.true337.i.cond.false353.i_crit_edge, %land.lhs.true332.i.cond.false353.i_crit_edge, %cond.end327.i.cond.false353.i_crit_edge
  %246 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx35.i.i, align 8
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 4
  %add358.i = add i32 %249, 275
  %ring_size359.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 9
  %250 = ptrtoint ptr %ring_size359.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %ring_size359.i, align 8
  %div360533.i = lshr i32 %251, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add358.i, i32 noundef %div360533.i, i32 noundef 0) #4
  br label %cond.end361.i

cond.end361.i:                                    ; preds = %cond.false353.i, %cond.true343.i
  %252 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %virt.i, align 8
  %and364.i = and i32 %253, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and364.i)
  %tobool365.not.i = icmp eq i32 %and364.i, 0
  br i1 %tobool365.not.i, label %cond.end361.i.cond.false387.i_crit_edge, label %land.lhs.true366.i

cond.end361.i.cond.false387.i_crit_edge:          ; preds = %cond.end361.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false387.i

land.lhs.true366.i:                               ; preds = %cond.end361.i
  %funcs369.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %254 = ptrtoint ptr %funcs369.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %funcs369.i, align 4
  %tobool370.not.i = icmp eq ptr %255, null
  br i1 %tobool370.not.i, label %land.lhs.true366.i.cond.false387.i_crit_edge, label %land.lhs.true371.i

land.lhs.true366.i.cond.false387.i_crit_edge:     ; preds = %land.lhs.true366.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false387.i

land.lhs.true371.i:                               ; preds = %land.lhs.true366.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %255, i32 0, i32 13
  %256 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool375.not.i = icmp eq ptr %257, null
  br i1 %tobool375.not.i, label %land.lhs.true371.i.cond.false387.i_crit_edge, label %cond.true376.i

land.lhs.true371.i.cond.false387.i_crit_edge:     ; preds = %land.lhs.true371.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false387.i

cond.true376.i:                                   ; preds = %land.lhs.true371.i
  call void @__sanitizer_cov_trace_pc() #6
  %258 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx35.i.i, align 8
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %259, align 4
  %add385.i = add i32 %261, 256
  %call386.i = tail call i32 %257(ptr noundef %handle, i32 noundef %add385.i, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end394.i

cond.false387.i:                                  ; preds = %land.lhs.true371.i.cond.false387.i_crit_edge, %land.lhs.true366.i.cond.false387.i_crit_edge, %cond.end361.i.cond.false387.i_crit_edge
  %262 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx35.i.i, align 8
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %263, align 4
  %add392.i = add i32 %265, 256
  %call393.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add392.i, i32 noundef 0) #4
  br label %cond.end394.i

cond.end394.i:                                    ; preds = %cond.false387.i, %cond.true376.i
  %cond.i = phi i32 [ %call386.i, %cond.true376.i ], [ %call393.i, %cond.false387.i ]
  %conv395.i = zext i32 %cond.i to i64
  %wptr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 7
  %266 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %conv395.i, ptr %wptr.i, align 8
  br label %if.then5

if.then5:                                         ; preds = %cond.end394.i, %if.then10.i, %if.end.i.if.then5_crit_edge
  %267 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %state, ptr %cur_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %jpeg_v3_0_disable_static_power_gating.exit.i, %jpeg_v3_0_enable_static_power_gating.exit.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ -110, %jpeg_v3_0_enable_static_power_gating.exit.i ], [ -110, %jpeg_v3_0_disable_static_power_gating.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jpeg_v3_0_dec_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 266
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 266
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jpeg_v3_0_dec_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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

if.else:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt, align 8
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else.cond.false_crit_edge, label %land.lhs.true

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true5

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_rreg, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %land.lhs.true5.cond.false_crit_edge, label %cond.true

land.lhs.true5.cond.false_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx14, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add = add i32 %19, 256
  %call = tail call i32 %15(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true5.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add21 = add i32 %23, 256
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add21, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %if.then
  %retval.0.in = phi i32 [ %9, %if.then ], [ %call, %cond.true ], [ %call22, %cond.false ]
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v3_0_dec_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %1, i32 noundef %12, i32 noundef %conv5) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and6 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.cond.false_crit_edge, label %land.lhs.true

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true9

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true9:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %land.lhs.true9.cond.false_crit_edge, label %cond.true

land.lhs.true9.cond.false_crit_edge:              ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add = add i32 %23, 256
  %wptr21 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %24 = ptrtoint ptr %wptr21 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wptr21, align 8
  %conv23 = trunc i64 %25 to i32
  tail call void %19(ptr noundef %1, i32 noundef %add, i32 noundef %conv23, i32 noundef 0, i32 noundef 16) #4
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true9.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx25, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add28 = add i32 %29, 256
  %wptr29 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %30 = ptrtoint ptr %wptr29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr29, align 8
  %conv31 = trunc i64 %31 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add28, i32 noundef %conv31, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %cond.false, %cond.true, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_v2_0_dec_ring_emit_ib(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_v2_0_dec_ring_emit_fence(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_v2_0_dec_ring_emit_vm_flush(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_dec_ring_test_ring(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_dec_ring_test_ib(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_v2_0_dec_ring_nop(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_v2_0_dec_ring_insert_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_v2_0_dec_ring_insert_end(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_jpeg_ring_begin_use(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_jpeg_ring_end_use(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_v2_0_dec_ring_emit_wreg(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_v2_0_dec_ring_emit_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_emit_reg_write_reg_wait_helper(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jpeg_v3_0_set_interrupt_state(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v3_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #4
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 153, i32 %1)
  %cond = icmp eq i32 %1, 153
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %inst) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %2 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_data, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %3) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_sw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_sw_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jpeg_v3_0_enable_clock_gating(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 480
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 480
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %or = or i32 %cond, 31
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and21 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false43_crit_edge, label %land.lhs.true23

cond.end.cond.false43_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false43_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false43_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false43_crit_edge, label %cond.true33

land.lhs.true28.cond.false43_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43

cond.true33:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx39 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx39, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add42 = add i32 %23, 480
  tail call void %19(ptr noundef %adev, i32 noundef %add42, i32 noundef %or, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end49

cond.false43:                                     ; preds = %land.lhs.true28.cond.false43_crit_edge, %land.lhs.true23.cond.false43_crit_edge, %cond.end.cond.false43_crit_edge
  %arrayidx45 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx45, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add48 = add i32 %27, 480
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48, i32 noundef %or, i32 noundef 0) #4
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false43, %cond.true33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jpeg_v3_0_disable_clock_gating(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 481
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 481
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %14 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cg_flags, align 8
  %and19 = lshr i32 %15, 30
  %16 = or i32 %cond, %and19
  %or23 = or i32 %16, 130
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt, align 8
  %and26 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %cond.end.cond.false48_crit_edge, label %land.lhs.true28

cond.end.cond.false48_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

land.lhs.true28:                                  ; preds = %cond.end
  %funcs31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %19 = ptrtoint ptr %funcs31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs31, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false48_crit_edge, label %land.lhs.true33

land.lhs.true28.cond.false48_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_wreg, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %land.lhs.true33.cond.false48_crit_edge, label %cond.true38

land.lhs.true33.cond.false48_crit_edge:           ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false48

cond.true38:                                      ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx44, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add47 = add i32 %26, 481
  tail call void %22(ptr noundef %adev, i32 noundef %add47, i32 noundef %or23, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end54

cond.false48:                                     ; preds = %land.lhs.true33.cond.false48_crit_edge, %land.lhs.true28.cond.false48_crit_edge, %cond.end.cond.false48_crit_edge
  %arrayidx50 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %27 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx50, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add53 = add i32 %30, 481
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53, i32 noundef %or23, i32 noundef 0) #4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false48, %cond.true38
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt, align 8
  %and57 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %cond.end54.cond.false81_crit_edge, label %land.lhs.true59

cond.end54.cond.false81_crit_edge:                ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

land.lhs.true59:                                  ; preds = %cond.end54
  %funcs62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs62, align 4
  %tobool63.not = icmp eq ptr %34, null
  br i1 %tobool63.not, label %land.lhs.true59.cond.false81_crit_edge, label %land.lhs.true64

land.lhs.true59.cond.false81_crit_edge:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %sriov_rreg68 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg68, align 4
  %tobool69.not = icmp eq ptr %36, null
  br i1 %tobool69.not, label %land.lhs.true64.cond.false81_crit_edge, label %cond.true70

land.lhs.true64.cond.false81_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81

cond.true70:                                      ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx76 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %37 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx76, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add79 = add i32 %40, 480
  %call80 = tail call i32 %36(ptr noundef %adev, i32 noundef %add79, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end88

cond.false81:                                     ; preds = %land.lhs.true64.cond.false81_crit_edge, %land.lhs.true59.cond.false81_crit_edge, %cond.end54.cond.false81_crit_edge
  %arrayidx83 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %41 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx83, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add86 = add i32 %44, 480
  %call87 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add86, i32 noundef 0) #4
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false81, %cond.true70
  %cond89 = phi i32 [ %call80, %cond.true70 ], [ %call87, %cond.false81 ]
  %and90 = and i32 %cond89, -32
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and93 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %cond.end88.cond.false116_crit_edge, label %land.lhs.true95

cond.end88.cond.false116_crit_edge:               ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

land.lhs.true95:                                  ; preds = %cond.end88
  %funcs98 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %47 = ptrtoint ptr %funcs98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs98, align 4
  %tobool99.not = icmp eq ptr %48, null
  br i1 %tobool99.not, label %land.lhs.true95.cond.false116_crit_edge, label %land.lhs.true100

land.lhs.true95.cond.false116_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

land.lhs.true100:                                 ; preds = %land.lhs.true95
  %sriov_wreg104 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %sriov_wreg104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_wreg104, align 4
  %tobool105.not = icmp eq ptr %50, null
  br i1 %tobool105.not, label %land.lhs.true100.cond.false116_crit_edge, label %cond.true106

land.lhs.true100.cond.false116_crit_edge:         ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false116

cond.true106:                                     ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx112 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %51 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx112, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add115 = add i32 %54, 480
  tail call void %50(ptr noundef %adev, i32 noundef %add115, i32 noundef %and90, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end122

cond.false116:                                    ; preds = %land.lhs.true100.cond.false116_crit_edge, %land.lhs.true95.cond.false116_crit_edge, %cond.end88.cond.false116_crit_edge
  %arrayidx118 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %55 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx118, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add121 = add i32 %58, 480
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add121, i32 noundef %and90, i32 noundef 0) #4
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false116, %cond.true106
  %59 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %virt, align 8
  %and125 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %cond.end122.cond.false149_crit_edge, label %land.lhs.true127

cond.end122.cond.false149_crit_edge:              ; preds = %cond.end122
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false149

land.lhs.true127:                                 ; preds = %cond.end122
  %funcs130 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %61 = ptrtoint ptr %funcs130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %funcs130, align 4
  %tobool131.not = icmp eq ptr %62, null
  br i1 %tobool131.not, label %land.lhs.true127.cond.false149_crit_edge, label %land.lhs.true132

land.lhs.true127.cond.false149_crit_edge:         ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false149

land.lhs.true132:                                 ; preds = %land.lhs.true127
  %sriov_rreg136 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %sriov_rreg136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sriov_rreg136, align 4
  %tobool137.not = icmp eq ptr %64, null
  br i1 %tobool137.not, label %land.lhs.true132.cond.false149_crit_edge, label %cond.true138

land.lhs.true132.cond.false149_crit_edge:         ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false149

cond.true138:                                     ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx144 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %65 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx144, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add147 = add i32 %68, 481
  %call148 = tail call i32 %64(ptr noundef %adev, i32 noundef %add147, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end156

cond.false149:                                    ; preds = %land.lhs.true132.cond.false149_crit_edge, %land.lhs.true127.cond.false149_crit_edge, %cond.end122.cond.false149_crit_edge
  %arrayidx151 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %69 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx151, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add154 = add i32 %72, 481
  %call155 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add154, i32 noundef 0) #4
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false149, %cond.true138
  %cond157 = phi i32 [ %call148, %cond.true138 ], [ %call155, %cond.false149 ]
  %and158 = and i32 %cond157, -1769473
  %73 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %virt, align 8
  %and161 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %cond.end156.cond.false184_crit_edge, label %land.lhs.true163

cond.end156.cond.false184_crit_edge:              ; preds = %cond.end156
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false184

land.lhs.true163:                                 ; preds = %cond.end156
  %funcs166 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %75 = ptrtoint ptr %funcs166 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %funcs166, align 4
  %tobool167.not = icmp eq ptr %76, null
  br i1 %tobool167.not, label %land.lhs.true163.cond.false184_crit_edge, label %land.lhs.true168

land.lhs.true163.cond.false184_crit_edge:         ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false184

land.lhs.true168:                                 ; preds = %land.lhs.true163
  %sriov_wreg172 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %sriov_wreg172 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sriov_wreg172, align 4
  %tobool173.not = icmp eq ptr %78, null
  br i1 %tobool173.not, label %land.lhs.true168.cond.false184_crit_edge, label %cond.true174

land.lhs.true168.cond.false184_crit_edge:         ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false184

cond.true174:                                     ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx180 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %79 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx180, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add183 = add i32 %82, 481
  tail call void %78(ptr noundef %adev, i32 noundef %add183, i32 noundef %and158, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end190

cond.false184:                                    ; preds = %land.lhs.true168.cond.false184_crit_edge, %land.lhs.true163.cond.false184_crit_edge, %cond.end156.cond.false184_crit_edge
  %arrayidx186 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %83 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx186, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add189 = add i32 %86, 481
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add189, i32 noundef %and158, i32 noundef 0) #4
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false184, %cond.true174
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_jpeg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @jpeg_v3_0_ip_block, !1, !"jpeg_v3_0_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 601, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 535, i32 10}
!4 = !{ptr @jpeg_v3_0_ip_funcs, !5, !"jpeg_v3_0_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 534, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 587, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @jpeg_v3_0_set_dec_ring_funcs._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @jpeg_v3_0_set_dec_ring_funcs._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @jpeg_v3_0_dec_ring_vm_funcs, !13, !"jpeg_v3_0_dec_ring_vm_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 554, i32 39}
!14 = !{ptr @jpeg_v3_0_irq_funcs, !15, !"jpeg_v3_0_irq_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 590, i32 42}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 519, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 526, i32 3}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 98, i32 22}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 150, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @jpeg_v3_0_hw_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @jpeg_v3_0_hw_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 465, i32 9}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @jpeg_v3_0_wait_for_idle._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @jpeg_v3_0_wait_for_idle._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 304, i32 7}
!35 = !{ptr @jpeg_v3_0_enable_static_power_gating._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @jpeg_v3_0_enable_static_power_gating._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 309, i32 4}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 269, i32 7}
!42 = !{ptr @jpeg_v3_0_disable_static_power_gating._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @jpeg_v3_0_disable_static_power_gating._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c", i32 274, i32 4}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
