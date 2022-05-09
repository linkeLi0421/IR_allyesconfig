; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c"
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
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@__UNIQUE_ID_firmware390 = internal constant [47 x i8] c"amdgpu.firmware=amdgpu/sienna_cichlid_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware391 = internal constant [46 x i8] c"amdgpu.firmware=amdgpu/navy_flounder_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware392 = internal constant [49 x i8] c"amdgpu.firmware=amdgpu/dimgrey_cavefish_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware393 = internal constant [43 x i8] c"amdgpu.firmware=amdgpu/beige_goby_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware394 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/vangogh_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware395 = internal constant [44 x i8] c"amdgpu.firmware=amdgpu/yellow_carp_sdma.bin\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma_v5_2\00", [22 x i8] zeroinitializer }, align 32
@sdma_v5_2_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @sdma_v5_2_early_init, ptr null, ptr @sdma_v5_2_sw_init, ptr @sdma_v5_2_sw_fini, ptr null, ptr @sdma_v5_2_hw_init, ptr @sdma_v5_2_hw_fini, ptr null, ptr @sdma_v5_2_suspend, ptr @sdma_v5_2_resume, ptr @sdma_v5_2_is_idle, ptr @sdma_v5_2_wait_for_idle, ptr null, ptr null, ptr @sdma_v5_2_soft_reset, ptr null, ptr @sdma_v5_2_set_clockgating_state, ptr @sdma_v5_2_set_powergating_state, ptr @sdma_v5_2_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@sdma_v5_2_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 7, i32 5, i32 2, i32 0, ptr @sdma_v5_2_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@sdma_v5_2_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 0, i8 1, i8 0, i32 0, i32 0, ptr @sdma_v5_2_ring_get_rptr, ptr @sdma_v5_2_ring_get_wptr, ptr @sdma_v5_2_ring_set_wptr, ptr null, ptr null, i32 86, i32 13, ptr @sdma_v5_2_ring_emit_ib, ptr @sdma_v5_2_ring_emit_fence, ptr @sdma_v5_2_ring_emit_pipeline_sync, ptr @sdma_v5_2_ring_emit_vm_flush, ptr @sdma_v5_2_ring_emit_hdp_flush, ptr null, ptr @sdma_v5_2_ring_test_ring, ptr @sdma_v5_2_ring_test_ib, ptr @sdma_v5_2_ring_insert_nop, ptr null, ptr null, ptr @sdma_v5_2_ring_pad_ib, ptr @sdma_v5_2_ring_init_cond_exec, ptr @sdma_v5_2_ring_patch_cond_exec, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdma_v5_2_ring_emit_wreg, ptr @sdma_v5_2_ring_emit_reg_wait, ptr @sdma_v5_2_ring_emit_reg_write_reg_wait, ptr null, ptr null, ptr @sdma_v5_2_ring_preempt_ib, ptr @sdma_v5_2_ring_emit_mem_sync, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rptr before shift == 0x%016llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wptr/doorbell before shift == 0x%016llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wptr before shift [%i] wptr == 0x%016llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting write pointer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"Using doorbell -- wptr_offs == 0x%08x lower_32_bits(ring->wptr) << 2 == 0x%08x upper_32_bits(ring->wptr) << 2 == 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"calling WDOORBELL64(0x%08x, 0x%016llx)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Not using doorbell -- mmSDMA%i_GFX_RB_WPTR == 0x%08x mmSDMA%i_GFX_RB_WPTR_HI == 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@sdma_v5_2_ring_test_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 920, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: (%d) failed to allocate wb slot\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdma_v5_2_ring_test_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdma_v5_2_ring_test_ring._entry_ptr = internal global ptr @sdma_v5_2_ring_test_ring._entry, section ".printk_index", align 4
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: dma failed to lock ring %d (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_emu_mode = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdma_v5_2_ring_test_ib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.11, i32 982, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: (%ld) failed to allocate wb slot\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdma_v5_2_ring_test_ib\00", [41 x i8] zeroinitializer }, align 32
@sdma_v5_2_ring_test_ib._entry_ptr = internal global ptr @sdma_v5_2_ring_test_ib._entry, section ".printk_index", align 4
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: failed to get ib (%ld).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: IB test timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: fence wait failed (%ld).\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ring %d failed to be preempted\0A\00", [32 x i8] zeroinitializer }, align 32
@sdma_v5_2_buffer_funcs = internal constant { %struct.amdgpu_buffer_funcs, [40 x i8] } { %struct.amdgpu_buffer_funcs { i32 4194304, i32 7, ptr @sdma_v5_2_emit_copy_buffer, i32 4194304, i32 5, ptr @sdma_v5_2_emit_fill_buffer }, [40 x i8] zeroinitializer }, align 32
@sdma_v5_2_vm_pte_funcs = internal constant { %struct.amdgpu_vm_pte_funcs, [16 x i8] } { %struct.amdgpu_vm_pte_funcs { i32 7, ptr @sdma_v5_2_vm_copy_pte, ptr @sdma_v5_2_vm_write_pte, ptr @sdma_v5_2_vm_set_pte_pde }, [16 x i8] zeroinitializer }, align 32
@sdma_v5_2_trap_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @sdma_v5_2_set_trap_irq_state, ptr @sdma_v5_2_process_trap_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v5_2_illegal_inst_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @sdma_v5_2_process_illegal_inst_irq }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: SDMA trap\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to load sdma firmware!\0A\00", [33 x i8] zeroinitializer }, align 32
@sdma_v5_2_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.11, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016[drm] use_doorbell being set to: [%s]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sdma_v5_2_sw_init\00", [46 x i8] zeroinitializer }, align 32
@sdma_v5_2_sw_init._entry_ptr = internal global ptr @sdma_v5_2_sw_init._entry, section ".printk_index", align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdma%d\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sienna_cichlid\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"navy_flounder\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vangogh\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dimgrey_cavefish\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"beige_goby\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"yellow_carp\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu/%s_sdma.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"psp_load == '%s'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sdma_v5_2: Failed to load firmware \22%s\22\0A\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_sdma_phase_quantum = external dso_local local_unnamed_addr global i32, align 4
@sdma_v5_2_ctx_switch_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"clamping sdma_phase_quantum to %uK clock cycles\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.sdma_v5_2_sw_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 9, i32 1, i32 5], [16 x i8] zeroinitializer }, align 32
@switch.table.sdma_v5_2_sw_init.40 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.31, ptr @.str.30, ptr @.str.34, ptr @.str.32, ptr @.str.33], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 8, i64 9]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1654, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"sdma_v5_2_ip_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1653, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"sdma_v5_2_ip_block\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1826, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"sdma_v5_2_ring_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1671, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 245, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 264, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 269, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 286, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 288, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 298, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 302, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 314, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 920, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 930, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 982, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 992, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1013, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1017, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1430, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"sdma_v5_2_buffer_funcs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1787, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"sdma_v5_2_vm_pte_funcs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1805, i32 41 }
@___asan_gen_.125 = private unnamed_addr constant [25 x i8] c"sdma_v5_2_trap_irq_funcs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1718, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant [33 x i8] c"sdma_v5_2_illegal_inst_irq_funcs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1723, i32 42 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1463, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1285, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1295, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1301, i32 23 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 137, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 141, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 144, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 147, i32 15 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 150, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 153, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 156, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 162, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 180, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 196, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 535, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 830, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [31 x i8] c"switch.table.sdma_v5_2_sw_init\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [34 x i8] c"switch.table.sdma_v5_2_sw_init.40\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_firmware390, ptr @__UNIQUE_ID_firmware391, ptr @__UNIQUE_ID_firmware392, ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_firmware394, ptr @__UNIQUE_ID_firmware395, ptr @sdma_v5_2_ring_test_ib._entry, ptr @sdma_v5_2_ring_test_ib._entry_ptr, ptr @sdma_v5_2_ring_test_ring._entry, ptr @sdma_v5_2_ring_test_ring._entry_ptr, ptr @sdma_v5_2_sw_init._entry, ptr @sdma_v5_2_sw_init._entry_ptr, ptr @.str, ptr @sdma_v5_2_ip_funcs, ptr @sdma_v5_2_ip_block, ptr @sdma_v5_2_ring_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @sdma_v5_2_buffer_funcs, ptr @sdma_v5_2_vm_pte_funcs, ptr @sdma_v5_2_trap_irq_funcs, ptr @sdma_v5_2_illegal_inst_irq_funcs, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.sdma_v5_2_sw_init, ptr @switch.table.sdma_v5_2_sw_init.40], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_ring_test_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_ring_test_ib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_buffer_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_vm_pte_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_trap_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_illegal_inst_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v5_2_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v5_2_sw_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v5_2_sw_init.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.i = icmp sgt i32 %1, 0
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %entry.sdma_v5_2_set_ring_funcs.exit_crit_edge

entry.sdma_v5_2_set_ring_funcs.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_set_ring_funcs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %funcs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.013.i, i32 3, i32 1
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sdma_v5_2_ring_funcs, ptr %funcs.i, align 4
  %me.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.013.i, i32 3, i32 16
  %3 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.013.i, ptr %me.i, align 8
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %4 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sdma_v5_2_set_ring_funcs.exit_crit_edge

for.body.i.sdma_v5_2_set_ring_funcs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_set_ring_funcs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sdma_v5_2_set_ring_funcs.exit:                    ; preds = %for.body.i.sdma_v5_2_set_ring_funcs.exit_crit_edge, %entry.sdma_v5_2_set_ring_funcs.exit_crit_edge
  %buffer_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 3
  %6 = ptrtoint ptr %buffer_funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_funcs.i, align 8
  %cmp.i4 = icmp eq ptr %7, null
  br i1 %cmp.i4, label %if.then.i, label %sdma_v5_2_set_ring_funcs.exit.sdma_v5_2_set_buffer_funcs.exit_crit_edge

sdma_v5_2_set_ring_funcs.exit.sdma_v5_2_set_buffer_funcs.exit_crit_edge: ; preds = %sdma_v5_2_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_set_buffer_funcs.exit

if.then.i:                                        ; preds = %sdma_v5_2_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %buffer_funcs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sdma_v5_2_buffer_funcs, ptr %buffer_funcs.i, align 8
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 3
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  %9 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ring.i, ptr %buffer_funcs_ring.i, align 4
  br label %sdma_v5_2_set_buffer_funcs.exit

sdma_v5_2_set_buffer_funcs.exit:                  ; preds = %if.then.i, %sdma_v5_2_set_ring_funcs.exit.sdma_v5_2_set_buffer_funcs.exit_crit_edge
  %vm_pte_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 11
  %10 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_pte_funcs.i, align 8
  %cmp.i5 = icmp eq ptr %11, null
  br i1 %cmp.i5, label %if.then.i7, label %sdma_v5_2_set_buffer_funcs.exit.sdma_v5_2_set_vm_pte_funcs.exit_crit_edge

sdma_v5_2_set_buffer_funcs.exit.sdma_v5_2_set_vm_pte_funcs.exit_crit_edge: ; preds = %sdma_v5_2_set_buffer_funcs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_set_vm_pte_funcs.exit

if.then.i7:                                       ; preds = %sdma_v5_2_set_buffer_funcs.exit
  %12 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sdma_v5_2_vm_pte_funcs, ptr %vm_pte_funcs.i, align 8
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
  br label %sdma_v5_2_set_vm_pte_funcs.exit

sdma_v5_2_set_vm_pte_funcs.exit:                  ; preds = %for.end.i, %sdma_v5_2_set_buffer_funcs.exit.sdma_v5_2_set_vm_pte_funcs.exit_crit_edge
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
  store ptr @sdma_v5_2_trap_irq_funcs, ptr %funcs.i13, align 8
  %funcs5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 2, i32 2
  %23 = ptrtoint ptr %funcs5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sdma_v5_2_illegal_inst_irq_funcs, ptr %funcs5.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %fw_name.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp75 = icmp sgt i32 %1, 0
  br i1 %cmp75, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %trap_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  br label %for.body

for.cond:                                         ; preds = %sdma_v5_2_seq_to_irq_id.exit
  %inc = add nuw nsw i32 %i.076, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.076)
  %4 = icmp ult i32 %i.076, 4
  br i1 %4, label %switch.lookup, label %for.body.sdma_v5_2_seq_to_irq_id.exit_crit_edge

for.body.sdma_v5_2_seq_to_irq_id.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_seq_to_irq_id.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sdma_v5_2_sw_init, i32 0, i32 %i.076
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sdma_v5_2_seq_to_irq_id.exit

sdma_v5_2_seq_to_irq_id.exit:                     ; preds = %switch.lookup, %for.body.sdma_v5_2_seq_to_irq_id.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %for.body.sdma_v5_2_seq_to_irq_id.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.076)
  %switch.selectcmp.i = icmp ult i32 %i.076, 4
  %6 = select i1 %switch.selectcmp.i, i32 224, i32 -22
  %call3 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %retval.0.i, i32 noundef %6, ptr noundef %trap_irq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.cond, label %sdma_v5_2_seq_to_irq_id.exit.cleanup_crit_edge

sdma_v5_2_seq_to_irq_id.exit.cleanup_crit_edge:   ; preds = %sdma_v5_2_seq_to_irq_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %sdma.le = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %fw_name.i) #11
  %7 = call ptr @memset(ptr %fw_name.i, i32 255, i32 40)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28) #11
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %switch.tableidx = add i32 %9, -328192
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 6
  br i1 %10, label %switch.lookup88, label %do.body.i

do.body.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #11, !srcloc !114
  unreachable

switch.lookup88:                                  ; preds = %for.end
  %switch.gep89 = getelementptr inbounds [6 x ptr], ptr @switch.table.sdma_v5_2_sw_init.40, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep89 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load90 = load ptr, ptr %switch.gep89, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 40, ptr noundef nonnull @.str.35, ptr noundef nonnull %switch.load90) #11
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle, align 8
  %call12.i = call i32 @request_firmware(ptr noundef %sdma.le, ptr noundef nonnull %fw_name.i, ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %switch.lookup88.if.then6_crit_edge

switch.lookup88.if.then6_crit_edge:               ; preds = %switch.lookup88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.i:                                         ; preds = %switch.lookup88
  %14 = ptrtoint ptr %sdma.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdma.le, align 8
  %call.i.i = call i32 @amdgpu_ucode_validate(ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.then6_crit_edge

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.i.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %sdma.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdma.le, align 8
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %ucode_version.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ucode_version.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucode_version.i.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #11
  %fw_version.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fw_version.i.i, align 4
  %ucode_feature_version.i.i = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %ucode_feature_version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ucode_feature_version.i.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #11
  %feature_version.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %feature_version.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %feature_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %26)
  %cmp.i.i = icmp ugt i32 %26, 19
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.sdma_v5_2_init_inst_ctx.exit.i_crit_edge

if.end.i.i.sdma_v5_2_init_inst_ctx.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_init_inst_ctx.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %burst_nop.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 5
  %28 = ptrtoint ptr %burst_nop.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %burst_nop.i.i, align 8
  br label %sdma_v5_2_init_inst_ctx.exit.i

sdma_v5_2_init_inst_ctx.exit.i:                   ; preds = %if.then3.i.i, %if.end.i.i.sdma_v5_2_init_inst_ctx.exit.i_crit_edge
  %29 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp99.i = icmp sgt i32 %30, 1
  br i1 %cmp99.i, label %sdma_v5_2_init_inst_ctx.exit.i.for.body.i_crit_edge, label %sdma_v5_2_init_inst_ctx.exit.i.for.end.i_crit_edge

sdma_v5_2_init_inst_ctx.exit.i.for.end.i_crit_edge: ; preds = %sdma_v5_2_init_inst_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

sdma_v5_2_init_inst_ctx.exit.i.for.body.i_crit_edge: ; preds = %sdma_v5_2_init_inst_ctx.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sdma_v5_2_init_inst_ctx.exit.i.for.body.i_crit_edge
  %i.0100.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %sdma_v5_2_init_inst_ctx.exit.i.for.body.i_crit_edge ]
  %arrayidx23.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.0100.i
  %31 = call ptr @memcpy(ptr %arrayidx23.i, ptr %sdma.le, i32 1832)
  %inc.i = add nuw nsw i32 %i.0100.i, 1
  %32 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_instances, align 4
  %cmp.i = icmp slt i32 %inc.i, %33
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sdma_v5_2_init_inst_ctx.exit.i.for.end.i_crit_edge
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %34 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %for.end.i.if.end33.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end33.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 328192, i32 %37)
  %cmp31.i = icmp eq i32 %37, 328192
  br i1 %cmp31.i, label %land.lhs.true.i.sdma_v5_2_init_microcode.exit_crit_edge, label %land.lhs.true.i.if.end33.i_crit_edge

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

land.lhs.true.i.sdma_v5_2_init_microcode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_init_microcode.exit

if.end33.i:                                       ; preds = %land.lhs.true.i.if.end33.i_crit_edge, %for.end.i.if.end33.i_crit_edge
  %firmware.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %38 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp34.i = icmp eq i32 %39, 2
  %cond.i = select i1 %cmp34.i, ptr @.str.25, ptr @.str.26
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond.i) #11
  %40 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp37.i = icmp eq i32 %41, 2
  br i1 %cmp37.i, label %for.cond39.preheader.i, label %if.end33.i.sdma_v5_2_init_microcode.exit_crit_edge

if.end33.i.sdma_v5_2_init_microcode.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_init_microcode.exit

for.cond39.preheader.i:                           ; preds = %if.end33.i
  %42 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp42101.i = icmp sgt i32 %43, 0
  br i1 %cmp42101.i, label %for.body43.lr.ph.i, label %sdma_v5_2_init_microcode.exit.thread

sdma_v5_2_init_microcode.exit.thread:             ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %fw_name.i) #11
  br label %cleanup

for.body43.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %fw_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 3
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i.for.body43.i_crit_edge, %for.body43.lr.ph.i
  %i.1102.i = phi i32 [ 0, %for.body43.lr.ph.i ], [ %inc58.i, %for.body43.i.for.body43.i_crit_edge ]
  %arrayidx45.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware.i, i32 0, i32 %i.1102.i
  %44 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.1102.i, ptr %arrayidx45.i, align 8
  %arrayidx49.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.1102.i
  %45 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx49.i, align 8
  %fw51.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware.i, i32 0, i32 %i.1102.i, i32 1
  %47 = ptrtoint ptr %fw51.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %fw51.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ucode_size_bytes.i, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #11
  %add53.i = add i32 %52, 4095
  %and54.i = and i32 %add53.i, -4096
  %53 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw_size.i, align 8
  %add56.i = add i32 %and54.i, %54
  store i32 %add56.i, ptr %fw_size.i, align 8
  %inc58.i = add nuw nsw i32 %i.1102.i, 1
  %exitcond.not = icmp eq i32 %inc58.i, %43
  br i1 %exitcond.not, label %for.body43.i.sdma_v5_2_init_microcode.exit_crit_edge, label %for.body43.i.for.body43.i_crit_edge

for.body43.i.for.body43.i_crit_edge:              ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43.i

for.body43.i.sdma_v5_2_init_microcode.exit_crit_edge: ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_init_microcode.exit

sdma_v5_2_init_microcode.exit:                    ; preds = %for.body43.i.sdma_v5_2_init_microcode.exit_crit_edge, %if.end33.i.sdma_v5_2_init_microcode.exit_crit_edge, %land.lhs.true.i.sdma_v5_2_init_microcode.exit_crit_edge
  %55 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %num_instances, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %fw_name.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp1177 = icmp sgt i32 %.pr, 0
  br i1 %cmp1177, label %for.body12.lr.ph, label %sdma_v5_2_init_microcode.exit.cleanup_crit_edge

sdma_v5_2_init_microcode.exit.cleanup_crit_edge:  ; preds = %sdma_v5_2_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body12.lr.ph:                                 ; preds = %sdma_v5_2_init_microcode.exit
  %trap_irq22 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  br label %for.body12

if.then6:                                         ; preds = %if.end.i.if.then6_crit_edge, %switch.lookup88.if.then6_crit_edge
  %err.0.i = phi i32 [ %call12.i, %switch.lookup88.if.then6_crit_edge ], [ %call.i.i, %if.end.i.if.then6_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, ptr noundef nonnull %fw_name.i) #11
  %56 = ptrtoint ptr %sdma.le to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdma.le, align 8
  call void @release_firmware(ptr noundef %57) #11
  %58 = call ptr @memset(ptr %sdma.le, i32 0, i32 14656)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %fw_name.i) #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #11
  br label %cleanup

for.cond8:                                        ; preds = %for.body12
  %inc28 = add nuw nsw i32 %i.178, 1
  %59 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_instances, align 4
  %cmp11 = icmp slt i32 %inc28, %60
  br i1 %cmp11, label %for.cond8.for.body12_crit_edge, label %for.cond8.cleanup_crit_edge

for.cond8.cleanup_crit_edge:                      ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond8.for.body12_crit_edge:                   ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.body12:                                       ; preds = %for.cond8.for.body12_crit_edge, %for.body12.lr.ph
  %i.178 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc28, %for.cond8.for.body12_crit_edge ]
  %ring14 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.178, i32 3
  %ring_obj = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.178, i32 3, i32 4
  %61 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %ring_obj, align 8
  %use_doorbell = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.178, i32 3, i32 24
  %62 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %use_doorbell, align 4
  %me = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.178, i32 3, i32 16
  %63 = ptrtoint ptr %me to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %i.178, ptr %me, align 8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25) #14
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 13, i32 %i.178
  %64 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx18, align 4
  %shl = shl i32 %65, 1
  %doorbell_index19 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.178, i32 3, i32 23
  %66 = ptrtoint ptr %doorbell_index19 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl, ptr %doorbell_index19, align 8
  %name = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.178, i32 3, i32 29
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.27, i32 noundef %i.178)
  %call23 = call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring14, i32 noundef 1024, ptr noundef %trap_irq22, i32 noundef %i.178, i32 noundef 1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.cond8, label %for.body12.cleanup_crit_edge

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body12.cleanup_crit_edge, %for.cond8.cleanup_crit_edge, %if.then6, %sdma_v5_2_init_microcode.exit.cleanup_crit_edge, %sdma_v5_2_init_microcode.exit.thread, %sdma_v5_2_seq_to_irq_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %if.then6 ], [ 0, %sdma_v5_2_init_microcode.exit.cleanup_crit_edge ], [ 0, %sdma_v5_2_init_microcode.exit.thread ], [ %call23, %for.body12.cleanup_crit_edge ], [ 0, %for.cond8.cleanup_crit_edge ], [ %call3, %sdma_v5_2_seq_to_irq_id.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ring = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.07, i32 3
  tail call void @amdgpu_ring_fini(ptr noundef %ring) #11
  %inc = add nuw nsw i32 %i.07, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %4 = ptrtoint ptr %sdma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdma.i, align 8
  tail call void @release_firmware(ptr noundef %5) #11
  %6 = call ptr @memset(ptr %sdma.i, i32 0, i32 14656)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_hw_init(ptr noundef %handle) #1 align 64 {
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
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sdma_v5_2_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  tail call fastcc void @sdma_v5_2_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  %call.i = tail call fastcc i32 @sdma_v5_2_gfx_resume(ptr noundef %handle) #11
  br label %sdma_v5_2_start.exit

if.end.i:                                         ; preds = %entry
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %2 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then1.i:                                       ; preds = %if.end.i
  tail call fastcc void @sdma_v5_2_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  %sdma.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %num_instances.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %4 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp78.i.i = icmp sgt i32 %5, 0
  br i1 %cmp78.i.i, label %for.body.lr.ph.i.i, label %if.then1.i.if.end5.i_crit_edge

if.then1.i.if.end5.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

for.body.lr.ph.i.i:                               ; preds = %if.then1.i
  %arrayidx.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.079.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc27.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.079.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.i.i.sdma_v5_2_start.exit_crit_edge, label %if.end.i.i

for.body.i.i.sdma_v5_2_start.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_start.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  tail call void @amdgpu_ucode_print_sdma_hdr(ptr noundef %9) #11
  %ucode_size_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %ucode_size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ucode_size_bytes.i.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 8
  %data11.i.i = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data11.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data11.i.i, align 4
  %ucode_array_offset_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %9, i32 0, i32 8
  %17 = ptrtoint ptr %ucode_array_offset_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ucode_array_offset_bytes.i.i, align 4
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 8
  %arrayidx3.i.i.i = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.079.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %i.079.i.i, 0
  %mul.i.i.i = shl i32 %i.079.i.i, 5
  %add.i.i.i = add i32 %mul.i.i.i, 22656
  %internal_offset.addr.0.i.i.i = select i1 %cmp4.not.i.i.i, i32 22656, i32 %add.i.i.i
  %add27.i.i.i = add i32 %22, %internal_offset.addr.0.i.i.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add27.i.i.i, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp1475.not.i.i = icmp ult i32 %12, 4
  br i1 %cmp1475.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body15.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body15.lr.ph.i.i:                             ; preds = %if.end.i.i
  %div56.i.i = lshr i32 %12, 2
  %23 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %23
  %add.i61.i.i = add i32 %mul.i.i.i, 22657
  %internal_offset.addr.0.i63.i.i = select i1 %cmp4.not.i.i.i, i32 22657, i32 %add.i61.i.i
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %if.end19.i.i.for.body15.i.i_crit_edge, %for.body15.lr.ph.i.i
  %j.077.i.i = phi i32 [ 0, %for.body15.lr.ph.i.i ], [ %inc.i.i, %if.end19.i.i.for.body15.i.i_crit_edge ]
  %fw_data.076.i.i = phi ptr [ %add.ptr.i.i, %for.body15.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end19.i.i.for.body15.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_emu_mode to i32))
  %24 = load i32, ptr @amdgpu_emu_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp16.i.i = icmp eq i32 %24, 1
  %rem.urem.i.i = urem i32 %j.077.i.i, 500
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
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 8
  %arrayidx3.i58.i.i = getelementptr i32, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx3.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx3.i58.i.i, align 4
  %add27.i64.i.i = add i32 %28, %internal_offset.addr.0.i63.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %fw_data.076.i.i, i32 1
  %29 = ptrtoint ptr %fw_data.076.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_data.076.i.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add27.i64.i.i, i32 noundef %31, i32 noundef 0) #11
  %inc.i.i = add nuw nsw i32 %j.077.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div56.i.i
  br i1 %exitcond.not.i.i, label %if.end19.i.i.for.end.i.i_crit_edge, label %if.end19.i.i.for.body15.i.i_crit_edge

if.end19.i.i.for.body15.i.i_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15.i.i

if.end19.i.i.for.end.i.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end19.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 8
  %arrayidx3.i67.i.i = getelementptr i32, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx3.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx3.i67.i.i, align 4
  %add27.i73.i.i = add i32 %35, %internal_offset.addr.0.i.i.i
  %fw_version.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.079.i.i, i32 1
  %36 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw_version.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add27.i73.i.i, i32 noundef %37, i32 noundef 0) #11
  %inc27.i.i = add nuw nsw i32 %i.079.i.i, 1
  %38 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_instances.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc27.i.i, %39
  br i1 %cmp.i.i, label %for.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i.if.end5.i_crit_edge

