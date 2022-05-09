; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c"
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

@jpeg_v2_5_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @jpeg_v2_5_early_init, ptr null, ptr @jpeg_v2_5_sw_init, ptr @jpeg_v2_5_sw_fini, ptr null, ptr @jpeg_v2_5_hw_init, ptr @jpeg_v2_5_hw_fini, ptr null, ptr @jpeg_v2_5_suspend, ptr @jpeg_v2_5_resume, ptr @jpeg_v2_5_is_idle, ptr @jpeg_v2_5_wait_for_idle, ptr null, ptr null, ptr null, ptr null, ptr @jpeg_v2_5_set_clockgating_state, ptr @jpeg_v2_5_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@jpeg_v2_5_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 13, i32 2, i32 5, i32 0, ptr @jpeg_v2_5_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@jpeg_v2_6_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str.14, ptr @jpeg_v2_5_early_init, ptr null, ptr @jpeg_v2_5_sw_init, ptr @jpeg_v2_5_sw_fini, ptr null, ptr @jpeg_v2_5_hw_init, ptr @jpeg_v2_5_hw_fini, ptr null, ptr @jpeg_v2_5_suspend, ptr @jpeg_v2_5_resume, ptr @jpeg_v2_5_is_idle, ptr @jpeg_v2_5_wait_for_idle, ptr null, ptr null, ptr null, ptr null, ptr @jpeg_v2_5_set_clockgating_state, ptr @jpeg_v2_5_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@jpeg_v2_6_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 13, i32 2, i32 6, i32 0, ptr @jpeg_v2_6_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jpeg_v2_5\00", [22 x i8] zeroinitializer }, align 32
@jpeg_v2_5_dec_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 8, i32 15, i32 0, i8 0, i8 0, i32 2, i32 0, ptr @jpeg_v2_5_dec_ring_get_rptr, ptr @jpeg_v2_5_dec_ring_get_wptr, ptr @jpeg_v2_5_dec_ring_set_wptr, ptr null, ptr null, i32 128, i32 22, ptr @jpeg_v2_0_dec_ring_emit_ib, ptr @jpeg_v2_0_dec_ring_emit_fence, ptr null, ptr @jpeg_v2_0_dec_ring_emit_vm_flush, ptr null, ptr null, ptr @amdgpu_jpeg_dec_ring_test_ring, ptr @amdgpu_jpeg_dec_ring_test_ib, ptr @jpeg_v2_0_dec_ring_nop, ptr @jpeg_v2_0_dec_ring_insert_start, ptr @jpeg_v2_0_dec_ring_insert_end, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_jpeg_ring_begin_use, ptr @amdgpu_jpeg_ring_end_use, ptr null, ptr null, ptr null, ptr @jpeg_v2_0_dec_ring_emit_wreg, ptr @jpeg_v2_0_dec_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jpeg_v2_6_dec_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 8, i32 15, i32 0, i8 0, i8 0, i32 1, i32 0, ptr @jpeg_v2_5_dec_ring_get_rptr, ptr @jpeg_v2_5_dec_ring_get_wptr, ptr @jpeg_v2_5_dec_ring_set_wptr, ptr null, ptr null, i32 128, i32 22, ptr @jpeg_v2_0_dec_ring_emit_ib, ptr @jpeg_v2_0_dec_ring_emit_fence, ptr null, ptr @jpeg_v2_0_dec_ring_emit_vm_flush, ptr null, ptr null, ptr @amdgpu_jpeg_dec_ring_test_ring, ptr @amdgpu_jpeg_dec_ring_test_ib, ptr @jpeg_v2_0_dec_ring_nop, ptr @jpeg_v2_6_dec_ring_insert_start, ptr @jpeg_v2_6_dec_ring_insert_end, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @amdgpu_jpeg_ring_begin_use, ptr @amdgpu_jpeg_ring_end_use, ptr null, ptr null, ptr null, ptr @jpeg_v2_0_dec_ring_emit_wreg, ptr @jpeg_v2_0_dec_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jpeg_v2_5_set_dec_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016[drm] JPEG(%d) JPEG decode is enabled in VM mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jpeg_v2_5_set_dec_ring_funcs\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c\00", [57 x i8] zeroinitializer }, align 32
@jpeg_v2_5_set_dec_ring_funcs._entry_ptr = internal global ptr @jpeg_v2_5_set_dec_ring_funcs._entry, section ".printk_index", align 4
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@jpeg_v2_5_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @jpeg_v2_5_set_interrupt_state, ptr @jpeg_v2_5_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unhandled client id: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: JPEG TRAP\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_ih_clientid_jpeg = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 14], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jpeg_dec_%d\00", [20 x i8] zeroinitializer }, align 32
@jpeg_v2_5_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] JPEG decode initialized successfully.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jpeg_v2_5_hw_init\00", [46 x i8] zeroinitializer }, align 32
@jpeg_v2_5_hw_init._entry_ptr = internal global ptr @jpeg_v2_5_hw_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jpeg_v2_5_wait_for_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014[drm] Register(%d) [%s] failed to reach value 0x%08x != 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jpeg_v2_5_wait_for_idle\00", [40 x i8] zeroinitializer }, align 32
@jpeg_v2_5_wait_for_idle._entry_ptr = internal global ptr @jpeg_v2_5_wait_for_idle._entry, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmUVD_JRBC_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jpeg_v2_6\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 16]
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"jpeg_v2_5_ip_funcs\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 582, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"jpeg_v2_5_ip_block\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 716, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"jpeg_v2_6_ip_funcs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 602, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"jpeg_v2_6_ip_block\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 725, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 583, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"jpeg_v2_5_dec_ring_vm_funcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 622, i32 39 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"jpeg_v2_6_dec_ring_vm_funcs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 652, i32 39 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 694, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 314, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"jpeg_v2_5_irq_funcs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 698, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 563, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 567, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 574, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"amdgpu_ih_clientid_jpeg\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 43, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 116, i32 23 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 175, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 488, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 603, i32 10 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @jpeg_v2_5_hw_init._entry, ptr @jpeg_v2_5_hw_init._entry_ptr, ptr @jpeg_v2_5_set_dec_ring_funcs._entry, ptr @jpeg_v2_5_set_dec_ring_funcs._entry_ptr, ptr @jpeg_v2_5_wait_for_idle._entry, ptr @jpeg_v2_5_wait_for_idle._entry_ptr, ptr @jpeg_v2_5_ip_funcs, ptr @jpeg_v2_5_ip_block, ptr @jpeg_v2_6_ip_funcs, ptr @jpeg_v2_6_ip_block, ptr @.str, ptr @jpeg_v2_5_dec_ring_vm_funcs, ptr @jpeg_v2_6_dec_ring_vm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @jpeg_v2_5_irq_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @amdgpu_ih_clientid_jpeg, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_5_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_5_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_6_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_6_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_5_dec_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_6_dec_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_5_set_dec_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_5_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ih_clientid_jpeg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_5_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v2_5_wait_for_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %jpeg, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.065 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %virt, align 8
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cond.false_crit_edge, label %land.lhs.true

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true5

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sriov_rreg, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %land.lhs.true5.cond.false_crit_edge, label %cond.true

land.lhs.true5.cond.false_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.065
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx15, align 4
  %add = add i32 %10, 7
  %call = tail call i32 %6(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true5.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.065
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %14, 7
  %call21 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add20, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call21, %cond.false ]
  %and22 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %cond.end.for.inc_crit_edge, label %if.then

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %i.065
  %15 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %harvest_config, align 4
  %or = or i32 %16, %shl
  store i32 %or, ptr %harvest_config, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %cond.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %17 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %jpeg, align 8
  %conv = zext i8 %.pr to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %18 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %harvest_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp27 = icmp eq i32 %19, 3
  br i1 %cmp27, label %for.end.cleanup_crit_edge, label %if.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp30.not.i = icmp eq i8 %.pr, 0
  br i1 %cmp30.not.i, label %jpeg_v2_5_set_dec_ring_funcs.exitthread-pre-split, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end30
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %harvest_config, align 4
  %shl.i = shl nuw i32 1, %i.031.i
  %and.i = and i32 %21, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %23)
  %cmp3.i = icmp eq i32 %23, 23
  %spec.select.i = select i1 %cmp3.i, ptr @jpeg_v2_5_dec_ring_vm_funcs, ptr @jpeg_v2_6_dec_ring_vm_funcs
  %24 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.031.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %spec.select.i, ptr %24, align 4
  %me.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.031.i, i32 0, i32 16
  %26 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %i.031.i, ptr %me.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.031.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %27 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %jpeg, align 8
  %conv.i = zext i8 %28 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.jpeg_v2_5_set_dec_ring_funcs.exit_crit_edge

