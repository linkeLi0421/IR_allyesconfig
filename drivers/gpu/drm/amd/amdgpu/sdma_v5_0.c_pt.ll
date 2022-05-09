; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_buffer_funcs = type { i32, i32, ptr, i32, i32, ptr }
%struct.amdgpu_vm_pte_funcs = type { i32, ptr, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.soc15_reg_golden = type { i32, i32, i32, i32, i32, i32 }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nbio_hdp_flush_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@__UNIQUE_ID_firmware390 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/navi10_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware391 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/navi10_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware392 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/navi14_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware393 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/navi14_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware394 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/navi12_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware395 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/navi12_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware396 = internal constant [47 x i8] c"amdgpu.firmware=amdgpu/cyan_skillfish_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware397 = internal constant [48 x i8] c"amdgpu.firmware=amdgpu/cyan_skillfish_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware398 = internal constant [48 x i8] c"amdgpu.firmware=amdgpu/cyan_skillfish2_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware399 = internal constant [49 x i8] c"amdgpu.firmware=amdgpu/cyan_skillfish2_sdma1.bin\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma_v5_0\00", [22 x i8] zeroinitializer }, align 32
@sdma_v5_0_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @sdma_v5_0_early_init, ptr null, ptr @sdma_v5_0_sw_init, ptr @sdma_v5_0_sw_fini, ptr null, ptr @sdma_v5_0_hw_init, ptr @sdma_v5_0_hw_fini, ptr null, ptr @sdma_v5_0_suspend, ptr @sdma_v5_0_resume, ptr @sdma_v5_0_is_idle, ptr @sdma_v5_0_wait_for_idle, ptr null, ptr null, ptr @sdma_v5_0_soft_reset, ptr null, ptr @sdma_v5_0_set_clockgating_state, ptr @sdma_v5_0_set_powergating_state, ptr @sdma_v5_0_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@sdma_v5_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 7, i32 5, i32 0, i32 0, ptr @sdma_v5_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@sdma_v5_0_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 0, i8 1, i8 0, i32 0, i32 0, ptr @sdma_v5_0_ring_get_rptr, ptr @sdma_v5_0_ring_get_wptr, ptr @sdma_v5_0_ring_set_wptr, ptr null, ptr null, i32 104, i32 18, ptr @sdma_v5_0_ring_emit_ib, ptr @sdma_v5_0_ring_emit_fence, ptr @sdma_v5_0_ring_emit_pipeline_sync, ptr @sdma_v5_0_ring_emit_vm_flush, ptr @sdma_v5_0_ring_emit_hdp_flush, ptr null, ptr @sdma_v5_0_ring_test_ring, ptr @sdma_v5_0_ring_test_ib, ptr @sdma_v5_0_ring_insert_nop, ptr null, ptr null, ptr @sdma_v5_0_ring_pad_ib, ptr @sdma_v5_0_ring_init_cond_exec, ptr @sdma_v5_0_ring_patch_cond_exec, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdma_v5_0_ring_emit_wreg, ptr @sdma_v5_0_ring_emit_reg_wait, ptr @sdma_v5_0_ring_emit_reg_write_reg_wait, ptr null, ptr null, ptr @sdma_v5_0_ring_preempt_ib, ptr @sdma_v5_0_ring_emit_mem_sync, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rptr before shift == 0x%016llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wptr/doorbell before shift == 0x%016llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wptr before shift [%i] wptr == 0x%016llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting write pointer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"Using doorbell -- wptr_offs == 0x%08x lower_32_bits(ring->wptr) << 2 == 0x%08x upper_32_bits(ring->wptr) << 2 == 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"calling WDOORBELL64(0x%08x, 0x%016llx)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Not using doorbell -- mmSDMA%i_GFX_RB_WPTR == 0x%08x mmSDMA%i_GFX_RB_WPTR_HI == 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@sdma_v5_0_ring_test_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 990, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: (%d) failed to allocate wb slot\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdma_v5_0_ring_test_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdma_v5_0_ring_test_ring._entry_ptr = internal global ptr @sdma_v5_0_ring_test_ring._entry, section ".printk_index", align 4
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: dma failed to lock ring %d (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_emu_mode = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdma_v5_0_ring_test_ib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.11, i32 1052, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: (%ld) failed to allocate wb slot\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdma_v5_0_ring_test_ib\00", [41 x i8] zeroinitializer }, align 32
@sdma_v5_0_ring_test_ib._entry_ptr = internal global ptr @sdma_v5_0_ring_test_ib._entry, section ".printk_index", align 4
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: failed to get ib (%ld).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: IB test timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: fence wait failed (%ld).\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ring %d failed to be preempted\0A\00", [32 x i8] zeroinitializer }, align 32
@sdma_v5_0_buffer_funcs = internal constant { %struct.amdgpu_buffer_funcs, [40 x i8] } { %struct.amdgpu_buffer_funcs { i32 4194304, i32 7, ptr @sdma_v5_0_emit_copy_buffer, i32 4194304, i32 5, ptr @sdma_v5_0_emit_fill_buffer }, [40 x i8] zeroinitializer }, align 32
@sdma_v5_0_vm_pte_funcs = internal constant { %struct.amdgpu_vm_pte_funcs, [16 x i8] } { %struct.amdgpu_vm_pte_funcs { i32 7, ptr @sdma_v5_0_vm_copy_pte, ptr @sdma_v5_0_vm_write_pte, ptr @sdma_v5_0_vm_set_pte_pde }, [16 x i8] zeroinitializer }, align 32
@sdma_v5_0_trap_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @sdma_v5_0_set_trap_irq_state, ptr @sdma_v5_0_process_trap_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v5_0_illegal_inst_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @sdma_v5_0_process_illegal_inst_irq }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: SDMA trap\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to load sdma firmware!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SDMA %d use_doorbell being set to: [%s]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdma%d\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"navi10\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"navi14\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"navi12\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cyan_skillfish2\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cyan_skillfish\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu/%s_sdma.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu/%s_sdma1.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"psp_load == '%s'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sdma_v5_0: Failed to load firmware \22%s\22\0A\00", [55 x i8] zeroinitializer }, align 32
@golden_settings_sdma_5 = internal constant { [24 x %struct.soc15_reg_golden], [128 x i8] } { [24 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 29, i32 -4251889, i32 61538567 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 135, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 231, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 327, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 423, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 519, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 615, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 711, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 807, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 903, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 999, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 72, i32 16777215, i32 809984 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1565, i32 -4251889, i32 61538567 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1671, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1767, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1863, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1959, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2055, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2151, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2247, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2343, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2439, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2535, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1608, i32 16777215, i32 809984 }], [128 x i8] zeroinitializer }, align 32
@golden_settings_sdma_nv10 = internal constant { [2 x %struct.soc15_reg_golden], [48 x i8] } { [2 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 615, i32 65520, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2151, i32 65520, i32 4206592 }], [48 x i8] zeroinitializer }, align 32
@golden_settings_sdma_nv14 = internal constant { [2 x %struct.soc15_reg_golden], [48 x i8] } { [2 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 615, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2151, i32 -9, i32 4206592 }], [48 x i8] zeroinitializer }, align 32
@golden_settings_sdma_5_sriov = internal constant { [20 x %struct.soc15_reg_golden], [96 x i8] } { [20 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 135, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 231, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 327, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 423, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 519, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 615, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 711, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 807, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 903, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 999, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1671, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1767, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1863, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1959, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2055, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2151, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2247, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2343, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2439, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2535, i32 -9, i32 4206592 }], [96 x i8] zeroinitializer }, align 32
@golden_settings_sdma_nv12 = internal constant { [6 x %struct.soc15_reg_golden], [48 x i8] } { [6 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 615, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 30, i32 1603583, i32 68 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 31, i32 1603583, i32 68 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1566, i32 1603583, i32 68 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1567, i32 1603583, i32 68 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2151, i32 -9, i32 4206592 }], [48 x i8] zeroinitializer }, align 32
@golden_settings_sdma_cyan_skillfish = internal constant { [28 x %struct.soc15_reg_golden], [160 x i8] } { [28 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 29, i32 -4251889, i32 61538567 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 30, i32 1603583, i32 68 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 31, i32 1603583, i32 68 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 135, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 231, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 327, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 423, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 519, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 615, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 711, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 807, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 903, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 999, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 72, i32 8388607, i32 5004288 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1565, i32 -4251889, i32 61538567 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1566, i32 1603583, i32 68 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1567, i32 1603583, i32 68 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1671, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1767, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1863, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1959, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2055, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2151, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2247, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2343, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2439, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 2535, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 1, i32 0, i32 0, i32 1608, i32 8388607, i32 5004288 }], [160 x i8] zeroinitializer }, align 32
@amdgpu_sdma_phase_quantum = external dso_local local_unnamed_addr global i32, align 4
@sdma_v5_0_ctx_switch_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"clamping sdma_phase_quantum to %uK clock cycles\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 327680, i64 327681, i64 327682, i64 327685]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 327680, i64 327681, i64 327682, i64 327685]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 327680, i64 327682, i64 327685]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1677, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"sdma_v5_0_ip_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1676, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"sdma_v5_0_ip_block\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1849, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"sdma_v5_0_ring_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1694, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 358, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 377, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 382, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 399, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 401, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 411, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 415, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 314, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 990, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1000, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1052, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1063, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1084, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1088, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1484, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"sdma_v5_0_buffer_funcs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1810, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"sdma_v5_0_vm_pte_funcs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1828, i32 41 }
@___asan_gen_.125 = private unnamed_addr constant [25 x i8] c"sdma_v5_0_trap_irq_funcs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1741, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant [33 x i8] c"sdma_v5_0_illegal_inst_irq_funcs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1746, i32 42 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1520, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1327, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1336, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1343, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 254, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 258, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 261, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 264, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 268, i32 16 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 270, i32 16 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 278, i32 39 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 280, i32 39 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 292, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 306, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [23 x i8] c"golden_settings_sdma_5\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 70, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"golden_settings_sdma_nv10\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 120, i32 38 }
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"golden_settings_sdma_nv14\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 125, i32 38 }
@___asan_gen_.188 = private unnamed_addr constant [29 x i8] c"golden_settings_sdma_5_sriov\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 97, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"golden_settings_sdma_nv12\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 130, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant [36 x i8] c"golden_settings_sdma_cyan_skillfish\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 139, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 646, i32 4 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_firmware390, ptr @__UNIQUE_ID_firmware391, ptr @__UNIQUE_ID_firmware392, ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_firmware394, ptr @__UNIQUE_ID_firmware395, ptr @__UNIQUE_ID_firmware396, ptr @__UNIQUE_ID_firmware397, ptr @__UNIQUE_ID_firmware398, ptr @__UNIQUE_ID_firmware399, ptr @sdma_v5_0_ring_test_ib._entry, ptr @sdma_v5_0_ring_test_ib._entry_ptr, ptr @sdma_v5_0_ring_test_ring._entry, ptr @sdma_v5_0_ring_test_ring._entry_ptr, ptr @.str, ptr @sdma_v5_0_ip_funcs, ptr @sdma_v5_0_ip_block, ptr @sdma_v5_0_ring_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @sdma_v5_0_buffer_funcs, ptr @sdma_v5_0_vm_pte_funcs, ptr @sdma_v5_0_trap_irq_funcs, ptr @sdma_v5_0_illegal_inst_irq_funcs, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @golden_settings_sdma_5, ptr @golden_settings_sdma_nv10, ptr @golden_settings_sdma_nv14, ptr @golden_settings_sdma_5_sriov, ptr @golden_settings_sdma_nv12, ptr @golden_settings_sdma_cyan_skillfish, ptr @.str.37], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_ring_test_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_ring_test_ib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_buffer_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_vm_pte_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_trap_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_0_illegal_inst_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_5 to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_nv10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_nv14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_5_sriov to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_nv12 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_cyan_skillfish to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.i = icmp sgt i32 %1, 0
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %entry.sdma_v5_0_set_ring_funcs.exit_crit_edge

entry.sdma_v5_0_set_ring_funcs.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_set_ring_funcs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %funcs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.013.i, i32 3, i32 1
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sdma_v5_0_ring_funcs, ptr %funcs.i, align 4
  %me.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.013.i, i32 3, i32 16
  %3 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.013.i, ptr %me.i, align 8
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %4 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sdma_v5_0_set_ring_funcs.exit_crit_edge

for.body.i.sdma_v5_0_set_ring_funcs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_set_ring_funcs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sdma_v5_0_set_ring_funcs.exit:                    ; preds = %for.body.i.sdma_v5_0_set_ring_funcs.exit_crit_edge, %entry.sdma_v5_0_set_ring_funcs.exit_crit_edge
  %buffer_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 3
  %6 = ptrtoint ptr %buffer_funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_funcs.i, align 8
  %cmp.i4 = icmp eq ptr %7, null
  br i1 %cmp.i4, label %if.then.i, label %sdma_v5_0_set_ring_funcs.exit.sdma_v5_0_set_buffer_funcs.exit_crit_edge

sdma_v5_0_set_ring_funcs.exit.sdma_v5_0_set_buffer_funcs.exit_crit_edge: ; preds = %sdma_v5_0_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_set_buffer_funcs.exit

if.then.i:                                        ; preds = %sdma_v5_0_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %buffer_funcs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sdma_v5_0_buffer_funcs, ptr %buffer_funcs.i, align 8
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 3
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  %9 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ring.i, ptr %buffer_funcs_ring.i, align 4
  br label %sdma_v5_0_set_buffer_funcs.exit

sdma_v5_0_set_buffer_funcs.exit:                  ; preds = %if.then.i, %sdma_v5_0_set_ring_funcs.exit.sdma_v5_0_set_buffer_funcs.exit_crit_edge
  %vm_pte_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 11
  %10 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_pte_funcs.i, align 8
  %cmp.i5 = icmp eq ptr %11, null
  br i1 %cmp.i5, label %if.then.i7, label %sdma_v5_0_set_buffer_funcs.exit.sdma_v5_0_set_vm_pte_funcs.exit_crit_edge

sdma_v5_0_set_buffer_funcs.exit.sdma_v5_0_set_vm_pte_funcs.exit_crit_edge: ; preds = %sdma_v5_0_set_buffer_funcs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_set_vm_pte_funcs.exit

if.then.i7:                                       ; preds = %sdma_v5_0_set_buffer_funcs.exit
  %12 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sdma_v5_0_vm_pte_funcs, ptr %vm_pte_funcs.i, align 8
  %13 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp319.not.i = icmp eq i32 %14, 0
  br i1 %cmp319.not.i, label %if.then.i7.for.end.i_crit_edge, label %for.body.lr.ph.i9

if.then.i7.for.end.i_crit_edge:                   ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i9:                                ; preds = %if.then.i7
  %sdma.i8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %for.body.lr.ph.i9
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i9 ], [ %inc.i10, %for.body.i11.for.body.i11_crit_edge ]
  %sched.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i8, i32 0, i32 %i.020.i, i32 3, i32 3
  %arrayidx6.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 12, i32 %i.020.i
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sched.i, ptr %arrayidx6.i, align 4
  %inc.i10 = add nuw i32 %i.020.i, 1
  %16 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_instances.i, align 4
  %cmp3.i = icmp ult i32 %inc.i10, %17
  br i1 %cmp3.i, label %for.body.i11.for.body.i11_crit_edge, label %for.body.i11.for.end.i_crit_edge

for.body.i11.for.end.i_crit_edge:                 ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i11

for.end.i:                                        ; preds = %for.body.i11.for.end.i_crit_edge, %if.then.i7.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.then.i7.for.end.i_crit_edge ], [ %17, %for.body.i11.for.end.i_crit_edge ]
  %vm_pte_num_scheds.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 13
  %18 = ptrtoint ptr %vm_pte_num_scheds.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.lcssa.i, ptr %vm_pte_num_scheds.i, align 4
  br label %sdma_v5_0_set_vm_pte_funcs.exit

sdma_v5_0_set_vm_pte_funcs.exit:                  ; preds = %for.end.i, %sdma_v5_0_set_buffer_funcs.exit.sdma_v5_0_set_vm_pte_funcs.exit_crit_edge
  %19 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_instances.i, align 4
  %trap_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %21 = ptrtoint ptr %trap_irq.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %trap_irq.i, align 8
  %funcs.i13 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1, i32 2
  %22 = ptrtoint ptr %funcs.i13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sdma_v5_0_trap_irq_funcs, ptr %funcs.i13, align 8
  %funcs5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 2, i32 2
  %23 = ptrtoint ptr %funcs5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sdma_v5_0_illegal_inst_irq_funcs, ptr %funcs5.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %fw_name.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %trap_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 8, i32 noundef 224, ptr noundef %trap_irq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 9, i32 noundef 224, ptr noundef %trap_irq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %fw_name.i) #11
  %0 = call ptr @memset(ptr %fw_name.i, i32 255, i32 40)
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %1 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end.i_crit_edge, label %land.lhs.true.i

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end6
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 327685, i32 %4)
  %cmp.i = icmp eq i32 %4, 327685
  br i1 %cmp.i, label %land.lhs.true.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_init_microcode.exit.thread73

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27) #11
  %arrayidx3.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.body.i [
    i32 327680, label %if.end.i.sw.epilog.i_crit_edge
    i32 327682, label %sw.bb5.i
    i32 327685, label %sw.bb6.i
    i32 327681, label %sw.bb7.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %apu_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %8 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %apu_flags.i, align 4
  %and8.i = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %.str.32..str.31.i = select i1 %tobool9.not.i, ptr @.str.32, ptr @.str.31
  br label %sw.epilog.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 273, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.end.i.sw.epilog.i_crit_edge
  %chip_name.0.i = phi ptr [ @.str.30, %sw.bb6.i ], [ @.str.29, %sw.bb5.i ], [ @.str.28, %if.end.i.sw.epilog.i_crit_edge ], [ %.str.32..str.31.i, %sw.bb7.i ]
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %10 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15153.i = icmp sgt i32 %11, 0
  br i1 %cmp15153.i, label %for.body.lr.ph.i, label %sw.epilog.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge

sw.epilog.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_init_microcode.exit.thread73

for.body.lr.ph.i:                                 ; preds = %sw.epilog.i
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %firmware.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112
  %fw_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0154.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0154.i)
  %cmp16.i = icmp eq i32 %i.0154.i, 0
  %.str.33..str.34.i = select i1 %cmp16.i, ptr @.str.33, ptr @.str.34
  %call20.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 40, ptr noundef nonnull %.str.33..str.34.i, ptr noundef nonnull %chip_name.0.i) #11
  %arrayidx23.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0154.i
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle, align 8
  %call25.i = call i32 @request_firmware(ptr noundef %arrayidx23.i, ptr noundef nonnull %fw_name.i, ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %for.body.i.if.then79.i_crit_edge

for.body.i.if.then79.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79.i

if.end28.i:                                       ; preds = %for.body.i
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx23.i, align 8
  %call33.i = call i32 @amdgpu_ucode_validate(ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end28.i.if.then79.i_crit_edge

if.end28.i.if.then79.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79.i

if.end36.i:                                       ; preds = %if.end28.i
  %16 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx23.i, align 8
  %data.i = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %ucode_version.i = getelementptr inbounds %struct.common_firmware_header, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ucode_version.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucode_version.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #11
  %fw_version.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0154.i, i32 1
  %23 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fw_version.i, align 4
  %ucode_feature_version.i = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %ucode_feature_version.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ucode_feature_version.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #11
  %feature_version.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0154.i, i32 2
  %27 = ptrtoint ptr %feature_version.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %feature_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %26)
  %cmp52.i = icmp ugt i32 %26, 19
  br i1 %cmp52.i, label %if.then53.i, label %if.end36.i.if.end57.i_crit_edge

if.end36.i.if.end57.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then53.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %burst_nop.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0154.i, i32 5
  %28 = ptrtoint ptr %burst_nop.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %burst_nop.i, align 8
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %if.end36.i.if.end57.i_crit_edge
  %29 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp58.i = icmp eq i32 %30, 2
  %cond.i = select i1 %cmp58.i, ptr @.str.24, ptr @.str.25
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond.i) #11
  %31 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp61.i = icmp eq i32 %32, 2
  br i1 %cmp61.i, label %if.then62.i, label %if.end57.i.for.inc.i_crit_edge

if.end57.i.for.inc.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then62.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx64.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware.i, i32 0, i32 %i.0154.i
  %33 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0154.i, ptr %arrayidx64.i, align 8
  %34 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx23.i, align 8
  %fw70.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware.i, i32 0, i32 %i.0154.i, i32 1
  %36 = ptrtoint ptr %fw70.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %fw70.i, align 4
  %data72.i = getelementptr inbounds %struct.firmware, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %data72.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data72.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ucode_size_bytes.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #11
  %add73.i = add i32 %41, 4095
  %and74.i = and i32 %add73.i, -4096
  %42 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fw_size.i, align 8
  %add76.i = add i32 %and74.i, %43
  store i32 %add76.i, ptr %fw_size.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then62.i, %if.end57.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0154.i, 1
  %44 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_instances.i, align 4
  %cmp15.i = icmp slt i32 %inc.i, %45
  br i1 %cmp15.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge

for.inc.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_init_microcode.exit.thread73

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.then79.i:                                      ; preds = %if.end28.i.if.then79.i_crit_edge, %for.body.i.if.then79.i_crit_edge
  %err.1.ph.i = phi i32 [ %call33.i, %if.end28.i.if.then79.i_crit_edge ], [ %call25.i, %for.body.i.if.then79.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, ptr noundef nonnull %fw_name.i) #11
  %46 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp84157.i = icmp sgt i32 %47, 0
  br i1 %cmp84157.i, label %if.then79.i.for.body85.i_crit_edge, label %sdma_v5_0_init_microcode.exit.thread

if.then79.i.for.body85.i_crit_edge:               ; preds = %if.then79.i
  br label %for.body85.i

sdma_v5_0_init_microcode.exit.thread:             ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %fw_name.i) #11
  br label %if.then9

for.body85.i:                                     ; preds = %for.body85.i.for.body85.i_crit_edge, %if.then79.i.for.body85.i_crit_edge
  %i.1158.i = phi i32 [ %inc95.i, %for.body85.i.for.body85.i_crit_edge ], [ 0, %if.then79.i.for.body85.i_crit_edge ]
  %arrayidx88.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.1158.i
  %48 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx88.i, align 8
  call void @release_firmware(ptr noundef %49) #11
  %50 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx88.i, align 8
  %inc95.i = add nuw nsw i32 %i.1158.i, 1
  %51 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_instances.i, align 4
  %cmp84.i = icmp slt i32 %inc95.i, %52
  br i1 %cmp84.i, label %for.body85.i.for.body85.i_crit_edge, label %sdma_v5_0_init_microcode.exit

for.body85.i.for.body85.i_crit_edge:              ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body85.i

sdma_v5_0_init_microcode.exit.thread73:           ; preds = %for.inc.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge, %sw.epilog.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge, %land.lhs.true.i.sdma_v5_0_init_microcode.exit.thread73_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %fw_name.i) #11
  br label %for.cond.preheader

sdma_v5_0_init_microcode.exit:                    ; preds = %for.body85.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %fw_name.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.ph.i)
  %tobool8.not = icmp eq i32 %err.1.ph.i, 0
  br i1 %tobool8.not, label %sdma_v5_0_init_microcode.exit.for.cond.preheader_crit_edge, label %sdma_v5_0_init_microcode.exit.if.then9_crit_edge

sdma_v5_0_init_microcode.exit.if.then9_crit_edge: ; preds = %sdma_v5_0_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

sdma_v5_0_init_microcode.exit.for.cond.preheader_crit_edge: ; preds = %sdma_v5_0_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sdma_v5_0_init_microcode.exit.for.cond.preheader_crit_edge, %sdma_v5_0_init_microcode.exit.thread73
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %53 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp69 = icmp sgt i32 %54, 0
  br i1 %cmp69, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sdma_engine = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 13
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 13, i32 1
  br label %for.body

if.then9:                                         ; preds = %sdma_v5_0_init_microcode.exit.if.then9_crit_edge, %sdma_v5_0_init_microcode.exit.thread
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #11
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.070, 1
  %55 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %56
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %ring13 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.070, i32 3
  %ring_obj = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.070, i32 3, i32 4
  %57 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %ring_obj, align 8
  %use_doorbell = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.070, i32 3, i32 24
  %58 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %use_doorbell, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %i.070, ptr noundef nonnull @.str.24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.070)
  %cmp16 = icmp eq i32 %i.070, 0
  %cond22.in.in = select i1 %cmp16, ptr %sdma_engine, ptr %arrayidx20
  %59 = ptrtoint ptr %cond22.in.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %cond22.in = load i32, ptr %cond22.in.in, align 4
  %cond22 = shl i32 %cond22.in, 1
  %doorbell_index23 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.070, i32 3, i32 23
  %60 = ptrtoint ptr %doorbell_index23 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond22, ptr %doorbell_index23, align 8
  %name = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.070, i32 3, i32 29
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.26, i32 noundef %i.070)
  %not.cmp16 = xor i1 %cmp16, true
  %cond28 = zext i1 %not.cmp16 to i32
  %call29 = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring13, i32 noundef 1024, ptr noundef %trap_irq, i32 noundef %cond28, i32 noundef 1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then9, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.ph.i, %if.then9 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call29, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.017
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  tail call void @release_firmware(ptr noundef %3) #11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 8
  %ring = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.017, i32 3
  tail call void @amdgpu_ring_fini(ptr noundef %ring) #11
  %inc = add nuw nsw i32 %i.017, 1
  %5 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %1, label %entry.sdma_v5_0_init_golden_registers.exit_crit_edge [
    i32 327680, label %sw.bb.i
    i32 327682, label %sw.bb2.i
    i32 327685, label %sw.bb3.i
    i32 327681, label %sw.bb4.i
  ]

