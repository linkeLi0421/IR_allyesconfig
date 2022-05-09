; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_buffer_funcs = type { i32, i32, ptr, i32, i32, ptr }
%struct.amdgpu_vm_pte_funcs = type { i32, ptr, ptr, ptr }
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
%struct.sdma_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32 }
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
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@__UNIQUE_ID_firmware390 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/tonga_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware391 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/tonga_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware392 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/carrizo_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware393 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/carrizo_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware394 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/fiji_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware395 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/fiji_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware396 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/stoney_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware397 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/polaris10_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware398 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/polaris10_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware399 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/polaris11_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware400 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/polaris11_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware401 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/polaris12_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware402 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/polaris12_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware403 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vegam_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware404 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/vegam_sdma1.bin\00", section ".modinfo", align 1
@sdma_v3_0_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @sdma_v3_0_early_init, ptr null, ptr @sdma_v3_0_sw_init, ptr @sdma_v3_0_sw_fini, ptr null, ptr @sdma_v3_0_hw_init, ptr @sdma_v3_0_hw_fini, ptr null, ptr @sdma_v3_0_suspend, ptr @sdma_v3_0_resume, ptr @sdma_v3_0_is_idle, ptr @sdma_v3_0_wait_for_idle, ptr @sdma_v3_0_check_soft_reset, ptr @sdma_v3_0_pre_soft_reset, ptr @sdma_v3_0_soft_reset, ptr @sdma_v3_0_post_soft_reset, ptr @sdma_v3_0_set_clockgating_state, ptr @sdma_v3_0_set_powergating_state, ptr @sdma_v3_0_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@sdma_v3_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 7, i32 3, i32 0, i32 0, ptr @sdma_v3_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@sdma_v3_1_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 7, i32 3, i32 1, i32 0, ptr @sdma_v3_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma_v3_0\00", [22 x i8] zeroinitializer }, align 32
@sdma_v3_0_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 0, i8 0, i8 0, i32 0, i32 0, ptr @sdma_v3_0_ring_get_rptr, ptr @sdma_v3_0_ring_get_wptr, ptr @sdma_v3_0_ring_set_wptr, ptr null, ptr null, i32 60, i32 13, ptr @sdma_v3_0_ring_emit_ib, ptr @sdma_v3_0_ring_emit_fence, ptr @sdma_v3_0_ring_emit_pipeline_sync, ptr @sdma_v3_0_ring_emit_vm_flush, ptr @sdma_v3_0_ring_emit_hdp_flush, ptr null, ptr @sdma_v3_0_ring_test_ring, ptr @sdma_v3_0_ring_test_ib, ptr @sdma_v3_0_ring_insert_nop, ptr null, ptr null, ptr @sdma_v3_0_ring_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdma_v3_0_ring_emit_wreg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sdma_offsets = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 512], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdma_v3_0_buffer_funcs = internal constant { %struct.amdgpu_buffer_funcs, [40 x i8] } { %struct.amdgpu_buffer_funcs { i32 4194272, i32 7, ptr @sdma_v3_0_emit_copy_buffer, i32 4194272, i32 5, ptr @sdma_v3_0_emit_fill_buffer }, [40 x i8] zeroinitializer }, align 32
@sdma_v3_0_vm_pte_funcs = internal constant { %struct.amdgpu_vm_pte_funcs, [16 x i8] } { %struct.amdgpu_vm_pte_funcs { i32 7, ptr @sdma_v3_0_vm_copy_pte, ptr @sdma_v3_0_vm_write_pte, ptr @sdma_v3_0_vm_set_pte_pde }, [16 x i8] zeroinitializer }, align 32
@sdma_v3_0_trap_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @sdma_v3_0_set_trap_irq_state, ptr @sdma_v3_0_process_trap_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v3_0_illegal_inst_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @sdma_v3_0_process_illegal_inst_irq }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: SDMA trap\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Illegal instruction in SDMA command stream\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to load sdma firmware!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdma%d\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tonga\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fiji\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"polaris10\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"polaris11\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"polaris12\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vegam\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"carrizo\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stoney\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu/%s_sdma.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu/%s_sdma1.bin\00", [44 x i8] zeroinitializer }, align 32
@sdma_v3_0_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013amdgpu: sdma_v3_0: Failed to load firmware \22%s\22\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdma_v3_0_init_microcode\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c\00", [57 x i8] zeroinitializer }, align 32
@sdma_v3_0_init_microcode._entry_ptr = internal global ptr @sdma_v3_0_init_microcode._entry, section ".printk_index", align 4
@fiji_mgcg_cgcg_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [40 x i8] zeroinitializer }, align 32
@golden_settings_fiji_a10 = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 13317, i32 -57606137, i32 8454151, i32 13450, i32 -2146500335, i32 256, i32 13578, i32 -2146500335, i32 256, i32 13706, i32 -2146500335, i32 256, i32 13829, i32 -57606137, i32 8454151, i32 13962, i32 -2146500335, i32 256, i32 14090, i32 -2146500335, i32 256, i32 14218, i32 -2146500335, i32 256], [32 x i8] zeroinitializer }, align 32
@tonga_mgcg_cgcg_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [40 x i8] zeroinitializer }, align 32
@golden_settings_tonga_a11 = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 13317, i32 -57606137, i32 8454151, i32 13315, i32 -16773121, i32 0, i32 13450, i32 -2146500335, i32 256, i32 13578, i32 -2146500335, i32 256, i32 13706, i32 -2146500335, i32 256, i32 13829, i32 -57606137, i32 8454151, i32 13827, i32 -16773121, i32 0, i32 13962, i32 -2146500335, i32 256, i32 14090, i32 -2146500335, i32 256, i32 14218, i32 -2146500335, i32 256], [40 x i8] zeroinitializer }, align 32
@golden_settings_polaris11_a11 = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 13317, i32 -57606137, i32 8454151, i32 13315, i32 -16773121, i32 0, i32 13450, i32 -2146500335, i32 256, i32 13578, i32 -2146500335, i32 256, i32 13706, i32 -2146500335, i32 256, i32 13829, i32 -57606137, i32 8454151, i32 13827, i32 -16773121, i32 0, i32 13962, i32 -2146500335, i32 256, i32 14090, i32 -2146500335, i32 256, i32 14218, i32 -2146500335, i32 256], [40 x i8] zeroinitializer }, align 32
@golden_settings_polaris10_a11 = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 13317, i32 -57606137, i32 8454151, i32 13315, i32 -16773121, i32 0, i32 13450, i32 -2146500335, i32 256, i32 13578, i32 -2146500335, i32 256, i32 13706, i32 -2146500335, i32 256, i32 13829, i32 -57606137, i32 8454151, i32 13827, i32 -16773121, i32 0, i32 13962, i32 -2146500335, i32 256, i32 14090, i32 -2146500335, i32 256, i32 14218, i32 -2146500335, i32 256], [40 x i8] zeroinitializer }, align 32
@cz_mgcg_cgcg_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 13315, i32 -16773136, i32 256, i32 13827, i32 -16773136, i32 256], [40 x i8] zeroinitializer }, align 32
@cz_golden_settings_a11 = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 13317, i32 -57606137, i32 8454151, i32 13315, i32 -16773121, i32 0, i32 13450, i32 256, i32 256, i32 13314, i32 2048, i32 247808, i32 13578, i32 256, i32 256, i32 13706, i32 256, i32 256, i32 13829, i32 -57606137, i32 8454151, i32 13827, i32 -16773121, i32 0, i32 13962, i32 256, i32 256, i32 13826, i32 2048, i32 247808, i32 14090, i32 256, i32 256, i32 14218, i32 256, i32 256], [48 x i8] zeroinitializer }, align 32
@stoney_mgcg_cgcg_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 13315, i32 -1, i32 256], [20 x i8] zeroinitializer }, align 32
@stoney_golden_settings_a11 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 13450, i32 256, i32 256, i32 13314, i32 2048, i32 247808, i32 13578, i32 256, i32 256, i32 13706, i32 256, i32 256], [48 x i8] zeroinitializer }, align 32
@amdgpu_sdma_phase_quantum = external dso_local local_unnamed_addr global i32, align 4
@sdma_v3_0_ctx_switch_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"clamping sdma_phase_quantum to %uK clock cycles\0A\00", [47 x i8] zeroinitializer }, align 32
@sdma_v3_0_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.19, i32 1326, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: SRBM_SOFT_RESET=0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdma_v3_0_soft_reset\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdma_v3_0_soft_reset._entry_ptr = internal global ptr @sdma_v3_0_soft_reset._entry, section ".printk_index", align 4
@switch.table.sdma_v3_0_sw_init = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.13, ptr @.str.14, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"sdma_v3_0_ip_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1557, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"sdma_v3_0_ip_block\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1718, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"sdma_v3_1_ip_block\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1727, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1558, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"sdma_v3_0_ring_funcs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1578, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"sdma_offsets\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 74, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 314, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"sdma_v3_0_buffer_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1682, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"sdma_v3_0_vm_pte_funcs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1698, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"sdma_v3_0_trap_irq_funcs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1615, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant [33 x i8] c"sdma_v3_0_illegal_inst_irq_funcs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1620, i32 42 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1397, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1435, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1148, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1162, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 277, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 281, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 284, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 287, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 290, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 293, i32 15 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 296, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 299, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 302, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 309, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 311, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 334, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"fiji_mgcg_cgcg_init\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 112, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"golden_settings_fiji_a10\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 100, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"tonga_mgcg_cgcg_init\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 94, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"golden_settings_tonga_a11\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 80, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"golden_settings_polaris11_a11\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 118, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"golden_settings_polaris10_a11\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 132, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"cz_mgcg_cgcg_init\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 162, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"cz_golden_settings_a11\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 146, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant [22 x i8] c"stoney_mgcg_cgcg_init\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 176, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"stoney_golden_settings_a11\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 168, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 578, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1326, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [31 x i8] c"switch.table.sdma_v3_0_sw_init\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_firmware390, ptr @__UNIQUE_ID_firmware391, ptr @__UNIQUE_ID_firmware392, ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_firmware394, ptr @__UNIQUE_ID_firmware395, ptr @__UNIQUE_ID_firmware396, ptr @__UNIQUE_ID_firmware397, ptr @__UNIQUE_ID_firmware398, ptr @__UNIQUE_ID_firmware399, ptr @__UNIQUE_ID_firmware400, ptr @__UNIQUE_ID_firmware401, ptr @__UNIQUE_ID_firmware402, ptr @__UNIQUE_ID_firmware403, ptr @__UNIQUE_ID_firmware404, ptr @sdma_v3_0_init_microcode._entry, ptr @sdma_v3_0_init_microcode._entry_ptr, ptr @sdma_v3_0_soft_reset._entry, ptr @sdma_v3_0_soft_reset._entry_ptr, ptr @sdma_v3_0_ip_funcs, ptr @sdma_v3_0_ip_block, ptr @sdma_v3_1_ip_block, ptr @.str, ptr @sdma_v3_0_ring_funcs, ptr @sdma_offsets, ptr @.str.1, ptr @sdma_v3_0_buffer_funcs, ptr @sdma_v3_0_vm_pte_funcs, ptr @sdma_v3_0_trap_irq_funcs, ptr @sdma_v3_0_illegal_inst_irq_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @fiji_mgcg_cgcg_init, ptr @golden_settings_fiji_a10, ptr @tonga_mgcg_cgcg_init, ptr @golden_settings_tonga_a11, ptr @golden_settings_polaris11_a11, ptr @golden_settings_polaris10_a11, ptr @cz_mgcg_cgcg_init, ptr @cz_golden_settings_a11, ptr @stoney_mgcg_cgcg_init, ptr @stoney_golden_settings_a11, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.sdma_v3_0_sw_init], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_1_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_offsets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_buffer_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_vm_pte_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_trap_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_illegal_inst_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiji_mgcg_cgcg_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_fiji_a10 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tonga_mgcg_cgcg_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_tonga_a11 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_polaris11_a11 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_polaris10_a11 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_mgcg_cgcg_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cz_golden_settings_a11 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stoney_mgcg_cgcg_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stoney_golden_settings_a11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v3_0_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v3_0_sw_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cond = icmp eq i32 %1, 14
  %spec.select = select i1 %cond, i32 1, i32 2
  %2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.013.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %funcs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.013.i, i32 3, i32 1
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sdma_v3_0_ring_funcs, ptr %funcs.i, align 4
  %me.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.013.i, i32 3, i32 16
  %5 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.013.i, ptr %me.i, align 8
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %sdma_v3_0_set_ring_funcs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sdma_v3_0_set_ring_funcs.exit:                    ; preds = %for.body.i
  %buffer_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 3
  %8 = ptrtoint ptr %buffer_funcs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sdma_v3_0_buffer_funcs, ptr %buffer_funcs.i, align 8
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 3
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  %9 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ring.i, ptr %buffer_funcs_ring.i, align 4
  %vm_pte_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 11
  %10 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sdma_v3_0_vm_pte_funcs, ptr %vm_pte_funcs.i, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15.not.i = icmp eq i32 %12, 0
  br i1 %cmp15.not.i, label %sdma_v3_0_set_ring_funcs.exit.sdma_v3_0_set_vm_pte_funcs.exit_crit_edge, label %for.body.lr.ph.i11

sdma_v3_0_set_ring_funcs.exit.sdma_v3_0_set_vm_pte_funcs.exit_crit_edge: ; preds = %sdma_v3_0_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_set_vm_pte_funcs.exit

for.body.lr.ph.i11:                               ; preds = %sdma_v3_0_set_ring_funcs.exit
  %sdma.i10 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.body.i14.for.body.i14_crit_edge, %for.body.lr.ph.i11
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i11 ], [ %inc.i12, %for.body.i14.for.body.i14_crit_edge ]
  %sched.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i10, i32 0, i32 %i.016.i, i32 3, i32 3
  %arrayidx3.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 12, i32 %i.016.i
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sched.i, ptr %arrayidx3.i, align 4
  %inc.i12 = add nuw i32 %i.016.i, 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  %cmp.i13 = icmp ult i32 %inc.i12, %15
  br i1 %cmp.i13, label %for.body.i14.for.body.i14_crit_edge, label %for.body.i14.sdma_v3_0_set_vm_pte_funcs.exit_crit_edge

for.body.i14.sdma_v3_0_set_vm_pte_funcs.exit_crit_edge: ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_set_vm_pte_funcs.exit