for.inc.i.jpeg_v2_5_set_dec_ring_funcs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jpeg_v2_5_set_dec_ring_funcs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

jpeg_v2_5_set_dec_ring_funcs.exitthread-pre-split: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr63 = load i8, ptr %jpeg, align 8
  br label %jpeg_v2_5_set_dec_ring_funcs.exit

jpeg_v2_5_set_dec_ring_funcs.exit:                ; preds = %jpeg_v2_5_set_dec_ring_funcs.exitthread-pre-split, %for.inc.i.jpeg_v2_5_set_dec_ring_funcs.exit_crit_edge
  %30 = phi i8 [ %.pr63, %jpeg_v2_5_set_dec_ring_funcs.exitthread-pre-split ], [ %28, %for.inc.i.jpeg_v2_5_set_dec_ring_funcs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp16.not.i = icmp eq i8 %30, 0
  br i1 %cmp16.not.i, label %jpeg_v2_5_set_dec_ring_funcs.exit.cleanup_crit_edge, label %for.body.lr.ph.i53

jpeg_v2_5_set_dec_ring_funcs.exit.cleanup_crit_edge: ; preds = %jpeg_v2_5_set_dec_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i53:                               ; preds = %jpeg_v2_5_set_dec_ring_funcs.exit
  %31 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %harvest_config, align 4
  br label %for.body.i57

for.body.i57:                                     ; preds = %for.inc.i62.for.body.i57_crit_edge, %for.body.lr.ph.i53
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i53 ], [ %inc.i59, %for.inc.i62.for.body.i57_crit_edge ]
  %shl.i54 = shl nuw i32 1, %i.017.i
  %and.i55 = and i32 %shl.i54, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %if.end.i58, label %for.body.i57.for.inc.i62_crit_edge

for.body.i57.for.inc.i62_crit_edge:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i62

if.end.i58:                                       ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #7
  %irq.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.017.i, i32 1
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %irq.i, align 8
  %funcs.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.017.i, i32 1, i32 2
  %34 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @jpeg_v2_5_irq_funcs, ptr %funcs.i, align 8
  br label %for.inc.i62

for.inc.i62:                                      ; preds = %if.end.i58, %for.body.i57.for.inc.i62_crit_edge
  %inc.i59 = add nuw nsw i32 %i.017.i, 1
  %35 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %jpeg, align 8
  %conv.i60 = zext i8 %36 to i32
  %cmp.i61 = icmp ult i32 %inc.i59, %conv.i60
  br i1 %cmp.i61, label %for.inc.i62.for.body.i57_crit_edge, label %for.inc.i62.cleanup_crit_edge

for.inc.i62.cleanup_crit_edge:                    ; preds = %for.inc.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.i62.for.body.i57_crit_edge:               ; preds = %for.inc.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i57

cleanup:                                          ; preds = %for.inc.i62.cleanup_crit_edge, %jpeg_v2_5_set_dec_ring_funcs.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %for.end.cleanup_crit_edge ], [ 0, %jpeg_v2_5_set_dec_ring_funcs.exit.cleanup_crit_edge ], [ 0, %for.inc.i62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp100.not = icmp eq i8 %1, 0
  br i1 %cmp100.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.0101
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [2 x i32], ptr @amdgpu_ih_clientid_jpeg, i32 0, i32 %i.0101
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %irq = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.0101, i32 1
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %5, i32 noundef 153, ptr noundef %irq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0101, 1
  %6 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %jpeg, align 8
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call8 = tail call i32 @amdgpu_jpeg_sw_init(ptr noundef %handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %call12 = tail call i32 @amdgpu_jpeg_resume(ptr noundef %handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond16.preheader, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond16.preheader:                             ; preds = %if.end11
  %8 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp20104.not = icmp eq i8 %9, 0
  br i1 %cmp20104.not, label %for.cond16.preheader.cleanup_crit_edge, label %for.body22.lr.ph

for.cond16.preheader.cleanup_crit_edge:           ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body22.lr.ph:                                 ; preds = %for.cond16.preheader
  %harvest_config24 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  %10 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  %internal = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 2
  br label %for.body22

for.body22:                                       ; preds = %for.inc54.for.body22_crit_edge, %for.body22.lr.ph
  %i.1105 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc55, %for.inc54.for.body22_crit_edge ]
  %11 = ptrtoint ptr %harvest_config24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %harvest_config24, align 4
  %shl25 = shl nuw i32 1, %i.1105
  %and26 = and i32 %12, %shl25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end29, label %for.body22.for.inc54_crit_edge

for.body22.for.inc54_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc54

if.end29:                                         ; preds = %for.body22
  %arrayidx32 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.1105
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx32, i32 0, i32 24
  %13 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %use_doorbell, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 4
  %shl33 = shl i32 %15, 1
  %mul = shl i32 %i.1105, 3
  %add = or i32 %mul, 1
  %add34 = add i32 %add, %shl33
  %doorbell_index35 = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx32, i32 0, i32 23
  %16 = ptrtoint ptr %doorbell_index35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add34, ptr %doorbell_index35, align 8
  %name = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx32, i32 0, i32 29
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.8, i32 noundef %i.1105)
  %irq40 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.1105, i32 1
  %call41 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %arrayidx32, i32 noundef 512, ptr noundef %irq40, i32 noundef 0, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %internal to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16415, ptr %internal, align 8
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.1105
  %18 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx47, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add49 = add i32 %21, 159
  %external = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.1105, i32 2
  %22 = ptrtoint ptr %external to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add49, ptr %external, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %if.end44, %for.body22.for.inc54_crit_edge
  %inc55 = add nuw nsw i32 %i.1105, 1
  %23 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %jpeg, align 8
  %conv19 = zext i8 %24 to i32
  %cmp20 = icmp ult i32 %inc55, %conv19
  br i1 %cmp20, label %for.inc54.for.body22_crit_edge, label %for.inc54.cleanup_crit_edge

for.inc54.cleanup_crit_edge:                      ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc54.for.body22_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

cleanup:                                          ; preds = %for.inc54.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %for.cond16.preheader.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %for.end.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %for.cond16.preheader.cleanup_crit_edge ], [ %call41, %if.end29.cleanup_crit_edge ], [ 0, %for.inc54.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_jpeg_suspend(ptr noundef %handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @amdgpu_jpeg_sw_fini(ptr noundef %handle) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp26.not = icmp eq i8 %1, 0
  br i1 %cmp26.not, label %entry.do.end_crit_edge, label %for.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.027
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.027
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 8
  %vcn_doorbell_range = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %vcn_doorbell_range to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vcn_doorbell_range, align 4
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx, i32 0, i32 24
  %9 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %use_doorbell, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4 = icmp ne i8 %10, 0
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %shl5 = shl i32 %12, 1
  %mul = shl i32 %i.027, 3
  %add = add i32 %shl5, %mul
  tail call void %8(ptr noundef %handle, i1 noundef zeroext %tobool4, i32 noundef %add, i32 noundef %i.027) #5
  %call = tail call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %13 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %jpeg, align 8
  %conv = zext i8 %14 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 110, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #5
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp51.not = icmp eq i8 %1, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  %cur_state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 5
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.052
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and6 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true8

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %land.lhs.true8.cond.false_crit_edge, label %land.lhs.true10

land.lhs.true8.cond.false_crit_edge:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %land.lhs.true10.cond.false_crit_edge, label %cond.true

land.lhs.true10.cond.false_crit_edge:             ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true10
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.052
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add = add i32 %15, 265
  %call21 = tail call i32 %11(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cond.true.for.inc_crit_edge, label %cond.true.if.then30_crit_edge

cond.true.if.then30_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

cond.true.for.inc_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false:                                       ; preds = %land.lhs.true10.cond.false_crit_edge, %land.lhs.true8.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.052
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx25, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add27 = add i32 %19, 265
  %call28 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cond.false.for.inc_crit_edge, label %cond.false.if.then30_crit_edge

cond.false.if.then30_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

cond.false.for.inc_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then30:                                        ; preds = %cond.false.if.then30_crit_edge, %cond.true.if.then30_crit_edge
  %call31 = tail call i32 @jpeg_v2_5_set_powergating_state(ptr noundef %handle, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %cond.false.for.inc_crit_edge, %cond.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %20 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %jpeg, align 8
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jpeg_v2_5_hw_fini(ptr noundef %handle)
  %call1 = tail call i32 @amdgpu_jpeg_suspend(ptr noundef %handle) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_jpeg_resume(ptr noundef %handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %jpeg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp26.not.i = icmp eq i8 %1, 0
  br i1 %cmp26.not.i, label %if.end.do.end.i_crit_edge, label %for.body.lr.ph.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %harvest_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %harvest_config.i, align 4
  %shl.i = shl nuw i32 1, %i.027.i
  %and.i = and i32 %4, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.027.i
  %5 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs.i, align 8
  %vcn_doorbell_range.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %vcn_doorbell_range.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vcn_doorbell_range.i, align 4
  %use_doorbell.i = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx.i, i32 0, i32 24
  %9 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %use_doorbell.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.i = icmp ne i8 %10, 0
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %shl5.i = shl i32 %12, 1
  %mul.i = shl i32 %i.027.i, 3
  %add.i = add i32 %shl5.i, %mul.i
  tail call void %8(ptr noundef %handle, i1 noundef zeroext %tobool4.i, i32 noundef %add.i, i32 noundef %i.027.i) #5
  %call.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %13 = ptrtoint ptr %jpeg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %jpeg.i, align 8
  %conv.i = zext i8 %14 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end.i ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @jpeg_v2_5_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp44.not = icmp eq i8 %1, 0
  br i1 %cmp44.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.049 = phi i32 [ 1, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.045
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and3 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.045
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 265
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.045
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add21 = add i32 %17, 265
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add21, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call22, %cond.false ]
  %and23 = and i32 %ret.049, 1
  %and26 = and i32 %and23, %cond
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.049, %for.body.for.inc_crit_edge ], [ %and26, %cond.end ]
  %inc = add nuw nsw i32 %i.045, 1
  %18 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %jpeg, align 8
  %conv = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool27 = icmp ne i32 %ret.0.lcssa, 0
  ret i1 %tobool27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_wait_for_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp54.not = icmp eq i8 %1, 0
  br i1 %cmp54.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.055
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.055
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add = add i32 %7, 265
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add, i32 noundef 0) #5
  %8 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13.while.cond_crit_edge, %if.end
  %old_.0 = phi i32 [ 0, %if.end ], [ %old_.1, %if.end13.while.cond_crit_edge ]
  %tmp_.0 = phi i32 [ %call, %if.end ], [ %call19, %if.end13.while.cond_crit_edge ]
  %loop.0 = phi i32 [ %9, %if.end ], [ %dec, %if.end13.while.cond_crit_edge ]
  %and6 = and i32 %tmp_.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not.not, label %while.body, label %while.cond.for.inc_crit_edge

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %old_.0, i32 %tmp_.0)
  %cmp9.not = icmp eq i32 %old_.0, %tmp_.0
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usec_timeout, align 8
  br label %if.end13

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %old_.1 = phi i32 [ %tmp_.0, %if.then11 ], [ %old_.0, %if.else ]
  %loop.1 = phi i32 [ %11, %if.then11 ], [ %loop.0, %if.else ]
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add18 = add i32 %16, 265
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add18, i32 noundef 0) #5
  %dec = add i32 %loop.1, -1
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %while.end.thread, label %if.end13.while.cond_crit_edge

if.end13.while.cond_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end.thread:                                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %and23 = and i32 %call19, 1
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %i.055, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef %and23) #8
  br label %cleanup