entry.sdma_v5_0_init_golden_registers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_init_golden_registers.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_5, i32 noundef 24) #11
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_nv10, i32 noundef 2) #11
  br label %sdma_v5_0_init_golden_registers.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_5, i32 noundef 24) #11
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_nv14, i32 noundef 2) #11
  br label %sdma_v5_0_init_golden_registers.exit

sw.bb3.i:                                         ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %3 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_5_sriov, i32 noundef 20) #11
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_5, i32 noundef 24) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_nv12, i32 noundef 6) #11
  br label %sdma_v5_0_init_golden_registers.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_cyan_skillfish, i32 noundef 28) #11
  br label %sdma_v5_0_init_golden_registers.exit

sdma_v5_0_init_golden_registers.exit:             ; preds = %sw.bb4.i, %if.end.i, %sw.bb2.i, %sw.bb.i, %entry.sdma_v5_0_init_golden_registers.exit_crit_edge
  %virt.i2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %5 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt.i2, align 8
  %and.i3 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i4, label %if.end.i6, label %if.then.i5

if.then.i5:                                       ; preds = %sdma_v5_0_init_golden_registers.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sdma_v5_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  tail call fastcc void @sdma_v5_0_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  br label %cleanup.sink.split.i

if.end.i6:                                        ; preds = %sdma_v5_0_init_golden_registers.exit
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %7 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i6.if.end6.i_crit_edge

if.end.i6.if.end6.i_crit_edge:                    ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.end.i6
  tail call fastcc void @sdma_v5_0_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  %sdma.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %num_instances.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %9 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_instances.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp74.i.i = icmp sgt i32 %10, 0
  br i1 %cmp74.i.i, label %for.body.lr.ph.i.i, label %if.then1.i.if.end6.i_crit_edge

if.then1.i.if.end6.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

for.body.lr.ph.i.i:                               ; preds = %if.then1.i
  %arrayidx.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.075.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc27.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.075.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %for.body.i.i.sdma_v5_0_start.exit_crit_edge, label %if.end.i.i

for.body.i.i.sdma_v5_0_start.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_start.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  tail call void @amdgpu_ucode_print_sdma_hdr(ptr noundef %14) #11
  %ucode_size_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %ucode_size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ucode_size_bytes.i.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 8
  %data11.i.i = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %data11.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data11.i.i, align 4
  %ucode_array_offset_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %14, i32 0, i32 8
  %22 = ptrtoint ptr %ucode_array_offset_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ucode_array_offset_bytes.i.i, align 4
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 8
  %base.0.in.i.i.i = getelementptr i32, ptr %25, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.075.i.i)
  %cmp10.i.i.i = icmp eq i32 %i.075.i.i, 1
  %add12.i.i.i = select i1 %cmp10.i.i.i, i32 32, i32 0
  %spec.select22.i.i.i = or i32 %add12.i.i.i, 22656
  %26 = ptrtoint ptr %base.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %base.0.i.i.i = load i32, ptr %base.0.in.i.i.i, align 4
  %add15.i.i.i = add i32 %base.0.i.i.i, %spec.select22.i.i.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i.i.i, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp1471.not.i.i = icmp ult i32 %17, 4
  br i1 %cmp1471.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body15.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body15.lr.ph.i.i:                             ; preds = %if.end.i.i
  %div56.i.i = lshr i32 %17, 2
  %27 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %27
  %spec.select22.i61.i.i = or i32 %add12.i.i.i, 22657
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %if.end19.i.i.for.body15.i.i_crit_edge, %for.body15.lr.ph.i.i
  %j.073.i.i = phi i32 [ 0, %for.body15.lr.ph.i.i ], [ %inc.i.i, %if.end19.i.i.for.body15.i.i_crit_edge ]
  %fw_data.072.i.i = phi ptr [ %add.ptr.i.i, %for.body15.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end19.i.i.for.body15.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_emu_mode to i32))
  %28 = load i32, ptr @amdgpu_emu_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp16.i.i = icmp eq i32 %28, 1
  %rem.urem.i.i = urem i32 %j.073.i.i, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.urem.i.i)
  %cmp17.i.i = icmp eq i32 %rem.urem.i.i, 0
  %or.cond.i.i = select i1 %cmp16.i.i, i1 %cmp17.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then18.i.i, label %for.body15.i.i.if.end19.i.i_crit_edge

for.body15.i.i.if.end19.i.i_crit_edge:            ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i.i

if.then18.i.i:                                    ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 1) #11
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then18.i.i, %for.body15.i.i.if.end19.i.i_crit_edge
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i, align 8
  %base.0.in.i58.i.i = getelementptr i32, ptr %30, i32 1
  %31 = ptrtoint ptr %base.0.in.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %base.0.i62.i.i = load i32, ptr %base.0.in.i58.i.i, align 4
  %add15.i63.i.i = add i32 %spec.select22.i61.i.i, %base.0.i62.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %fw_data.072.i.i, i32 1
  %32 = ptrtoint ptr %fw_data.072.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_data.072.i.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i63.i.i, i32 noundef %34, i32 noundef 0) #11
  %inc.i.i = add nuw nsw i32 %j.073.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div56.i.i
  br i1 %exitcond.not.i.i, label %if.end19.i.i.for.end.i.i_crit_edge, label %if.end19.i.i.for.body15.i.i_crit_edge

if.end19.i.i.for.body15.i.i_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15.i.i

if.end19.i.i.for.end.i.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end19.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 8
  %base.0.in.i65.i.i = getelementptr i32, ptr %36, i32 1
  %37 = ptrtoint ptr %base.0.in.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %base.0.i69.i.i = load i32, ptr %base.0.in.i65.i.i, align 4
  %add15.i70.i.i = add i32 %base.0.i69.i.i, %spec.select22.i.i.i
  %fw_version.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.075.i.i, i32 1
  %38 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_version.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i70.i.i, i32 noundef %39, i32 noundef 0) #11
  %inc27.i.i = add nuw nsw i32 %i.075.i.i, 1
  %40 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_instances.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc27.i.i, %41
  br i1 %cmp.i.i, label %for.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i.if.end6.i_crit_edge

for.end.i.i.if.end6.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end6.i:                                        ; preds = %for.end.i.i.if.end6.i_crit_edge, %if.then1.i.if.end6.i_crit_edge, %if.end.i6.if.end6.i_crit_edge
  %42 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %virt.i2, align 8
  %and.i.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %for.cond.preheader.i.i, label %if.end6.i.sdma_v5_0_enable.exit.i_crit_edge

if.end6.i.sdma_v5_0_enable.exit.i_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_enable.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end6.i
  %num_instances.i27.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %44 = ptrtoint ptr %num_instances.i27.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_instances.i27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp29.i.i = icmp sgt i32 %45, 0
  br i1 %cmp29.i.i, label %for.body.lr.ph.i29.i, label %for.cond.preheader.i.i.sdma_v5_0_enable.exit.i_crit_edge

for.cond.preheader.i.i.sdma_v5_0_enable.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_enable.exit.i

for.body.lr.ph.i29.i:                             ; preds = %for.cond.preheader.i.i
  %arrayidx.i.i28.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  br label %for.body.i35.i

for.body.i35.i:                                   ; preds = %for.body.i35.i.for.body.i35.i_crit_edge, %for.body.lr.ph.i29.i
  %i.030.i.i = phi i32 [ 0, %for.body.lr.ph.i29.i ], [ %inc.i33.i, %for.body.i35.i.for.body.i35.i_crit_edge ]
  %46 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.030.i.i)
  %cmp10.i22.i.i = icmp eq i32 %i.030.i.i, 1
  %spec.select22.i.i30.i = select i1 %cmp10.i22.i.i, i32 1578, i32 42
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %base.0.i.i31.i = load i32, ptr %47, align 4
  %add15.i.i32.i = add i32 %base.0.i.i31.i, %spec.select22.i.i30.i
  %call4.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i.i32.i, i32 noundef 0) #11
  %and5.i.i = and i32 %call4.i.i, -2
  %49 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i28.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %base.0.i27.i.i = load i32, ptr %50, align 4
  %add15.i28.i.i = add i32 %base.0.i27.i.i, %spec.select22.i.i30.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i28.i.i, i32 noundef %and5.i.i, i32 noundef 0) #11
  %inc.i33.i = add nuw nsw i32 %i.030.i.i, 1
  %52 = ptrtoint ptr %num_instances.i27.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_instances.i27.i, align 4
  %cmp.i34.i = icmp slt i32 %inc.i33.i, %53
  br i1 %cmp.i34.i, label %for.body.i35.i.for.body.i35.i_crit_edge, label %for.body.i35.i.sdma_v5_0_enable.exit.i_crit_edge

for.body.i35.i.sdma_v5_0_enable.exit.i_crit_edge: ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_enable.exit.i

for.body.i35.i.for.body.i35.i_crit_edge:          ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i35.i

sdma_v5_0_enable.exit.i:                          ; preds = %for.body.i35.i.sdma_v5_0_enable.exit.i_crit_edge, %for.cond.preheader.i.i.sdma_v5_0_enable.exit.i_crit_edge, %if.end6.i.sdma_v5_0_enable.exit.i_crit_edge
  tail call fastcc void @sdma_v5_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext true) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sdma_v5_0_enable.exit.i, %if.then.i5
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %54 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1495.i = icmp sgt i32 %55, 0
  br i1 %cmp1495.i, label %for.body.lr.ph.i, label %cleanup.sink.split.i.sdma_v5_0_start.exit_crit_edge

cleanup.sink.split.i.sdma_v5_0_start.exit_crit_edge: ; preds = %cleanup.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_start.exit

for.body.lr.ph.i:                                 ; preds = %cleanup.sink.split.i
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %arrayidx.i.i8 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 2
  %funcs592.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 101, i32 4
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.01496.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ring2.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3
  %rptr_offs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 6
  %56 = ptrtoint ptr %rptr_offs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rptr_offs.i, align 8
  %mul.i = shl i32 %57, 2
  %58 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %virt.i2, align 8
  %and.i9 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %if.then.i11, label %for.body.i.if.end.i12_crit_edge

for.body.i.if.end.i12_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i12

if.then.i11:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i.i = select i1 %cmp10.i.i, i32 1569, i32 33
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %base.0.i.i = load i32, ptr %61, align 4
  %add15.i.i = add i32 %base.0.i.i, %spec.select22.i.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i.i, i32 noundef 0, i32 noundef 0) #11
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.then.i11, %for.body.i.if.end.i12_crit_edge
  %ring_size.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 9
  %63 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ring_size.i, align 8
  %div1156.i = lshr i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %64)
  %cmp.i.i13 = icmp ugt i32 %64, 7
  %sub.i1157.i = add nsw i32 %div1156.i, -1
  %65 = tail call i32 @llvm.ctlz.i32(i32 %sub.i1157.i, i1 false) #11, !range !130
  %66 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %virt.i2, align 8
  %and40.i = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end.i12.cond.false55.i_crit_edge, label %land.lhs.true.i

if.end.i12.cond.false55.i_crit_edge:              ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false55.i

land.lhs.true.i:                                  ; preds = %if.end.i12
  %68 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs.i, align 4
  %tobool42.not.i = icmp eq ptr %69, null
  br i1 %tobool42.not.i, label %land.lhs.true.i.cond.false55.i_crit_edge, label %land.lhs.true43.i

land.lhs.true.i.cond.false55.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false55.i

land.lhs.true43.i:                                ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool47.not.i = icmp eq ptr %71, null
  br i1 %tobool47.not.i, label %land.lhs.true43.i.cond.false55.i_crit_edge, label %cond.true48.i

land.lhs.true43.i.cond.false55.i_crit_edge:       ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false55.i

cond.true48.i:                                    ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1159.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1161.i = select i1 %cmp10.i1159.i, i32 1664, i32 128
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %base.0.i1162.i = load i32, ptr %73, align 4
  %add15.i1163.i = add i32 %base.0.i1162.i, %spec.select22.i1161.i
  %call54.i = tail call i32 %71(ptr noundef %handle, i32 noundef %add15.i1163.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end58.i

cond.false55.i:                                   ; preds = %land.lhs.true43.i.cond.false55.i_crit_edge, %land.lhs.true.i.cond.false55.i_crit_edge, %if.end.i12.cond.false55.i_crit_edge
  %75 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1165.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1167.i = select i1 %cmp10.i1165.i, i32 1664, i32 128
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %base.0.i1168.i = load i32, ptr %76, align 4
  %add15.i1169.i = add i32 %base.0.i1168.i, %spec.select22.i1167.i
  %call57.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1169.i, i32 noundef 0) #11
  br label %cond.end58.i

cond.end58.i:                                     ; preds = %cond.false55.i, %cond.true48.i
  %cond59.i = phi i32 [ %call54.i, %cond.true48.i ], [ %call57.i, %cond.false55.i ]
  %and60.i = and i32 %cond59.i, -8767
  %.neg = mul nuw nsw i32 %65, 62
  %.neg.op = and i32 %.neg, 62
  %and61.i = select i1 %cmp.i.i13, i32 %.neg.op, i32 0
  %or.i = or i32 %and60.i, %and61.i
  %or65.i = or i32 %or.i, 8704
  %78 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %virt.i2, align 8
  %and68.i = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %cond.end58.i.cond.false86.i_crit_edge, label %land.lhs.true70.i

cond.end58.i.cond.false86.i_crit_edge:            ; preds = %cond.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false86.i

land.lhs.true70.i:                                ; preds = %cond.end58.i
  %80 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %funcs.i, align 4
  %tobool74.not.i = icmp eq ptr %81, null
  br i1 %tobool74.not.i, label %land.lhs.true70.i.cond.false86.i_crit_edge, label %land.lhs.true75.i

land.lhs.true70.i.cond.false86.i_crit_edge:       ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false86.i

land.lhs.true75.i:                                ; preds = %land.lhs.true70.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool79.not.i = icmp eq ptr %83, null
  br i1 %tobool79.not.i, label %land.lhs.true75.i.cond.false86.i_crit_edge, label %cond.true80.i

land.lhs.true75.i.cond.false86.i_crit_edge:       ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false86.i

cond.true80.i:                                    ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1171.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1173.i = select i1 %cmp10.i1171.i, i32 1664, i32 128
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %base.0.i1174.i = load i32, ptr %85, align 4
  %add15.i1175.i = add i32 %base.0.i1174.i, %spec.select22.i1173.i
  tail call void %83(ptr noundef %handle, i32 noundef %add15.i1175.i, i32 noundef %or65.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end88.i

cond.false86.i:                                   ; preds = %land.lhs.true75.i.cond.false86.i_crit_edge, %land.lhs.true70.i.cond.false86.i_crit_edge, %cond.end58.i.cond.false86.i_crit_edge
  %87 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1177.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1179.i = select i1 %cmp10.i1177.i, i32 1664, i32 128
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %base.0.i1180.i = load i32, ptr %88, align 4
  %add15.i1181.i = add i32 %base.0.i1180.i, %spec.select22.i1179.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1181.i, i32 noundef %or65.i, i32 noundef 0) #11
  br label %cond.end88.i

cond.end88.i:                                     ; preds = %cond.false86.i, %cond.true80.i
  %90 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %virt.i2, align 8
  %and91.i = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %cond.end88.i.cond.false110.i_crit_edge, label %land.lhs.true93.i

cond.end88.i.cond.false110.i_crit_edge:           ; preds = %cond.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false110.i

land.lhs.true93.i:                                ; preds = %cond.end88.i
  %92 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %funcs.i, align 4
  %tobool97.not.i = icmp eq ptr %93, null
  br i1 %tobool97.not.i, label %land.lhs.true93.i.cond.false110.i_crit_edge, label %land.lhs.true98.i

land.lhs.true93.i.cond.false110.i_crit_edge:      ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false110.i

land.lhs.true98.i:                                ; preds = %land.lhs.true93.i
  %sriov_wreg102.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %93, i32 0, i32 12
  %94 = ptrtoint ptr %sriov_wreg102.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sriov_wreg102.i, align 4
  %tobool103.not.i = icmp eq ptr %95, null
  br i1 %tobool103.not.i, label %land.lhs.true98.i.cond.false110.i_crit_edge, label %cond.true104.i

land.lhs.true98.i.cond.false110.i_crit_edge:      ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false110.i

cond.true104.i:                                   ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1183.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1185.i = select i1 %cmp10.i1183.i, i32 1667, i32 131
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %base.0.i1186.i = load i32, ptr %97, align 4
  %add15.i1187.i = add i32 %base.0.i1186.i, %spec.select22.i1185.i
  tail call void %95(ptr noundef %handle, i32 noundef %add15.i1187.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end112.i

cond.false110.i:                                  ; preds = %land.lhs.true98.i.cond.false110.i_crit_edge, %land.lhs.true93.i.cond.false110.i_crit_edge, %cond.end88.i.cond.false110.i_crit_edge
  %99 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1189.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1191.i = select i1 %cmp10.i1189.i, i32 1667, i32 131
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %base.0.i1192.i = load i32, ptr %100, align 4
  %add15.i1193.i = add i32 %base.0.i1192.i, %spec.select22.i1191.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1193.i, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end112.i

cond.end112.i:                                    ; preds = %cond.false110.i, %cond.true104.i
  %102 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %virt.i2, align 8
  %and115.i = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  br i1 %tobool116.not.i, label %cond.end112.i.cond.false134.i_crit_edge, label %land.lhs.true117.i

cond.end112.i.cond.false134.i_crit_edge:          ; preds = %cond.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false134.i

land.lhs.true117.i:                               ; preds = %cond.end112.i
  %104 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %funcs.i, align 4
  %tobool121.not.i = icmp eq ptr %105, null
  br i1 %tobool121.not.i, label %land.lhs.true117.i.cond.false134.i_crit_edge, label %land.lhs.true122.i

land.lhs.true117.i.cond.false134.i_crit_edge:     ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false134.i

land.lhs.true122.i:                               ; preds = %land.lhs.true117.i
  %sriov_wreg126.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %sriov_wreg126.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sriov_wreg126.i, align 4
  %tobool127.not.i = icmp eq ptr %107, null
  br i1 %tobool127.not.i, label %land.lhs.true122.i.cond.false134.i_crit_edge, label %cond.true128.i

land.lhs.true122.i.cond.false134.i_crit_edge:     ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false134.i

cond.true128.i:                                   ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1195.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1197.i = select i1 %cmp10.i1195.i, i32 1668, i32 132
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %base.0.i1198.i = load i32, ptr %109, align 4
  %add15.i1199.i = add i32 %base.0.i1198.i, %spec.select22.i1197.i
  tail call void %107(ptr noundef %handle, i32 noundef %add15.i1199.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end136.i

cond.false134.i:                                  ; preds = %land.lhs.true122.i.cond.false134.i_crit_edge, %land.lhs.true117.i.cond.false134.i_crit_edge, %cond.end112.i.cond.false134.i_crit_edge
  %111 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1201.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1203.i = select i1 %cmp10.i1201.i, i32 1668, i32 132
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %base.0.i1204.i = load i32, ptr %112, align 4
  %add15.i1205.i = add i32 %base.0.i1204.i, %spec.select22.i1203.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1205.i, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end136.i

cond.end136.i:                                    ; preds = %cond.false134.i, %cond.true128.i
  %114 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %virt.i2, align 8
  %and139.i = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  br i1 %tobool140.not.i, label %cond.end136.i.cond.false158.i_crit_edge, label %land.lhs.true141.i

cond.end136.i.cond.false158.i_crit_edge:          ; preds = %cond.end136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false158.i

land.lhs.true141.i:                               ; preds = %cond.end136.i
  %116 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %funcs.i, align 4
  %tobool145.not.i = icmp eq ptr %117, null
  br i1 %tobool145.not.i, label %land.lhs.true141.i.cond.false158.i_crit_edge, label %land.lhs.true146.i

land.lhs.true141.i.cond.false158.i_crit_edge:     ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false158.i

land.lhs.true146.i:                               ; preds = %land.lhs.true141.i
  %sriov_wreg150.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %117, i32 0, i32 12
  %118 = ptrtoint ptr %sriov_wreg150.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sriov_wreg150.i, align 4
  %tobool151.not.i = icmp eq ptr %119, null
  br i1 %tobool151.not.i, label %land.lhs.true146.i.cond.false158.i_crit_edge, label %cond.true152.i

land.lhs.true146.i.cond.false158.i_crit_edge:     ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false158.i

cond.true152.i:                                   ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1207.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1209.i = select i1 %cmp10.i1207.i, i32 1669, i32 133
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %base.0.i1210.i = load i32, ptr %121, align 4
  %add15.i1211.i = add i32 %base.0.i1210.i, %spec.select22.i1209.i
  tail call void %119(ptr noundef %handle, i32 noundef %add15.i1211.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end160.i

cond.false158.i:                                  ; preds = %land.lhs.true146.i.cond.false158.i_crit_edge, %land.lhs.true141.i.cond.false158.i_crit_edge, %cond.end136.i.cond.false158.i_crit_edge
  %123 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1213.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1215.i = select i1 %cmp10.i1213.i, i32 1669, i32 133
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %base.0.i1216.i = load i32, ptr %124, align 4
  %add15.i1217.i = add i32 %base.0.i1216.i, %spec.select22.i1215.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1217.i, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end160.i

cond.end160.i:                                    ; preds = %cond.false158.i, %cond.true152.i
  %126 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %virt.i2, align 8
  %and163.i = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i = icmp eq i32 %and163.i, 0
  br i1 %tobool164.not.i, label %cond.end160.i.cond.false182.i_crit_edge, label %land.lhs.true165.i

cond.end160.i.cond.false182.i_crit_edge:          ; preds = %cond.end160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false182.i

land.lhs.true165.i:                               ; preds = %cond.end160.i
  %128 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %funcs.i, align 4
  %tobool169.not.i = icmp eq ptr %129, null
  br i1 %tobool169.not.i, label %land.lhs.true165.i.cond.false182.i_crit_edge, label %land.lhs.true170.i

land.lhs.true165.i.cond.false182.i_crit_edge:     ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false182.i

land.lhs.true170.i:                               ; preds = %land.lhs.true165.i
  %sriov_wreg174.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %129, i32 0, i32 12
  %130 = ptrtoint ptr %sriov_wreg174.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sriov_wreg174.i, align 4
  %tobool175.not.i = icmp eq ptr %131, null
  br i1 %tobool175.not.i, label %land.lhs.true170.i.cond.false182.i_crit_edge, label %cond.true176.i

land.lhs.true170.i.cond.false182.i_crit_edge:     ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false182.i

cond.true176.i:                                   ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1219.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1221.i = select i1 %cmp10.i1219.i, i32 1670, i32 134
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %base.0.i1222.i = load i32, ptr %133, align 4
  %add15.i1223.i = add i32 %base.0.i1222.i, %spec.select22.i1221.i
  tail call void %131(ptr noundef %handle, i32 noundef %add15.i1223.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end184.i

cond.false182.i:                                  ; preds = %land.lhs.true170.i.cond.false182.i_crit_edge, %land.lhs.true165.i.cond.false182.i_crit_edge, %cond.end160.i.cond.false182.i_crit_edge
  %135 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1225.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1227.i = select i1 %cmp10.i1225.i, i32 1670, i32 134
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %base.0.i1228.i = load i32, ptr %136, align 4
  %add15.i1229.i = add i32 %base.0.i1228.i, %spec.select22.i1227.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1229.i, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end184.i

cond.end184.i:                                    ; preds = %cond.false182.i, %cond.true176.i
  %138 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %gpu_addr.i, align 8
  %wptr_offs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 26
  %140 = ptrtoint ptr %wptr_offs.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %wptr_offs.i, align 8
  %mul185.i = shl i32 %141, 2
  %conv186.i = zext i32 %mul185.i to i64
  %add187.i = add i64 %139, %conv186.i
  %142 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %virt.i2, align 8
  %and190.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.i)
  %tobool191.not.i = icmp eq i32 %and190.i, 0
  br i1 %tobool191.not.i, label %cond.end184.i.cond.false211.i_crit_edge, label %land.lhs.true192.i

cond.end184.i.cond.false211.i_crit_edge:          ; preds = %cond.end184.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false211.i

land.lhs.true192.i:                               ; preds = %cond.end184.i
  %144 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %funcs.i, align 4
  %tobool196.not.i = icmp eq ptr %145, null
  br i1 %tobool196.not.i, label %land.lhs.true192.i.cond.false211.i_crit_edge, label %land.lhs.true197.i

land.lhs.true192.i.cond.false211.i_crit_edge:     ; preds = %land.lhs.true192.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false211.i

land.lhs.true197.i:                               ; preds = %land.lhs.true192.i
  %sriov_wreg201.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %145, i32 0, i32 12
  %146 = ptrtoint ptr %sriov_wreg201.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sriov_wreg201.i, align 4
  %tobool202.not.i = icmp eq ptr %147, null
  br i1 %tobool202.not.i, label %land.lhs.true197.i.cond.false211.i_crit_edge, label %cond.true203.i

land.lhs.true197.i.cond.false211.i_crit_edge:     ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false211.i

cond.true203.i:                                   ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #13
  %148 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1231.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1233.i = select i1 %cmp10.i1231.i, i32 1715, i32 179
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %base.0.i1234.i = load i32, ptr %149, align 4
  %add15.i1235.i = add i32 %base.0.i1234.i, %spec.select22.i1233.i
  %conv210.i = trunc i64 %add187.i to i32
  tail call void %147(ptr noundef %handle, i32 noundef %add15.i1235.i, i32 noundef %conv210.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end215.i

cond.false211.i:                                  ; preds = %land.lhs.true197.i.cond.false211.i_crit_edge, %land.lhs.true192.i.cond.false211.i_crit_edge, %cond.end184.i.cond.false211.i_crit_edge
  %151 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1237.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1239.i = select i1 %cmp10.i1237.i, i32 1715, i32 179
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %base.0.i1240.i = load i32, ptr %152, align 4
  %add15.i1241.i = add i32 %base.0.i1240.i, %spec.select22.i1239.i
  %conv214.i = trunc i64 %add187.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1241.i, i32 noundef %conv214.i, i32 noundef 0) #11
  br label %cond.end215.i

cond.end215.i:                                    ; preds = %cond.false211.i, %cond.true203.i
  %154 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %virt.i2, align 8
  %and218.i = and i32 %155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218.i)
  %tobool219.not.i = icmp eq i32 %and218.i, 0
  br i1 %tobool219.not.i, label %cond.end215.i.cond.false239.i_crit_edge, label %land.lhs.true220.i

cond.end215.i.cond.false239.i_crit_edge:          ; preds = %cond.end215.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false239.i

land.lhs.true220.i:                               ; preds = %cond.end215.i
  %156 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %funcs.i, align 4
  %tobool224.not.i = icmp eq ptr %157, null
  br i1 %tobool224.not.i, label %land.lhs.true220.i.cond.false239.i_crit_edge, label %land.lhs.true225.i

land.lhs.true220.i.cond.false239.i_crit_edge:     ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false239.i

land.lhs.true225.i:                               ; preds = %land.lhs.true220.i
  %sriov_wreg229.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %157, i32 0, i32 12
  %158 = ptrtoint ptr %sriov_wreg229.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sriov_wreg229.i, align 4
  %tobool230.not.i = icmp eq ptr %159, null
  br i1 %tobool230.not.i, label %land.lhs.true225.i.cond.false239.i_crit_edge, label %cond.true231.i

land.lhs.true225.i.cond.false239.i_crit_edge:     ; preds = %land.lhs.true225.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false239.i

cond.true231.i:                                   ; preds = %land.lhs.true225.i
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1243.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1245.i = select i1 %cmp10.i1243.i, i32 1714, i32 178
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %base.0.i1246.i = load i32, ptr %161, align 4
  %add15.i1247.i = add i32 %base.0.i1246.i, %spec.select22.i1245.i
  %shr.i = lshr i64 %add187.i, 32
  %conv238.i = trunc i64 %shr.i to i32
  tail call void %159(ptr noundef %handle, i32 noundef %add15.i1247.i, i32 noundef %conv238.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end244.i

cond.false239.i:                                  ; preds = %land.lhs.true225.i.cond.false239.i_crit_edge, %land.lhs.true220.i.cond.false239.i_crit_edge, %cond.end215.i.cond.false239.i_crit_edge
  %163 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1249.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1251.i = select i1 %cmp10.i1249.i, i32 1714, i32 178
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %base.0.i1252.i = load i32, ptr %164, align 4
  %add15.i1253.i = add i32 %base.0.i1252.i, %spec.select22.i1251.i
  %shr241.i = lshr i64 %add187.i, 32
  %conv243.i = trunc i64 %shr241.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1253.i, i32 noundef %conv243.i, i32 noundef 0) #11
  br label %cond.end244.i

cond.end244.i:                                    ; preds = %cond.false239.i, %cond.true231.i
  %166 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %virt.i2, align 8
  %and247.i = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247.i)
  %tobool248.not.i = icmp eq i32 %and247.i, 0
  br i1 %tobool248.not.i, label %cond.end244.i.cond.false267.i_crit_edge, label %land.lhs.true249.i

cond.end244.i.cond.false267.i_crit_edge:          ; preds = %cond.end244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false267.i

land.lhs.true249.i:                               ; preds = %cond.end244.i
  %168 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %funcs.i, align 4
  %tobool253.not.i = icmp eq ptr %169, null
  br i1 %tobool253.not.i, label %land.lhs.true249.i.cond.false267.i_crit_edge, label %land.lhs.true254.i

land.lhs.true249.i.cond.false267.i_crit_edge:     ; preds = %land.lhs.true249.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false267.i

land.lhs.true254.i:                               ; preds = %land.lhs.true249.i
  %sriov_rreg258.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %169, i32 0, i32 13
  %170 = ptrtoint ptr %sriov_rreg258.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sriov_rreg258.i, align 4
  %tobool259.not.i = icmp eq ptr %171, null
  br i1 %tobool259.not.i, label %land.lhs.true254.i.cond.false267.i_crit_edge, label %cond.true260.i

land.lhs.true254.i.cond.false267.i_crit_edge:     ; preds = %land.lhs.true254.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false267.i

cond.true260.i:                                   ; preds = %land.lhs.true254.i
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1255.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1257.i = select i1 %cmp10.i1255.i, i32 1671, i32 135
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %base.0.i1258.i = load i32, ptr %173, align 4
  %add15.i1259.i = add i32 %base.0.i1258.i, %spec.select22.i1257.i
  %call266.i = tail call i32 %171(ptr noundef %handle, i32 noundef %add15.i1259.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end270.i

cond.false267.i:                                  ; preds = %land.lhs.true254.i.cond.false267.i_crit_edge, %land.lhs.true249.i.cond.false267.i_crit_edge, %cond.end244.i.cond.false267.i_crit_edge
  %175 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1261.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1263.i = select i1 %cmp10.i1261.i, i32 1671, i32 135
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %base.0.i1264.i = load i32, ptr %176, align 4
  %add15.i1265.i = add i32 %base.0.i1264.i, %spec.select22.i1263.i
  %call269.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1265.i, i32 noundef 0) #11
  br label %cond.end270.i

cond.end270.i:                                    ; preds = %cond.false267.i, %cond.true260.i
  %cond271.i = phi i32 [ %call266.i, %cond.true260.i ], [ %call269.i, %cond.false267.i ]
  %or273.i = or i32 %cond271.i, 4
  %178 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %virt.i2, align 8
  %and276.i = and i32 %179, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276.i)
  %tobool277.not.i = icmp eq i32 %and276.i, 0
  br i1 %tobool277.not.i, label %cond.end270.i.cond.false295.i_crit_edge, label %land.lhs.true278.i