for.end.i.i.if.end5.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end5.i:                                        ; preds = %for.end.i.i.if.end5.i_crit_edge, %if.then1.i.if.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_emu_mode to i32))
  %40 = load i32, ptr @amdgpu_emu_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp6.i = icmp eq i32 %40, 1
  br i1 %cmp6.i, label %if.then7.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 1000) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %in_s0ix.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 140
  %41 = ptrtoint ptr %in_s0ix.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %in_s0ix.i, align 8, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool10.not.i = icmp eq i8 %42, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end12.i_crit_edge, label %if.then11.i

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %handle, i1 noundef zeroext false) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end12.i_crit_edge
  %call13.i = tail call i32 @sdma_v5_2_soft_reset(ptr noundef %handle) #11
  %43 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %virt.i, align 8
  %and.i.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %for.cond.preheader.i.i, label %if.end12.i.sdma_v5_2_enable.exit.i_crit_edge

if.end12.i.sdma_v5_2_enable.exit.i_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_enable.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end12.i
  %num_instances.i43.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %45 = ptrtoint ptr %num_instances.i43.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_instances.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp35.i.i = icmp sgt i32 %46, 0
  br i1 %cmp35.i.i, label %for.body.lr.ph.i44.i, label %for.cond.preheader.i.i.sdma_v5_2_enable.exit.i_crit_edge

for.cond.preheader.i.i.sdma_v5_2_enable.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_enable.exit.i

for.body.lr.ph.i44.i:                             ; preds = %for.cond.preheader.i.i
  %arrayidx9.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  br label %for.body.i49.i

for.body.i49.i:                                   ; preds = %for.body.i49.i.for.body.i49.i_crit_edge, %for.body.lr.ph.i44.i
  %i.036.i.i = phi i32 [ 0, %for.body.lr.ph.i44.i ], [ %inc.i47.i, %for.body.i49.i.for.body.i49.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.036.i.i)
  %cmp6.i.i.i = icmp ult i32 %i.036.i.i, 2
  %47 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx9.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.036.i.i)
  %cmp12.i.i.i = icmp eq i32 %i.036.i.i, 1
  %spec.select.i.i.i = select i1 %cmp12.i.i.i, i32 1578, i32 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.036.i.i)
  %cmp21.i21.i.i = icmp eq i32 %i.036.i.i, 3
  %spec.select39.i.i.i = select i1 %cmp21.i21.i.i, i32 1066, i32 42
  %internal_offset.addr.0.i.i45.i = select i1 %cmp6.i.i.i, i32 %spec.select.i.i.i, i32 %spec.select39.i.i.i
  %base.0.i.in.idx.i.i = select i1 %cmp6.i.i.i, i32 0, i32 2
  %base.0.i.in.i.i = getelementptr i32, ptr %48, i32 %base.0.i.in.idx.i.i
  %49 = ptrtoint ptr %base.0.i.in.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %base.0.i.i.i = load i32, ptr %base.0.i.in.i.i, align 4
  %add27.i.i46.i = add i32 %internal_offset.addr.0.i.i45.i, %base.0.i.i.i
  %call3.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i.i46.i, i32 noundef 0) #11
  %and4.i.i = and i32 %call3.i.i, -2
  %50 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx9.i.i.i, align 8
  %base.0.i32.in.i.i = getelementptr i32, ptr %51, i32 %base.0.i.in.idx.i.i
  %52 = ptrtoint ptr %base.0.i32.in.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %base.0.i32.i.i = load i32, ptr %base.0.i32.in.i.i, align 4
  %add27.i33.i.i = add i32 %base.0.i32.i.i, %internal_offset.addr.0.i.i45.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add27.i33.i.i, i32 noundef %and4.i.i, i32 noundef 0) #11
  %inc.i47.i = add nuw nsw i32 %i.036.i.i, 1
  %53 = ptrtoint ptr %num_instances.i43.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_instances.i43.i, align 4
  %cmp.i48.i = icmp slt i32 %inc.i47.i, %54
  br i1 %cmp.i48.i, label %for.body.i49.i.for.body.i49.i_crit_edge, label %for.body.i49.i.sdma_v5_2_enable.exit.i_crit_edge

for.body.i49.i.sdma_v5_2_enable.exit.i_crit_edge: ; preds = %for.body.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_enable.exit.i

for.body.i49.i.for.body.i49.i_crit_edge:          ; preds = %for.body.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i49.i

sdma_v5_2_enable.exit.i:                          ; preds = %for.body.i49.i.sdma_v5_2_enable.exit.i_crit_edge, %for.cond.preheader.i.i.sdma_v5_2_enable.exit.i_crit_edge, %if.end12.i.sdma_v5_2_enable.exit.i_crit_edge
  tail call fastcc void @sdma_v5_2_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext true) #11
  %call14.i = tail call fastcc i32 @sdma_v5_2_gfx_resume(ptr noundef %handle) #11
  %55 = ptrtoint ptr %in_s0ix.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %in_s0ix.i, align 8, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool16.not.i = icmp eq i8 %56, 0
  br i1 %tobool16.not.i, label %sdma_v5_2_enable.exit.i.sdma_v5_2_start.exit_crit_edge, label %if.then17.i

sdma_v5_2_enable.exit.i.sdma_v5_2_start.exit_crit_edge: ; preds = %sdma_v5_2_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_start.exit

if.then17.i:                                      ; preds = %sdma_v5_2_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %handle, i1 noundef zeroext true) #11
  br label %sdma_v5_2_start.exit

sdma_v5_2_start.exit:                             ; preds = %if.then17.i, %sdma_v5_2_enable.exit.i.sdma_v5_2_start.exit_crit_edge, %for.body.i.i.sdma_v5_2_start.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call14.i, %if.then17.i ], [ %call14.i, %sdma_v5_2_enable.exit.i.sdma_v5_2_start.exit_crit_edge ], [ -22, %for.body.i.i.sdma_v5_2_start.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_hw_fini(ptr noundef %handle) #1 align 64 {
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
  tail call fastcc void @sdma_v5_2_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false)
  tail call fastcc void @sdma_v5_2_enable(ptr noundef %handle, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_suspend(ptr noundef %handle) #1 align 64 {
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
  br i1 %tobool.not.i, label %if.end.i, label %entry.sdma_v5_2_hw_fini.exit_crit_edge

entry.sdma_v5_2_hw_fini.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sdma_v5_2_hw_fini.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sdma_v5_2_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  tail call fastcc void @sdma_v5_2_enable(ptr noundef %handle, i1 noundef zeroext false) #11
  br label %sdma_v5_2_hw_fini.exit

sdma_v5_2_hw_fini.exit:                           ; preds = %if.end.i, %entry.sdma_v5_2_hw_fini.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdma_v5_2_hw_init(ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sdma_v5_2_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.cleanup2_crit_edge, label %for.body.lr.ph

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  br label %for.body

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

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.09)
  %cmp6.i = icmp ult i32 %i.09, 2
  %4 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.09)
  %cmp12.i = icmp eq i32 %i.09, 1
  %spec.select.i = select i1 %cmp12.i, i32 1573, i32 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.09)
  %cmp21.i = icmp eq i32 %i.09, 3
  %spec.select39.i = select i1 %cmp21.i, i32 1061, i32 37
  %internal_offset.addr.0.i = select i1 %cmp6.i, i32 %spec.select.i, i32 %spec.select39.i
  %base.0.i.in.idx = select i1 %cmp6.i, i32 0, i32 2
  %base.0.i.in = getelementptr i32, ptr %5, i32 %base.0.i.in.idx
  %6 = ptrtoint ptr %base.0.i.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %base.0.i = load i32, ptr %base.0.i.in, align 4
  %add27.i = add i32 %base.0.i, %internal_offset.addr.0.i
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i, i32 noundef 0) #11
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
define internal i32 @sdma_v5_2_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32.not = icmp eq i32 %1, 0
  br i1 %cmp32.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx9.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add27.i = add i32 %5, 37
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i, i32 noundef 0) #11
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add27.i26 = add i32 %9, 1573
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i26, i32 noundef 0) #11
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9.i, align 8
  %arrayidx20.i = getelementptr i32, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20.i, align 4
  %add27.i28 = add i32 %13, 37
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i28, i32 noundef 0) #11
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9.i, align 8
  %arrayidx20.i30 = getelementptr i32, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx20.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20.i30, align 4
  %add27.i31 = add i32 %17, 1061
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i31, i32 noundef 0) #11
  %and = and i32 %call1, 1
  %and8 = and i32 %and, %call3
  %and9 = and i32 %and8, %call5
  %and10 = and i32 %and9, %call7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #11
  %inc = add nuw i32 %i.033, 1
  %19 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %20
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_soft_reset(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp212 = icmp sgt i32 %1, 0
  br i1 %cmp212, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 106, i32 2, i32 15
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  br label %for.body

for.body:                                         ; preds = %cond.end151.for.body_crit_edge, %for.body.lr.ph
  %i.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end151.for.body_crit_edge ]
  %shl = shl i32 8388608, %i.0213
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cond.false_crit_edge, label %land.lhs.true

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 3496
  %call = tail call i32 %7(ptr noundef %handle, i32 noundef %add, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add17 = add i32 %15, 3496
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add17, i32 noundef 0) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %or = or i32 %cond, %shl
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %or) #11
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and21 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false43_crit_edge, label %land.lhs.true23

cond.end.cond.false43_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false43

land.lhs.true23:                                  ; preds = %cond.end
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false43_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false43_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false43

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %land.lhs.true28.cond.false43_crit_edge, label %cond.true33

land.lhs.true28.cond.false43_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false43

cond.true33:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add42 = add i32 %25, 3496
  tail call void %21(ptr noundef %handle, i32 noundef %add42, i32 noundef %or, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end49

cond.false43:                                     ; preds = %land.lhs.true28.cond.false43_crit_edge, %land.lhs.true23.cond.false43_crit_edge, %cond.end.cond.false43_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add48 = add i32 %29, 3496
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add48, i32 noundef %or, i32 noundef 0) #11
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false43, %cond.true33
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt, align 8
  %and52 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %cond.end49.cond.false76_crit_edge, label %land.lhs.true54

cond.end49.cond.false76_crit_edge:                ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false76

land.lhs.true54:                                  ; preds = %cond.end49
  %32 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs, align 4
  %tobool58.not = icmp eq ptr %33, null
  br i1 %tobool58.not, label %land.lhs.true54.cond.false76_crit_edge, label %land.lhs.true59

land.lhs.true54.cond.false76_crit_edge:           ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false76

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %sriov_rreg63 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %sriov_rreg63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_rreg63, align 4
  %tobool64.not = icmp eq ptr %35, null
  br i1 %tobool64.not, label %land.lhs.true59.cond.false76_crit_edge, label %cond.true65

land.lhs.true59.cond.false76_crit_edge:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false76

cond.true65:                                      ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add74 = add i32 %39, 3496
  %call75 = tail call i32 %35(ptr noundef %handle, i32 noundef %add74, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end83

cond.false76:                                     ; preds = %land.lhs.true59.cond.false76_crit_edge, %land.lhs.true54.cond.false76_crit_edge, %cond.end49.cond.false76_crit_edge
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add81 = add i32 %43, 3496
  %call82 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add81, i32 noundef 0) #11
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false76, %cond.true65
  %cond84 = phi i32 [ %call75, %cond.true65 ], [ %call82, %cond.false76 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 10737400) #11
  %neg = xor i32 %shl, -1
  %and85 = and i32 %cond84, %neg
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and88 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %cond.end83.cond.false111_crit_edge, label %land.lhs.true90

cond.end83.cond.false111_crit_edge:               ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false111

land.lhs.true90:                                  ; preds = %cond.end83
  %47 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs, align 4
  %tobool94.not = icmp eq ptr %48, null
  br i1 %tobool94.not, label %land.lhs.true90.cond.false111_crit_edge, label %land.lhs.true95

land.lhs.true90.cond.false111_crit_edge:          ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false111

land.lhs.true95:                                  ; preds = %land.lhs.true90
  %sriov_wreg99 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %sriov_wreg99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_wreg99, align 4
  %tobool100.not = icmp eq ptr %50, null
  br i1 %tobool100.not, label %land.lhs.true95.cond.false111_crit_edge, label %cond.true101

land.lhs.true95.cond.false111_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false111

cond.true101:                                     ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add110 = add i32 %54, 3496
  tail call void %50(ptr noundef %handle, i32 noundef %add110, i32 noundef %and85, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end117

cond.false111:                                    ; preds = %land.lhs.true95.cond.false111_crit_edge, %land.lhs.true90.cond.false111_crit_edge, %cond.end83.cond.false111_crit_edge
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add116 = add i32 %58, 3496
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add116, i32 noundef %and85, i32 noundef 0) #11
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false111, %cond.true101
  %59 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %virt, align 8
  %and120 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %cond.end117.cond.false144_crit_edge, label %land.lhs.true122

cond.end117.cond.false144_crit_edge:              ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false144

land.lhs.true122:                                 ; preds = %cond.end117
  %61 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %funcs, align 4
  %tobool126.not = icmp eq ptr %62, null
  br i1 %tobool126.not, label %land.lhs.true122.cond.false144_crit_edge, label %land.lhs.true127

land.lhs.true122.cond.false144_crit_edge:         ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false144

land.lhs.true127:                                 ; preds = %land.lhs.true122
  %sriov_rreg131 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %sriov_rreg131 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sriov_rreg131, align 4
  %tobool132.not = icmp eq ptr %64, null
  br i1 %tobool132.not, label %land.lhs.true127.cond.false144_crit_edge, label %cond.true133

land.lhs.true127.cond.false144_crit_edge:         ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false144

cond.true133:                                     ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add142 = add i32 %68, 3496
  %call143 = tail call i32 %64(ptr noundef %handle, i32 noundef %add142, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end151

cond.false144:                                    ; preds = %land.lhs.true127.cond.false144_crit_edge, %land.lhs.true122.cond.false144_crit_edge, %cond.end117.cond.false144_crit_edge
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add149 = add i32 %72, 3496
  %call150 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add149, i32 noundef 0) #11
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false144, %cond.true133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 10737400) #11
  %inc = add nuw nsw i32 %i.0213, 1
  %74 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %75
  br i1 %cmp, label %cond.end151.for.body_crit_edge, label %cond.end151.for.end_crit_edge

cond.end151.for.end_crit_edge:                    ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.end151.for.body_crit_edge:                   ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cond.end151.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
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
  %.off = add i32 %3, -328192
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off)
  %switch = icmp ult i32 %.off, 6
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %4 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp87.i = icmp sgt i32 %5, 0
  br i1 %cmp87.i, label %for.body.lr.ph.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %arrayidx9.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.088.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %fw_version.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.088.i, i32 1
  %6 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %7)
  %cmp2.i = icmp ult i32 %7, 70
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 328193, i32 %9)
  %cmp5.i = icmp eq i32 %9, 328193
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %11, -2049
  store i32 %and.i, ptr %cg_flags.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  br i1 %cmp, label %land.lhs.true6.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %12 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cg_flags.i, align 8
  %and8.i = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %if.then10.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then10.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.088.i)
  %cmp6.i.i = icmp ult i32 %i.088.i, 2
  %14 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.088.i)
  %cmp12.i.i = icmp eq i32 %i.088.i, 1
  %spec.select.i.i = select i1 %cmp12.i.i, i32 1563, i32 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.088.i)
  %cmp21.i.i = icmp eq i32 %i.088.i, 3
  %spec.select39.i.i = select i1 %cmp21.i.i, i32 1051, i32 27
  %internal_offset.addr.0.i.i = select i1 %cmp6.i.i, i32 %spec.select.i.i, i32 %spec.select39.i.i
  %base.0.i.in.idx.i = select i1 %cmp6.i.i, i32 0, i32 2
  %base.0.i.in.i = getelementptr i32, ptr %15, i32 %base.0.i.in.idx.i
  %16 = ptrtoint ptr %base.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %base.0.i.i = load i32, ptr %base.0.i.in.i, align 4
  %add27.i.i = add i32 %base.0.i.i, %internal_offset.addr.0.i.i
  %call11.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %call11.i)
  %17 = icmp ult i32 %call11.i, 67108864
  br i1 %17, label %if.then10.i.for.inc.i_crit_edge, label %if.then14.i

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %and12.i = and i32 %call11.i, 67108863
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.088.i)
  %cmp6.i61.i = icmp ult i32 %i.088.i, 2
  %18 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.088.i)
  %cmp12.i63.i = icmp eq i32 %i.088.i, 1
  %spec.select.i64.i = select i1 %cmp12.i63.i, i32 1563, i32 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.088.i)
  %cmp21.i67.i = icmp eq i32 %i.088.i, 3
  %spec.select39.i68.i = select i1 %cmp21.i67.i, i32 1051, i32 27
  %internal_offset.addr.0.i70.i = select i1 %cmp6.i61.i, i32 %spec.select.i64.i, i32 %spec.select39.i68.i
  %base.0.i71.in.idx.i = select i1 %cmp6.i61.i, i32 0, i32 2
  %base.0.i71.in.i = getelementptr i32, ptr %19, i32 %base.0.i71.in.idx.i
  %20 = ptrtoint ptr %base.0.i71.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %base.0.i71.i = load i32, ptr %base.0.i71.in.i, align 4
  %add27.i72.i = add i32 %base.0.i71.i, %internal_offset.addr.0.i70.i
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i72.i, i32 noundef 0) #11
  %or.i = or i32 %call18.i, -67108864
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %or.i)
  %cmp19.not.i = icmp eq i32 %call18.i, %or.i
  br i1 %cmp19.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.for.inc.sink.split.i_crit_edge

if.else.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %if.else.i.for.inc.sink.split.i_crit_edge, %if.then14.i
  %base.0.i.in.idx.sink.i = phi i32 [ %base.0.i.in.idx.i, %if.then14.i ], [ %base.0.i71.in.idx.i, %if.else.i.for.inc.sink.split.i_crit_edge ]
  %internal_offset.addr.0.i.sink.i = phi i32 [ %internal_offset.addr.0.i.i, %if.then14.i ], [ %internal_offset.addr.0.i70.i, %if.else.i.for.inc.sink.split.i_crit_edge ]
  %and12.sink.i = phi i32 [ %and12.i, %if.then14.i ], [ %or.i, %if.else.i.for.inc.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx9.i.i, align 8
  %base.0.i58.in.i = getelementptr i32, ptr %22, i32 %base.0.i.in.idx.sink.i
  %23 = ptrtoint ptr %base.0.i58.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %base.0.i58.i = load i32, ptr %base.0.i58.in.i, align 4
  %add27.i59.i = add i32 %base.0.i58.i, %internal_offset.addr.0.i.sink.i
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add27.i59.i, i32 noundef %and12.sink.i, i32 noundef 0) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else.i.for.inc.i_crit_edge, %if.then10.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.088.i, 1
  %24 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %sdma_v5_2_update_medium_grain_clock_gating.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sdma_v5_2_update_medium_grain_clock_gating.exit:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp87.i8 = icmp sgt i32 %25, 0
  br i1 %cmp87.i8, label %sdma_v5_2_update_medium_grain_clock_gating.exit.for.body.i17_crit_edge, label %sdma_v5_2_update_medium_grain_clock_gating.exit.cleanup_crit_edge

sdma_v5_2_update_medium_grain_clock_gating.exit.cleanup_crit_edge: ; preds = %sdma_v5_2_update_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sdma_v5_2_update_medium_grain_clock_gating.exit.for.body.i17_crit_edge: ; preds = %sdma_v5_2_update_medium_grain_clock_gating.exit
  br label %for.body.i17

for.body.i17:                                     ; preds = %for.inc.i59.for.body.i17_crit_edge, %sdma_v5_2_update_medium_grain_clock_gating.exit.for.body.i17_crit_edge
  %i.088.i14 = phi i32 [ %inc.i57, %for.inc.i59.for.body.i17_crit_edge ], [ 0, %sdma_v5_2_update_medium_grain_clock_gating.exit.for.body.i17_crit_edge ]
  %fw_version.i15 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.088.i14, i32 1
  %26 = ptrtoint ptr %fw_version.i15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw_version.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %27)
  %cmp2.i16 = icmp ult i32 %27, 70
  br i1 %cmp2.i16, label %land.lhs.true.i19, label %for.body.i17.if.end.i22_crit_edge

for.body.i17.if.end.i22_crit_edge:                ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i22

land.lhs.true.i19:                                ; preds = %for.body.i17
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 328193, i32 %29)
  %cmp5.i18 = icmp eq i32 %29, 328193
  br i1 %cmp5.i18, label %if.then.i21, label %land.lhs.true.i19.if.end.i22_crit_edge

land.lhs.true.i19.if.end.i22_crit_edge:           ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i22

if.then.i21:                                      ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cg_flags.i, align 8
  %and.i20 = and i32 %31, -1025
  store i32 %and.i20, ptr %cg_flags.i, align 8
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i21, %land.lhs.true.i19.if.end.i22_crit_edge, %for.body.i17.if.end.i22_crit_edge
  br i1 %cmp, label %land.lhs.true6.i25, label %if.end.i22.if.else.i50_crit_edge

if.end.i22.if.else.i50_crit_edge:                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i50

land.lhs.true6.i25:                               ; preds = %if.end.i22
  %32 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cg_flags.i, align 8
  %and8.i23 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i23)
  %tobool9.not.i24 = icmp eq i32 %and8.i23, 0
  br i1 %tobool9.not.i24, label %land.lhs.true6.i25.if.else.i50_crit_edge, label %if.then10.i38

land.lhs.true6.i25.if.else.i50_crit_edge:         ; preds = %land.lhs.true6.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i50

if.then10.i38:                                    ; preds = %land.lhs.true6.i25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.088.i14)
  %cmp6.i.i26 = icmp ult i32 %i.088.i14, 2
  %34 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.088.i14)
  %cmp12.i.i27 = icmp eq i32 %i.088.i14, 1
  %spec.select.i.i28 = select i1 %cmp12.i.i27, i32 1562, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.088.i14)
  %cmp21.i.i29 = icmp eq i32 %i.088.i14, 3
  %spec.select39.i.i30 = select i1 %cmp21.i.i29, i32 1050, i32 26
  %internal_offset.addr.0.i.i31 = select i1 %cmp6.i.i26, i32 %spec.select.i.i28, i32 %spec.select39.i.i30
  %base.0.i.in.idx.i32 = select i1 %cmp6.i.i26, i32 0, i32 2
  %base.0.i.in.i33 = getelementptr i32, ptr %35, i32 %base.0.i.in.idx.i32
  %36 = ptrtoint ptr %base.0.i.in.i33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %base.0.i.i34 = load i32, ptr %base.0.i.in.i33, align 4
  %add27.i.i35 = add i32 %base.0.i.i34, %internal_offset.addr.0.i.i31
  %call11.i36 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i.i35, i32 noundef 0) #11
  %or.i37 = or i32 %call11.i36, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i36, i32 %or.i37)
  %cmp12.not.i = icmp eq i32 %call11.i36, %or.i37
  br i1 %cmp12.not.i, label %if.then10.i38.for.inc.i59_crit_edge, label %if.then10.i38.for.inc.sink.split.i56_crit_edge

if.then10.i38.for.inc.sink.split.i56_crit_edge:   ; preds = %if.then10.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i56

if.then10.i38.for.inc.i59_crit_edge:              ; preds = %if.then10.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i59

if.else.i50:                                      ; preds = %land.lhs.true6.i25.if.else.i50_crit_edge, %if.end.i22.if.else.i50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.088.i14)
  %cmp6.i61.i39 = icmp ult i32 %i.088.i14, 2
  %37 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.088.i14)
  %cmp12.i63.i40 = icmp eq i32 %i.088.i14, 1
  %spec.select.i64.i41 = select i1 %cmp12.i63.i40, i32 1562, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.088.i14)
  %cmp21.i67.i42 = icmp eq i32 %i.088.i14, 3
  %spec.select39.i68.i43 = select i1 %cmp21.i67.i42, i32 1050, i32 26
  %internal_offset.addr.0.i70.i44 = select i1 %cmp6.i61.i39, i32 %spec.select.i64.i41, i32 %spec.select39.i68.i43
  %base.0.i71.in.idx.i45 = select i1 %cmp6.i61.i39, i32 0, i32 2
  %base.0.i71.in.i46 = getelementptr i32, ptr %38, i32 %base.0.i71.in.idx.i45
  %39 = ptrtoint ptr %base.0.i71.in.i46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %base.0.i71.i47 = load i32, ptr %base.0.i71.in.i46, align 4
  %add27.i72.i48 = add i32 %base.0.i71.i47, %internal_offset.addr.0.i70.i44
  %call17.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i72.i48, i32 noundef 0) #11
  %and18.i = and i32 %call17.i, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.i, i32 %and18.i)
  %cmp19.not.i49 = icmp eq i32 %call17.i, %and18.i
  br i1 %cmp19.not.i49, label %if.else.i50.for.inc.i59_crit_edge, label %if.else.i50.for.inc.sink.split.i56_crit_edge

if.else.i50.for.inc.sink.split.i56_crit_edge:     ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split.i56

if.else.i50.for.inc.i59_crit_edge:                ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i59

for.inc.sink.split.i56:                           ; preds = %if.else.i50.for.inc.sink.split.i56_crit_edge, %if.then10.i38.for.inc.sink.split.i56_crit_edge
  %base.0.i.in.idx.sink.i51 = phi i32 [ %base.0.i.in.idx.i32, %if.then10.i38.for.inc.sink.split.i56_crit_edge ], [ %base.0.i71.in.idx.i45, %if.else.i50.for.inc.sink.split.i56_crit_edge ]
  %internal_offset.addr.0.i.sink.i52 = phi i32 [ %internal_offset.addr.0.i.i31, %if.then10.i38.for.inc.sink.split.i56_crit_edge ], [ %internal_offset.addr.0.i70.i44, %if.else.i50.for.inc.sink.split.i56_crit_edge ]
  %or.sink.i = phi i32 [ %or.i37, %if.then10.i38.for.inc.sink.split.i56_crit_edge ], [ %and18.i, %if.else.i50.for.inc.sink.split.i56_crit_edge ]
  %40 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx9.i.i, align 8
  %base.0.i58.in.i53 = getelementptr i32, ptr %41, i32 %base.0.i.in.idx.sink.i51
  %42 = ptrtoint ptr %base.0.i58.in.i53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %base.0.i58.i54 = load i32, ptr %base.0.i58.in.i53, align 4
  %add27.i59.i55 = add i32 %base.0.i58.i54, %internal_offset.addr.0.i.sink.i52
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add27.i59.i55, i32 noundef %or.sink.i, i32 noundef 0) #11
  br label %for.inc.i59

for.inc.i59:                                      ; preds = %for.inc.sink.split.i56, %if.else.i50.for.inc.i59_crit_edge, %if.then10.i38.for.inc.i59_crit_edge
  %inc.i57 = add nuw nsw i32 %i.088.i14, 1
  %43 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_instances.i, align 4
  %cmp.i58 = icmp slt i32 %inc.i57, %44
  br i1 %cmp.i58, label %for.inc.i59.for.body.i17_crit_edge, label %for.inc.i59.cleanup_crit_edge