for.body.i14.for.body.i14_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i14

sdma_v3_0_set_vm_pte_funcs.exit:                  ; preds = %for.body.i14.sdma_v3_0_set_vm_pte_funcs.exit_crit_edge, %sdma_v3_0_set_ring_funcs.exit.sdma_v3_0_set_vm_pte_funcs.exit_crit_edge
  %.lcssa.i = phi i32 [ 0, %sdma_v3_0_set_ring_funcs.exit.sdma_v3_0_set_vm_pte_funcs.exit_crit_edge ], [ %15, %for.body.i14.sdma_v3_0_set_vm_pte_funcs.exit_crit_edge ]
  %vm_pte_num_scheds.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 13
  %16 = ptrtoint ptr %vm_pte_num_scheds.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.lcssa.i, ptr %vm_pte_num_scheds.i, align 4
  %trap_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %17 = ptrtoint ptr %trap_irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %trap_irq.i, align 8
  %funcs.i15 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1, i32 2
  %18 = ptrtoint ptr %funcs.i15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sdma_v3_0_trap_irq_funcs, ptr %funcs.i15, align 8
  %funcs4.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 2, i32 2
  %19 = ptrtoint ptr %funcs4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sdma_v3_0_illegal_inst_irq_funcs, ptr %funcs4.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %trap_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 224, ptr noundef %trap_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %illegal_inst_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 2
  %call2 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 241, ptr noundef %illegal_inst_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call8 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 247, ptr noundef %illegal_inst_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #12
  %0 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #12
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %1 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asic_type.i, align 8
  %switch.tableidx = add i32 %2, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 8
  br i1 %3, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

switch.lookup:                                    ; preds = %if.end11
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.sdma_v3_0_sw_init, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %5 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp129.i = icmp sgt i32 %6, 0
  br i1 %cmp129.i, label %for.body.lr.ph.i, label %switch.lookup.sdma_v3_0_init_microcode.exit.thread76_crit_edge

switch.lookup.sdma_v3_0_init_microcode.exit.thread76_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_init_microcode.exit.thread76

for.body.lr.ph.i:                                 ; preds = %switch.lookup
  %firmware.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112
  %fw_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end47.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0130.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end47.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0130.i)
  %cmp11.i = icmp eq i32 %i.0130.i, 0
  %.str.15..str.16.i = select i1 %cmp11.i, ptr @.str.15, ptr @.str.16
  %call13.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull %.str.15..str.16.i, ptr noundef nonnull %switch.load) #12
  %arrayidx.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0130.i
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 8
  %call16.i = call i32 @request_firmware(ptr noundef %arrayidx.i, ptr noundef nonnull %fw_name.i, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.end18.i, label %for.body.i.do.end64.i_crit_edge

for.body.i.do.end64.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64.i

if.end18.i:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 8
  %call23.i = call i32 @amdgpu_ucode_validate(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end18.i.do.end64.i_crit_edge

if.end18.i.do.end64.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64.i

if.end26.i:                                       ; preds = %if.end18.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 8
  %data.i = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %ucode_version.i = getelementptr inbounds %struct.common_firmware_header, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ucode_version.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ucode_version.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #12
  %fw_version.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0130.i, i32 1
  %18 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fw_version.i, align 4
  %ucode_feature_version.i = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %ucode_feature_version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ucode_feature_version.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #12
  %feature_version.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0130.i, i32 2
  %22 = ptrtoint ptr %feature_version.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %feature_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %21)
  %cmp42.i = icmp ugt i32 %21, 19
  br i1 %cmp42.i, label %if.then43.i, label %if.end26.i.if.end47.i_crit_edge

if.end26.i.if.end47.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then43.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %burst_nop.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0130.i, i32 5
  %23 = ptrtoint ptr %burst_nop.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %burst_nop.i, align 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then43.i, %if.end26.i.if.end47.i_crit_edge
  %arrayidx48.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware.i, i32 0, i32 %i.0130.i
  %24 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.0130.i, ptr %arrayidx48.i, align 8
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 8
  %fw54.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware.i, i32 0, i32 %i.0130.i, i32 1
  %27 = ptrtoint ptr %fw54.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %fw54.i, align 4
  %data56.i = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %data56.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data56.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ucode_size_bytes.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #12
  %add57.i = add i32 %32, 4095
  %and.i = and i32 %add57.i, -4096
  %33 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_size.i, align 8
  %add59.i = add i32 %and.i, %34
  store i32 %add59.i, ptr %fw_size.i, align 8
  %inc.i = add nuw nsw i32 %i.0130.i, 1
  %35 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %36
  br i1 %cmp.i, label %if.end47.i.for.body.i_crit_edge, label %if.end47.i.sdma_v3_0_init_microcode.exit.thread76_crit_edge

if.end47.i.sdma_v3_0_init_microcode.exit.thread76_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_init_microcode.exit.thread76

if.end47.i.for.body.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end64.i:                                       ; preds = %if.end18.i.do.end64.i_crit_edge, %for.body.i.do.end64.i_crit_edge
  %err.1.ph.i = phi i32 [ %call23.i, %if.end18.i.do.end64.i_crit_edge ], [ %call16.i, %for.body.i.do.end64.i_crit_edge ]
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %fw_name.i) #15
  %37 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp70132.i = icmp sgt i32 %38, 0
  br i1 %cmp70132.i, label %do.end64.i.for.body71.i_crit_edge, label %sdma_v3_0_init_microcode.exit.thread

do.end64.i.for.body71.i_crit_edge:                ; preds = %do.end64.i
  br label %for.body71.i

sdma_v3_0_init_microcode.exit.thread:             ; preds = %do.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #12
  br label %if.then14

for.body71.i:                                     ; preds = %for.body71.i.for.body71.i_crit_edge, %do.end64.i.for.body71.i_crit_edge
  %i.1133.i = phi i32 [ %inc81.i, %for.body71.i.for.body71.i_crit_edge ], [ 0, %do.end64.i.for.body71.i_crit_edge ]
  %arrayidx74.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.1133.i
  %39 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx74.i, align 8
  call void @release_firmware(ptr noundef %40) #12
  %41 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx74.i, align 8
  %inc81.i = add nuw nsw i32 %i.1133.i, 1
  %42 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_instances.i, align 4
  %cmp70.i = icmp slt i32 %inc81.i, %43
  br i1 %cmp70.i, label %for.body71.i.for.body71.i_crit_edge, label %sdma_v3_0_init_microcode.exit

for.body71.i.for.body71.i_crit_edge:              ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71.i

sdma_v3_0_init_microcode.exit.thread76:           ; preds = %if.end47.i.sdma_v3_0_init_microcode.exit.thread76_crit_edge, %switch.lookup.sdma_v3_0_init_microcode.exit.thread76_crit_edge
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #12
  br label %for.cond.preheader

sdma_v3_0_init_microcode.exit:                    ; preds = %for.body71.i
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.ph.i)
  %tobool13.not = icmp eq i32 %err.1.ph.i, 0
  br i1 %tobool13.not, label %sdma_v3_0_init_microcode.exit.for.cond.preheader_crit_edge, label %sdma_v3_0_init_microcode.exit.if.then14_crit_edge

sdma_v3_0_init_microcode.exit.if.then14_crit_edge: ; preds = %sdma_v3_0_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

sdma_v3_0_init_microcode.exit.for.cond.preheader_crit_edge: ; preds = %sdma_v3_0_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sdma_v3_0_init_microcode.exit.for.cond.preheader_crit_edge, %sdma_v3_0_init_microcode.exit.thread76
  %44 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp71 = icmp sgt i32 %45, 0
  br i1 %cmp71, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  br label %for.body

if.then14:                                        ; preds = %sdma_v3_0_init_microcode.exit.if.then14_crit_edge, %sdma_v3_0_init_microcode.exit.thread
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #12
  br label %cleanup

for.cond:                                         ; preds = %if.end23
  %inc = add nuw nsw i32 %i.072, 1
  %46 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_instances.i, align 4
  %cmp = icmp slt i32 %inc, %47
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %ring18 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.072, i32 3
  %ring_obj = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.072, i32 3, i32 4
  %48 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %ring_obj, align 8
  %49 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %virt, align 8
  %and = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %use_doorbell = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.072, i32 3, i32 24
  %51 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %use_doorbell, align 4
  %arrayidx21 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 13, i32 %i.072
  %52 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx21, align 4
  %doorbell_index22 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.072, i32 3, i32 23
  %54 = ptrtoint ptr %doorbell_index22 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %doorbell_index22, align 8
  br label %if.end23

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %use_pollmem = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.072, i32 3, i32 25
  %55 = ptrtoint ptr %use_pollmem to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %use_pollmem, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %name = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.072, i32 3, i32 29
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.5, i32 noundef %i.072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.072)
  %cmp27 = icmp ne i32 %i.072, 0
  %cond = zext i1 %cmp27 to i32
  %call28 = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring18, i32 noundef 1024, ptr noundef %trap_irq, i32 noundef %cond, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.cond, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then14, %for.cond.preheader.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.ph.i, %if.then14 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call28, %if.end23.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.sdma_v3_0_free_microcode.exit_crit_edge

entry.sdma_v3_0_free_microcode.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_free_microcode.exit

for.body.lr.ph:                                   ; preds = %entry
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ring = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.07, i32 3
  tail call void @amdgpu_ring_fini(ptr noundef %ring) #12
  %inc = add nuw nsw i32 %i.07, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.i = icmp sgt i32 %3, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %for.end.sdma_v3_0_free_microcode.exit_crit_edge

for.end.sdma_v3_0_free_microcode.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_free_microcode.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  tail call void @release_firmware(ptr noundef %5) #12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 8
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %7 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_instances, align 4
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sdma_v3_0_free_microcode.exit_crit_edge

for.body.i.sdma_v3_0_free_microcode.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_free_microcode.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sdma_v3_0_free_microcode.exit:                    ; preds = %for.body.i.sdma_v3_0_free_microcode.exit_crit_edge, %for.end.sdma_v3_0_free_microcode.exit_crit_edge, %entry.sdma_v3_0_free_microcode.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sdma_v3_0_init_golden_registers.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %sw.bb1.i
    i32 16, label %entry.sw.bb2.i_crit_edge
    i32 17, label %entry.sw.bb2.i_crit_edge5
    i32 18, label %entry.sw.bb2.i_crit_edge6
    i32 15, label %sw.bb3.i
    i32 13, label %sw.bb4.i
    i32 14, label %sw.bb5.i
  ]

entry.sw.bb2.i_crit_edge6:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

entry.sdma_v3_0_init_golden_registers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_init_golden_registers.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @fiji_mgcg_cgcg_init, i32 noundef 6) #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_fiji_a10, i32 noundef 24) #12
  br label %sdma_v3_0_init_golden_registers.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @tonga_mgcg_cgcg_init, i32 noundef 6) #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_tonga_a11, i32 noundef 30) #12
  br label %sdma_v3_0_init_golden_registers.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge5, %entry.sw.bb2.i_crit_edge6
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_polaris11_a11, i32 noundef 30) #12
  br label %sdma_v3_0_init_golden_registers.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_polaris10_a11, i32 noundef 30) #12
  br label %sdma_v3_0_init_golden_registers.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @cz_mgcg_cgcg_init, i32 noundef 6) #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @cz_golden_settings_a11, i32 noundef 36) #12
  br label %sdma_v3_0_init_golden_registers.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @stoney_mgcg_cgcg_init, i32 noundef 3) #12
  tail call void @amdgpu_device_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @stoney_golden_settings_a11, i32 noundef 12) #12
  br label %sdma_v3_0_init_golden_registers.exit

sdma_v3_0_init_golden_registers.exit:             ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %entry.sdma_v3_0_init_golden_registers.exit_crit_edge
  tail call fastcc void @sdma_v3_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #12
  tail call fastcc void @sdma_v3_0_enable(ptr noundef %handle, i1 noundef zeroext false) #12
  %call.i = tail call fastcc i32 @sdma_v3_0_gfx_resume(ptr noundef %handle) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sdma_v3_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false)
  tail call fastcc void @sdma_v3_0_enable(ptr noundef %handle, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sdma_v3_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #12
  tail call fastcc void @sdma_v3_0_enable(ptr noundef %handle, i1 noundef zeroext false) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdma_v3_0_hw_init(ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sdma_v3_0_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #12
  %and = and i32 %call, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #12
  %and = and i32 %call, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #12
  %inc = add nuw i32 %i.06, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sdma_v3_0_check_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 915, i32 noundef 0) #12
  %0 = and i32 %call, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  %spec.select = select i1 %1, i32 0, i32 1048640
  %2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 8
  %4 = xor i1 %1, true
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_pre_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 9
  %0 = ptrtoint ptr %srbm_soft_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset1, align 8
  %2 = and i32 %1, 1048640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.cleanup_crit_edge, label %if.then8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @sdma_v3_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false)
  tail call fastcc void @sdma_v3_0_enable(ptr noundef %handle, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 9
  %0 = ptrtoint ptr %srbm_soft_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  %or = or i32 %call, %1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %or) #15
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %or, i32 noundef 0) #12
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #12
  %neg = xor i32 %1, -1
  %and = and i32 %call6, %neg
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 920, i32 noundef %and, i32 noundef 0) #12
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 920, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_post_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %srbm_soft_reset1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 9
  %0 = ptrtoint ptr %srbm_soft_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srbm_soft_reset1, align 8
  %2 = and i32 %1, 1048640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %entry.cleanup_crit_edge, label %if.then8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @sdma_v3_0_gfx_resume(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  %.off = add i32 %3, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %land.lhs.true.i, label %sw.bb.if.else.i_crit_edge

sw.bb.if.else.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %4 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %for.cond.preheader.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %6 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp44.i = icmp sgt i32 %7, 0
  br i1 %cmp44.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.land.lhs.true.i9_crit_edge

for.cond.preheader.i.land.lhs.true.i9_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i9

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.045.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, 13315
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call.i)
  %10 = icmp ult i32 %call.i, 16777216
  br i1 %10, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %and2.i = and i32 %call.i, 16777215
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef %and2.i, i32 noundef 0) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %11 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge

for.inc.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.if.else.i_crit_edge
  %num_instances9.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %13 = ptrtoint ptr %num_instances9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_instances9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1046.i = icmp sgt i32 %14, 0
  br i1 %cmp1046.i, label %if.else.i.for.body11.i_crit_edge, label %if.else.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge

if.else.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit

if.else.i.for.body11.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc20.i.for.body11.i_crit_edge, %if.else.i.for.body11.i_crit_edge
  %i.147.i = phi i32 [ %inc21.i, %for.inc20.i.for.body11.i_crit_edge ], [ 0, %if.else.i.for.body11.i_crit_edge ]
  %arrayidx12.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.147.i
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12.i, align 4
  %add13.i = add i32 %16, 13315
  %call14.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add13.i, i32 noundef 0) #12
  %or.i = or i32 %call14.i, -16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %or.i, %call14.i
  br i1 %cmp15.not.i, label %for.body11.i.for.inc20.i_crit_edge, label %if.then16.i

for.body11.i.for.inc20.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20.i

if.then16.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add13.i, i32 noundef %or.i, i32 noundef 0) #12
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %if.then16.i, %for.body11.i.for.inc20.i_crit_edge
  %inc21.i = add nuw nsw i32 %i.147.i, 1
  %17 = ptrtoint ptr %num_instances9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_instances9.i, align 4
  %cmp10.i = icmp slt i32 %inc21.i, %18
  br i1 %cmp10.i, label %for.inc20.i.for.body11.i_crit_edge, label %for.inc20.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge

for.inc20.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge: ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit

for.inc20.i.for.body11.i_crit_edge:               ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i

sdma_v3_0_update_sdma_medium_grain_clock_gating.exit: ; preds = %for.inc20.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge, %if.else.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge, %for.inc.i.sdma_v3_0_update_sdma_medium_grain_clock_gating.exit_crit_edge
  br i1 %cmp, label %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit.land.lhs.true.i9_crit_edge, label %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit.if.else.i22_crit_edge

sdma_v3_0_update_sdma_medium_grain_clock_gating.exit.if.else.i22_crit_edge: ; preds = %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i22

sdma_v3_0_update_sdma_medium_grain_clock_gating.exit.land.lhs.true.i9_crit_edge: ; preds = %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i9

land.lhs.true.i9:                                 ; preds = %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit.land.lhs.true.i9_crit_edge, %for.cond.preheader.i.land.lhs.true.i9_crit_edge
  %cg_flags.i6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %19 = ptrtoint ptr %cg_flags.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cg_flags.i6, align 8
  %and.i7 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool1.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool1.not.i8, label %land.lhs.true.i9.if.else.i22_crit_edge, label %for.cond.preheader.i12

land.lhs.true.i9.if.else.i22_crit_edge:           ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i22

for.cond.preheader.i12:                           ; preds = %land.lhs.true.i9
  %num_instances.i10 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %21 = ptrtoint ptr %num_instances.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_instances.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp44.i11 = icmp sgt i32 %22, 0
  br i1 %cmp44.i11, label %for.cond.preheader.i12.for.body.i18_crit_edge, label %for.cond.preheader.i12.cleanup_crit_edge

for.cond.preheader.i12.cleanup_crit_edge:         ; preds = %for.cond.preheader.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i12.for.body.i18_crit_edge:    ; preds = %for.cond.preheader.i12
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.inc.i21.for.body.i18_crit_edge, %for.cond.preheader.i12.for.body.i18_crit_edge
  %i.045.i13 = phi i32 [ %inc.i19, %for.inc.i21.for.body.i18_crit_edge ], [ 0, %for.cond.preheader.i12.for.body.i18_crit_edge ]
  %arrayidx.i14 = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.045.i13
  %23 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i14, align 4
  %add.i15 = add i32 %24, 13314
  %call.i16 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i15, i32 noundef 0) #12
  %or.i17 = or i32 %call.i16, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i16, i32 %or.i17)
  %cmp2.not.i = icmp eq i32 %call.i16, %or.i17
  br i1 %cmp2.not.i, label %for.body.i18.for.inc.i21_crit_edge, label %if.then3.i

for.body.i18.for.inc.i21_crit_edge:               ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i21

if.then3.i:                                       ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i15, i32 noundef %or.i17, i32 noundef 0) #12
  br label %for.inc.i21

for.inc.i21:                                      ; preds = %if.then3.i, %for.body.i18.for.inc.i21_crit_edge
  %inc.i19 = add nuw nsw i32 %i.045.i13, 1
  %25 = ptrtoint ptr %num_instances.i10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_instances.i10, align 4
  %cmp.i20 = icmp slt i32 %inc.i19, %26
  br i1 %cmp.i20, label %for.inc.i21.for.body.i18_crit_edge, label %for.inc.i21.cleanup_crit_edge

for.inc.i21.cleanup_crit_edge:                    ; preds = %for.inc.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i21.for.body.i18_crit_edge:               ; preds = %for.inc.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i18

if.else.i22:                                      ; preds = %land.lhs.true.i9.if.else.i22_crit_edge, %sdma_v3_0_update_sdma_medium_grain_clock_gating.exit.if.else.i22_crit_edge
  %num_instances8.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %27 = ptrtoint ptr %num_instances8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_instances8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp946.i = icmp sgt i32 %28, 0
  br i1 %cmp946.i, label %if.else.i22.for.body10.i_crit_edge, label %if.else.i22.cleanup_crit_edge

if.else.i22.cleanup_crit_edge:                    ; preds = %if.else.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i22.for.body10.i_crit_edge:               ; preds = %if.else.i22
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc20.i27.for.body10.i_crit_edge, %if.else.i22.for.body10.i_crit_edge
  %i.147.i23 = phi i32 [ %inc21.i26, %for.inc20.i27.for.body10.i_crit_edge ], [ 0, %if.else.i22.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.147.i23
  %29 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.i, align 4
  %add12.i = add i32 %30, 13314
  %call13.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add12.i, i32 noundef 0) #12
  %and14.i = and i32 %call13.i, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %and14.i)
  %cmp15.not.i24 = icmp eq i32 %call13.i, %and14.i
  br i1 %cmp15.not.i24, label %for.body10.i.for.inc20.i27_crit_edge, label %if.then16.i25

for.body10.i.for.inc20.i27_crit_edge:             ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20.i27

if.then16.i25:                                    ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add12.i, i32 noundef %and14.i, i32 noundef 0) #12
  br label %for.inc20.i27

for.inc20.i27:                                    ; preds = %if.then16.i25, %for.body10.i.for.inc20.i27_crit_edge
  %inc21.i26 = add nuw nsw i32 %i.147.i23, 1
  %31 = ptrtoint ptr %num_instances8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_instances8.i, align 4
  %cmp9.i = icmp slt i32 %inc21.i26, %32
  br i1 %cmp9.i, label %for.inc20.i27.for.body10.i_crit_edge, label %for.inc20.i27.cleanup_crit_edge

for.inc20.i27.cleanup_crit_edge:                  ; preds = %for.inc20.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc20.i27.for.body10.i_crit_edge:             ; preds = %for.inc20.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i

cleanup:                                          ; preds = %for.inc20.i27.cleanup_crit_edge, %if.else.i22.cleanup_crit_edge, %for.inc.i21.cleanup_crit_edge, %for.cond.preheader.i12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdma_v3_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13315, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool2.not = icmp sgt i32 %call, -1
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 2048
  store i32 %or, ptr %flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 13314, i32 noundef 0) #12
  %and7 = and i32 %call6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.if.end11_crit_edge, label %if.then9

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or10 = or i32 %6, 1024
  store i32 %or10, ptr %flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @sdma_v3_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wb1 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %2 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb1, align 4
  %rptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 6
  %4 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  %shr = lshr i32 %7, 2
  %conv = zext i32 %shr to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sdma_v3_0_ring_get_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %use_pollmem = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 25
  %4 = ptrtoint ptr %use_pollmem to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_pollmem, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %wb4 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %6 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb4, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %8 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %12 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %me, align 8
  %arrayidx5 = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %15, 13444
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %wptr.0.in = phi i32 [ %11, %if.then ], [ %call, %if.else ]
  %wptr.0 = lshr i32 %wptr.0.in, 2
  %conv = zext i32 %wptr.0 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_set_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wb3 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %4 = ptrtoint ptr %wb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb3, align 4
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %6 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %9 to i32
  %shl = shl i32 %conv, 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %shl, ptr %arrayidx, align 4
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %11 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %doorbell_index, align 8
  %13 = load i64, ptr %wptr, align 8
  %conv12 = trunc i64 %13 to i32
  %shl13 = shl i32 %conv12, 2
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %1, i32 noundef %12, i32 noundef %shl13) #12
  br label %if.end40

if.else:                                          ; preds = %entry
  %use_pollmem = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 25
  %14 = ptrtoint ptr %use_pollmem to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_pollmem, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %if.else34, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %wb18 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %16 = ptrtoint ptr %wb18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wb18, align 4
  %wptr_offs19 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %18 = ptrtoint ptr %wptr_offs19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wptr_offs19, align 8
  %arrayidx20 = getelementptr i32, ptr %17, i32 %19
  %wptr26 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %20 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wptr26, align 8
  %conv28 = trunc i64 %21 to i32
  %shl29 = shl i32 %conv28, 2
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %shl29, ptr %arrayidx20, align 4
  br label %if.end40

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %23 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %me, align 8
  %arrayidx35 = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx35, align 4
  %add = add i32 %26, 13444
  %wptr36 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %27 = ptrtoint ptr %wptr36 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wptr36, align 8
  %conv38 = trunc i64 %28 to i32
  %shl39 = shl i32 %conv38, 2
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add, i32 noundef %shl39, i32 noundef 0) #12
  br label %if.end40

if.end40:                                         ; preds = %if.else34, %if.then15, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vmid1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %0 = ptrtoint ptr %vmid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmid1, align 8
  %phi.bo = shl i32 %1, 16
  %phi.bo21 = and i32 %phi.bo, 983040
  %phi.bo22 = or i32 %phi.bo21, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo22, %cond.true ], [ 4, %entry.cond.end_crit_edge ]
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %3 to i32
  %sub = sub i32 2, %conv
  %and2 = and i32 %sub, 7
  tail call void @sdma_v3_0_ring_insert_nop(ptr noundef %ring, i32 noundef %and2)
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %cond.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %wptr, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %10 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask.i, align 8
  %12 = trunc i64 %9 to i32
  %idxprom.i = and i32 %11, %12
  %arrayidx.i = getelementptr i32, ptr %7, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %cond, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %14 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ptr_mask.i, align 8
  %16 = load i64, ptr %wptr, align 8
  %and3.i = and i64 %16, %15
  store i64 %and3.i, ptr %wptr, align 8
  %17 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %19 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %gpu_addr, align 8
  %conv6 = trunc i64 %20 to i32
  %and7 = and i32 %conv6, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i24 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i24, label %if.then.i25, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit35_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit35_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit35

if.then.i25:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit35

amdgpu_ring_write.exit35:                         ; preds = %if.then.i25, %amdgpu_ring_write.exit.amdgpu_ring_write.exit35_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr, align 8
  %inc.i28 = add i64 %24, 1
  store i64 %inc.i28, ptr %wptr, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i30 = and i32 %26, %27
  %arrayidx.i31 = getelementptr i32, ptr %22, i32 %idxprom.i30
  %28 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %and7, ptr %arrayidx.i31, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr, align 8
  %and3.i33 = and i64 %31, %30
  store i64 %and3.i33, ptr %wptr, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i34 = add i32 %33, -1
  store i32 %dec.i34, ptr %count_dw.i, align 8
  %34 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %35, 32
  %conv10 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i34)
  %cmp.i37 = icmp slt i32 %dec.i34, 1
  br i1 %cmp.i37, label %if.then.i38, label %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge

amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge: ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit48

if.then.i38:                                      ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit48

amdgpu_ring_write.exit48:                         ; preds = %if.then.i38, %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge
  %36 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring1.i, align 4
  %38 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %wptr, align 8
  %inc.i41 = add i64 %39, 1
  store i64 %inc.i41, ptr %wptr, align 8
  %40 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_mask.i, align 8
  %42 = trunc i64 %39 to i32
  %idxprom.i43 = and i32 %41, %42
  %arrayidx.i44 = getelementptr i32, ptr %37, i32 %idxprom.i43
  %43 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %conv10, ptr %arrayidx.i44, align 4
  %44 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ptr_mask.i, align 8
  %46 = load i64, ptr %wptr, align 8
  %and3.i46 = and i64 %46, %45
  store i64 %and3.i46, ptr %wptr, align 8
  %47 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count_dw.i, align 8
  %dec.i47 = add i32 %48, -1
  store i32 %dec.i47, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %49 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i47)
  %cmp.i50 = icmp slt i32 %dec.i47, 1
  br i1 %cmp.i50, label %if.then.i51, label %amdgpu_ring_write.exit48.amdgpu_ring_write.exit61_crit_edge

amdgpu_ring_write.exit48.amdgpu_ring_write.exit61_crit_edge: ; preds = %amdgpu_ring_write.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit61

if.then.i51:                                      ; preds = %amdgpu_ring_write.exit48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit61

amdgpu_ring_write.exit61:                         ; preds = %if.then.i51, %amdgpu_ring_write.exit48.amdgpu_ring_write.exit61_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 4
  %53 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wptr, align 8
  %inc.i54 = add i64 %54, 1
  store i64 %inc.i54, ptr %wptr, align 8
  %55 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_mask.i, align 8
  %57 = trunc i64 %54 to i32
  %idxprom.i56 = and i32 %56, %57
  %arrayidx.i57 = getelementptr i32, ptr %52, i32 %idxprom.i56
  %58 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %50, ptr %arrayidx.i57, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ptr_mask.i, align 8
  %61 = load i64, ptr %wptr, align 8
  %and3.i59 = and i64 %61, %60
  store i64 %and3.i59, ptr %wptr, align 8
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 8
  %dec.i60 = add i32 %63, -1
  store i32 %dec.i60, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i60)
  %cmp.i63 = icmp slt i32 %dec.i60, 1
  br i1 %cmp.i63, label %if.then.i64, label %amdgpu_ring_write.exit61.amdgpu_ring_write.exit74_crit_edge

amdgpu_ring_write.exit61.amdgpu_ring_write.exit74_crit_edge: ; preds = %amdgpu_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit74

if.then.i64:                                      ; preds = %amdgpu_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit74