cond.end270.i.cond.false295.i_crit_edge:          ; preds = %cond.end270.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false295.i

land.lhs.true278.i:                               ; preds = %cond.end270.i
  %180 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %funcs.i, align 4
  %tobool282.not.i = icmp eq ptr %181, null
  br i1 %tobool282.not.i, label %land.lhs.true278.i.cond.false295.i_crit_edge, label %land.lhs.true283.i

land.lhs.true278.i.cond.false295.i_crit_edge:     ; preds = %land.lhs.true278.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false295.i

land.lhs.true283.i:                               ; preds = %land.lhs.true278.i
  %sriov_wreg287.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %181, i32 0, i32 12
  %182 = ptrtoint ptr %sriov_wreg287.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sriov_wreg287.i, align 4
  %tobool288.not.i = icmp eq ptr %183, null
  br i1 %tobool288.not.i, label %land.lhs.true283.i.cond.false295.i_crit_edge, label %cond.true289.i

land.lhs.true283.i.cond.false295.i_crit_edge:     ; preds = %land.lhs.true283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false295.i

cond.true289.i:                                   ; preds = %land.lhs.true283.i
  call void @__sanitizer_cov_trace_pc() #13
  %184 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1267.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1269.i = select i1 %cmp10.i1267.i, i32 1671, i32 135
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %base.0.i1270.i = load i32, ptr %185, align 4
  %add15.i1271.i = add i32 %base.0.i1270.i, %spec.select22.i1269.i
  tail call void %183(ptr noundef %handle, i32 noundef %add15.i1271.i, i32 noundef %or273.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end297.i

cond.false295.i:                                  ; preds = %land.lhs.true283.i.cond.false295.i_crit_edge, %land.lhs.true278.i.cond.false295.i_crit_edge, %cond.end270.i.cond.false295.i_crit_edge
  %187 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1273.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1275.i = select i1 %cmp10.i1273.i, i32 1671, i32 135
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %base.0.i1276.i = load i32, ptr %188, align 4
  %add15.i1277.i = add i32 %base.0.i1276.i, %spec.select22.i1275.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1277.i, i32 noundef %or273.i, i32 noundef 0) #11
  br label %cond.end297.i

cond.end297.i:                                    ; preds = %cond.false295.i, %cond.true289.i
  %190 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %virt.i2, align 8
  %and300.i = and i32 %191, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300.i)
  %tobool301.not.i = icmp eq i32 %and300.i, 0
  br i1 %tobool301.not.i, label %cond.end297.i.cond.false327.i_crit_edge, label %land.lhs.true302.i

cond.end297.i.cond.false327.i_crit_edge:          ; preds = %cond.end297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false327.i

land.lhs.true302.i:                               ; preds = %cond.end297.i
  %192 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %funcs.i, align 4
  %tobool306.not.i = icmp eq ptr %193, null
  br i1 %tobool306.not.i, label %land.lhs.true302.i.cond.false327.i_crit_edge, label %land.lhs.true307.i

land.lhs.true302.i.cond.false327.i_crit_edge:     ; preds = %land.lhs.true302.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false327.i

land.lhs.true307.i:                               ; preds = %land.lhs.true302.i
  %sriov_wreg311.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %193, i32 0, i32 12
  %194 = ptrtoint ptr %sriov_wreg311.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sriov_wreg311.i, align 4
  %tobool312.not.i = icmp eq ptr %195, null
  br i1 %tobool312.not.i, label %land.lhs.true307.i.cond.false327.i_crit_edge, label %cond.true313.i

land.lhs.true307.i.cond.false327.i_crit_edge:     ; preds = %land.lhs.true307.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false327.i

cond.true313.i:                                   ; preds = %land.lhs.true307.i
  call void @__sanitizer_cov_trace_pc() #13
  %196 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1279.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1281.i = select i1 %cmp10.i1279.i, i32 1672, i32 136
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %base.0.i1282.i = load i32, ptr %197, align 4
  %add15.i1283.i = add i32 %base.0.i1282.i, %spec.select22.i1281.i
  %199 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %gpu_addr.i, align 8
  %conv321.i = zext i32 %mul.i to i64
  %add322.i = add i64 %200, %conv321.i
  %shr323.i = lshr i64 %add322.i, 32
  %conv325.i = trunc i64 %shr323.i to i32
  tail call void %195(ptr noundef %handle, i32 noundef %add15.i1283.i, i32 noundef %conv325.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end337.i

cond.false327.i:                                  ; preds = %land.lhs.true307.i.cond.false327.i_crit_edge, %land.lhs.true302.i.cond.false327.i_crit_edge, %cond.end297.i.cond.false327.i_crit_edge
  %201 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1285.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1287.i = select i1 %cmp10.i1285.i, i32 1672, i32 136
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %base.0.i1288.i = load i32, ptr %202, align 4
  %add15.i1289.i = add i32 %base.0.i1288.i, %spec.select22.i1287.i
  %204 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %gpu_addr.i, align 8
  %conv331.i = zext i32 %mul.i to i64
  %add332.i = add i64 %205, %conv331.i
  %shr333.i = lshr i64 %add332.i, 32
  %conv335.i = trunc i64 %shr333.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1289.i, i32 noundef %conv335.i, i32 noundef 0) #11
  br label %cond.end337.i

cond.end337.i:                                    ; preds = %cond.false327.i, %cond.true313.i
  %206 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %virt.i2, align 8
  %and340.i = and i32 %207, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340.i)
  %tobool341.not.i = icmp eq i32 %and340.i, 0
  br i1 %tobool341.not.i, label %cond.end337.i.cond.false366.i_crit_edge, label %land.lhs.true342.i

cond.end337.i.cond.false366.i_crit_edge:          ; preds = %cond.end337.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false366.i

land.lhs.true342.i:                               ; preds = %cond.end337.i
  %208 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %funcs.i, align 4
  %tobool346.not.i = icmp eq ptr %209, null
  br i1 %tobool346.not.i, label %land.lhs.true342.i.cond.false366.i_crit_edge, label %land.lhs.true347.i

land.lhs.true342.i.cond.false366.i_crit_edge:     ; preds = %land.lhs.true342.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false366.i

land.lhs.true347.i:                               ; preds = %land.lhs.true342.i
  %sriov_wreg351.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %209, i32 0, i32 12
  %210 = ptrtoint ptr %sriov_wreg351.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %sriov_wreg351.i, align 4
  %tobool352.not.i = icmp eq ptr %211, null
  br i1 %tobool352.not.i, label %land.lhs.true347.i.cond.false366.i_crit_edge, label %cond.true353.i

land.lhs.true347.i.cond.false366.i_crit_edge:     ; preds = %land.lhs.true347.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false366.i

cond.true353.i:                                   ; preds = %land.lhs.true347.i
  call void @__sanitizer_cov_trace_pc() #13
  %212 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1291.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1293.i = select i1 %cmp10.i1291.i, i32 1673, i32 137
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %base.0.i1294.i = load i32, ptr %213, align 4
  %add15.i1295.i = add i32 %base.0.i1294.i, %spec.select22.i1293.i
  %215 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %gpu_addr.i, align 8
  %217 = trunc i64 %216 to i32
  %conv364.i = add i32 %mul.i, %217
  %and365.i = and i32 %conv364.i, -4
  tail call void %211(ptr noundef %handle, i32 noundef %add15.i1295.i, i32 noundef %and365.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end375.i

cond.false366.i:                                  ; preds = %land.lhs.true347.i.cond.false366.i_crit_edge, %land.lhs.true342.i.cond.false366.i_crit_edge, %cond.end337.i.cond.false366.i_crit_edge
  %218 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1297.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1299.i = select i1 %cmp10.i1297.i, i32 1673, i32 137
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %base.0.i1300.i = load i32, ptr %219, align 4
  %add15.i1301.i = add i32 %base.0.i1300.i, %spec.select22.i1299.i
  %221 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %gpu_addr.i, align 8
  %223 = trunc i64 %222 to i32
  %conv373.i = add i32 %mul.i, %223
  %and374.i = and i32 %conv373.i, -4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1301.i, i32 noundef %and374.i, i32 noundef 0) #11
  br label %cond.end375.i

cond.end375.i:                                    ; preds = %cond.false366.i, %cond.true353.i
  %224 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %virt.i2, align 8
  %and380.i = and i32 %225, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380.i)
  %tobool381.not.i = icmp eq i32 %and380.i, 0
  br i1 %tobool381.not.i, label %cond.end375.i.cond.false402.i_crit_edge, label %land.lhs.true382.i

cond.end375.i.cond.false402.i_crit_edge:          ; preds = %cond.end375.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false402.i

land.lhs.true382.i:                               ; preds = %cond.end375.i
  %226 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %funcs.i, align 4
  %tobool386.not.i = icmp eq ptr %227, null
  br i1 %tobool386.not.i, label %land.lhs.true382.i.cond.false402.i_crit_edge, label %land.lhs.true387.i

land.lhs.true382.i.cond.false402.i_crit_edge:     ; preds = %land.lhs.true382.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false402.i

land.lhs.true387.i:                               ; preds = %land.lhs.true382.i
  %sriov_wreg391.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %227, i32 0, i32 12
  %228 = ptrtoint ptr %sriov_wreg391.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %sriov_wreg391.i, align 4
  %tobool392.not.i = icmp eq ptr %229, null
  br i1 %tobool392.not.i, label %land.lhs.true387.i.cond.false402.i_crit_edge, label %cond.true393.i

land.lhs.true387.i.cond.false402.i_crit_edge:     ; preds = %land.lhs.true387.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false402.i

cond.true393.i:                                   ; preds = %land.lhs.true387.i
  call void @__sanitizer_cov_trace_pc() #13
  %230 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1303.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1305.i = select i1 %cmp10.i1303.i, i32 1665, i32 129
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %base.0.i1306.i = load i32, ptr %231, align 4
  %add15.i1307.i = add i32 %base.0.i1306.i, %spec.select22.i1305.i
  %gpu_addr399.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 12
  %233 = ptrtoint ptr %gpu_addr399.i to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %gpu_addr399.i, align 8
  %shr400.i = lshr i64 %234, 8
  %conv401.i = trunc i64 %shr400.i to i32
  tail call void %229(ptr noundef %handle, i32 noundef %add15.i1307.i, i32 noundef %conv401.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end407.i

cond.false402.i:                                  ; preds = %land.lhs.true387.i.cond.false402.i_crit_edge, %land.lhs.true382.i.cond.false402.i_crit_edge, %cond.end375.i.cond.false402.i_crit_edge
  %235 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1309.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1311.i = select i1 %cmp10.i1309.i, i32 1665, i32 129
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %base.0.i1312.i = load i32, ptr %236, align 4
  %add15.i1313.i = add i32 %base.0.i1312.i, %spec.select22.i1311.i
  %gpu_addr404.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 12
  %238 = ptrtoint ptr %gpu_addr404.i to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %gpu_addr404.i, align 8
  %shr405.i = lshr i64 %239, 8
  %conv406.i = trunc i64 %shr405.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1313.i, i32 noundef %conv406.i, i32 noundef 0) #11
  br label %cond.end407.i

cond.end407.i:                                    ; preds = %cond.false402.i, %cond.true393.i
  %240 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %virt.i2, align 8
  %and410.i = and i32 %241, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and410.i)
  %tobool411.not.i = icmp eq i32 %and410.i, 0
  br i1 %tobool411.not.i, label %cond.end407.i.cond.false432.i_crit_edge, label %land.lhs.true412.i

cond.end407.i.cond.false432.i_crit_edge:          ; preds = %cond.end407.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false432.i

land.lhs.true412.i:                               ; preds = %cond.end407.i
  %242 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %funcs.i, align 4
  %tobool416.not.i = icmp eq ptr %243, null
  br i1 %tobool416.not.i, label %land.lhs.true412.i.cond.false432.i_crit_edge, label %land.lhs.true417.i

land.lhs.true412.i.cond.false432.i_crit_edge:     ; preds = %land.lhs.true412.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false432.i

land.lhs.true417.i:                               ; preds = %land.lhs.true412.i
  %sriov_wreg421.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %243, i32 0, i32 12
  %244 = ptrtoint ptr %sriov_wreg421.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %sriov_wreg421.i, align 4
  %tobool422.not.i = icmp eq ptr %245, null
  br i1 %tobool422.not.i, label %land.lhs.true417.i.cond.false432.i_crit_edge, label %cond.true423.i

land.lhs.true417.i.cond.false432.i_crit_edge:     ; preds = %land.lhs.true417.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false432.i

cond.true423.i:                                   ; preds = %land.lhs.true417.i
  call void @__sanitizer_cov_trace_pc() #13
  %246 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1315.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1317.i = select i1 %cmp10.i1315.i, i32 1666, i32 130
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %base.0.i1318.i = load i32, ptr %247, align 4
  %add15.i1319.i = add i32 %base.0.i1318.i, %spec.select22.i1317.i
  %gpu_addr429.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 12
  %249 = ptrtoint ptr %gpu_addr429.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %gpu_addr429.i, align 8
  %shr430.i = lshr i64 %250, 40
  %conv431.i = trunc i64 %shr430.i to i32
  tail call void %245(ptr noundef %handle, i32 noundef %add15.i1319.i, i32 noundef %conv431.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end437.i

cond.false432.i:                                  ; preds = %land.lhs.true417.i.cond.false432.i_crit_edge, %land.lhs.true412.i.cond.false432.i_crit_edge, %cond.end407.i.cond.false432.i_crit_edge
  %251 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1321.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1323.i = select i1 %cmp10.i1321.i, i32 1666, i32 130
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %base.0.i1324.i = load i32, ptr %252, align 4
  %add15.i1325.i = add i32 %base.0.i1324.i, %spec.select22.i1323.i
  %gpu_addr434.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 12
  %254 = ptrtoint ptr %gpu_addr434.i to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %gpu_addr434.i, align 8
  %shr435.i = lshr i64 %255, 40
  %conv436.i = trunc i64 %shr435.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1325.i, i32 noundef %conv436.i, i32 noundef 0) #11
  br label %cond.end437.i

cond.end437.i:                                    ; preds = %cond.false432.i, %cond.true423.i
  %wptr.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 7
  %256 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 0, ptr %wptr.i, align 8
  %257 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %virt.i2, align 8
  %and440.i = and i32 %258, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and440.i)
  %tobool441.not.i = icmp eq i32 %and440.i, 0
  br i1 %tobool441.not.i, label %cond.end437.i.cond.false459.i_crit_edge, label %land.lhs.true442.i

cond.end437.i.cond.false459.i_crit_edge:          ; preds = %cond.end437.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false459.i

land.lhs.true442.i:                               ; preds = %cond.end437.i
  %259 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %funcs.i, align 4
  %tobool446.not.i = icmp eq ptr %260, null
  br i1 %tobool446.not.i, label %land.lhs.true442.i.cond.false459.i_crit_edge, label %land.lhs.true447.i

land.lhs.true442.i.cond.false459.i_crit_edge:     ; preds = %land.lhs.true442.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false459.i

land.lhs.true447.i:                               ; preds = %land.lhs.true442.i
  %sriov_wreg451.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %260, i32 0, i32 12
  %261 = ptrtoint ptr %sriov_wreg451.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %sriov_wreg451.i, align 4
  %tobool452.not.i = icmp eq ptr %262, null
  br i1 %tobool452.not.i, label %land.lhs.true447.i.cond.false459.i_crit_edge, label %cond.true453.i

land.lhs.true447.i.cond.false459.i_crit_edge:     ; preds = %land.lhs.true447.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false459.i

cond.true453.i:                                   ; preds = %land.lhs.true447.i
  call void @__sanitizer_cov_trace_pc() #13
  %263 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1327.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1329.i = select i1 %cmp10.i1327.i, i32 1717, i32 181
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %base.0.i1330.i = load i32, ptr %264, align 4
  %add15.i1331.i = add i32 %base.0.i1330.i, %spec.select22.i1329.i
  tail call void %262(ptr noundef %handle, i32 noundef %add15.i1331.i, i32 noundef 1, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end461.i

cond.false459.i:                                  ; preds = %land.lhs.true447.i.cond.false459.i_crit_edge, %land.lhs.true442.i.cond.false459.i_crit_edge, %cond.end437.i.cond.false459.i_crit_edge
  %266 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1333.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1335.i = select i1 %cmp10.i1333.i, i32 1717, i32 181
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %base.0.i1336.i = load i32, ptr %267, align 4
  %add15.i1337.i = add i32 %base.0.i1336.i, %spec.select22.i1335.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1337.i, i32 noundef 1, i32 noundef 0) #11
  br label %cond.end461.i

cond.end461.i:                                    ; preds = %cond.false459.i, %cond.true453.i
  %269 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %virt.i2, align 8
  %and464.i = and i32 %270, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and464.i)
  %tobool465.not.i = icmp eq i32 %and464.i, 0
  br i1 %tobool465.not.i, label %if.then466.i, label %cond.end461.i.if.end478.i_crit_edge

cond.end461.i.if.end478.i_crit_edge:              ; preds = %cond.end461.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end478.i

if.then466.i:                                     ; preds = %cond.end461.i
  call void @__sanitizer_cov_trace_pc() #13
  %271 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1339.i = icmp eq i32 %i.01496.i, 1
  %add12.i1340.i = select i1 %cmp10.i1339.i, i32 1536, i32 0
  %spec.select22.i1341.i = or i32 %add12.i1340.i, 133
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %273)
  %base.0.i1342.i = load i32, ptr %272, align 4
  %add15.i1343.i = add i32 %spec.select22.i1341.i, %base.0.i1342.i
  %274 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %wptr.i, align 8
  %conv470.i = trunc i64 %275 to i32
  %shl471.i = shl i32 %conv470.i, 2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1343.i, i32 noundef %shl471.i, i32 noundef 0) #11
  %276 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx.i.i8, align 8
  %spec.select22.i1347.i = or i32 %add12.i1340.i, 134
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %base.0.i1348.i = load i32, ptr %277, align 4
  %add15.i1349.i = add i32 %spec.select22.i1347.i, %base.0.i1348.i
  %279 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %wptr.i, align 8
  %sh.diff.i = lshr i64 %280, 30
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %shl477.i = and i32 %tr.sh.diff.i, -4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1349.i, i32 noundef %shl477.i, i32 noundef 0) #11
  br label %if.end478.i

if.end478.i:                                      ; preds = %if.then466.i, %cond.end461.i.if.end478.i_crit_edge
  %281 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %virt.i2, align 8
  %and481.i = and i32 %282, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and481.i)
  %tobool482.not.i = icmp eq i32 %and481.i, 0
  br i1 %tobool482.not.i, label %if.end478.i.cond.false501.i_crit_edge, label %land.lhs.true483.i

if.end478.i.cond.false501.i_crit_edge:            ; preds = %if.end478.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false501.i

land.lhs.true483.i:                               ; preds = %if.end478.i
  %283 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %funcs.i, align 4
  %tobool487.not.i = icmp eq ptr %284, null
  br i1 %tobool487.not.i, label %land.lhs.true483.i.cond.false501.i_crit_edge, label %land.lhs.true488.i

land.lhs.true483.i.cond.false501.i_crit_edge:     ; preds = %land.lhs.true483.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false501.i