for.inc.i59.cleanup_crit_edge:                    ; preds = %for.inc.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i59.for.body.i17_crit_edge:               ; preds = %for.inc.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i17

cleanup:                                          ; preds = %for.inc.i59.cleanup_crit_edge, %sdma_v5_2_update_medium_grain_clock_gating.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdma_v5_2_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_2_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #1 align 64 {
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
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 1
  %3 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx9.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %add27.i = add i32 %6, 26
  %call1 = tail call i32 @amdgpu_kiq_rreg(ptr noundef %handle, i32 noundef %add27.i) #11
  %and2 = and i32 %call1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 1024
  store i32 %or, ptr %flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sdma_v5_2_ring_get_rptr(ptr nocapture noundef readonly %ring) #1 align 64 {
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
define internal i64 @sdma_v5_2_ring_get_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !115
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
  call void @__sanitizer_cov_trace_pc() #13
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %10 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp6.i = icmp ult i32 %11, 2
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp12.i = icmp eq i32 %11, 1
  %spec.select.i = select i1 %cmp12.i, i32 1670, i32 134
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp21.i = icmp eq i32 %11, 3
  %spec.select39.i = select i1 %cmp21.i, i32 1158, i32 134
  %internal_offset.addr.0.i = select i1 %cmp6.i, i32 %spec.select.i, i32 %spec.select39.i
  %base.0.i.in.idx = select i1 %cmp6.i, i32 0, i32 2
  %base.0.i.in = getelementptr i32, ptr %13, i32 %base.0.i.in.idx
  %14 = ptrtoint ptr %base.0.i.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %base.0.i = load i32, ptr %base.0.i.in, align 4
  %add27.i = add i32 %internal_offset.addr.0.i, %base.0.i
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add27.i, i32 noundef 0) #11
  %conv = zext i32 %call3 to i64
  %shl = shl nuw i64 %conv, 32
  %15 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp6.i22 = icmp ult i32 %16, 2
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp12.i24 = icmp eq i32 %16, 1
  %spec.select.i25 = select i1 %cmp12.i24, i32 1669, i32 133
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp21.i28 = icmp eq i32 %16, 3
  %spec.select39.i29 = select i1 %cmp21.i28, i32 1157, i32 133
  %internal_offset.addr.0.i31 = select i1 %cmp6.i22, i32 %spec.select.i25, i32 %spec.select39.i29
  %base.0.i32.in.idx = select i1 %cmp6.i22, i32 0, i32 2
  %base.0.i32.in = getelementptr i32, ptr %18, i32 %base.0.i32.in.idx
  %19 = ptrtoint ptr %base.0.i32.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %base.0.i32 = load i32, ptr %base.0.i32.in, align 4
  %add27.i33 = add i32 %internal_offset.addr.0.i31, %base.0.i32
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add27.i33, i32 noundef 0) #11
  %conv7 = zext i32 %call6 to i64
  %or = or i64 %shl, %conv7
  %20 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %me, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %21, i64 noundef %or) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %wptr.0 = phi i64 [ %9, %do.end ], [ %or, %if.else ]
  %shr = lshr i64 %wptr.0, 2
  ret i64 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_2_ring_set_wptr(ptr nocapture noundef readonly %ring) #1 align 64 {
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
  %3 = load i8, ptr %use_doorbell, align 4, !range !115
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
  %.tr74 = trunc i64 %9 to i32
  %conv9 = shl i32 %.tr74, 2
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
  call void @__sanitizer_cov_trace_pc() #13
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
  %31 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp6.i = icmp ult i32 %32, 2
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp12.i = icmp eq i32 %32, 1
  %spec.select.i = select i1 %cmp12.i, i32 1669, i32 133
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp21.i = icmp eq i32 %32, 3
  %spec.select39.i = select i1 %cmp21.i, i32 1157, i32 133
  %internal_offset.addr.0.i = select i1 %cmp6.i, i32 %spec.select.i, i32 %spec.select39.i
  %base.0.i.in.idx = select i1 %cmp6.i, i32 0, i32 2
  %base.0.i.in = getelementptr i32, ptr %34, i32 %base.0.i.in.idx
  %35 = ptrtoint ptr %base.0.i.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %base.0.i = load i32, ptr %base.0.i.in, align 4
  %add27.i = add i32 %internal_offset.addr.0.i, %base.0.i
  %36 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %wptr26, align 8
  %.tr = trunc i64 %37 to i32
  %conv40 = shl i32 %.tr, 2
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add27.i, i32 noundef %conv40, i32 noundef 0) #11
  %38 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %me, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp6.i75 = icmp ult i32 %39, 2
  %40 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp12.i77 = icmp eq i32 %39, 1
  %spec.select.i78 = select i1 %cmp12.i77, i32 1670, i32 134
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp21.i81 = icmp eq i32 %39, 3
  %spec.select39.i82 = select i1 %cmp21.i81, i32 1158, i32 134
  %internal_offset.addr.0.i84 = select i1 %cmp6.i75, i32 %spec.select.i78, i32 %spec.select39.i82
  %base.0.i85.in.idx = select i1 %cmp6.i75, i32 0, i32 2
  %base.0.i85.in = getelementptr i32, ptr %41, i32 %base.0.i85.in.idx
  %42 = ptrtoint ptr %base.0.i85.in to i32
  call void @__asan_load4_noabort(i32 %42)
  %base.0.i85 = load i32, ptr %base.0.i85.in, align 4
  %add27.i86 = add i32 %internal_offset.addr.0.i84, %base.0.i85
  %43 = ptrtoint ptr %wptr26 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr26, align 8
  %45 = lshr i64 %44, 30
  %conv47 = trunc i64 %45 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add27.i86, i32 noundef %conv47, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_2_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #1 align 64 {
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
  tail call void @sdma_v5_2_ring_insert_nop(ptr noundef %ring, i32 noundef %and2)
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
define internal void @sdma_v5_2_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #1 align 64 {
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
  br i1 %tobool2.not, label %do.end10, label %do.body5, !prof !116

do.body5:                                         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 438, 0\0A.popsection", ""() #11, !srcloc !117
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
define internal void @sdma_v5_2_ring_emit_pipeline_sync(ptr noundef %ring) #1 align 64 {
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
define internal void @sdma_v5_2_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #1 align 64 {
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
define internal void @sdma_v5_2_ring_emit_hdp_flush(ptr noundef %ring) #1 align 64 {
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
  %ref_and_mask_sdma0 = getelementptr inbounds %struct.nbio_hdp_flush_reg, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ref_and_mask_sdma0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref_and_mask_sdma0, align 4
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %6 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %me, align 8
  %shl = shl i32 %5, %7
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
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
  %10 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %12 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %14 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_mask.i, align 8
  %16 = trunc i64 %13 to i32
  %idxprom.i = and i32 %15, %16
  %arrayidx.i = getelementptr i32, ptr %11, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 872415240, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ptr_mask.i, align 8
  %20 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %20, %19
  store i64 %and3.i, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 101, i32 4
  %23 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs, align 8
  %get_hdp_flush_done_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %get_hdp_flush_done_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_hdp_flush_done_offset, align 4
  %call = tail call i32 %26(ptr noundef %1) #11
  %shl3 = shl i32 %call, 2
  %27 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i21 = icmp slt i32 %28, 1
  br i1 %cmp.i21, label %if.then.i22, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit32_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit32_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit32

if.then.i22:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit32

amdgpu_ring_write.exit32:                         ; preds = %if.then.i22, %amdgpu_ring_write.exit.amdgpu_ring_write.exit32_crit_edge
  %29 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring1.i, align 4
  %31 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wptr.i, align 8
  %inc.i25 = add i64 %32, 1
  store i64 %inc.i25, ptr %wptr.i, align 8
  %33 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_mask.i, align 8
  %35 = trunc i64 %32 to i32
  %idxprom.i27 = and i32 %34, %35
  %arrayidx.i28 = getelementptr i32, ptr %30, i32 %idxprom.i27
  %36 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %shl3, ptr %arrayidx.i28, align 4
  %37 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ptr_mask.i, align 8
  %39 = load i64, ptr %wptr.i, align 8
  %and3.i30 = and i64 %39, %38
  store i64 %and3.i30, ptr %wptr.i, align 8
  %40 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count_dw.i, align 8
  %dec.i31 = add i32 %41, -1
  store i32 %dec.i31, ptr %count_dw.i, align 8
  %42 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %funcs, align 8
  %get_hdp_flush_req_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %get_hdp_flush_req_offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_hdp_flush_req_offset, align 4
  %call6 = tail call i32 %45(ptr noundef %1) #11
  %shl7 = shl i32 %call6, 2
  %46 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i34 = icmp slt i32 %47, 1
  br i1 %cmp.i34, label %if.then.i35, label %amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge

amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge: ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_ring_write.exit45

if.then.i35:                                      ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #11
  br label %amdgpu_ring_write.exit45

amdgpu_ring_write.exit45:                         ; preds = %if.then.i35, %amdgpu_ring_write.exit32.amdgpu_ring_write.exit45_crit_edge
  %48 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ring1.i, align 4
  %50 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %wptr.i, align 8
  %inc.i38 = add i64 %51, 1
  store i64 %inc.i38, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buf_mask.i, align 8
  %54 = trunc i64 %51 to i32
  %idxprom.i40 = and i32 %53, %54
  %arrayidx.i41 = getelementptr i32, ptr %49, i32 %idxprom.i40
  %55 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %shl7, ptr %arrayidx.i41, align 4
  %56 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %ptr_mask.i, align 8
  %58 = load i64, ptr %wptr.i, align 8
  %and3.i43 = and i64 %58, %57
  store i64 %and3.i43, ptr %wptr.i, align 8
  %59 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count_dw.i, align 8
  %dec.i44 = add i32 %60, -1
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
  %61 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring1.i, align 4
  %63 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %wptr.i, align 8
  %inc.i51 = add i64 %64, 1
  store i64 %inc.i51, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buf_mask.i, align 8
  %67 = trunc i64 %64 to i32
  %idxprom.i53 = and i32 %66, %67
  %arrayidx.i54 = getelementptr i32, ptr %62, i32 %idxprom.i53
  %68 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 %shl, ptr %arrayidx.i54, align 4
  %69 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %ptr_mask.i, align 8
  %71 = load i64, ptr %wptr.i, align 8
  %and3.i56 = and i64 %71, %70
  store i64 %and3.i56, ptr %wptr.i, align 8
  %72 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count_dw.i, align 8
  %dec.i57 = add i32 %73, -1
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
  %74 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring1.i, align 4
  %76 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %wptr.i, align 8
  %inc.i64 = add i64 %77, 1
  store i64 %inc.i64, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buf_mask.i, align 8
  %80 = trunc i64 %77 to i32
  %idxprom.i66 = and i32 %79, %80
  %arrayidx.i67 = getelementptr i32, ptr %75, i32 %idxprom.i66
  %81 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %shl, ptr %arrayidx.i67, align 4
  %82 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ptr_mask.i, align 8
  %84 = load i64, ptr %wptr.i, align 8
  %and3.i69 = and i64 %84, %83
  store i64 %and3.i69, ptr %wptr.i, align 8
  %85 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count_dw.i, align 8
  %dec.i70 = add i32 %86, -1
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
  %87 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring1.i, align 4
  %89 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %wptr.i, align 8
  %inc.i77 = add i64 %90, 1
  store i64 %inc.i77, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_mask.i, align 8
  %93 = trunc i64 %90 to i32
  %idxprom.i79 = and i32 %92, %93
  %arrayidx.i80 = getelementptr i32, ptr %88, i32 %idxprom.i79
  %94 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 268369930, ptr %arrayidx.i80, align 4
  %95 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ptr_mask.i, align 8
  %97 = load i64, ptr %wptr.i, align 8
  %and3.i82 = and i64 %97, %96
  store i64 %and3.i82, ptr %wptr.i, align 8
  %98 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count_dw.i, align 8
  %dec.i83 = add i32 %99, -1
  store i32 %dec.i83, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_ring_test_ring(ptr noundef %ring) #1 align 64 {
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
  store i32 -1, ptr %index, align 4, !annotation !118
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
define internal i32 @sdma_v5_2_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #1 align 64 {
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
  store i32 -1, ptr %index, align 4, !annotation !118
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
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !119
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err0_crit_edge, label %if.then10.i.i.i.i.i, !prof !116

if.end5.i.i.i.i.i.err0_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err0

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %err0

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !121
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
define internal void @sdma_v5_2_ring_insert_nop(ptr noundef %ring, i32 noundef %count) #1 align 64 {
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
  %1 = load i8, ptr %burst_nop, align 8, !range !115
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
define internal void @sdma_v5_2_ring_pad_ib(ptr noundef %ring, ptr nocapture noundef %ib) #1 align 64 {
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
  %3 = load i8, ptr %burst_nop, align 8, !range !115
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
define internal i32 @sdma_v5_2_ring_init_cond_exec(ptr noundef %ring) #1 align 64 {
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
define internal void @sdma_v5_2_ring_patch_cond_exec(ptr nocapture noundef readonly %ring, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_mask = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %0 = ptrtoint ptr %buf_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_mask, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp = icmp ult i32 %1, %offset
  br i1 %cmp, label %do.body2, label %do.body8, !prof !122

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #11, !srcloc !123
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
  br i1 %cmp10.not, label %do.end26, label %do.body18, !prof !116

do.body18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #11, !srcloc !124
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
define internal void @sdma_v5_2_ring_emit_wreg(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val) #1 align 64 {
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
define internal void @sdma_v5_2_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) #1 align 64 {
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
define internal void @sdma_v5_2_ring_emit_reg_write_reg_wait(ptr noundef %ring, i32 noundef %reg0, i32 noundef %reg1, i32 noundef %ref, i32 noundef %mask) #1 align 64 {
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
define internal i32 @sdma_v5_2_ring_preempt_ib(ptr noundef %ring) #1 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp6.i = icmp ult i32 %4, 2
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 1
  %5 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp12.i = icmp eq i32 %4, 1
  %spec.select.i = select i1 %cmp12.i, i32 1712, i32 176
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp21.i = icmp eq i32 %4, 3
  %spec.select39.i = select i1 %cmp21.i, i32 1200, i32 176
  %internal_offset.addr.0.i = select i1 %cmp6.i, i32 %spec.select.i, i32 %spec.select39.i
  %base.0.i.in.idx = select i1 %cmp6.i, i32 0, i32 2
  %base.0.i.in = getelementptr i32, ptr %6, i32 %base.0.i.in.idx
  %7 = ptrtoint ptr %base.0.i.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %base.0.i = load i32, ptr %base.0.i.in, align 4
  %add27.i = add i32 %internal_offset.addr.0.i, %base.0.i
  %cond_exe_cpu_addr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 36
  %8 = ptrtoint ptr %cond_exe_cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cond_exe_cpu_addr.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %9, align 4
  %trail_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 30
  %11 = ptrtoint ptr %trail_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trail_seq, align 8
  %add = add i32 %12, 1
  store i32 %add, ptr %trail_seq, align 8
  %call3 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 10) #11
  %trail_fence_gpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 32
  %13 = ptrtoint ptr %trail_fence_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %trail_fence_gpu_addr, align 8
  %15 = ptrtoint ptr %trail_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %trail_seq, align 8
  %conv5 = zext i32 %16 to i64
  call void @sdma_v5_2_ring_emit_fence(ptr noundef %ring, i64 noundef %14, i64 noundef %conv5, i32 noundef 0)
  call void @amdgpu_ring_commit(ptr noundef %ring) #11
  call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add27.i, i32 noundef 1, i32 noundef 0) #11
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp37 = icmp sgt i32 %18, 0
  br i1 %cmp37, label %for.body.lr.ph, label %entry.if.then14_crit_edge

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

for.body.lr.ph:                                   ; preds = %entry
  %trail_fence_cpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %19 = ptrtoint ptr %trail_seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trail_seq, align 8
  %21 = ptrtoint ptr %trail_fence_cpu_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trail_fence_cpu_addr, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %25)
  %cmp9 = icmp eq i32 %20, %25
  br i1 %cmp9, label %for.body.if.end15_crit_edge, label %if.end

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.038, 1
  %27 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp slt i32 %inc, %28
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.if.then14_crit_edge

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then14:                                        ; preds = %if.end.if.then14_crit_edge, %entry.if.then14_crit_edge
  %idx = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 15
  %29 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %30) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.body.if.end15_crit_edge
  %r.0 = phi i32 [ -22, %if.then14 ], [ 0, %for.body.if.end15_crit_edge ]
  call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add27.i, i32 noundef 0, i32 noundef 0) #11
  %31 = ptrtoint ptr %cond_exe_cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cond_exe_cpu_addr.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v5_2_ring_emit_mem_sync(ptr noundef %ring) #1 align 64 {
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
define internal void @sdma_v5_2_emit_copy_buffer(ptr nocapture noundef %ib, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %byte_count, i1 noundef zeroext %tmz) #8 align 64 {
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
define internal void @sdma_v5_2_emit_fill_buffer(ptr nocapture noundef %ib, i32 noundef %src_data, i64 noundef %dst_offset, i32 noundef %byte_count) #8 align 64 {
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
define internal void @sdma_v5_2_vm_copy_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) #8 align 64 {
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
define internal void @sdma_v5_2_vm_write_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %value, i32 noundef %count, i32 noundef %incr) #9 align 64 {
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
define internal void @sdma_v5_2_vm_set_pte_pde(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags) #8 align 64 {
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
define internal i32 @sdma_v5_2_set_trap_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #1 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp6.i = icmp ult i32 %type, 2
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %2 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx9.i, align 8
  %base.0.i.in.idx = select i1 %cmp6.i, i32 0, i32 2
  %base.0.i.in = getelementptr i32, ptr %3, i32 %base.0.i.in.idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp12.i = icmp eq i32 %type, 1
  %spec.select.i = select i1 %cmp12.i, i32 1564, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp21.i = icmp eq i32 %type, 3
  %spec.select39.i = select i1 %cmp21.i, i32 1052, i32 28
  %internal_offset.addr.0.i = select i1 %cmp6.i, i32 %spec.select.i, i32 %spec.select39.i
  %4 = ptrtoint ptr %base.0.i.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %base.0.i = load i32, ptr %base.0.i.in, align 4
  %add27.i = add i32 %base.0.i, %internal_offset.addr.0.i
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i, i32 noundef 0) #11
  %and2 = and i32 %call1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %cond = zext i1 %cmp to i32
  %or = or i32 %and2, %cond
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i, i32 noundef %or, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v5_2_process_trap_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21) #11
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog30_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb3
    i32 1, label %sw.bb12
    i32 5, label %sw.bb21
  ]

entry.sw.epilog30_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog30

sw.bb:                                            ; preds = %entry
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %3 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cond33 = icmp eq i32 %4, 0
  br i1 %cond33, label %sw.bb2, label %sw.bb.sw.epilog30_crit_edge

sw.bb.sw.epilog30_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog30

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  br label %sw.epilog30.sink.split

sw.bb3:                                           ; preds = %entry
  %ring_id4 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %5 = ptrtoint ptr %ring_id4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_id4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond32 = icmp eq i32 %6, 0
  br i1 %cond32, label %sw.bb5, label %sw.bb3.sw.epilog30_crit_edge

sw.bb3.sw.epilog30_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog30

sw.bb5:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %ring9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  br label %sw.epilog30.sink.split

sw.bb12:                                          ; preds = %entry
  %ring_id13 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %7 = ptrtoint ptr %ring_id13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ring_id13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cond31 = icmp eq i32 %8, 0
  br i1 %cond31, label %sw.bb14, label %sw.bb12.sw.epilog30_crit_edge

sw.bb12.sw.epilog30_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog30

sw.bb14:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %ring18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 2, i32 3
  br label %sw.epilog30.sink.split

sw.bb21:                                          ; preds = %entry
  %ring_id22 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %9 = ptrtoint ptr %ring_id22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_id22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cond = icmp eq i32 %10, 0
  br i1 %cond, label %sw.bb23, label %sw.bb21.sw.epilog30_crit_edge

sw.bb21.sw.epilog30_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog30

sw.bb23:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %ring27 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 3, i32 3
  br label %sw.epilog30.sink.split

sw.epilog30.sink.split:                           ; preds = %sw.bb23, %sw.bb14, %sw.bb5, %sw.bb2
  %ring27.sink = phi ptr [ %ring27, %sw.bb23 ], [ %ring18, %sw.bb14 ], [ %ring9, %sw.bb5 ], [ %ring, %sw.bb2 ]
  %call28 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring27.sink) #11
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.epilog30.sink.split, %sw.bb21.sw.epilog30_crit_edge, %sw.bb12.sw.epilog30_crit_edge, %sw.bb3.sw.epilog30_crit_edge, %sw.bb.sw.epilog30_crit_edge, %entry.sw.epilog30_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdma_v5_2_process_illegal_inst_irq(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readnone %entry1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v5_2_ctx_switch_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
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
  %cmp273 = icmp ugt i32 %0, 65535
  br i1 %cmp273, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end37_crit_edge

while.cond.preheader.if.end37_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %unit.0275 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %value.0274 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %0, %while.cond.preheader.while.body_crit_edge ]
  %add = add i32 %value.0274, 1
  %shr = lshr i32 %add, 1
  %inc = add i32 %unit.0275, 1
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
  %.b181 = load i1, ptr @sdma_v5_2_ctx_switch_enable.__already_done, align 1
  br i1 %.b181, label %land.end.if.end37_crit_edge, label %if.then8, !prof !116

land.end.if.end37_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @sdma_v5_2_ctx_switch_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 537, i32 noundef 9, ptr noundef nonnull @.str.38, i32 noundef 2147450880) #11
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
  %cmp41277 = icmp sgt i32 %2, 0
  br i1 %cmp41277, label %for.body.lr.ph, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end40
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %shl116 = select i1 %enable, i32 262144, i32 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0278 = phi i32 [ 0, %for.body.lr.ph ], [ %inc121, %for.inc.for.body_crit_edge ]
  br i1 %enable, label %land.lhs.true, label %for.body.if.end106_crit_edge

for.body.if.end106_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

land.lhs.true:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %3 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool43.not = icmp eq i32 %3, 0
  br i1 %tobool43.not, label %land.lhs.true.if.end106_crit_edge, label %if.then44

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then44:                                        ; preds = %land.lhs.true
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.then44.cond.false_crit_edge, label %land.lhs.true46

if.then44.cond.false_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true46:                                  ; preds = %if.then44
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool47.not = icmp eq ptr %7, null
  br i1 %tobool47.not, label %land.lhs.true46.cond.false_crit_edge, label %land.lhs.true48

land.lhs.true46.cond.false_crit_edge:             ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true48:                                  ; preds = %land.lhs.true46
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_wreg, align 4
  %tobool52.not = icmp eq ptr %9, null
  br i1 %tobool52.not, label %land.lhs.true48.cond.false_crit_edge, label %cond.true

land.lhs.true48.cond.false_crit_edge:             ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0278)
  %cmp6.i = icmp ult i32 %i.0278, 2
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0278)
  %cmp12.i = icmp eq i32 %i.0278, 1
  %spec.select.i = select i1 %cmp12.i, i32 1580, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0278)
  %cmp21.i = icmp eq i32 %i.0278, 3
  %spec.select39.i = select i1 %cmp21.i, i32 1068, i32 44
  %internal_offset.addr.0.i = select i1 %cmp6.i, i32 %spec.select.i, i32 %spec.select39.i
  %base.0.i.in.idx = select i1 %cmp6.i, i32 0, i32 2
  %base.0.i.in = getelementptr i32, ptr %11, i32 %base.0.i.in.idx
  %12 = ptrtoint ptr %base.0.i.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %base.0.i = load i32, ptr %base.0.i.in, align 4
  %add27.i = add i32 %base.0.i, %internal_offset.addr.0.i
  tail call void %9(ptr noundef %adev, i32 noundef %add27.i, i32 noundef %phase_quantum.0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true48.cond.false_crit_edge, %land.lhs.true46.cond.false_crit_edge, %if.then44.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0278)
  %cmp6.i182 = icmp ult i32 %i.0278, 2
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0278)
  %cmp12.i184 = icmp eq i32 %i.0278, 1
  %spec.select.i185 = select i1 %cmp12.i184, i32 1580, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0278)
  %cmp21.i188 = icmp eq i32 %i.0278, 3
  %spec.select39.i189 = select i1 %cmp21.i188, i32 1068, i32 44
  %internal_offset.addr.0.i191 = select i1 %cmp6.i182, i32 %spec.select.i185, i32 %spec.select39.i189
  %base.0.i192.in.idx = select i1 %cmp6.i182, i32 0, i32 2
  %base.0.i192.in = getelementptr i32, ptr %14, i32 %base.0.i192.in.idx
  %15 = ptrtoint ptr %base.0.i192.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %base.0.i192 = load i32, ptr %base.0.i192.in, align 4
  %add27.i193 = add i32 %base.0.i192, %internal_offset.addr.0.i191
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i193, i32 noundef %phase_quantum.0, i32 noundef 0) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and60 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %cond.end.cond.false79_crit_edge, label %land.lhs.true62

cond.end.cond.false79_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false79

land.lhs.true62:                                  ; preds = %cond.end
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %tobool66.not = icmp eq ptr %19, null
  br i1 %tobool66.not, label %land.lhs.true62.cond.false79_crit_edge, label %land.lhs.true67

land.lhs.true62.cond.false79_crit_edge:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false79

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %sriov_wreg71 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg71, align 4
  %tobool72.not = icmp eq ptr %21, null
  br i1 %tobool72.not, label %land.lhs.true67.cond.false79_crit_edge, label %cond.true73

land.lhs.true67.cond.false79_crit_edge:           ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false79

cond.true73:                                      ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0278)
  %cmp6.i195 = icmp ult i32 %i.0278, 2
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0278)
  %cmp12.i197 = icmp eq i32 %i.0278, 1
  %spec.select.i198 = select i1 %cmp12.i197, i32 1581, i32 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0278)
  %cmp21.i201 = icmp eq i32 %i.0278, 3
  %spec.select39.i202 = select i1 %cmp21.i201, i32 1069, i32 45
  %internal_offset.addr.0.i204 = select i1 %cmp6.i195, i32 %spec.select.i198, i32 %spec.select39.i202
  %base.0.i205.in.idx = select i1 %cmp6.i195, i32 0, i32 2
  %base.0.i205.in = getelementptr i32, ptr %23, i32 %base.0.i205.in.idx
  %24 = ptrtoint ptr %base.0.i205.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %base.0.i205 = load i32, ptr %base.0.i205.in, align 4
  %add27.i206 = add i32 %base.0.i205, %internal_offset.addr.0.i204
  tail call void %21(ptr noundef %adev, i32 noundef %add27.i206, i32 noundef %phase_quantum.0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end81

cond.false79:                                     ; preds = %land.lhs.true67.cond.false79_crit_edge, %land.lhs.true62.cond.false79_crit_edge, %cond.end.cond.false79_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0278)
  %cmp6.i208 = icmp ult i32 %i.0278, 2
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0278)
  %cmp12.i210 = icmp eq i32 %i.0278, 1
  %spec.select.i211 = select i1 %cmp12.i210, i32 1581, i32 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0278)
  %cmp21.i214 = icmp eq i32 %i.0278, 3
  %spec.select39.i215 = select i1 %cmp21.i214, i32 1069, i32 45
  %internal_offset.addr.0.i217 = select i1 %cmp6.i208, i32 %spec.select.i211, i32 %spec.select39.i215
  %base.0.i218.in.idx = select i1 %cmp6.i208, i32 0, i32 2
  %base.0.i218.in = getelementptr i32, ptr %26, i32 %base.0.i218.in.idx
  %27 = ptrtoint ptr %base.0.i218.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %base.0.i218 = load i32, ptr %base.0.i218.in, align 4
  %add27.i219 = add i32 %base.0.i218, %internal_offset.addr.0.i217
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i219, i32 noundef %phase_quantum.0, i32 noundef 0) #11
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false79, %cond.true73
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt, align 8
  %and84 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %cond.end81.cond.false103_crit_edge, label %land.lhs.true86