for.inc:                                          ; preds = %while.cond.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %17 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %jpeg, align 8
  %conv = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %while.end.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp122.not = icmp eq i8 %1, 0
  br i1 %cmp122.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i8 [ 1, %for.body.lr.ph ], [ %24, %for.inc.for.body_crit_edge ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.023
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp44.not.i = icmp eq i8 %2, 0
  br i1 %cmp44.not.i, label %if.then5.if.end7_crit_edge, label %if.then5.for.body.i_crit_edge

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %ret.049.i = phi i32 [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.then5.for.body.i_crit_edge ]
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then5.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %harvest_config, align 4
  %shl.i = shl nuw i32 1, %i.045.i
  %and.i = and i32 %6, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %7 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt.i, align 8
  %and3.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %9 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %land.lhs.true6.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true6.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.045.i
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx15.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add.i = add i32 %16, 265
  %call.i = tail call i32 %12(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true6.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end.i.cond.false.i_crit_edge
  %arrayidx19.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.045.i
  %17 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx19.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add21.i = add i32 %20, 265
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add21.i, i32 noundef 0) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call22.i, %cond.false.i ]
  %and23.i = and i32 %ret.049.i, 1
  %and26.i = and i32 %and23.i, %cond.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end.i, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %ret.049.i, %for.body.i.for.inc.i_crit_edge ], [ %and26.i, %cond.end.i ]
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %21 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %jpeg, align 8
  %conv.i = zext i8 %22 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %jpeg_v2_5_is_idle.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

jpeg_v2_5_is_idle.exit:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool27.i.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool27.i.not, label %jpeg_v2_5_is_idle.exit.cleanup_crit_edge, label %jpeg_v2_5_is_idle.exit.if.end7_crit_edge

jpeg_v2_5_is_idle.exit.if.end7_crit_edge:         ; preds = %jpeg_v2_5_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

jpeg_v2_5_is_idle.exit.cleanup_crit_edge:         ; preds = %jpeg_v2_5_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %jpeg_v2_5_is_idle.exit.if.end7_crit_edge, %if.then5.if.end7_crit_edge
  tail call fastcc void @jpeg_v2_5_enable_clock_gating(ptr noundef %handle, i32 noundef %i.023)
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @jpeg_v2_5_disable_clock_gating(ptr noundef %handle, i32 noundef %i.023)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end7, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %23 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %jpeg, align 8
  %conv = zext i8 %24 to i32
  %cmp1 = icmp ult i32 %inc, %conv
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %jpeg_v2_5_is_idle.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -16, %jpeg_v2_5_is_idle.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 5
  %0 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp = icmp eq i32 %1, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp1 = icmp eq i32 %state, 0
  %jpeg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %2 = ptrtoint ptr %jpeg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %jpeg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.not.i = icmp eq i8 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %cmp2.not.i, label %if.then2.if.then5_crit_edge, label %for.body.lr.ph.i

if.then2.if.then5_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

for.body.lr.ph.i:                                 ; preds = %if.then2
  %harvest_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %harvest_config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %harvest_config.i, align 4
  %shl.i = shl nuw i32 1, %i.03.i
  %and.i = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.03.i
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add.i = add i32 %9, 402
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #5
  %or.i = or i32 %call.i, 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add10.i = add i32 %13, 402
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10.i, i32 noundef %or.i, i32 noundef 0) #5
  tail call fastcc void @jpeg_v2_5_enable_clock_gating(ptr noundef %handle, i32 noundef %i.03.i) #5
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3.i, align 4
  %arrayidx16.i = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %17, 10
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add17.i, i32 noundef 0) #5
  %or20.i = or i32 %call18.i, 1
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.i, align 4
  %arrayidx24.i = getelementptr i32, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24.i, align 4
  %add25.i = add i32 %21, 10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add25.i, i32 noundef %or20.i, i32 noundef 0) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %22 = ptrtoint ptr %jpeg.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %jpeg.i, align 8
  %conv.i = zext i8 %23 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then5_crit_edge

for.inc.i.if.then5_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.else:                                          ; preds = %if.end
  br i1 %cmp2.not.i, label %if.else.if.then5_crit_edge, label %for.body.lr.ph.i18

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