land.lhs.true488.i:                               ; preds = %land.lhs.true483.i
  %sriov_rreg492.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %284, i32 0, i32 13
  %285 = ptrtoint ptr %sriov_rreg492.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %sriov_rreg492.i, align 4
  %tobool493.not.i = icmp eq ptr %286, null
  br i1 %tobool493.not.i, label %land.lhs.true488.i.cond.false501.i_crit_edge, label %cond.true494.i

land.lhs.true488.i.cond.false501.i_crit_edge:     ; preds = %land.lhs.true488.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false501.i

cond.true494.i:                                   ; preds = %land.lhs.true488.i
  call void @__sanitizer_cov_trace_pc() #13
  %287 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1351.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1353.i = select i1 %cmp10.i1351.i, i32 1682, i32 146
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %base.0.i1354.i = load i32, ptr %288, align 4
  %add15.i1355.i = add i32 %base.0.i1354.i, %spec.select22.i1353.i
  %call500.i = tail call i32 %286(ptr noundef %handle, i32 noundef %add15.i1355.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end504.i

cond.false501.i:                                  ; preds = %land.lhs.true488.i.cond.false501.i_crit_edge, %land.lhs.true483.i.cond.false501.i_crit_edge, %if.end478.i.cond.false501.i_crit_edge
  %290 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1357.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1359.i = select i1 %cmp10.i1357.i, i32 1682, i32 146
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %base.0.i1360.i = load i32, ptr %291, align 4
  %add15.i1361.i = add i32 %base.0.i1360.i, %spec.select22.i1359.i
  %call503.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1361.i, i32 noundef 0) #11
  br label %cond.end504.i

cond.end504.i:                                    ; preds = %cond.false501.i, %cond.true494.i
  %cond505.i = phi i32 [ %call500.i, %cond.true494.i ], [ %call503.i, %cond.false501.i ]
  %293 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %virt.i2, align 8
  %and508.i = and i32 %294, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and508.i)
  %tobool509.not.i = icmp eq i32 %and508.i, 0
  br i1 %tobool509.not.i, label %cond.end504.i.cond.false528.i_crit_edge, label %land.lhs.true510.i

cond.end504.i.cond.false528.i_crit_edge:          ; preds = %cond.end504.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false528.i

land.lhs.true510.i:                               ; preds = %cond.end504.i
  %295 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %funcs.i, align 4
  %tobool514.not.i = icmp eq ptr %296, null
  br i1 %tobool514.not.i, label %land.lhs.true510.i.cond.false528.i_crit_edge, label %land.lhs.true515.i

land.lhs.true510.i.cond.false528.i_crit_edge:     ; preds = %land.lhs.true510.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false528.i

land.lhs.true515.i:                               ; preds = %land.lhs.true510.i
  %sriov_rreg519.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %296, i32 0, i32 13
  %297 = ptrtoint ptr %sriov_rreg519.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %sriov_rreg519.i, align 4
  %tobool520.not.i = icmp eq ptr %298, null
  br i1 %tobool520.not.i, label %land.lhs.true515.i.cond.false528.i_crit_edge, label %cond.true521.i

land.lhs.true515.i.cond.false528.i_crit_edge:     ; preds = %land.lhs.true515.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false528.i

cond.true521.i:                                   ; preds = %land.lhs.true515.i
  call void @__sanitizer_cov_trace_pc() #13
  %299 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1363.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1365.i = select i1 %cmp10.i1363.i, i32 1707, i32 171
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %base.0.i1366.i = load i32, ptr %300, align 4
  %add15.i1367.i = add i32 %base.0.i1366.i, %spec.select22.i1365.i
  %call527.i = tail call i32 %298(ptr noundef %handle, i32 noundef %add15.i1367.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end531.i

cond.false528.i:                                  ; preds = %land.lhs.true515.i.cond.false528.i_crit_edge, %land.lhs.true510.i.cond.false528.i_crit_edge, %cond.end504.i.cond.false528.i_crit_edge
  %302 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1369.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1371.i = select i1 %cmp10.i1369.i, i32 1707, i32 171
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %base.0.i1372.i = load i32, ptr %303, align 4
  %add15.i1373.i = add i32 %base.0.i1372.i, %spec.select22.i1371.i
  %call530.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1373.i, i32 noundef 0) #11
  br label %cond.end531.i

cond.end531.i:                                    ; preds = %cond.false528.i, %cond.true521.i
  %cond532.i = phi i32 [ %call527.i, %cond.true521.i ], [ %call530.i, %cond.false528.i ]
  %use_doorbell.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 24
  %305 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %use_doorbell.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool533.not.i = icmp eq i8 %306, 0
  br i1 %tobool533.not.i, label %if.else.i14, label %if.then534.i

if.then534.i:                                     ; preds = %cond.end531.i
  call void @__sanitizer_cov_trace_pc() #13
  %or536.i = or i32 %cond505.i, 268435456
  %and537.i = and i32 %cond532.i, -268435453
  %doorbell_index.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 23
  %307 = ptrtoint ptr %doorbell_index.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %doorbell_index.i, align 8
  %shl538.i = shl i32 %308, 2
  %and539.i = and i32 %shl538.i, 268435452
  %or540.i = or i32 %and539.i, %and537.i
  br label %if.end543.i

if.else.i14:                                      ; preds = %cond.end531.i
  call void @__sanitizer_cov_trace_pc() #13
  %and541.i = and i32 %cond505.i, -268435457
  br label %if.end543.i

if.end543.i:                                      ; preds = %if.else.i14, %if.then534.i
  %doorbell.0.i = phi i32 [ %or536.i, %if.then534.i ], [ %and541.i, %if.else.i14 ]
  %doorbell_offset.0.i = phi i32 [ %or540.i, %if.then534.i ], [ %cond532.i, %if.else.i14 ]
  %309 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %virt.i2, align 8
  %and546.i = and i32 %310, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and546.i)
  %tobool547.not.i = icmp eq i32 %and546.i, 0
  br i1 %tobool547.not.i, label %if.end543.i.cond.false565.i_crit_edge, label %land.lhs.true548.i

if.end543.i.cond.false565.i_crit_edge:            ; preds = %if.end543.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false565.i

land.lhs.true548.i:                               ; preds = %if.end543.i
  %311 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %funcs.i, align 4
  %tobool552.not.i = icmp eq ptr %312, null
  br i1 %tobool552.not.i, label %land.lhs.true548.i.cond.false565.i_crit_edge, label %land.lhs.true553.i

land.lhs.true548.i.cond.false565.i_crit_edge:     ; preds = %land.lhs.true548.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false565.i

land.lhs.true553.i:                               ; preds = %land.lhs.true548.i
  %sriov_wreg557.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %312, i32 0, i32 12
  %313 = ptrtoint ptr %sriov_wreg557.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %sriov_wreg557.i, align 4
  %tobool558.not.i = icmp eq ptr %314, null
  br i1 %tobool558.not.i, label %land.lhs.true553.i.cond.false565.i_crit_edge, label %cond.true559.i

land.lhs.true553.i.cond.false565.i_crit_edge:     ; preds = %land.lhs.true553.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false565.i

cond.true559.i:                                   ; preds = %land.lhs.true553.i
  call void @__sanitizer_cov_trace_pc() #13
  %315 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1375.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1377.i = select i1 %cmp10.i1375.i, i32 1682, i32 146
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %base.0.i1378.i = load i32, ptr %316, align 4
  %add15.i1379.i = add i32 %base.0.i1378.i, %spec.select22.i1377.i
  tail call void %314(ptr noundef %handle, i32 noundef %add15.i1379.i, i32 noundef %doorbell.0.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end567.i

cond.false565.i:                                  ; preds = %land.lhs.true553.i.cond.false565.i_crit_edge, %land.lhs.true548.i.cond.false565.i_crit_edge, %if.end543.i.cond.false565.i_crit_edge
  %318 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1381.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1383.i = select i1 %cmp10.i1381.i, i32 1682, i32 146
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %base.0.i1384.i = load i32, ptr %319, align 4
  %add15.i1385.i = add i32 %base.0.i1384.i, %spec.select22.i1383.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1385.i, i32 noundef %doorbell.0.i, i32 noundef 0) #11
  br label %cond.end567.i

cond.end567.i:                                    ; preds = %cond.false565.i, %cond.true559.i
  %321 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %virt.i2, align 8
  %and570.i = and i32 %322, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and570.i)
  %tobool571.not.i = icmp eq i32 %and570.i, 0
  br i1 %tobool571.not.i, label %cond.end567.i.cond.false589.i_crit_edge, label %land.lhs.true572.i

cond.end567.i.cond.false589.i_crit_edge:          ; preds = %cond.end567.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false589.i

land.lhs.true572.i:                               ; preds = %cond.end567.i
  %323 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %funcs.i, align 4
  %tobool576.not.i = icmp eq ptr %324, null
  br i1 %tobool576.not.i, label %land.lhs.true572.i.cond.false589.i_crit_edge, label %land.lhs.true577.i

land.lhs.true572.i.cond.false589.i_crit_edge:     ; preds = %land.lhs.true572.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false589.i

land.lhs.true577.i:                               ; preds = %land.lhs.true572.i
  %sriov_wreg581.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %324, i32 0, i32 12
  %325 = ptrtoint ptr %sriov_wreg581.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %sriov_wreg581.i, align 4
  %tobool582.not.i = icmp eq ptr %326, null
  br i1 %tobool582.not.i, label %land.lhs.true577.i.cond.false589.i_crit_edge, label %cond.true583.i

land.lhs.true577.i.cond.false589.i_crit_edge:     ; preds = %land.lhs.true577.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false589.i

cond.true583.i:                                   ; preds = %land.lhs.true577.i
  call void @__sanitizer_cov_trace_pc() #13
  %327 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1387.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1389.i = select i1 %cmp10.i1387.i, i32 1707, i32 171
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %329)
  %base.0.i1390.i = load i32, ptr %328, align 4
  %add15.i1391.i = add i32 %base.0.i1390.i, %spec.select22.i1389.i
  tail call void %326(ptr noundef %handle, i32 noundef %add15.i1391.i, i32 noundef %doorbell_offset.0.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end591.i

cond.false589.i:                                  ; preds = %land.lhs.true577.i.cond.false589.i_crit_edge, %land.lhs.true572.i.cond.false589.i_crit_edge, %cond.end567.i.cond.false589.i_crit_edge
  %330 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1393.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1395.i = select i1 %cmp10.i1393.i, i32 1707, i32 171
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %base.0.i1396.i = load i32, ptr %331, align 4
  %add15.i1397.i = add i32 %base.0.i1396.i, %spec.select22.i1395.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1397.i, i32 noundef %doorbell_offset.0.i, i32 noundef 0) #11
  br label %cond.end591.i

cond.end591.i:                                    ; preds = %cond.false589.i, %cond.true583.i
  %333 = ptrtoint ptr %funcs592.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %funcs592.i, align 8
  %sdma_doorbell_range.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %334, i32 0, i32 10
  %335 = ptrtoint ptr %sdma_doorbell_range.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %sdma_doorbell_range.i, align 4
  %337 = ptrtoint ptr %use_doorbell.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %use_doorbell.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool594.i = icmp ne i8 %338, 0
  %doorbell_index595.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 23
  %339 = ptrtoint ptr %doorbell_index595.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %doorbell_index595.i, align 8
  tail call void %336(ptr noundef %handle, i32 noundef %i.01496.i, i1 noundef zeroext %tobool594.i, i32 noundef %340, i32 noundef 20) #11
  %341 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %virt.i2, align 8
  %and598.i = and i32 %342, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and598.i)
  %tobool599.not.i = icmp eq i32 %and598.i, 0
  br i1 %tobool599.not.i, label %cond.end591.i.if.end601.i_crit_edge, label %if.then600.i

cond.end591.i.if.end601.i_crit_edge:              ; preds = %cond.end591.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end601.i

if.then600.i:                                     ; preds = %cond.end591.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sdma_v5_0_ring_set_wptr(ptr noundef %ring2.i) #11
  br label %if.end601.i

if.end601.i:                                      ; preds = %if.then600.i, %cond.end591.i.if.end601.i_crit_edge
  %343 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %virt.i2, align 8
  %and604.i = and i32 %344, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and604.i)
  %tobool605.not.i = icmp eq i32 %and604.i, 0
  br i1 %tobool605.not.i, label %if.end601.i.cond.false623.i_crit_edge, label %land.lhs.true606.i

if.end601.i.cond.false623.i_crit_edge:            ; preds = %if.end601.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false623.i

land.lhs.true606.i:                               ; preds = %if.end601.i
  %345 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %funcs.i, align 4
  %tobool610.not.i = icmp eq ptr %346, null
  br i1 %tobool610.not.i, label %land.lhs.true606.i.cond.false623.i_crit_edge, label %land.lhs.true611.i

land.lhs.true606.i.cond.false623.i_crit_edge:     ; preds = %land.lhs.true606.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false623.i

land.lhs.true611.i:                               ; preds = %land.lhs.true606.i
  %sriov_wreg615.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %346, i32 0, i32 12
  %347 = ptrtoint ptr %sriov_wreg615.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %sriov_wreg615.i, align 4
  %tobool616.not.i = icmp eq ptr %348, null
  br i1 %tobool616.not.i, label %land.lhs.true611.i.cond.false623.i_crit_edge, label %cond.true617.i

land.lhs.true611.i.cond.false623.i_crit_edge:     ; preds = %land.lhs.true611.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false623.i

cond.true617.i:                                   ; preds = %land.lhs.true611.i
  call void @__sanitizer_cov_trace_pc() #13
  %349 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1399.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1401.i = select i1 %cmp10.i1399.i, i32 1717, i32 181
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %base.0.i1402.i = load i32, ptr %350, align 4
  %add15.i1403.i = add i32 %base.0.i1402.i, %spec.select22.i1401.i
  tail call void %348(ptr noundef %handle, i32 noundef %add15.i1403.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end625.i

cond.false623.i:                                  ; preds = %land.lhs.true611.i.cond.false623.i_crit_edge, %land.lhs.true606.i.cond.false623.i_crit_edge, %if.end601.i.cond.false623.i_crit_edge
  %352 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1405.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1407.i = select i1 %cmp10.i1405.i, i32 1717, i32 181
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %354)
  %base.0.i1408.i = load i32, ptr %353, align 4
  %add15.i1409.i = add i32 %base.0.i1408.i, %spec.select22.i1407.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1409.i, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end625.i

cond.end625.i:                                    ; preds = %cond.false623.i, %cond.true617.i
  %355 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %virt.i2, align 8
  %and628.i = and i32 %356, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and628.i)
  %tobool629.not.i = icmp eq i32 %and628.i, 0
  br i1 %tobool629.not.i, label %if.then630.i, label %cond.end625.i.if.end650.i_crit_edge

cond.end625.i.if.end650.i_crit_edge:              ; preds = %cond.end625.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end650.i

if.then630.i:                                     ; preds = %cond.end625.i
  call void @__sanitizer_cov_trace_pc() #13
  %357 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1411.i = icmp eq i32 %i.01496.i, 1
  %add12.i1412.i = select i1 %cmp10.i1411.i, i32 1536, i32 0
  %spec.select22.i1413.i = or i32 %add12.i1412.i, 28
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %359)
  %base.0.i1414.i = load i32, ptr %358, align 4
  %add15.i1415.i = add i32 %base.0.i1414.i, %spec.select22.i1413.i
  %call632.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1415.i, i32 noundef 0) #11
  %or636.i = or i32 %call632.i, 34
  %360 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx.i.i8, align 8
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %base.0.i1420.i = load i32, ptr %361, align 4
  %add15.i1421.i = add i32 %base.0.i1420.i, %spec.select22.i1413.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1421.i, i32 noundef %or636.i, i32 noundef 0) #11
  %363 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %arrayidx.i.i8, align 8
  %spec.select22.i1425.i = or i32 %add12.i1412.i, 60
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %base.0.i1426.i = load i32, ptr %364, align 4
  %add15.i1427.i = add i32 %base.0.i1426.i, %spec.select22.i1425.i
  %call639.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1427.i, i32 noundef 0) #11
  %and640.i = and i32 %call639.i, -3647
  %or643.i = or i32 %and640.i, 1554
  %366 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %arrayidx.i.i8, align 8
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_load4_noabort(i32 %368)
  %base.0.i1432.i = load i32, ptr %367, align 4
  %add15.i1433.i = add i32 %base.0.i1432.i, %spec.select22.i1425.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1433.i, i32 noundef %or643.i, i32 noundef 0) #11
  %369 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %arrayidx.i.i8, align 8
  %spec.select22.i1437.i = or i32 %add12.i1412.i, 72
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %371)
  %base.0.i1438.i = load i32, ptr %370, align 4
  %add15.i1439.i = add i32 %base.0.i1438.i, %spec.select22.i1437.i
  %call646.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1439.i, i32 noundef 0) #11
  %and647.i = and i32 %call646.i, 16715775
  %or648.i = or i32 %and647.i, 57344
  %372 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %arrayidx.i.i8, align 8
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_load4_noabort(i32 %374)
  %base.0.i1444.i = load i32, ptr %373, align 4
  %add15.i1445.i = add i32 %base.0.i1444.i, %spec.select22.i1437.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1445.i, i32 noundef %or648.i, i32 noundef 0) #11
  br label %if.end650.i

if.end650.i:                                      ; preds = %if.then630.i, %cond.end625.i.if.end650.i_crit_edge
  %375 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %virt.i2, align 8
  %and653.i = and i32 %376, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and653.i)
  %tobool654.not.i = icmp eq i32 %and653.i, 0
  br i1 %tobool654.not.i, label %if.then655.i, label %if.end650.i.if.end661.i_crit_edge

if.end650.i.if.end661.i_crit_edge:                ; preds = %if.end650.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end661.i

if.then655.i:                                     ; preds = %if.end650.i
  call void @__sanitizer_cov_trace_pc() #13
  %377 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1447.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1449.i = select i1 %cmp10.i1447.i, i32 1578, i32 42
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %base.0.i1450.i = load i32, ptr %378, align 4
  %add15.i1451.i = add i32 %base.0.i1450.i, %spec.select22.i1449.i
  %call657.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1451.i, i32 noundef 0) #11
  %and658.i = and i32 %call657.i, -2
  %380 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %arrayidx.i.i8, align 8
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %base.0.i1456.i = load i32, ptr %381, align 4
  %add15.i1457.i = add i32 %base.0.i1456.i, %spec.select22.i1449.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1457.i, i32 noundef %and658.i, i32 noundef 0) #11
  br label %if.end661.i

if.end661.i:                                      ; preds = %if.then655.i, %if.end650.i.if.end661.i_crit_edge
  %or663.i = or i32 %or.i, 12801
  %383 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %virt.i2, align 8
  %and666.i = and i32 %384, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and666.i)
  %tobool667.not.i = icmp eq i32 %and666.i, 0
  br i1 %tobool667.not.i, label %if.end661.i.cond.false685.i_crit_edge, label %land.lhs.true668.i

if.end661.i.cond.false685.i_crit_edge:            ; preds = %if.end661.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false685.i

land.lhs.true668.i:                               ; preds = %if.end661.i
  %385 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %funcs.i, align 4
  %tobool672.not.i = icmp eq ptr %386, null
  br i1 %tobool672.not.i, label %land.lhs.true668.i.cond.false685.i_crit_edge, label %land.lhs.true673.i

land.lhs.true668.i.cond.false685.i_crit_edge:     ; preds = %land.lhs.true668.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false685.i

land.lhs.true673.i:                               ; preds = %land.lhs.true668.i
  %sriov_wreg677.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %386, i32 0, i32 12
  %387 = ptrtoint ptr %sriov_wreg677.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %sriov_wreg677.i, align 4
  %tobool678.not.i = icmp eq ptr %388, null
  br i1 %tobool678.not.i, label %land.lhs.true673.i.cond.false685.i_crit_edge, label %cond.true679.i

land.lhs.true673.i.cond.false685.i_crit_edge:     ; preds = %land.lhs.true673.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false685.i

cond.true679.i:                                   ; preds = %land.lhs.true673.i
  call void @__sanitizer_cov_trace_pc() #13
  %389 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1459.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1461.i = select i1 %cmp10.i1459.i, i32 1664, i32 128
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load4_noabort(i32 %391)
  %base.0.i1462.i = load i32, ptr %390, align 4
  %add15.i1463.i = add i32 %base.0.i1462.i, %spec.select22.i1461.i
  tail call void %388(ptr noundef %handle, i32 noundef %add15.i1463.i, i32 noundef %or663.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end687.i

cond.false685.i:                                  ; preds = %land.lhs.true673.i.cond.false685.i_crit_edge, %land.lhs.true668.i.cond.false685.i_crit_edge, %if.end661.i.cond.false685.i_crit_edge
  %392 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1465.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1467.i = select i1 %cmp10.i1465.i, i32 1664, i32 128
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %394)
  %base.0.i1468.i = load i32, ptr %393, align 4
  %add15.i1469.i = add i32 %base.0.i1468.i, %spec.select22.i1467.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1469.i, i32 noundef %or663.i, i32 noundef 0) #11
  br label %cond.end687.i

cond.end687.i:                                    ; preds = %cond.false685.i, %cond.true679.i
  %395 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %virt.i2, align 8
  %and690.i = and i32 %396, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and690.i)
  %tobool691.not.i = icmp eq i32 %and690.i, 0
  br i1 %tobool691.not.i, label %cond.end687.i.cond.false710.i_crit_edge, label %land.lhs.true692.i

cond.end687.i.cond.false710.i_crit_edge:          ; preds = %cond.end687.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false710.i

land.lhs.true692.i:                               ; preds = %cond.end687.i
  %397 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %funcs.i, align 4
  %tobool696.not.i = icmp eq ptr %398, null
  br i1 %tobool696.not.i, label %land.lhs.true692.i.cond.false710.i_crit_edge, label %land.lhs.true697.i

land.lhs.true692.i.cond.false710.i_crit_edge:     ; preds = %land.lhs.true692.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false710.i

land.lhs.true697.i:                               ; preds = %land.lhs.true692.i
  %sriov_rreg701.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %398, i32 0, i32 13
  %399 = ptrtoint ptr %sriov_rreg701.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %sriov_rreg701.i, align 4
  %tobool702.not.i = icmp eq ptr %400, null
  br i1 %tobool702.not.i, label %land.lhs.true697.i.cond.false710.i_crit_edge, label %cond.true703.i

land.lhs.true697.i.cond.false710.i_crit_edge:     ; preds = %land.lhs.true697.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false710.i

cond.true703.i:                                   ; preds = %land.lhs.true697.i
  call void @__sanitizer_cov_trace_pc() #13
  %401 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1471.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1473.i = select i1 %cmp10.i1471.i, i32 1674, i32 138
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %base.0.i1474.i = load i32, ptr %402, align 4
  %add15.i1475.i = add i32 %base.0.i1474.i, %spec.select22.i1473.i
  %call709.i = tail call i32 %400(ptr noundef %handle, i32 noundef %add15.i1475.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end713.i

cond.false710.i:                                  ; preds = %land.lhs.true697.i.cond.false710.i_crit_edge, %land.lhs.true692.i.cond.false710.i_crit_edge, %cond.end687.i.cond.false710.i_crit_edge
  %404 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1477.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1479.i = select i1 %cmp10.i1477.i, i32 1674, i32 138
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %406)
  %base.0.i1480.i = load i32, ptr %405, align 4
  %add15.i1481.i = add i32 %base.0.i1480.i, %spec.select22.i1479.i
  %call712.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i1481.i, i32 noundef 0) #11
  br label %cond.end713.i

cond.end713.i:                                    ; preds = %cond.false710.i, %cond.true703.i
  %cond714.i = phi i32 [ %call709.i, %cond.true703.i ], [ %call712.i, %cond.false710.i ]
  %or718.i = or i32 %cond714.i, 17
  %407 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %virt.i2, align 8
  %and721.i = and i32 %408, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and721.i)
  %tobool722.not.i = icmp eq i32 %and721.i, 0
  br i1 %tobool722.not.i, label %cond.end713.i.cond.false740.i_crit_edge, label %land.lhs.true723.i

cond.end713.i.cond.false740.i_crit_edge:          ; preds = %cond.end713.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false740.i

land.lhs.true723.i:                               ; preds = %cond.end713.i
  %409 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %funcs.i, align 4
  %tobool727.not.i = icmp eq ptr %410, null
  br i1 %tobool727.not.i, label %land.lhs.true723.i.cond.false740.i_crit_edge, label %land.lhs.true728.i

land.lhs.true723.i.cond.false740.i_crit_edge:     ; preds = %land.lhs.true723.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false740.i

land.lhs.true728.i:                               ; preds = %land.lhs.true723.i
  %sriov_wreg732.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %410, i32 0, i32 12
  %411 = ptrtoint ptr %sriov_wreg732.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %sriov_wreg732.i, align 4
  %tobool733.not.i = icmp eq ptr %412, null
  br i1 %tobool733.not.i, label %land.lhs.true728.i.cond.false740.i_crit_edge, label %cond.true734.i

land.lhs.true728.i.cond.false740.i_crit_edge:     ; preds = %land.lhs.true728.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false740.i