cond.end81.cond.false103_crit_edge:               ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false103

land.lhs.true86:                                  ; preds = %cond.end81
  %30 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs, align 4
  %tobool90.not = icmp eq ptr %31, null
  br i1 %tobool90.not, label %land.lhs.true86.cond.false103_crit_edge, label %land.lhs.true91

land.lhs.true86.cond.false103_crit_edge:          ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false103

land.lhs.true91:                                  ; preds = %land.lhs.true86
  %sriov_wreg95 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sriov_wreg95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_wreg95, align 4
  %tobool96.not = icmp eq ptr %33, null
  br i1 %tobool96.not, label %land.lhs.true91.cond.false103_crit_edge, label %cond.true97

land.lhs.true91.cond.false103_crit_edge:          ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false103

cond.true97:                                      ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0278)
  %cmp6.i221 = icmp ult i32 %i.0278, 2
  %34 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0278)
  %cmp12.i223 = icmp eq i32 %i.0278, 1
  %spec.select.i224 = select i1 %cmp12.i223, i32 1615, i32 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0278)
  %cmp21.i227 = icmp eq i32 %i.0278, 3
  %spec.select39.i228 = select i1 %cmp21.i227, i32 1103, i32 79
  %internal_offset.addr.0.i230 = select i1 %cmp6.i221, i32 %spec.select.i224, i32 %spec.select39.i228
  %base.0.i231.in.idx = select i1 %cmp6.i221, i32 0, i32 2
  %base.0.i231.in = getelementptr i32, ptr %35, i32 %base.0.i231.in.idx
  %36 = ptrtoint ptr %base.0.i231.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %base.0.i231 = load i32, ptr %base.0.i231.in, align 4
  %add27.i232 = add i32 %base.0.i231, %internal_offset.addr.0.i230
  tail call void %33(ptr noundef %adev, i32 noundef %add27.i232, i32 noundef %phase_quantum.0, i32 noundef 0, i32 noundef 1) #11
  br label %if.end106

cond.false103:                                    ; preds = %land.lhs.true91.cond.false103_crit_edge, %land.lhs.true86.cond.false103_crit_edge, %cond.end81.cond.false103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0278)
  %cmp6.i234 = icmp ult i32 %i.0278, 2
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0278)
  %cmp12.i236 = icmp eq i32 %i.0278, 1
  %spec.select.i237 = select i1 %cmp12.i236, i32 1615, i32 79
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0278)
  %cmp21.i240 = icmp eq i32 %i.0278, 3
  %spec.select39.i241 = select i1 %cmp21.i240, i32 1103, i32 79
  %internal_offset.addr.0.i243 = select i1 %cmp6.i234, i32 %spec.select.i237, i32 %spec.select39.i241
  %base.0.i244.in.idx = select i1 %cmp6.i234, i32 0, i32 2
  %base.0.i244.in = getelementptr i32, ptr %38, i32 %base.0.i244.in.idx
  %39 = ptrtoint ptr %base.0.i244.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %base.0.i244 = load i32, ptr %base.0.i244.in, align 4
  %add27.i245 = add i32 %base.0.i244, %internal_offset.addr.0.i243
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i245, i32 noundef %phase_quantum.0, i32 noundef 0) #11
  br label %if.end106

if.end106:                                        ; preds = %cond.false103, %cond.true97, %land.lhs.true.if.end106_crit_edge, %for.body.if.end106_crit_edge
  %40 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %virt, align 8
  %and109 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then111, label %if.end106.for.inc_crit_edge

if.end106.for.inc_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0278)
  %cmp6.i247 = icmp ult i32 %i.0278, 2
  %42 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0278)
  %cmp12.i249 = icmp eq i32 %i.0278, 1
  %spec.select.i250 = select i1 %cmp12.i249, i32 1564, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0278)
  %cmp21.i253 = icmp eq i32 %i.0278, 3
  %spec.select39.i254 = select i1 %cmp21.i253, i32 1052, i32 28
  %internal_offset.addr.0.i256 = select i1 %cmp6.i247, i32 %spec.select.i250, i32 %spec.select39.i254
  %base.0.i257.in.idx = select i1 %cmp6.i247, i32 0, i32 2
  %base.0.i257.in = getelementptr i32, ptr %43, i32 %base.0.i257.in.idx
  %44 = ptrtoint ptr %base.0.i257.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %base.0.i257 = load i32, ptr %base.0.i257.in, align 4
  %add27.i258 = add i32 %base.0.i257, %internal_offset.addr.0.i256
  %call113 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i258, i32 noundef 0) #11
  %and114 = and i32 %call113, -262145
  %or118 = or i32 %and114, %shl116
  %45 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx9.i, align 8
  %base.0.i270.in = getelementptr i32, ptr %46, i32 %base.0.i257.in.idx
  %47 = ptrtoint ptr %base.0.i270.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %base.0.i270 = load i32, ptr %base.0.i270.in, align 4
  %add27.i271 = add i32 %base.0.i270, %internal_offset.addr.0.i256
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i271, i32 noundef %or118, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then111, %if.end106.for.inc_crit_edge
  %inc121 = add nuw nsw i32 %i.0278, 1
  %48 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_instances, align 4
  %cmp41 = icmp slt i32 %inc121, %49
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
define internal fastcc void @sdma_v5_2_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  %ring10.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 2, i32 3
  %ring14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 3, i32 3
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %0 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp.i = icmp eq ptr %1, %ring.i
  %ring5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  %cmp17.i = icmp eq ptr %1, %ring5.i
  %or.cond.i = or i1 %cmp.i, %cmp17.i
  %cmp21.i = icmp eq ptr %1, %ring10.i
  %or.cond181.i = or i1 %cmp21.i, %or.cond.i
  %cmp25.i = icmp eq ptr %1, %ring14.i
  %or.cond182.i = or i1 %cmp25.i, %or.cond181.i
  br i1 %or.cond182.i, label %if.then.i, label %if.then.if.end.i_crit_edge

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
  %cmp28274.i = icmp sgt i32 %3, 0
  br i1 %cmp28274.i, label %for.body.lr.ph.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx9.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0275.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
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
  %tobool29.not.i = icmp eq ptr %7, null
  br i1 %tobool29.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true30.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

land.lhs.true30.i:                                ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool34.not.i = icmp eq ptr %9, null
  br i1 %tobool34.not.i, label %land.lhs.true30.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true30.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0275.i)
  %cmp6.i.i = icmp ult i32 %i.0275.i, 2
  %10 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0275.i)
  %cmp12.i.i = icmp eq i32 %i.0275.i, 1
  %spec.select.i.i = select i1 %cmp12.i.i, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0275.i)
  %cmp21.i.i = icmp eq i32 %i.0275.i, 3
  %spec.select39.i.i = select i1 %cmp21.i.i, i32 1152, i32 128
  %internal_offset.addr.0.i.i = select i1 %cmp6.i.i, i32 %spec.select.i.i, i32 %spec.select39.i.i
  %base.0.i.in.idx.i = select i1 %cmp6.i.i, i32 0, i32 2
  %base.0.i.in.i = getelementptr i32, ptr %11, i32 %base.0.i.in.idx.i
  %12 = ptrtoint ptr %base.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %base.0.i.i = load i32, ptr %base.0.i.in.i, align 4
  %add27.i.i = add i32 %base.0.i.i, %internal_offset.addr.0.i.i
  %call39.i = tail call i32 %9(ptr noundef %adev, i32 noundef %add27.i.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true30.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body.i.cond.false.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0275.i)
  %cmp6.i183.i = icmp ult i32 %i.0275.i, 2
  %13 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0275.i)
  %cmp12.i185.i = icmp eq i32 %i.0275.i, 1
  %spec.select.i186.i = select i1 %cmp12.i185.i, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0275.i)
  %cmp21.i189.i = icmp eq i32 %i.0275.i, 3
  %spec.select39.i190.i = select i1 %cmp21.i189.i, i32 1152, i32 128
  %internal_offset.addr.0.i192.i = select i1 %cmp6.i183.i, i32 %spec.select.i186.i, i32 %spec.select39.i190.i
  %base.0.i193.in.idx.i = select i1 %cmp6.i183.i, i32 0, i32 2
  %base.0.i193.in.i = getelementptr i32, ptr %14, i32 %base.0.i193.in.idx.i
  %15 = ptrtoint ptr %base.0.i193.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %base.0.i193.i = load i32, ptr %base.0.i193.in.i, align 4
  %add27.i194.i = add i32 %base.0.i193.i, %internal_offset.addr.0.i192.i
  %call41.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i194.i, i32 noundef 0) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call39.i, %cond.true.i ], [ %call41.i, %cond.false.i ]
  %and42.i = and i32 %cond.i, -2
  %16 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt.i, align 8
  %and45.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %cond.end.i.cond.false63.i_crit_edge, label %land.lhs.true47.i

cond.end.i.cond.false63.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false63.i

land.lhs.true47.i:                                ; preds = %cond.end.i
  %18 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs.i, align 4
  %tobool51.not.i = icmp eq ptr %19, null
  br i1 %tobool51.not.i, label %land.lhs.true47.i.cond.false63.i_crit_edge, label %land.lhs.true52.i

land.lhs.true47.i.cond.false63.i_crit_edge:       ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false63.i

land.lhs.true52.i:                                ; preds = %land.lhs.true47.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool56.not.i = icmp eq ptr %21, null
  br i1 %tobool56.not.i, label %land.lhs.true52.i.cond.false63.i_crit_edge, label %cond.true57.i

land.lhs.true52.i.cond.false63.i_crit_edge:       ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false63.i

cond.true57.i:                                    ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0275.i)
  %cmp6.i196.i = icmp ult i32 %i.0275.i, 2
  %22 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0275.i)
  %cmp12.i198.i = icmp eq i32 %i.0275.i, 1
  %spec.select.i199.i = select i1 %cmp12.i198.i, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0275.i)
  %cmp21.i202.i = icmp eq i32 %i.0275.i, 3
  %spec.select39.i203.i = select i1 %cmp21.i202.i, i32 1152, i32 128
  %internal_offset.addr.0.i205.i = select i1 %cmp6.i196.i, i32 %spec.select.i199.i, i32 %spec.select39.i203.i
  %base.0.i206.in.idx.i = select i1 %cmp6.i196.i, i32 0, i32 2
  %base.0.i206.in.i = getelementptr i32, ptr %23, i32 %base.0.i206.in.idx.i
  %24 = ptrtoint ptr %base.0.i206.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %base.0.i206.i = load i32, ptr %base.0.i206.in.i, align 4
  %add27.i207.i = add i32 %base.0.i206.i, %internal_offset.addr.0.i205.i
  tail call void %21(ptr noundef %adev, i32 noundef %add27.i207.i, i32 noundef %and42.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end65.i

cond.false63.i:                                   ; preds = %land.lhs.true52.i.cond.false63.i_crit_edge, %land.lhs.true47.i.cond.false63.i_crit_edge, %cond.end.i.cond.false63.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0275.i)
  %cmp6.i209.i = icmp ult i32 %i.0275.i, 2
  %25 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0275.i)
  %cmp12.i211.i = icmp eq i32 %i.0275.i, 1
  %spec.select.i212.i = select i1 %cmp12.i211.i, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0275.i)
  %cmp21.i215.i = icmp eq i32 %i.0275.i, 3
  %spec.select39.i216.i = select i1 %cmp21.i215.i, i32 1152, i32 128
  %internal_offset.addr.0.i218.i = select i1 %cmp6.i209.i, i32 %spec.select.i212.i, i32 %spec.select39.i216.i
  %base.0.i219.in.idx.i = select i1 %cmp6.i209.i, i32 0, i32 2
  %base.0.i219.in.i = getelementptr i32, ptr %26, i32 %base.0.i219.in.idx.i
  %27 = ptrtoint ptr %base.0.i219.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %base.0.i219.i = load i32, ptr %base.0.i219.in.i, align 4
  %add27.i220.i = add i32 %base.0.i219.i, %internal_offset.addr.0.i218.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i220.i, i32 noundef %and42.i, i32 noundef 0) #11
  br label %cond.end65.i

cond.end65.i:                                     ; preds = %cond.false63.i, %cond.true57.i
  %28 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt.i, align 8
  %and68.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %cond.end65.i.cond.false88.i_crit_edge, label %land.lhs.true70.i

cond.end65.i.cond.false88.i_crit_edge:            ; preds = %cond.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false88.i

land.lhs.true70.i:                                ; preds = %cond.end65.i
  %30 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs.i, align 4
  %tobool74.not.i = icmp eq ptr %31, null
  br i1 %tobool74.not.i, label %land.lhs.true70.i.cond.false88.i_crit_edge, label %land.lhs.true75.i

land.lhs.true70.i.cond.false88.i_crit_edge:       ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false88.i

land.lhs.true75.i:                                ; preds = %land.lhs.true70.i
  %sriov_rreg79.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %sriov_rreg79.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_rreg79.i, align 4
  %tobool80.not.i = icmp eq ptr %33, null
  br i1 %tobool80.not.i, label %land.lhs.true75.i.cond.false88.i_crit_edge, label %cond.true81.i

land.lhs.true75.i.cond.false88.i_crit_edge:       ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false88.i

cond.true81.i:                                    ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0275.i)
  %cmp6.i222.i = icmp ult i32 %i.0275.i, 2
  %34 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0275.i)
  %cmp12.i224.i = icmp eq i32 %i.0275.i, 1
  %spec.select.i225.i = select i1 %cmp12.i224.i, i32 1674, i32 138
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0275.i)
  %cmp21.i228.i = icmp eq i32 %i.0275.i, 3
  %spec.select39.i229.i = select i1 %cmp21.i228.i, i32 1162, i32 138
  %internal_offset.addr.0.i231.i = select i1 %cmp6.i222.i, i32 %spec.select.i225.i, i32 %spec.select39.i229.i
  %base.0.i232.in.idx.i = select i1 %cmp6.i222.i, i32 0, i32 2
  %base.0.i232.in.i = getelementptr i32, ptr %35, i32 %base.0.i232.in.idx.i
  %36 = ptrtoint ptr %base.0.i232.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %base.0.i232.i = load i32, ptr %base.0.i232.in.i, align 4
  %add27.i233.i = add i32 %base.0.i232.i, %internal_offset.addr.0.i231.i
  %call87.i = tail call i32 %33(ptr noundef %adev, i32 noundef %add27.i233.i, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end91.i

cond.false88.i:                                   ; preds = %land.lhs.true75.i.cond.false88.i_crit_edge, %land.lhs.true70.i.cond.false88.i_crit_edge, %cond.end65.i.cond.false88.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0275.i)
  %cmp6.i235.i = icmp ult i32 %i.0275.i, 2
  %37 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0275.i)
  %cmp12.i237.i = icmp eq i32 %i.0275.i, 1
  %spec.select.i238.i = select i1 %cmp12.i237.i, i32 1674, i32 138
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0275.i)
  %cmp21.i241.i = icmp eq i32 %i.0275.i, 3
  %spec.select39.i242.i = select i1 %cmp21.i241.i, i32 1162, i32 138
  %internal_offset.addr.0.i244.i = select i1 %cmp6.i235.i, i32 %spec.select.i238.i, i32 %spec.select39.i242.i
  %base.0.i245.in.idx.i = select i1 %cmp6.i235.i, i32 0, i32 2
  %base.0.i245.in.i = getelementptr i32, ptr %38, i32 %base.0.i245.in.idx.i
  %39 = ptrtoint ptr %base.0.i245.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %base.0.i245.i = load i32, ptr %base.0.i245.in.i, align 4
  %add27.i246.i = add i32 %base.0.i245.i, %internal_offset.addr.0.i244.i
  %call90.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i246.i, i32 noundef 0) #11
  br label %cond.end91.i

cond.end91.i:                                     ; preds = %cond.false88.i, %cond.true81.i
  %cond92.i = phi i32 [ %call87.i, %cond.true81.i ], [ %call90.i, %cond.false88.i ]
  %and93.i = and i32 %cond92.i, -2
  %40 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %virt.i, align 8
  %and97.i = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %cond.end91.i.cond.false116.i_crit_edge, label %land.lhs.true99.i

cond.end91.i.cond.false116.i_crit_edge:           ; preds = %cond.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false116.i

land.lhs.true99.i:                                ; preds = %cond.end91.i
  %42 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %funcs.i, align 4
  %tobool103.not.i = icmp eq ptr %43, null
  br i1 %tobool103.not.i, label %land.lhs.true99.i.cond.false116.i_crit_edge, label %land.lhs.true104.i

land.lhs.true99.i.cond.false116.i_crit_edge:      ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false116.i

land.lhs.true104.i:                               ; preds = %land.lhs.true99.i
  %sriov_wreg108.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %sriov_wreg108.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sriov_wreg108.i, align 4
  %tobool109.not.i = icmp eq ptr %45, null
  br i1 %tobool109.not.i, label %land.lhs.true104.i.cond.false116.i_crit_edge, label %cond.true110.i

land.lhs.true104.i.cond.false116.i_crit_edge:     ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false116.i

cond.true110.i:                                   ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0275.i)
  %cmp6.i248.i = icmp ult i32 %i.0275.i, 2
  %46 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0275.i)
  %cmp12.i250.i = icmp eq i32 %i.0275.i, 1
  %spec.select.i251.i = select i1 %cmp12.i250.i, i32 1674, i32 138
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0275.i)
  %cmp21.i254.i = icmp eq i32 %i.0275.i, 3
  %spec.select39.i255.i = select i1 %cmp21.i254.i, i32 1162, i32 138
  %internal_offset.addr.0.i257.i = select i1 %cmp6.i248.i, i32 %spec.select.i251.i, i32 %spec.select39.i255.i
  %base.0.i258.in.idx.i = select i1 %cmp6.i248.i, i32 0, i32 2
  %base.0.i258.in.i = getelementptr i32, ptr %47, i32 %base.0.i258.in.idx.i
  %48 = ptrtoint ptr %base.0.i258.in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %base.0.i258.i = load i32, ptr %base.0.i258.in.i, align 4
  %add27.i259.i = add i32 %base.0.i258.i, %internal_offset.addr.0.i257.i
  tail call void %45(ptr noundef %adev, i32 noundef %add27.i259.i, i32 noundef %and93.i, i32 noundef 0, i32 noundef 1) #11
  br label %for.inc.i

cond.false116.i:                                  ; preds = %land.lhs.true104.i.cond.false116.i_crit_edge, %land.lhs.true99.i.cond.false116.i_crit_edge, %cond.end91.i.cond.false116.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0275.i)
  %cmp6.i261.i = icmp ult i32 %i.0275.i, 2
  %49 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx9.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0275.i)
  %cmp12.i263.i = icmp eq i32 %i.0275.i, 1
  %spec.select.i264.i = select i1 %cmp12.i263.i, i32 1674, i32 138
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0275.i)
  %cmp21.i267.i = icmp eq i32 %i.0275.i, 3
  %spec.select39.i268.i = select i1 %cmp21.i267.i, i32 1162, i32 138
  %internal_offset.addr.0.i270.i = select i1 %cmp6.i261.i, i32 %spec.select.i264.i, i32 %spec.select39.i268.i
  %base.0.i271.in.idx.i = select i1 %cmp6.i261.i, i32 0, i32 2
  %base.0.i271.in.i = getelementptr i32, ptr %50, i32 %base.0.i271.in.idx.i
  %51 = ptrtoint ptr %base.0.i271.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %base.0.i271.i = load i32, ptr %base.0.i271.in.i, align 4
  %add27.i272.i = add i32 %base.0.i271.i, %internal_offset.addr.0.i270.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i272.i, i32 noundef %and93.i, i32 noundef 0) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false116.i, %cond.true110.i
  %inc.i = add nuw nsw i32 %i.0275.i, 1
  %52 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_instances.i, align 4
  %cmp28.i = icmp slt i32 %inc.i, %53
  br i1 %cmp28.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

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
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.cond.preheader:                               ; preds = %if.end
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %56 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp35 = icmp sgt i32 %57, 0
  br i1 %cmp35, label %for.body.lr.ph, label %for.cond.preheader.if.end8_crit_edge

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %not.enable = xor i1 %enable, true
  %cond = zext i1 %not.enable to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.036)
  %cmp6.i = icmp ult i32 %i.036, 2
  %58 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.036)
  %cmp12.i = icmp eq i32 %i.036, 1
  %spec.select.i = select i1 %cmp12.i, i32 1578, i32 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.036)
  %cmp21.i21 = icmp eq i32 %i.036, 3
  %spec.select39.i = select i1 %cmp21.i21, i32 1066, i32 42
  %internal_offset.addr.0.i = select i1 %cmp6.i, i32 %spec.select.i, i32 %spec.select39.i
  %base.0.i.in.idx = select i1 %cmp6.i, i32 0, i32 2
  %base.0.i.in = getelementptr i32, ptr %59, i32 %base.0.i.in.idx
  %60 = ptrtoint ptr %base.0.i.in to i32
  call void @__asan_load4_noabort(i32 %60)
  %base.0.i = load i32, ptr %base.0.i.in, align 4
  %add27.i = add i32 %base.0.i, %internal_offset.addr.0.i
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i, i32 noundef 0) #11
  %and4 = and i32 %call3, -2
  %or = or i32 %and4, %cond
  %61 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx9.i, align 8
  %base.0.i32.in = getelementptr i32, ptr %62, i32 %base.0.i.in.idx
  %63 = ptrtoint ptr %base.0.i32.in to i32
  call void @__asan_load4_noabort(i32 %63)
  %base.0.i32 = load i32, ptr %base.0.i32.in, align 4
  %add27.i33 = add i32 %base.0.i32, %internal_offset.addr.0.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i33, i32 noundef %or, i32 noundef 0) #11
  %inc = add nuw nsw i32 %i.036, 1
  %64 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %65
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end8:                                          ; preds = %for.body.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdma_v5_2_gfx_resume(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2106 = icmp sgt i32 %1, 0
  br i1 %cmp2106, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %funcs63 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 70, i32 2
  %funcs615 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %sdma_doorbell_range620 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 20
  %buffer_funcs_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.02107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ring2 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3
  %rptr_offs = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 6
  %2 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rptr_offs, align 8
  %mul = shl i32 %3, 2
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i = icmp ult i32 %i.02107, 2
  %6 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i = icmp eq i32 %i.02107, 1
  %spec.select.i = select i1 %cmp12.i, i32 1569, i32 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i = icmp eq i32 %i.02107, 3
  %spec.select39.i = select i1 %cmp21.i, i32 1057, i32 33
  %internal_offset.addr.0.i = select i1 %cmp6.i, i32 %spec.select.i, i32 %spec.select39.i
  %base.0.i.in.idx = select i1 %cmp6.i, i32 0, i32 2
  %base.0.i.in = getelementptr i32, ptr %7, i32 %base.0.i.in.idx
  %8 = ptrtoint ptr %base.0.i.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %base.0.i = load i32, ptr %base.0.i.in, align 4
  %add27.i = add i32 %base.0.i, %internal_offset.addr.0.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i, i32 noundef 0, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %cond.false, %for.body.if.end_crit_edge
  %ring_size = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 9
  %9 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_size, align 8
  %div1323 = lshr i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp.i = icmp ugt i32 %10, 7
  %sub.i1324 = add nsw i32 %div1323, -1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub.i1324, i1 false) #11, !range !125
  %12 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %virt, align 8
  %and58 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end.cond.false77_crit_edge, label %land.lhs.true60

if.end.cond.false77_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false77

land.lhs.true60:                                  ; preds = %if.end
  %14 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs63, align 4
  %tobool64.not = icmp eq ptr %15, null
  br i1 %tobool64.not, label %land.lhs.true60.cond.false77_crit_edge, label %land.lhs.true65

land.lhs.true60.cond.false77_crit_edge:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false77

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sriov_rreg, align 4
  %tobool69.not = icmp eq ptr %17, null
  br i1 %tobool69.not, label %land.lhs.true65.cond.false77_crit_edge, label %cond.true70

land.lhs.true65.cond.false77_crit_edge:           ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false77

cond.true70:                                      ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1325 = icmp ult i32 %i.02107, 2
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1327 = icmp eq i32 %i.02107, 1
  %spec.select.i1328 = select i1 %cmp12.i1327, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1331 = icmp eq i32 %i.02107, 3
  %spec.select39.i1332 = select i1 %cmp21.i1331, i32 1152, i32 128
  %internal_offset.addr.0.i1334 = select i1 %cmp6.i1325, i32 %spec.select.i1328, i32 %spec.select39.i1332
  %base.0.i1335.in.idx = select i1 %cmp6.i1325, i32 0, i32 2
  %base.0.i1335.in = getelementptr i32, ptr %19, i32 %base.0.i1335.in.idx
  %20 = ptrtoint ptr %base.0.i1335.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %base.0.i1335 = load i32, ptr %base.0.i1335.in, align 4
  %add27.i1336 = add i32 %base.0.i1335, %internal_offset.addr.0.i1334
  %call76 = tail call i32 %17(ptr noundef %adev, i32 noundef %add27.i1336, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end80

cond.false77:                                     ; preds = %land.lhs.true65.cond.false77_crit_edge, %land.lhs.true60.cond.false77_crit_edge, %if.end.cond.false77_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1338 = icmp ult i32 %i.02107, 2
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1340 = icmp eq i32 %i.02107, 1
  %spec.select.i1341 = select i1 %cmp12.i1340, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1344 = icmp eq i32 %i.02107, 3
  %spec.select39.i1345 = select i1 %cmp21.i1344, i32 1152, i32 128
  %internal_offset.addr.0.i1347 = select i1 %cmp6.i1338, i32 %spec.select.i1341, i32 %spec.select39.i1345
  %base.0.i1348.in.idx = select i1 %cmp6.i1338, i32 0, i32 2
  %base.0.i1348.in = getelementptr i32, ptr %22, i32 %base.0.i1348.in.idx
  %23 = ptrtoint ptr %base.0.i1348.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %base.0.i1348 = load i32, ptr %base.0.i1348.in, align 4
  %add27.i1349 = add i32 %base.0.i1348, %internal_offset.addr.0.i1347
  %call79 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i1349, i32 noundef 0) #11
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false77, %cond.true70
  %cond81 = phi i32 [ %call76, %cond.true70 ], [ %call79, %cond.false77 ]
  %and82 = and i32 %cond81, -8767
  %.neg = mul nuw nsw i32 %11, 62
  %.neg.op = and i32 %.neg, 62
  %and83 = select i1 %cmp.i, i32 %.neg.op, i32 0
  %or = or i32 %and82, %and83
  %or87 = or i32 %or, 8704
  %24 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %virt, align 8
  %and90 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %cond.end80.cond.false109_crit_edge, label %land.lhs.true92