amdgpu_ring_write.exit74:                         ; preds = %if.then.i64, %amdgpu_ring_write.exit61.amdgpu_ring_write.exit74_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 4
  %66 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %wptr, align 8
  %inc.i67 = add i64 %67, 1
  store i64 %inc.i67, ptr %wptr, align 8
  %68 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_mask.i, align 8
  %70 = trunc i64 %67 to i32
  %idxprom.i69 = and i32 %69, %70
  %arrayidx.i70 = getelementptr i32, ptr %65, i32 %idxprom.i69
  %71 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 0, ptr %arrayidx.i70, align 4
  %72 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ptr_mask.i, align 8
  %74 = load i64, ptr %wptr, align 8
  %and3.i72 = and i64 %74, %73
  store i64 %and3.i72, ptr %wptr, align 8
  %75 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_dw.i, align 8
  %dec.i73 = add i32 %76, -1
  store i32 %dec.i73, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i73)
  %cmp.i76 = icmp slt i32 %dec.i73, 1
  br i1 %cmp.i76, label %if.then.i77, label %amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge

amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge: ; preds = %amdgpu_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit87

if.then.i77:                                      ; preds = %amdgpu_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit87

amdgpu_ring_write.exit87:                         ; preds = %if.then.i77, %amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge
  %77 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ring1.i, align 4
  %79 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %wptr, align 8
  %inc.i80 = add i64 %80, 1
  store i64 %inc.i80, ptr %wptr, align 8
  %81 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buf_mask.i, align 8
  %83 = trunc i64 %80 to i32
  %idxprom.i82 = and i32 %82, %83
  %arrayidx.i83 = getelementptr i32, ptr %78, i32 %idxprom.i82
  %84 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 0, ptr %arrayidx.i83, align 4
  %85 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ptr_mask.i, align 8
  %87 = load i64, ptr %wptr, align 8
  %and3.i85 = and i64 %87, %86
  store i64 %and3.i85, ptr %wptr, align 8
  %88 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %count_dw.i, align 8
  %dec.i86 = add i32 %89, -1
  store i32 %dec.i86, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  store volatile i32 5, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  store volatile i32 %conv3, ptr %arrayidx.i50, align 4
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
  %conv5 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  store volatile i32 %conv5, ptr %arrayidx.i63, align 4
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
  br i1 %tobool.not, label %amdgpu_ring_write.exit67.if.end_crit_edge, label %if.then

amdgpu_ring_write.exit67.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %amdgpu_ring_write.exit67
  %add = add i64 %addr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %if.then.amdgpu_ring_write.exit80_crit_edge

if.then.amdgpu_ring_write.exit80_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %if.then.amdgpu_ring_write.exit80_crit_edge
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
  store volatile i32 5, ptr %arrayidx.i76, align 4
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
  %conv8 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i82 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i82, label %if.then.i83, label %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge

amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge: ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit93

if.then.i83:                                      ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit93

amdgpu_ring_write.exit93:                         ; preds = %if.then.i83, %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i86 = add i64 %70, 1
  store i64 %inc.i86, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i88 = and i32 %72, %73
  %arrayidx.i89 = getelementptr i32, ptr %68, i32 %idxprom.i88
  %74 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %conv8, ptr %arrayidx.i89, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i91 = and i64 %77, %76
  store i64 %and3.i91, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i92 = add i32 %79, -1
  store i32 %dec.i92, ptr %count_dw.i, align 8
  %shr9 = lshr i64 %add, 32
  %conv11 = trunc i64 %shr9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i95 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i95, label %if.then.i96, label %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge

amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge: ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit106

if.then.i96:                                      ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit106

amdgpu_ring_write.exit106:                        ; preds = %if.then.i96, %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i99 = add i64 %83, 1
  store i64 %inc.i99, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i101 = and i32 %85, %86
  %arrayidx.i102 = getelementptr i32, ptr %81, i32 %idxprom.i101
  %87 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %conv11, ptr %arrayidx.i102, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i104 = and i64 %90, %89
  store i64 %and3.i104, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i105 = add i32 %92, -1
  store i32 %dec.i105, ptr %count_dw.i, align 8
  %shr12 = lshr i64 %seq, 32
  %conv14 = trunc i64 %shr12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i108 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i108, label %if.then.i109, label %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge

amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge: ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit119

if.then.i109:                                     ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit119

amdgpu_ring_write.exit119:                        ; preds = %if.then.i109, %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i112 = add i64 %96, 1
  store i64 %inc.i112, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i114 = and i32 %98, %99
  %arrayidx.i115 = getelementptr i32, ptr %94, i32 %idxprom.i114
  %100 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %conv14, ptr %arrayidx.i115, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i117 = and i64 %103, %102
  store i64 %and3.i117, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i118 = add i32 %105, -1
  store i32 %dec.i118, ptr %count_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %amdgpu_ring_write.exit119, %amdgpu_ring_write.exit67.if.end_crit_edge
  %106 = phi i32 [ %dec.i118, %amdgpu_ring_write.exit119 ], [ %dec.i66, %amdgpu_ring_write.exit67.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp.i121 = icmp slt i32 %106, 1
  br i1 %cmp.i121, label %if.then.i122, label %if.end.amdgpu_ring_write.exit132_crit_edge

if.end.amdgpu_ring_write.exit132_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit132

if.then.i122:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit132

amdgpu_ring_write.exit132:                        ; preds = %if.then.i122, %if.end.amdgpu_ring_write.exit132_crit_edge
  %107 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ring1.i, align 4
  %109 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %wptr.i, align 8
  %inc.i125 = add i64 %110, 1
  store i64 %inc.i125, ptr %wptr.i, align 8
  %111 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %buf_mask.i, align 8
  %113 = trunc i64 %110 to i32
  %idxprom.i127 = and i32 %112, %113
  %arrayidx.i128 = getelementptr i32, ptr %108, i32 %idxprom.i127
  %114 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 6, ptr %arrayidx.i128, align 4
  %115 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %ptr_mask.i, align 8
  %117 = load i64, ptr %wptr.i, align 8
  %and3.i130 = and i64 %117, %116
  store i64 %and3.i130, ptr %wptr.i, align 8
  %118 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count_dw.i, align 8
  %dec.i131 = add i32 %119, -1
  store i32 %dec.i131, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i131)
  %cmp.i134 = icmp slt i32 %dec.i131, 1
  br i1 %cmp.i134, label %if.then.i135, label %amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge

amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge: ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit145

if.then.i135:                                     ; preds = %amdgpu_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit145

amdgpu_ring_write.exit145:                        ; preds = %if.then.i135, %amdgpu_ring_write.exit132.amdgpu_ring_write.exit145_crit_edge
  %120 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ring1.i, align 4
  %122 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %wptr.i, align 8
  %inc.i138 = add i64 %123, 1
  store i64 %inc.i138, ptr %wptr.i, align 8
  %124 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %buf_mask.i, align 8
  %126 = trunc i64 %123 to i32
  %idxprom.i140 = and i32 %125, %126
  %arrayidx.i141 = getelementptr i32, ptr %121, i32 %idxprom.i140
  %127 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 0, ptr %arrayidx.i141, align 4
  %128 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %ptr_mask.i, align 8
  %130 = load i64, ptr %wptr.i, align 8
  %and3.i143 = and i64 %130, %129
  store i64 %and3.i143, ptr %wptr.i, align 8
  %131 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %count_dw.i, align 8
  %dec.i144 = add i32 %132, -1
  store i32 %dec.i144, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_emit_pipeline_sync(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  store volatile i32 -1342177272, ptr %arrayidx.i, align 4
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
  %19 = trunc i64 %3 to i32
  %conv = and i32 %19, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i14 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i14, label %if.then.i15, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit25_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit25_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit25

if.then.i15:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit25

amdgpu_ring_write.exit25:                         ; preds = %if.then.i15, %amdgpu_ring_write.exit.amdgpu_ring_write.exit25_crit_edge
  %20 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring1.i, align 4
  %22 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wptr.i, align 8
  %inc.i18 = add i64 %23, 1
  store i64 %inc.i18, ptr %wptr.i, align 8
  %24 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_mask.i, align 8
  %26 = trunc i64 %23 to i32
  %idxprom.i20 = and i32 %25, %26
  %arrayidx.i21 = getelementptr i32, ptr %21, i32 %idxprom.i20
  %27 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %conv, ptr %arrayidx.i21, align 4
  %28 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ptr_mask.i, align 8
  %30 = load i64, ptr %wptr.i, align 8
  %and3.i23 = and i64 %30, %29
  store i64 %and3.i23, ptr %wptr.i, align 8
  %31 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count_dw.i, align 8
  %dec.i24 = add i32 %32, -1
  store i32 %dec.i24, ptr %count_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i24)
  %cmp.i27 = icmp slt i32 %dec.i24, 1
  br i1 %cmp.i27, label %if.then.i28, label %amdgpu_ring_write.exit25.amdgpu_ring_write.exit38_crit_edge

amdgpu_ring_write.exit25.amdgpu_ring_write.exit38_crit_edge: ; preds = %amdgpu_ring_write.exit25
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit38

if.then.i28:                                      ; preds = %amdgpu_ring_write.exit25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit38

amdgpu_ring_write.exit38:                         ; preds = %if.then.i28, %amdgpu_ring_write.exit25.amdgpu_ring_write.exit38_crit_edge
  %33 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring1.i, align 4
  %35 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %wptr.i, align 8
  %inc.i31 = add i64 %36, 1
  store i64 %inc.i31, ptr %wptr.i, align 8
  %37 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_mask.i, align 8
  %39 = trunc i64 %36 to i32
  %idxprom.i33 = and i32 %38, %39
  %arrayidx.i34 = getelementptr i32, ptr %34, i32 %idxprom.i33
  %40 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %conv3, ptr %arrayidx.i34, align 4
  %41 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ptr_mask.i, align 8
  %43 = load i64, ptr %wptr.i, align 8
  %and3.i36 = and i64 %43, %42
  store i64 %and3.i36, ptr %wptr.i, align 8
  %44 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count_dw.i, align 8
  %dec.i37 = add i32 %45, -1
  store i32 %dec.i37, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i37)
  %cmp.i40 = icmp slt i32 %dec.i37, 1
  br i1 %cmp.i40, label %if.then.i41, label %amdgpu_ring_write.exit38.amdgpu_ring_write.exit51_crit_edge

amdgpu_ring_write.exit38.amdgpu_ring_write.exit51_crit_edge: ; preds = %amdgpu_ring_write.exit38
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit51

if.then.i41:                                      ; preds = %amdgpu_ring_write.exit38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit51

amdgpu_ring_write.exit51:                         ; preds = %if.then.i41, %amdgpu_ring_write.exit38.amdgpu_ring_write.exit51_crit_edge
  %46 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ring1.i, align 4
  %48 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %wptr.i, align 8
  %inc.i44 = add i64 %49, 1
  store i64 %inc.i44, ptr %wptr.i, align 8
  %50 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf_mask.i, align 8
  %52 = trunc i64 %49 to i32
  %idxprom.i46 = and i32 %51, %52
  %arrayidx.i47 = getelementptr i32, ptr %47, i32 %idxprom.i46
  %53 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %1, ptr %arrayidx.i47, align 4
  %54 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ptr_mask.i, align 8
  %56 = load i64, ptr %wptr.i, align 8
  %and3.i49 = and i64 %56, %55
  store i64 %and3.i49, ptr %wptr.i, align 8
  %57 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_dw.i, align 8
  %dec.i50 = add i32 %58, -1
  store i32 %dec.i50, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i50)
  %cmp.i53 = icmp slt i32 %dec.i50, 1
  br i1 %cmp.i53, label %if.then.i54, label %amdgpu_ring_write.exit51.amdgpu_ring_write.exit64_crit_edge

amdgpu_ring_write.exit51.amdgpu_ring_write.exit64_crit_edge: ; preds = %amdgpu_ring_write.exit51
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit64

if.then.i54:                                      ; preds = %amdgpu_ring_write.exit51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit64

amdgpu_ring_write.exit64:                         ; preds = %if.then.i54, %amdgpu_ring_write.exit51.amdgpu_ring_write.exit64_crit_edge
  %59 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ring1.i, align 4
  %61 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %wptr.i, align 8
  %inc.i57 = add i64 %62, 1
  store i64 %inc.i57, ptr %wptr.i, align 8
  %63 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf_mask.i, align 8
  %65 = trunc i64 %62 to i32
  %idxprom.i59 = and i32 %64, %65
  %arrayidx.i60 = getelementptr i32, ptr %60, i32 %idxprom.i59
  %66 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 -1, ptr %arrayidx.i60, align 4
  %67 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %ptr_mask.i, align 8
  %69 = load i64, ptr %wptr.i, align 8
  %and3.i62 = and i64 %69, %68
  store i64 %and3.i62, ptr %wptr.i, align 8
  %70 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count_dw.i, align 8
  %dec.i63 = add i32 %71, -1
  store i32 %dec.i63, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i63)
  %cmp.i66 = icmp slt i32 %dec.i63, 1
  br i1 %cmp.i66, label %if.then.i67, label %amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge

amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge: ; preds = %amdgpu_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit77

if.then.i67:                                      ; preds = %amdgpu_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit77

amdgpu_ring_write.exit77:                         ; preds = %if.then.i67, %amdgpu_ring_write.exit64.amdgpu_ring_write.exit77_crit_edge
  %72 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ring1.i, align 4
  %74 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %wptr.i, align 8
  %inc.i70 = add i64 %75, 1
  store i64 %inc.i70, ptr %wptr.i, align 8
  %76 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buf_mask.i, align 8
  %78 = trunc i64 %75 to i32
  %idxprom.i72 = and i32 %77, %78
  %arrayidx.i73 = getelementptr i32, ptr %73, i32 %idxprom.i72
  %79 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 268369924, ptr %arrayidx.i73, align 4
  %80 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %ptr_mask.i, align 8
  %82 = load i64, ptr %wptr.i, align 8
  %and3.i75 = and i64 %82, %81
  store i64 %and3.i75, ptr %wptr.i, align 8
  %83 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count_dw.i, align 8
  %dec.i76 = add i32 %84, -1
  store i32 %dec.i76, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %2 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %5(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #12
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask.i, align 8
  %14 = trunc i64 %11 to i32
  %idxprom.i = and i32 %13, %14
  %arrayidx.i = getelementptr i32, ptr %9, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 8, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptr_mask.i, align 8
  %18 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %18, %17
  store i64 %and3.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i9 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i9, label %if.then.i10, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit20_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit20_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit20

if.then.i10:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit20

amdgpu_ring_write.exit20:                         ; preds = %if.then.i10, %amdgpu_ring_write.exit.amdgpu_ring_write.exit20_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr.i, align 8
  %inc.i13 = add i64 %24, 1
  store i64 %inc.i13, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i15 = and i32 %26, %27
  %arrayidx.i16 = getelementptr i32, ptr %22, i32 %idxprom.i15
  %28 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 5240, ptr %arrayidx.i16, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr.i, align 8
  %and3.i18 = and i64 %31, %30
  store i64 %and3.i18, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i19 = add i32 %33, -1
  store i32 %dec.i19, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i19)
  %cmp.i22 = icmp slt i32 %dec.i19, 1
  br i1 %cmp.i22, label %if.then.i23, label %amdgpu_ring_write.exit20.amdgpu_ring_write.exit33_crit_edge