cond.true734.i:                                   ; preds = %land.lhs.true728.i
  call void @__sanitizer_cov_trace_pc() #13
  %413 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1483.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1485.i = select i1 %cmp10.i1483.i, i32 1674, i32 138
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_load4_noabort(i32 %415)
  %base.0.i1486.i = load i32, ptr %414, align 4
  %add15.i1487.i = add i32 %base.0.i1486.i, %spec.select22.i1485.i
  tail call void %412(ptr noundef %handle, i32 noundef %add15.i1487.i, i32 noundef %or718.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end742.i

cond.false740.i:                                  ; preds = %land.lhs.true728.i.cond.false740.i_crit_edge, %land.lhs.true723.i.cond.false740.i_crit_edge, %cond.end713.i.cond.false740.i_crit_edge
  %416 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.01496.i)
  %cmp10.i1489.i = icmp eq i32 %i.01496.i, 1
  %spec.select22.i1491.i = select i1 %cmp10.i1489.i, i32 1674, i32 138
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_load4_noabort(i32 %418)
  %base.0.i1492.i = load i32, ptr %417, align 4
  %add15.i1493.i = add i32 %base.0.i1492.i, %spec.select22.i1491.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i1493.i, i32 noundef %or718.i, i32 noundef 0) #11
  br label %cond.end742.i

cond.end742.i:                                    ; preds = %cond.false740.i, %cond.true734.i
  %ready.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.01496.i, i32 3, i32 3, i32 17
  %419 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 1, ptr %ready.i, align 4
  %420 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %virt.i2, align 8
  %and745.i = and i32 %421, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and745.i)
  %tobool746.not.i = icmp eq i32 %and745.i, 0
  br i1 %tobool746.not.i, label %cond.end742.i.if.end748.i_crit_edge, label %if.then747.i

cond.end742.i.if.end748.i_crit_edge:              ; preds = %cond.end742.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end748.i

if.then747.i:                                     ; preds = %cond.end742.i
  tail call fastcc void @sdma_v5_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext true) #11
  %422 = ptrtoint ptr %virt.i2 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %virt.i2, align 8
  %and.i.i15 = and i32 %423, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool1.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool1.not.i.i16, label %for.cond.preheader.i.i18, label %if.then747.i.if.end748.i_crit_edge

if.then747.i.if.end748.i_crit_edge:               ; preds = %if.then747.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end748.i

for.cond.preheader.i.i18:                         ; preds = %if.then747.i
  %424 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %cmp29.i.i17 = icmp sgt i32 %425, 0
  br i1 %cmp29.i.i17, label %for.cond.preheader.i.i18.for.body.i.i29_crit_edge, label %for.cond.preheader.i.i18.if.end748.i_crit_edge

for.cond.preheader.i.i18.if.end748.i_crit_edge:   ; preds = %for.cond.preheader.i.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end748.i

for.cond.preheader.i.i18.for.body.i.i29_crit_edge: ; preds = %for.cond.preheader.i.i18
  br label %for.body.i.i29

for.body.i.i29:                                   ; preds = %for.body.i.i29.for.body.i.i29_crit_edge, %for.cond.preheader.i.i18.for.body.i.i29_crit_edge
  %i.030.i.i19 = phi i32 [ %inc.i.i28, %for.body.i.i29.for.body.i.i29_crit_edge ], [ 0, %for.cond.preheader.i.i18.for.body.i.i29_crit_edge ]
  %426 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx.i.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.030.i.i19)
  %cmp10.i22.i.i20 = icmp eq i32 %i.030.i.i19, 1
  %spec.select22.i.i.i21 = select i1 %cmp10.i22.i.i20, i32 1578, i32 42
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %428)
  %base.0.i.i.i22 = load i32, ptr %427, align 4
  %add15.i.i.i23 = add i32 %base.0.i.i.i22, %spec.select22.i.i.i21
  %call4.i.i24 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i.i.i23, i32 noundef 0) #11
  %and5.i.i25 = and i32 %call4.i.i24, -2
  %429 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx.i.i8, align 8
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %base.0.i27.i.i26 = load i32, ptr %430, align 4
  %add15.i28.i.i27 = add i32 %base.0.i27.i.i26, %spec.select22.i.i.i21
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i28.i.i27, i32 noundef %and5.i.i25, i32 noundef 0) #11
  %inc.i.i28 = add nuw nsw i32 %i.030.i.i19, 1
  %432 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %num_instances.i, align 4
  %cmp.i1494.i = icmp slt i32 %inc.i.i28, %433
  br i1 %cmp.i1494.i, label %for.body.i.i29.for.body.i.i29_crit_edge, label %for.body.i.i29.if.end748.i_crit_edge

for.body.i.i29.if.end748.i_crit_edge:             ; preds = %for.body.i.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end748.i

for.body.i.i29.for.body.i.i29_crit_edge:          ; preds = %for.body.i.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i29

if.end748.i:                                      ; preds = %for.body.i.i29.if.end748.i_crit_edge, %for.cond.preheader.i.i18.if.end748.i_crit_edge, %if.then747.i.if.end748.i_crit_edge, %cond.end742.i.if.end748.i_crit_edge
  %call749.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call749.i)
  %tobool750.not.i = icmp eq i32 %call749.i, 0
  br i1 %tobool750.not.i, label %if.end752.i, label %if.end748.i.sdma_v5_0_start.exit_crit_edge

if.end748.i.sdma_v5_0_start.exit_crit_edge:       ; preds = %if.end748.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_start.exit

if.end752.i:                                      ; preds = %if.end748.i
  %434 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp753.i = icmp eq ptr %435, %ring2.i
  br i1 %cmp753.i, label %if.then755.i, label %if.end752.i.for.inc.i_crit_edge

if.end752.i.for.inc.i_crit_edge:                  ; preds = %if.end752.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then755.i:                                     ; preds = %if.end752.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %handle, i1 noundef zeroext true) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then755.i, %if.end752.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01496.i, 1
  %436 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %num_instances.i, align 4
  %cmp.i30 = icmp slt i32 %inc.i, %437
  br i1 %cmp.i30, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sdma_v5_0_start.exit_crit_edge

for.inc.i.sdma_v5_0_start.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_start.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sdma_v5_0_start.exit:                             ; preds = %for.inc.i.sdma_v5_0_start.exit_crit_edge, %if.end748.i.sdma_v5_0_start.exit_crit_edge, %cleanup.sink.split.i.sdma_v5_0_start.exit_crit_edge, %for.body.i.i.sdma_v5_0_start.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cleanup.sink.split.i.sdma_v5_0_start.exit_crit_edge ], [ %call749.i, %if.end748.i.sdma_v5_0_start.exit_crit_edge ], [ 0, %for.inc.i.sdma_v5_0_start.exit_crit_edge ], [ -22, %for.body.i.i.sdma_v5_0_start.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sdma_v5_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false)
  tail call fastcc void @sdma_v5_0_enable(ptr noundef %handle, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sdma_v5_0_hw_fini.exit_crit_edge

entry.sdma_v5_0_hw_fini.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_0_hw_fini.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sdma_v5_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  tail call fastcc void @sdma_v5_0_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  br label %sdma_v5_0_hw_fini.exit

sdma_v5_0_hw_fini.exit:                           ; preds = %if.end.i, %entry.sdma_v5_0_hw_fini.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdma_v5_0_hw_init(ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sdma_v5_0_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.cleanup2_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.09, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup2.loopexit_crit_edge

for.cond.cleanup2.loopexit_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2.loopexit

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.09)
  %cmp10.i = icmp eq i32 %i.09, 1
  %spec.select22.i = select i1 %cmp10.i, i32 1573, i32 37
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %base.0.i = load i32, ptr %5, align 4
  %add15.i = add i32 %base.0.i, %spec.select22.i
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i, i32 noundef 0) #11
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup2.loopexit_crit_edge, label %for.cond

for.body.cleanup2.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2.loopexit

cleanup2.loopexit:                                ; preds = %for.body.cleanup2.loopexit_crit_edge, %for.cond.cleanup2.loopexit_crit_edge
  %phi.bo = xor i1 %tobool.not, true
  br label %cleanup2

cleanup2:                                         ; preds = %cleanup2.loopexit, %entry.cleanup2_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup2_crit_edge ], [ %phi.bo, %cleanup2.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %base.0.i = load i32, ptr %3, align 4
  %add15.i = add i32 %base.0.i, 37
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i, i32 noundef 0) #11
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %base.0.i14 = load i32, ptr %6, align 4
  %add15.i15 = add i32 %base.0.i14, 1573
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i15, i32 noundef 0) #11
  %and = and i32 %call1, 1
  %and4 = and i32 %and, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #11
  %inc = add nuw i32 %i.017, 1
  %9 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdma_v5_0_soft_reset(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 327680, label %if.end.sw.bb_crit_edge
    i32 327682, label %if.end.sw.bb_crit_edge38
    i32 327685, label %if.end.sw.bb_crit_edge39
  ]

if.end.sw.bb_crit_edge39:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge38:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge38, %if.end.sw.bb_crit_edge39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %5 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp52.i = icmp sgt i32 %6, 0
  br i1 %cmp52.i, label %for.body.lr.ph.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.053.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %7 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.053.i)
  %cmp10.i.i = icmp eq i32 %i.053.i, 1
  %spec.select22.i.i = select i1 %cmp10.i.i, i32 1563, i32 27
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %base.0.i.i = load i32, ptr %10, align 4
  %add15.i.i = add i32 %base.0.i.i, %spec.select22.i.i
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call2.i)
  %12 = icmp ult i32 %call2.i, 16777216
  br i1 %12, label %if.then.i.for.inc.i_crit_edge, label %if.then5.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %and3.i = and i32 %call2.i, 16777215
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.053.i)
  %cmp10.i41.i = icmp eq i32 %i.053.i, 1
  %spec.select22.i43.i = select i1 %cmp10.i41.i, i32 1563, i32 27
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %base.0.i44.i = load i32, ptr %14, align 4
  %add15.i45.i = add i32 %base.0.i44.i, %spec.select22.i43.i
  %call8.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i45.i, i32 noundef 0) #11
  %or.i = or i32 %call8.i, -16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %or.i)
  %cmp9.not.i = icmp eq i32 %call8.i, %or.i
  br i1 %cmp9.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.for.inc.sink.split.i_crit_edge

if.else.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %if.else.i.for.inc.sink.split.i_crit_edge, %if.then5.i
  %spec.select22.i.sink.i = phi i32 [ %spec.select22.i.i, %if.then5.i ], [ %spec.select22.i43.i, %if.else.i.for.inc.sink.split.i_crit_edge ]
  %and3.sink.i = phi i32 [ %and3.i, %if.then5.i ], [ %or.i, %if.else.i.for.inc.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %base.0.i38.i = load i32, ptr %17, align 4
  %add15.i39.i = add i32 %base.0.i38.i, %spec.select22.i.sink.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i39.i, i32 noundef %and3.sink.i, i32 noundef 0) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %19 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %20
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %sdma_v5_0_update_medium_grain_clock_gating.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sdma_v5_0_update_medium_grain_clock_gating.exit:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp52.i8 = icmp sgt i32 %20, 0
  br i1 %cmp52.i8, label %sdma_v5_0_update_medium_grain_clock_gating.exit.for.body.i13_crit_edge, label %sdma_v5_0_update_medium_grain_clock_gating.exit.cleanup_crit_edge

sdma_v5_0_update_medium_grain_clock_gating.exit.cleanup_crit_edge: ; preds = %sdma_v5_0_update_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sdma_v5_0_update_medium_grain_clock_gating.exit.for.body.i13_crit_edge: ; preds = %sdma_v5_0_update_medium_grain_clock_gating.exit
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.inc.i36.for.body.i13_crit_edge, %sdma_v5_0_update_medium_grain_clock_gating.exit.for.body.i13_crit_edge
  %i.053.i12 = phi i32 [ %inc.i34, %for.inc.i36.for.body.i13_crit_edge ], [ 0, %sdma_v5_0_update_medium_grain_clock_gating.exit.for.body.i13_crit_edge ]
  br i1 %cmp, label %land.lhs.true.i16, label %for.body.i13.if.else.i29_crit_edge

for.body.i13.if.else.i29_crit_edge:               ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i29

land.lhs.true.i16:                                ; preds = %for.body.i13
  %21 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cg_flags.i, align 8
  %and.i14 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool1.not.i15 = icmp eq i32 %and.i14, 0
  br i1 %tobool1.not.i15, label %land.lhs.true.i16.if.else.i29_crit_edge, label %if.then.i23

land.lhs.true.i16.if.else.i29_crit_edge:          ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i29

if.then.i23:                                      ; preds = %land.lhs.true.i16
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.053.i12)
  %cmp10.i.i17 = icmp eq i32 %i.053.i12, 1
  %spec.select22.i.i18 = select i1 %cmp10.i.i17, i32 1562, i32 26
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %base.0.i.i19 = load i32, ptr %24, align 4
  %add15.i.i20 = add i32 %base.0.i.i19, %spec.select22.i.i18
  %call2.i21 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i.i20, i32 noundef 0) #11
  %or.i22 = or i32 %call2.i21, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i21, i32 %or.i22)
  %cmp3.not.i = icmp eq i32 %call2.i21, %or.i22
  br i1 %cmp3.not.i, label %if.then.i23.for.inc.i36_crit_edge, label %if.then.i23.for.inc.sink.split.i33_crit_edge

if.then.i23.for.inc.sink.split.i33_crit_edge:     ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i33

if.then.i23.for.inc.i36_crit_edge:                ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36

if.else.i29:                                      ; preds = %land.lhs.true.i16.if.else.i29_crit_edge, %for.body.i13.if.else.i29_crit_edge
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.053.i12)
  %cmp10.i41.i24 = icmp eq i32 %i.053.i12, 1
  %spec.select22.i43.i25 = select i1 %cmp10.i41.i24, i32 1562, i32 26
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %base.0.i44.i26 = load i32, ptr %27, align 4
  %add15.i45.i27 = add i32 %base.0.i44.i26, %spec.select22.i43.i25
  %call7.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i45.i27, i32 noundef 0) #11
  %and8.i = and i32 %call7.i, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %and8.i)
  %cmp9.not.i28 = icmp eq i32 %call7.i, %and8.i
  br i1 %cmp9.not.i28, label %if.else.i29.for.inc.i36_crit_edge, label %if.else.i29.for.inc.sink.split.i33_crit_edge

if.else.i29.for.inc.sink.split.i33_crit_edge:     ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i33

if.else.i29.for.inc.i36_crit_edge:                ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36

for.inc.sink.split.i33:                           ; preds = %if.else.i29.for.inc.sink.split.i33_crit_edge, %if.then.i23.for.inc.sink.split.i33_crit_edge
  %spec.select22.i.sink.i30 = phi i32 [ %spec.select22.i.i18, %if.then.i23.for.inc.sink.split.i33_crit_edge ], [ %spec.select22.i43.i25, %if.else.i29.for.inc.sink.split.i33_crit_edge ]
  %or.sink.i = phi i32 [ %or.i22, %if.then.i23.for.inc.sink.split.i33_crit_edge ], [ %and8.i, %if.else.i29.for.inc.sink.split.i33_crit_edge ]
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %base.0.i38.i31 = load i32, ptr %30, align 4
  %add15.i39.i32 = add i32 %base.0.i38.i31, %spec.select22.i.sink.i30
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add15.i39.i32, i32 noundef %or.sink.i, i32 noundef 0) #11
  br label %for.inc.i36

for.inc.i36:                                      ; preds = %for.inc.sink.split.i33, %if.else.i29.for.inc.i36_crit_edge, %if.then.i23.for.inc.i36_crit_edge
  %inc.i34 = add nuw nsw i32 %i.053.i12, 1
  %32 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_instances.i, align 4
  %cmp.i35 = icmp slt i32 %inc.i34, %33
  br i1 %cmp.i35, label %for.inc.i36.for.body.i13_crit_edge, label %for.inc.i36.cleanup_crit_edge

for.inc.i36.cleanup_crit_edge:                    ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i36.for.body.i13_crit_edge:               ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i13

cleanup:                                          ; preds = %for.inc.i36.cleanup_crit_edge, %sdma_v5_0_update_medium_grain_clock_gating.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdma_v5_0_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %base.0.i = load i32, ptr %4, align 4
  %add15.i = add i32 %base.0.i, 27
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i, i32 noundef 0) #11
  %and2 = and i32 %call1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 2048
  store i32 %or, ptr %flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %base.0.i21 = load i32, ptr %9, align 4
  %add15.i22 = add i32 %base.0.i21, 26
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add15.i22, i32 noundef 0) #11
  %and8 = and i32 %call7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.if.end12_crit_edge, label %if.then10

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or11 = or i32 %12, 1024
  store i32 %or11, ptr %flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sdma_v5_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i64 noundef %7) #11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %shr = lshr i64 %9, 2
  ret i64 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sdma_v5_0_ring_get_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__asan_load8_noabort(i32 %8)
  %9 = load volatile i64, ptr %arrayidx, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i64 noundef %9) #11
  br label %if.end

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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true5

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_rreg, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %land.lhs.true5.cond.false_crit_edge, label %cond.true

land.lhs.true5.cond.false_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %16 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %me, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp10.i = icmp eq i32 %17, 1
  %spec.select22.i = select i1 %cmp10.i, i32 1670, i32 134
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %base.0.i = load i32, ptr %19, align 4
  %add15.i = add i32 %base.0.i, %spec.select22.i
  %call14 = tail call i32 %15(ptr noundef %1, i32 noundef %add15.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true5.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %me15 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %21 = ptrtoint ptr %me15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %me15, align 8
  %arrayidx.i79 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %23 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp10.i80 = icmp eq i32 %22, 1
  %spec.select22.i82 = select i1 %cmp10.i80, i32 1670, i32 134
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %base.0.i83 = load i32, ptr %24, align 4
  %add15.i84 = add i32 %base.0.i83, %spec.select22.i82
  %call17 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add15.i84, i32 noundef 0) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call14, %cond.true ], [ %call17, %cond.false ]
  %conv = zext i32 %cond to i64
  %shl = shl nuw i64 %conv, 32
  %26 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %virt, align 8
  %and20 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %cond.end.cond.false41_crit_edge, label %land.lhs.true22

cond.end.cond.false41_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false41

land.lhs.true22:                                  ; preds = %cond.end
  %funcs25 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %28 = ptrtoint ptr %funcs25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs25, align 4
  %tobool26.not = icmp eq ptr %29, null
  br i1 %tobool26.not, label %land.lhs.true22.cond.false41_crit_edge, label %land.lhs.true27

land.lhs.true22.cond.false41_crit_edge:           ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false41

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %sriov_rreg31 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %sriov_rreg31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sriov_rreg31, align 4
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %land.lhs.true27.cond.false41_crit_edge, label %cond.true33

land.lhs.true27.cond.false41_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false41

cond.true33:                                      ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  %me38 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %32 = ptrtoint ptr %me38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %me38, align 8
  %arrayidx.i85 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %34 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp10.i86 = icmp eq i32 %33, 1
  %spec.select22.i88 = select i1 %cmp10.i86, i32 1669, i32 133
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %base.0.i89 = load i32, ptr %35, align 4
  %add15.i90 = add i32 %base.0.i89, %spec.select22.i88
  %call40 = tail call i32 %31(ptr noundef %1, i32 noundef %add15.i90, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end45

cond.false41:                                     ; preds = %land.lhs.true27.cond.false41_crit_edge, %land.lhs.true22.cond.false41_crit_edge, %cond.end.cond.false41_crit_edge
  %me42 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %37 = ptrtoint ptr %me42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %me42, align 8
  %arrayidx.i91 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %39 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp10.i92 = icmp eq i32 %38, 1
  %spec.select22.i94 = select i1 %cmp10.i92, i32 1669, i32 133
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %base.0.i95 = load i32, ptr %40, align 4
  %add15.i96 = add i32 %base.0.i95, %spec.select22.i94
  %call44 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add15.i96, i32 noundef 0) #11
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false41, %cond.true33
  %cond46 = phi i32 [ %call40, %cond.true33 ], [ %call44, %cond.false41 ]
  %conv47 = zext i32 %cond46 to i64
  %or = or i64 %shl, %conv47
  %me48 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %42 = ptrtoint ptr %me48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %me48, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %43, i64 noundef %or) #11
  br label %if.end

if.end:                                           ; preds = %cond.end45, %do.end
  %wptr.0 = phi i64 [ %9, %do.end ], [ %or, %cond.end45 ]
  %shr = lshr i64 %wptr.0, 2
  ret i64 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_set_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #11
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 26
  %4 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr_offs, align 8
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr, align 8
  %shl = shl i64 %7, 2
  %conv = trunc i64 %shl to i32
  %shr = lshr i64 %shl, 32
  %conv5 = trunc i64 %shr to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %conv, i32 noundef %conv5) #11
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr, align 8
  %.tr141 = trunc i64 %9 to i32
  %conv9 = shl i32 %.tr141, 2
  %wb10 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %10 = ptrtoint ptr %wb10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wb10, align 4
  %12 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wptr_offs, align 8
  %arrayidx = getelementptr i32, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %conv9, ptr %arrayidx, align 4
  %15 = load i64, ptr %wptr, align 8
  %16 = lshr i64 %15, 30
  %conv16 = trunc i64 %16 to i32
  %17 = load ptr, ptr %wb10, align 4
  %18 = load i32, ptr %wptr_offs, align 8
  %add = add i32 %18, 1
  %arrayidx20 = getelementptr i32, ptr %17, i32 %add
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %conv16, ptr %arrayidx20, align 4
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %20 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %doorbell_index, align 8
  %22 = load i64, ptr %wptr, align 8
  %shl22 = shl i64 %22, 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %21, i64 noundef %shl22) #11
  %23 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %doorbell_index, align 8
  %25 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wptr, align 8
  %shl25 = shl i64 %26, 2
  tail call void @amdgpu_mm_wdoorbell64(ptr noundef %1, i32 noundef %24, i64 noundef %shl25) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %27 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %me, align 8
  %wptr26 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %29 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %wptr26, align 8
  %shl27 = shl i64 %30, 2
  %conv29 = trunc i64 %shl27 to i32
  %shr33 = lshr i64 %shl27, 32
  %conv35 = trunc i64 %shr33 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %28, i32 noundef %conv29, i32 noundef %28, i32 noundef %conv35) #11
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt, align 8
  %and36 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else.cond.false_crit_edge, label %land.lhs.true

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs, align 4
  %tobool38.not = icmp eq ptr %34, null
  br i1 %tobool38.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true39

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true39:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_wreg, align 4
  %tobool43.not = icmp eq ptr %36, null
  br i1 %tobool43.not, label %land.lhs.true39.cond.false_crit_edge, label %cond.true

land.lhs.true39.cond.false_crit_edge:             ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %me, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp10.i = icmp eq i32 %38, 1
  %spec.select22.i = select i1 %cmp10.i, i32 1669, i32 133
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %base.0.i = load i32, ptr %40, align 4
  %add15.i = add i32 %base.0.i, %spec.select22.i
  %42 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %wptr26, align 8
  %.tr140 = trunc i64 %43 to i32
  %conv52 = shl i32 %.tr140, 2
  tail call void %36(ptr noundef %1, i32 noundef %add15.i, i32 noundef %conv52, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true39.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.else.cond.false_crit_edge
  %44 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %me, align 8
  %arrayidx.i142 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %46 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp10.i143 = icmp eq i32 %45, 1
  %spec.select22.i145 = select i1 %cmp10.i143, i32 1669, i32 133
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %base.0.i146 = load i32, ptr %47, align 4
  %add15.i147 = add i32 %base.0.i146, %spec.select22.i145
  %49 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr26, align 8
  %.tr = trunc i64 %50 to i32
  %conv58 = shl i32 %.tr, 2
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add15.i147, i32 noundef %conv58, i32 noundef 0) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %51 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %virt, align 8
  %and61 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %cond.end.cond.false86_crit_edge, label %land.lhs.true63

cond.end.cond.false86_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false86

land.lhs.true63:                                  ; preds = %cond.end
  %funcs66 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %53 = ptrtoint ptr %funcs66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %funcs66, align 4
  %tobool67.not = icmp eq ptr %54, null
  br i1 %tobool67.not, label %land.lhs.true63.cond.false86_crit_edge, label %land.lhs.true68

land.lhs.true63.cond.false86_crit_edge:           ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false86

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %sriov_wreg72 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %sriov_wreg72 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sriov_wreg72, align 4
  %tobool73.not = icmp eq ptr %56, null
  br i1 %tobool73.not, label %land.lhs.true68.cond.false86_crit_edge, label %cond.true74

land.lhs.true68.cond.false86_crit_edge:           ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false86

cond.true74:                                      ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %me, align 8
  %arrayidx.i148 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %59 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i148, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp10.i149 = icmp eq i32 %58, 1
  %spec.select22.i151 = select i1 %cmp10.i149, i32 1670, i32 134
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %base.0.i152 = load i32, ptr %60, align 4
  %add15.i153 = add i32 %base.0.i152, %spec.select22.i151
  %62 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wptr26, align 8
  %64 = lshr i64 %63, 30
  %conv85 = trunc i64 %64 to i32
  tail call void %56(ptr noundef %1, i32 noundef %add15.i153, i32 noundef %conv85, i32 noundef 0, i32 noundef 1) #11
  br label %if.end

cond.false86:                                     ; preds = %land.lhs.true68.cond.false86_crit_edge, %land.lhs.true63.cond.false86_crit_edge, %cond.end.cond.false86_crit_edge
  %65 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %me, align 8
  %arrayidx.i154 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %67 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i154, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp10.i155 = icmp eq i32 %66, 1
  %spec.select22.i157 = select i1 %cmp10.i155, i32 1670, i32 134
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %base.0.i158 = load i32, ptr %68, align 4
  %add15.i159 = add i32 %base.0.i158, %spec.select22.i157
  %70 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %wptr26, align 8
  %72 = lshr i64 %71, 30
  %conv93 = trunc i64 %72 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add15.i159, i32 noundef %conv93, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %cond.false86, %cond.true74, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vmid1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %0 = ptrtoint ptr %vmid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmid1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call = tail call i64 @amdgpu_sdma_get_csa_mc_addr(ptr noundef %ring, i32 noundef %cond) #11
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %3 to i32
  %sub = sub i32 2, %conv
  %and2 = and i32 %sub, 7
  tail call void @sdma_v5_0_ring_insert_nop(ptr noundef %ring, i32 noundef %and2)
  %and3 = shl i32 %cond, 16
  %shl = and i32 %and3, 983040
  %or = or i32 %shl, 4
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  store volatile i32 %or, ptr %arrayidx.i, align 4
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
  %cmp.i30 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i30, label %if.then.i31, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit41