cond.end80.cond.false109_crit_edge:               ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false109

land.lhs.true92:                                  ; preds = %cond.end80
  %26 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs63, align 4
  %tobool96.not = icmp eq ptr %27, null
  br i1 %tobool96.not, label %land.lhs.true92.cond.false109_crit_edge, label %land.lhs.true97

land.lhs.true92.cond.false109_crit_edge:          ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false109

land.lhs.true97:                                  ; preds = %land.lhs.true92
  %sriov_wreg101 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %sriov_wreg101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sriov_wreg101, align 4
  %tobool102.not = icmp eq ptr %29, null
  br i1 %tobool102.not, label %land.lhs.true97.cond.false109_crit_edge, label %cond.true103

land.lhs.true97.cond.false109_crit_edge:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false109

cond.true103:                                     ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1351 = icmp ult i32 %i.02107, 2
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1353 = icmp eq i32 %i.02107, 1
  %spec.select.i1354 = select i1 %cmp12.i1353, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1357 = icmp eq i32 %i.02107, 3
  %spec.select39.i1358 = select i1 %cmp21.i1357, i32 1152, i32 128
  %internal_offset.addr.0.i1360 = select i1 %cmp6.i1351, i32 %spec.select.i1354, i32 %spec.select39.i1358
  %base.0.i1361.in.idx = select i1 %cmp6.i1351, i32 0, i32 2
  %base.0.i1361.in = getelementptr i32, ptr %31, i32 %base.0.i1361.in.idx
  %32 = ptrtoint ptr %base.0.i1361.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %base.0.i1361 = load i32, ptr %base.0.i1361.in, align 4
  %add27.i1362 = add i32 %base.0.i1361, %internal_offset.addr.0.i1360
  tail call void %29(ptr noundef %adev, i32 noundef %add27.i1362, i32 noundef %or87, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end111

cond.false109:                                    ; preds = %land.lhs.true97.cond.false109_crit_edge, %land.lhs.true92.cond.false109_crit_edge, %cond.end80.cond.false109_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1364 = icmp ult i32 %i.02107, 2
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1366 = icmp eq i32 %i.02107, 1
  %spec.select.i1367 = select i1 %cmp12.i1366, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1370 = icmp eq i32 %i.02107, 3
  %spec.select39.i1371 = select i1 %cmp21.i1370, i32 1152, i32 128
  %internal_offset.addr.0.i1373 = select i1 %cmp6.i1364, i32 %spec.select.i1367, i32 %spec.select39.i1371
  %base.0.i1374.in.idx = select i1 %cmp6.i1364, i32 0, i32 2
  %base.0.i1374.in = getelementptr i32, ptr %34, i32 %base.0.i1374.in.idx
  %35 = ptrtoint ptr %base.0.i1374.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %base.0.i1374 = load i32, ptr %base.0.i1374.in, align 4
  %add27.i1375 = add i32 %base.0.i1374, %internal_offset.addr.0.i1373
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1375, i32 noundef %or87, i32 noundef 0) #11
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false109, %cond.true103
  %36 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt, align 8
  %and114 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %cond.end111.cond.false133_crit_edge, label %land.lhs.true116

cond.end111.cond.false133_crit_edge:              ; preds = %cond.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false133

land.lhs.true116:                                 ; preds = %cond.end111
  %38 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs63, align 4
  %tobool120.not = icmp eq ptr %39, null
  br i1 %tobool120.not, label %land.lhs.true116.cond.false133_crit_edge, label %land.lhs.true121

land.lhs.true116.cond.false133_crit_edge:         ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false133

land.lhs.true121:                                 ; preds = %land.lhs.true116
  %sriov_wreg125 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sriov_wreg125 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_wreg125, align 4
  %tobool126.not = icmp eq ptr %41, null
  br i1 %tobool126.not, label %land.lhs.true121.cond.false133_crit_edge, label %cond.true127

land.lhs.true121.cond.false133_crit_edge:         ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false133

cond.true127:                                     ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1377 = icmp ult i32 %i.02107, 2
  %42 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1379 = icmp eq i32 %i.02107, 1
  %spec.select.i1380 = select i1 %cmp12.i1379, i32 1667, i32 131
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1383 = icmp eq i32 %i.02107, 3
  %spec.select39.i1384 = select i1 %cmp21.i1383, i32 1155, i32 131
  %internal_offset.addr.0.i1386 = select i1 %cmp6.i1377, i32 %spec.select.i1380, i32 %spec.select39.i1384
  %base.0.i1387.in.idx = select i1 %cmp6.i1377, i32 0, i32 2
  %base.0.i1387.in = getelementptr i32, ptr %43, i32 %base.0.i1387.in.idx
  %44 = ptrtoint ptr %base.0.i1387.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %base.0.i1387 = load i32, ptr %base.0.i1387.in, align 4
  %add27.i1388 = add i32 %base.0.i1387, %internal_offset.addr.0.i1386
  tail call void %41(ptr noundef %adev, i32 noundef %add27.i1388, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end135

cond.false133:                                    ; preds = %land.lhs.true121.cond.false133_crit_edge, %land.lhs.true116.cond.false133_crit_edge, %cond.end111.cond.false133_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1390 = icmp ult i32 %i.02107, 2
  %45 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1392 = icmp eq i32 %i.02107, 1
  %spec.select.i1393 = select i1 %cmp12.i1392, i32 1667, i32 131
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1396 = icmp eq i32 %i.02107, 3
  %spec.select39.i1397 = select i1 %cmp21.i1396, i32 1155, i32 131
  %internal_offset.addr.0.i1399 = select i1 %cmp6.i1390, i32 %spec.select.i1393, i32 %spec.select39.i1397
  %base.0.i1400.in.idx = select i1 %cmp6.i1390, i32 0, i32 2
  %base.0.i1400.in = getelementptr i32, ptr %46, i32 %base.0.i1400.in.idx
  %47 = ptrtoint ptr %base.0.i1400.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %base.0.i1400 = load i32, ptr %base.0.i1400.in, align 4
  %add27.i1401 = add i32 %base.0.i1400, %internal_offset.addr.0.i1399
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1401, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false133, %cond.true127
  %48 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %virt, align 8
  %and138 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %cond.end135.cond.false157_crit_edge, label %land.lhs.true140

cond.end135.cond.false157_crit_edge:              ; preds = %cond.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false157

land.lhs.true140:                                 ; preds = %cond.end135
  %50 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %funcs63, align 4
  %tobool144.not = icmp eq ptr %51, null
  br i1 %tobool144.not, label %land.lhs.true140.cond.false157_crit_edge, label %land.lhs.true145

land.lhs.true140.cond.false157_crit_edge:         ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false157

land.lhs.true145:                                 ; preds = %land.lhs.true140
  %sriov_wreg149 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %sriov_wreg149 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sriov_wreg149, align 4
  %tobool150.not = icmp eq ptr %53, null
  br i1 %tobool150.not, label %land.lhs.true145.cond.false157_crit_edge, label %cond.true151

land.lhs.true145.cond.false157_crit_edge:         ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false157

cond.true151:                                     ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1403 = icmp ult i32 %i.02107, 2
  %54 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1405 = icmp eq i32 %i.02107, 1
  %spec.select.i1406 = select i1 %cmp12.i1405, i32 1668, i32 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1409 = icmp eq i32 %i.02107, 3
  %spec.select39.i1410 = select i1 %cmp21.i1409, i32 1156, i32 132
  %internal_offset.addr.0.i1412 = select i1 %cmp6.i1403, i32 %spec.select.i1406, i32 %spec.select39.i1410
  %base.0.i1413.in.idx = select i1 %cmp6.i1403, i32 0, i32 2
  %base.0.i1413.in = getelementptr i32, ptr %55, i32 %base.0.i1413.in.idx
  %56 = ptrtoint ptr %base.0.i1413.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %base.0.i1413 = load i32, ptr %base.0.i1413.in, align 4
  %add27.i1414 = add i32 %base.0.i1413, %internal_offset.addr.0.i1412
  tail call void %53(ptr noundef %adev, i32 noundef %add27.i1414, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end159

cond.false157:                                    ; preds = %land.lhs.true145.cond.false157_crit_edge, %land.lhs.true140.cond.false157_crit_edge, %cond.end135.cond.false157_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1416 = icmp ult i32 %i.02107, 2
  %57 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1418 = icmp eq i32 %i.02107, 1
  %spec.select.i1419 = select i1 %cmp12.i1418, i32 1668, i32 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1422 = icmp eq i32 %i.02107, 3
  %spec.select39.i1423 = select i1 %cmp21.i1422, i32 1156, i32 132
  %internal_offset.addr.0.i1425 = select i1 %cmp6.i1416, i32 %spec.select.i1419, i32 %spec.select39.i1423
  %base.0.i1426.in.idx = select i1 %cmp6.i1416, i32 0, i32 2
  %base.0.i1426.in = getelementptr i32, ptr %58, i32 %base.0.i1426.in.idx
  %59 = ptrtoint ptr %base.0.i1426.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %base.0.i1426 = load i32, ptr %base.0.i1426.in, align 4
  %add27.i1427 = add i32 %base.0.i1426, %internal_offset.addr.0.i1425
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1427, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false157, %cond.true151
  %60 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %virt, align 8
  %and162 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %cond.end159.cond.false181_crit_edge, label %land.lhs.true164

cond.end159.cond.false181_crit_edge:              ; preds = %cond.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false181

land.lhs.true164:                                 ; preds = %cond.end159
  %62 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs63, align 4
  %tobool168.not = icmp eq ptr %63, null
  br i1 %tobool168.not, label %land.lhs.true164.cond.false181_crit_edge, label %land.lhs.true169

land.lhs.true164.cond.false181_crit_edge:         ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false181

land.lhs.true169:                                 ; preds = %land.lhs.true164
  %sriov_wreg173 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %sriov_wreg173 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sriov_wreg173, align 4
  %tobool174.not = icmp eq ptr %65, null
  br i1 %tobool174.not, label %land.lhs.true169.cond.false181_crit_edge, label %cond.true175

land.lhs.true169.cond.false181_crit_edge:         ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false181

cond.true175:                                     ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1429 = icmp ult i32 %i.02107, 2
  %66 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1431 = icmp eq i32 %i.02107, 1
  %spec.select.i1432 = select i1 %cmp12.i1431, i32 1669, i32 133
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1435 = icmp eq i32 %i.02107, 3
  %spec.select39.i1436 = select i1 %cmp21.i1435, i32 1157, i32 133
  %internal_offset.addr.0.i1438 = select i1 %cmp6.i1429, i32 %spec.select.i1432, i32 %spec.select39.i1436
  %base.0.i1439.in.idx = select i1 %cmp6.i1429, i32 0, i32 2
  %base.0.i1439.in = getelementptr i32, ptr %67, i32 %base.0.i1439.in.idx
  %68 = ptrtoint ptr %base.0.i1439.in to i32
  call void @__asan_load4_noabort(i32 %68)
  %base.0.i1439 = load i32, ptr %base.0.i1439.in, align 4
  %add27.i1440 = add i32 %base.0.i1439, %internal_offset.addr.0.i1438
  tail call void %65(ptr noundef %adev, i32 noundef %add27.i1440, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end183

cond.false181:                                    ; preds = %land.lhs.true169.cond.false181_crit_edge, %land.lhs.true164.cond.false181_crit_edge, %cond.end159.cond.false181_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1442 = icmp ult i32 %i.02107, 2
  %69 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1444 = icmp eq i32 %i.02107, 1
  %spec.select.i1445 = select i1 %cmp12.i1444, i32 1669, i32 133
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1448 = icmp eq i32 %i.02107, 3
  %spec.select39.i1449 = select i1 %cmp21.i1448, i32 1157, i32 133
  %internal_offset.addr.0.i1451 = select i1 %cmp6.i1442, i32 %spec.select.i1445, i32 %spec.select39.i1449
  %base.0.i1452.in.idx = select i1 %cmp6.i1442, i32 0, i32 2
  %base.0.i1452.in = getelementptr i32, ptr %70, i32 %base.0.i1452.in.idx
  %71 = ptrtoint ptr %base.0.i1452.in to i32
  call void @__asan_load4_noabort(i32 %71)
  %base.0.i1452 = load i32, ptr %base.0.i1452.in, align 4
  %add27.i1453 = add i32 %base.0.i1452, %internal_offset.addr.0.i1451
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1453, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false181, %cond.true175
  %72 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %virt, align 8
  %and186 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %cond.end183.cond.false205_crit_edge, label %land.lhs.true188

cond.end183.cond.false205_crit_edge:              ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false205

land.lhs.true188:                                 ; preds = %cond.end183
  %74 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %funcs63, align 4
  %tobool192.not = icmp eq ptr %75, null
  br i1 %tobool192.not, label %land.lhs.true188.cond.false205_crit_edge, label %land.lhs.true193

land.lhs.true188.cond.false205_crit_edge:         ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false205

land.lhs.true193:                                 ; preds = %land.lhs.true188
  %sriov_wreg197 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %75, i32 0, i32 12
  %76 = ptrtoint ptr %sriov_wreg197 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sriov_wreg197, align 4
  %tobool198.not = icmp eq ptr %77, null
  br i1 %tobool198.not, label %land.lhs.true193.cond.false205_crit_edge, label %cond.true199

land.lhs.true193.cond.false205_crit_edge:         ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false205

cond.true199:                                     ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1455 = icmp ult i32 %i.02107, 2
  %78 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1457 = icmp eq i32 %i.02107, 1
  %spec.select.i1458 = select i1 %cmp12.i1457, i32 1670, i32 134
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1461 = icmp eq i32 %i.02107, 3
  %spec.select39.i1462 = select i1 %cmp21.i1461, i32 1158, i32 134
  %internal_offset.addr.0.i1464 = select i1 %cmp6.i1455, i32 %spec.select.i1458, i32 %spec.select39.i1462
  %base.0.i1465.in.idx = select i1 %cmp6.i1455, i32 0, i32 2
  %base.0.i1465.in = getelementptr i32, ptr %79, i32 %base.0.i1465.in.idx
  %80 = ptrtoint ptr %base.0.i1465.in to i32
  call void @__asan_load4_noabort(i32 %80)
  %base.0.i1465 = load i32, ptr %base.0.i1465.in, align 4
  %add27.i1466 = add i32 %base.0.i1465, %internal_offset.addr.0.i1464
  tail call void %77(ptr noundef %adev, i32 noundef %add27.i1466, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end207

cond.false205:                                    ; preds = %land.lhs.true193.cond.false205_crit_edge, %land.lhs.true188.cond.false205_crit_edge, %cond.end183.cond.false205_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1468 = icmp ult i32 %i.02107, 2
  %81 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1470 = icmp eq i32 %i.02107, 1
  %spec.select.i1471 = select i1 %cmp12.i1470, i32 1670, i32 134
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1474 = icmp eq i32 %i.02107, 3
  %spec.select39.i1475 = select i1 %cmp21.i1474, i32 1158, i32 134
  %internal_offset.addr.0.i1477 = select i1 %cmp6.i1468, i32 %spec.select.i1471, i32 %spec.select39.i1475
  %base.0.i1478.in.idx = select i1 %cmp6.i1468, i32 0, i32 2
  %base.0.i1478.in = getelementptr i32, ptr %82, i32 %base.0.i1478.in.idx
  %83 = ptrtoint ptr %base.0.i1478.in to i32
  call void @__asan_load4_noabort(i32 %83)
  %base.0.i1478 = load i32, ptr %base.0.i1478.in, align 4
  %add27.i1479 = add i32 %base.0.i1478, %internal_offset.addr.0.i1477
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1479, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end207

cond.end207:                                      ; preds = %cond.false205, %cond.true199
  %84 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gpu_addr, align 8
  %wptr_offs = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 26
  %86 = ptrtoint ptr %wptr_offs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wptr_offs, align 8
  %mul208 = shl i32 %87, 2
  %conv209 = zext i32 %mul208 to i64
  %add210 = add i64 %85, %conv209
  %88 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %virt, align 8
  %and213 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %cond.end207.cond.false234_crit_edge, label %land.lhs.true215

cond.end207.cond.false234_crit_edge:              ; preds = %cond.end207
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false234

land.lhs.true215:                                 ; preds = %cond.end207
  %90 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %funcs63, align 4
  %tobool219.not = icmp eq ptr %91, null
  br i1 %tobool219.not, label %land.lhs.true215.cond.false234_crit_edge, label %land.lhs.true220

land.lhs.true215.cond.false234_crit_edge:         ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false234

land.lhs.true220:                                 ; preds = %land.lhs.true215
  %sriov_wreg224 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %sriov_wreg224 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sriov_wreg224, align 4
  %tobool225.not = icmp eq ptr %93, null
  br i1 %tobool225.not, label %land.lhs.true220.cond.false234_crit_edge, label %cond.true226

land.lhs.true220.cond.false234_crit_edge:         ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false234

cond.true226:                                     ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1481 = icmp ult i32 %i.02107, 2
  %94 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1483 = icmp eq i32 %i.02107, 1
  %spec.select.i1484 = select i1 %cmp12.i1483, i32 1715, i32 179
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1487 = icmp eq i32 %i.02107, 3
  %spec.select39.i1488 = select i1 %cmp21.i1487, i32 1203, i32 179
  %internal_offset.addr.0.i1490 = select i1 %cmp6.i1481, i32 %spec.select.i1484, i32 %spec.select39.i1488
  %base.0.i1491.in.idx = select i1 %cmp6.i1481, i32 0, i32 2
  %base.0.i1491.in = getelementptr i32, ptr %95, i32 %base.0.i1491.in.idx
  %96 = ptrtoint ptr %base.0.i1491.in to i32
  call void @__asan_load4_noabort(i32 %96)
  %base.0.i1491 = load i32, ptr %base.0.i1491.in, align 4
  %add27.i1492 = add i32 %base.0.i1491, %internal_offset.addr.0.i1490
  %conv233 = trunc i64 %add210 to i32
  tail call void %93(ptr noundef %adev, i32 noundef %add27.i1492, i32 noundef %conv233, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end238

cond.false234:                                    ; preds = %land.lhs.true220.cond.false234_crit_edge, %land.lhs.true215.cond.false234_crit_edge, %cond.end207.cond.false234_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1494 = icmp ult i32 %i.02107, 2
  %97 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1496 = icmp eq i32 %i.02107, 1
  %spec.select.i1497 = select i1 %cmp12.i1496, i32 1715, i32 179
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1500 = icmp eq i32 %i.02107, 3
  %spec.select39.i1501 = select i1 %cmp21.i1500, i32 1203, i32 179
  %internal_offset.addr.0.i1503 = select i1 %cmp6.i1494, i32 %spec.select.i1497, i32 %spec.select39.i1501
  %base.0.i1504.in.idx = select i1 %cmp6.i1494, i32 0, i32 2
  %base.0.i1504.in = getelementptr i32, ptr %98, i32 %base.0.i1504.in.idx
  %99 = ptrtoint ptr %base.0.i1504.in to i32
  call void @__asan_load4_noabort(i32 %99)
  %base.0.i1504 = load i32, ptr %base.0.i1504.in, align 4
  %add27.i1505 = add i32 %base.0.i1504, %internal_offset.addr.0.i1503
  %conv237 = trunc i64 %add210 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1505, i32 noundef %conv237, i32 noundef 0) #11
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false234, %cond.true226
  %100 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %virt, align 8
  %and241 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %cond.end238.cond.false262_crit_edge, label %land.lhs.true243

cond.end238.cond.false262_crit_edge:              ; preds = %cond.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false262

land.lhs.true243:                                 ; preds = %cond.end238
  %102 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %funcs63, align 4
  %tobool247.not = icmp eq ptr %103, null
  br i1 %tobool247.not, label %land.lhs.true243.cond.false262_crit_edge, label %land.lhs.true248

land.lhs.true243.cond.false262_crit_edge:         ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false262

land.lhs.true248:                                 ; preds = %land.lhs.true243
  %sriov_wreg252 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %103, i32 0, i32 12
  %104 = ptrtoint ptr %sriov_wreg252 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sriov_wreg252, align 4
  %tobool253.not = icmp eq ptr %105, null
  br i1 %tobool253.not, label %land.lhs.true248.cond.false262_crit_edge, label %cond.true254

land.lhs.true248.cond.false262_crit_edge:         ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false262

cond.true254:                                     ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1507 = icmp ult i32 %i.02107, 2
  %106 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1509 = icmp eq i32 %i.02107, 1
  %spec.select.i1510 = select i1 %cmp12.i1509, i32 1714, i32 178
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1513 = icmp eq i32 %i.02107, 3
  %spec.select39.i1514 = select i1 %cmp21.i1513, i32 1202, i32 178
  %internal_offset.addr.0.i1516 = select i1 %cmp6.i1507, i32 %spec.select.i1510, i32 %spec.select39.i1514
  %base.0.i1517.in.idx = select i1 %cmp6.i1507, i32 0, i32 2
  %base.0.i1517.in = getelementptr i32, ptr %107, i32 %base.0.i1517.in.idx
  %108 = ptrtoint ptr %base.0.i1517.in to i32
  call void @__asan_load4_noabort(i32 %108)
  %base.0.i1517 = load i32, ptr %base.0.i1517.in, align 4
  %add27.i1518 = add i32 %base.0.i1517, %internal_offset.addr.0.i1516
  %shr = lshr i64 %add210, 32
  %conv261 = trunc i64 %shr to i32
  tail call void %105(ptr noundef %adev, i32 noundef %add27.i1518, i32 noundef %conv261, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end267

cond.false262:                                    ; preds = %land.lhs.true248.cond.false262_crit_edge, %land.lhs.true243.cond.false262_crit_edge, %cond.end238.cond.false262_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1520 = icmp ult i32 %i.02107, 2
  %109 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1522 = icmp eq i32 %i.02107, 1
  %spec.select.i1523 = select i1 %cmp12.i1522, i32 1714, i32 178
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1526 = icmp eq i32 %i.02107, 3
  %spec.select39.i1527 = select i1 %cmp21.i1526, i32 1202, i32 178
  %internal_offset.addr.0.i1529 = select i1 %cmp6.i1520, i32 %spec.select.i1523, i32 %spec.select39.i1527
  %base.0.i1530.in.idx = select i1 %cmp6.i1520, i32 0, i32 2
  %base.0.i1530.in = getelementptr i32, ptr %110, i32 %base.0.i1530.in.idx
  %111 = ptrtoint ptr %base.0.i1530.in to i32
  call void @__asan_load4_noabort(i32 %111)
  %base.0.i1530 = load i32, ptr %base.0.i1530.in, align 4
  %add27.i1531 = add i32 %base.0.i1530, %internal_offset.addr.0.i1529
  %shr264 = lshr i64 %add210, 32
  %conv266 = trunc i64 %shr264 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1531, i32 noundef %conv266, i32 noundef 0) #11
  br label %cond.end267

cond.end267:                                      ; preds = %cond.false262, %cond.true254
  %112 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %virt, align 8
  %and270 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %cond.end267.cond.false290_crit_edge, label %land.lhs.true272

cond.end267.cond.false290_crit_edge:              ; preds = %cond.end267
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false290

land.lhs.true272:                                 ; preds = %cond.end267
  %114 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %funcs63, align 4
  %tobool276.not = icmp eq ptr %115, null
  br i1 %tobool276.not, label %land.lhs.true272.cond.false290_crit_edge, label %land.lhs.true277

land.lhs.true272.cond.false290_crit_edge:         ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false290

land.lhs.true277:                                 ; preds = %land.lhs.true272
  %sriov_rreg281 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %115, i32 0, i32 13
  %116 = ptrtoint ptr %sriov_rreg281 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sriov_rreg281, align 4
  %tobool282.not = icmp eq ptr %117, null
  br i1 %tobool282.not, label %land.lhs.true277.cond.false290_crit_edge, label %cond.true283

land.lhs.true277.cond.false290_crit_edge:         ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false290

cond.true283:                                     ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1533 = icmp ult i32 %i.02107, 2
  %118 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1535 = icmp eq i32 %i.02107, 1
  %spec.select.i1536 = select i1 %cmp12.i1535, i32 1671, i32 135
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1539 = icmp eq i32 %i.02107, 3
  %spec.select39.i1540 = select i1 %cmp21.i1539, i32 1159, i32 135
  %internal_offset.addr.0.i1542 = select i1 %cmp6.i1533, i32 %spec.select.i1536, i32 %spec.select39.i1540
  %base.0.i1543.in.idx = select i1 %cmp6.i1533, i32 0, i32 2
  %base.0.i1543.in = getelementptr i32, ptr %119, i32 %base.0.i1543.in.idx
  %120 = ptrtoint ptr %base.0.i1543.in to i32
  call void @__asan_load4_noabort(i32 %120)
  %base.0.i1543 = load i32, ptr %base.0.i1543.in, align 4
  %add27.i1544 = add i32 %base.0.i1543, %internal_offset.addr.0.i1542
  %call289 = tail call i32 %117(ptr noundef %adev, i32 noundef %add27.i1544, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end293

cond.false290:                                    ; preds = %land.lhs.true277.cond.false290_crit_edge, %land.lhs.true272.cond.false290_crit_edge, %cond.end267.cond.false290_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1546 = icmp ult i32 %i.02107, 2
  %121 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1548 = icmp eq i32 %i.02107, 1
  %spec.select.i1549 = select i1 %cmp12.i1548, i32 1671, i32 135
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1552 = icmp eq i32 %i.02107, 3
  %spec.select39.i1553 = select i1 %cmp21.i1552, i32 1159, i32 135
  %internal_offset.addr.0.i1555 = select i1 %cmp6.i1546, i32 %spec.select.i1549, i32 %spec.select39.i1553
  %base.0.i1556.in.idx = select i1 %cmp6.i1546, i32 0, i32 2
  %base.0.i1556.in = getelementptr i32, ptr %122, i32 %base.0.i1556.in.idx
  %123 = ptrtoint ptr %base.0.i1556.in to i32
  call void @__asan_load4_noabort(i32 %123)
  %base.0.i1556 = load i32, ptr %base.0.i1556.in, align 4
  %add27.i1557 = add i32 %base.0.i1556, %internal_offset.addr.0.i1555
  %call292 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i1557, i32 noundef 0) #11
  br label %cond.end293

cond.end293:                                      ; preds = %cond.false290, %cond.true283
  %cond294 = phi i32 [ %call289, %cond.true283 ], [ %call292, %cond.false290 ]
  %or296 = or i32 %cond294, 4
  %124 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %virt, align 8
  %and299 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %cond.end293.cond.false318_crit_edge, label %land.lhs.true301

cond.end293.cond.false318_crit_edge:              ; preds = %cond.end293
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false318

land.lhs.true301:                                 ; preds = %cond.end293
  %126 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %funcs63, align 4
  %tobool305.not = icmp eq ptr %127, null
  br i1 %tobool305.not, label %land.lhs.true301.cond.false318_crit_edge, label %land.lhs.true306

land.lhs.true301.cond.false318_crit_edge:         ; preds = %land.lhs.true301
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false318

land.lhs.true306:                                 ; preds = %land.lhs.true301
  %sriov_wreg310 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %sriov_wreg310 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sriov_wreg310, align 4
  %tobool311.not = icmp eq ptr %129, null
  br i1 %tobool311.not, label %land.lhs.true306.cond.false318_crit_edge, label %cond.true312

land.lhs.true306.cond.false318_crit_edge:         ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false318

cond.true312:                                     ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1559 = icmp ult i32 %i.02107, 2
  %130 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1561 = icmp eq i32 %i.02107, 1
  %spec.select.i1562 = select i1 %cmp12.i1561, i32 1671, i32 135
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1565 = icmp eq i32 %i.02107, 3
  %spec.select39.i1566 = select i1 %cmp21.i1565, i32 1159, i32 135
  %internal_offset.addr.0.i1568 = select i1 %cmp6.i1559, i32 %spec.select.i1562, i32 %spec.select39.i1566
  %base.0.i1569.in.idx = select i1 %cmp6.i1559, i32 0, i32 2
  %base.0.i1569.in = getelementptr i32, ptr %131, i32 %base.0.i1569.in.idx
  %132 = ptrtoint ptr %base.0.i1569.in to i32
  call void @__asan_load4_noabort(i32 %132)
  %base.0.i1569 = load i32, ptr %base.0.i1569.in, align 4
  %add27.i1570 = add i32 %base.0.i1569, %internal_offset.addr.0.i1568
  tail call void %129(ptr noundef %adev, i32 noundef %add27.i1570, i32 noundef %or296, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end320

cond.false318:                                    ; preds = %land.lhs.true306.cond.false318_crit_edge, %land.lhs.true301.cond.false318_crit_edge, %cond.end293.cond.false318_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1572 = icmp ult i32 %i.02107, 2
  %133 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1574 = icmp eq i32 %i.02107, 1
  %spec.select.i1575 = select i1 %cmp12.i1574, i32 1671, i32 135
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1578 = icmp eq i32 %i.02107, 3
  %spec.select39.i1579 = select i1 %cmp21.i1578, i32 1159, i32 135
  %internal_offset.addr.0.i1581 = select i1 %cmp6.i1572, i32 %spec.select.i1575, i32 %spec.select39.i1579
  %base.0.i1582.in.idx = select i1 %cmp6.i1572, i32 0, i32 2
  %base.0.i1582.in = getelementptr i32, ptr %134, i32 %base.0.i1582.in.idx
  %135 = ptrtoint ptr %base.0.i1582.in to i32
  call void @__asan_load4_noabort(i32 %135)
  %base.0.i1582 = load i32, ptr %base.0.i1582.in, align 4
  %add27.i1583 = add i32 %base.0.i1582, %internal_offset.addr.0.i1581
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1583, i32 noundef %or296, i32 noundef 0) #11
  br label %cond.end320

cond.end320:                                      ; preds = %cond.false318, %cond.true312
  %136 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %virt, align 8
  %and323 = and i32 %137, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323)
  %tobool324.not = icmp eq i32 %and323, 0
  br i1 %tobool324.not, label %cond.end320.cond.false350_crit_edge, label %land.lhs.true325

cond.end320.cond.false350_crit_edge:              ; preds = %cond.end320
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false350

land.lhs.true325:                                 ; preds = %cond.end320
  %138 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %funcs63, align 4
  %tobool329.not = icmp eq ptr %139, null
  br i1 %tobool329.not, label %land.lhs.true325.cond.false350_crit_edge, label %land.lhs.true330

land.lhs.true325.cond.false350_crit_edge:         ; preds = %land.lhs.true325
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false350

land.lhs.true330:                                 ; preds = %land.lhs.true325
  %sriov_wreg334 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %139, i32 0, i32 12
  %140 = ptrtoint ptr %sriov_wreg334 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sriov_wreg334, align 4
  %tobool335.not = icmp eq ptr %141, null
  br i1 %tobool335.not, label %land.lhs.true330.cond.false350_crit_edge, label %cond.true336

land.lhs.true330.cond.false350_crit_edge:         ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false350

cond.true336:                                     ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1585 = icmp ult i32 %i.02107, 2
  %142 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1587 = icmp eq i32 %i.02107, 1
  %spec.select.i1588 = select i1 %cmp12.i1587, i32 1672, i32 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1591 = icmp eq i32 %i.02107, 3
  %spec.select39.i1592 = select i1 %cmp21.i1591, i32 1160, i32 136
  %internal_offset.addr.0.i1594 = select i1 %cmp6.i1585, i32 %spec.select.i1588, i32 %spec.select39.i1592
  %base.0.i1595.in.idx = select i1 %cmp6.i1585, i32 0, i32 2
  %base.0.i1595.in = getelementptr i32, ptr %143, i32 %base.0.i1595.in.idx
  %144 = ptrtoint ptr %base.0.i1595.in to i32
  call void @__asan_load4_noabort(i32 %144)
  %base.0.i1595 = load i32, ptr %base.0.i1595.in, align 4
  %add27.i1596 = add i32 %base.0.i1595, %internal_offset.addr.0.i1594
  %145 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %gpu_addr, align 8
  %conv344 = zext i32 %mul to i64
  %add345 = add i64 %146, %conv344
  %shr346 = lshr i64 %add345, 32
  %conv348 = trunc i64 %shr346 to i32
  tail call void %141(ptr noundef %adev, i32 noundef %add27.i1596, i32 noundef %conv348, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end360

cond.false350:                                    ; preds = %land.lhs.true330.cond.false350_crit_edge, %land.lhs.true325.cond.false350_crit_edge, %cond.end320.cond.false350_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1598 = icmp ult i32 %i.02107, 2
  %147 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1600 = icmp eq i32 %i.02107, 1
  %spec.select.i1601 = select i1 %cmp12.i1600, i32 1672, i32 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1604 = icmp eq i32 %i.02107, 3
  %spec.select39.i1605 = select i1 %cmp21.i1604, i32 1160, i32 136
  %internal_offset.addr.0.i1607 = select i1 %cmp6.i1598, i32 %spec.select.i1601, i32 %spec.select39.i1605
  %base.0.i1608.in.idx = select i1 %cmp6.i1598, i32 0, i32 2
  %base.0.i1608.in = getelementptr i32, ptr %148, i32 %base.0.i1608.in.idx
  %149 = ptrtoint ptr %base.0.i1608.in to i32
  call void @__asan_load4_noabort(i32 %149)
  %base.0.i1608 = load i32, ptr %base.0.i1608.in, align 4
  %add27.i1609 = add i32 %base.0.i1608, %internal_offset.addr.0.i1607
  %150 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %gpu_addr, align 8
  %conv354 = zext i32 %mul to i64
  %add355 = add i64 %151, %conv354
  %shr356 = lshr i64 %add355, 32
  %conv358 = trunc i64 %shr356 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1609, i32 noundef %conv358, i32 noundef 0) #11
  br label %cond.end360

cond.end360:                                      ; preds = %cond.false350, %cond.true336
  %152 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %virt, align 8
  %and363 = and i32 %153, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and363)
  %tobool364.not = icmp eq i32 %and363, 0
  br i1 %tobool364.not, label %cond.end360.cond.false389_crit_edge, label %land.lhs.true365

cond.end360.cond.false389_crit_edge:              ; preds = %cond.end360
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false389

land.lhs.true365:                                 ; preds = %cond.end360
  %154 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %funcs63, align 4
  %tobool369.not = icmp eq ptr %155, null
  br i1 %tobool369.not, label %land.lhs.true365.cond.false389_crit_edge, label %land.lhs.true370

land.lhs.true365.cond.false389_crit_edge:         ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false389

land.lhs.true370:                                 ; preds = %land.lhs.true365
  %sriov_wreg374 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %155, i32 0, i32 12
  %156 = ptrtoint ptr %sriov_wreg374 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sriov_wreg374, align 4
  %tobool375.not = icmp eq ptr %157, null
  br i1 %tobool375.not, label %land.lhs.true370.cond.false389_crit_edge, label %cond.true376

land.lhs.true370.cond.false389_crit_edge:         ; preds = %land.lhs.true370
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false389

cond.true376:                                     ; preds = %land.lhs.true370
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1611 = icmp ult i32 %i.02107, 2
  %158 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1613 = icmp eq i32 %i.02107, 1
  %spec.select.i1614 = select i1 %cmp12.i1613, i32 1673, i32 137
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1617 = icmp eq i32 %i.02107, 3
  %spec.select39.i1618 = select i1 %cmp21.i1617, i32 1161, i32 137
  %internal_offset.addr.0.i1620 = select i1 %cmp6.i1611, i32 %spec.select.i1614, i32 %spec.select39.i1618
  %base.0.i1621.in.idx = select i1 %cmp6.i1611, i32 0, i32 2
  %base.0.i1621.in = getelementptr i32, ptr %159, i32 %base.0.i1621.in.idx
  %160 = ptrtoint ptr %base.0.i1621.in to i32
  call void @__asan_load4_noabort(i32 %160)
  %base.0.i1621 = load i32, ptr %base.0.i1621.in, align 4
  %add27.i1622 = add i32 %base.0.i1621, %internal_offset.addr.0.i1620
  %161 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %gpu_addr, align 8
  %163 = trunc i64 %162 to i32
  %conv387 = add i32 %mul, %163
  %and388 = and i32 %conv387, -4
  tail call void %157(ptr noundef %adev, i32 noundef %add27.i1622, i32 noundef %and388, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end398

cond.false389:                                    ; preds = %land.lhs.true370.cond.false389_crit_edge, %land.lhs.true365.cond.false389_crit_edge, %cond.end360.cond.false389_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1624 = icmp ult i32 %i.02107, 2
  %164 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1626 = icmp eq i32 %i.02107, 1
  %spec.select.i1627 = select i1 %cmp12.i1626, i32 1673, i32 137
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1630 = icmp eq i32 %i.02107, 3
  %spec.select39.i1631 = select i1 %cmp21.i1630, i32 1161, i32 137
  %internal_offset.addr.0.i1633 = select i1 %cmp6.i1624, i32 %spec.select.i1627, i32 %spec.select39.i1631
  %base.0.i1634.in.idx = select i1 %cmp6.i1624, i32 0, i32 2
  %base.0.i1634.in = getelementptr i32, ptr %165, i32 %base.0.i1634.in.idx
  %166 = ptrtoint ptr %base.0.i1634.in to i32
  call void @__asan_load4_noabort(i32 %166)
  %base.0.i1634 = load i32, ptr %base.0.i1634.in, align 4
  %add27.i1635 = add i32 %base.0.i1634, %internal_offset.addr.0.i1633
  %167 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %gpu_addr, align 8
  %169 = trunc i64 %168 to i32
  %conv396 = add i32 %mul, %169
  %and397 = and i32 %conv396, -4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1635, i32 noundef %and397, i32 noundef 0) #11
  br label %cond.end398

cond.end398:                                      ; preds = %cond.false389, %cond.true376
  %170 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %virt, align 8
  %and403 = and i32 %171, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and403)
  %tobool404.not = icmp eq i32 %and403, 0
  br i1 %tobool404.not, label %cond.end398.cond.false425_crit_edge, label %land.lhs.true405

cond.end398.cond.false425_crit_edge:              ; preds = %cond.end398
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false425

land.lhs.true405:                                 ; preds = %cond.end398
  %172 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %funcs63, align 4
  %tobool409.not = icmp eq ptr %173, null
  br i1 %tobool409.not, label %land.lhs.true405.cond.false425_crit_edge, label %land.lhs.true410

land.lhs.true405.cond.false425_crit_edge:         ; preds = %land.lhs.true405
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false425

land.lhs.true410:                                 ; preds = %land.lhs.true405
  %sriov_wreg414 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %sriov_wreg414 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sriov_wreg414, align 4
  %tobool415.not = icmp eq ptr %175, null
  br i1 %tobool415.not, label %land.lhs.true410.cond.false425_crit_edge, label %cond.true416

land.lhs.true410.cond.false425_crit_edge:         ; preds = %land.lhs.true410
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false425

cond.true416:                                     ; preds = %land.lhs.true410
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1637 = icmp ult i32 %i.02107, 2
  %176 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1639 = icmp eq i32 %i.02107, 1
  %spec.select.i1640 = select i1 %cmp12.i1639, i32 1665, i32 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1643 = icmp eq i32 %i.02107, 3
  %spec.select39.i1644 = select i1 %cmp21.i1643, i32 1153, i32 129
  %internal_offset.addr.0.i1646 = select i1 %cmp6.i1637, i32 %spec.select.i1640, i32 %spec.select39.i1644
  %base.0.i1647.in.idx = select i1 %cmp6.i1637, i32 0, i32 2
  %base.0.i1647.in = getelementptr i32, ptr %177, i32 %base.0.i1647.in.idx
  %178 = ptrtoint ptr %base.0.i1647.in to i32
  call void @__asan_load4_noabort(i32 %178)
  %base.0.i1647 = load i32, ptr %base.0.i1647.in, align 4
  %add27.i1648 = add i32 %base.0.i1647, %internal_offset.addr.0.i1646
  %gpu_addr422 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 12
  %179 = ptrtoint ptr %gpu_addr422 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %gpu_addr422, align 8
  %shr423 = lshr i64 %180, 8
  %conv424 = trunc i64 %shr423 to i32
  tail call void %175(ptr noundef %adev, i32 noundef %add27.i1648, i32 noundef %conv424, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end430

cond.false425:                                    ; preds = %land.lhs.true410.cond.false425_crit_edge, %land.lhs.true405.cond.false425_crit_edge, %cond.end398.cond.false425_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1650 = icmp ult i32 %i.02107, 2
  %181 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1652 = icmp eq i32 %i.02107, 1
  %spec.select.i1653 = select i1 %cmp12.i1652, i32 1665, i32 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1656 = icmp eq i32 %i.02107, 3
  %spec.select39.i1657 = select i1 %cmp21.i1656, i32 1153, i32 129
  %internal_offset.addr.0.i1659 = select i1 %cmp6.i1650, i32 %spec.select.i1653, i32 %spec.select39.i1657
  %base.0.i1660.in.idx = select i1 %cmp6.i1650, i32 0, i32 2
  %base.0.i1660.in = getelementptr i32, ptr %182, i32 %base.0.i1660.in.idx
  %183 = ptrtoint ptr %base.0.i1660.in to i32
  call void @__asan_load4_noabort(i32 %183)
  %base.0.i1660 = load i32, ptr %base.0.i1660.in, align 4
  %add27.i1661 = add i32 %base.0.i1660, %internal_offset.addr.0.i1659
  %gpu_addr427 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 12
  %184 = ptrtoint ptr %gpu_addr427 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %gpu_addr427, align 8
  %shr428 = lshr i64 %185, 8
  %conv429 = trunc i64 %shr428 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1661, i32 noundef %conv429, i32 noundef 0) #11
  br label %cond.end430

cond.end430:                                      ; preds = %cond.false425, %cond.true416
  %186 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %virt, align 8
  %and433 = and i32 %187, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and433)
  %tobool434.not = icmp eq i32 %and433, 0
  br i1 %tobool434.not, label %cond.end430.cond.false455_crit_edge, label %land.lhs.true435