amdgpu_ring_write.exit20.amdgpu_ring_write.exit33_crit_edge: ; preds = %amdgpu_ring_write.exit20
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit33

if.then.i23:                                      ; preds = %amdgpu_ring_write.exit20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit33

amdgpu_ring_write.exit33:                         ; preds = %if.then.i23, %amdgpu_ring_write.exit20.amdgpu_ring_write.exit33_crit_edge
  %34 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring1.i, align 4
  %36 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %wptr.i, align 8
  %inc.i26 = add i64 %37, 1
  store i64 %inc.i26, ptr %wptr.i, align 8
  %38 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_mask.i, align 8
  %40 = trunc i64 %37 to i32
  %idxprom.i28 = and i32 %39, %40
  %arrayidx.i29 = getelementptr i32, ptr %35, i32 %idxprom.i28
  %41 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %arrayidx.i29, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ptr_mask.i, align 8
  %44 = load i64, ptr %wptr.i, align 8
  %and3.i31 = and i64 %44, %43
  store i64 %and3.i31, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 8
  %dec.i32 = add i32 %46, -1
  store i32 %dec.i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i32)
  %cmp.i35 = icmp slt i32 %dec.i32, 1
  br i1 %cmp.i35, label %if.then.i36, label %amdgpu_ring_write.exit33.amdgpu_ring_write.exit46_crit_edge

amdgpu_ring_write.exit33.amdgpu_ring_write.exit46_crit_edge: ; preds = %amdgpu_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit46

if.then.i36:                                      ; preds = %amdgpu_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit46

amdgpu_ring_write.exit46:                         ; preds = %if.then.i36, %amdgpu_ring_write.exit33.amdgpu_ring_write.exit46_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i39 = add i64 %50, 1
  store i64 %inc.i39, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i41 = and i32 %52, %53
  %arrayidx.i42 = getelementptr i32, ptr %48, i32 %idxprom.i41
  %54 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %arrayidx.i42, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i44 = and i64 %57, %56
  store i64 %and3.i44, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i45 = add i32 %59, -1
  store i32 %dec.i45, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i45)
  %cmp.i48 = icmp slt i32 %dec.i45, 1
  br i1 %cmp.i48, label %if.then.i49, label %amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge

amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge: ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit59

if.then.i49:                                      ; preds = %amdgpu_ring_write.exit46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit59

amdgpu_ring_write.exit59:                         ; preds = %if.then.i49, %amdgpu_ring_write.exit46.amdgpu_ring_write.exit59_crit_edge
  %60 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ring1.i, align 4
  %62 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wptr.i, align 8
  %inc.i52 = add i64 %63, 1
  store i64 %inc.i52, ptr %wptr.i, align 8
  %64 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf_mask.i, align 8
  %66 = trunc i64 %63 to i32
  %idxprom.i54 = and i32 %65, %66
  %arrayidx.i55 = getelementptr i32, ptr %61, i32 %idxprom.i54
  %67 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %arrayidx.i55, align 4
  %68 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ptr_mask.i, align 8
  %70 = load i64, ptr %wptr.i, align 8
  %and3.i57 = and i64 %70, %69
  store i64 %and3.i57, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count_dw.i, align 8
  %dec.i58 = add i32 %72, -1
  store i32 %dec.i58, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i58)
  %cmp.i61 = icmp slt i32 %dec.i58, 1
  br i1 %cmp.i61, label %if.then.i62, label %amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge

amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge: ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit72

if.then.i62:                                      ; preds = %amdgpu_ring_write.exit59
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit72

amdgpu_ring_write.exit72:                         ; preds = %if.then.i62, %amdgpu_ring_write.exit59.amdgpu_ring_write.exit72_crit_edge
  %73 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ring1.i, align 4
  %75 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %wptr.i, align 8
  %inc.i65 = add i64 %76, 1
  store i64 %inc.i65, ptr %wptr.i, align 8
  %77 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_mask.i, align 8
  %79 = trunc i64 %76 to i32
  %idxprom.i67 = and i32 %78, %79
  %arrayidx.i68 = getelementptr i32, ptr %74, i32 %idxprom.i67
  %80 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 268369930, ptr %arrayidx.i68, align 4
  %81 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ptr_mask.i, align 8
  %83 = load i64, ptr %wptr.i, align 8
  %and3.i70 = and i64 %83, %82
  store i64 %and3.i70, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_dw.i, align 8
  %dec.i71 = add i32 %85, -1
  store i32 %dec.i71, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_emit_hdp_flush(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %. = select i1 %cmp, i32 1024, i32 2048
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
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
  store volatile i32 872415240, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit24

if.then.i14:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  store volatile i32 21728, ptr %arrayidx.i20, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i23)
  %cmp.i26 = icmp slt i32 %dec.i23, 1
  br i1 %cmp.i26, label %if.then.i27, label %amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge

amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge: ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit37

amdgpu_ring_write.exit37:                         ; preds = %if.then.i27, %amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 4
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wptr.i, align 8
  %inc.i30 = add i64 %33, 1
  store i64 %inc.i30, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_mask.i, align 8
  %36 = trunc i64 %33 to i32
  %idxprom.i32 = and i32 %35, %36
  %arrayidx.i33 = getelementptr i32, ptr %31, i32 %idxprom.i32
  %37 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 21724, ptr %arrayidx.i33, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ptr_mask.i, align 8
  %40 = load i64, ptr %wptr.i, align 8
  %and3.i35 = and i64 %40, %39
  store i64 %and3.i35, ptr %wptr.i, align 8
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 8
  %dec.i36 = add i32 %42, -1
  store i32 %dec.i36, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i36)
  %cmp.i39 = icmp slt i32 %dec.i36, 1
  br i1 %cmp.i39, label %if.then.i40, label %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge

amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge: ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit50

amdgpu_ring_write.exit50:                         ; preds = %if.then.i40, %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 4
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr.i, align 8
  %inc.i43 = add i64 %46, 1
  store i64 %inc.i43, ptr %wptr.i, align 8
  %47 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_mask.i, align 8
  %49 = trunc i64 %46 to i32
  %idxprom.i45 = and i32 %48, %49
  %arrayidx.i46 = getelementptr i32, ptr %44, i32 %idxprom.i45
  %50 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %., ptr %arrayidx.i46, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ptr_mask.i, align 8
  %53 = load i64, ptr %wptr.i, align 8
  %and3.i48 = and i64 %53, %52
  store i64 %and3.i48, ptr %wptr.i, align 8
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 8
  %dec.i49 = add i32 %55, -1
  store i32 %dec.i49, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i49)
  %cmp.i52 = icmp slt i32 %dec.i49, 1
  br i1 %cmp.i52, label %if.then.i53, label %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge

amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge: ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit63

amdgpu_ring_write.exit63:                         ; preds = %if.then.i53, %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 4
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %wptr.i, align 8
  %inc.i56 = add i64 %59, 1
  store i64 %inc.i56, ptr %wptr.i, align 8
  %60 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_mask.i, align 8
  %62 = trunc i64 %59 to i32
  %idxprom.i58 = and i32 %61, %62
  %arrayidx.i59 = getelementptr i32, ptr %57, i32 %idxprom.i58
  %63 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %., ptr %arrayidx.i59, align 4
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ptr_mask.i, align 8
  %66 = load i64, ptr %wptr.i, align 8
  %and3.i61 = and i64 %66, %65
  store i64 %and3.i61, ptr %wptr.i, align 8
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 8
  %dec.i62 = add i32 %68, -1
  store i32 %dec.i62, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i62)
  %cmp.i65 = icmp slt i32 %dec.i62, 1
  br i1 %cmp.i65, label %if.then.i66, label %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge

amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge: ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit76

if.then.i66:                                      ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit76

amdgpu_ring_write.exit76:                         ; preds = %if.then.i66, %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 4
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %wptr.i, align 8
  %inc.i69 = add i64 %72, 1
  store i64 %inc.i69, ptr %wptr.i, align 8
  %73 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_mask.i, align 8
  %75 = trunc i64 %72 to i32
  %idxprom.i71 = and i32 %74, %75
  %arrayidx.i72 = getelementptr i32, ptr %70, i32 %idxprom.i71
  %76 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 268369930, ptr %arrayidx.i72, align 4
  %77 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ptr_mask.i, align 8
  %79 = load i64, ptr %wptr.i, align 8
  %and3.i74 = and i64 %79, %78
  store i64 %and3.i74, ptr %wptr.i, align 8
  %80 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count_dw.i, align 8
  %dec.i75 = add i32 %81, -1
  store i32 %dec.i75, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_ring_test_ring(ptr noundef %ring) #1 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #12
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !129
  %call = call i32 @amdgpu_device_wb_get(ptr noundef %1, ptr noundef nonnull %index) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_addr2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 2
  %3 = ptrtoint ptr %gpu_addr2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %gpu_addr2, align 8
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %wb4 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %7 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wb4, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1377894710, ptr %arrayidx, align 4
  %call5 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.error_free_wb_crit_edge

if.end.error_free_wb_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

if.end8:                                          ; preds = %if.end
  %mul = shl i32 %6, 2
  %conv = zext i32 %mul to i64
  %add = add i64 %4, %conv
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.end8.amdgpu_ring_write.exit_crit_edge

if.end8.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end8.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %14 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %15, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %16 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_mask.i, align 8
  %18 = trunc i64 %15 to i32
  %idxprom.i = and i32 %17, %18
  %arrayidx.i = getelementptr i32, ptr %13, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %20 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ptr_mask.i, align 8
  %22 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %22, %21
  store i64 %and3.i, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv9 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i51 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i51, label %if.then.i52, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit62_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit62_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit62

if.then.i52:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit62

amdgpu_ring_write.exit62:                         ; preds = %if.then.i52, %amdgpu_ring_write.exit.amdgpu_ring_write.exit62_crit_edge
  %25 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i, align 4
  %27 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wptr.i, align 8
  %inc.i55 = add i64 %28, 1
  store i64 %inc.i55, ptr %wptr.i, align 8
  %29 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_mask.i, align 8
  %31 = trunc i64 %28 to i32
  %idxprom.i57 = and i32 %30, %31
  %arrayidx.i58 = getelementptr i32, ptr %26, i32 %idxprom.i57
  %32 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %conv9, ptr %arrayidx.i58, align 4
  %33 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ptr_mask.i, align 8
  %35 = load i64, ptr %wptr.i, align 8
  %and3.i60 = and i64 %35, %34
  store i64 %and3.i60, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_dw.i, align 8
  %dec.i61 = add i32 %37, -1
  store i32 %dec.i61, ptr %count_dw.i, align 8
  %shr = lshr i64 %add, 32
  %conv11 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i61)
  %cmp.i64 = icmp slt i32 %dec.i61, 1
  br i1 %cmp.i64, label %if.then.i65, label %amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge

amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge: ; preds = %amdgpu_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit75

if.then.i65:                                      ; preds = %amdgpu_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit75

amdgpu_ring_write.exit75:                         ; preds = %if.then.i65, %amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 4
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wptr.i, align 8
  %inc.i68 = add i64 %41, 1
  store i64 %inc.i68, ptr %wptr.i, align 8
  %42 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_mask.i, align 8
  %44 = trunc i64 %41 to i32
  %idxprom.i70 = and i32 %43, %44
  %arrayidx.i71 = getelementptr i32, ptr %39, i32 %idxprom.i70
  %45 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %conv11, ptr %arrayidx.i71, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ptr_mask.i, align 8
  %48 = load i64, ptr %wptr.i, align 8
  %and3.i73 = and i64 %48, %47
  store i64 %and3.i73, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 8
  %dec.i74 = add i32 %50, -1
  store i32 %dec.i74, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i74)
  %cmp.i77 = icmp slt i32 %dec.i74, 1
  br i1 %cmp.i77, label %if.then.i78, label %amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge

amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge: ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit88

if.then.i78:                                      ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit88

amdgpu_ring_write.exit88:                         ; preds = %if.then.i78, %amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 4
  %53 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wptr.i, align 8
  %inc.i81 = add i64 %54, 1
  store i64 %inc.i81, ptr %wptr.i, align 8
  %55 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_mask.i, align 8
  %57 = trunc i64 %54 to i32
  %idxprom.i83 = and i32 %56, %57
  %arrayidx.i84 = getelementptr i32, ptr %52, i32 %idxprom.i83
  %58 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 1, ptr %arrayidx.i84, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ptr_mask.i, align 8
  %61 = load i64, ptr %wptr.i, align 8
  %and3.i86 = and i64 %61, %60
  store i64 %and3.i86, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 8
  %dec.i87 = add i32 %63, -1
  store i32 %dec.i87, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i87)
  %cmp.i90 = icmp slt i32 %dec.i87, 1
  br i1 %cmp.i90, label %if.then.i91, label %amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge

amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge: ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit101

if.then.i91:                                      ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit101

amdgpu_ring_write.exit101:                        ; preds = %if.then.i91, %amdgpu_ring_write.exit88.amdgpu_ring_write.exit101_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 4
  %66 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %wptr.i, align 8
  %inc.i94 = add i64 %67, 1
  store i64 %inc.i94, ptr %wptr.i, align 8
  %68 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_mask.i, align 8
  %70 = trunc i64 %67 to i32
  %idxprom.i96 = and i32 %69, %70
  %arrayidx.i97 = getelementptr i32, ptr %65, i32 %idxprom.i96
  %71 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 -559038737, ptr %arrayidx.i97, align 4
  %72 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ptr_mask.i, align 8
  %74 = load i64, ptr %wptr.i, align 8
  %and3.i99 = and i64 %74, %73
  store i64 %and3.i99, ptr %wptr.i, align 8
  %75 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_dw.i, align 8
  %dec.i100 = add i32 %76, -1
  store i32 %dec.i100, ptr %count_dw.i, align 8
  call void @amdgpu_ring_commit(ptr noundef %ring) #12
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %77 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp102.not = icmp eq i32 %78, 0
  br i1 %cmp102.not, label %amdgpu_ring_write.exit101.error_free_wb_crit_edge, label %amdgpu_ring_write.exit101.for.body_crit_edge