for.body.lr.ph.i18:                               ; preds = %if.else
  %harvest_config.i17 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 3
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %gb_addr_config.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 1, i32 23
  br label %for.body.i22

for.body.i22:                                     ; preds = %for.inc.i28.for.body.i22_crit_edge, %for.body.lr.ph.i18
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i18 ], [ %inc.i25, %for.inc.i28.for.body.i22_crit_edge ]
  %24 = ptrtoint ptr %harvest_config.i17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %harvest_config.i17, align 4
  %shl.i19 = shl nuw i32 1, %i.05.i
  %and.i20 = and i32 %25, %shl.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.end.i, label %for.body.i22.for.inc.i28_crit_edge

for.body.i22.for.inc.i28_crit_edge:               ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i28

if.end.i:                                         ; preds = %for.body.i22
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 %i.05.i
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16, i32 %i.05.i
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i, align 4
  %add.i23 = add i32 %29, 10
  %call.i24 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i23, i32 noundef 0) #5
  %and7.i = and i32 %call.i24, -2
  %30 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx5.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11.i, align 4
  %add12.i = add i32 %33, 10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add12.i, i32 noundef %and7.i, i32 noundef 0) #5
  tail call fastcc void @jpeg_v2_5_disable_clock_gating(ptr noundef %handle, i32 noundef %i.05.i) #5
  %34 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt.i, align 8
  %and13.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %36 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs.i, align 4
  %tobool15.not.i = icmp eq ptr %37, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true16.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool20.not.i = icmp eq ptr %39, null
  br i1 %tobool20.not.i, label %land.lhs.true16.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true16.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx5.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add29.i = add i32 %43, 163
  %44 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gb_addr_config.i, align 4
  tail call void %39(ptr noundef %handle, i32 noundef %add29.i, i32 noundef %45, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true16.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end.i.cond.false.i_crit_edge
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx5.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add35.i = add i32 %49, 163
  %50 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add35.i, i32 noundef %51, i32 noundef 0) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %52 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %virt.i, align 8
  %and41.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %cond.end.i.cond.false67.i_crit_edge, label %land.lhs.true43.i

cond.end.i.cond.false67.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false67.i

land.lhs.true43.i:                                ; preds = %cond.end.i
  %54 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %funcs.i, align 4
  %tobool47.not.i = icmp eq ptr %55, null
  br i1 %tobool47.not.i, label %land.lhs.true43.i.cond.false67.i_crit_edge, label %land.lhs.true48.i

land.lhs.true43.i.cond.false67.i_crit_edge:       ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false67.i

land.lhs.true48.i:                                ; preds = %land.lhs.true43.i
  %sriov_wreg52.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %sriov_wreg52.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sriov_wreg52.i, align 4
  %tobool53.not.i = icmp eq ptr %57, null
  br i1 %tobool53.not.i, label %land.lhs.true48.i.cond.false67.i_crit_edge, label %cond.true54.i

land.lhs.true48.i.cond.false67.i_crit_edge:       ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false67.i

cond.true54.i:                                    ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx5.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add63.i = add i32 %61, 166
  %62 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gb_addr_config.i, align 4
  tail call void %57(ptr noundef %handle, i32 noundef %add63.i, i32 noundef %63, i32 noundef 0, i32 noundef 16) #5
  br label %do.body77.i

cond.false67.i:                                   ; preds = %land.lhs.true48.i.cond.false67.i_crit_edge, %land.lhs.true43.i.cond.false67.i_crit_edge, %cond.end.i.cond.false67.i_crit_edge
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx5.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add72.i = add i32 %67, 166
  %68 = ptrtoint ptr %gb_addr_config.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %gb_addr_config.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add72.i, i32 noundef %69, i32 noundef 0) #5
  br label %do.body77.i

do.body77.i:                                      ; preds = %cond.false67.i, %cond.true54.i
  %70 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx5.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add83.i = add i32 %73, 402
  %call84.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add83.i, i32 noundef 0) #5
  %and85.i = and i32 %call84.i, -2
  %74 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx5.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add91.i = add i32 %77, 402
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add91.i, i32 noundef %and85.i, i32 noundef 0) #5
  %78 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx5.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add100.i = add i32 %81, 449
  %call101.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add100.i, i32 noundef 0) #5
  %or103.i = or i32 %call101.i, 2
  %82 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx5.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add108.i = add i32 %85, 449
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add108.i, i32 noundef %or103.i, i32 noundef 0) #5
  %86 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %virt.i, align 8
  %and113.i = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %do.body77.i.cond.false136.i_crit_edge, label %land.lhs.true115.i

do.body77.i.cond.false136.i_crit_edge:            ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false136.i

land.lhs.true115.i:                               ; preds = %do.body77.i
  %88 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %funcs.i, align 4
  %tobool119.not.i = icmp eq ptr %89, null
  br i1 %tobool119.not.i, label %land.lhs.true115.i.cond.false136.i_crit_edge, label %land.lhs.true120.i

land.lhs.true115.i.cond.false136.i_crit_edge:     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false136.i

land.lhs.true120.i:                               ; preds = %land.lhs.true115.i
  %sriov_wreg124.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %sriov_wreg124.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sriov_wreg124.i, align 4
  %tobool125.not.i = icmp eq ptr %91, null
  br i1 %tobool125.not.i, label %land.lhs.true120.i.cond.false136.i_crit_edge, label %cond.true126.i

land.lhs.true120.i.cond.false136.i_crit_edge:     ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false136.i

cond.true126.i:                                   ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx5.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %add135.i = add i32 %95, 336
  tail call void %91(ptr noundef %handle, i32 noundef %add135.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end142.i

cond.false136.i:                                  ; preds = %land.lhs.true120.i.cond.false136.i_crit_edge, %land.lhs.true115.i.cond.false136.i_crit_edge, %do.body77.i.cond.false136.i_crit_edge
  %96 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx5.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %add141.i = add i32 %99, 336
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add141.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end142.i

cond.end142.i:                                    ; preds = %cond.false136.i, %cond.true126.i
  %100 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %virt.i, align 8
  %and145.i = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i)
  %tobool146.not.i = icmp eq i32 %and145.i, 0
  br i1 %tobool146.not.i, label %cond.end142.i.cond.false168.i_crit_edge, label %land.lhs.true147.i

cond.end142.i.cond.false168.i_crit_edge:          ; preds = %cond.end142.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false168.i

land.lhs.true147.i:                               ; preds = %cond.end142.i
  %102 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %funcs.i, align 4
  %tobool151.not.i = icmp eq ptr %103, null
  br i1 %tobool151.not.i, label %land.lhs.true147.i.cond.false168.i_crit_edge, label %land.lhs.true152.i

land.lhs.true147.i.cond.false168.i_crit_edge:     ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false168.i

land.lhs.true152.i:                               ; preds = %land.lhs.true147.i
  %sriov_wreg156.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %103, i32 0, i32 12
  %104 = ptrtoint ptr %sriov_wreg156.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sriov_wreg156.i, align 4
  %tobool157.not.i = icmp eq ptr %105, null
  br i1 %tobool157.not.i, label %land.lhs.true152.i.cond.false168.i_crit_edge, label %cond.true158.i

land.lhs.true152.i.cond.false168.i_crit_edge:     ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false168.i

cond.true158.i:                                   ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx5.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add167.i = add i32 %109, 257
  tail call void %105(ptr noundef %handle, i32 noundef %add167.i, i32 noundef 3, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end174.i

cond.false168.i:                                  ; preds = %land.lhs.true152.i.cond.false168.i_crit_edge, %land.lhs.true147.i.cond.false168.i_crit_edge, %cond.end142.i.cond.false168.i_crit_edge
  %110 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx5.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %add173.i = add i32 %113, 257
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add173.i, i32 noundef 3, i32 noundef 0) #5
  br label %cond.end174.i

cond.end174.i:                                    ; preds = %cond.false168.i, %cond.true158.i
  %114 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %virt.i, align 8
  %and177.i = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177.i)
  %tobool178.not.i = icmp eq i32 %and177.i, 0
  br i1 %tobool178.not.i, label %cond.end174.i.cond.false202.i_crit_edge, label %land.lhs.true179.i

cond.end174.i.cond.false202.i_crit_edge:          ; preds = %cond.end174.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false202.i