cond.end430.cond.false455_crit_edge:              ; preds = %cond.end430
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false455

land.lhs.true435:                                 ; preds = %cond.end430
  %188 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %funcs63, align 4
  %tobool439.not = icmp eq ptr %189, null
  br i1 %tobool439.not, label %land.lhs.true435.cond.false455_crit_edge, label %land.lhs.true440

land.lhs.true435.cond.false455_crit_edge:         ; preds = %land.lhs.true435
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false455

land.lhs.true440:                                 ; preds = %land.lhs.true435
  %sriov_wreg444 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %189, i32 0, i32 12
  %190 = ptrtoint ptr %sriov_wreg444 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %sriov_wreg444, align 4
  %tobool445.not = icmp eq ptr %191, null
  br i1 %tobool445.not, label %land.lhs.true440.cond.false455_crit_edge, label %cond.true446

land.lhs.true440.cond.false455_crit_edge:         ; preds = %land.lhs.true440
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false455

cond.true446:                                     ; preds = %land.lhs.true440
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1663 = icmp ult i32 %i.02107, 2
  %192 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1665 = icmp eq i32 %i.02107, 1
  %spec.select.i1666 = select i1 %cmp12.i1665, i32 1666, i32 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1669 = icmp eq i32 %i.02107, 3
  %spec.select39.i1670 = select i1 %cmp21.i1669, i32 1154, i32 130
  %internal_offset.addr.0.i1672 = select i1 %cmp6.i1663, i32 %spec.select.i1666, i32 %spec.select39.i1670
  %base.0.i1673.in.idx = select i1 %cmp6.i1663, i32 0, i32 2
  %base.0.i1673.in = getelementptr i32, ptr %193, i32 %base.0.i1673.in.idx
  %194 = ptrtoint ptr %base.0.i1673.in to i32
  call void @__asan_load4_noabort(i32 %194)
  %base.0.i1673 = load i32, ptr %base.0.i1673.in, align 4
  %add27.i1674 = add i32 %base.0.i1673, %internal_offset.addr.0.i1672
  %gpu_addr452 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 12
  %195 = ptrtoint ptr %gpu_addr452 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %gpu_addr452, align 8
  %shr453 = lshr i64 %196, 40
  %conv454 = trunc i64 %shr453 to i32
  tail call void %191(ptr noundef %adev, i32 noundef %add27.i1674, i32 noundef %conv454, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end460

cond.false455:                                    ; preds = %land.lhs.true440.cond.false455_crit_edge, %land.lhs.true435.cond.false455_crit_edge, %cond.end430.cond.false455_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1676 = icmp ult i32 %i.02107, 2
  %197 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1678 = icmp eq i32 %i.02107, 1
  %spec.select.i1679 = select i1 %cmp12.i1678, i32 1666, i32 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1682 = icmp eq i32 %i.02107, 3
  %spec.select39.i1683 = select i1 %cmp21.i1682, i32 1154, i32 130
  %internal_offset.addr.0.i1685 = select i1 %cmp6.i1676, i32 %spec.select.i1679, i32 %spec.select39.i1683
  %base.0.i1686.in.idx = select i1 %cmp6.i1676, i32 0, i32 2
  %base.0.i1686.in = getelementptr i32, ptr %198, i32 %base.0.i1686.in.idx
  %199 = ptrtoint ptr %base.0.i1686.in to i32
  call void @__asan_load4_noabort(i32 %199)
  %base.0.i1686 = load i32, ptr %base.0.i1686.in, align 4
  %add27.i1687 = add i32 %base.0.i1686, %internal_offset.addr.0.i1685
  %gpu_addr457 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 12
  %200 = ptrtoint ptr %gpu_addr457 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %gpu_addr457, align 8
  %shr458 = lshr i64 %201, 40
  %conv459 = trunc i64 %shr458 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1687, i32 noundef %conv459, i32 noundef 0) #11
  br label %cond.end460

cond.end460:                                      ; preds = %cond.false455, %cond.true446
  %wptr = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 7
  %202 = ptrtoint ptr %wptr to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 0, ptr %wptr, align 8
  %203 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %virt, align 8
  %and463 = and i32 %204, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and463)
  %tobool464.not = icmp eq i32 %and463, 0
  br i1 %tobool464.not, label %cond.end460.cond.false482_crit_edge, label %land.lhs.true465

cond.end460.cond.false482_crit_edge:              ; preds = %cond.end460
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false482

land.lhs.true465:                                 ; preds = %cond.end460
  %205 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %funcs63, align 4
  %tobool469.not = icmp eq ptr %206, null
  br i1 %tobool469.not, label %land.lhs.true465.cond.false482_crit_edge, label %land.lhs.true470

land.lhs.true465.cond.false482_crit_edge:         ; preds = %land.lhs.true465
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false482

land.lhs.true470:                                 ; preds = %land.lhs.true465
  %sriov_wreg474 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %206, i32 0, i32 12
  %207 = ptrtoint ptr %sriov_wreg474 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sriov_wreg474, align 4
  %tobool475.not = icmp eq ptr %208, null
  br i1 %tobool475.not, label %land.lhs.true470.cond.false482_crit_edge, label %cond.true476

land.lhs.true470.cond.false482_crit_edge:         ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false482

cond.true476:                                     ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1689 = icmp ult i32 %i.02107, 2
  %209 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1691 = icmp eq i32 %i.02107, 1
  %spec.select.i1692 = select i1 %cmp12.i1691, i32 1717, i32 181
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1695 = icmp eq i32 %i.02107, 3
  %spec.select39.i1696 = select i1 %cmp21.i1695, i32 1205, i32 181
  %internal_offset.addr.0.i1698 = select i1 %cmp6.i1689, i32 %spec.select.i1692, i32 %spec.select39.i1696
  %base.0.i1699.in.idx = select i1 %cmp6.i1689, i32 0, i32 2
  %base.0.i1699.in = getelementptr i32, ptr %210, i32 %base.0.i1699.in.idx
  %211 = ptrtoint ptr %base.0.i1699.in to i32
  call void @__asan_load4_noabort(i32 %211)
  %base.0.i1699 = load i32, ptr %base.0.i1699.in, align 4
  %add27.i1700 = add i32 %base.0.i1699, %internal_offset.addr.0.i1698
  tail call void %208(ptr noundef %adev, i32 noundef %add27.i1700, i32 noundef 1, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end484

cond.false482:                                    ; preds = %land.lhs.true470.cond.false482_crit_edge, %land.lhs.true465.cond.false482_crit_edge, %cond.end460.cond.false482_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1702 = icmp ult i32 %i.02107, 2
  %212 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1704 = icmp eq i32 %i.02107, 1
  %spec.select.i1705 = select i1 %cmp12.i1704, i32 1717, i32 181
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1708 = icmp eq i32 %i.02107, 3
  %spec.select39.i1709 = select i1 %cmp21.i1708, i32 1205, i32 181
  %internal_offset.addr.0.i1711 = select i1 %cmp6.i1702, i32 %spec.select.i1705, i32 %spec.select39.i1709
  %base.0.i1712.in.idx = select i1 %cmp6.i1702, i32 0, i32 2
  %base.0.i1712.in = getelementptr i32, ptr %213, i32 %base.0.i1712.in.idx
  %214 = ptrtoint ptr %base.0.i1712.in to i32
  call void @__asan_load4_noabort(i32 %214)
  %base.0.i1712 = load i32, ptr %base.0.i1712.in, align 4
  %add27.i1713 = add i32 %base.0.i1712, %internal_offset.addr.0.i1711
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1713, i32 noundef 1, i32 noundef 0) #11
  br label %cond.end484

cond.end484:                                      ; preds = %cond.false482, %cond.true476
  %215 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %virt, align 8
  %and487 = and i32 %216, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and487)
  %tobool488.not = icmp eq i32 %and487, 0
  br i1 %tobool488.not, label %if.then489, label %cond.end484.if.end501_crit_edge

cond.end484.if.end501_crit_edge:                  ; preds = %cond.end484
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end501

if.then489:                                       ; preds = %cond.end484
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1715 = icmp ult i32 %i.02107, 2
  %217 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1717 = icmp eq i32 %i.02107, 1
  %spec.select.i1718 = select i1 %cmp12.i1717, i32 1669, i32 133
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1721 = icmp eq i32 %i.02107, 3
  %spec.select39.i1722 = select i1 %cmp21.i1721, i32 1157, i32 133
  %internal_offset.addr.0.i1724 = select i1 %cmp6.i1715, i32 %spec.select.i1718, i32 %spec.select39.i1722
  %base.0.i1725.in.idx = select i1 %cmp6.i1715, i32 0, i32 2
  %base.0.i1725.in = getelementptr i32, ptr %218, i32 %base.0.i1725.in.idx
  %219 = ptrtoint ptr %base.0.i1725.in to i32
  call void @__asan_load4_noabort(i32 %219)
  %base.0.i1725 = load i32, ptr %base.0.i1725.in, align 4
  %add27.i1726 = add i32 %base.0.i1725, %internal_offset.addr.0.i1724
  %220 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %wptr, align 8
  %conv493 = trunc i64 %221 to i32
  %shl494 = shl i32 %conv493, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1726, i32 noundef %shl494, i32 noundef 0) #11
  %222 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1731 = select i1 %cmp12.i1717, i32 1670, i32 134
  %spec.select39.i1735 = select i1 %cmp21.i1721, i32 1158, i32 134
  %internal_offset.addr.0.i1737 = select i1 %cmp6.i1715, i32 %spec.select.i1731, i32 %spec.select39.i1735
  %base.0.i1738.in = getelementptr i32, ptr %223, i32 %base.0.i1725.in.idx
  %224 = ptrtoint ptr %base.0.i1738.in to i32
  call void @__asan_load4_noabort(i32 %224)
  %base.0.i1738 = load i32, ptr %base.0.i1738.in, align 4
  %add27.i1739 = add i32 %base.0.i1738, %internal_offset.addr.0.i1737
  %225 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %wptr, align 8
  %sh.diff = lshr i64 %226, 30
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl500 = and i32 %tr.sh.diff, -4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1739, i32 noundef %shl500, i32 noundef 0) #11
  br label %if.end501

if.end501:                                        ; preds = %if.then489, %cond.end484.if.end501_crit_edge
  %227 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %virt, align 8
  %and504 = and i32 %228, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and504)
  %tobool505.not = icmp eq i32 %and504, 0
  br i1 %tobool505.not, label %if.end501.cond.false524_crit_edge, label %land.lhs.true506

if.end501.cond.false524_crit_edge:                ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false524

land.lhs.true506:                                 ; preds = %if.end501
  %229 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %funcs63, align 4
  %tobool510.not = icmp eq ptr %230, null
  br i1 %tobool510.not, label %land.lhs.true506.cond.false524_crit_edge, label %land.lhs.true511

land.lhs.true506.cond.false524_crit_edge:         ; preds = %land.lhs.true506
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false524

land.lhs.true511:                                 ; preds = %land.lhs.true506
  %sriov_rreg515 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %230, i32 0, i32 13
  %231 = ptrtoint ptr %sriov_rreg515 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %sriov_rreg515, align 4
  %tobool516.not = icmp eq ptr %232, null
  br i1 %tobool516.not, label %land.lhs.true511.cond.false524_crit_edge, label %cond.true517

land.lhs.true511.cond.false524_crit_edge:         ; preds = %land.lhs.true511
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false524