amdgpu_ring_write.exit41:                         ; preds = %if.then.i31, %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr, align 8
  %inc.i34 = add i64 %24, 1
  store i64 %inc.i34, ptr %wptr, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i36 = and i32 %26, %27
  %arrayidx.i37 = getelementptr i32, ptr %22, i32 %idxprom.i36
  %28 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %and7, ptr %arrayidx.i37, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr, align 8
  %and3.i39 = and i64 %31, %30
  store i64 %and3.i39, ptr %wptr, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i40 = add i32 %33, -1
  store i32 %dec.i40, ptr %count_dw.i, align 8
  %34 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %35, 32
  %conv10 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit54

amdgpu_ring_write.exit54:                         ; preds = %if.then.i44, %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge
  %36 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring1.i, align 4
  %38 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %wptr, align 8
  %inc.i47 = add i64 %39, 1
  store i64 %inc.i47, ptr %wptr, align 8
  %40 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_mask.i, align 8
  %42 = trunc i64 %39 to i32
  %idxprom.i49 = and i32 %41, %42
  %arrayidx.i50 = getelementptr i32, ptr %37, i32 %idxprom.i49
  %43 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %conv10, ptr %arrayidx.i50, align 4
  %44 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ptr_mask.i, align 8
  %46 = load i64, ptr %wptr, align 8
  %and3.i52 = and i64 %46, %45
  store i64 %and3.i52, ptr %wptr, align 8
  %47 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count_dw.i, align 8
  %dec.i53 = add i32 %48, -1
  store i32 %dec.i53, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %49 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 4
  %53 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wptr, align 8
  %inc.i60 = add i64 %54, 1
  store i64 %inc.i60, ptr %wptr, align 8
  %55 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_mask.i, align 8
  %57 = trunc i64 %54 to i32
  %idxprom.i62 = and i32 %56, %57
  %arrayidx.i63 = getelementptr i32, ptr %52, i32 %idxprom.i62
  %58 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %50, ptr %arrayidx.i63, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ptr_mask.i, align 8
  %61 = load i64, ptr %wptr, align 8
  %and3.i65 = and i64 %61, %60
  store i64 %and3.i65, ptr %wptr, align 8
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %63, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  %conv12 = trunc i64 %call to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge

amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge: ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %amdgpu_ring_write.exit67.amdgpu_ring_write.exit80_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 4
  %66 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %wptr, align 8
  %inc.i73 = add i64 %67, 1
  store i64 %inc.i73, ptr %wptr, align 8
  %68 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_mask.i, align 8
  %70 = trunc i64 %67 to i32
  %idxprom.i75 = and i32 %69, %70
  %arrayidx.i76 = getelementptr i32, ptr %65, i32 %idxprom.i75
  %71 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %conv12, ptr %arrayidx.i76, align 4
  %72 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ptr_mask.i, align 8
  %74 = load i64, ptr %wptr, align 8
  %and3.i78 = and i64 %74, %73
  store i64 %and3.i78, ptr %wptr, align 8
  %75 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %76, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i82 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i82, label %if.then.i83, label %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge

amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge: ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit93

if.then.i83:                                      ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit93

amdgpu_ring_write.exit93:                         ; preds = %if.then.i83, %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge
  %shr13 = lshr i64 %call, 32
  %conv15 = trunc i64 %shr13 to i32
  %77 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ring1.i, align 4
  %79 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %wptr, align 8
  %inc.i86 = add i64 %80, 1
  store i64 %inc.i86, ptr %wptr, align 8
  %81 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buf_mask.i, align 8
  %83 = trunc i64 %80 to i32
  %idxprom.i88 = and i32 %82, %83
  %arrayidx.i89 = getelementptr i32, ptr %78, i32 %idxprom.i88
  %84 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 %conv15, ptr %arrayidx.i89, align 4
  %85 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ptr_mask.i, align 8
  %87 = load i64, ptr %wptr, align 8
  %and3.i91 = and i64 %87, %86
  store i64 %and3.i91, ptr %wptr, align 8
  %88 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %count_dw.i, align 8
  %dec.i92 = add i32 %89, -1
  store i32 %dec.i92, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  store volatile i32 196613, ptr %arrayidx.i, align 4
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
  %and1 = and i64 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %do.end10, label %do.body5, !prof !132

do.body5:                                         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 553, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

do.end10:                                         ; preds = %amdgpu_ring_write.exit
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i68 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i68, label %if.then.i69, label %do.end10.amdgpu_ring_write.exit79_crit_edge

do.end10.amdgpu_ring_write.exit79_crit_edge:      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit79

if.then.i69:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit79

amdgpu_ring_write.exit79:                         ; preds = %if.then.i69, %do.end10.amdgpu_ring_write.exit79_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i72 = add i64 %18, 1
  store i64 %inc.i72, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i74 = and i32 %20, %21
  %arrayidx.i75 = getelementptr i32, ptr %16, i32 %idxprom.i74
  %22 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i75, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i77 = and i64 %25, %24
  store i64 %and3.i77, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i78 = add i32 %27, -1
  store i32 %dec.i78, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv13 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i78)
  %cmp.i81 = icmp slt i32 %dec.i78, 1
  br i1 %cmp.i81, label %if.then.i82, label %amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge

amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge: ; preds = %amdgpu_ring_write.exit79
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit92

if.then.i82:                                      ; preds = %amdgpu_ring_write.exit79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit92

amdgpu_ring_write.exit92:                         ; preds = %if.then.i82, %amdgpu_ring_write.exit79.amdgpu_ring_write.exit92_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i85 = add i64 %31, 1
  store i64 %inc.i85, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i87 = and i32 %33, %34
  %arrayidx.i88 = getelementptr i32, ptr %29, i32 %idxprom.i87
  %35 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %conv13, ptr %arrayidx.i88, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i90 = and i64 %38, %37
  store i64 %and3.i90, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i91 = add i32 %40, -1
  store i32 %dec.i91, ptr %count_dw.i, align 8
  %conv15 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i91)
  %cmp.i94 = icmp slt i32 %dec.i91, 1
  br i1 %cmp.i94, label %if.then.i95, label %amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge

amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge: ; preds = %amdgpu_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit105

if.then.i95:                                      ; preds = %amdgpu_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit105

amdgpu_ring_write.exit105:                        ; preds = %if.then.i95, %amdgpu_ring_write.exit92.amdgpu_ring_write.exit105_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i98 = add i64 %44, 1
  store i64 %inc.i98, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i100 = and i32 %46, %47
  %arrayidx.i101 = getelementptr i32, ptr %42, i32 %idxprom.i100
  %48 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv15, ptr %arrayidx.i101, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i103 = and i64 %51, %50
  store i64 %and3.i103, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i104 = add i32 %53, -1
  store i32 %dec.i104, ptr %count_dw.i, align 8
  br i1 %tobool.not, label %amdgpu_ring_write.exit105.if.end45_crit_edge, label %if.then17

amdgpu_ring_write.exit105.if.end45_crit_edge:     ; preds = %amdgpu_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then17:                                        ; preds = %amdgpu_ring_write.exit105
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i104)
  %cmp.i107 = icmp slt i32 %dec.i104, 1
  br i1 %cmp.i107, label %if.then.i108, label %if.then17.do.end36_crit_edge

if.then17.do.end36_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

if.then.i108:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then.i108, %if.then17.do.end36_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i111 = add i64 %57, 1
  store i64 %inc.i111, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i113 = and i32 %59, %60
  %arrayidx.i114 = getelementptr i32, ptr %55, i32 %idxprom.i113
  %61 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 196613, ptr %arrayidx.i114, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i116 = and i64 %64, %63
  store i64 %and3.i116, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i117 = add i32 %66, -1
  store i32 %dec.i117, ptr %count_dw.i, align 8
  %add = add i64 %addr, 4
  %conv38 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i117)
  %cmp.i120 = icmp slt i32 %dec.i117, 1
  br i1 %cmp.i120, label %if.then.i121, label %do.end36.amdgpu_ring_write.exit131_crit_edge

do.end36.amdgpu_ring_write.exit131_crit_edge:     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit131

if.then.i121:                                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit131

amdgpu_ring_write.exit131:                        ; preds = %if.then.i121, %do.end36.amdgpu_ring_write.exit131_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i124 = add i64 %70, 1
  store i64 %inc.i124, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i126 = and i32 %72, %73
  %arrayidx.i127 = getelementptr i32, ptr %68, i32 %idxprom.i126
  %74 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %conv38, ptr %arrayidx.i127, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i129 = and i64 %77, %76
  store i64 %and3.i129, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i130 = add i32 %79, -1
  store i32 %dec.i130, ptr %count_dw.i, align 8
  %shr39 = lshr i64 %add, 32
  %conv41 = trunc i64 %shr39 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i130)
  %cmp.i133 = icmp slt i32 %dec.i130, 1
  br i1 %cmp.i133, label %if.then.i134, label %amdgpu_ring_write.exit131.amdgpu_ring_write.exit144_crit_edge

amdgpu_ring_write.exit131.amdgpu_ring_write.exit144_crit_edge: ; preds = %amdgpu_ring_write.exit131
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit144

if.then.i134:                                     ; preds = %amdgpu_ring_write.exit131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit144

amdgpu_ring_write.exit144:                        ; preds = %if.then.i134, %amdgpu_ring_write.exit131.amdgpu_ring_write.exit144_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i137 = add i64 %83, 1
  store i64 %inc.i137, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i139 = and i32 %85, %86
  %arrayidx.i140 = getelementptr i32, ptr %81, i32 %idxprom.i139
  %87 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %conv41, ptr %arrayidx.i140, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i142 = and i64 %90, %89
  store i64 %and3.i142, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i143 = add i32 %92, -1
  store i32 %dec.i143, ptr %count_dw.i, align 8
  %shr42 = lshr i64 %seq, 32
  %conv44 = trunc i64 %shr42 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i143)
  %cmp.i146 = icmp slt i32 %dec.i143, 1
  br i1 %cmp.i146, label %if.then.i147, label %amdgpu_ring_write.exit144.amdgpu_ring_write.exit157_crit_edge

amdgpu_ring_write.exit144.amdgpu_ring_write.exit157_crit_edge: ; preds = %amdgpu_ring_write.exit144
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit157

if.then.i147:                                     ; preds = %amdgpu_ring_write.exit144
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit157

amdgpu_ring_write.exit157:                        ; preds = %if.then.i147, %amdgpu_ring_write.exit144.amdgpu_ring_write.exit157_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i150 = add i64 %96, 1
  store i64 %inc.i150, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i152 = and i32 %98, %99
  %arrayidx.i153 = getelementptr i32, ptr %94, i32 %idxprom.i152
  %100 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %conv44, ptr %arrayidx.i153, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i155 = and i64 %103, %102
  store i64 %and3.i155, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i156 = add i32 %105, -1
  store i32 %dec.i156, ptr %count_dw.i, align 8
  br label %if.end45

if.end45:                                         ; preds = %amdgpu_ring_write.exit157, %amdgpu_ring_write.exit105.if.end45_crit_edge
  %and46 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  %106 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp.i159 = icmp slt i32 %107, 1
  br i1 %cmp.i159, label %if.then.i160, label %if.then48.amdgpu_ring_write.exit170_crit_edge

if.then48.amdgpu_ring_write.exit170_crit_edge:    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit170

if.then.i160:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit170

amdgpu_ring_write.exit170:                        ; preds = %if.then.i160, %if.then48.amdgpu_ring_write.exit170_crit_edge
  %108 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ring1.i, align 4
  %110 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %wptr.i, align 8
  %inc.i163 = add i64 %111, 1
  store i64 %inc.i163, ptr %wptr.i, align 8
  %112 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %buf_mask.i, align 8
  %114 = trunc i64 %111 to i32
  %idxprom.i165 = and i32 %113, %114
  %arrayidx.i166 = getelementptr i32, ptr %109, i32 %idxprom.i165
  %115 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 6, ptr %arrayidx.i166, align 4
  %116 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %ptr_mask.i, align 8
  %118 = load i64, ptr %wptr.i, align 8
  %and3.i168 = and i64 %118, %117
  store i64 %and3.i168, ptr %wptr.i, align 8
  %119 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %count_dw.i, align 8
  %dec.i169 = add i32 %120, -1
  store i32 %dec.i169, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i169)
  %cmp.i172 = icmp slt i32 %dec.i169, 1
  br i1 %cmp.i172, label %if.then.i173, label %amdgpu_ring_write.exit170.amdgpu_ring_write.exit183_crit_edge

amdgpu_ring_write.exit170.amdgpu_ring_write.exit183_crit_edge: ; preds = %amdgpu_ring_write.exit170
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit183

if.then.i173:                                     ; preds = %amdgpu_ring_write.exit170
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit183

amdgpu_ring_write.exit183:                        ; preds = %if.then.i173, %amdgpu_ring_write.exit170.amdgpu_ring_write.exit183_crit_edge
  %121 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ring1.i, align 4
  %123 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %wptr.i, align 8
  %inc.i176 = add i64 %124, 1
  store i64 %inc.i176, ptr %wptr.i, align 8
  %125 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %buf_mask.i, align 8
  %127 = trunc i64 %124 to i32
  %idxprom.i178 = and i32 %126, %127
  %arrayidx.i179 = getelementptr i32, ptr %122, i32 %idxprom.i178
  %128 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 0, ptr %arrayidx.i179, align 4
  %129 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %ptr_mask.i, align 8
  %131 = load i64, ptr %wptr.i, align 8
  %and3.i181 = and i64 %131, %130
  store i64 %and3.i181, ptr %wptr.i, align 8
  %132 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %count_dw.i, align 8
  %dec.i182 = add i32 %133, -1
  store i32 %dec.i182, ptr %count_dw.i, align 8
  br label %if.end49

if.end49:                                         ; preds = %amdgpu_ring_write.exit183, %if.end45.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_emit_pipeline_sync(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit25

if.then.i15:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit38

if.then.i28:                                      ; preds = %amdgpu_ring_write.exit25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit51

if.then.i41:                                      ; preds = %amdgpu_ring_write.exit38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit64

if.then.i54:                                      ; preds = %amdgpu_ring_write.exit51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit77

if.then.i67:                                      ; preds = %amdgpu_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
define internal void @sdma_v5_0_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %call = tail call i64 %5(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_emit_hdp_flush(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %nbio = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 101
  %2 = ptrtoint ptr %nbio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nbio, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %4 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %ref_and_mask_sdma0 = getelementptr inbounds %struct.nbio_hdp_flush_reg, ptr %3, i32 0, i32 10
  %ref_and_mask_sdma1 = getelementptr inbounds %struct.nbio_hdp_flush_reg, ptr %3, i32 0, i32 11
  %ref_and_mask.0.in = select i1 %cmp, ptr %ref_and_mask_sdma0, ptr %ref_and_mask_sdma1
  %6 = ptrtoint ptr %ref_and_mask.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %ref_and_mask.0 = load i32, ptr %ref_and_mask.0.in, align 4
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %7 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp slt i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %9 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %12, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %13 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_mask.i, align 8
  %15 = trunc i64 %12 to i32
  %idxprom.i = and i32 %14, %15
  %arrayidx.i = getelementptr i32, ptr %10, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 872415240, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %17 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ptr_mask.i, align 8
  %19 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %19, %18
  store i64 %and3.i, ptr %wptr.i, align 8
  %20 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 101, i32 4
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 8
  %get_hdp_flush_done_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %get_hdp_flush_done_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_hdp_flush_done_offset, align 4
  %call = tail call i32 %25(ptr noundef %1) #11
  %shl = shl i32 %call, 2
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i21 = icmp slt i32 %27, 1
  br i1 %cmp.i21, label %if.then.i22, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit32_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit32_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit32

if.then.i22:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit32

amdgpu_ring_write.exit32:                         ; preds = %if.then.i22, %amdgpu_ring_write.exit.amdgpu_ring_write.exit32_crit_edge
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
  store volatile i32 %shl, ptr %arrayidx.i28, align 4
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
  %41 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs, align 8
  %get_hdp_flush_req_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %get_hdp_flush_req_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_hdp_flush_req_offset, align 4
  %call5 = tail call i32 %44(ptr noundef %1) #11
  %shl6 = shl i32 %call5, 2
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i34 = icmp slt i32 %46, 1
  br i1 %cmp.i34, label %if.then.i35, label %amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge

amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge: ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit45

if.then.i35:                                      ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit45

amdgpu_ring_write.exit45:                         ; preds = %if.then.i35, %amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i38 = add i64 %50, 1
  store i64 %inc.i38, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i40 = and i32 %52, %53
  %arrayidx.i41 = getelementptr i32, ptr %48, i32 %idxprom.i40
  %54 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %shl6, ptr %arrayidx.i41, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i43 = and i64 %57, %56
  store i64 %and3.i43, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i44 = add i32 %59, -1
  store i32 %dec.i44, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i44)
  %cmp.i47 = icmp slt i32 %dec.i44, 1
  br i1 %cmp.i47, label %if.then.i48, label %amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge

amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge: ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit58

if.then.i48:                                      ; preds = %amdgpu_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit58

amdgpu_ring_write.exit58:                         ; preds = %if.then.i48, %amdgpu_ring_write.exit45.amdgpu_ring_write.exit58_crit_edge
  %60 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ring1.i, align 4
  %62 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wptr.i, align 8
  %inc.i51 = add i64 %63, 1
  store i64 %inc.i51, ptr %wptr.i, align 8
  %64 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf_mask.i, align 8
  %66 = trunc i64 %63 to i32
  %idxprom.i53 = and i32 %65, %66
  %arrayidx.i54 = getelementptr i32, ptr %61, i32 %idxprom.i53
  %67 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %ref_and_mask.0, ptr %arrayidx.i54, align 4
  %68 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ptr_mask.i, align 8
  %70 = load i64, ptr %wptr.i, align 8
  %and3.i56 = and i64 %70, %69
  store i64 %and3.i56, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count_dw.i, align 8
  %dec.i57 = add i32 %72, -1
  store i32 %dec.i57, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i57)
  %cmp.i60 = icmp slt i32 %dec.i57, 1
  br i1 %cmp.i60, label %if.then.i61, label %amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge

amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge: ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit71

if.then.i61:                                      ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit71

amdgpu_ring_write.exit71:                         ; preds = %if.then.i61, %amdgpu_ring_write.exit58.amdgpu_ring_write.exit71_crit_edge
  %73 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ring1.i, align 4
  %75 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %wptr.i, align 8
  %inc.i64 = add i64 %76, 1
  store i64 %inc.i64, ptr %wptr.i, align 8
  %77 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_mask.i, align 8
  %79 = trunc i64 %76 to i32
  %idxprom.i66 = and i32 %78, %79
  %arrayidx.i67 = getelementptr i32, ptr %74, i32 %idxprom.i66
  %80 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %ref_and_mask.0, ptr %arrayidx.i67, align 4
  %81 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ptr_mask.i, align 8
  %83 = load i64, ptr %wptr.i, align 8
  %and3.i69 = and i64 %83, %82
  store i64 %and3.i69, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_dw.i, align 8
  %dec.i70 = add i32 %85, -1
  store i32 %dec.i70, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i70)
  %cmp.i73 = icmp slt i32 %dec.i70, 1
  br i1 %cmp.i73, label %if.then.i74, label %amdgpu_ring_write.exit71.amdgpu_ring_write.exit84_crit_edge

amdgpu_ring_write.exit71.amdgpu_ring_write.exit84_crit_edge: ; preds = %amdgpu_ring_write.exit71
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit84

if.then.i74:                                      ; preds = %amdgpu_ring_write.exit71
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit84

amdgpu_ring_write.exit84:                         ; preds = %if.then.i74, %amdgpu_ring_write.exit71.amdgpu_ring_write.exit84_crit_edge
  %86 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ring1.i, align 4
  %88 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %wptr.i, align 8
  %inc.i77 = add i64 %89, 1
  store i64 %inc.i77, ptr %wptr.i, align 8
  %90 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf_mask.i, align 8
  %92 = trunc i64 %89 to i32
  %idxprom.i79 = and i32 %91, %92
  %arrayidx.i80 = getelementptr i32, ptr %87, i32 %idxprom.i79
  %93 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 268369930, ptr %arrayidx.i80, align 4
  %94 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %ptr_mask.i, align 8
  %96 = load i64, ptr %wptr.i, align 8
  %and3.i82 = and i64 %96, %95
  store i64 %and3.i82, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %count_dw.i, align 8
  %dec.i83 = add i32 %98, -1
  store i32 %dec.i83, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_ring_test_ring(ptr noundef %ring) #1 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !134
  %call = call i32 @amdgpu_device_wb_get(ptr noundef %1, ptr noundef nonnull %index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_addr2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 2
  %5 = ptrtoint ptr %gpu_addr2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %gpu_addr2, align 8
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %wb4 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %9 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wb4, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1377894710, ptr %arrayidx, align 4
  %call5 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 15
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %13, i32 noundef %call5) #11
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %15) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mul = shl i32 %8, 2
  %conv = zext i32 %mul to i64
  %add = add i64 %6, %conv
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %16 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp slt i32 %17, 1
  br i1 %cmp.i, label %if.then.i, label %if.end8.amdgpu_ring_write.exit_crit_edge

if.end8.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end8.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %21, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %22 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_mask.i, align 8
  %24 = trunc i64 %21 to i32
  %idxprom.i = and i32 %23, %24
  %arrayidx.i = getelementptr i32, ptr %19, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 2, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %26 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ptr_mask.i, align 8
  %28 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %28, %27
  store i64 %and3.i, ptr %wptr.i, align 8
  %29 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv9 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i61 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i61, label %if.then.i62, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit72_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit72_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit72

if.then.i62:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit72

amdgpu_ring_write.exit72:                         ; preds = %if.then.i62, %amdgpu_ring_write.exit.amdgpu_ring_write.exit72_crit_edge
  %31 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring1.i, align 4
  %33 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %wptr.i, align 8
  %inc.i65 = add i64 %34, 1
  store i64 %inc.i65, ptr %wptr.i, align 8
  %35 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_mask.i, align 8
  %37 = trunc i64 %34 to i32
  %idxprom.i67 = and i32 %36, %37
  %arrayidx.i68 = getelementptr i32, ptr %32, i32 %idxprom.i67
  %38 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %conv9, ptr %arrayidx.i68, align 4
  %39 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ptr_mask.i, align 8
  %41 = load i64, ptr %wptr.i, align 8
  %and3.i70 = and i64 %41, %40
  store i64 %and3.i70, ptr %wptr.i, align 8
  %42 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count_dw.i, align 8
  %dec.i71 = add i32 %43, -1
  store i32 %dec.i71, ptr %count_dw.i, align 8
  %shr = lshr i64 %add, 32
  %conv11 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i71)
  %cmp.i74 = icmp slt i32 %dec.i71, 1
  br i1 %cmp.i74, label %if.then.i75, label %amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge

amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge: ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit85

if.then.i75:                                      ; preds = %amdgpu_ring_write.exit72
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit85

amdgpu_ring_write.exit85:                         ; preds = %if.then.i75, %amdgpu_ring_write.exit72.amdgpu_ring_write.exit85_crit_edge
  %44 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring1.i, align 4
  %46 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %wptr.i, align 8
  %inc.i78 = add i64 %47, 1
  store i64 %inc.i78, ptr %wptr.i, align 8
  %48 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf_mask.i, align 8
  %50 = trunc i64 %47 to i32
  %idxprom.i80 = and i32 %49, %50
  %arrayidx.i81 = getelementptr i32, ptr %45, i32 %idxprom.i80
  %51 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %conv11, ptr %arrayidx.i81, align 4
  %52 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %ptr_mask.i, align 8
  %54 = load i64, ptr %wptr.i, align 8
  %and3.i83 = and i64 %54, %53
  store i64 %and3.i83, ptr %wptr.i, align 8
  %55 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count_dw.i, align 8
  %dec.i84 = add i32 %56, -1
  store i32 %dec.i84, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i84)
  %cmp.i87 = icmp slt i32 %dec.i84, 1
  br i1 %cmp.i87, label %if.then.i88, label %amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge

amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge: ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit98

if.then.i88:                                      ; preds = %amdgpu_ring_write.exit85
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit98

amdgpu_ring_write.exit98:                         ; preds = %if.then.i88, %amdgpu_ring_write.exit85.amdgpu_ring_write.exit98_crit_edge
  %57 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ring1.i, align 4
  %59 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %wptr.i, align 8
  %inc.i91 = add i64 %60, 1
  store i64 %inc.i91, ptr %wptr.i, align 8
  %61 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buf_mask.i, align 8
  %63 = trunc i64 %60 to i32
  %idxprom.i93 = and i32 %62, %63
  %arrayidx.i94 = getelementptr i32, ptr %58, i32 %idxprom.i93
  %64 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %arrayidx.i94, align 4
  %65 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %ptr_mask.i, align 8
  %67 = load i64, ptr %wptr.i, align 8
  %and3.i96 = and i64 %67, %66
  store i64 %and3.i96, ptr %wptr.i, align 8
  %68 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count_dw.i, align 8
  %dec.i97 = add i32 %69, -1
  store i32 %dec.i97, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i97)
  %cmp.i100 = icmp slt i32 %dec.i97, 1
  br i1 %cmp.i100, label %if.then.i101, label %amdgpu_ring_write.exit98.amdgpu_ring_write.exit111_crit_edge