land.lhs.true179.i:                               ; preds = %cond.end174.i
  %116 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %funcs.i, align 4
  %tobool183.not.i = icmp eq ptr %117, null
  br i1 %tobool183.not.i, label %land.lhs.true179.i.cond.false202.i_crit_edge, label %land.lhs.true184.i

land.lhs.true179.i.cond.false202.i_crit_edge:     ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false202.i

land.lhs.true184.i:                               ; preds = %land.lhs.true179.i
  %sriov_wreg188.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %117, i32 0, i32 12
  %118 = ptrtoint ptr %sriov_wreg188.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sriov_wreg188.i, align 4
  %tobool189.not.i = icmp eq ptr %119, null
  br i1 %tobool189.not.i, label %land.lhs.true184.i.cond.false202.i_crit_edge, label %cond.true190.i

land.lhs.true184.i.cond.false202.i_crit_edge:     ; preds = %land.lhs.true184.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false202.i

cond.true190.i:                                   ; preds = %land.lhs.true184.i
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx5.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %add199.i = add i32 %123, 358
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx.i, i32 0, i32 12
  %124 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %gpu_addr.i, align 8
  %conv201.i = trunc i64 %125 to i32
  tail call void %119(ptr noundef %handle, i32 noundef %add199.i, i32 noundef %conv201.i, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end211.i

cond.false202.i:                                  ; preds = %land.lhs.true184.i.cond.false202.i_crit_edge, %land.lhs.true179.i.cond.false202.i_crit_edge, %cond.end174.i.cond.false202.i_crit_edge
  %126 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx5.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %add207.i = add i32 %129, 358
  %gpu_addr208.i = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx.i, i32 0, i32 12
  %130 = ptrtoint ptr %gpu_addr208.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %gpu_addr208.i, align 8
  %conv210.i = trunc i64 %131 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add207.i, i32 noundef %conv210.i, i32 noundef 0) #5
  br label %cond.end211.i

cond.end211.i:                                    ; preds = %cond.false202.i, %cond.true190.i
  %132 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %virt.i, align 8
  %and214.i = and i32 %133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.i)
  %tobool215.not.i = icmp eq i32 %and214.i, 0
  br i1 %tobool215.not.i, label %cond.end211.i.cond.false240.i_crit_edge, label %land.lhs.true216.i

cond.end211.i.cond.false240.i_crit_edge:          ; preds = %cond.end211.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false240.i

land.lhs.true216.i:                               ; preds = %cond.end211.i
  %134 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %funcs.i, align 4
  %tobool220.not.i = icmp eq ptr %135, null
  br i1 %tobool220.not.i, label %land.lhs.true216.i.cond.false240.i_crit_edge, label %land.lhs.true221.i

land.lhs.true216.i.cond.false240.i_crit_edge:     ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false240.i

land.lhs.true221.i:                               ; preds = %land.lhs.true216.i
  %sriov_wreg225.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %135, i32 0, i32 12
  %136 = ptrtoint ptr %sriov_wreg225.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sriov_wreg225.i, align 4
  %tobool226.not.i = icmp eq ptr %137, null
  br i1 %tobool226.not.i, label %land.lhs.true221.i.cond.false240.i_crit_edge, label %cond.true227.i

land.lhs.true221.i.cond.false240.i_crit_edge:     ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false240.i

cond.true227.i:                                   ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx5.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %add236.i = add i32 %141, 359
  %gpu_addr237.i = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx.i, i32 0, i32 12
  %142 = ptrtoint ptr %gpu_addr237.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %gpu_addr237.i, align 8
  %shr.i = lshr i64 %143, 32
  %conv239.i = trunc i64 %shr.i to i32
  tail call void %137(ptr noundef %handle, i32 noundef %add236.i, i32 noundef %conv239.i, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end250.i

cond.false240.i:                                  ; preds = %land.lhs.true221.i.cond.false240.i_crit_edge, %land.lhs.true216.i.cond.false240.i_crit_edge, %cond.end211.i.cond.false240.i_crit_edge
  %144 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx5.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  %add245.i = add i32 %147, 359
  %gpu_addr246.i = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx.i, i32 0, i32 12
  %148 = ptrtoint ptr %gpu_addr246.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %gpu_addr246.i, align 8
  %shr247.i = lshr i64 %149, 32
  %conv249.i = trunc i64 %shr247.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add245.i, i32 noundef %conv249.i, i32 noundef 0) #5
  br label %cond.end250.i

cond.end250.i:                                    ; preds = %cond.false240.i, %cond.true227.i
  %150 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %virt.i, align 8
  %and253.i = and i32 %151, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253.i)
  %tobool254.not.i = icmp eq i32 %and253.i, 0
  br i1 %tobool254.not.i, label %cond.end250.i.cond.false276.i_crit_edge, label %land.lhs.true255.i

cond.end250.i.cond.false276.i_crit_edge:          ; preds = %cond.end250.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false276.i

land.lhs.true255.i:                               ; preds = %cond.end250.i
  %152 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %funcs.i, align 4
  %tobool259.not.i = icmp eq ptr %153, null
  br i1 %tobool259.not.i, label %land.lhs.true255.i.cond.false276.i_crit_edge, label %land.lhs.true260.i

land.lhs.true255.i.cond.false276.i_crit_edge:     ; preds = %land.lhs.true255.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false276.i

land.lhs.true260.i:                               ; preds = %land.lhs.true255.i
  %sriov_wreg264.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %153, i32 0, i32 12
  %154 = ptrtoint ptr %sriov_wreg264.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sriov_wreg264.i, align 4
  %tobool265.not.i = icmp eq ptr %155, null
  br i1 %tobool265.not.i, label %land.lhs.true260.i.cond.false276.i_crit_edge, label %cond.true266.i

land.lhs.true260.i.cond.false276.i_crit_edge:     ; preds = %land.lhs.true260.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false276.i

cond.true266.i:                                   ; preds = %land.lhs.true260.i
  call void @__sanitizer_cov_trace_pc() #7
  %156 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx5.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 4
  %add275.i = add i32 %159, 266
  tail call void %155(ptr noundef %handle, i32 noundef %add275.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end282.i

cond.false276.i:                                  ; preds = %land.lhs.true260.i.cond.false276.i_crit_edge, %land.lhs.true255.i.cond.false276.i_crit_edge, %cond.end250.i.cond.false276.i_crit_edge
  %160 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx5.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %add281.i = add i32 %163, 266
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add281.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end282.i

cond.end282.i:                                    ; preds = %cond.false276.i, %cond.true266.i
  %164 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %virt.i, align 8
  %and285.i = and i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285.i)
  %tobool286.not.i = icmp eq i32 %and285.i, 0
  br i1 %tobool286.not.i, label %cond.end282.i.cond.false308.i_crit_edge, label %land.lhs.true287.i

cond.end282.i.cond.false308.i_crit_edge:          ; preds = %cond.end282.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false308.i

land.lhs.true287.i:                               ; preds = %cond.end282.i
  %166 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %funcs.i, align 4
  %tobool291.not.i = icmp eq ptr %167, null
  br i1 %tobool291.not.i, label %land.lhs.true287.i.cond.false308.i_crit_edge, label %land.lhs.true292.i

land.lhs.true287.i.cond.false308.i_crit_edge:     ; preds = %land.lhs.true287.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false308.i

land.lhs.true292.i:                               ; preds = %land.lhs.true287.i
  %sriov_wreg296.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %167, i32 0, i32 12
  %168 = ptrtoint ptr %sriov_wreg296.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sriov_wreg296.i, align 4
  %tobool297.not.i = icmp eq ptr %169, null
  br i1 %tobool297.not.i, label %land.lhs.true292.i.cond.false308.i_crit_edge, label %cond.true298.i

land.lhs.true292.i.cond.false308.i_crit_edge:     ; preds = %land.lhs.true292.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false308.i