cond.true517:                                     ; preds = %land.lhs.true511
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1741 = icmp ult i32 %i.02107, 2
  %233 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1743 = icmp eq i32 %i.02107, 1
  %spec.select.i1744 = select i1 %cmp12.i1743, i32 1682, i32 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1747 = icmp eq i32 %i.02107, 3
  %spec.select39.i1748 = select i1 %cmp21.i1747, i32 1170, i32 146
  %internal_offset.addr.0.i1750 = select i1 %cmp6.i1741, i32 %spec.select.i1744, i32 %spec.select39.i1748
  %base.0.i1751.in.idx = select i1 %cmp6.i1741, i32 0, i32 2
  %base.0.i1751.in = getelementptr i32, ptr %234, i32 %base.0.i1751.in.idx
  %235 = ptrtoint ptr %base.0.i1751.in to i32
  call void @__asan_load4_noabort(i32 %235)
  %base.0.i1751 = load i32, ptr %base.0.i1751.in, align 4
  %add27.i1752 = add i32 %base.0.i1751, %internal_offset.addr.0.i1750
  %call523 = tail call i32 %232(ptr noundef %adev, i32 noundef %add27.i1752, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end527

cond.false524:                                    ; preds = %land.lhs.true511.cond.false524_crit_edge, %land.lhs.true506.cond.false524_crit_edge, %if.end501.cond.false524_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1754 = icmp ult i32 %i.02107, 2
  %236 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1756 = icmp eq i32 %i.02107, 1
  %spec.select.i1757 = select i1 %cmp12.i1756, i32 1682, i32 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1760 = icmp eq i32 %i.02107, 3
  %spec.select39.i1761 = select i1 %cmp21.i1760, i32 1170, i32 146
  %internal_offset.addr.0.i1763 = select i1 %cmp6.i1754, i32 %spec.select.i1757, i32 %spec.select39.i1761
  %base.0.i1764.in.idx = select i1 %cmp6.i1754, i32 0, i32 2
  %base.0.i1764.in = getelementptr i32, ptr %237, i32 %base.0.i1764.in.idx
  %238 = ptrtoint ptr %base.0.i1764.in to i32
  call void @__asan_load4_noabort(i32 %238)
  %base.0.i1764 = load i32, ptr %base.0.i1764.in, align 4
  %add27.i1765 = add i32 %base.0.i1764, %internal_offset.addr.0.i1763
  %call526 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i1765, i32 noundef 0) #11
  br label %cond.end527

cond.end527:                                      ; preds = %cond.false524, %cond.true517
  %cond528 = phi i32 [ %call523, %cond.true517 ], [ %call526, %cond.false524 ]
  %239 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %virt, align 8
  %and531 = and i32 %240, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and531)
  %tobool532.not = icmp eq i32 %and531, 0
  br i1 %tobool532.not, label %cond.end527.cond.false551_crit_edge, label %land.lhs.true533

cond.end527.cond.false551_crit_edge:              ; preds = %cond.end527
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false551

land.lhs.true533:                                 ; preds = %cond.end527
  %241 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %funcs63, align 4
  %tobool537.not = icmp eq ptr %242, null
  br i1 %tobool537.not, label %land.lhs.true533.cond.false551_crit_edge, label %land.lhs.true538

land.lhs.true533.cond.false551_crit_edge:         ; preds = %land.lhs.true533
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false551

land.lhs.true538:                                 ; preds = %land.lhs.true533
  %sriov_rreg542 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %242, i32 0, i32 13
  %243 = ptrtoint ptr %sriov_rreg542 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %sriov_rreg542, align 4
  %tobool543.not = icmp eq ptr %244, null
  br i1 %tobool543.not, label %land.lhs.true538.cond.false551_crit_edge, label %cond.true544

land.lhs.true538.cond.false551_crit_edge:         ; preds = %land.lhs.true538
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false551

cond.true544:                                     ; preds = %land.lhs.true538
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1767 = icmp ult i32 %i.02107, 2
  %245 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1769 = icmp eq i32 %i.02107, 1
  %spec.select.i1770 = select i1 %cmp12.i1769, i32 1707, i32 171
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1773 = icmp eq i32 %i.02107, 3
  %spec.select39.i1774 = select i1 %cmp21.i1773, i32 1195, i32 171
  %internal_offset.addr.0.i1776 = select i1 %cmp6.i1767, i32 %spec.select.i1770, i32 %spec.select39.i1774
  %base.0.i1777.in.idx = select i1 %cmp6.i1767, i32 0, i32 2
  %base.0.i1777.in = getelementptr i32, ptr %246, i32 %base.0.i1777.in.idx
  %247 = ptrtoint ptr %base.0.i1777.in to i32
  call void @__asan_load4_noabort(i32 %247)
  %base.0.i1777 = load i32, ptr %base.0.i1777.in, align 4
  %add27.i1778 = add i32 %base.0.i1777, %internal_offset.addr.0.i1776
  %call550 = tail call i32 %244(ptr noundef %adev, i32 noundef %add27.i1778, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end554

cond.false551:                                    ; preds = %land.lhs.true538.cond.false551_crit_edge, %land.lhs.true533.cond.false551_crit_edge, %cond.end527.cond.false551_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1780 = icmp ult i32 %i.02107, 2
  %248 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1782 = icmp eq i32 %i.02107, 1
  %spec.select.i1783 = select i1 %cmp12.i1782, i32 1707, i32 171
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1786 = icmp eq i32 %i.02107, 3
  %spec.select39.i1787 = select i1 %cmp21.i1786, i32 1195, i32 171
  %internal_offset.addr.0.i1789 = select i1 %cmp6.i1780, i32 %spec.select.i1783, i32 %spec.select39.i1787
  %base.0.i1790.in.idx = select i1 %cmp6.i1780, i32 0, i32 2
  %base.0.i1790.in = getelementptr i32, ptr %249, i32 %base.0.i1790.in.idx
  %250 = ptrtoint ptr %base.0.i1790.in to i32
  call void @__asan_load4_noabort(i32 %250)
  %base.0.i1790 = load i32, ptr %base.0.i1790.in, align 4
  %add27.i1791 = add i32 %base.0.i1790, %internal_offset.addr.0.i1789
  %call553 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i1791, i32 noundef 0) #11
  br label %cond.end554

cond.end554:                                      ; preds = %cond.false551, %cond.true544
  %cond555 = phi i32 [ %call550, %cond.true544 ], [ %call553, %cond.false551 ]
  %use_doorbell = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 24
  %251 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %use_doorbell, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool556.not = icmp eq i8 %252, 0
  br i1 %tobool556.not, label %if.else, label %if.then557

if.then557:                                       ; preds = %cond.end554
  call void @__sanitizer_cov_trace_pc() #13
  %or559 = or i32 %cond528, 268435456
  %and560 = and i32 %cond555, -268435453
  %doorbell_index = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 23
  %253 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %doorbell_index, align 8
  %shl561 = shl i32 %254, 2
  %and562 = and i32 %shl561, 268435452
  %or563 = or i32 %and562, %and560
  br label %if.end566

if.else:                                          ; preds = %cond.end554
  call void @__sanitizer_cov_trace_pc() #13
  %and564 = and i32 %cond528, -268435457
  br label %if.end566

if.end566:                                        ; preds = %if.else, %if.then557
  %doorbell.0 = phi i32 [ %or559, %if.then557 ], [ %and564, %if.else ]
  %doorbell_offset.0 = phi i32 [ %or563, %if.then557 ], [ %cond555, %if.else ]
  %255 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %virt, align 8
  %and569 = and i32 %256, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and569)
  %tobool570.not = icmp eq i32 %and569, 0
  br i1 %tobool570.not, label %if.end566.cond.false588_crit_edge, label %land.lhs.true571

if.end566.cond.false588_crit_edge:                ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false588

land.lhs.true571:                                 ; preds = %if.end566
  %257 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %funcs63, align 4
  %tobool575.not = icmp eq ptr %258, null
  br i1 %tobool575.not, label %land.lhs.true571.cond.false588_crit_edge, label %land.lhs.true576

land.lhs.true571.cond.false588_crit_edge:         ; preds = %land.lhs.true571
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false588

land.lhs.true576:                                 ; preds = %land.lhs.true571
  %sriov_wreg580 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %258, i32 0, i32 12
  %259 = ptrtoint ptr %sriov_wreg580 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %sriov_wreg580, align 4
  %tobool581.not = icmp eq ptr %260, null
  br i1 %tobool581.not, label %land.lhs.true576.cond.false588_crit_edge, label %cond.true582

land.lhs.true576.cond.false588_crit_edge:         ; preds = %land.lhs.true576
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false588

cond.true582:                                     ; preds = %land.lhs.true576
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1793 = icmp ult i32 %i.02107, 2
  %261 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1795 = icmp eq i32 %i.02107, 1
  %spec.select.i1796 = select i1 %cmp12.i1795, i32 1682, i32 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1799 = icmp eq i32 %i.02107, 3
  %spec.select39.i1800 = select i1 %cmp21.i1799, i32 1170, i32 146
  %internal_offset.addr.0.i1802 = select i1 %cmp6.i1793, i32 %spec.select.i1796, i32 %spec.select39.i1800
  %base.0.i1803.in.idx = select i1 %cmp6.i1793, i32 0, i32 2
  %base.0.i1803.in = getelementptr i32, ptr %262, i32 %base.0.i1803.in.idx
  %263 = ptrtoint ptr %base.0.i1803.in to i32
  call void @__asan_load4_noabort(i32 %263)
  %base.0.i1803 = load i32, ptr %base.0.i1803.in, align 4
  %add27.i1804 = add i32 %base.0.i1803, %internal_offset.addr.0.i1802
  tail call void %260(ptr noundef %adev, i32 noundef %add27.i1804, i32 noundef %doorbell.0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end590

cond.false588:                                    ; preds = %land.lhs.true576.cond.false588_crit_edge, %land.lhs.true571.cond.false588_crit_edge, %if.end566.cond.false588_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1806 = icmp ult i32 %i.02107, 2
  %264 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1808 = icmp eq i32 %i.02107, 1
  %spec.select.i1809 = select i1 %cmp12.i1808, i32 1682, i32 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1812 = icmp eq i32 %i.02107, 3
  %spec.select39.i1813 = select i1 %cmp21.i1812, i32 1170, i32 146
  %internal_offset.addr.0.i1815 = select i1 %cmp6.i1806, i32 %spec.select.i1809, i32 %spec.select39.i1813
  %base.0.i1816.in.idx = select i1 %cmp6.i1806, i32 0, i32 2
  %base.0.i1816.in = getelementptr i32, ptr %265, i32 %base.0.i1816.in.idx
  %266 = ptrtoint ptr %base.0.i1816.in to i32
  call void @__asan_load4_noabort(i32 %266)
  %base.0.i1816 = load i32, ptr %base.0.i1816.in, align 4
  %add27.i1817 = add i32 %base.0.i1816, %internal_offset.addr.0.i1815
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1817, i32 noundef %doorbell.0, i32 noundef 0) #11
  br label %cond.end590

cond.end590:                                      ; preds = %cond.false588, %cond.true582
  %267 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %virt, align 8
  %and593 = and i32 %268, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and593)
  %tobool594.not = icmp eq i32 %and593, 0
  br i1 %tobool594.not, label %cond.end590.cond.false612_crit_edge, label %land.lhs.true595

cond.end590.cond.false612_crit_edge:              ; preds = %cond.end590
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false612

land.lhs.true595:                                 ; preds = %cond.end590
  %269 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %funcs63, align 4
  %tobool599.not = icmp eq ptr %270, null
  br i1 %tobool599.not, label %land.lhs.true595.cond.false612_crit_edge, label %land.lhs.true600

land.lhs.true595.cond.false612_crit_edge:         ; preds = %land.lhs.true595
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false612

land.lhs.true600:                                 ; preds = %land.lhs.true595
  %sriov_wreg604 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %270, i32 0, i32 12
  %271 = ptrtoint ptr %sriov_wreg604 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %sriov_wreg604, align 4
  %tobool605.not = icmp eq ptr %272, null
  br i1 %tobool605.not, label %land.lhs.true600.cond.false612_crit_edge, label %cond.true606

land.lhs.true600.cond.false612_crit_edge:         ; preds = %land.lhs.true600
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false612

cond.true606:                                     ; preds = %land.lhs.true600
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1819 = icmp ult i32 %i.02107, 2
  %273 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1821 = icmp eq i32 %i.02107, 1
  %spec.select.i1822 = select i1 %cmp12.i1821, i32 1707, i32 171
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1825 = icmp eq i32 %i.02107, 3
  %spec.select39.i1826 = select i1 %cmp21.i1825, i32 1195, i32 171
  %internal_offset.addr.0.i1828 = select i1 %cmp6.i1819, i32 %spec.select.i1822, i32 %spec.select39.i1826
  %base.0.i1829.in.idx = select i1 %cmp6.i1819, i32 0, i32 2
  %base.0.i1829.in = getelementptr i32, ptr %274, i32 %base.0.i1829.in.idx
  %275 = ptrtoint ptr %base.0.i1829.in to i32
  call void @__asan_load4_noabort(i32 %275)
  %base.0.i1829 = load i32, ptr %base.0.i1829.in, align 4
  %add27.i1830 = add i32 %base.0.i1829, %internal_offset.addr.0.i1828
  tail call void %272(ptr noundef %adev, i32 noundef %add27.i1830, i32 noundef %doorbell_offset.0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end614

cond.false612:                                    ; preds = %land.lhs.true600.cond.false612_crit_edge, %land.lhs.true595.cond.false612_crit_edge, %cond.end590.cond.false612_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1832 = icmp ult i32 %i.02107, 2
  %276 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1834 = icmp eq i32 %i.02107, 1
  %spec.select.i1835 = select i1 %cmp12.i1834, i32 1707, i32 171
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1838 = icmp eq i32 %i.02107, 3
  %spec.select39.i1839 = select i1 %cmp21.i1838, i32 1195, i32 171
  %internal_offset.addr.0.i1841 = select i1 %cmp6.i1832, i32 %spec.select.i1835, i32 %spec.select39.i1839
  %base.0.i1842.in.idx = select i1 %cmp6.i1832, i32 0, i32 2
  %base.0.i1842.in = getelementptr i32, ptr %277, i32 %base.0.i1842.in.idx
  %278 = ptrtoint ptr %base.0.i1842.in to i32
  call void @__asan_load4_noabort(i32 %278)
  %base.0.i1842 = load i32, ptr %base.0.i1842.in, align 4
  %add27.i1843 = add i32 %base.0.i1842, %internal_offset.addr.0.i1841
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1843, i32 noundef %doorbell_offset.0, i32 noundef 0) #11
  br label %cond.end614

cond.end614:                                      ; preds = %cond.false612, %cond.true606
  %279 = ptrtoint ptr %funcs615 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %funcs615, align 8
  %sdma_doorbell_range = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %280, i32 0, i32 10
  %281 = ptrtoint ptr %sdma_doorbell_range to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %sdma_doorbell_range, align 4
  %283 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %use_doorbell, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool617 = icmp ne i8 %284, 0
  %doorbell_index618 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 23
  %285 = ptrtoint ptr %doorbell_index618 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %doorbell_index618, align 8
  %287 = ptrtoint ptr %sdma_doorbell_range620 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %sdma_doorbell_range620, align 4
  tail call void %282(ptr noundef %adev, i32 noundef %i.02107, i1 noundef zeroext %tobool617, i32 noundef %286, i32 noundef %288) #11
  %289 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %virt, align 8
  %and623 = and i32 %290, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and623)
  %tobool624.not = icmp eq i32 %and623, 0
  br i1 %tobool624.not, label %cond.end614.if.end626_crit_edge, label %if.then625

cond.end614.if.end626_crit_edge:                  ; preds = %cond.end614
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end626

if.then625:                                       ; preds = %cond.end614
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sdma_v5_2_ring_set_wptr(ptr noundef %ring2)
  br label %if.end626

if.end626:                                        ; preds = %if.then625, %cond.end614.if.end626_crit_edge
  %291 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %virt, align 8
  %and629 = and i32 %292, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and629)
  %tobool630.not = icmp eq i32 %and629, 0
  br i1 %tobool630.not, label %if.end626.cond.false648_crit_edge, label %land.lhs.true631

if.end626.cond.false648_crit_edge:                ; preds = %if.end626
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false648

land.lhs.true631:                                 ; preds = %if.end626
  %293 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %funcs63, align 4
  %tobool635.not = icmp eq ptr %294, null
  br i1 %tobool635.not, label %land.lhs.true631.cond.false648_crit_edge, label %land.lhs.true636

land.lhs.true631.cond.false648_crit_edge:         ; preds = %land.lhs.true631
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false648

land.lhs.true636:                                 ; preds = %land.lhs.true631
  %sriov_wreg640 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %294, i32 0, i32 12
  %295 = ptrtoint ptr %sriov_wreg640 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %sriov_wreg640, align 4
  %tobool641.not = icmp eq ptr %296, null
  br i1 %tobool641.not, label %land.lhs.true636.cond.false648_crit_edge, label %cond.true642

land.lhs.true636.cond.false648_crit_edge:         ; preds = %land.lhs.true636
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false648

cond.true642:                                     ; preds = %land.lhs.true636
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1845 = icmp ult i32 %i.02107, 2
  %297 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1847 = icmp eq i32 %i.02107, 1
  %spec.select.i1848 = select i1 %cmp12.i1847, i32 1717, i32 181
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1851 = icmp eq i32 %i.02107, 3
  %spec.select39.i1852 = select i1 %cmp21.i1851, i32 1205, i32 181
  %internal_offset.addr.0.i1854 = select i1 %cmp6.i1845, i32 %spec.select.i1848, i32 %spec.select39.i1852
  %base.0.i1855.in.idx = select i1 %cmp6.i1845, i32 0, i32 2
  %base.0.i1855.in = getelementptr i32, ptr %298, i32 %base.0.i1855.in.idx
  %299 = ptrtoint ptr %base.0.i1855.in to i32
  call void @__asan_load4_noabort(i32 %299)
  %base.0.i1855 = load i32, ptr %base.0.i1855.in, align 4
  %add27.i1856 = add i32 %base.0.i1855, %internal_offset.addr.0.i1854
  tail call void %296(ptr noundef %adev, i32 noundef %add27.i1856, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end650

cond.false648:                                    ; preds = %land.lhs.true636.cond.false648_crit_edge, %land.lhs.true631.cond.false648_crit_edge, %if.end626.cond.false648_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1858 = icmp ult i32 %i.02107, 2
  %300 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1860 = icmp eq i32 %i.02107, 1
  %spec.select.i1861 = select i1 %cmp12.i1860, i32 1717, i32 181
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1864 = icmp eq i32 %i.02107, 3
  %spec.select39.i1865 = select i1 %cmp21.i1864, i32 1205, i32 181
  %internal_offset.addr.0.i1867 = select i1 %cmp6.i1858, i32 %spec.select.i1861, i32 %spec.select39.i1865
  %base.0.i1868.in.idx = select i1 %cmp6.i1858, i32 0, i32 2
  %base.0.i1868.in = getelementptr i32, ptr %301, i32 %base.0.i1868.in.idx
  %302 = ptrtoint ptr %base.0.i1868.in to i32
  call void @__asan_load4_noabort(i32 %302)
  %base.0.i1868 = load i32, ptr %base.0.i1868.in, align 4
  %add27.i1869 = add i32 %base.0.i1868, %internal_offset.addr.0.i1867
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1869, i32 noundef 0, i32 noundef 0) #11
  br label %cond.end650

cond.end650:                                      ; preds = %cond.false648, %cond.true642
  %303 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %virt, align 8
  %and653 = and i32 %304, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and653)
  %tobool654.not = icmp eq i32 %and653, 0
  br i1 %tobool654.not, label %if.then655, label %cond.end650.if.end776_crit_edge

cond.end650.if.end776_crit_edge:                  ; preds = %cond.end650
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end776

if.then655:                                       ; preds = %cond.end650
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i1871 = icmp ult i32 %i.02107, 2
  %305 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i1873 = icmp eq i32 %i.02107, 1
  %spec.select.i1874 = select i1 %cmp12.i1873, i32 1564, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i1877 = icmp eq i32 %i.02107, 3
  %spec.select39.i1878 = select i1 %cmp21.i1877, i32 1052, i32 28
  %internal_offset.addr.0.i1880 = select i1 %cmp6.i1871, i32 %spec.select.i1874, i32 %spec.select39.i1878
  %base.0.i1881.in.idx = select i1 %cmp6.i1871, i32 0, i32 2
  %base.0.i1881.in = getelementptr i32, ptr %306, i32 %base.0.i1881.in.idx
  %307 = ptrtoint ptr %base.0.i1881.in to i32
  call void @__asan_load4_noabort(i32 %307)
  %base.0.i1881 = load i32, ptr %base.0.i1881.in, align 4
  %add27.i1882 = add i32 %base.0.i1881, %internal_offset.addr.0.i1880
  %call657 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i1882, i32 noundef 0) #11
  %or661 = or i32 %call657, 34
  %308 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx9.i, align 8
  %base.0.i1894.in = getelementptr i32, ptr %309, i32 %base.0.i1881.in.idx
  %310 = ptrtoint ptr %base.0.i1894.in to i32
  call void @__asan_load4_noabort(i32 %310)
  %base.0.i1894 = load i32, ptr %base.0.i1894.in, align 4
  %add27.i1895 = add i32 %base.0.i1894, %internal_offset.addr.0.i1880
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1895, i32 noundef %or661, i32 noundef 0) #11
  %311 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %virt, align 8
  %and665 = and i32 %312, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and665)
  %tobool666.not = icmp eq i32 %and665, 0
  br i1 %tobool666.not, label %if.then655.cond.false685_crit_edge, label %land.lhs.true667

if.then655.cond.false685_crit_edge:               ; preds = %if.then655
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false685

land.lhs.true667:                                 ; preds = %if.then655
  %313 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %funcs63, align 4
  %tobool671.not = icmp eq ptr %314, null
  br i1 %tobool671.not, label %land.lhs.true667.cond.false685_crit_edge, label %land.lhs.true672

land.lhs.true667.cond.false685_crit_edge:         ; preds = %land.lhs.true667
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false685

land.lhs.true672:                                 ; preds = %land.lhs.true667
  %sriov_rreg676 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %314, i32 0, i32 13
  %315 = ptrtoint ptr %sriov_rreg676 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %sriov_rreg676, align 4
  %tobool677.not = icmp eq ptr %316, null
  br i1 %tobool677.not, label %land.lhs.true672.cond.false685_crit_edge, label %cond.true678

land.lhs.true672.cond.false685_crit_edge:         ; preds = %land.lhs.true672
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false685

cond.true678:                                     ; preds = %land.lhs.true672
  call void @__sanitizer_cov_trace_pc() #13
  %317 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1900 = select i1 %cmp12.i1873, i32 1596, i32 60
  %spec.select39.i1904 = select i1 %cmp21.i1877, i32 1084, i32 60
  %internal_offset.addr.0.i1906 = select i1 %cmp6.i1871, i32 %spec.select.i1900, i32 %spec.select39.i1904
  %base.0.i1907.in = getelementptr i32, ptr %318, i32 %base.0.i1881.in.idx
  %319 = ptrtoint ptr %base.0.i1907.in to i32
  call void @__asan_load4_noabort(i32 %319)
  %base.0.i1907 = load i32, ptr %base.0.i1907.in, align 4
  %add27.i1908 = add i32 %base.0.i1907, %internal_offset.addr.0.i1906
  %call684 = tail call i32 %316(ptr noundef %adev, i32 noundef %add27.i1908, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end688

cond.false685:                                    ; preds = %land.lhs.true672.cond.false685_crit_edge, %land.lhs.true667.cond.false685_crit_edge, %if.then655.cond.false685_crit_edge
  %320 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1913 = select i1 %cmp12.i1873, i32 1596, i32 60
  %spec.select39.i1917 = select i1 %cmp21.i1877, i32 1084, i32 60
  %internal_offset.addr.0.i1919 = select i1 %cmp6.i1871, i32 %spec.select.i1913, i32 %spec.select39.i1917
  %base.0.i1920.in = getelementptr i32, ptr %321, i32 %base.0.i1881.in.idx
  %322 = ptrtoint ptr %base.0.i1920.in to i32
  call void @__asan_load4_noabort(i32 %322)
  %base.0.i1920 = load i32, ptr %base.0.i1920.in, align 4
  %add27.i1921 = add i32 %base.0.i1920, %internal_offset.addr.0.i1919
  %call687 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i1921, i32 noundef 0) #11
  br label %cond.end688

cond.end688:                                      ; preds = %cond.false685, %cond.true678
  %cond689 = phi i32 [ %call684, %cond.true678 ], [ %call687, %cond.false685 ]
  %and690 = and i32 %cond689, -3647
  %or693 = or i32 %and690, 1554
  %323 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %virt, align 8
  %and696 = and i32 %324, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and696)
  %tobool697.not = icmp eq i32 %and696, 0
  br i1 %tobool697.not, label %cond.end688.cond.false715_crit_edge, label %land.lhs.true698

cond.end688.cond.false715_crit_edge:              ; preds = %cond.end688
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false715

land.lhs.true698:                                 ; preds = %cond.end688
  %325 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %funcs63, align 4
  %tobool702.not = icmp eq ptr %326, null
  br i1 %tobool702.not, label %land.lhs.true698.cond.false715_crit_edge, label %land.lhs.true703

land.lhs.true698.cond.false715_crit_edge:         ; preds = %land.lhs.true698
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false715

land.lhs.true703:                                 ; preds = %land.lhs.true698
  %sriov_wreg707 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %326, i32 0, i32 12
  %327 = ptrtoint ptr %sriov_wreg707 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %sriov_wreg707, align 4
  %tobool708.not = icmp eq ptr %328, null
  br i1 %tobool708.not, label %land.lhs.true703.cond.false715_crit_edge, label %cond.true709

land.lhs.true703.cond.false715_crit_edge:         ; preds = %land.lhs.true703
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false715

cond.true709:                                     ; preds = %land.lhs.true703
  call void @__sanitizer_cov_trace_pc() #13
  %329 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1926 = select i1 %cmp12.i1873, i32 1596, i32 60
  %spec.select39.i1930 = select i1 %cmp21.i1877, i32 1084, i32 60
  %internal_offset.addr.0.i1932 = select i1 %cmp6.i1871, i32 %spec.select.i1926, i32 %spec.select39.i1930
  %base.0.i1933.in = getelementptr i32, ptr %330, i32 %base.0.i1881.in.idx
  %331 = ptrtoint ptr %base.0.i1933.in to i32
  call void @__asan_load4_noabort(i32 %331)
  %base.0.i1933 = load i32, ptr %base.0.i1933.in, align 4
  %add27.i1934 = add i32 %base.0.i1933, %internal_offset.addr.0.i1932
  tail call void %328(ptr noundef %adev, i32 noundef %add27.i1934, i32 noundef %or693, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end717

cond.false715:                                    ; preds = %land.lhs.true703.cond.false715_crit_edge, %land.lhs.true698.cond.false715_crit_edge, %cond.end688.cond.false715_crit_edge
  %332 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1939 = select i1 %cmp12.i1873, i32 1596, i32 60
  %spec.select39.i1943 = select i1 %cmp21.i1877, i32 1084, i32 60
  %internal_offset.addr.0.i1945 = select i1 %cmp6.i1871, i32 %spec.select.i1939, i32 %spec.select39.i1943
  %base.0.i1946.in = getelementptr i32, ptr %333, i32 %base.0.i1881.in.idx
  %334 = ptrtoint ptr %base.0.i1946.in to i32
  call void @__asan_load4_noabort(i32 %334)
  %base.0.i1946 = load i32, ptr %base.0.i1946.in, align 4
  %add27.i1947 = add i32 %base.0.i1946, %internal_offset.addr.0.i1945
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1947, i32 noundef %or693, i32 noundef 0) #11
  br label %cond.end717