amdgpu_ring_write.exit98.amdgpu_ring_write.exit111_crit_edge: ; preds = %amdgpu_ring_write.exit98
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit111

if.then.i101:                                     ; preds = %amdgpu_ring_write.exit98
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit111

amdgpu_ring_write.exit111:                        ; preds = %if.then.i101, %amdgpu_ring_write.exit98.amdgpu_ring_write.exit111_crit_edge
  %70 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ring1.i, align 4
  %72 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %wptr.i, align 8
  %inc.i104 = add i64 %73, 1
  store i64 %inc.i104, ptr %wptr.i, align 8
  %74 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf_mask.i, align 8
  %76 = trunc i64 %73 to i32
  %idxprom.i106 = and i32 %75, %76
  %arrayidx.i107 = getelementptr i32, ptr %71, i32 %idxprom.i106
  %77 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 -559038737, ptr %arrayidx.i107, align 4
  %78 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ptr_mask.i, align 8
  %80 = load i64, ptr %wptr.i, align 8
  %and3.i109 = and i64 %80, %79
  store i64 %and3.i109, ptr %wptr.i, align 8
  %81 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count_dw.i, align 8
  %dec.i110 = add i32 %82, -1
  store i32 %dec.i110, ptr %count_dw.i, align 8
  call void @amdgpu_ring_commit(ptr noundef %ring) #11
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %83 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp112.not = icmp eq i32 %84, 0
  br i1 %cmp112.not, label %amdgpu_ring_write.exit111.for.end_crit_edge, label %amdgpu_ring_write.exit111.for.body_crit_edge

amdgpu_ring_write.exit111.for.body_crit_edge:     ; preds = %amdgpu_ring_write.exit111
  br label %for.body

amdgpu_ring_write.exit111.for.end_crit_edge:      ; preds = %amdgpu_ring_write.exit111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %amdgpu_ring_write.exit111.for.body_crit_edge
  %i.0113 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit111.for.body_crit_edge ]
  %85 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wb4, align 4
  %87 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %index, align 4
  %arrayidx15 = getelementptr i32, ptr %86, i32 %88
  %89 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %90)
  %cmp16 = icmp eq i32 %90, -272716322
  br i1 %cmp16, label %for.body.for.end_crit_edge, label %if.end19

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end19:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_emu_mode to i32))
  %91 = load i32, ptr @amdgpu_emu_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp20 = icmp eq i32 %91, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 1) #11
  br label %for.inc

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then22
  %inc = add nuw i32 %i.0113, 1
  %93 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %94
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit111.for.end_crit_edge
  %spec.select = phi i32 [ -110, %amdgpu_ring_write.exit111.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ -110, %for.inc.for.end_crit_edge ]
  %95 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %96) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call5, %if.then7 ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #1 align 64 {
entry:
  %ib = alloca %struct.amdgpu_ib, align 8
  %f = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #11
  %2 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %3 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #11
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %index, align 4, !annotation !134
  %call = call i32 @amdgpu_device_wb_get(ptr noundef %1, ptr noundef nonnull %index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_addr2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 2
  %8 = ptrtoint ptr %gpu_addr2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %gpu_addr2, align 8
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %wb4 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %12 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wb4, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 -1377894710, ptr %arrayidx, align 4
  %15 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call5 = call i32 @amdgpu_ib_get(ptr noundef %1, ptr noundef null, i32 noundef 256, i32 noundef 2, ptr noundef nonnull %ib) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %call5) #11
  br label %err0

if.end8:                                          ; preds = %if.end
  %mul = shl i32 %11, 2
  %conv = zext i32 %mul to i64
  %add = add i64 %9, %conv
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %17, align 4
  %conv10 = trunc i64 %add to i32
  %19 = load ptr, ptr %3, align 8
  %arrayidx12 = getelementptr i32, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv10, ptr %arrayidx12, align 4
  %shr = lshr i64 %add, 32
  %conv14 = trunc i64 %shr to i32
  %21 = load ptr, ptr %3, align 8
  %arrayidx16 = getelementptr i32, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv14, ptr %arrayidx16, align 4
  %23 = load ptr, ptr %3, align 8
  %arrayidx18 = getelementptr i32, ptr %23, i32 3
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx18, align 4
  %25 = load ptr, ptr %3, align 8
  %arrayidx20 = getelementptr i32, ptr %25, i32 4
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -559038737, ptr %arrayidx20, align 4
  %27 = load ptr, ptr %3, align 8
  %arrayidx22 = getelementptr i32, ptr %27, i32 5
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx22, align 4
  %29 = load ptr, ptr %3, align 8
  %arrayidx24 = getelementptr i32, ptr %29, i32 6
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx24, align 4
  %31 = load ptr, ptr %3, align 8
  %arrayidx26 = getelementptr i32, ptr %31, i32 7
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx26, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %2, align 4
  %call27 = call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef 1, ptr noundef nonnull %ib, ptr noundef null, ptr noundef nonnull %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end8.err1_crit_edge

if.end8.err1_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %err1

if.end30:                                         ; preds = %if.end8
  %34 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f, align 4
  %call31 = call i32 @dma_fence_wait_timeout(ptr noundef %35, i1 noundef zeroext false, i32 noundef %timeout) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp eq i32 %call31, 0
  br i1 %cmp, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #11
  br label %err1

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp34 = icmp slt i32 %call31, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %call31) #11
  br label %err1

if.end38:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wb4, align 4
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index, align 4
  %arrayidx41 = getelementptr i32, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %41)
  %cmp42 = icmp eq i32 %41, -272716322
  %. = select i1 %cmp42, i32 0, i32 -22
  br label %err1

err1:                                             ; preds = %if.end38, %if.then36, %if.then33, %if.end8.err1_crit_edge
  %r.0 = phi i32 [ %call27, %if.end8.err1_crit_edge ], [ -110, %if.then33 ], [ %call31, %if.then36 ], [ %., %if.end38 ]
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef null) #11
  %42 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %err1.err0_crit_edge, label %if.then.i

err1.err0_crit_edge:                              ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #13
  br label %err0

if.then.i:                                        ; preds = %err1
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %43, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !135
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !136
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err0_crit_edge, label %if.then10.i.i.i.i.i, !prof !132

if.end5.i.i.i.i.i.err0_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err0

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %err0

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  call void @dma_fence_release(ptr noundef %refcount.i) #11
  br label %err0

err0:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err0_crit_edge, %err1.err0_crit_edge, %if.then7
  %r.1 = phi i32 [ %call5, %if.then7 ], [ %r.0, %err1.err0_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.err0_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %46) #11
  br label %cleanup

cleanup:                                          ; preds = %err0, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %r.1, %err0 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_insert_nop(ptr noundef %ring, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef %ring) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp27.not = icmp eq i32 %count, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %burst_nop to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %burst_nop, align 8, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028)
  %cmp3 = icmp eq i32 %i.028, 0
  %or.cond = select i1 %tobool1.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.for.inc.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.then.for.inc.sink.split_crit_edge
  %or.sink.ph = phi i32 [ %or, %if.then.for.inc.sink.split_crit_edge ], [ %11, %if.else.for.inc.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_pad_ib(ptr noundef %ring, ptr nocapture noundef %ib) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef %ring) #11
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %for.body.lr.ph
  %2 = ptrtoint ptr %burst_nop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %burst_nop, align 8, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.not = icmp eq i8 %3, 0
  br i1 %tobool1.not.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @sdma_v5_0_ring_init_cond_exec(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  store volatile i32 9, ptr %arrayidx.i, align 4
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
  %cond_exe_gpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 35
  %15 = ptrtoint ptr %cond_exe_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cond_exe_gpu_addr, align 8
  %conv = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i16 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i16, label %if.then.i17, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit27_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit27_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit27

if.then.i17:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit27

amdgpu_ring_write.exit27:                         ; preds = %if.then.i17, %amdgpu_ring_write.exit.amdgpu_ring_write.exit27_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i20 = add i64 %20, 1
  store i64 %inc.i20, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i22 = and i32 %22, %23
  %arrayidx.i23 = getelementptr i32, ptr %18, i32 %idxprom.i22
  %24 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %conv, ptr %arrayidx.i23, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i25 = and i64 %27, %26
  store i64 %and3.i25, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i26 = add i32 %29, -1
  store i32 %dec.i26, ptr %count_dw.i, align 8
  %30 = ptrtoint ptr %cond_exe_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cond_exe_gpu_addr, align 8
  %shr = lshr i64 %31, 32
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i26)
  %cmp.i29 = icmp slt i32 %dec.i26, 1
  br i1 %cmp.i29, label %if.then.i30, label %amdgpu_ring_write.exit27.amdgpu_ring_write.exit40_crit_edge

amdgpu_ring_write.exit27.amdgpu_ring_write.exit40_crit_edge: ; preds = %amdgpu_ring_write.exit27
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit40

if.then.i30:                                      ; preds = %amdgpu_ring_write.exit27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit40

amdgpu_ring_write.exit40:                         ; preds = %if.then.i30, %amdgpu_ring_write.exit27.amdgpu_ring_write.exit40_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i33 = add i64 %35, 1
  store i64 %inc.i33, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i35 = and i32 %37, %38
  %arrayidx.i36 = getelementptr i32, ptr %33, i32 %idxprom.i35
  %39 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %conv3, ptr %arrayidx.i36, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i38 = and i64 %42, %41
  store i64 %and3.i38, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i39 = add i32 %44, -1
  store i32 %dec.i39, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i39)
  %cmp.i42 = icmp slt i32 %dec.i39, 1
  br i1 %cmp.i42, label %if.then.i43, label %amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge

amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge: ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit53

if.then.i43:                                      ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit53

amdgpu_ring_write.exit53:                         ; preds = %if.then.i43, %amdgpu_ring_write.exit40.amdgpu_ring_write.exit53_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 4
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wptr.i, align 8
  %inc.i46 = add i64 %48, 1
  store i64 %inc.i46, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_mask.i, align 8
  %51 = trunc i64 %48 to i32
  %idxprom.i48 = and i32 %50, %51
  %arrayidx.i49 = getelementptr i32, ptr %46, i32 %idxprom.i48
  %52 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 1, ptr %arrayidx.i49, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptr_mask.i, align 8
  %55 = load i64, ptr %wptr.i, align 8
  %and3.i51 = and i64 %55, %54
  store i64 %and3.i51, ptr %wptr.i, align 8
  %56 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count_dw.i, align 8
  %dec.i52 = add i32 %57, -1
  store i32 %dec.i52, ptr %count_dw.i, align 8
  %58 = load i32, ptr %buf_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i52)
  %cmp.i55 = icmp slt i32 %dec.i52, 1
  br i1 %cmp.i55, label %if.then.i56, label %amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge

amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge: ; preds = %amdgpu_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit66

if.then.i56:                                      ; preds = %amdgpu_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit66

amdgpu_ring_write.exit66:                         ; preds = %if.then.i56, %amdgpu_ring_write.exit53.amdgpu_ring_write.exit66_crit_edge
  %59 = trunc i64 %and3.i51 to i32
  %conv6 = and i32 %58, %59
  %60 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ring1.i, align 4
  %62 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wptr.i, align 8
  %inc.i59 = add i64 %63, 1
  store i64 %inc.i59, ptr %wptr.i, align 8
  %64 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf_mask.i, align 8
  %66 = trunc i64 %63 to i32
  %idxprom.i61 = and i32 %65, %66
  %arrayidx.i62 = getelementptr i32, ptr %61, i32 %idxprom.i61
  %67 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1437226410, ptr %arrayidx.i62, align 4
  %68 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ptr_mask.i, align 8
  %70 = load i64, ptr %wptr.i, align 8
  %and3.i64 = and i64 %70, %69
  store i64 %and3.i64, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count_dw.i, align 8
  %dec.i65 = add i32 %72, -1
  store i32 %dec.i65, ptr %count_dw.i, align 8
  ret i32 %conv6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_patch_cond_exec(ptr nocapture noundef readonly %ring, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_mask = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %0 = ptrtoint ptr %buf_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_mask, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp = icmp ult i32 %1, %offset
  br i1 %cmp, label %do.body2, label %do.body8, !prof !138

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 334, 0\0A.popsection", ""() #11, !srcloc !139
  unreachable

do.body8:                                         ; preds = %entry
  %ring9 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring9, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %offset
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437226410, i32 %5)
  %cmp10.not = icmp eq i32 %5, 1437226410
  br i1 %cmp10.not, label %do.end26, label %do.body18, !prof !132

do.body18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 335, 0\0A.popsection", ""() #11, !srcloc !140
  unreachable

do.end26:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wptr, align 8
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, -1
  %conv28 = and i32 %9, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv28, i32 %offset)
  %cmp29 = icmp ugt i32 %conv28, %offset
  %add = sub i32 1, %offset
  %sub36 = add i32 %add, %1
  %10 = sub i32 0, %offset
  %add37.sink.p = select i1 %cmp29, i32 %10, i32 %sub36
  %add37.sink = add i32 %conv28, %add37.sink.p
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %add37.sink, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_emit_wreg(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit15

if.then.i5:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
define internal void @sdma_v5_0_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  store volatile i32 805306376, ptr %arrayidx.i, align 4
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
  %cmp.i7 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i7, label %if.then.i8, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit18

if.then.i8:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit18

amdgpu_ring_write.exit18:                         ; preds = %if.then.i8, %amdgpu_ring_write.exit.amdgpu_ring_write.exit18_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i11 = add i64 %18, 1
  store i64 %inc.i11, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i13 = and i32 %20, %21
  %arrayidx.i14 = getelementptr i32, ptr %16, i32 %idxprom.i13
  %22 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %shl, ptr %arrayidx.i14, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i16 = and i64 %25, %24
  store i64 %and3.i16, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i17 = add i32 %27, -1
  store i32 %dec.i17, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i17)
  %cmp.i20 = icmp slt i32 %dec.i17, 1
  br i1 %cmp.i20, label %if.then.i21, label %amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge

amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge: ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit31

if.then.i21:                                      ; preds = %amdgpu_ring_write.exit18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit31

amdgpu_ring_write.exit31:                         ; preds = %if.then.i21, %amdgpu_ring_write.exit18.amdgpu_ring_write.exit31_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i24 = add i64 %31, 1
  store i64 %inc.i24, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i26 = and i32 %33, %34
  %arrayidx.i27 = getelementptr i32, ptr %29, i32 %idxprom.i26
  %35 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %arrayidx.i27, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i29 = and i64 %38, %37
  store i64 %and3.i29, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i30 = add i32 %40, -1
  store i32 %dec.i30, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i30)
  %cmp.i33 = icmp slt i32 %dec.i30, 1
  br i1 %cmp.i33, label %if.then.i34, label %amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge

amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge: ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit44

if.then.i34:                                      ; preds = %amdgpu_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit44

amdgpu_ring_write.exit44:                         ; preds = %if.then.i34, %amdgpu_ring_write.exit31.amdgpu_ring_write.exit44_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i37 = add i64 %44, 1
  store i64 %inc.i37, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i39 = and i32 %46, %47
  %arrayidx.i40 = getelementptr i32, ptr %42, i32 %idxprom.i39
  %48 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %val, ptr %arrayidx.i40, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i42 = and i64 %51, %50
  store i64 %and3.i42, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i43 = add i32 %53, -1
  store i32 %dec.i43, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i43)
  %cmp.i46 = icmp slt i32 %dec.i43, 1
  br i1 %cmp.i46, label %if.then.i47, label %amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge

amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge: ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit57

if.then.i47:                                      ; preds = %amdgpu_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit57

amdgpu_ring_write.exit57:                         ; preds = %if.then.i47, %amdgpu_ring_write.exit44.amdgpu_ring_write.exit57_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i50 = add i64 %57, 1
  store i64 %inc.i50, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i52 = and i32 %59, %60
  %arrayidx.i53 = getelementptr i32, ptr %55, i32 %idxprom.i52
  %61 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %mask, ptr %arrayidx.i53, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i55 = and i64 %64, %63
  store i64 %and3.i55, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i56 = add i32 %66, -1
  store i32 %dec.i56, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i56)
  %cmp.i59 = icmp slt i32 %dec.i56, 1
  br i1 %cmp.i59, label %if.then.i60, label %amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge

amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge: ; preds = %amdgpu_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit70

if.then.i60:                                      ; preds = %amdgpu_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit70

amdgpu_ring_write.exit70:                         ; preds = %if.then.i60, %amdgpu_ring_write.exit57.amdgpu_ring_write.exit70_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i63 = add i64 %70, 1
  store i64 %inc.i63, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i65 = and i32 %72, %73
  %arrayidx.i66 = getelementptr i32, ptr %68, i32 %idxprom.i65
  %74 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 268369930, ptr %arrayidx.i66, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i68 = and i64 %77, %76
  store i64 %and3.i68, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i69 = add i32 %79, -1
  store i32 %dec.i69, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_emit_reg_write_reg_wait(ptr noundef %ring, i32 noundef %reg0, i32 noundef %reg1, i32 noundef %ref, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emit_wreg, align 4
  tail call void %3(ptr noundef %ring, i32 noundef %reg0, i32 noundef %ref) #11
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %emit_reg_wait = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %emit_reg_wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emit_reg_wait, align 4
  tail call void %7(ptr noundef %ring, i32 noundef %reg0, i32 noundef 0, i32 noundef 0) #11
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %emit_reg_wait3 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %9, i32 0, i32 34
  %10 = ptrtoint ptr %emit_reg_wait3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emit_reg_wait3, align 4
  tail call void %11(ptr noundef %ring, i32 noundef %reg1, i32 noundef %mask, i32 noundef %mask) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_ring_preempt_ib(ptr noundef %ring) #1 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %index, align 4
  %call = call i32 @amdgpu_sdma_get_index_from_ring(ptr noundef %ring, ptr noundef nonnull %index) #11
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %. = select i1 %cmp, i32 176, i32 1712
  %cond_exe_cpu_addr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 36
  %5 = ptrtoint ptr %cond_exe_cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cond_exe_cpu_addr.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %6, align 4
  %trail_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 30
  %8 = ptrtoint ptr %trail_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trail_seq, align 8
  %add = add i32 %9, 1
  store i32 %add, ptr %trail_seq, align 8
  %call2 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 10) #11
  %trail_fence_gpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 32
  %10 = ptrtoint ptr %trail_fence_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %trail_fence_gpu_addr, align 8
  %12 = ptrtoint ptr %trail_seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trail_seq, align 8
  %conv = zext i32 %13 to i64
  call void @sdma_v5_0_ring_emit_fence(ptr noundef %ring, i64 noundef %11, i64 noundef %conv, i32 noundef 0)
  call void @amdgpu_ring_commit(ptr noundef %ring) #11
  call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %., i32 noundef 1, i32 noundef 0) #11
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp537 = icmp sgt i32 %15, 0
  br i1 %cmp537, label %for.body.lr.ph, label %entry.if.then15_crit_edge

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.body.lr.ph:                                   ; preds = %entry
  %trail_fence_cpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %16 = ptrtoint ptr %trail_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trail_seq, align 8
  %18 = ptrtoint ptr %trail_fence_cpu_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trail_fence_cpu_addr, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %22)
  %cmp8 = icmp eq i32 %17, %22
  br i1 %cmp8, label %for.body.if.end16_crit_edge, label %if.end11

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end11:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.038, 1
  %24 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usec_timeout, align 8
  %cmp5 = icmp slt i32 %inc, %25
  br i1 %cmp5, label %if.end11.for.body_crit_edge, label %if.end11.if.then15_crit_edge

if.end11.if.then15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then15:                                        ; preds = %if.end11.if.then15_crit_edge, %entry.if.then15_crit_edge
  %idx = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 15
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %27) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body.if.end16_crit_edge
  %r.0 = phi i32 [ -22, %if.then15 ], [ 0, %for.body.if.end16_crit_edge ]
  call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %., i32 noundef 0, i32 noundef 0) #11
  %28 = ptrtoint ptr %cond_exe_cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cond_exe_cpu_addr.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_0_ring_emit_mem_sync(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
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
  store volatile i32 17, ptr %arrayidx.i, align 4
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
  %cmp.i10 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i10, label %if.then.i11, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit21

if.then.i11:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit21

amdgpu_ring_write.exit21:                         ; preds = %if.then.i11, %amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i14 = add i64 %18, 1
  store i64 %inc.i14, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i16 = and i32 %20, %21
  %arrayidx.i17 = getelementptr i32, ptr %16, i32 %idxprom.i16
  %22 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %arrayidx.i17, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i19 = and i64 %25, %24
  store i64 %and3.i19, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i20 = add i32 %27, -1
  store i32 %dec.i20, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i20)
  %cmp.i23 = icmp slt i32 %dec.i20, 1
  br i1 %cmp.i23, label %if.then.i24, label %amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge

amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge: ; preds = %amdgpu_ring_write.exit21
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit34

if.then.i24:                                      ; preds = %amdgpu_ring_write.exit21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit34

amdgpu_ring_write.exit34:                         ; preds = %if.then.i24, %amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i27 = add i64 %31, 1
  store i64 %inc.i27, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i29 = and i32 %33, %34
  %arrayidx.i30 = getelementptr i32, ptr %29, i32 %idxprom.i29
  %35 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 -1012858880, ptr %arrayidx.i30, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i32 = and i64 %38, %37
  store i64 %and3.i32, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i33 = add i32 %40, -1
  store i32 %dec.i33, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i33)
  %cmp.i36 = icmp slt i32 %dec.i33, 1
  br i1 %cmp.i36, label %if.then.i37, label %amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge

amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge: ; preds = %amdgpu_ring_write.exit34
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit47

if.then.i37:                                      ; preds = %amdgpu_ring_write.exit34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit47

amdgpu_ring_write.exit47:                         ; preds = %if.then.i37, %amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i40 = add i64 %44, 1
  store i64 %inc.i40, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i42 = and i32 %46, %47
  %arrayidx.i43 = getelementptr i32, ptr %42, i32 %idxprom.i42
  %48 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %arrayidx.i43, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i45 = and i64 %51, %50
  store i64 %and3.i45, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i46 = add i32 %53, -1
  store i32 %dec.i46, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i46)
  %cmp.i49 = icmp slt i32 %dec.i46, 1
  br i1 %cmp.i49, label %if.then.i50, label %amdgpu_ring_write.exit47.amdgpu_ring_write.exit60_crit_edge

amdgpu_ring_write.exit47.amdgpu_ring_write.exit60_crit_edge: ; preds = %amdgpu_ring_write.exit47
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit60

if.then.i50:                                      ; preds = %amdgpu_ring_write.exit47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit60