cond.true298.i:                                   ; preds = %land.lhs.true292.i
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx5.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %171, align 4
  %add307.i = add i32 %173, 256
  tail call void %169(ptr noundef %handle, i32 noundef %add307.i, i32 noundef 0, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end314.i

cond.false308.i:                                  ; preds = %land.lhs.true292.i.cond.false308.i_crit_edge, %land.lhs.true287.i.cond.false308.i_crit_edge, %cond.end282.i.cond.false308.i_crit_edge
  %174 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx5.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %add313.i = add i32 %177, 256
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add313.i, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end314.i

cond.end314.i:                                    ; preds = %cond.false308.i, %cond.true298.i
  %178 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %virt.i, align 8
  %and317.i = and i32 %179, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317.i)
  %tobool318.not.i = icmp eq i32 %and317.i, 0
  br i1 %tobool318.not.i, label %cond.end314.i.cond.false340.i_crit_edge, label %land.lhs.true319.i

cond.end314.i.cond.false340.i_crit_edge:          ; preds = %cond.end314.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false340.i

land.lhs.true319.i:                               ; preds = %cond.end314.i
  %180 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %funcs.i, align 4
  %tobool323.not.i = icmp eq ptr %181, null
  br i1 %tobool323.not.i, label %land.lhs.true319.i.cond.false340.i_crit_edge, label %land.lhs.true324.i

land.lhs.true319.i.cond.false340.i_crit_edge:     ; preds = %land.lhs.true319.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false340.i

land.lhs.true324.i:                               ; preds = %land.lhs.true319.i
  %sriov_wreg328.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %181, i32 0, i32 12
  %182 = ptrtoint ptr %sriov_wreg328.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sriov_wreg328.i, align 4
  %tobool329.not.i = icmp eq ptr %183, null
  br i1 %tobool329.not.i, label %land.lhs.true324.i.cond.false340.i_crit_edge, label %cond.true330.i

land.lhs.true324.i.cond.false340.i_crit_edge:     ; preds = %land.lhs.true324.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false340.i

cond.true330.i:                                   ; preds = %land.lhs.true324.i
  call void @__sanitizer_cov_trace_pc() #7
  %184 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx5.i, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  %add339.i = add i32 %187, 257
  tail call void %183(ptr noundef %handle, i32 noundef %add339.i, i32 noundef 2, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end346.i

cond.false340.i:                                  ; preds = %land.lhs.true324.i.cond.false340.i_crit_edge, %land.lhs.true319.i.cond.false340.i_crit_edge, %cond.end314.i.cond.false340.i_crit_edge
  %188 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx5.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %add345.i = add i32 %191, 257
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add345.i, i32 noundef 2, i32 noundef 0) #5
  br label %cond.end346.i

cond.end346.i:                                    ; preds = %cond.false340.i, %cond.true330.i
  %192 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %virt.i, align 8
  %and349.i = and i32 %193, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349.i)
  %tobool350.not.i = icmp eq i32 %and349.i, 0
  br i1 %tobool350.not.i, label %cond.end346.i.cond.false372.i_crit_edge, label %land.lhs.true351.i

cond.end346.i.cond.false372.i_crit_edge:          ; preds = %cond.end346.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false372.i

land.lhs.true351.i:                               ; preds = %cond.end346.i
  %194 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %funcs.i, align 4
  %tobool355.not.i = icmp eq ptr %195, null
  br i1 %tobool355.not.i, label %land.lhs.true351.i.cond.false372.i_crit_edge, label %land.lhs.true356.i

land.lhs.true351.i.cond.false372.i_crit_edge:     ; preds = %land.lhs.true351.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false372.i

land.lhs.true356.i:                               ; preds = %land.lhs.true351.i
  %sriov_wreg360.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %195, i32 0, i32 12
  %196 = ptrtoint ptr %sriov_wreg360.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sriov_wreg360.i, align 4
  %tobool361.not.i = icmp eq ptr %197, null
  br i1 %tobool361.not.i, label %land.lhs.true356.i.cond.false372.i_crit_edge, label %cond.true362.i

land.lhs.true356.i.cond.false372.i_crit_edge:     ; preds = %land.lhs.true356.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false372.i

cond.true362.i:                                   ; preds = %land.lhs.true356.i
  call void @__sanitizer_cov_trace_pc() #7
  %198 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx5.i, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 4
  %add371.i = add i32 %201, 275
  %ring_size.i = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx.i, i32 0, i32 9
  %202 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %ring_size.i, align 8
  %div2.i = lshr i32 %203, 2
  tail call void %197(ptr noundef %handle, i32 noundef %add371.i, i32 noundef %div2.i, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end380.i

cond.false372.i:                                  ; preds = %land.lhs.true356.i.cond.false372.i_crit_edge, %land.lhs.true351.i.cond.false372.i_crit_edge, %cond.end346.i.cond.false372.i_crit_edge
  %204 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx5.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 4
  %add377.i = add i32 %207, 275
  %ring_size378.i = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx.i, i32 0, i32 9
  %208 = ptrtoint ptr %ring_size378.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %ring_size378.i, align 8
  %div3791.i = lshr i32 %209, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add377.i, i32 noundef %div3791.i, i32 noundef 0) #5
  br label %cond.end380.i

cond.end380.i:                                    ; preds = %cond.false372.i, %cond.true362.i
  %210 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %virt.i, align 8
  %and383.i = and i32 %211, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383.i)
  %tobool384.not.i = icmp eq i32 %and383.i, 0
  br i1 %tobool384.not.i, label %cond.end380.i.cond.false406.i_crit_edge, label %land.lhs.true385.i

cond.end380.i.cond.false406.i_crit_edge:          ; preds = %cond.end380.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false406.i

land.lhs.true385.i:                               ; preds = %cond.end380.i
  %212 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %funcs.i, align 4
  %tobool389.not.i = icmp eq ptr %213, null
  br i1 %tobool389.not.i, label %land.lhs.true385.i.cond.false406.i_crit_edge, label %land.lhs.true390.i

land.lhs.true385.i.cond.false406.i_crit_edge:     ; preds = %land.lhs.true385.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false406.i

land.lhs.true390.i:                               ; preds = %land.lhs.true385.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %213, i32 0, i32 13
  %214 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool394.not.i = icmp eq ptr %215, null
  br i1 %tobool394.not.i, label %land.lhs.true390.i.cond.false406.i_crit_edge, label %cond.true395.i

land.lhs.true390.i.cond.false406.i_crit_edge:     ; preds = %land.lhs.true390.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false406.i

cond.true395.i:                                   ; preds = %land.lhs.true390.i
  call void @__sanitizer_cov_trace_pc() #7
  %216 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx5.i, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 4
  %add404.i = add i32 %219, 256
  %call405.i = tail call i32 %215(ptr noundef %handle, i32 noundef %add404.i, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end413.i

cond.false406.i:                                  ; preds = %land.lhs.true390.i.cond.false406.i_crit_edge, %land.lhs.true385.i.cond.false406.i_crit_edge, %cond.end380.i.cond.false406.i_crit_edge
  %220 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx5.i, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %221, align 4
  %add411.i = add i32 %223, 256
  %call412.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add411.i, i32 noundef 0) #5
  br label %cond.end413.i

cond.end413.i:                                    ; preds = %cond.false406.i, %cond.true395.i
  %cond.i = phi i32 [ %call405.i, %cond.true395.i ], [ %call412.i, %cond.false406.i ]
  %conv414.i = zext i32 %cond.i to i64
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %arrayidx.i, i32 0, i32 7
  %224 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %conv414.i, ptr %wptr.i, align 8
  br label %for.inc.i28

for.inc.i28:                                      ; preds = %cond.end413.i, %for.body.i22.for.inc.i28_crit_edge
  %inc.i25 = add nuw nsw i32 %i.05.i, 1
  %225 = ptrtoint ptr %jpeg.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %jpeg.i, align 8
  %conv.i26 = zext i8 %226 to i32
  %cmp.i27 = icmp ult i32 %inc.i25, %conv.i26
  br i1 %cmp.i27, label %for.inc.i28.for.body.i22_crit_edge, label %for.inc.i28.if.then5_crit_edge

for.inc.i28.if.then5_crit_edge:                   ; preds = %for.inc.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

for.inc.i28.for.body.i22_crit_edge:               ; preds = %for.inc.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i22