cond.end717:                                      ; preds = %cond.false715, %cond.true709
  %335 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %virt, align 8
  %and720 = and i32 %336, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and720)
  %tobool721.not = icmp eq i32 %and720, 0
  br i1 %tobool721.not, label %cond.end717.cond.false740_crit_edge, label %land.lhs.true722

cond.end717.cond.false740_crit_edge:              ; preds = %cond.end717
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false740

land.lhs.true722:                                 ; preds = %cond.end717
  %337 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %funcs63, align 4
  %tobool726.not = icmp eq ptr %338, null
  br i1 %tobool726.not, label %land.lhs.true722.cond.false740_crit_edge, label %land.lhs.true727

land.lhs.true722.cond.false740_crit_edge:         ; preds = %land.lhs.true722
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false740

land.lhs.true727:                                 ; preds = %land.lhs.true722
  %sriov_rreg731 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %338, i32 0, i32 13
  %339 = ptrtoint ptr %sriov_rreg731 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %sriov_rreg731, align 4
  %tobool732.not = icmp eq ptr %340, null
  br i1 %tobool732.not, label %land.lhs.true727.cond.false740_crit_edge, label %cond.true733

land.lhs.true727.cond.false740_crit_edge:         ; preds = %land.lhs.true727
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false740

cond.true733:                                     ; preds = %land.lhs.true727
  call void @__sanitizer_cov_trace_pc() #13
  %341 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1952 = select i1 %cmp12.i1873, i32 1608, i32 72
  %spec.select39.i1956 = select i1 %cmp21.i1877, i32 1096, i32 72
  %internal_offset.addr.0.i1958 = select i1 %cmp6.i1871, i32 %spec.select.i1952, i32 %spec.select39.i1956
  %base.0.i1959.in = getelementptr i32, ptr %342, i32 %base.0.i1881.in.idx
  %343 = ptrtoint ptr %base.0.i1959.in to i32
  call void @__asan_load4_noabort(i32 %343)
  %base.0.i1959 = load i32, ptr %base.0.i1959.in, align 4
  %add27.i1960 = add i32 %base.0.i1959, %internal_offset.addr.0.i1958
  %call739 = tail call i32 %340(ptr noundef %adev, i32 noundef %add27.i1960, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end743

cond.false740:                                    ; preds = %land.lhs.true727.cond.false740_crit_edge, %land.lhs.true722.cond.false740_crit_edge, %cond.end717.cond.false740_crit_edge
  %344 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1965 = select i1 %cmp12.i1873, i32 1608, i32 72
  %spec.select39.i1969 = select i1 %cmp21.i1877, i32 1096, i32 72
  %internal_offset.addr.0.i1971 = select i1 %cmp6.i1871, i32 %spec.select.i1965, i32 %spec.select39.i1969
  %base.0.i1972.in = getelementptr i32, ptr %345, i32 %base.0.i1881.in.idx
  %346 = ptrtoint ptr %base.0.i1972.in to i32
  call void @__asan_load4_noabort(i32 %346)
  %base.0.i1972 = load i32, ptr %base.0.i1972.in, align 4
  %add27.i1973 = add i32 %base.0.i1972, %internal_offset.addr.0.i1971
  %call742 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i1973, i32 noundef 0) #11
  br label %cond.end743

cond.end743:                                      ; preds = %cond.false740, %cond.true733
  %cond744 = phi i32 [ %call739, %cond.true733 ], [ %call742, %cond.false740 ]
  %and745 = and i32 %cond744, 16715775
  %or746 = or i32 %and745, 16834560
  %347 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %virt, align 8
  %and749 = and i32 %348, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and749)
  %tobool750.not = icmp eq i32 %and749, 0
  br i1 %tobool750.not, label %cond.end743.cond.false768_crit_edge, label %land.lhs.true751

cond.end743.cond.false768_crit_edge:              ; preds = %cond.end743
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false768

land.lhs.true751:                                 ; preds = %cond.end743
  %349 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %funcs63, align 4
  %tobool755.not = icmp eq ptr %350, null
  br i1 %tobool755.not, label %land.lhs.true751.cond.false768_crit_edge, label %land.lhs.true756

land.lhs.true751.cond.false768_crit_edge:         ; preds = %land.lhs.true751
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false768

land.lhs.true756:                                 ; preds = %land.lhs.true751
  %sriov_wreg760 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %350, i32 0, i32 12
  %351 = ptrtoint ptr %sriov_wreg760 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %sriov_wreg760, align 4
  %tobool761.not = icmp eq ptr %352, null
  br i1 %tobool761.not, label %land.lhs.true756.cond.false768_crit_edge, label %cond.true762

land.lhs.true756.cond.false768_crit_edge:         ; preds = %land.lhs.true756
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false768

cond.true762:                                     ; preds = %land.lhs.true756
  call void @__sanitizer_cov_trace_pc() #13
  %353 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1978 = select i1 %cmp12.i1873, i32 1608, i32 72
  %spec.select39.i1982 = select i1 %cmp21.i1877, i32 1096, i32 72
  %internal_offset.addr.0.i1984 = select i1 %cmp6.i1871, i32 %spec.select.i1978, i32 %spec.select39.i1982
  %base.0.i1985.in = getelementptr i32, ptr %354, i32 %base.0.i1881.in.idx
  %355 = ptrtoint ptr %base.0.i1985.in to i32
  call void @__asan_load4_noabort(i32 %355)
  %base.0.i1985 = load i32, ptr %base.0.i1985.in, align 4
  %add27.i1986 = add i32 %base.0.i1985, %internal_offset.addr.0.i1984
  tail call void %352(ptr noundef %adev, i32 noundef %add27.i1986, i32 noundef %or746, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end770

cond.false768:                                    ; preds = %land.lhs.true756.cond.false768_crit_edge, %land.lhs.true751.cond.false768_crit_edge, %cond.end743.cond.false768_crit_edge
  %356 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i1991 = select i1 %cmp12.i1873, i32 1608, i32 72
  %spec.select39.i1995 = select i1 %cmp21.i1877, i32 1096, i32 72
  %internal_offset.addr.0.i1997 = select i1 %cmp6.i1871, i32 %spec.select.i1991, i32 %spec.select39.i1995
  %base.0.i1998.in = getelementptr i32, ptr %357, i32 %base.0.i1881.in.idx
  %358 = ptrtoint ptr %base.0.i1998.in to i32
  call void @__asan_load4_noabort(i32 %358)
  %base.0.i1998 = load i32, ptr %base.0.i1998.in, align 4
  %add27.i1999 = add i32 %base.0.i1998, %internal_offset.addr.0.i1997
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i1999, i32 noundef %or746, i32 noundef 0) #11
  br label %cond.end770

cond.end770:                                      ; preds = %cond.false768, %cond.true762
  %359 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %arrayidx9.i, align 8
  %spec.select.i2004 = select i1 %cmp12.i1873, i32 1578, i32 42
  %spec.select39.i2008 = select i1 %cmp21.i1877, i32 1066, i32 42
  %internal_offset.addr.0.i2010 = select i1 %cmp6.i1871, i32 %spec.select.i2004, i32 %spec.select39.i2008
  %base.0.i2011.in = getelementptr i32, ptr %360, i32 %base.0.i1881.in.idx
  %361 = ptrtoint ptr %base.0.i2011.in to i32
  call void @__asan_load4_noabort(i32 %361)
  %base.0.i2011 = load i32, ptr %base.0.i2011.in, align 4
  %add27.i2012 = add i32 %base.0.i2011, %internal_offset.addr.0.i2010
  %call772 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i2012, i32 noundef 0) #11
  %and773 = and i32 %call772, -2
  %362 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %arrayidx9.i, align 8
  %base.0.i2024.in = getelementptr i32, ptr %363, i32 %base.0.i1881.in.idx
  %364 = ptrtoint ptr %base.0.i2024.in to i32
  call void @__asan_load4_noabort(i32 %364)
  %base.0.i2024 = load i32, ptr %base.0.i2024.in, align 4
  %add27.i2025 = add i32 %base.0.i2024, %internal_offset.addr.0.i2010
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i2025, i32 noundef %and773, i32 noundef 0) #11
  br label %if.end776

if.end776:                                        ; preds = %cond.end770, %cond.end650.if.end776_crit_edge
  %or778 = or i32 %or, 12801
  %365 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %virt, align 8
  %and781 = and i32 %366, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and781)
  %tobool782.not = icmp eq i32 %and781, 0
  br i1 %tobool782.not, label %if.end776.cond.false800_crit_edge, label %land.lhs.true783

if.end776.cond.false800_crit_edge:                ; preds = %if.end776
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false800

land.lhs.true783:                                 ; preds = %if.end776
  %367 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %funcs63, align 4
  %tobool787.not = icmp eq ptr %368, null
  br i1 %tobool787.not, label %land.lhs.true783.cond.false800_crit_edge, label %land.lhs.true788

land.lhs.true783.cond.false800_crit_edge:         ; preds = %land.lhs.true783
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false800

land.lhs.true788:                                 ; preds = %land.lhs.true783
  %sriov_wreg792 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %368, i32 0, i32 12
  %369 = ptrtoint ptr %sriov_wreg792 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %sriov_wreg792, align 4
  %tobool793.not = icmp eq ptr %370, null
  br i1 %tobool793.not, label %land.lhs.true788.cond.false800_crit_edge, label %cond.true794

land.lhs.true788.cond.false800_crit_edge:         ; preds = %land.lhs.true788
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false800

cond.true794:                                     ; preds = %land.lhs.true788
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i2027 = icmp ult i32 %i.02107, 2
  %371 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i2029 = icmp eq i32 %i.02107, 1
  %spec.select.i2030 = select i1 %cmp12.i2029, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i2033 = icmp eq i32 %i.02107, 3
  %spec.select39.i2034 = select i1 %cmp21.i2033, i32 1152, i32 128
  %internal_offset.addr.0.i2036 = select i1 %cmp6.i2027, i32 %spec.select.i2030, i32 %spec.select39.i2034
  %base.0.i2037.in.idx = select i1 %cmp6.i2027, i32 0, i32 2
  %base.0.i2037.in = getelementptr i32, ptr %372, i32 %base.0.i2037.in.idx
  %373 = ptrtoint ptr %base.0.i2037.in to i32
  call void @__asan_load4_noabort(i32 %373)
  %base.0.i2037 = load i32, ptr %base.0.i2037.in, align 4
  %add27.i2038 = add i32 %base.0.i2037, %internal_offset.addr.0.i2036
  tail call void %370(ptr noundef %adev, i32 noundef %add27.i2038, i32 noundef %or778, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end802

cond.false800:                                    ; preds = %land.lhs.true788.cond.false800_crit_edge, %land.lhs.true783.cond.false800_crit_edge, %if.end776.cond.false800_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i2040 = icmp ult i32 %i.02107, 2
  %374 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i2042 = icmp eq i32 %i.02107, 1
  %spec.select.i2043 = select i1 %cmp12.i2042, i32 1664, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i2046 = icmp eq i32 %i.02107, 3
  %spec.select39.i2047 = select i1 %cmp21.i2046, i32 1152, i32 128
  %internal_offset.addr.0.i2049 = select i1 %cmp6.i2040, i32 %spec.select.i2043, i32 %spec.select39.i2047
  %base.0.i2050.in.idx = select i1 %cmp6.i2040, i32 0, i32 2
  %base.0.i2050.in = getelementptr i32, ptr %375, i32 %base.0.i2050.in.idx
  %376 = ptrtoint ptr %base.0.i2050.in to i32
  call void @__asan_load4_noabort(i32 %376)
  %base.0.i2050 = load i32, ptr %base.0.i2050.in, align 4
  %add27.i2051 = add i32 %base.0.i2050, %internal_offset.addr.0.i2049
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i2051, i32 noundef %or778, i32 noundef 0) #11
  br label %cond.end802

cond.end802:                                      ; preds = %cond.false800, %cond.true794
  %377 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %virt, align 8
  %and805 = and i32 %378, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and805)
  %tobool806.not = icmp eq i32 %and805, 0
  br i1 %tobool806.not, label %cond.end802.cond.false825_crit_edge, label %land.lhs.true807

cond.end802.cond.false825_crit_edge:              ; preds = %cond.end802
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false825

land.lhs.true807:                                 ; preds = %cond.end802
  %379 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %funcs63, align 4
  %tobool811.not = icmp eq ptr %380, null
  br i1 %tobool811.not, label %land.lhs.true807.cond.false825_crit_edge, label %land.lhs.true812

land.lhs.true807.cond.false825_crit_edge:         ; preds = %land.lhs.true807
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false825

land.lhs.true812:                                 ; preds = %land.lhs.true807
  %sriov_rreg816 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %380, i32 0, i32 13
  %381 = ptrtoint ptr %sriov_rreg816 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %sriov_rreg816, align 4
  %tobool817.not = icmp eq ptr %382, null
  br i1 %tobool817.not, label %land.lhs.true812.cond.false825_crit_edge, label %cond.true818

land.lhs.true812.cond.false825_crit_edge:         ; preds = %land.lhs.true812
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false825

cond.true818:                                     ; preds = %land.lhs.true812
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i2053 = icmp ult i32 %i.02107, 2
  %383 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i2055 = icmp eq i32 %i.02107, 1
  %spec.select.i2056 = select i1 %cmp12.i2055, i32 1674, i32 138
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i2059 = icmp eq i32 %i.02107, 3
  %spec.select39.i2060 = select i1 %cmp21.i2059, i32 1162, i32 138
  %internal_offset.addr.0.i2062 = select i1 %cmp6.i2053, i32 %spec.select.i2056, i32 %spec.select39.i2060
  %base.0.i2063.in.idx = select i1 %cmp6.i2053, i32 0, i32 2
  %base.0.i2063.in = getelementptr i32, ptr %384, i32 %base.0.i2063.in.idx
  %385 = ptrtoint ptr %base.0.i2063.in to i32
  call void @__asan_load4_noabort(i32 %385)
  %base.0.i2063 = load i32, ptr %base.0.i2063.in, align 4
  %add27.i2064 = add i32 %base.0.i2063, %internal_offset.addr.0.i2062
  %call824 = tail call i32 %382(ptr noundef %adev, i32 noundef %add27.i2064, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end828

cond.false825:                                    ; preds = %land.lhs.true812.cond.false825_crit_edge, %land.lhs.true807.cond.false825_crit_edge, %cond.end802.cond.false825_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i2066 = icmp ult i32 %i.02107, 2
  %386 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i2068 = icmp eq i32 %i.02107, 1
  %spec.select.i2069 = select i1 %cmp12.i2068, i32 1674, i32 138
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i2072 = icmp eq i32 %i.02107, 3
  %spec.select39.i2073 = select i1 %cmp21.i2072, i32 1162, i32 138
  %internal_offset.addr.0.i2075 = select i1 %cmp6.i2066, i32 %spec.select.i2069, i32 %spec.select39.i2073
  %base.0.i2076.in.idx = select i1 %cmp6.i2066, i32 0, i32 2
  %base.0.i2076.in = getelementptr i32, ptr %387, i32 %base.0.i2076.in.idx
  %388 = ptrtoint ptr %base.0.i2076.in to i32
  call void @__asan_load4_noabort(i32 %388)
  %base.0.i2076 = load i32, ptr %base.0.i2076.in, align 4
  %add27.i2077 = add i32 %base.0.i2076, %internal_offset.addr.0.i2075
  %call827 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i2077, i32 noundef 0) #11
  br label %cond.end828

cond.end828:                                      ; preds = %cond.false825, %cond.true818
  %cond829 = phi i32 [ %call824, %cond.true818 ], [ %call827, %cond.false825 ]
  %or833 = or i32 %cond829, 17
  %389 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %virt, align 8
  %and836 = and i32 %390, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and836)
  %tobool837.not = icmp eq i32 %and836, 0
  br i1 %tobool837.not, label %cond.end828.cond.false855_crit_edge, label %land.lhs.true838

cond.end828.cond.false855_crit_edge:              ; preds = %cond.end828
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false855

land.lhs.true838:                                 ; preds = %cond.end828
  %391 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %funcs63, align 4
  %tobool842.not = icmp eq ptr %392, null
  br i1 %tobool842.not, label %land.lhs.true838.cond.false855_crit_edge, label %land.lhs.true843

land.lhs.true838.cond.false855_crit_edge:         ; preds = %land.lhs.true838
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false855

land.lhs.true843:                                 ; preds = %land.lhs.true838
  %sriov_wreg847 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %392, i32 0, i32 12
  %393 = ptrtoint ptr %sriov_wreg847 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %sriov_wreg847, align 4
  %tobool848.not = icmp eq ptr %394, null
  br i1 %tobool848.not, label %land.lhs.true843.cond.false855_crit_edge, label %cond.true849

land.lhs.true843.cond.false855_crit_edge:         ; preds = %land.lhs.true843
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false855

cond.true849:                                     ; preds = %land.lhs.true843
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i2079 = icmp ult i32 %i.02107, 2
  %395 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i2081 = icmp eq i32 %i.02107, 1
  %spec.select.i2082 = select i1 %cmp12.i2081, i32 1674, i32 138
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i2085 = icmp eq i32 %i.02107, 3
  %spec.select39.i2086 = select i1 %cmp21.i2085, i32 1162, i32 138
  %internal_offset.addr.0.i2088 = select i1 %cmp6.i2079, i32 %spec.select.i2082, i32 %spec.select39.i2086
  %base.0.i2089.in.idx = select i1 %cmp6.i2079, i32 0, i32 2
  %base.0.i2089.in = getelementptr i32, ptr %396, i32 %base.0.i2089.in.idx
  %397 = ptrtoint ptr %base.0.i2089.in to i32
  call void @__asan_load4_noabort(i32 %397)
  %base.0.i2089 = load i32, ptr %base.0.i2089.in, align 4
  %add27.i2090 = add i32 %base.0.i2089, %internal_offset.addr.0.i2088
  tail call void %394(ptr noundef %adev, i32 noundef %add27.i2090, i32 noundef %or833, i32 noundef 0, i32 noundef 1) #11
  br label %cond.end857

cond.false855:                                    ; preds = %land.lhs.true843.cond.false855_crit_edge, %land.lhs.true838.cond.false855_crit_edge, %cond.end828.cond.false855_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.02107)
  %cmp6.i2092 = icmp ult i32 %i.02107, 2
  %398 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.02107)
  %cmp12.i2094 = icmp eq i32 %i.02107, 1
  %spec.select.i2095 = select i1 %cmp12.i2094, i32 1674, i32 138
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.02107)
  %cmp21.i2098 = icmp eq i32 %i.02107, 3
  %spec.select39.i2099 = select i1 %cmp21.i2098, i32 1162, i32 138
  %internal_offset.addr.0.i2101 = select i1 %cmp6.i2092, i32 %spec.select.i2095, i32 %spec.select39.i2099
  %base.0.i2102.in.idx = select i1 %cmp6.i2092, i32 0, i32 2
  %base.0.i2102.in = getelementptr i32, ptr %399, i32 %base.0.i2102.in.idx
  %400 = ptrtoint ptr %base.0.i2102.in to i32
  call void @__asan_load4_noabort(i32 %400)
  %base.0.i2102 = load i32, ptr %base.0.i2102.in, align 4
  %add27.i2103 = add i32 %base.0.i2102, %internal_offset.addr.0.i2101
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i2103, i32 noundef %or833, i32 noundef 0) #11
  br label %cond.end857

cond.end857:                                      ; preds = %cond.false855, %cond.true849
  %ready = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 3, i32 17
  %401 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 1, ptr %ready, align 4
  %402 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %virt, align 8
  %and860 = and i32 %403, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and860)
  %tobool861.not = icmp eq i32 %and860, 0
  br i1 %tobool861.not, label %cond.end857.if.end863_crit_edge, label %if.then862

cond.end857.if.end863_crit_edge:                  ; preds = %cond.end857
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end863

if.then862:                                       ; preds = %cond.end857
  tail call fastcc void @sdma_v5_2_ctx_switch_enable(ptr noundef %adev, i1 noundef zeroext true)
  %404 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %virt, align 8
  %and.i = and i32 %405, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.cond.preheader.i, label %if.then862.if.end863_crit_edge

if.then862.if.end863_crit_edge:                   ; preds = %if.then862
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end863

for.cond.preheader.i:                             ; preds = %if.then862
  %406 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %cmp35.i = icmp sgt i32 %407, 0
  br i1 %cmp35.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end863_crit_edge

for.cond.preheader.i.if.end863_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end863

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.036.i)
  %cmp6.i.i = icmp ult i32 %i.036.i, 2
  %408 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.036.i)
  %cmp12.i.i = icmp eq i32 %i.036.i, 1
  %spec.select.i.i = select i1 %cmp12.i.i, i32 1578, i32 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.036.i)
  %cmp21.i21.i = icmp eq i32 %i.036.i, 3
  %spec.select39.i.i = select i1 %cmp21.i21.i, i32 1066, i32 42
  %internal_offset.addr.0.i.i = select i1 %cmp6.i.i, i32 %spec.select.i.i, i32 %spec.select39.i.i
  %base.0.i.in.idx.i = select i1 %cmp6.i.i, i32 0, i32 2
  %base.0.i.in.i = getelementptr i32, ptr %409, i32 %base.0.i.in.idx.i
  %410 = ptrtoint ptr %base.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %base.0.i.i = load i32, ptr %base.0.i.in.i, align 4
  %add27.i.i = add i32 %internal_offset.addr.0.i.i, %base.0.i.i
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add27.i.i, i32 noundef 0) #11
  %and4.i = and i32 %call3.i, -2
  %411 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %arrayidx9.i, align 8
  %base.0.i32.in.i = getelementptr i32, ptr %412, i32 %base.0.i.in.idx.i
  %413 = ptrtoint ptr %base.0.i32.in.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %base.0.i32.i = load i32, ptr %base.0.i32.in.i, align 4
  %add27.i33.i = add i32 %base.0.i32.i, %internal_offset.addr.0.i.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add27.i33.i, i32 noundef %and4.i, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %414 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %num_instances, align 4
  %cmp.i2105 = icmp slt i32 %inc.i, %415
  br i1 %cmp.i2105, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end863_crit_edge

for.body.i.if.end863_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end863

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end863:                                        ; preds = %for.body.i.if.end863_crit_edge, %for.cond.preheader.i.if.end863_crit_edge, %if.then862.if.end863_crit_edge, %cond.end857.if.end863_crit_edge
  %funcs864 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.02107, i32 3, i32 1
  %416 = ptrtoint ptr %funcs864 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %funcs864, align 4
  %test_ring = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %417, i32 0, i32 20
  %418 = ptrtoint ptr %test_ring to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %test_ring, align 4
  %call865 = tail call i32 %419(ptr noundef %ring2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call865)
  %tobool866.not = icmp eq i32 %call865, 0
  br i1 %tobool866.not, label %if.end870, label %if.then867

if.then867:                                       ; preds = %if.end863
  call void @__sanitizer_cov_trace_pc() #13
  %420 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 0, ptr %ready, align 4
  br label %cleanup

if.end870:                                        ; preds = %if.end863
  %421 = ptrtoint ptr %buffer_funcs_ring to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %buffer_funcs_ring, align 4
  %cmp871 = icmp eq ptr %422, %ring2
  br i1 %cmp871, label %if.then873, label %if.end870.for.inc_crit_edge

if.end870.for.inc_crit_edge:                      ; preds = %if.end870
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then873:                                       ; preds = %if.end870
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext true) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then873, %if.end870.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.02107, 1
  %423 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %424
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then867, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call865, %if.then867 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_off_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_sdma_hdr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kiq_rreg(ptr noundef, i32 noundef) local_unnamed_addr #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__UNIQUE_ID_firmware390, !1, !"__UNIQUE_ID_firmware390", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware391, !3, !"__UNIQUE_ID_firmware391", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 48, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware392, !5, !"__UNIQUE_ID_firmware392", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 49, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware393, !7, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 50, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware394, !9, !"__UNIQUE_ID_firmware394", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 52, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware395, !11, !"__UNIQUE_ID_firmware395", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 53, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1654, i32 10}
!14 = !{ptr @sdma_v5_2_ip_funcs, !15, !"sdma_v5_2_ip_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1653, i32 27}
!16 = !{ptr @sdma_v5_2_ip_block, !17, !"sdma_v5_2_ip_block", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1826, i32 38}
!18 = !{ptr @sdma_v5_2_ring_funcs, !19, !"sdma_v5_2_ring_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1671, i32 39}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 245, i32 2}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 264, i32 3}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 269, i32 3}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 286, i32 2}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 288, i32 3}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 298, i32 3}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 302, i32 3}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 920, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sdma_v5_2_ring_test_ring._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @sdma_v5_2_ring_test_ring._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 930, i32 3}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 982, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sdma_v5_2_ring_test_ib._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sdma_v5_2_ring_test_ib._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 992, i32 3}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1013, i32 3}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1017, i32 3}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1430, i32 3}
!59 = !{ptr @sdma_v5_2_buffer_funcs, !60, !"sdma_v5_2_buffer_funcs", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1787, i32 41}
!61 = !{ptr @sdma_v5_2_vm_pte_funcs, !62, !"sdma_v5_2_vm_pte_funcs", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1805, i32 41}
!63 = !{ptr @sdma_v5_2_trap_irq_funcs, !64, !"sdma_v5_2_trap_irq_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1718, i32 42}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1463, i32 2}
!67 = !{ptr @sdma_v5_2_illegal_inst_irq_funcs, !68, !"sdma_v5_2_illegal_inst_irq_funcs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1723, i32 42}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1285, i32 3}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1295, i32 3}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sdma_v5_2_sw_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sdma_v5_2_sw_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 1301, i32 23}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 137, i32 2}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 141, i32 15}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 144, i32 15}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 147, i32 15}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 150, i32 15}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 153, i32 15}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 156, i32 15}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 162, i32 37}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 180, i32 2}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 196, i32 3}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 535, i32 4}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c", i32 830, i32 3}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2165915984, i64 2165916487, i64 2165916021, i64 2165916077, i64 2165916111, i64 2165916135, i64 2165916176, i64 2165916197, i64 2165916225, i64 2165916259}
!115 = !{i8 0, i8 2}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2165930108, i64 2165930611, i64 2165930145, i64 2165930201, i64 2165930235, i64 2165930259, i64 2165930300, i64 2165930321, i64 2165930349, i64 2165930383}
!118 = !{!"auto-init"}
!119 = !{i64 2148331024}
!120 = !{i64 2148245488, i64 2148245520, i64 2148245549, i64 2148245583, i64 2148245614, i64 2148245637}
!121 = !{i64 2149609742}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 2165919137, i64 2165919640, i64 2165919174, i64 2165919230, i64 2165919264, i64 2165919288, i64 2165919329, i64 2165919350, i64 2165919378, i64 2165919412}
!124 = !{i64 2165920814, i64 2165921317, i64 2165920851, i64 2165920907, i64 2165920941, i64 2165920965, i64 2165921006, i64 2165921027, i64 2165921055, i64 2165921089}
!125 = !{i32 0, i32 33}