amdgpu_ring_write.exit101.for.body_crit_edge:     ; preds = %amdgpu_ring_write.exit101
  br label %for.body

amdgpu_ring_write.exit101.error_free_wb_crit_edge: ; preds = %amdgpu_ring_write.exit101
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %amdgpu_ring_write.exit101.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %if.end19.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit101.for.body_crit_edge ]
  %79 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wb4, align 4
  %81 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index, align 4
  %arrayidx15 = getelementptr i32, ptr %80, i32 %82
  %83 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %84)
  %cmp16 = icmp eq i32 %84, -272716322
  br i1 %cmp16, label %for.body.error_free_wb_crit_edge, label %if.end19

for.body.error_free_wb_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

if.end19:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748) #12
  %inc = add nuw i32 %i.0103, 1
  %86 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %87
  br i1 %cmp, label %if.end19.for.body_crit_edge, label %if.end19.error_free_wb_crit_edge

if.end19.error_free_wb_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

error_free_wb:                                    ; preds = %if.end19.error_free_wb_crit_edge, %for.body.error_free_wb_crit_edge, %amdgpu_ring_write.exit101.error_free_wb_crit_edge, %if.end.error_free_wb_crit_edge
  %r.0 = phi i32 [ %call5, %if.end.error_free_wb_crit_edge ], [ -110, %amdgpu_ring_write.exit101.error_free_wb_crit_edge ], [ 0, %for.body.error_free_wb_crit_edge ], [ -110, %if.end19.error_free_wb_crit_edge ]
  %88 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %89) #12
  br label %cleanup

cleanup:                                          ; preds = %error_free_wb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_free_wb ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #1 align 64 {
entry:
  %ib = alloca %struct.amdgpu_ib, align 8
  %f = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #12
  %2 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %3 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #12
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #12
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %index, align 4, !annotation !129
  %call = call i32 @amdgpu_device_wb_get(ptr noundef %1, ptr noundef nonnull %index) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_addr2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 2
  %6 = ptrtoint ptr %gpu_addr2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gpu_addr2, align 8
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %wb4 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %10 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wb4, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 -1377894710, ptr %arrayidx, align 4
  %13 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call5 = call i32 @amdgpu_ib_get(ptr noundef %1, ptr noundef null, i32 noundef 256, i32 noundef 2, ptr noundef nonnull %ib) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.err0_crit_edge

if.end.err0_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0

if.end8:                                          ; preds = %if.end
  %mul = shl i32 %9, 2
  %conv = zext i32 %mul to i64
  %add = add i64 %7, %conv
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %15, align 4
  %conv10 = trunc i64 %add to i32
  %17 = load ptr, ptr %3, align 8
  %arrayidx12 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv10, ptr %arrayidx12, align 4
  %shr = lshr i64 %add, 32
  %conv14 = trunc i64 %shr to i32
  %19 = load ptr, ptr %3, align 8
  %arrayidx16 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv14, ptr %arrayidx16, align 4
  %21 = load ptr, ptr %3, align 8
  %arrayidx18 = getelementptr i32, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx18, align 4
  %23 = load ptr, ptr %3, align 8
  %arrayidx20 = getelementptr i32, ptr %23, i32 4
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -559038737, ptr %arrayidx20, align 4
  %25 = load ptr, ptr %3, align 8
  %arrayidx22 = getelementptr i32, ptr %25, i32 5
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx22, align 4
  %27 = load ptr, ptr %3, align 8
  %arrayidx24 = getelementptr i32, ptr %27, i32 6
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx24, align 4
  %29 = load ptr, ptr %3, align 8
  %arrayidx26 = getelementptr i32, ptr %29, i32 7
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx26, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %2, align 4
  %call27 = call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef 1, ptr noundef nonnull %ib, ptr noundef null, ptr noundef nonnull %f) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end8.err1_crit_edge

if.end8.err1_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end30:                                         ; preds = %if.end8
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f, align 4
  %call31 = call i32 @dma_fence_wait_timeout(ptr noundef %33, i1 noundef zeroext false, i32 noundef %timeout) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp eq i32 %call31, 0
  br i1 %cmp, label %if.end30.err1_crit_edge, label %if.else

if.end30.err1_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp34 = icmp slt i32 %call31, 0
  br i1 %cmp34, label %if.else.err1_crit_edge, label %if.end38

if.else.err1_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end38:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wb4, align 4
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  %arrayidx41 = getelementptr i32, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %39)
  %cmp42 = icmp eq i32 %39, -272716322
  %. = select i1 %cmp42, i32 0, i32 -22
  br label %err1

err1:                                             ; preds = %if.end38, %if.else.err1_crit_edge, %if.end30.err1_crit_edge, %if.end8.err1_crit_edge
  %r.0 = phi i32 [ %call27, %if.end8.err1_crit_edge ], [ %call31, %if.else.err1_crit_edge ], [ -110, %if.end30.err1_crit_edge ], [ %., %if.end38 ]
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef null) #12
  %40 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %err1.err0_crit_edge, label %if.then.i

err1.err0_crit_edge:                              ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0

if.then.i:                                        ; preds = %err1
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %41, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !130
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !131
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err0_crit_edge, label %if.then10.i.i.i.i.i, !prof !132

if.end5.i.i.i.i.i.err0_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %err0

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  call void @dma_fence_release(ptr noundef %refcount.i) #12
  br label %err0

err0:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err0_crit_edge, %err1.err0_crit_edge, %if.end.err0_crit_edge
  %r.1 = phi i32 [ %call5, %if.end.err0_crit_edge ], [ %r.0, %err1.err0_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.err0_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %44) #12
  br label %cleanup

cleanup:                                          ; preds = %err0, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err0 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_insert_nop(ptr noundef %ring, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef %ring) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp27.not = icmp eq i32 %count, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  %burst_nop = getelementptr inbounds %struct.amdgpu_sdma_instance, ptr %call, i32 0, i32 5
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %sub = shl i32 %count, 16
  %and = add i32 %sub, 1073676288
  %shl = and i32 %and, 1073676288
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %burst_nop to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %burst_nop, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028)
  %cmp3 = icmp eq i32 %i.028, 0
  %or.cond = select i1 %tobool1.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %nop = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nop, align 4
  %or = or i32 %5, %shl
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.for.inc.sink.split_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.for.inc.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %nop5 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nop5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nop5, align 4
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i15 = icmp slt i32 %13, 1
  br i1 %cmp.i15, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.then.for.inc.sink.split_crit_edge
  %or.sink.ph = phi i32 [ %or, %if.then.for.inc.sink.split_crit_edge ], [ %11, %if.else.for.inc.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %or.sink = phi i32 [ %or, %if.then.for.inc_crit_edge ], [ %11, %if.else.for.inc_crit_edge ], [ %or.sink.ph, %for.inc.sink.split ]
  %14 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i, align 4
  %16 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %17, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %18 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_mask.i, align 8
  %20 = trunc i64 %17 to i32
  %idxprom.i = and i32 %19, %20
  %arrayidx.i = getelementptr i32, ptr %15, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %or.sink, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ptr_mask.i, align 8
  %24 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %24, %23
  store i64 %and3.i, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %storemerge.in = load i32, ptr %count_dw.i, align 8
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %count_dw.i, align 8
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_pad_ib(ptr noundef %ring, ptr nocapture noundef %ib) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef %ring) #12
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %0 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length_dw, align 4
  %sub = sub i32 0, %1
  %and = and i32 %sub, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20.not = icmp eq i32 %and, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  %burst_nop = getelementptr inbounds %struct.amdgpu_sdma_instance, ptr %call, i32 0, i32 5
  %sub4 = shl nuw nsw i32 %and, 16
  %and5 = add nuw nsw i32 %sub4, 1073676288
  %shl = and i32 %and5, 1073676288
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  br i1 %tobool.not, label %for.body.lr.ph.if.else_crit_edge, label %land.lhs.true

for.body.lr.ph.if.else_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body.lr.ph
  %2 = ptrtoint ptr %burst_nop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %burst_nop, align 8, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.not = icmp eq i8 %3, 0
  br i1 %tobool1.not.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptr, align 8
  %6 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length_dw, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.lr.ph.if.else_crit_edge
  %9 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptr, align 8
  %11 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %12, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %exitcond.not = icmp eq i32 %and, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr, align 8
  %16 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length_dw, align 4
  %inc9.1 = add i32 %17, 1
  store i32 %inc9.1, ptr %length_dw, align 4
  %arrayidx10.1 = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx10.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %exitcond.not.1 = icmp eq i32 %and, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptr, align 8
  %21 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length_dw, align 4
  %inc9.2 = add i32 %22, 1
  store i32 %inc9.2, ptr %length_dw, align 4
  %arrayidx10.2 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx10.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %exitcond.not.2 = icmp eq i32 %and, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %24 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptr, align 8
  %26 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length_dw, align 4
  %inc9.3 = add i32 %27, 1
  store i32 %inc9.3, ptr %length_dw, align 4
  %arrayidx10.3 = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx10.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %exitcond.not.3 = icmp eq i32 %and, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %29 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptr, align 8
  %31 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length_dw, align 4
  %inc9.4 = add i32 %32, 1
  store i32 %inc9.4, ptr %length_dw, align 4
  %arrayidx10.4 = getelementptr i32, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx10.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %exitcond.not.4 = icmp eq i32 %and, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %34 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptr, align 8
  %36 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length_dw, align 4
  %inc9.5 = add i32 %37, 1
  store i32 %inc9.5, ptr %length_dw, align 4
  %arrayidx10.5 = getelementptr i32, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx10.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %exitcond.not.5 = icmp eq i32 %and, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptr, align 8
  %41 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length_dw, align 4
  %inc9.6 = add i32 %42, 1
  store i32 %inc9.6, ptr %length_dw, align 4
  %arrayidx10.6 = getelementptr i32, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx10.6, align 4
  br label %for.end

for.end:                                          ; preds = %for.body.6, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_ring_emit_wreg(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  store volatile i32 -268435442, ptr %arrayidx.i, align 4
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
  %cmp.i4 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i4, label %if.then.i5, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit15

if.then.i5:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  store volatile i32 %reg, ptr %arrayidx.i11, align 4
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v3_0_emit_copy_buffer(ptr nocapture noundef %ib, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %byte_count, i1 noundef zeroext %tmz) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx, align 4
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %byte_count, ptr %arrayidx4, align 4
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc7 = add i32 %9, 1
  store i32 %inc7, ptr %length_dw, align 4
  %arrayidx8 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx8, align 4
  %conv = trunc i64 %src_offset to i32
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc11 = add i32 %12, 1
  store i32 %inc11, ptr %length_dw, align 4
  %arrayidx12 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx12, align 4
  %shr = lshr i64 %src_offset, 32
  %conv14 = trunc i64 %shr to i32
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %arrayidx18, align 4
  %conv20 = trunc i64 %dst_offset to i32
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc23 = add i32 %18, 1
  store i32 %inc23, ptr %length_dw, align 4
  %arrayidx24 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv20, ptr %arrayidx24, align 4
  %shr25 = lshr i64 %dst_offset, 32
  %conv27 = trunc i64 %shr25 to i32
  %20 = load ptr, ptr %ptr, align 8
  %21 = load i32, ptr %length_dw, align 4
  %inc30 = add i32 %21, 1
  store i32 %inc30, ptr %length_dw, align 4
  %arrayidx31 = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv27, ptr %arrayidx31, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v3_0_emit_fill_buffer(ptr nocapture noundef %ib, i32 noundef %src_data, i64 noundef %dst_offset, i32 noundef %byte_count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %arrayidx, align 4
  %conv = trunc i64 %dst_offset to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %dst_offset, 32
  %conv6 = trunc i64 %shr to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %arrayidx10, align 4
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, ptr %length_dw, align 4
  %arrayidx14 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %src_data, ptr %arrayidx14, align 4
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %byte_count, ptr %arrayidx18, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v3_0_vm_copy_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 3
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx, align 4
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %arrayidx4, align 4
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc7 = add i32 %9, 1
  store i32 %inc7, ptr %length_dw, align 4
  %arrayidx8 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx8, align 4
  %conv = trunc i64 %src to i32
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc11 = add i32 %12, 1
  store i32 %inc11, ptr %length_dw, align 4
  %arrayidx12 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx12, align 4
  %shr = lshr i64 %src, 32
  %conv14 = trunc i64 %shr to i32
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %arrayidx18, align 4
  %conv20 = trunc i64 %pe to i32
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc23 = add i32 %18, 1
  store i32 %inc23, ptr %length_dw, align 4
  %arrayidx24 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv20, ptr %arrayidx24, align 4
  %shr25 = lshr i64 %pe, 32
  %conv27 = trunc i64 %shr25 to i32
  %20 = load ptr, ptr %ptr, align 8
  %21 = load i32, ptr %length_dw, align 4
  %inc30 = add i32 %21, 1
  store i32 %inc30, ptr %length_dw, align 4
  %arrayidx31 = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv27, ptr %arrayidx31, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v3_0_vm_write_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %value, i32 noundef %count, i32 noundef %incr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 1
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %arrayidx, align 4
  %conv = trunc i64 %pe to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %pe, 32
  %conv6 = trunc i64 %shr to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %arrayidx10, align 4
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, ptr %length_dw, align 4
  %arrayidx14 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not46 = icmp eq i32 %mul, 0
  br i1 %cmp.not46, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv29 = zext i32 %incr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ndw.048 = phi i32 [ %mul, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %value.addr.047 = phi i64 [ %value, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %conv17 = trunc i64 %value.addr.047 to i32
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr, align 8
  %16 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length_dw, align 4
  %inc20 = add i32 %17, 1
  store i32 %inc20, ptr %length_dw, align 4
  %arrayidx21 = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv17, ptr %arrayidx21, align 4
  %shr22 = lshr i64 %value.addr.047, 32
  %conv24 = trunc i64 %shr22 to i32
  %19 = load ptr, ptr %ptr, align 8
  %20 = load i32, ptr %length_dw, align 4
  %inc27 = add i32 %20, 1
  store i32 %inc27, ptr %length_dw, align 4
  %arrayidx28 = getelementptr i32, ptr %19, i32 %20
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv24, ptr %arrayidx28, align 4
  %add = add i64 %value.addr.047, %conv29
  %sub = add i32 %ndw.048, -2
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v3_0_vm_set_pte_pde(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %arrayidx, align 4
  %conv = trunc i64 %pe to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %pe, 32
  %conv6 = trunc i64 %shr to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %arrayidx10, align 4
  %conv12 = trunc i64 %flags to i32
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc15 = add i32 %12, 1
  store i32 %inc15, ptr %length_dw, align 4
  %arrayidx16 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv12, ptr %arrayidx16, align 4
  %shr17 = lshr i64 %flags, 32
  %conv19 = trunc i64 %shr17 to i32
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc22 = add i32 %15, 1
  store i32 %inc22, ptr %length_dw, align 4
  %arrayidx23 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv19, ptr %arrayidx23, align 4
  %conv25 = trunc i64 %addr to i32
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc28 = add i32 %18, 1
  store i32 %inc28, ptr %length_dw, align 4
  %arrayidx29 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv25, ptr %arrayidx29, align 4
  %shr30 = lshr i64 %addr, 32
  %conv32 = trunc i64 %shr30 to i32
  %20 = load ptr, ptr %ptr, align 8
  %21 = load i32, ptr %length_dw, align 4
  %inc35 = add i32 %21, 1
  store i32 %inc35, ptr %length_dw, align 4
  %arrayidx36 = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv32, ptr %arrayidx36, align 4
  %23 = load ptr, ptr %ptr, align 8
  %24 = load i32, ptr %length_dw, align 4
  %inc39 = add i32 %24, 1
  store i32 %inc39, ptr %length_dw, align 4
  %arrayidx40 = getelementptr i32, ptr %23, i32 %24
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %incr, ptr %arrayidx40, align 4
  %26 = load ptr, ptr %ptr, align 8
  %27 = load i32, ptr %length_dw, align 4
  %inc43 = add i32 %27, 1
  store i32 %inc43, ptr %length_dw, align 4
  %arrayidx44 = getelementptr i32, ptr %26, i32 %27
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx44, align 4
  %29 = load ptr, ptr %ptr, align 8
  %30 = load i32, ptr %length_dw, align 4
  %inc47 = add i32 %30, 1
  store i32 %inc47, ptr %length_dw, align 4
  %arrayidx48 = getelementptr i32, ptr %29, i32 %30
  %31 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %count, ptr %arrayidx48, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_set_trap_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %type, label %entry.sw.epilog18_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.sw.epilog18_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %state, label %sw.bb.sw.epilog18_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
  ]

sw.bb.sw.epilog18_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13316, i32 noundef 0) #12
  %and = and i32 %call, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13316, i32 noundef %and, i32 noundef 0) #12
  br label %sw.epilog18

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13316, i32 noundef 0) #12
  %or5 = or i32 %call3, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13316, i32 noundef %or5, i32 noundef 0) #12
  br label %sw.epilog18