if.then5:                                         ; preds = %for.inc.i28.if.then5_crit_edge, %if.else.if.then5_crit_edge, %for.inc.i.if.then5_crit_edge, %if.then2.if.then5_crit_edge
  %227 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %state, ptr %cur_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jpeg_v2_5_dec_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %8 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %me, align 8
  %arrayidx12 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %9
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 266
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %me16 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %14 = ptrtoint ptr %me16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %me16, align 8
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %15
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add19 = add i32 %19, 266
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call20, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jpeg_v2_5_dec_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true5

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_rreg, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %land.lhs.true5.cond.false_crit_edge, label %cond.true

land.lhs.true5.cond.false_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %16 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %me, align 8
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %17
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add = add i32 %21, 256
  %call = tail call i32 %15(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #5
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true5.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %me19 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %22 = ptrtoint ptr %me19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %me19, align 8
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %23
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx20, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add22 = add i32 %27, 256
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add22, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %if.then
  %retval.0.in = phi i32 [ %9, %if.then ], [ %call, %cond.true ], [ %call23, %cond.false ]
  %retval.0 = zext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v2_5_dec_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %1, i32 noundef %12, i32 noundef %conv5) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true9

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true9:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %land.lhs.true9.cond.false_crit_edge, label %cond.true

land.lhs.true9.cond.false_crit_edge:              ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %20 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %me, align 8
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %21
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx19, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add = add i32 %25, 256
  %wptr21 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %26 = ptrtoint ptr %wptr21 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %wptr21, align 8
  %conv23 = trunc i64 %27 to i32
  tail call void %19(ptr noundef %1, i32 noundef %add, i32 noundef %conv23, i32 noundef 0, i32 noundef 16) #5
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true9.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %me26 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %28 = ptrtoint ptr %me26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %me26, align 8
  %arrayidx27 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 %29
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx27, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add29 = add i32 %33, 256
  %wptr30 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %34 = ptrtoint ptr %wptr30 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr30, align 8
  %conv32 = trunc i64 %35 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add29, i32 noundef %conv32, i32 noundef 0) #5
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v2_6_dec_ring_insert_start(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
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
  store volatile i32 114687, ptr %arrayidx.i, align 4
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
  %cmp.i6 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i6, label %if.then.i7, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit17

if.then.i7:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %amdgpu_ring_write.exit17

amdgpu_ring_write.exit17:                         ; preds = %if.then.i7, %amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i10 = add i64 %18, 1
  store i64 %inc.i10, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i12 = and i32 %20, %21
  %arrayidx.i13 = getelementptr i32, ptr %16, i32 %idxprom.i12
  %22 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 436740, ptr %arrayidx.i13, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i15 = and i64 %25, %24
  store i64 %and3.i15, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i16 = add i32 %27, -1
  store i32 %dec.i16, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i16)
  %cmp.i19 = icmp slt i32 %dec.i16, 1
  br i1 %cmp.i19, label %if.then.i20, label %amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge

amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge: ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit30

if.then.i20:                                      ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %amdgpu_ring_write.exit30

amdgpu_ring_write.exit30:                         ; preds = %if.then.i20, %amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i23 = add i64 %31, 1
  store i64 %inc.i23, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i25 = and i32 %33, %34
  %arrayidx.i26 = getelementptr i32, ptr %29, i32 %idxprom.i25
  %35 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 98304, ptr %arrayidx.i26, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i28 = and i64 %38, %37
  store i64 %and3.i28, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i29 = add i32 %40, -1
  store i32 %dec.i29, ptr %count_dw.i, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %41 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i29)
  %cmp.i32 = icmp slt i32 %dec.i29, 1
  br i1 %cmp.i32, label %if.then.i33, label %amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge

amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge: ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit43

if.then.i33:                                      ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %amdgpu_ring_write.exit43

amdgpu_ring_write.exit43:                         ; preds = %if.then.i33, %amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge
  %mul = shl i32 %42, 1
  %add = add i32 %mul, 14
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, -2147483648
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 4
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr.i, align 8
  %inc.i36 = add i64 %46, 1
  store i64 %inc.i36, ptr %wptr.i, align 8
  %47 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_mask.i, align 8
  %49 = trunc i64 %46 to i32
  %idxprom.i38 = and i32 %48, %49
  %arrayidx.i39 = getelementptr i32, ptr %44, i32 %idxprom.i38
  %50 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %or, ptr %arrayidx.i39, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptr_mask.i, align 8
  %53 = load i64, ptr %wptr.i, align 8
  %and3.i41 = and i64 %53, %52
  store i64 %and3.i41, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 8
  %dec.i42 = add i32 %55, -1
  store i32 %dec.i42, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v2_6_dec_ring_insert_end(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
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
  store volatile i32 114687, ptr %arrayidx.i, align 4
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
  %cmp.i6 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i6, label %if.then.i7, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit17

if.then.i7:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %amdgpu_ring_write.exit17

amdgpu_ring_write.exit17:                         ; preds = %if.then.i7, %amdgpu_ring_write.exit.amdgpu_ring_write.exit17_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i10 = add i64 %18, 1
  store i64 %inc.i10, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i12 = and i32 %20, %21
  %arrayidx.i13 = getelementptr i32, ptr %16, i32 %idxprom.i12
  %22 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 436740, ptr %arrayidx.i13, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i15 = and i64 %25, %24
  store i64 %and3.i15, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i16 = add i32 %27, -1
  store i32 %dec.i16, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i16)
  %cmp.i19 = icmp slt i32 %dec.i16, 1
  br i1 %cmp.i19, label %if.then.i20, label %amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge

amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge: ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit30

if.then.i20:                                      ; preds = %amdgpu_ring_write.exit17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %amdgpu_ring_write.exit30

amdgpu_ring_write.exit30:                         ; preds = %if.then.i20, %amdgpu_ring_write.exit17.amdgpu_ring_write.exit30_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i23 = add i64 %31, 1
  store i64 %inc.i23, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i25 = and i32 %33, %34
  %arrayidx.i26 = getelementptr i32, ptr %29, i32 %idxprom.i25
  %35 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 98304, ptr %arrayidx.i26, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i28 = and i64 %38, %37
  store i64 %and3.i28, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i29 = add i32 %40, -1
  store i32 %dec.i29, ptr %count_dw.i, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %41 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i29)
  %cmp.i32 = icmp slt i32 %dec.i29, 1
  br i1 %cmp.i32, label %if.then.i33, label %amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge

amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge: ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit43

if.then.i33:                                      ; preds = %amdgpu_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %amdgpu_ring_write.exit43

amdgpu_ring_write.exit43:                         ; preds = %if.then.i33, %amdgpu_ring_write.exit30.amdgpu_ring_write.exit43_crit_edge
  %mul = shl i32 %42, 1
  %add = add i32 %mul, 14
  %shl = shl nuw i32 1, %add
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 4
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr.i, align 8
  %inc.i36 = add i64 %46, 1
  store i64 %inc.i36, ptr %wptr.i, align 8
  %47 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_mask.i, align 8
  %49 = trunc i64 %46 to i32
  %idxprom.i38 = and i32 %48, %49
  %arrayidx.i39 = getelementptr i32, ptr %44, i32 %idxprom.i38
  %50 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %shl, ptr %arrayidx.i39, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptr_mask.i, align 8
  %53 = load i64, ptr %wptr.i, align 8
  %and3.i41 = and i64 %53, %52
  store i64 %and3.i41, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 8
  %dec.i42 = add i32 %55, -1
  store i32 %dec.i42, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jpeg_v2_5_set_interrupt_state(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v2_5_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 14, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %1) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %ip_instance.0 = phi i32 [ 1, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #5
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %3 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 153, i32 %4)
  %cond = icmp eq i32 %4, 153
  br i1 %cond, label %sw.bb4, label %sw.default5

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 %ip_instance.0
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %arrayidx) #5
  br label %cleanup