amdgpu_ring_write.exit60:                         ; preds = %if.then.i50, %amdgpu_ring_write.exit47.amdgpu_ring_write.exit60_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i53 = add i64 %57, 1
  store i64 %inc.i53, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i55 = and i32 %59, %60
  %arrayidx.i56 = getelementptr i32, ptr %55, i32 %idxprom.i55
  %61 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %arrayidx.i56, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i58 = and i64 %64, %63
  store i64 %and3.i58, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i59 = add i32 %66, -1
  store i32 %dec.i59, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_sdma_get_csa_mc_addr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sdma_get_index_from_ring(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v5_0_emit_copy_buffer(ptr nocapture noundef %ib, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %byte_count, i1 noundef zeroext %tmz) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or = select i1 %tmz, i32 262145, i32 1
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
  store i32 %or, ptr %arrayidx, align 4
  %sub = add i32 %byte_count, -1
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %arrayidx4, align 4
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
  %inc12 = add i32 %12, 1
  store i32 %inc12, ptr %length_dw, align 4
  %arrayidx13 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx13, align 4
  %shr = lshr i64 %src_offset, 32
  %conv15 = trunc i64 %shr to i32
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc18 = add i32 %15, 1
  store i32 %inc18, ptr %length_dw, align 4
  %arrayidx19 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv15, ptr %arrayidx19, align 4
  %conv21 = trunc i64 %dst_offset to i32
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc24 = add i32 %18, 1
  store i32 %inc24, ptr %length_dw, align 4
  %arrayidx25 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv21, ptr %arrayidx25, align 4
  %shr26 = lshr i64 %dst_offset, 32
  %conv28 = trunc i64 %shr26 to i32
  %20 = load ptr, ptr %ptr, align 8
  %21 = load i32, ptr %length_dw, align 4
  %inc31 = add i32 %21, 1
  store i32 %inc31, ptr %length_dw, align 4
  %arrayidx32 = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv28, ptr %arrayidx32, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v5_0_emit_fill_buffer(ptr nocapture noundef %ib, i32 noundef %src_data, i64 noundef %dst_offset, i32 noundef %byte_count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %sub = add i32 %byte_count, -1
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %15, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %arrayidx18, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v5_0_vm_copy_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %sub = add i32 %mul, -1
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %arrayidx4, align 4
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
define internal void @sdma_v5_0_vm_write_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %value, i32 noundef %count, i32 noundef %incr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %sub = add i32 %mul, -1
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, ptr %length_dw, align 4
  %arrayidx14 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not47 = icmp eq i32 %mul, 0
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv29 = zext i32 %incr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ndw.049 = phi i32 [ %mul, %for.body.lr.ph ], [ %sub30, %for.body.for.body_crit_edge ]
  %value.addr.048 = phi i64 [ %value, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %conv17 = trunc i64 %value.addr.048 to i32
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
  %shr22 = lshr i64 %value.addr.048, 32
  %conv24 = trunc i64 %shr22 to i32
  %19 = load ptr, ptr %ptr, align 8
  %20 = load i32, ptr %length_dw, align 4
  %inc27 = add i32 %20, 1
  store i32 %inc27, ptr %length_dw, align 4
  %arrayidx28 = getelementptr i32, ptr %19, i32 %20
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv24, ptr %arrayidx28, align 4
  %add = add i64 %value.addr.048, %conv29
  %sub30 = add i32 %ndw.049, -2
  %cmp.not = icmp eq i32 %sub30, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v5_0_vm_set_pte_pde(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %sub = add i32 %count, -1
  %29 = load ptr, ptr %ptr, align 8
  %30 = load i32, ptr %length_dw, align 4
  %inc47 = add i32 %30, 1
  store i32 %inc47, ptr %length_dw, align 4
  %arrayidx48 = getelementptr i32, ptr %29, i32 %30
  %31 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub, ptr %arrayidx48, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_set_trap_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %base.0.i = load i32, ptr %3, align 4
  %. = select i1 %cmp, i32 28, i32 1564
  %add15.i15 = add i32 %base.0.i, %.
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add15.i15, i32 noundef 0) #11
  %and3 = and i32 %call2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp4 = icmp eq i32 %state, 1
  %cond5 = zext i1 %cmp4 to i32
  %or = or i32 %and3, %cond5
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i15, i32 noundef %or, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_0_process_trap_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21) #11
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %1, label %entry.sw.epilog12_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb3
  ]

entry.sw.epilog12_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog12

sw.bb:                                            ; preds = %entry
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %3 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cond13 = icmp eq i32 %4, 0
  br i1 %cond13, label %sw.bb2, label %sw.bb.sw.epilog12_crit_edge

sw.bb.sw.epilog12_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog12

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  br label %sw.epilog12.sink.split

sw.bb3:                                           ; preds = %entry
  %ring_id4 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %5 = ptrtoint ptr %ring_id4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_id4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %sw.bb5, label %sw.bb3.sw.epilog12_crit_edge

sw.bb3.sw.epilog12_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog12

sw.bb5:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %ring9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  br label %sw.epilog12.sink.split

sw.epilog12.sink.split:                           ; preds = %sw.bb5, %sw.bb2
  %ring9.sink = phi ptr [ %ring9, %sw.bb5 ], [ %ring, %sw.bb2 ]
  %call10 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring9.sink) #11
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.epilog12.sink.split, %sw.bb3.sw.epilog12_crit_edge, %sw.bb.sw.epilog12_crit_edge, %entry.sw.epilog12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdma_v5_0_process_illegal_inst_irq(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc15_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v5_0_ctx_switch_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %0 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %while.cond.preheader

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %0)
  %cmp231 = icmp ugt i32 %0, 65535
  br i1 %cmp231, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end37_crit_edge

while.cond.preheader.if.end37_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %unit.0233 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %value.0232 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %0, %while.cond.preheader.while.body_crit_edge ]
  %add = add i32 %value.0232, 1
  %shr = lshr i32 %add, 1
  %inc = add i32 %unit.0233, 1
  %cmp = icmp ugt i32 %add, 131071
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp1 = icmp ugt i32 %inc, 15
  br i1 %cmp1, label %land.end, label %while.end.if.end37_crit_edge

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.end:                                         ; preds = %while.end
  %.b188 = load i1, ptr @sdma_v5_0_ctx_switch_enable.__already_done, align 1
  br i1 %.b188, label %land.end.if.end37_crit_edge, label %if.then8, !prof !132

land.end.if.end37_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @sdma_v5_0_ctx_switch_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 648, i32 noundef 9, ptr noundef nonnull @.str.37, i32 noundef 2147450880) #11
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
  %cmp41235 = icmp sgt i32 %2, 0
  br i1 %cmp41235, label %for.body.lr.ph, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end40
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %shl47 = select i1 %enable, i32 262144, i32 0
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f32_cntl.0238 = phi i32 [ 0, %for.body.lr.ph ], [ %f32_cntl.1, %for.inc.for.body_crit_edge ]
  %i.0236 = phi i32 [ 0, %for.body.lr.ph ], [ %inc127, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.then43, label %for.body.if.end50_crit_edge

for.body.if.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0236)
  %cmp10.i = icmp eq i32 %i.0236, 1
  %spec.select22.i = select i1 %cmp10.i, i32 1564, i32 28
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %base.0.i = load i32, ptr %6, align 4
  %add15.i = add i32 %base.0.i, %spec.select22.i
  %call44 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add15.i, i32 noundef 0) #11
  %and45 = and i32 %call44, -262145
  %or49 = or i32 %and45, %shl47
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %for.body.if.end50_crit_edge
  %f32_cntl.1 = phi i32 [ %f32_cntl.0238, %for.body.if.end50_crit_edge ], [ %or49, %if.then43 ]
  br i1 %enable, label %land.lhs.true, label %if.end50.if.end119_crit_edge

if.end50.if.end119_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

land.lhs.true:                                    ; preds = %if.end50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %8 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool52.not = icmp eq i32 %8, 0
  br i1 %tobool52.not, label %land.lhs.true.if.end119_crit_edge, label %if.then53

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then53:                                        ; preds = %land.lhs.true
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt, align 8
  %and56 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then53.cond.false_crit_edge, label %land.lhs.true58

if.then53.cond.false_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true58:                                  ; preds = %if.then53
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs, align 4
  %tobool59.not = icmp eq ptr %12, null
  br i1 %tobool59.not, label %land.lhs.true58.cond.false_crit_edge, label %land.lhs.true60

land.lhs.true58.cond.false_crit_edge:             ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true60:                                  ; preds = %land.lhs.true58
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sriov_wreg, align 4
  %tobool64.not = icmp eq ptr %14, null
  br i1 %tobool64.not, label %land.lhs.true60.cond.false_crit_edge, label %cond.true

land.lhs.true60.cond.false_crit_edge:             ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0236)
  %cmp10.i190 = icmp eq i32 %i.0236, 1
  %spec.select22.i192 = select i1 %cmp10.i190, i32 1580, i32 44
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %base.0.i193 = load i32, ptr %16, align 4
  %add15.i194 = add i32 %base.0.i193, %spec.select22.i192
  tail call void %14(ptr noundef %adev, i32 noundef %add15.i194, i32 noundef %phase_quantum.0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true60.cond.false_crit_edge, %land.lhs.true58.cond.false_crit_edge, %if.then53.cond.false_crit_edge
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0236)
  %cmp10.i196 = icmp eq i32 %i.0236, 1
  %spec.select22.i198 = select i1 %cmp10.i196, i32 1580, i32 44
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %base.0.i199 = load i32, ptr %19, align 4
  %add15.i200 = add i32 %base.0.i199, %spec.select22.i198
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i200, i32 noundef %phase_quantum.0, i32 noundef 0) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %21 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %virt, align 8
  %and73 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %cond.end.cond.false92_crit_edge, label %land.lhs.true75

cond.end.cond.false92_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false92

land.lhs.true75:                                  ; preds = %cond.end
  %23 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs, align 4
  %tobool79.not = icmp eq ptr %24, null
  br i1 %tobool79.not, label %land.lhs.true75.cond.false92_crit_edge, label %land.lhs.true80

land.lhs.true75.cond.false92_crit_edge:           ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false92

land.lhs.true80:                                  ; preds = %land.lhs.true75
  %sriov_wreg84 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %sriov_wreg84 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sriov_wreg84, align 4
  %tobool85.not = icmp eq ptr %26, null
  br i1 %tobool85.not, label %land.lhs.true80.cond.false92_crit_edge, label %cond.true86

land.lhs.true80.cond.false92_crit_edge:           ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false92

cond.true86:                                      ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0236)
  %cmp10.i202 = icmp eq i32 %i.0236, 1
  %spec.select22.i204 = select i1 %cmp10.i202, i32 1581, i32 45
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %base.0.i205 = load i32, ptr %28, align 4
  %add15.i206 = add i32 %base.0.i205, %spec.select22.i204
  tail call void %26(ptr noundef %adev, i32 noundef %add15.i206, i32 noundef %phase_quantum.0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end94

cond.false92:                                     ; preds = %land.lhs.true80.cond.false92_crit_edge, %land.lhs.true75.cond.false92_crit_edge, %cond.end.cond.false92_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0236)
  %cmp10.i208 = icmp eq i32 %i.0236, 1
  %spec.select22.i210 = select i1 %cmp10.i208, i32 1581, i32 45
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %base.0.i211 = load i32, ptr %31, align 4
  %add15.i212 = add i32 %base.0.i211, %spec.select22.i210
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i212, i32 noundef %phase_quantum.0, i32 noundef 0) #11
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false92, %cond.true86
  %33 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %virt, align 8
  %and97 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %cond.end94.cond.false116_crit_edge, label %land.lhs.true99

cond.end94.cond.false116_crit_edge:               ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false116

land.lhs.true99:                                  ; preds = %cond.end94
  %35 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs, align 4
  %tobool103.not = icmp eq ptr %36, null
  br i1 %tobool103.not, label %land.lhs.true99.cond.false116_crit_edge, label %land.lhs.true104

land.lhs.true99.cond.false116_crit_edge:          ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false116

land.lhs.true104:                                 ; preds = %land.lhs.true99
  %sriov_wreg108 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %sriov_wreg108 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sriov_wreg108, align 4
  %tobool109.not = icmp eq ptr %38, null
  br i1 %tobool109.not, label %land.lhs.true104.cond.false116_crit_edge, label %cond.true110

land.lhs.true104.cond.false116_crit_edge:         ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false116

cond.true110:                                     ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0236)
  %cmp10.i214 = icmp eq i32 %i.0236, 1
  %spec.select22.i216 = select i1 %cmp10.i214, i32 1615, i32 79
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %base.0.i217 = load i32, ptr %40, align 4
  %add15.i218 = add i32 %base.0.i217, %spec.select22.i216
  tail call void %38(ptr noundef %adev, i32 noundef %add15.i218, i32 noundef %phase_quantum.0, i32 noundef 0, i32 noundef 1) #11
  br label %if.end119

cond.false116:                                    ; preds = %land.lhs.true104.cond.false116_crit_edge, %land.lhs.true99.cond.false116_crit_edge, %cond.end94.cond.false116_crit_edge
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0236)
  %cmp10.i220 = icmp eq i32 %i.0236, 1
  %spec.select22.i222 = select i1 %cmp10.i220, i32 1615, i32 79
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %base.0.i223 = load i32, ptr %43, align 4
  %add15.i224 = add i32 %base.0.i223, %spec.select22.i222
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i224, i32 noundef %phase_quantum.0, i32 noundef 0) #11
  br label %if.end119

if.end119:                                        ; preds = %cond.false116, %cond.true110, %land.lhs.true.if.end119_crit_edge, %if.end50.if.end119_crit_edge
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and122 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.then124, label %if.end119.for.inc_crit_edge

if.end119.for.inc_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then124:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0236)
  %cmp10.i226 = icmp eq i32 %i.0236, 1
  %spec.select22.i228 = select i1 %cmp10.i226, i32 1564, i32 28
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %base.0.i229 = load i32, ptr %48, align 4
  %add15.i230 = add i32 %base.0.i229, %spec.select22.i228
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i230, i32 noundef %f32_cntl.1, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then124, %if.end119.for.inc_crit_edge
  %inc127 = add nuw nsw i32 %i.0236, 1
  %50 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_instances, align 4
  %cmp41 = icmp slt i32 %inc127, %51
  br i1 %cmp41, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end40.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v5_0_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext false) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %2 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10201.i = icmp sgt i32 %3, 0
  br i1 %cmp10201.i, label %for.body.lr.ph.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0202.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.cond.false.i_crit_edge, label %land.lhs.true.i

for.body.i.cond.false.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs.i, align 4
  %tobool11.not.i = icmp eq ptr %7, null
  br i1 %tobool11.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true12.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool16.not.i = icmp eq ptr %9, null
  br i1 %tobool16.not.i, label %land.lhs.true12.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true12.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202.i)
  %cmp10.i.i = icmp eq i32 %i.0202.i, 1
  %spec.select22.i.i = select i1 %cmp10.i.i, i32 1664, i32 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %base.0.i.i = load i32, ptr %11, align 4
  %add15.i.i = add i32 %base.0.i.i, %spec.select22.i.i
  %call21.i = tail call i32 %9(ptr noundef %adev, i32 noundef %add15.i.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true12.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body.i.cond.false.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202.i)
  %cmp10.i160.i = icmp eq i32 %i.0202.i, 1
  %spec.select22.i162.i = select i1 %cmp10.i160.i, i32 1664, i32 128
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %base.0.i163.i = load i32, ptr %14, align 4
  %add15.i164.i = add i32 %base.0.i163.i, %spec.select22.i162.i
  %call23.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add15.i164.i, i32 noundef 0) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call21.i, %cond.true.i ], [ %call23.i, %cond.false.i ]
  %and24.i = and i32 %cond.i, -2
  %16 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt.i, align 8
  %and27.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %cond.end.i.cond.false45.i_crit_edge, label %land.lhs.true29.i

cond.end.i.cond.false45.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false45.i

land.lhs.true29.i:                                ; preds = %cond.end.i
  %18 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs.i, align 4
  %tobool33.not.i = icmp eq ptr %19, null
  br i1 %tobool33.not.i, label %land.lhs.true29.i.cond.false45.i_crit_edge, label %land.lhs.true34.i

land.lhs.true29.i.cond.false45.i_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false45.i

land.lhs.true34.i:                                ; preds = %land.lhs.true29.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool38.not.i = icmp eq ptr %21, null
  br i1 %tobool38.not.i, label %land.lhs.true34.i.cond.false45.i_crit_edge, label %cond.true39.i

land.lhs.true34.i.cond.false45.i_crit_edge:       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false45.i

cond.true39.i:                                    ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202.i)
  %cmp10.i166.i = icmp eq i32 %i.0202.i, 1
  %spec.select22.i168.i = select i1 %cmp10.i166.i, i32 1664, i32 128
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %base.0.i169.i = load i32, ptr %23, align 4
  %add15.i170.i = add i32 %base.0.i169.i, %spec.select22.i168.i
  tail call void %21(ptr noundef %adev, i32 noundef %add15.i170.i, i32 noundef %and24.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end47.i

cond.false45.i:                                   ; preds = %land.lhs.true34.i.cond.false45.i_crit_edge, %land.lhs.true29.i.cond.false45.i_crit_edge, %cond.end.i.cond.false45.i_crit_edge
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202.i)
  %cmp10.i172.i = icmp eq i32 %i.0202.i, 1
  %spec.select22.i174.i = select i1 %cmp10.i172.i, i32 1664, i32 128
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %base.0.i175.i = load i32, ptr %26, align 4
  %add15.i176.i = add i32 %base.0.i175.i, %spec.select22.i174.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i176.i, i32 noundef %and24.i, i32 noundef 0) #11
  br label %cond.end47.i

cond.end47.i:                                     ; preds = %cond.false45.i, %cond.true39.i
  %28 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt.i, align 8
  %and50.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %cond.end47.i.cond.false70.i_crit_edge, label %land.lhs.true52.i

cond.end47.i.cond.false70.i_crit_edge:            ; preds = %cond.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false70.i

land.lhs.true52.i:                                ; preds = %cond.end47.i
  %30 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs.i, align 4
  %tobool56.not.i = icmp eq ptr %31, null
  br i1 %tobool56.not.i, label %land.lhs.true52.i.cond.false70.i_crit_edge, label %land.lhs.true57.i

land.lhs.true52.i.cond.false70.i_crit_edge:       ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false70.i

land.lhs.true57.i:                                ; preds = %land.lhs.true52.i
  %sriov_rreg61.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %sriov_rreg61.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_rreg61.i, align 4
  %tobool62.not.i = icmp eq ptr %33, null
  br i1 %tobool62.not.i, label %land.lhs.true57.i.cond.false70.i_crit_edge, label %cond.true63.i

land.lhs.true57.i.cond.false70.i_crit_edge:       ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false70.i

cond.true63.i:                                    ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202.i)
  %cmp10.i178.i = icmp eq i32 %i.0202.i, 1
  %spec.select22.i180.i = select i1 %cmp10.i178.i, i32 1674, i32 138
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %base.0.i181.i = load i32, ptr %35, align 4
  %add15.i182.i = add i32 %base.0.i181.i, %spec.select22.i180.i
  %call69.i = tail call i32 %33(ptr noundef %adev, i32 noundef %add15.i182.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end73.i

cond.false70.i:                                   ; preds = %land.lhs.true57.i.cond.false70.i_crit_edge, %land.lhs.true52.i.cond.false70.i_crit_edge, %cond.end47.i.cond.false70.i_crit_edge
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202.i)
  %cmp10.i184.i = icmp eq i32 %i.0202.i, 1
  %spec.select22.i186.i = select i1 %cmp10.i184.i, i32 1674, i32 138
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %base.0.i187.i = load i32, ptr %38, align 4
  %add15.i188.i = add i32 %base.0.i187.i, %spec.select22.i186.i
  %call72.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add15.i188.i, i32 noundef 0) #11
  br label %cond.end73.i

cond.end73.i:                                     ; preds = %cond.false70.i, %cond.true63.i
  %cond74.i = phi i32 [ %call69.i, %cond.true63.i ], [ %call72.i, %cond.false70.i ]
  %and75.i = and i32 %cond74.i, -2
  %40 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %virt.i, align 8
  %and79.i = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %cond.end73.i.cond.false98.i_crit_edge, label %land.lhs.true81.i

cond.end73.i.cond.false98.i_crit_edge:            ; preds = %cond.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false98.i

land.lhs.true81.i:                                ; preds = %cond.end73.i
  %42 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %funcs.i, align 4
  %tobool85.not.i = icmp eq ptr %43, null
  br i1 %tobool85.not.i, label %land.lhs.true81.i.cond.false98.i_crit_edge, label %land.lhs.true86.i

land.lhs.true81.i.cond.false98.i_crit_edge:       ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false98.i

land.lhs.true86.i:                                ; preds = %land.lhs.true81.i
  %sriov_wreg90.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %sriov_wreg90.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sriov_wreg90.i, align 4
  %tobool91.not.i = icmp eq ptr %45, null
  br i1 %tobool91.not.i, label %land.lhs.true86.i.cond.false98.i_crit_edge, label %cond.true92.i

land.lhs.true86.i.cond.false98.i_crit_edge:       ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false98.i

cond.true92.i:                                    ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202.i)
  %cmp10.i190.i = icmp eq i32 %i.0202.i, 1
  %spec.select22.i192.i = select i1 %cmp10.i190.i, i32 1674, i32 138
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %base.0.i193.i = load i32, ptr %47, align 4
  %add15.i194.i = add i32 %base.0.i193.i, %spec.select22.i192.i
  tail call void %45(ptr noundef %adev, i32 noundef %add15.i194.i, i32 noundef %and75.i, i32 noundef 0, i32 noundef 1) #11
  br label %for.inc.i

cond.false98.i:                                   ; preds = %land.lhs.true86.i.cond.false98.i_crit_edge, %land.lhs.true81.i.cond.false98.i_crit_edge, %cond.end73.i.cond.false98.i_crit_edge
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202.i)
  %cmp10.i196.i = icmp eq i32 %i.0202.i, 1
  %spec.select22.i198.i = select i1 %cmp10.i196.i, i32 1674, i32 138
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %base.0.i199.i = load i32, ptr %50, align 4
  %add15.i200.i = add i32 %base.0.i199.i, %spec.select22.i198.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i200.i, i32 noundef %and75.i, i32 noundef 0) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false98.i, %cond.true92.i
  %inc.i = add nuw nsw i32 %i.0202.i, 1
  %52 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_instances.i, align 4
  %cmp10.i = icmp slt i32 %inc.i, %53
  br i1 %cmp10.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %54 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %virt, align 8
  %and = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %56 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp29 = icmp sgt i32 %57, 0
  br i1 %cmp29, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %not.enable = xor i1 %enable, true
  %cond = zext i1 %not.enable to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.030)
  %cmp10.i22 = icmp eq i32 %i.030, 1
  %spec.select22.i = select i1 %cmp10.i22, i32 1578, i32 42
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %base.0.i = load i32, ptr %59, align 4
  %add15.i = add i32 %base.0.i, %spec.select22.i
  %call4 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add15.i, i32 noundef 0) #11
  %and5 = and i32 %call4, -2
  %or = or i32 %and5, %cond
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %base.0.i27 = load i32, ptr %62, align 4
  %add15.i28 = add i32 %base.0.i27, %spec.select22.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add15.i28, i32 noundef %or, i32 noundef 0) #11
  %inc = add nuw nsw i32 %i.030, 1
  %64 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %65
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_sdma_hdr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__UNIQUE_ID_firmware390, !1, !"__UNIQUE_ID_firmware390", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware391, !3, !"__UNIQUE_ID_firmware391", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 46, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware392, !5, !"__UNIQUE_ID_firmware392", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 48, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware393, !7, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 49, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware394, !9, !"__UNIQUE_ID_firmware394", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 51, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware395, !11, !"__UNIQUE_ID_firmware395", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 52, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware396, !13, !"__UNIQUE_ID_firmware396", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 54, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware397, !15, !"__UNIQUE_ID_firmware397", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 55, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware398, !17, !"__UNIQUE_ID_firmware398", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 57, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware399, !19, !"__UNIQUE_ID_firmware399", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 58, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1677, i32 10}
!22 = !{ptr @sdma_v5_0_ip_funcs, !23, !"sdma_v5_0_ip_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1676, i32 27}
!24 = !{ptr @sdma_v5_0_ip_block, !25, !"sdma_v5_0_ip_block", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1849, i32 38}
!26 = !{ptr @sdma_v5_0_ring_funcs, !27, !"sdma_v5_0_ring_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1694, i32 39}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 358, i32 2}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 377, i32 3}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 382, i32 3}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 399, i32 2}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 401, i32 3}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 411, i32 3}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 415, i32 3}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 990, i32 3}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sdma_v5_0_ring_test_ring._entry, !45, !"_entry", i1 false, i1 false}
!51 = !{ptr @sdma_v5_0_ring_test_ring._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1000, i32 3}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1052, i32 3}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sdma_v5_0_ring_test_ib._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sdma_v5_0_ring_test_ib._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1063, i32 3}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1084, i32 3}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1088, i32 3}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1484, i32 3}
!67 = !{ptr @sdma_v5_0_buffer_funcs, !68, !"sdma_v5_0_buffer_funcs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1810, i32 41}
!69 = !{ptr @sdma_v5_0_vm_pte_funcs, !70, !"sdma_v5_0_vm_pte_funcs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1828, i32 41}
!71 = !{ptr @sdma_v5_0_trap_irq_funcs, !72, !"sdma_v5_0_trap_irq_funcs", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1741, i32 42}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1520, i32 2}
!75 = !{ptr @sdma_v5_0_illegal_inst_irq_funcs, !76, !"sdma_v5_0_illegal_inst_irq_funcs", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1746, i32 42}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1327, i32 3}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1336, i32 3}
!81 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 1343, i32 23}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 254, i32 2}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 258, i32 15}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 261, i32 15}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 264, i32 15}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 268, i32 16}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 270, i32 16}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 278, i32 39}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 280, i32 39}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 292, i32 3}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 306, i32 3}
!105 = !{ptr @golden_settings_sdma_5, !106, !"golden_settings_sdma_5", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 70, i32 38}
!107 = !{ptr @golden_settings_sdma_nv10, !108, !"golden_settings_sdma_nv10", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 120, i32 38}
!109 = !{ptr @golden_settings_sdma_nv14, !110, !"golden_settings_sdma_nv14", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 125, i32 38}
!111 = !{ptr @golden_settings_sdma_5_sriov, !112, !"golden_settings_sdma_5_sriov", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 97, i32 38}
!113 = !{ptr @golden_settings_sdma_nv12, !114, !"golden_settings_sdma_nv12", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 130, i32 38}
!115 = !{ptr @golden_settings_sdma_cyan_skillfish, !116, !"golden_settings_sdma_cyan_skillfish", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 139, i32 38}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c", i32 646, i32 4}
!119 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2165385814, i64 2165386317, i64 2165385851, i64 2165385907, i64 2165385941, i64 2165385965, i64 2165386006, i64 2165386027, i64 2165386055, i64 2165386089}
!130 = !{i32 0, i32 33}
!131 = !{i8 0, i8 2}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2165402223, i64 2165402726, i64 2165402260, i64 2165402316, i64 2165402350, i64 2165402374, i64 2165402415, i64 2165402436, i64 2165402464, i64 2165402498}
!134 = !{!"auto-init"}
!135 = !{i64 2148337445}
!136 = !{i64 2148251909, i64 2148251941, i64 2148251970, i64 2148252004, i64 2148252035, i64 2148252058}
!137 = !{i64 2149616163}
!138 = !{!"branch_weights", i32 1, i32 2000}
!139 = !{i64 2165389211, i64 2165389714, i64 2165389248, i64 2165389304, i64 2165389338, i64 2165389362, i64 2165389403, i64 2165389424, i64 2165389452, i64 2165389486}
!140 = !{i64 2165390888, i64 2165391391, i64 2165390925, i64 2165390981, i64 2165391015, i64 2165391039, i64 2165391080, i64 2165391101, i64 2165391129, i64 2165391163}