sw.bb6:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %state, label %sw.bb6.sw.epilog18_crit_edge [
    i32 0, label %sw.bb7
    i32 1, label %sw.bb11
  ]

sw.bb6.sw.epilog18_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb7:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13828, i32 noundef 0) #12
  %and9 = and i32 %call8, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13828, i32 noundef %and9, i32 noundef 0) #12
  br label %sw.epilog18

sw.bb11:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13828, i32 noundef 0) #12
  %or14 = or i32 %call12, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13828, i32 noundef %or14, i32 noundef 0) #12
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb11, %sw.bb7, %sw.bb6.sw.epilog18_crit_edge, %sw.bb2, %sw.bb1, %sw.bb.sw.epilog18_crit_edge, %entry.sw.epilog18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_process_trap_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id, align 4
  %conv = and i32 %1, 3
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 2
  %conv5 = and i8 %3, 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %conv, label %entry.sw.epilog18_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

entry.sw.epilog18_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5)
  %cond19 = icmp eq i8 %conv5, 0
  br i1 %cond19, label %sw.bb8, label %sw.bb.sw.epilog18_crit_edge

sw.bb.sw.epilog18_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  br label %sw.epilog18.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv5)
  %cond = icmp eq i8 %conv5, 0
  br i1 %cond, label %sw.bb11, label %sw.bb9.sw.epilog18_crit_edge

sw.bb9.sw.epilog18_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog18

sw.bb11:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %ring15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  br label %sw.epilog18.sink.split

sw.epilog18.sink.split:                           ; preds = %sw.bb11, %sw.bb8
  %ring15.sink = phi ptr [ %ring15, %sw.bb11 ], [ %ring, %sw.bb8 ]
  %call16 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring15.sink) #12
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.epilog18.sink.split, %sw.bb9.sw.epilog18_crit_edge, %sw.bb.sw.epilog18_crit_edge, %entry.sw.epilog18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v3_0_process_illegal_inst_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_id, align 4
  %conv = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv)
  %cmp = icmp ult i32 %conv, 2
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9 = icmp eq i32 %2, 0
  %or.cond = and i1 %cmp, %cmp9
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %sched = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %conv, i32 3, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v3_0_ctx_switch_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %0 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %while.cond.preheader

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %0)
  %cmp86 = icmp ugt i32 %0, 65535
  br i1 %cmp86, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end37_crit_edge

while.cond.preheader.if.end37_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %unit.088 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %value.087 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %0, %while.cond.preheader.while.body_crit_edge ]
  %add = add i32 %value.087, 1
  %shr = lshr i32 %add, 1
  %inc = add i32 %unit.088, 1
  %cmp = icmp ugt i32 %add, 131071
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp1 = icmp ugt i32 %inc, 15
  br i1 %cmp1, label %land.end, label %while.end.if.end37_crit_edge

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.end:                                         ; preds = %while.end
  %.b85 = load i1, ptr @sdma_v3_0_ctx_switch_enable.__already_done, align 1
  br i1 %.b85, label %land.end.if.end37_crit_edge, label %if.then8, !prof !132

land.end.if.end37_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sdma_v3_0_ctx_switch_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 580, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef 2147450880) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then8, %land.end.if.end37_crit_edge, %while.end.if.end37_crit_edge, %while.cond.preheader.if.end37_crit_edge
  %value.1 = phi i32 [ %shr, %while.end.if.end37_crit_edge ], [ 65535, %if.then8 ], [ 65535, %land.end.if.end37_crit_edge ], [ %0, %while.cond.preheader.if.end37_crit_edge ]
  %unit.1 = phi i32 [ %inc, %while.end.if.end37_crit_edge ], [ 15, %if.then8 ], [ 15, %land.end.if.end37_crit_edge ], [ 0, %while.cond.preheader.if.end37_crit_edge ]
  %shl38 = shl nuw nsw i32 %value.1, 8
  %or = or i32 %shl38, %unit.1
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %entry.if.end40_crit_edge
  %phase_quantum.0 = phi i32 [ %or, %if.end37 ], [ 0, %entry.if.end40_crit_edge ]
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %1 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4190 = icmp sgt i32 %2, 0
  br i1 %cmp4190, label %if.end40.for.body_crit_edge, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

for.body:                                         ; preds = %if.end59.for.body_crit_edge, %if.end40.for.body_crit_edge
  %i.091 = phi i32 [ %inc62, %if.end59.for.body_crit_edge ], [ 0, %if.end40.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.091
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add42 = add i32 %4, 13316
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add42, i32 noundef 0) #12
  %or45 = and i32 %call, -262147
  br i1 %enable, label %if.then44, label %for.body.if.end59_crit_edge

for.body.if.end59_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then44:                                        ; preds = %for.body
  %and46 = or i32 %or45, 262144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %5 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool48.not = icmp eq i32 %5, 0
  br i1 %tobool48.not, label %if.then44.if.end59_crit_edge, label %if.then49

if.then44.if.end59_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %add51 = add i32 %4, 13332
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add51, i32 noundef %phase_quantum.0, i32 noundef 0) #12
  %add53 = add i32 %4, 13333
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53, i32 noundef %phase_quantum.0, i32 noundef 0) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then49, %if.then44.if.end59_crit_edge, %for.body.if.end59_crit_edge
  %f32_cntl.0.in = phi i32 [ %and46, %if.then49 ], [ %and46, %if.then44.if.end59_crit_edge ], [ %or45, %for.body.if.end59_crit_edge ]
  %f32_cntl.0 = or i32 %f32_cntl.0.in, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add42, i32 noundef %f32_cntl.0, i32 noundef 0) #12
  %inc62 = add nuw nsw i32 %i.091, 1
  %6 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances, align 4
  %cmp41 = icmp slt i32 %inc62, %7
  br i1 %cmp41, label %if.end59.for.body_crit_edge, label %if.end59.for.end_crit_edge

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end59.for.end_crit_edge, %if.end40.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v3_0_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %0 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp.i = icmp eq ptr %1, %ring.i
  %ring5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  %cmp8.i = icmp eq ptr %1, %ring5.i
  %or.cond.i = or i1 %cmp.i, %cmp8.i
  br i1 %or.cond.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext false) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %2 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1037.i = icmp sgt i32 %3, 0
  br i1 %cmp1037.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx11.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.038.i
  %4 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11.i, align 4
  %add.i = add i32 %5, 13440
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = and i32 %call.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef %and.i, i32 noundef 0) #12
  %add15.i = add i32 %5, 13450
  %call16.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add15.i, i32 noundef 0) #12
  %and17.i = and i32 %call16.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i, i32 noundef %and17.i, i32 noundef 0) #12
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %6 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %7
  br i1 %cmp10.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %8 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18 = icmp sgt i32 %9, 0
  br i1 %cmp18, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %not.enable = xor i1 %enable, true
  %masksel = zext i1 %not.enable to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.019
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, 13330
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #12
  %and = and i32 %call, -2
  %f32_cntl.0 = or i32 %and, %masksel
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef %f32_cntl.0, i32 noundef 0) #12
  %inc = add nuw nsw i32 %i.019, 1
  %12 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdma_v3_0_gfx_resume(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp296 = icmp sgt i32 %1, 0
  br i1 %cmp296, label %for.body.lr.ph, label %entry.sdma_v3_0_enable.exit_crit_edge

entry.sdma_v3_0_enable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_enable.exit

for.body.lr.ph:                                   ; preds = %entry
  %srbm_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 20
  %gb_addr_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 23
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 70, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end133.for.body_crit_edge, %for.body.lr.ph
  %i.0297 = phi i32 [ 0, %for.body.lr.ph ], [ %inc150, %if.end133.for.body_crit_edge ]
  %buf_mask.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 14
  %funcs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 1
  %ring1.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body
  %i.05.i = phi i32 [ 0, %for.body ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs.i, align 4
  %nop.i = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nop.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nop.i, align 4
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %inc.i = add i32 %i.05.i, 1
  %arrayidx.i = getelementptr i32, ptr %7, i32 %i.05.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %5, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_mask.i, align 8
  %cmp.not.i = icmp ugt i32 %inc.i, %10
  br i1 %cmp.not.i, label %amdgpu_ring_clear_ring.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

amdgpu_ring_clear_ring.exit:                      ; preds = %while.body.i
  %rptr_offs = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 6
  %11 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rptr_offs, align 8
  tail call void @mutex_lock_nested(ptr noundef %srbm_mutex, i32 noundef 0) #12
  %arrayidx6 = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.0297
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %amdgpu_ring_clear_ring.exit
  %j.0295 = phi i32 [ 0, %amdgpu_ring_clear_ring.exit ], [ %inc, %for.body5.for.body5_crit_edge ]
  tail call void @vi_srbm_select(ptr noundef %adev, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %j.0295) #12
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6, align 4
  %add = add i32 %14, 13479
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 0) #12
  %add8 = add i32 %14, 13480
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add8, i32 noundef 0, i32 noundef 0) #12
  %inc = add nuw nsw i32 %j.0295, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

for.end:                                          ; preds = %for.body5
  %ring2 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3
  %mul = shl i32 %12, 2
  tail call void @vi_srbm_select(ptr noundef %adev, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %srbm_mutex) #12
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6, align 4
  %add11 = add i32 %16, 13318
  %17 = ptrtoint ptr %gb_addr_config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gb_addr_config, align 4
  %and = and i32 %18, 112
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add11, i32 noundef %and, i32 noundef 0) #12
  %add13 = add i32 %16, 13321
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add13, i32 noundef 0, i32 noundef 0) #12
  %ring_size = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 9
  %19 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring_size, align 8
  %div287 = lshr i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp.i = icmp ugt i32 %20, 7
  %sub.i288 = add nsw i32 %div287, -1
  %21 = tail call i32 @llvm.ctlz.i32(i32 %sub.i288, i1 false) #12, !range !134
  %add50 = add i32 %16, 13440
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50, i32 noundef 0) #12
  %and52 = and i32 %call51, -8767
  %.neg = mul nuw nsw i32 %21, 62
  %.neg.op = and i32 %.neg, 62
  %and53 = select i1 %cmp.i, i32 %.neg.op, i32 0
  %or = or i32 %and52, %and53
  %or57 = or i32 %or, 8704
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add50, i32 noundef %or57, i32 noundef 0) #12
  %wptr = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 7
  %22 = ptrtoint ptr %wptr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %wptr, align 8
  %add61 = add i32 %16, 13443
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add61, i32 noundef 0, i32 noundef 0) #12
  %23 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring2, align 8
  %use_doorbell.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 24
  %25 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_doorbell.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %wb3.i = getelementptr inbounds %struct.amdgpu_device, ptr %24, i32 0, i32 70, i32 1
  %27 = ptrtoint ptr %wb3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wb3.i, align 4
  %wptr_offs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 26
  %29 = ptrtoint ptr %wptr_offs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wptr_offs.i, align 8
  %arrayidx.i289 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wptr, align 8
  %conv.i = trunc i64 %32 to i32
  %shl.i = shl i32 %conv.i, 2
  %33 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %shl.i, ptr %arrayidx.i289, align 4
  %doorbell_index.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 23
  %34 = ptrtoint ptr %doorbell_index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %doorbell_index.i, align 8
  %36 = load i64, ptr %wptr, align 8
  %conv12.i = trunc i64 %36 to i32
  %shl13.i = shl i32 %conv12.i, 2
  tail call void @amdgpu_mm_wdoorbell(ptr noundef %24, i32 noundef %35, i32 noundef %shl13.i) #12
  br label %sdma_v3_0_ring_set_wptr.exit