sw.default5:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %5 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_data, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %4, i32 noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default5, %sw.bb4, %sw.default
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_sw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

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
define internal fastcc void @jpeg_v2_5_enable_clock_gating(ptr noundef %adev, i32 noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 480
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 480
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false43_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false43_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false43_crit_edge, label %cond.true33

land.lhs.true28.cond.false43_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false43

cond.true33:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx40, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add42 = add i32 %23, 480
  tail call void %19(ptr noundef %adev, i32 noundef %add42, i32 noundef %or, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end49

cond.false43:                                     ; preds = %land.lhs.true28.cond.false43_crit_edge, %land.lhs.true23.cond.false43_crit_edge, %cond.end.cond.false43_crit_edge
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx46, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add48 = add i32 %27, 480
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48, i32 noundef %or, i32 noundef 0) #5
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false43, %cond.true33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jpeg_v2_5_disable_clock_gating(ptr noundef %adev, i32 noundef %inst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 481
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 481
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48

land.lhs.true28:                                  ; preds = %cond.end
  %funcs31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %19 = ptrtoint ptr %funcs31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs31, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false48_crit_edge, label %land.lhs.true33

land.lhs.true28.cond.false48_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_wreg, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %land.lhs.true33.cond.false48_crit_edge, label %cond.true38

land.lhs.true33.cond.false48_crit_edge:           ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false48

cond.true38:                                      ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx45 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %23 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx45, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add47 = add i32 %26, 481
  tail call void %22(ptr noundef %adev, i32 noundef %add47, i32 noundef %or23, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end54

cond.false48:                                     ; preds = %land.lhs.true33.cond.false48_crit_edge, %land.lhs.true28.cond.false48_crit_edge, %cond.end.cond.false48_crit_edge
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx51, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add53 = add i32 %30, 481
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53, i32 noundef %or23, i32 noundef 0) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false81

land.lhs.true59:                                  ; preds = %cond.end54
  %funcs62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs62, align 4
  %tobool63.not = icmp eq ptr %34, null
  br i1 %tobool63.not, label %land.lhs.true59.cond.false81_crit_edge, label %land.lhs.true64

land.lhs.true59.cond.false81_crit_edge:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false81

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %sriov_rreg68 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg68, align 4
  %tobool69.not = icmp eq ptr %36, null
  br i1 %tobool69.not, label %land.lhs.true64.cond.false81_crit_edge, label %cond.true70

land.lhs.true64.cond.false81_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false81

cond.true70:                                      ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx77 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %37 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx77, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add79 = add i32 %40, 480
  %call80 = tail call i32 %36(ptr noundef %adev, i32 noundef %add79, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end88

cond.false81:                                     ; preds = %land.lhs.true64.cond.false81_crit_edge, %land.lhs.true59.cond.false81_crit_edge, %cond.end54.cond.false81_crit_edge
  %arrayidx84 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %41 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx84, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add86 = add i32 %44, 480
  %call87 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add86, i32 noundef 0) #5
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false81, %cond.true70
  %cond89 = phi i32 [ %call80, %cond.true70 ], [ %call87, %cond.false81 ]
  %and90 = and i32 %cond89, -28
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and93 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %cond.end88.cond.false116_crit_edge, label %land.lhs.true95

cond.end88.cond.false116_crit_edge:               ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116

land.lhs.true95:                                  ; preds = %cond.end88
  %funcs98 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %47 = ptrtoint ptr %funcs98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs98, align 4
  %tobool99.not = icmp eq ptr %48, null
  br i1 %tobool99.not, label %land.lhs.true95.cond.false116_crit_edge, label %land.lhs.true100

land.lhs.true95.cond.false116_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116

land.lhs.true100:                                 ; preds = %land.lhs.true95
  %sriov_wreg104 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %sriov_wreg104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_wreg104, align 4
  %tobool105.not = icmp eq ptr %50, null
  br i1 %tobool105.not, label %land.lhs.true100.cond.false116_crit_edge, label %cond.true106

land.lhs.true100.cond.false116_crit_edge:         ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false116

cond.true106:                                     ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx113 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %51 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx113, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add115 = add i32 %54, 480
  tail call void %50(ptr noundef %adev, i32 noundef %add115, i32 noundef %and90, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end122

cond.false116:                                    ; preds = %land.lhs.true100.cond.false116_crit_edge, %land.lhs.true95.cond.false116_crit_edge, %cond.end88.cond.false116_crit_edge
  %arrayidx119 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %55 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx119, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add121 = add i32 %58, 480
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add121, i32 noundef %and90, i32 noundef 0) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false149

land.lhs.true127:                                 ; preds = %cond.end122
  %funcs130 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %61 = ptrtoint ptr %funcs130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %funcs130, align 4
  %tobool131.not = icmp eq ptr %62, null
  br i1 %tobool131.not, label %land.lhs.true127.cond.false149_crit_edge, label %land.lhs.true132

land.lhs.true127.cond.false149_crit_edge:         ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false149

land.lhs.true132:                                 ; preds = %land.lhs.true127
  %sriov_rreg136 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %sriov_rreg136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sriov_rreg136, align 4
  %tobool137.not = icmp eq ptr %64, null
  br i1 %tobool137.not, label %land.lhs.true132.cond.false149_crit_edge, label %cond.true138

land.lhs.true132.cond.false149_crit_edge:         ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false149

cond.true138:                                     ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx145 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %65 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx145, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add147 = add i32 %68, 481
  %call148 = tail call i32 %64(ptr noundef %adev, i32 noundef %add147, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end156

cond.false149:                                    ; preds = %land.lhs.true132.cond.false149_crit_edge, %land.lhs.true127.cond.false149_crit_edge, %cond.end122.cond.false149_crit_edge
  %arrayidx152 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %69 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx152, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add154 = add i32 %72, 481
  %call155 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add154, i32 noundef 0) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false184

land.lhs.true163:                                 ; preds = %cond.end156
  %funcs166 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %75 = ptrtoint ptr %funcs166 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %funcs166, align 4
  %tobool167.not = icmp eq ptr %76, null
  br i1 %tobool167.not, label %land.lhs.true163.cond.false184_crit_edge, label %land.lhs.true168

land.lhs.true163.cond.false184_crit_edge:         ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false184

land.lhs.true168:                                 ; preds = %land.lhs.true163
  %sriov_wreg172 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %sriov_wreg172 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sriov_wreg172, align 4
  %tobool173.not = icmp eq ptr %78, null
  br i1 %tobool173.not, label %land.lhs.true168.cond.false184_crit_edge, label %cond.true174

land.lhs.true168.cond.false184_crit_edge:         ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false184

cond.true174:                                     ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx181 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %79 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx181, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add183 = add i32 %82, 481
  tail call void %78(ptr noundef %adev, i32 noundef %add183, i32 noundef %and158, i32 noundef 0, i32 noundef 16) #5
  br label %cond.end190

cond.false184:                                    ; preds = %land.lhs.true168.cond.false184_crit_edge, %land.lhs.true163.cond.false184_crit_edge, %cond.end156.cond.false184_crit_edge
  %arrayidx187 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16, i32 %inst
  %83 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx187, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add189 = add i32 %86, 481
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add189, i32 noundef %and158, i32 noundef 0) #5
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false184, %cond.true174
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @jpeg_v2_5_ip_block, !1, !"jpeg_v2_5_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 716, i32 38}
!2 = !{ptr @jpeg_v2_6_ip_block, !3, !"jpeg_v2_6_ip_block", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 725, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 583, i32 10}
!6 = !{ptr @jpeg_v2_5_ip_funcs, !7, !"jpeg_v2_5_ip_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 582, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 694, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @jpeg_v2_5_set_dec_ring_funcs._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @jpeg_v2_5_set_dec_ring_funcs._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @jpeg_v2_5_dec_ring_vm_funcs, !15, !"jpeg_v2_5_dec_ring_vm_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 622, i32 39}
!16 = !{ptr @jpeg_v2_6_dec_ring_vm_funcs, !17, !"jpeg_v2_6_dec_ring_vm_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 652, i32 39}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!20 = !{ptr @jpeg_v2_5_irq_funcs, !21, !"jpeg_v2_5_irq_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 698, i32 42}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 563, i32 3}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 567, i32 2}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 574, i32 3}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 116, i32 23}
!30 = !{ptr @amdgpu_ih_clientid_jpeg, !31, !"amdgpu_ih_clientid_jpeg", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 43, i32 12}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 175, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @jpeg_v2_5_hw_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @jpeg_v2_5_hw_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 488, i32 9}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @jpeg_v2_5_wait_for_idle._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @jpeg_v2_5_wait_for_idle._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 603, i32 10}
!45 = !{ptr @jpeg_v2_6_ip_funcs, !46, !"jpeg_v2_6_ip_funcs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c", i32 602, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