if.else.i:                                        ; preds = %for.end
  %use_pollmem.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 25
  %37 = ptrtoint ptr %use_pollmem.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %use_pollmem.i, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool14.not.i = icmp eq i8 %38, 0
  br i1 %tobool14.not.i, label %if.else34.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %wb18.i = getelementptr inbounds %struct.amdgpu_device, ptr %24, i32 0, i32 70, i32 1
  %39 = ptrtoint ptr %wb18.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wb18.i, align 4
  %wptr_offs19.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 26
  %41 = ptrtoint ptr %wptr_offs19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wptr_offs19.i, align 8
  %arrayidx20.i = getelementptr i32, ptr %40, i32 %42
  %43 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr, align 8
  %conv28.i = trunc i64 %44 to i32
  %shl29.i = shl i32 %conv28.i, 2
  %45 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %shl29.i, ptr %arrayidx20.i, align 4
  br label %sdma_v3_0_ring_set_wptr.exit

if.else34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %me.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 16
  %46 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %me.i, align 8
  %arrayidx35.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx35.i, align 4
  %add.i290 = add i32 %49, 13444
  %50 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %wptr, align 8
  %conv38.i = trunc i64 %51 to i32
  %shl39.i = shl i32 %conv38.i, 2
  tail call void @amdgpu_device_wreg(ptr noundef %24, i32 noundef %add.i290, i32 noundef %shl39.i, i32 noundef 0) #12
  br label %sdma_v3_0_ring_set_wptr.exit

sdma_v3_0_ring_set_wptr.exit:                     ; preds = %if.else34.i, %if.then15.i, %if.then.i
  %add63 = add i32 %16, 13451
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add63, i32 noundef 0, i32 noundef 0) #12
  %add65 = add i32 %16, 13452
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add65, i32 noundef 0, i32 noundef 0) #12
  %add67 = add i32 %16, 13448
  %52 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %gpu_addr, align 8
  %conv68 = zext i32 %mul to i64
  %add69 = add i64 %53, %conv68
  %shr = lshr i64 %add69, 32
  %conv71 = trunc i64 %shr to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add67, i32 noundef %conv71, i32 noundef 0) #12
  %add74 = add i32 %16, 13449
  %54 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gpu_addr, align 8
  %56 = trunc i64 %55 to i32
  %conv80 = add i32 %mul, %56
  %and81 = and i32 %conv80, -4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add74, i32 noundef %and81, i32 noundef 0) #12
  %add85 = add i32 %16, 13441
  %gpu_addr86 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 12
  %57 = ptrtoint ptr %gpu_addr86 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %gpu_addr86, align 8
  %shr87 = lshr i64 %58, 8
  %conv88 = trunc i64 %shr87 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add85, i32 noundef %conv88, i32 noundef 0) #12
  %add90 = add i32 %16, 13442
  %59 = ptrtoint ptr %gpu_addr86 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %gpu_addr86, align 8
  %shr92 = lshr i64 %60, 40
  %conv93 = trunc i64 %shr92 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add90, i32 noundef %conv93, i32 noundef 0) #12
  %add95 = add i32 %16, 13458
  %call96 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add95, i32 noundef 0) #12
  %61 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %use_doorbell.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not = icmp eq i8 %62, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sdma_v3_0_ring_set_wptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and97 = and i32 %call96, -270532608
  %doorbell_index = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 23
  %63 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %doorbell_index, align 8
  %and99 = and i32 %64, 2097151
  %or100 = or i32 %and97, %and99
  %or102 = or i32 %or100, 268435456
  br label %if.end

if.else:                                          ; preds = %sdma_v3_0_ring_set_wptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and103 = and i32 %call96, -268435457
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %doorbell.0 = phi i32 [ %or102, %if.then ], [ %and103, %if.else ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add95, i32 noundef %doorbell.0, i32 noundef 0) #12
  %65 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %gpu_addr, align 8
  %wptr_offs = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 26
  %67 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wptr_offs, align 8
  %mul109 = shl i32 %68, 2
  %conv110 = zext i32 %mul109 to i64
  %add111 = add i64 %66, %conv110
  %add113 = add i32 %16, 13447
  %conv115 = trunc i64 %add111 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add113, i32 noundef %conv115, i32 noundef 0) #12
  %add117 = add i32 %16, 13446
  %shr118 = lshr i64 %add111, 32
  %conv120 = trunc i64 %shr118 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add117, i32 noundef %conv120, i32 noundef 0) #12
  %add122 = add i32 %16, 13445
  %call123 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add122, i32 noundef 0) #12
  %use_pollmem = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 25
  %69 = ptrtoint ptr %use_pollmem to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %use_pollmem, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool124.not = icmp eq i8 %70, 0
  br i1 %tobool124.not, label %if.else130, label %if.then125

if.then125:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add127 = add i32 %16, 13444
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add127, i32 noundef 0, i32 noundef 0) #12
  %or129 = or i32 %call123, 1
  br label %if.end133

if.else130:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and131 = and i32 %call123, -2
  br label %if.end133

if.end133:                                        ; preds = %if.else130, %if.then125
  %wptr_poll_cntl.0 = phi i32 [ %or129, %if.then125 ], [ %and131, %if.else130 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add122, i32 noundef %wptr_poll_cntl.0, i32 noundef 0) #12
  %or137 = or i32 %or, 12801
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add50, i32 noundef %or137, i32 noundef 0) #12
  %add141 = add i32 %16, 13450
  %call142 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add141, i32 noundef 0) #12
  %or146 = or i32 %call142, 17
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add141, i32 noundef %or146, i32 noundef 0) #12
  %ready = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0297, i32 3, i32 3, i32 17
  %71 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %ready, align 4
  %inc150 = add nuw nsw i32 %i.0297, 1
  %72 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc150, %73
  br i1 %cmp, label %if.end133.for.body_crit_edge, label %for.end151

if.end133.for.body_crit_edge:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end151:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp18.i = icmp sgt i32 %73, 0
  br i1 %cmp18.i, label %for.end151.for.body.i_crit_edge, label %for.end151.sdma_v3_0_enable.exit_crit_edge

for.end151.sdma_v3_0_enable.exit_crit_edge:       ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_enable.exit

for.end151.for.body.i_crit_edge:                  ; preds = %for.end151
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end151.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i293, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end151.for.body.i_crit_edge ]
  %arrayidx.i291 = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.019.i
  %74 = ptrtoint ptr %arrayidx.i291 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i291, align 4
  %add.i292 = add i32 %75, 13330
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add.i292, i32 noundef 0) #12
  %and.i = and i32 %call.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i292, i32 noundef %and.i, i32 noundef 0) #12
  %inc.i293 = add nuw nsw i32 %i.019.i, 1
  %76 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_instances, align 4
  %cmp.i294 = icmp slt i32 %inc.i293, %77
  br i1 %cmp.i294, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sdma_v3_0_enable.exit_crit_edge

for.body.i.sdma_v3_0_enable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sdma_v3_0_enable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

sdma_v3_0_enable.exit:                            ; preds = %for.body.i.sdma_v3_0_enable.exit_crit_edge, %for.end151.sdma_v3_0_enable.exit_crit_edge, %entry.sdma_v3_0_enable.exit_crit_edge
  tail call fastcc void @sdma_v3_0_ctx_switch_enable(ptr noundef %adev, i1 noundef zeroext true)
  %78 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp155302 = icmp sgt i32 %79, 0
  br i1 %cmp155302, label %for.body157.lr.ph, label %sdma_v3_0_enable.exit.cleanup_crit_edge

sdma_v3_0_enable.exit.cleanup_crit_edge:          ; preds = %sdma_v3_0_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body157.lr.ph:                                ; preds = %sdma_v3_0_enable.exit
  %buffer_funcs_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  br label %for.body157

for.body157:                                      ; preds = %for.inc170.for.body157_crit_edge, %for.body157.lr.ph
  %i.1303 = phi i32 [ 0, %for.body157.lr.ph ], [ %inc171, %for.inc170.for.body157_crit_edge ]
  %ring161 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.1303, i32 3
  %call162 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring161) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %for.body157.cleanup_crit_edge

for.body157.cleanup_crit_edge:                    ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end165:                                        ; preds = %for.body157
  %80 = ptrtoint ptr %buffer_funcs_ring to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer_funcs_ring, align 4
  %cmp166 = icmp eq ptr %81, %ring161
  br i1 %cmp166, label %if.then168, label %if.end165.for.inc170_crit_edge

if.end165.for.inc170_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc170

if.then168:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext true) #12
  br label %for.inc170

for.inc170:                                       ; preds = %if.then168, %if.end165.for.inc170_crit_edge
  %inc171 = add nuw nsw i32 %i.1303, 1
  %82 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_instances, align 4
  %cmp155 = icmp slt i32 %inc171, %83
  br i1 %cmp155, label %for.inc170.for.body157_crit_edge, label %for.inc170.cleanup_crit_edge

for.inc170.cleanup_crit_edge:                     ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc170.for.body157_crit_edge:                 ; preds = %for.inc170
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body157

cleanup:                                          ; preds = %for.inc170.cleanup_crit_edge, %for.body157.cleanup_crit_edge, %sdma_v3_0_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sdma_v3_0_enable.exit.cleanup_crit_edge ], [ 0, %for.inc170.cleanup_crit_edge ], [ %call162, %for.body157.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vi_srbm_select(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !114, !115, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__UNIQUE_ID_firmware390, !1, !"__UNIQUE_ID_firmware390", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware391, !3, !"__UNIQUE_ID_firmware391", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 58, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware392, !5, !"__UNIQUE_ID_firmware392", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 59, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware393, !7, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 60, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware394, !9, !"__UNIQUE_ID_firmware394", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 61, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware395, !11, !"__UNIQUE_ID_firmware395", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 62, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware396, !13, !"__UNIQUE_ID_firmware396", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 63, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware397, !15, !"__UNIQUE_ID_firmware397", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 64, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware398, !17, !"__UNIQUE_ID_firmware398", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 65, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware399, !19, !"__UNIQUE_ID_firmware399", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 66, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware400, !21, !"__UNIQUE_ID_firmware400", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 67, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware401, !23, !"__UNIQUE_ID_firmware401", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 68, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware402, !25, !"__UNIQUE_ID_firmware402", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 69, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware403, !27, !"__UNIQUE_ID_firmware403", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 70, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware404, !29, !"__UNIQUE_ID_firmware404", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 71, i32 1}
!30 = !{ptr @sdma_v3_0_ip_block, !31, !"sdma_v3_0_ip_block", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1718, i32 38}
!32 = !{ptr @sdma_v3_1_ip_block, !33, !"sdma_v3_1_ip_block", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1727, i32 38}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1558, i32 10}
!36 = !{ptr @sdma_v3_0_ip_funcs, !37, !"sdma_v3_0_ip_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1557, i32 34}
!38 = !{ptr @sdma_v3_0_ring_funcs, !39, !"sdma_v3_0_ring_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1578, i32 39}
!40 = !{ptr @sdma_offsets, !41, !"sdma_offsets", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 74, i32 18}
!42 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!44 = !{ptr @sdma_v3_0_buffer_funcs, !45, !"sdma_v3_0_buffer_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1682, i32 41}
!46 = !{ptr @sdma_v3_0_vm_pte_funcs, !47, !"sdma_v3_0_vm_pte_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1698, i32 41}
!48 = !{ptr @sdma_v3_0_trap_irq_funcs, !49, !"sdma_v3_0_trap_irq_funcs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1615, i32 42}
!50 = !{ptr @.str.2, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1397, i32 2}
!52 = !{ptr @sdma_v3_0_illegal_inst_irq_funcs, !53, !"sdma_v3_0_illegal_inst_irq_funcs", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1620, i32 42}
!54 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1435, i32 2}
!56 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1148, i32 3}
!58 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1162, i32 23}
!60 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 277, i32 2}
!62 = !{ptr @.str.7, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 281, i32 15}
!64 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 284, i32 15}
!66 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 287, i32 15}
!68 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 290, i32 15}
!70 = !{ptr @.str.11, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 293, i32 15}
!72 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 296, i32 15}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 299, i32 15}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 302, i32 15}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 309, i32 39}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 311, i32 39}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 334, i32 3}
!84 = !{ptr @.str.18, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sdma_v3_0_init_microcode._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @sdma_v3_0_init_microcode._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @fiji_mgcg_cgcg_init, !89, !"fiji_mgcg_cgcg_init", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 112, i32 18}
!90 = !{ptr @golden_settings_fiji_a10, !91, !"golden_settings_fiji_a10", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 100, i32 18}
!92 = !{ptr @tonga_mgcg_cgcg_init, !93, !"tonga_mgcg_cgcg_init", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 94, i32 18}
!94 = !{ptr @golden_settings_tonga_a11, !95, !"golden_settings_tonga_a11", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 80, i32 18}
!96 = !{ptr @golden_settings_polaris11_a11, !97, !"golden_settings_polaris11_a11", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 118, i32 18}
!98 = !{ptr @golden_settings_polaris10_a11, !99, !"golden_settings_polaris10_a11", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 132, i32 18}
!100 = !{ptr @cz_mgcg_cgcg_init, !101, !"cz_mgcg_cgcg_init", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 162, i32 18}
!102 = !{ptr @cz_golden_settings_a11, !103, !"cz_golden_settings_a11", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 146, i32 18}
!104 = !{ptr @stoney_mgcg_cgcg_init, !105, !"stoney_mgcg_cgcg_init", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 176, i32 18}
!106 = !{ptr @stoney_golden_settings_a11, !107, !"stoney_golden_settings_a11", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 168, i32 18}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 578, i32 4}
!110 = !{ptr @.str.20, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.21, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c", i32 1326, i32 3}
!113 = !{ptr @.str.22, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.23, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.24, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @sdma_v3_0_soft_reset._entry, !112, !"_entry", i1 false, i1 false}
!117 = !{ptr @sdma_v3_0_soft_reset._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2163173791, i64 2163174294, i64 2163173828, i64 2163173884, i64 2163173918, i64 2163173942, i64 2163173983, i64 2163174004, i64 2163174032, i64 2163174066}
!128 = !{i8 0, i8 2}
!129 = !{!"auto-init"}
!130 = !{i64 2148326609}
!131 = !{i64 2148241073, i64 2148241105, i64 2148241134, i64 2148241168, i64 2148241199, i64 2148241222}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2149605327}
!134 = !{i32 0, i32 33}
