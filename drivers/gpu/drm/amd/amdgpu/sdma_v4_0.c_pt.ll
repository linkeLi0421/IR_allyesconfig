; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c"
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_sdma_ras_funcs = type { ptr, ptr, ptr, ptr }
%struct.soc15_ras_field_entry = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ras_ih_if = type { %struct.ras_common_if, ptr }
%struct.ras_common_if = type { i32, i32, i32, [32 x i8] }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.sdma_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
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
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ras_err_data = type { i32, i32, i32, ptr }

@__UNIQUE_ID_firmware390 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/vega10_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware391 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/vega10_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware392 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/vega12_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware393 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/vega12_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware394 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/vega20_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware395 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/vega20_sdma1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware396 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/raven_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware397 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/picasso_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware398 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/raven2_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware399 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/arcturus_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware400 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/renoir_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware401 = internal constant [46 x i8] c"amdgpu.firmware=amdgpu/green_sardine_sdma.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware402 = internal constant [42 x i8] c"amdgpu.firmware=amdgpu/aldebaran_sdma.bin\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma_v4_0\00", [22 x i8] zeroinitializer }, align 32
@sdma_v4_0_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @sdma_v4_0_early_init, ptr @sdma_v4_0_late_init, ptr @sdma_v4_0_sw_init, ptr @sdma_v4_0_sw_fini, ptr null, ptr @sdma_v4_0_hw_init, ptr @sdma_v4_0_hw_fini, ptr null, ptr @sdma_v4_0_suspend, ptr @sdma_v4_0_resume, ptr @sdma_v4_0_is_idle, ptr @sdma_v4_0_wait_for_idle, ptr null, ptr null, ptr @sdma_v4_0_soft_reset, ptr null, ptr @sdma_v4_0_set_clockgating_state, ptr @sdma_v4_0_set_powergating_state, ptr @sdma_v4_0_get_clockgating_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@sdma_v4_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 7, i32 4, i32 0, i32 0, ptr @sdma_v4_0_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to load sdma firmware!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vega10\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vega12\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vega20\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"raven2\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"picasso\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"raven\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arcturus\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"renoir\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"green_sardine\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aldebaran\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu/%s_sdma.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/%s_sdma%d.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"psp_load == '%s'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sdma_v4_0: Failed to load firmware \22%s\22\0A\00", [55 x i8] zeroinitializer }, align 32
@sdma_v4_0_ring_funcs_2nd_mmhub = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 0, i8 1, i8 0, i32 2, i32 0, ptr @sdma_v4_0_ring_get_rptr, ptr @sdma_v4_0_ring_get_wptr, ptr @sdma_v4_0_ring_set_wptr, ptr null, ptr null, i32 81, i32 13, ptr @sdma_v4_0_ring_emit_ib, ptr @sdma_v4_0_ring_emit_fence, ptr @sdma_v4_0_ring_emit_pipeline_sync, ptr @sdma_v4_0_ring_emit_vm_flush, ptr @sdma_v4_0_ring_emit_hdp_flush, ptr null, ptr @sdma_v4_0_ring_test_ring, ptr @sdma_v4_0_ring_test_ib, ptr @sdma_v4_0_ring_insert_nop, ptr null, ptr null, ptr @sdma_v4_0_ring_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdma_v4_0_ring_emit_wreg, ptr @sdma_v4_0_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sdma_v4_0_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 0, i8 1, i8 0, i32 1, i32 0, ptr @sdma_v4_0_ring_get_rptr, ptr @sdma_v4_0_ring_get_wptr, ptr @sdma_v4_0_ring_set_wptr, ptr null, ptr null, i32 81, i32 13, ptr @sdma_v4_0_ring_emit_ib, ptr @sdma_v4_0_ring_emit_fence, ptr @sdma_v4_0_ring_emit_pipeline_sync, ptr @sdma_v4_0_ring_emit_vm_flush, ptr @sdma_v4_0_ring_emit_hdp_flush, ptr null, ptr @sdma_v4_0_ring_test_ring, ptr @sdma_v4_0_ring_test_ib, ptr @sdma_v4_0_ring_insert_nop, ptr null, ptr null, ptr @sdma_v4_0_ring_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdma_v4_0_ring_emit_wreg, ptr @sdma_v4_0_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sdma_v4_0_page_ring_funcs_2nd_mmhub = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 0, i8 1, i8 0, i32 2, i32 0, ptr @sdma_v4_0_ring_get_rptr, ptr @sdma_v4_0_page_ring_get_wptr, ptr @sdma_v4_0_page_ring_set_wptr, ptr null, ptr null, i32 81, i32 13, ptr @sdma_v4_0_ring_emit_ib, ptr @sdma_v4_0_ring_emit_fence, ptr @sdma_v4_0_ring_emit_pipeline_sync, ptr @sdma_v4_0_ring_emit_vm_flush, ptr @sdma_v4_0_ring_emit_hdp_flush, ptr null, ptr @sdma_v4_0_ring_test_ring, ptr @sdma_v4_0_ring_test_ib, ptr @sdma_v4_0_ring_insert_nop, ptr null, ptr null, ptr @sdma_v4_0_ring_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdma_v4_0_ring_emit_wreg, ptr @sdma_v4_0_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sdma_v4_0_page_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 0, i8 1, i8 0, i32 1, i32 0, ptr @sdma_v4_0_ring_get_rptr, ptr @sdma_v4_0_page_ring_get_wptr, ptr @sdma_v4_0_page_ring_set_wptr, ptr null, ptr null, i32 81, i32 13, ptr @sdma_v4_0_ring_emit_ib, ptr @sdma_v4_0_ring_emit_fence, ptr @sdma_v4_0_ring_emit_pipeline_sync, ptr @sdma_v4_0_ring_emit_vm_flush, ptr @sdma_v4_0_ring_emit_hdp_flush, ptr null, ptr @sdma_v4_0_ring_test_ring, ptr @sdma_v4_0_ring_test_ib, ptr @sdma_v4_0_ring_insert_nop, ptr null, ptr null, ptr @sdma_v4_0_ring_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdma_v4_0_ring_emit_wreg, ptr @sdma_v4_0_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rptr before shift == 0x%016llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wptr/doorbell before shift == 0x%016llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wptr before shift [%i] wptr == 0x%016llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting write pointer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"Using doorbell -- wptr_offs == 0x%08x lower_32_bits(ring->wptr) << 2 == 0x%08x upper_32_bits(ring->wptr) << 2 == 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"calling WDOORBELL64(0x%08x, 0x%016llx)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Not using doorbell -- mmSDMA%i_GFX_RB_WPTR == 0x%08x mmSDMA%i_GFX_RB_WPTR_HI == 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sdma_v4_0_buffer_funcs = internal constant { %struct.amdgpu_buffer_funcs, [40 x i8] } { %struct.amdgpu_buffer_funcs { i32 4194304, i32 7, ptr @sdma_v4_0_emit_copy_buffer, i32 4194304, i32 5, ptr @sdma_v4_0_emit_fill_buffer }, [40 x i8] zeroinitializer }, align 32
@sdma_v4_0_vm_pte_funcs = internal constant { %struct.amdgpu_vm_pte_funcs, [16 x i8] } { %struct.amdgpu_vm_pte_funcs { i32 7, ptr @sdma_v4_0_vm_copy_pte, ptr @sdma_v4_0_vm_write_pte, ptr @sdma_v4_0_vm_set_pte_pde }, [16 x i8] zeroinitializer }, align 32
@sdma_v4_0_trap_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @sdma_v4_0_set_trap_irq_state, ptr @sdma_v4_0_process_trap_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v4_0_illegal_inst_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @sdma_v4_0_process_illegal_inst_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v4_0_ecc_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @sdma_v4_0_set_ecc_irq_state, ptr @amdgpu_sdma_process_ecc_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v4_0_vm_hole_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @sdma_v4_0_process_vm_hole_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v4_0_doorbell_invalid_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @sdma_v4_0_process_doorbell_invalid_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v4_0_pool_timeout_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @sdma_v4_0_process_pool_timeout_irq }, [24 x i8] zeroinitializer }, align 32
@sdma_v4_0_srbm_write_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr null, ptr @sdma_v4_0_process_srbm_write_irq }, [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IH: SDMA trap\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Illegal instruction in SDMA command stream\0A\00", [52 x i8] zeroinitializer }, align 32
@sdma_v4_0_process_vm_hole_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@sdma_v4_0_process_vm_hole_irq.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, i8 2, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sdma_v4_0_process_vm_hole_irq\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MC or SEM address in VM hole\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: MC or SEM address in VM hole\0A\00", [58 x i8] zeroinitializer }, align 32
@sdma_v4_0_print_iv_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.32, i32 2228, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: sdma instance invalid %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdma_v4_0_print_iv_entry\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdma_v4_0_print_iv_entry._entry_ptr = internal global ptr @sdma_v4_0_print_iv_entry._entry, section ".printk_index", align 4
@sdma_v4_0_print_iv_entry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sdma_v4_0_print_iv_entry.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.36, ptr @.str.32, ptr @.str.39, i8 2, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"[sdma%d] address:0x%016llx src_id:%u ring:%u vmid:%u pasid:%u, for process %s pid %d thread %s pid %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"amdgpu: [sdma%d] address:0x%016llx src_id:%u ring:%u vmid:%u pasid:%u, for process %s pid %d thread %s pid %d\0A\00", [49 x i8] zeroinitializer }, align 32
@sdma_v4_0_process_doorbell_invalid_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sdma_v4_0_process_doorbell_invalid_irq.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.41, ptr @.str.32, ptr @.str.42, i8 2, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sdma_v4_0_process_doorbell_invalid_irq\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"SDMA received a doorbell from BIF with byte_enable !=0xff\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu: SDMA received a doorbell from BIF with byte_enable !=0xff\0A\00", [61 x i8] zeroinitializer }, align 32
@sdma_v4_0_process_pool_timeout_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sdma_v4_0_process_pool_timeout_irq.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.44, ptr @.str.32, ptr @.str.45, i8 2, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sdma_v4_0_process_pool_timeout_irq\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Polling register/memory timeout executing POLL_REG/MEM with finite timer\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"amdgpu: Polling register/memory timeout executing POLL_REG/MEM with finite timer\0A\00", [46 x i8] zeroinitializer }, align 32
@sdma_v4_0_process_srbm_write_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sdma_v4_0_process_srbm_write_irq.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.47, ptr @.str.32, ptr @.str.48, i8 2, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sdma_v4_0_process_srbm_write_irq\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"SDMA gets an Register Write SRBM_WRITE command in non-privilege command buffer\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"amdgpu: SDMA gets an Register Write SRBM_WRITE command in non-privilege command buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@sdma_v4_0_ras_funcs = internal constant { %struct.amdgpu_sdma_ras_funcs, [16 x i8] } { %struct.amdgpu_sdma_ras_funcs { ptr @amdgpu_sdma_ras_late_init, ptr @amdgpu_sdma_ras_fini, ptr @sdma_v4_0_query_ras_error_count, ptr @sdma_v4_0_reset_ras_error_count }, [16 x i8] zeroinitializer }, align 32
@sdma_v4_4_ras_funcs = external dso_local constant %struct.amdgpu_sdma_ras_funcs, align 4
@sdma_v4_0_ras_fields = internal constant { [24 x %struct.soc15_ras_field_entry], [192 x i8] } { [24 x %struct.soc15_ras_field_entry] [%struct.soc15_ras_field_entry { ptr @.str.52, i32 3, i32 0, i32 0, i32 54, i32 1, i32 0, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.53, i32 3, i32 0, i32 0, i32 54, i32 4, i32 2, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.54, i32 3, i32 0, i32 0, i32 54, i32 8, i32 3, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.55, i32 3, i32 0, i32 0, i32 54, i32 16, i32 4, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.56, i32 3, i32 0, i32 0, i32 54, i32 32, i32 5, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.57, i32 3, i32 0, i32 0, i32 54, i32 64, i32 6, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.58, i32 3, i32 0, i32 0, i32 54, i32 128, i32 7, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.59, i32 3, i32 0, i32 0, i32 54, i32 256, i32 8, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.60, i32 3, i32 0, i32 0, i32 54, i32 512, i32 9, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.61, i32 3, i32 0, i32 0, i32 54, i32 1024, i32 10, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.62, i32 3, i32 0, i32 0, i32 54, i32 2048, i32 11, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.63, i32 3, i32 0, i32 0, i32 54, i32 4096, i32 12, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.64, i32 3, i32 0, i32 0, i32 54, i32 8192, i32 13, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.65, i32 3, i32 0, i32 0, i32 54, i32 16384, i32 14, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.66, i32 3, i32 0, i32 0, i32 54, i32 32768, i32 15, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.67, i32 3, i32 0, i32 0, i32 54, i32 65536, i32 16, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.68, i32 3, i32 0, i32 0, i32 54, i32 131072, i32 17, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.69, i32 3, i32 0, i32 0, i32 54, i32 262144, i32 18, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.70, i32 3, i32 0, i32 0, i32 54, i32 524288, i32 19, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.71, i32 3, i32 0, i32 0, i32 54, i32 1048576, i32 20, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.72, i32 3, i32 0, i32 0, i32 54, i32 2097152, i32 21, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.73, i32 3, i32 0, i32 0, i32 54, i32 4194304, i32 22, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.74, i32 3, i32 0, i32 0, i32 54, i32 8388608, i32 23, i32 0, i32 0 }, %struct.soc15_ras_field_entry { ptr @.str.75, i32 3, i32 0, i32 0, i32 54, i32 16777216, i32 24, i32 0, i32 0 }], [192 x i8] zeroinitializer }, align 32
@sdma_v4_0_get_ras_error_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.32, i32 2745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] Detected %s in SDMA%d, SED %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sdma_v4_0_get_ras_error_count\00", [34 x i8] zeroinitializer }, align 32
@sdma_v4_0_get_ras_error_count._entry_ptr = internal global ptr @sdma_v4_0_get_ras_error_count._entry, section ".printk_index", align 4
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SDMA_UCODE_BUF_SED\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SDMA_RB_CMD_BUF_SED\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SDMA_IB_CMD_BUF_SED\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SDMA_UTCL1_RD_FIFO_SED\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDMA_UTCL1_RDBST_FIFO_SED\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SDMA_DATA_LUT_FIFO_SED\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF0_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF1_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF2_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF3_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF4_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF5_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF6_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF7_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF8_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MBANK_DATA_BUF9_SED\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDMA_MBANK_DATA_BUF10_SED\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDMA_MBANK_DATA_BUF11_SED\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDMA_MBANK_DATA_BUF12_SED\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDMA_MBANK_DATA_BUF13_SED\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDMA_MBANK_DATA_BUF14_SED\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDMA_MBANK_DATA_BUF15_SED\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SDMA_SPLIT_DAT_BUF_SED\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SDMA_MC_WR_ADDR_FIFO_SED\00", [39 x i8] zeroinitializer }, align 32
@__const.sdma_v4_0_late_init.ih_info = private unnamed_addr constant %struct.ras_ih_if { %struct.ras_common_if zeroinitializer, ptr @sdma_v4_0_process_ras_data_cb }, align 4
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SDMA %d use_doorbell being set to: [%s]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdma%d\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"page%d\00", [25 x i8] zeroinitializer }, align 32
@golden_settings_sdma_4 = internal constant { [25 x %struct.soc15_reg_golden], [136 x i8] } { [25 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 29, i32 -23912697, i32 42147079 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 27, i32 -16773136, i32 1056964864 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 138, i32 -2146500352, i32 256 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 135, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 234, i32 -2146500352, i32 256 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 231, i32 65520, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 26, i32 4190214, i32 245760 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 330, i32 -2146500352, i32 256 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 327, i32 65520, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 426, i32 -2146500352, i32 256 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 423, i32 65520, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 72, i32 1023, i32 960 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 61, i32 -67108864, i32 0 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 27, i32 -1, i32 1056964864 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 138, i32 -2146500352, i32 256 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 135, i32 65520, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 234, i32 -2146500352, i32 256 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 231, i32 65520, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 26, i32 4190208, i32 245760 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 330, i32 -2146500352, i32 256 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 327, i32 65520, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 426, i32 -2146500352, i32 256 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 423, i32 65520, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 72, i32 1023, i32 960 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 61, i32 -67108864, i32 0 }], [136 x i8] zeroinitializer }, align 32
@golden_settings_sdma_vg10 = internal constant { [7 x %struct.soc15_reg_golden], [56 x i8] } { [7 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 30, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 31, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 29, i32 -23912697, i32 42147079 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 30, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 31, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 71, i32 -1, i32 65537 }], [56 x i8] zeroinitializer }, align 32
@golden_settings_sdma_vg12 = internal constant { [7 x %struct.soc15_reg_golden], [56 x i8] } { [7 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 30, i32 1603391, i32 1064961 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 31, i32 1603391, i32 1064961 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 29, i32 -23912697, i32 42147079 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 30, i32 1603391, i32 1064961 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 31, i32 1603391, i32 1064961 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 71, i32 -1, i32 65537 }], [56 x i8] zeroinitializer }, align 32
@golden_settings_sdma0_4_2_init = internal constant { [1 x %struct.soc15_reg_golden], [40 x i8] } { [1 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 327, i32 -16, i32 4206592 }], [40 x i8] zeroinitializer }, align 32
@golden_settings_sdma0_4_2 = internal constant { [27 x %struct.soc15_reg_golden], [184 x i8] } { [27 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 27, i32 -1, i32 1056964864 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 137, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 135, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 233, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 231, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 39, i32 15, i32 3 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 329, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 327, i32 -16, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 425, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 423, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 521, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 519, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 617, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 615, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 713, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 711, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 809, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 807, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 905, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 903, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 1001, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 999, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 72, i32 1023, i32 960 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 71, i32 -1, i32 65537 }], [184 x i8] zeroinitializer }, align 32
@golden_settings_sdma1_4_2 = internal constant { [27 x %struct.soc15_reg_golden], [184 x i8] } { [27 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 27, i32 -1, i32 1056964864 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 137, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 135, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 233, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 231, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 39, i32 15, i32 3 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 329, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 327, i32 -16, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 425, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 423, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 521, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 519, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 617, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 615, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 713, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 711, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 809, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 807, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 905, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 903, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 1001, i32 -3, i32 1 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 999, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 72, i32 1023, i32 960 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 71, i32 -1, i32 65537 }], [184 x i8] zeroinitializer }, align 32
@golden_settings_sdma_arct = internal constant { [32 x %struct.soc15_reg_golden], [192 x i8] } { [32 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 5, i32 0, i32 1, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 5, i32 0, i32 1, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 5, i32 0, i32 1, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 5, i32 0, i32 1, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 6, i32 0, i32 1, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 6, i32 0, i32 1, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 6, i32 0, i32 1, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 6, i32 0, i32 1, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 7, i32 0, i32 1, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 7, i32 0, i32 1, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 7, i32 0, i32 1, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 7, i32 0, i32 1, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 8, i32 0, i32 1, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 8, i32 0, i32 1, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 8, i32 0, i32 1, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 8, i32 0, i32 1, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 9, i32 0, i32 1, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 9, i32 0, i32 1, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 9, i32 0, i32 1, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 9, i32 0, i32 1, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 10, i32 0, i32 1, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 10, i32 0, i32 1, i32 30, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 10, i32 0, i32 1, i32 31, i32 30527, i32 16386 }, %struct.soc15_reg_golden { i32 10, i32 0, i32 1, i32 71, i32 -1, i32 65537 }], [192 x i8] zeroinitializer }, align 32
@golden_settings_sdma_aldebaran = internal constant { [15 x %struct.soc15_reg_golden], [88 x i8] } { [15 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 30, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 31, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 30, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 31, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 4, i32 0, i32 0, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 5, i32 0, i32 1, i32 30, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 5, i32 0, i32 1, i32 31, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 6, i32 0, i32 1, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 6, i32 0, i32 1, i32 30, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 6, i32 0, i32 1, i32 31, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 6, i32 0, i32 1, i32 71, i32 -1, i32 65537 }, %struct.soc15_reg_golden { i32 7, i32 0, i32 1, i32 30, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 7, i32 0, i32 1, i32 31, i32 1603391, i32 1064962 }, %struct.soc15_reg_golden { i32 7, i32 0, i32 1, i32 71, i32 -1, i32 65537 }], [88 x i8] zeroinitializer }, align 32
@golden_settings_sdma_4_1 = internal constant { [11 x %struct.soc15_reg_golden], [88 x i8] } { [11 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 29, i32 -23912697, i32 42147079 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 27, i32 -1, i32 1056964864 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 138, i32 -2146500335, i32 256 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 135, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 26, i32 -62914561, i32 1073741905 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 330, i32 -2146500335, i32 256 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 327, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 426, i32 -2146500335, i32 256 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 423, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 72, i32 1023, i32 992 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 61, i32 -67108864, i32 0 }], [88 x i8] zeroinitializer }, align 32
@golden_settings_sdma_rv2 = internal constant { [2 x %struct.soc15_reg_golden], [48 x i8] } { [2 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 30, i32 1603391, i32 12289 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 31, i32 1603391, i32 12289 }], [48 x i8] zeroinitializer }, align 32
@golden_settings_sdma_rv1 = internal constant { [2 x %struct.soc15_reg_golden], [48 x i8] } { [2 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 30, i32 1603391, i32 2 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 31, i32 1603391, i32 2 }], [48 x i8] zeroinitializer }, align 32
@golden_settings_sdma_4_3 = internal constant { [10 x %struct.soc15_reg_golden], [48 x i8] } { [10 x %struct.soc15_reg_golden] [%struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 29, i32 -23912697, i32 42147591 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 27, i32 -1, i32 1056964864 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 30, i32 1603391, i32 2 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 31, i32 1603391, i32 2 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 135, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 26, i32 4194055, i32 1073741905 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 327, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 423, i32 -9, i32 4206592 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 72, i32 1023, i32 992 }, %struct.soc15_reg_golden { i32 3, i32 0, i32 0, i32 61, i32 -67108864, i32 66839038 }], [48 x i8] zeroinitializer }, align 32
@amdgpu_sdma_phase_quantum = external dso_local local_unnamed_addr global i32, align 4
@sdma_v4_0_ctx_switch_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"clamping sdma_phase_quantum to %uK clock cycles\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.sdma_v4_0_sw_init = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 9, i32 1, i32 4, i32 5, i32 17, i32 19, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.sdma_v4_0_sw_init.80 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 9, i32 1, i32 4, i32 5, i32 17, i32 19, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.sdma_v4_0_sw_init.81 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 9, i32 1, i32 4, i32 5, i32 17, i32 19, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.sdma_v4_0_sw_init.82 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 9, i32 1, i32 4, i32 5, i32 17, i32 19, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.sdma_v4_0_sw_init.83 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 9, i32 1, i32 4, i32 5, i32 17, i32 19, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.sdma_v4_0_sw_init.84 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 9, i32 1, i32 4, i32 5, i32 17, i32 19, i32 24], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 262144, i64 262145, i64 262400, i64 262401, i64 262402, i64 262656, i64 262658, i64 263168]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 262658, i64 263168]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 262658, i64 263168]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 262656, i64 262658, i64 263168]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 262144, i64 262656]
@__sancov_gen_cov_switch_values.90 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.91 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 262658, i64 263168]
@__sancov_gen_cov_switch_values.93 = internal global [10 x i64] [i64 8, i64 32, i64 262144, i64 262145, i64 262400, i64 262401, i64 262402, i64 262656, i64 262658, i64 263168]
@__sancov_gen_cov_switch_values.94 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.95 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.96 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.97 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.98 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.99 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.100 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.101 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.102 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.103 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.104 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.105 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.106 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.107 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.108 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.109 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.110 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.111 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.112 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.113 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.114 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.115 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.116 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.117 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.118 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.119 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.120 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.121 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.122 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.123 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.124 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.125 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.126 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.127 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.128 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.129 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.130 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.131 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.132 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.133 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.134 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.135 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.136 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.137 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.138 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.139 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.140 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.141 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.142 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.143 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.144 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.145 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.146 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.147 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.148 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.149 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.150 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.151 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.152 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.153 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.154 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.155 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.156 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.157 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.158 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.159 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.160 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.161 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.162 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.163 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.164 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 4, i64 5, i64 8, i64 9, i64 17, i64 19, i64 24]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 4, i64 5, i64 8, i64 9, i64 17, i64 19, i64 24]
@__sancov_gen_cov_switch_values.167 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.168 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.169 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 4, i64 5, i64 8, i64 9, i64 17, i64 19, i64 24]
@__sancov_gen_cov_switch_values.170 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.171 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.172 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 4, i64 5, i64 8, i64 9, i64 17, i64 19, i64 24]
@__sancov_gen_cov_switch_values.173 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.174 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.175 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.176 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.177 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.178 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.179 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.180 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.181 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.182 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.183 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.184 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.185 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.186 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.187 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.188 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.189 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2404, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"sdma_v4_0_ip_funcs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2403, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"sdma_v4_0_ip_block\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2806, i32 38 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1861, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 622, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 626, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 629, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 632, i32 15 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 637, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 639, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 641, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 644, i32 15 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 648, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 650, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 653, i32 15 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 659, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 679, i32 39 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 691, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 707, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [31 x i8] c"sdma_v4_0_ring_funcs_2nd_mmhub\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2457, i32 39 }
@___asan_gen_.256 = private unnamed_addr constant [21 x i8] c"sdma_v4_0_ring_funcs\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2421, i32 39 }
@___asan_gen_.259 = private unnamed_addr constant [36 x i8] c"sdma_v4_0_page_ring_funcs_2nd_mmhub\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2521, i32 39 }
@___asan_gen_.262 = private unnamed_addr constant [26 x i8] c"sdma_v4_0_page_ring_funcs\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2489, i32 39 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 727, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 746, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 751, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 769, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 773, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 782, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 786, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 314, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [23 x i8] c"sdma_v4_0_buffer_funcs\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2684, i32 41 }
@___asan_gen_.292 = private unnamed_addr constant [23 x i8] c"sdma_v4_0_vm_pte_funcs\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2703, i32 41 }
@___asan_gen_.295 = private unnamed_addr constant [25 x i8] c"sdma_v4_0_trap_irq_funcs\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2577, i32 42 }
@___asan_gen_.298 = private unnamed_addr constant [33 x i8] c"sdma_v4_0_illegal_inst_irq_funcs\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2582, i32 42 }
@___asan_gen_.301 = private unnamed_addr constant [24 x i8] c"sdma_v4_0_ecc_irq_funcs\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2586, i32 42 }
@___asan_gen_.304 = private unnamed_addr constant [28 x i8] c"sdma_v4_0_vm_hole_irq_funcs\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2591, i32 42 }
@___asan_gen_.307 = private unnamed_addr constant [37 x i8] c"sdma_v4_0_doorbell_invalid_irq_funcs\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2595, i32 42 }
@___asan_gen_.310 = private unnamed_addr constant [33 x i8] c"sdma_v4_0_pool_timeout_irq_funcs\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2599, i32 42 }
@___asan_gen_.313 = private unnamed_addr constant [31 x i8] c"sdma_v4_0_srbm_write_irq_funcs\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2603, i32 42 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2140, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2190, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2251, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2228, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2238, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2260, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2269, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2279, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c"sdma_v4_0_ras_funcs\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2784, i32 43 }
@___asan_gen_.406 = private unnamed_addr constant [21 x i8] c"sdma_v4_0_ras_fields\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 295, i32 43 }
@___asan_gen_.409 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2743, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 296, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 300, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 304, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 308, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 312, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 316, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 320, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 324, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 328, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 332, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 336, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 340, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 344, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 348, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 352, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 356, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 360, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 364, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 368, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 372, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 376, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 380, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 384, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 388, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1962, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1968, i32 23 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1986, i32 24 }
@___asan_gen_.499 = private unnamed_addr constant [23 x i8] c"golden_settings_sdma_4\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 89, i32 38 }
@___asan_gen_.502 = private unnamed_addr constant [26 x i8] c"golden_settings_sdma_vg10\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 117, i32 38 }
@___asan_gen_.505 = private unnamed_addr constant [26 x i8] c"golden_settings_sdma_vg12\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 127, i32 38 }
@___asan_gen_.508 = private unnamed_addr constant [31 x i8] c"golden_settings_sdma0_4_2_init\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 151, i32 38 }
@___asan_gen_.511 = private unnamed_addr constant [26 x i8] c"golden_settings_sdma0_4_2\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 155, i32 38 }
@___asan_gen_.514 = private unnamed_addr constant [26 x i8] c"golden_settings_sdma1_4_2\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 186, i32 38 }
@___asan_gen_.517 = private unnamed_addr constant [26 x i8] c"golden_settings_sdma_arct\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 228, i32 38 }
@___asan_gen_.520 = private unnamed_addr constant [31 x i8] c"golden_settings_sdma_aldebaran\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 264, i32 38 }
@___asan_gen_.523 = private unnamed_addr constant [25 x i8] c"golden_settings_sdma_4_1\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 137, i32 38 }
@___asan_gen_.526 = private unnamed_addr constant [25 x i8] c"golden_settings_sdma_rv2\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 222, i32 38 }
@___asan_gen_.529 = private unnamed_addr constant [25 x i8] c"golden_settings_sdma_rv1\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 216, i32 38 }
@___asan_gen_.532 = private unnamed_addr constant [25 x i8] c"golden_settings_sdma_4_3\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 282, i32 38 }
@___asan_gen_.535 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.536 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1086, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant [31 x i8] c"switch.table.sdma_v4_0_sw_init\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [34 x i8] c"switch.table.sdma_v4_0_sw_init.80\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [34 x i8] c"switch.table.sdma_v4_0_sw_init.81\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [34 x i8] c"switch.table.sdma_v4_0_sw_init.82\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [34 x i8] c"switch.table.sdma_v4_0_sw_init.83\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [34 x i8] c"switch.table.sdma_v4_0_sw_init.84\00", align 1
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_firmware390, ptr @__UNIQUE_ID_firmware391, ptr @__UNIQUE_ID_firmware392, ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_firmware394, ptr @__UNIQUE_ID_firmware395, ptr @__UNIQUE_ID_firmware396, ptr @__UNIQUE_ID_firmware397, ptr @__UNIQUE_ID_firmware398, ptr @__UNIQUE_ID_firmware399, ptr @__UNIQUE_ID_firmware400, ptr @__UNIQUE_ID_firmware401, ptr @__UNIQUE_ID_firmware402, ptr @sdma_v4_0_get_ras_error_count._entry, ptr @sdma_v4_0_get_ras_error_count._entry_ptr, ptr @sdma_v4_0_print_iv_entry._entry, ptr @sdma_v4_0_print_iv_entry._entry_ptr, ptr @.str, ptr @sdma_v4_0_ip_funcs, ptr @sdma_v4_0_ip_block, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @sdma_v4_0_ring_funcs_2nd_mmhub, ptr @sdma_v4_0_ring_funcs, ptr @sdma_v4_0_page_ring_funcs_2nd_mmhub, ptr @sdma_v4_0_page_ring_funcs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @sdma_v4_0_buffer_funcs, ptr @sdma_v4_0_vm_pte_funcs, ptr @sdma_v4_0_trap_irq_funcs, ptr @sdma_v4_0_illegal_inst_irq_funcs, ptr @sdma_v4_0_ecc_irq_funcs, ptr @sdma_v4_0_vm_hole_irq_funcs, ptr @sdma_v4_0_doorbell_invalid_irq_funcs, ptr @sdma_v4_0_pool_timeout_irq_funcs, ptr @sdma_v4_0_srbm_write_irq_funcs, ptr @.str.27, ptr @.str.28, ptr @sdma_v4_0_process_vm_hole_irq._rs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @sdma_v4_0_print_iv_entry._rs, ptr @.str.39, ptr @.str.40, ptr @sdma_v4_0_process_doorbell_invalid_irq._rs, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @sdma_v4_0_process_pool_timeout_irq._rs, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @sdma_v4_0_process_srbm_write_irq._rs, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @sdma_v4_0_ras_funcs, ptr @sdma_v4_0_ras_fields, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @golden_settings_sdma_4, ptr @golden_settings_sdma_vg10, ptr @golden_settings_sdma_vg12, ptr @golden_settings_sdma0_4_2_init, ptr @golden_settings_sdma0_4_2, ptr @golden_settings_sdma1_4_2, ptr @golden_settings_sdma_arct, ptr @golden_settings_sdma_aldebaran, ptr @golden_settings_sdma_4_1, ptr @golden_settings_sdma_rv2, ptr @golden_settings_sdma_rv1, ptr @golden_settings_sdma_4_3, ptr @.str.79, ptr @switch.table.sdma_v4_0_sw_init, ptr @switch.table.sdma_v4_0_sw_init.80, ptr @switch.table.sdma_v4_0_sw_init.81, ptr @switch.table.sdma_v4_0_sw_init.82, ptr @switch.table.sdma_v4_0_sw_init.83, ptr @switch.table.sdma_v4_0_sw_init.84], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_ring_funcs_2nd_mmhub to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_page_ring_funcs_2nd_mmhub to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_page_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_buffer_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_vm_pte_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_trap_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_illegal_inst_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_ecc_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_vm_hole_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_doorbell_invalid_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_pool_timeout_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_srbm_write_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_process_vm_hole_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_print_iv_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_print_iv_entry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_process_doorbell_invalid_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_process_pool_timeout_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_process_srbm_write_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_ras_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_ras_fields to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_v4_0_get_ras_error_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_4 to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_vg10 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_vg12 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma0_4_2_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma0_4_2 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma1_4_2 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_arct to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_aldebaran to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_4_1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_rv2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_rv1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @golden_settings_sdma_4_3 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v4_0_sw_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v4_0_sw_init.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v4_0_sw_init.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v4_0_sw_init.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v4_0_sw_init.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdma_v4_0_sw_init.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_early_init(ptr noundef %handle) #0 align 64 {
entry:
  %fw_name.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name.i) #10
  %0 = call ptr @memset(ptr %fw_name.i, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.body.i [
    i32 262144, label %entry.sw.epilog.i_crit_edge
    i32 262145, label %sw.bb2.i
    i32 262656, label %sw.bb3.i
    i32 262400, label %entry.sw.bb4.i_crit_edge
    i32 262401, label %entry.sw.bb4.i_crit_edge59
    i32 262658, label %sw.bb11.i
    i32 262402, label %sw.bb12.i
    i32 263168, label %sw.bb19.i
  ]

entry.sw.bb4.i_crit_edge59:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry.sw.bb4.i_crit_edge, %entry.sw.bb4.i_crit_edge59
  %apu_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %4 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %apu_flags.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %.str.8..str.7.i = select i1 %tobool7.not.i, ptr @.str.8, ptr @.str.7
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %apu_flags13.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %6 = ptrtoint ptr %apu_flags13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %apu_flags13.i, align 4
  %and14.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %.str.11..str.10.i = select i1 %tobool15.not.i, ptr @.str.11, ptr @.str.10
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 656, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb19.i, %sw.bb12.i, %sw.bb11.i, %if.else.i, %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb3.i, %sw.bb2.i, %entry.sw.epilog.i_crit_edge
  %chip_name.0.i = phi ptr [ @.str.12, %sw.bb19.i ], [ @.str.9, %sw.bb11.i ], [ @.str.5, %sw.bb3.i ], [ @.str.4, %sw.bb2.i ], [ @.str.3, %entry.sw.epilog.i_crit_edge ], [ @.str.6, %sw.bb4.i.sw.epilog.i_crit_edge ], [ %.str.8..str.7.i, %if.else.i ], [ %.str.11..str.10.i, %sw.bb12.i ]
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.13, ptr noundef nonnull %chip_name.0.i) #10
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle, align 8
  %call25.i = call i32 @request_firmware(ptr noundef %sdma.i, ptr noundef nonnull %fw_name.i, ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %sw.epilog.i.if.then101.i_crit_edge

sw.epilog.i.if.then101.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101.i

if.end28.i:                                       ; preds = %sw.epilog.i
  %10 = ptrtoint ptr %sdma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdma.i, align 8
  %call.i.i = call i32 @amdgpu_ucode_validate(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end28.i.if.then101.i_crit_edge

if.end28.i.if.then101.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101.i

if.end.i.i:                                       ; preds = %if.end28.i
  %12 = ptrtoint ptr %sdma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdma.i, align 8
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %ucode_version.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %ucode_version.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ucode_version.i.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #10
  %fw_version.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fw_version.i.i, align 4
  %ucode_feature_version.i.i = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %ucode_feature_version.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucode_feature_version.i.i, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #10
  %feature_version.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %feature_version.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %feature_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %22)
  %cmp.i.i = icmp ugt i32 %22, 19
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.sdma_v4_0_init_inst_ctx.exit.i_crit_edge

if.end.i.i.sdma_v4_0_init_inst_ctx.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_init_inst_ctx.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %burst_nop.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 5
  %24 = ptrtoint ptr %burst_nop.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %burst_nop.i.i, align 8
  br label %sdma_v4_0_init_inst_ctx.exit.i

sdma_v4_0_init_inst_ctx.exit.i:                   ; preds = %if.then3.i.i, %if.end.i.i.sdma_v4_0_init_inst_ctx.exit.i_crit_edge
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %25 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp161.i = icmp sgt i32 %26, 1
  br i1 %cmp161.i, label %sdma_v4_0_init_inst_ctx.exit.i.for.body.i_crit_edge, label %sdma_v4_0_init_inst_ctx.exit.i.for.end.i_crit_edge

sdma_v4_0_init_inst_ctx.exit.i.for.end.i_crit_edge: ; preds = %sdma_v4_0_init_inst_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

sdma_v4_0_init_inst_ctx.exit.i.for.body.i_crit_edge: ; preds = %sdma_v4_0_init_inst_ctx.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sdma_v4_0_init_inst_ctx.exit.i.for.body.i_crit_edge
  %i.0162.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %sdma_v4_0_init_inst_ctx.exit.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %28, label %if.else52.i [
    i32 262658, label %for.body.i.if.then45.i_crit_edge
    i32 263168, label %for.body.i.if.then45.i_crit_edge60
  ]

for.body.i.if.then45.i_crit_edge60:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i

for.body.i.if.then45.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i

if.then45.i:                                      ; preds = %for.body.i.if.then45.i_crit_edge, %for.body.i.if.then45.i_crit_edge60
  %arrayidx48.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0162.i
  %30 = call ptr @memcpy(ptr %arrayidx48.i, ptr %sdma.i, i32 1832)
  br label %for.inc.i

if.else52.i:                                      ; preds = %for.body.i
  %call54.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i, i32 noundef 30, ptr noundef nonnull @.str.14, ptr noundef nonnull %chip_name.0.i, i32 noundef %i.0162.i) #10
  %arrayidx57.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0162.i
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handle, align 8
  %call61.i = call i32 @request_firmware(ptr noundef %arrayidx57.i, ptr noundef nonnull %fw_name.i, ptr noundef %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.else52.i.if.then101.i_crit_edge

if.else52.i.if.then101.i_crit_edge:               ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101.i

if.end64.i:                                       ; preds = %if.else52.i
  %33 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx57.i, align 8
  %call.i143.i = call i32 @amdgpu_ucode_validate(ptr noundef %34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i)
  %tobool.not.i144.i = icmp eq i32 %call.i143.i, 0
  br i1 %tobool.not.i144.i, label %if.end.i151.i, label %if.end64.i.if.then101.i_crit_edge

if.end64.i.if.then101.i_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101.i

if.end.i151.i:                                    ; preds = %if.end64.i
  %35 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx57.i, align 8
  %data.i145.i = getelementptr inbounds %struct.firmware, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %data.i145.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i145.i, align 4
  %ucode_version.i146.i = getelementptr inbounds %struct.common_firmware_header, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %ucode_version.i146.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ucode_version.i146.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #10
  %fw_version.i147.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0162.i, i32 1
  %42 = ptrtoint ptr %fw_version.i147.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fw_version.i147.i, align 4
  %ucode_feature_version.i148.i = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %ucode_feature_version.i148.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ucode_feature_version.i148.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #10
  %feature_version.i149.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0162.i, i32 2
  %46 = ptrtoint ptr %feature_version.i149.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %feature_version.i149.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %45)
  %cmp.i150.i = icmp ugt i32 %45, 19
  br i1 %cmp.i150.i, label %if.then3.i153.i, label %if.end.i151.i.for.inc.i_crit_edge

if.end.i151.i.for.inc.i_crit_edge:                ; preds = %if.end.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then3.i153.i:                                  ; preds = %if.end.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  %burst_nop.i152.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0162.i, i32 5
  %47 = ptrtoint ptr %burst_nop.i152.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %burst_nop.i152.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i153.i, %if.end.i151.i.for.inc.i_crit_edge, %if.then45.i
  %inc.i = add nuw nsw i32 %i.0162.i, 1
  %48 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %49
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sdma_v4_0_init_inst_ctx.exit.i.for.end.i_crit_edge
  %firmware.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %50 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp73.i = icmp eq i32 %51, 2
  %cond.i = select i1 %cmp73.i, ptr @.str.16, ptr @.str.17
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond.i) #10
  %52 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp76.i = icmp eq i32 %53, 2
  br i1 %cmp76.i, label %for.cond78.preheader.i, label %for.end.i.sdma_v4_0_init_microcode.exit.thread_crit_edge

for.end.i.sdma_v4_0_init_microcode.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_init_microcode.exit.thread

for.cond78.preheader.i:                           ; preds = %for.end.i
  %54 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp81164.i = icmp sgt i32 %55, 0
  br i1 %cmp81164.i, label %for.body82.lr.ph.i, label %for.cond78.preheader.i.sdma_v4_0_init_microcode.exit.thread_crit_edge

for.cond78.preheader.i.sdma_v4_0_init_microcode.exit.thread_crit_edge: ; preds = %for.cond78.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_init_microcode.exit.thread

for.body82.lr.ph.i:                               ; preds = %for.cond78.preheader.i
  %fw_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 3
  br label %for.body82.i

for.body82.i:                                     ; preds = %for.body82.i.for.body82.i_crit_edge, %for.body82.lr.ph.i
  %i.1165.i = phi i32 [ 0, %for.body82.lr.ph.i ], [ %inc97.i, %for.body82.i.for.body82.i_crit_edge ]
  %arrayidx84.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware.i, i32 0, i32 %i.1165.i
  %56 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %i.1165.i, ptr %arrayidx84.i, align 8
  %arrayidx88.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.1165.i
  %57 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx88.i, align 8
  %fw90.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware.i, i32 0, i32 %i.1165.i, i32 1
  %59 = ptrtoint ptr %fw90.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %fw90.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ucode_size_bytes.i, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #10
  %add92.i = add i32 %64, 4095
  %and93.i = and i32 %add92.i, -4096
  %65 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fw_size.i, align 8
  %add95.i = add i32 %and93.i, %66
  store i32 %add95.i, ptr %fw_size.i, align 8
  %inc97.i = add nuw nsw i32 %i.1165.i, 1
  %exitcond.not = icmp eq i32 %inc97.i, %55
  br i1 %exitcond.not, label %for.body82.i.sdma_v4_0_init_microcode.exit.thread_crit_edge, label %for.body82.i.for.body82.i_crit_edge

for.body82.i.for.body82.i_crit_edge:              ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body82.i

for.body82.i.sdma_v4_0_init_microcode.exit.thread_crit_edge: ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_init_microcode.exit.thread

if.then101.i:                                     ; preds = %if.end64.i.if.then101.i_crit_edge, %if.else52.i.if.then101.i_crit_edge, %if.end28.i.if.then101.i_crit_edge, %sw.epilog.i.if.then101.i_crit_edge
  %err.2.ph.i = phi i32 [ %call25.i, %sw.epilog.i.if.then101.i_crit_edge ], [ %call.i.i, %if.end28.i.if.then101.i_crit_edge ], [ %call.i143.i, %if.end64.i.if.then101.i_crit_edge ], [ %call61.i, %if.else52.i.if.then101.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, ptr noundef nonnull %fw_name.i) #10
  %num_instances.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %67 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_instances.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp23.i.i = icmp sgt i32 %68, 0
  br i1 %cmp23.i.i, label %if.then101.i.for.body.i.i_crit_edge, label %sdma_v4_0_init_microcode.exit.thread51

if.then101.i.for.body.i.i_crit_edge:              ; preds = %if.then101.i
  br label %for.body.i.i

sdma_v4_0_init_microcode.exit.thread51:           ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = call ptr @memset(ptr %sdma.i, i32 0, i32 14656)
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #10
  br label %if.then

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then101.i.for.body.i.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then101.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.024.i.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 8
  call void @release_firmware(ptr noundef %71) #10
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx.i.i, align 8
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %74, label %for.inc.i.i [
    i32 262658, label %for.body.i.i.sdma_v4_0_init_microcode.exit_crit_edge
    i32 263168, label %for.body.i.i.sdma_v4_0_init_microcode.exit_crit_edge61
  ]

for.body.i.i.sdma_v4_0_init_microcode.exit_crit_edge61: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_init_microcode.exit

for.body.i.i.sdma_v4_0_init_microcode.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_init_microcode.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.024.i.i, 1
  %76 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_instances.i.i, align 4
  %cmp.i155.i = icmp slt i32 %inc.i.i, %77
  br i1 %cmp.i155.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.sdma_v4_0_init_microcode.exit_crit_edge

for.inc.i.i.sdma_v4_0_init_microcode.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_init_microcode.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

sdma_v4_0_init_microcode.exit.thread:             ; preds = %for.body82.i.sdma_v4_0_init_microcode.exit.thread_crit_edge, %for.cond78.preheader.i.sdma_v4_0_init_microcode.exit.thread_crit_edge, %for.end.i.sdma_v4_0_init_microcode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #10
  br label %if.end

sdma_v4_0_init_microcode.exit:                    ; preds = %for.inc.i.i.sdma_v4_0_init_microcode.exit_crit_edge, %for.body.i.i.sdma_v4_0_init_microcode.exit_crit_edge, %for.body.i.i.sdma_v4_0_init_microcode.exit_crit_edge61
  %78 = call ptr @memset(ptr %sdma.i, i32 0, i32 14656)
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.ph.i)
  %tobool.not = icmp eq i32 %err.2.ph.i, 0
  br i1 %tobool.not, label %sdma_v4_0_init_microcode.exit.if.end_crit_edge, label %sdma_v4_0_init_microcode.exit.if.then_crit_edge

sdma_v4_0_init_microcode.exit.if.then_crit_edge:  ; preds = %sdma_v4_0_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sdma_v4_0_init_microcode.exit.if.end_crit_edge:   ; preds = %sdma_v4_0_init_microcode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sdma_v4_0_init_microcode.exit.if.then_crit_edge, %sdma_v4_0_init_microcode.exit.thread51
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %sdma_v4_0_init_microcode.exit.if.end_crit_edge, %sdma_v4_0_init_microcode.exit.thread
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %80)
  %cmp = icmp eq i32 %80, 262144
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %81 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %virt, align 8
  %and = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else.thread, label %land.lhs.true.if.end9.sink.split_crit_edge

land.lhs.true.if.end9.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split

if.else.thread:                                   ; preds = %land.lhs.true
  %fw_version1.i53 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 1
  %83 = ptrtoint ptr %fw_version1.i53 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fw_version1.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 429, i32 %84)
  %cmp.i22 = icmp ugt i32 %84, 429
  br i1 %cmp.i22, label %if.else.thread.if.end9.sink.split_crit_edge, label %if.else.thread.if.end9_crit_edge

if.else.thread.if.end9_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else.thread.if.end9.sink.split_crit_edge:      ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split

if.else:                                          ; preds = %if.end
  %fw_version1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %fw_version1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fw_version1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262656, i32 %80)
  %cond = icmp eq i32 %80, 262656
  call void @__sanitizer_cov_trace_const_cmp4(i32 122, i32 %86)
  %cmp6.i = icmp ugt i32 %86, 122
  %or.cond = select i1 %cond, i1 %cmp6.i, i1 false
  br i1 %or.cond, label %if.else.if.end9.sink.split_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else.if.end9.sink.split_crit_edge, %if.else.thread.if.end9.sink.split_crit_edge, %land.lhs.true.if.end9.sink.split_crit_edge
  %.sink = phi i8 [ 0, %land.lhs.true.if.end9.sink.split_crit_edge ], [ 1, %if.else.if.end9.sink.split_crit_edge ], [ 1, %if.else.thread.if.end9.sink.split_crit_edge ]
  %has_page_queue7 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 10
  %87 = ptrtoint ptr %has_page_queue7 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.sink, ptr %has_page_queue7, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge, %if.else.thread.if.end9_crit_edge
  %num_instances.i24 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %88 = ptrtoint ptr %num_instances.i24 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_instances.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp62.i = icmp sgt i32 %89, 0
  br i1 %cmp62.i, label %for.body.lr.ph.i, label %if.end9.sdma_v4_0_set_ring_funcs.exit_crit_edge

if.end9.sdma_v4_0_set_ring_funcs.exit_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_set_ring_funcs.exit

for.body.lr.ph.i:                                 ; preds = %if.end9
  %has_page_queue.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 10
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.inc.i30.for.body.i27_crit_edge, %for.body.lr.ph.i
  %i.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i28, %for.inc.i30.for.body.i27_crit_edge ]
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262658, i32 %91)
  %cmp2.i = icmp eq i32 %91, 262658
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.063.i)
  %cmp3.i = icmp ugt i32 %i.063.i, 4
  %or.cond.i = select i1 %cmp2.i, i1 %cmp3.i, i1 false
  %spec.select.i = select i1 %or.cond.i, ptr @sdma_v4_0_ring_funcs_2nd_mmhub, ptr @sdma_v4_0_ring_funcs
  %92 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.063.i, i32 3, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %spec.select.i, ptr %92, align 4
  %me.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.063.i, i32 3, i32 16
  %94 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %i.063.i, ptr %me.i, align 8
  %95 = ptrtoint ptr %has_page_queue.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %has_page_queue.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i26 = icmp eq i8 %96, 0
  br i1 %tobool.not.i26, label %for.body.i27.for.inc.i30_crit_edge, label %if.then16.i

for.body.i27.for.inc.i30_crit_edge:               ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i30

if.then16.i:                                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262658, i32 %98)
  %cmp20.i = icmp eq i32 %98, 262658
  %or.cond61.i = select i1 %cmp20.i, i1 %cmp3.i, i1 false
  %spec.select67.i = select i1 %or.cond61.i, ptr @sdma_v4_0_page_ring_funcs_2nd_mmhub, ptr @sdma_v4_0_page_ring_funcs
  %99 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.063.i, i32 4, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %spec.select67.i, ptr %99, align 4
  %me39.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.063.i, i32 4, i32 16
  %101 = ptrtoint ptr %me39.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %i.063.i, ptr %me39.i, align 8
  br label %for.inc.i30

for.inc.i30:                                      ; preds = %if.then16.i, %for.body.i27.for.inc.i30_crit_edge
  %inc.i28 = add nuw nsw i32 %i.063.i, 1
  %102 = ptrtoint ptr %num_instances.i24 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_instances.i24, align 4
  %cmp.i29 = icmp slt i32 %inc.i28, %103
  br i1 %cmp.i29, label %for.inc.i30.for.body.i27_crit_edge, label %for.inc.i30.sdma_v4_0_set_ring_funcs.exit_crit_edge

for.inc.i30.sdma_v4_0_set_ring_funcs.exit_crit_edge: ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_set_ring_funcs.exit

for.inc.i30.for.body.i27_crit_edge:               ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i27

sdma_v4_0_set_ring_funcs.exit:                    ; preds = %for.inc.i30.sdma_v4_0_set_ring_funcs.exit_crit_edge, %if.end9.sdma_v4_0_set_ring_funcs.exit_crit_edge
  %buffer_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 3
  %104 = ptrtoint ptr %buffer_funcs.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @sdma_v4_0_buffer_funcs, ptr %buffer_funcs.i, align 8
  %has_page_queue.i32 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 10
  %105 = ptrtoint ptr %has_page_queue.i32 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %has_page_queue.i32, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i33 = icmp eq i8 %106, 0
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 3
  %page.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 4
  %page.sink.i = select i1 %tobool.not.i33, ptr %ring.i, ptr %page.i
  %107 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %page.sink.i, ptr %107, align 4
  %vm_pte_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 11
  %109 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @sdma_v4_0_vm_pte_funcs, ptr %vm_pte_funcs.i, align 8
  %110 = ptrtoint ptr %num_instances.i24 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_instances.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp24.not.i = icmp eq i32 %111, 0
  br i1 %cmp24.not.i, label %sdma_v4_0_set_vm_pte_funcs.exit.thread, label %sdma_v4_0_set_ring_funcs.exit.for.body.i41_crit_edge

sdma_v4_0_set_ring_funcs.exit.for.body.i41_crit_edge: ; preds = %sdma_v4_0_set_ring_funcs.exit
  br label %for.body.i41

sdma_v4_0_set_vm_pte_funcs.exit.thread:           ; preds = %sdma_v4_0_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vm_pte_num_scheds.i56 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 13
  %112 = ptrtoint ptr %vm_pte_num_scheds.i56 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %vm_pte_num_scheds.i56, align 4
  %trap_irq.i57 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %113 = ptrtoint ptr %trap_irq.i57 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %trap_irq.i57, align 8
  %ecc_irq.i58 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 3
  %114 = ptrtoint ptr %ecc_irq.i58 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %ecc_irq.i58, align 8
  br label %sdma_v4_0_set_irq_funcs.exit

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %sdma_v4_0_set_ring_funcs.exit.for.body.i41_crit_edge
  %i.025.i = phi i32 [ %inc.i39, %for.body.i41.for.body.i41_crit_edge ], [ 0, %sdma_v4_0_set_ring_funcs.exit.for.body.i41_crit_edge ]
  %115 = ptrtoint ptr %has_page_queue.i32 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %has_page_queue.i32, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i38 = icmp eq i8 %116, 0
  %sched3.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.025.i, i32 4, i32 3
  %sched7.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.025.i, i32 3, i32 3
  %sched.0.i = select i1 %tobool.not.i38, ptr %sched7.i, ptr %sched3.i
  %arrayidx9.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 12, i32 %i.025.i
  %117 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %sched.0.i, ptr %arrayidx9.i, align 4
  %inc.i39 = add nuw i32 %i.025.i, 1
  %118 = ptrtoint ptr %num_instances.i24 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_instances.i24, align 4
  %cmp.i40 = icmp ult i32 %inc.i39, %119
  br i1 %cmp.i40, label %for.body.i41.for.body.i41_crit_edge, label %sdma_v4_0_set_vm_pte_funcs.exit

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i41

sdma_v4_0_set_vm_pte_funcs.exit:                  ; preds = %for.body.i41
  %vm_pte_num_scheds.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 13
  %120 = ptrtoint ptr %vm_pte_num_scheds.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %vm_pte_num_scheds.i, align 4
  %trap_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %121 = ptrtoint ptr %trap_irq.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %119, ptr %trap_irq.i, align 8
  %ecc_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 3
  %122 = ptrtoint ptr %ecc_irq.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %119, ptr %ecc_irq.i, align 8
  %123 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %119, label %sdma_v4_0_set_vm_pte_funcs.exit.sdma_v4_0_set_irq_funcs.exit_crit_edge [
    i32 5, label %sdma_v4_0_set_vm_pte_funcs.exit.sw.bb.i44_crit_edge
    i32 8, label %sdma_v4_0_set_vm_pte_funcs.exit.sw.bb.i44_crit_edge62
  ]

sdma_v4_0_set_vm_pte_funcs.exit.sw.bb.i44_crit_edge62: ; preds = %sdma_v4_0_set_vm_pte_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i44

sdma_v4_0_set_vm_pte_funcs.exit.sw.bb.i44_crit_edge: ; preds = %sdma_v4_0_set_vm_pte_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i44

sdma_v4_0_set_vm_pte_funcs.exit.sdma_v4_0_set_irq_funcs.exit_crit_edge: ; preds = %sdma_v4_0_set_vm_pte_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_set_irq_funcs.exit

sw.bb.i44:                                        ; preds = %sdma_v4_0_set_vm_pte_funcs.exit.sw.bb.i44_crit_edge, %sdma_v4_0_set_vm_pte_funcs.exit.sw.bb.i44_crit_edge62
  %vm_hole_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 4
  %124 = ptrtoint ptr %vm_hole_irq.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %119, ptr %vm_hole_irq.i, align 4
  %doorbell_invalid_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 5
  %125 = ptrtoint ptr %doorbell_invalid_irq.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %119, ptr %doorbell_invalid_irq.i, align 8
  %pool_timeout_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 6
  %126 = ptrtoint ptr %pool_timeout_irq.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %119, ptr %pool_timeout_irq.i, align 4
  %srbm_write_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 7
  %127 = ptrtoint ptr %srbm_write_irq.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %119, ptr %srbm_write_irq.i, align 8
  br label %sdma_v4_0_set_irq_funcs.exit

sdma_v4_0_set_irq_funcs.exit:                     ; preds = %sw.bb.i44, %sdma_v4_0_set_vm_pte_funcs.exit.sdma_v4_0_set_irq_funcs.exit_crit_edge, %sdma_v4_0_set_vm_pte_funcs.exit.thread
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1, i32 2
  %128 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @sdma_v4_0_trap_irq_funcs, ptr %funcs.i, align 8
  %funcs27.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 2, i32 2
  %129 = ptrtoint ptr %funcs27.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @sdma_v4_0_illegal_inst_irq_funcs, ptr %funcs27.i, align 4
  %funcs30.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 3, i32 2
  %130 = ptrtoint ptr %funcs30.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @sdma_v4_0_ecc_irq_funcs, ptr %funcs30.i, align 8
  %funcs33.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 4, i32 2
  %131 = ptrtoint ptr %funcs33.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @sdma_v4_0_vm_hole_irq_funcs, ptr %funcs33.i, align 4
  %funcs36.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 5, i32 2
  %132 = ptrtoint ptr %funcs36.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @sdma_v4_0_doorbell_invalid_irq_funcs, ptr %funcs36.i, align 8
  %funcs39.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 6, i32 2
  %133 = ptrtoint ptr %funcs39.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @sdma_v4_0_pool_timeout_irq_funcs, ptr %funcs39.i, align 4
  %funcs42.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 7, i32 2
  %134 = ptrtoint ptr %funcs42.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @sdma_v4_0_srbm_write_irq_funcs, ptr %funcs42.i, align 8
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %136, label %sdma_v4_0_set_irq_funcs.exit.cleanup_crit_edge [
    i32 262656, label %sdma_v4_0_set_irq_funcs.exit.sw.epilog.sink.split.i_crit_edge
    i32 262658, label %sdma_v4_0_set_irq_funcs.exit.sw.epilog.sink.split.i_crit_edge63
    i32 263168, label %sw.bb2.i47
  ]

sdma_v4_0_set_irq_funcs.exit.sw.epilog.sink.split.i_crit_edge63: ; preds = %sdma_v4_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sdma_v4_0_set_irq_funcs.exit.sw.epilog.sink.split.i_crit_edge: ; preds = %sdma_v4_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sdma_v4_0_set_irq_funcs.exit.cleanup_crit_edge:   ; preds = %sdma_v4_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2.i47:                                       ; preds = %sdma_v4_0_set_irq_funcs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i47, %sdma_v4_0_set_irq_funcs.exit.sw.epilog.sink.split.i_crit_edge, %sdma_v4_0_set_irq_funcs.exit.sw.epilog.sink.split.i_crit_edge63
  %sdma_v4_4_ras_funcs.sink.i = phi ptr [ @sdma_v4_4_ras_funcs, %sw.bb2.i47 ], [ @sdma_v4_0_ras_funcs, %sdma_v4_0_set_irq_funcs.exit.sw.epilog.sink.split.i_crit_edge ], [ @sdma_v4_0_ras_funcs, %sdma_v4_0_set_irq_funcs.exit.sw.epilog.sink.split.i_crit_edge63 ]
  %funcs4.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 12
  %138 = ptrtoint ptr %funcs4.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %sdma_v4_4_ras_funcs.sink.i, ptr %funcs4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.sink.split.i, %sdma_v4_0_set_irq_funcs.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %err.2.ph.i, %if.then ], [ 0, %sdma_v4_0_set_irq_funcs.exit.cleanup_crit_edge ], [ 0, %sw.epilog.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_late_init(ptr noundef %handle) #0 align 64 {
entry:
  %ih_info = alloca %struct.ras_ih_if, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_info) #10
  %0 = call ptr @memcpy(ptr %ih_info, ptr @__const.sdma_v4_0_late_init.ih_info, i32 48)
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %2, label %entry.sdma_v4_0_setup_ulv.exit_crit_edge [
    i32 262144, label %sw.bb.i
    i32 262656, label %sw.bb3.i
  ]

entry.sdma_v4_0_setup_ulv.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_setup_ulv.exit

sw.bb.i:                                          ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26720, i16 %7)
  %cmp.i = icmp eq i16 %7, 26720
  br i1 %cmp.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.sdma_v4_0_setup_ulv.exit_crit_edge

sw.bb.i.sdma_v4_0_setup_ulv.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_setup_ulv.exit

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  %pdev4.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 1
  %8 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev4.i, align 4
  %device5.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device5.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26273, i16 %11)
  %cmp7.i = icmp eq i16 %11, 26273
  br i1 %cmp7.i, label %sw.bb3.i.sw.epilog.i_crit_edge, label %sw.bb3.i.sdma_v4_0_setup_ulv.exit_crit_edge

sw.bb3.i.sdma_v4_0_setup_ulv.exit_crit_edge:      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_setup_ulv.exit

sw.bb3.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %12 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1153.i = icmp sgt i32 %13, 0
  br i1 %cmp1153.i, label %for.body.lr.ph.i, label %sw.epilog.i.sdma_v4_0_setup_ulv.exit_crit_edge

sw.epilog.i.sdma_v4_0_setup_ulv.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_setup_ulv.exit

for.body.lr.ph.i:                                 ; preds = %sw.epilog.i
  %arrayidx41.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 10
  %arrayidx35.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 9
  %arrayidx29.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 8
  %arrayidx23.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 7
  %arrayidx17.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 6
  %arrayidx11.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 5
  %arrayidx5.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 4
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %sdma_v4_0_get_reg_offset.exit52.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sdma_v4_0_get_reg_offset.exit52.i.for.body.i_crit_edge ]
  %14 = zext i32 %i.054.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %i.054.i, label %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb9.i.i
    i32 3, label %sw.bb15.i.i
    i32 4, label %sw.bb21.i.i
    i32 5, label %sw.bb27.i.i
    i32 6, label %sw.bb33.i.i
    i32 7, label %sw.bb39.i.i
  ]

for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 8
  br label %return.sink.split.i.i

sw.bb3.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i.i

sw.bb9.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i.i = getelementptr i32, ptr %20, i32 1
  br label %return.sink.split.i.i

sw.bb15.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i.i = getelementptr i32, ptr %22, i32 1
  br label %return.sink.split.i.i

sw.bb21.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i.i = getelementptr i32, ptr %24, i32 1
  br label %return.sink.split.i.i

sw.bb27.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i.i = getelementptr i32, ptr %26, i32 1
  br label %return.sink.split.i.i

sw.bb33.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i.i = getelementptr i32, ptr %28, i32 1
  br label %return.sink.split.i.i

sw.bb39.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i.i = getelementptr i32, ptr %30, i32 1
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %sw.bb39.i.i, %sw.bb33.i.i, %sw.bb27.i.i, %sw.bb21.i.i, %sw.bb15.i.i, %sw.bb9.i.i, %sw.bb3.i.i, %sw.bb.i.i
  %arrayidx43.sink.i.i = phi ptr [ %arrayidx43.i.i, %sw.bb39.i.i ], [ %arrayidx37.i.i, %sw.bb33.i.i ], [ %arrayidx31.i.i, %sw.bb27.i.i ], [ %arrayidx25.i.i, %sw.bb21.i.i ], [ %arrayidx19.i.i, %sw.bb15.i.i ], [ %arrayidx13.i.i, %sw.bb9.i.i ], [ %18, %sw.bb3.i.i ], [ %16, %sw.bb.i.i ]
  %31 = ptrtoint ptr %arrayidx43.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx43.sink.i.i, align 4
  %add44.i.i = add i32 %32, 94
  br label %sdma_v4_0_get_reg_offset.exit.i

sdma_v4_0_get_reg_offset.exit.i:                  ; preds = %return.sink.split.i.i, %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge ], [ %add44.i.i, %return.sink.split.i.i ]
  %call13.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i.i, i32 noundef 0) #10
  %and.i = and i32 %call13.i, -32
  %33 = zext i32 %i.054.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %i.054.i, label %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit52.i_crit_edge [
    i32 0, label %sw.bb.i27.i
    i32 1, label %sw.bb3.i29.i
    i32 2, label %sw.bb9.i32.i
    i32 3, label %sw.bb15.i35.i
    i32 4, label %sw.bb21.i38.i
    i32 5, label %sw.bb27.i41.i
    i32 6, label %sw.bb33.i44.i
    i32 7, label %sw.bb39.i47.i
  ]

sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit52.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit52.i

sw.bb.i27.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 8
  br label %return.sink.split.i50.i

sw.bb3.i29.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i50.i

sw.bb9.i32.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i31.i = getelementptr i32, ptr %39, i32 1
  br label %return.sink.split.i50.i

sw.bb15.i35.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i34.i = getelementptr i32, ptr %41, i32 1
  br label %return.sink.split.i50.i

sw.bb21.i38.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i37.i = getelementptr i32, ptr %43, i32 1
  br label %return.sink.split.i50.i

sw.bb27.i41.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i40.i = getelementptr i32, ptr %45, i32 1
  br label %return.sink.split.i50.i

sw.bb33.i44.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i43.i = getelementptr i32, ptr %47, i32 1
  br label %return.sink.split.i50.i

sw.bb39.i47.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i46.i = getelementptr i32, ptr %49, i32 1
  br label %return.sink.split.i50.i

return.sink.split.i50.i:                          ; preds = %sw.bb39.i47.i, %sw.bb33.i44.i, %sw.bb27.i41.i, %sw.bb21.i38.i, %sw.bb15.i35.i, %sw.bb9.i32.i, %sw.bb3.i29.i, %sw.bb.i27.i
  %arrayidx43.sink.i48.i = phi ptr [ %arrayidx43.i46.i, %sw.bb39.i47.i ], [ %arrayidx37.i43.i, %sw.bb33.i44.i ], [ %arrayidx31.i40.i, %sw.bb27.i41.i ], [ %arrayidx25.i37.i, %sw.bb21.i38.i ], [ %arrayidx19.i34.i, %sw.bb15.i35.i ], [ %arrayidx13.i31.i, %sw.bb9.i32.i ], [ %37, %sw.bb3.i29.i ], [ %35, %sw.bb.i27.i ]
  %50 = ptrtoint ptr %arrayidx43.sink.i48.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx43.sink.i48.i, align 4
  %add44.i49.i = add i32 %51, 94
  br label %sdma_v4_0_get_reg_offset.exit52.i

sdma_v4_0_get_reg_offset.exit52.i:                ; preds = %return.sink.split.i50.i, %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit52.i_crit_edge
  %retval.0.i51.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit52.i_crit_edge ], [ %add44.i49.i, %return.sink.split.i50.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i51.i, i32 noundef %and.i, i32 noundef 0) #10
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %52 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_instances.i, align 4
  %cmp11.i = icmp slt i32 %inc.i, %53
  br i1 %cmp11.i, label %sdma_v4_0_get_reg_offset.exit52.i.for.body.i_crit_edge, label %sdma_v4_0_get_reg_offset.exit52.i.sdma_v4_0_setup_ulv.exit_crit_edge

sdma_v4_0_get_reg_offset.exit52.i.sdma_v4_0_setup_ulv.exit_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_setup_ulv.exit

sdma_v4_0_get_reg_offset.exit52.i.for.body.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sdma_v4_0_setup_ulv.exit:                         ; preds = %sdma_v4_0_get_reg_offset.exit52.i.sdma_v4_0_setup_ulv.exit_crit_edge, %sw.epilog.i.sdma_v4_0_setup_ulv.exit_crit_edge, %sw.bb3.i.sdma_v4_0_setup_ulv.exit_crit_edge, %sw.bb.i.sdma_v4_0_setup_ulv.exit_crit_edge, %entry.sdma_v4_0_setup_ulv.exit_crit_edge
  %call = tail call i32 @amdgpu_persistent_edc_harvesting_supported(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %sdma_v4_0_setup_ulv.exit.if.end9_crit_edge

sdma_v4_0_setup_ulv.exit.if.end9_crit_edge:       ; preds = %sdma_v4_0_setup_ulv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %sdma_v4_0_setup_ulv.exit
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 12
  %54 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %55, null
  br i1 %tobool1.not, label %if.then.if.end9_crit_edge, label %land.lhs.true

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then
  %reset_ras_error_count = getelementptr inbounds %struct.amdgpu_sdma_ras_funcs, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %reset_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reset_ras_error_count, align 4
  %tobool4.not = icmp eq ptr %57, null
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %57(ptr noundef %handle) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %land.lhs.true.if.end9_crit_edge, %if.then.if.end9_crit_edge, %sdma_v4_0_setup_ulv.exit.if.end9_crit_edge
  %funcs11 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 12
  %58 = ptrtoint ptr %funcs11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs11, align 4
  %tobool12.not = icmp eq ptr %59, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end9
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool16.not = icmp eq ptr %61, null
  br i1 %tobool16.not, label %land.lhs.true13.cleanup_crit_edge, label %if.then17

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = call i32 %61(ptr noundef %handle, ptr noundef nonnull %ih_info) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true13.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then17 ], [ 0, %land.lhs.true13.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp231 = icmp sgt i32 %1, 0
  br i1 %cmp231, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %trap_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  br label %for.body

for.cond:                                         ; preds = %sdma_v4_0_seq_to_irq_id.exit
  %inc = add nuw nsw i32 %i.0232, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond3.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond3.preheader:                              ; preds = %for.cond
  %sdma.le = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6234 = icmp sgt i32 %3, 0
  br i1 %cmp6234, label %for.body7.lr.ph, label %for.cond17.preheaderthread-pre-split

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %ecc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 3
  br label %for.body7

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0232 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0232)
  %4 = icmp ult i32 %i.0232, 8
  br i1 %4, label %switch.lookup, label %for.body.sdma_v4_0_seq_to_irq_id.exit_crit_edge

for.body.sdma_v4_0_seq_to_irq_id.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_seq_to_irq_id.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.sdma_v4_0_sw_init, i32 0, i32 %i.0232
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sdma_v4_0_seq_to_irq_id.exit

sdma_v4_0_seq_to_irq_id.exit:                     ; preds = %switch.lookup, %for.body.sdma_v4_0_seq_to_irq_id.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %for.body.sdma_v4_0_seq_to_irq_id.exit_crit_edge ]
  %call2 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %retval.0.i, i32 noundef 224, ptr noundef %trap_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond, label %sdma_v4_0_seq_to_irq_id.exit.cleanup_crit_edge

sdma_v4_0_seq_to_irq_id.exit.cleanup_crit_edge:   ; preds = %sdma_v4_0_seq_to_irq_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond3:                                        ; preds = %sdma_v4_0_seq_to_irq_id.exit181
  %inc15 = add nuw nsw i32 %i.1235, 1
  %6 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances, align 4
  %cmp6 = icmp slt i32 %inc15, %7
  br i1 %cmp6, label %for.cond3.for.body7_crit_edge, label %for.cond3.for.cond17.preheader_crit_edge

for.cond3.for.cond17.preheader_crit_edge:         ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond17.preheader

for.cond3.for.body7_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

for.cond17.preheaderthread-pre-split:             ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %num_instances, align 4
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond17.preheaderthread-pre-split, %for.cond3.for.cond17.preheader_crit_edge
  %9 = phi i32 [ %.pr, %for.cond17.preheaderthread-pre-split ], [ %7, %for.cond3.for.cond17.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp20237 = icmp sgt i32 %9, 0
  br i1 %cmp20237, label %for.body21.lr.ph, label %for.cond49.preheaderthread-pre-split

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %vm_hole_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 4
  %doorbell_invalid_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 5
  %pool_timeout_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 6
  %srbm_write_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 7
  br label %for.body21

for.body7:                                        ; preds = %for.cond3.for.body7_crit_edge, %for.body7.lr.ph
  %i.1235 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc15, %for.cond3.for.body7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.1235)
  %10 = icmp ult i32 %i.1235, 8
  br i1 %10, label %switch.lookup280, label %for.body7.sdma_v4_0_seq_to_irq_id.exit181_crit_edge

for.body7.sdma_v4_0_seq_to_irq_id.exit181_crit_edge: ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_seq_to_irq_id.exit181

switch.lookup280:                                 ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep281 = getelementptr inbounds [8 x i32], ptr @switch.table.sdma_v4_0_sw_init.80, i32 0, i32 %i.1235
  %11 = ptrtoint ptr %switch.gep281 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load282 = load i32, ptr %switch.gep281, align 4
  br label %sdma_v4_0_seq_to_irq_id.exit181

sdma_v4_0_seq_to_irq_id.exit181:                  ; preds = %switch.lookup280, %for.body7.sdma_v4_0_seq_to_irq_id.exit181_crit_edge
  %retval.0.i180 = phi i32 [ %switch.load282, %switch.lookup280 ], [ -22, %for.body7.sdma_v4_0_seq_to_irq_id.exit181_crit_edge ]
  %call10 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %retval.0.i180, i32 noundef 228, ptr noundef %ecc_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond3, label %sdma_v4_0_seq_to_irq_id.exit181.cleanup_crit_edge

sdma_v4_0_seq_to_irq_id.exit181.cleanup_crit_edge: ; preds = %sdma_v4_0_seq_to_irq_id.exit181
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond17:                                       ; preds = %sdma_v4_0_seq_to_irq_id.exit221
  %inc47 = add nuw nsw i32 %i.2238, 1
  %12 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_instances, align 4
  %cmp20 = icmp slt i32 %inc47, %13
  br i1 %cmp20, label %for.cond17.for.body21_crit_edge, label %for.cond17.for.cond49.preheader_crit_edge

for.cond17.for.cond49.preheader_crit_edge:        ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond49.preheader

for.cond17.for.body21_crit_edge:                  ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21

for.cond49.preheaderthread-pre-split:             ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr260 = load i32, ptr %num_instances, align 4
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond49.preheaderthread-pre-split, %for.cond17.for.cond49.preheader_crit_edge
  %15 = phi i32 [ %.pr260, %for.cond49.preheaderthread-pre-split ], [ %13, %for.cond17.for.cond49.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp52240 = icmp sgt i32 %15, 0
  br i1 %cmp52240, label %for.body53.lr.ph, label %for.cond49.preheader.cleanup_crit_edge

for.cond49.preheader.cleanup_crit_edge:           ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body53.lr.ph:                                 ; preds = %for.cond49.preheader
  %trap_irq62 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %has_page_queue = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 10
  br label %for.body53

for.body21:                                       ; preds = %for.cond17.for.body21_crit_edge, %for.body21.lr.ph
  %i.2238 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc47, %for.cond17.for.body21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.2238)
  %16 = icmp ult i32 %i.2238, 8
  br i1 %16, label %switch.lookup283, label %for.body21.sdma_v4_0_seq_to_irq_id.exit191_crit_edge

for.body21.sdma_v4_0_seq_to_irq_id.exit191_crit_edge: ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_seq_to_irq_id.exit191

switch.lookup283:                                 ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep284 = getelementptr inbounds [8 x i32], ptr @switch.table.sdma_v4_0_sw_init.81, i32 0, i32 %i.2238
  %17 = ptrtoint ptr %switch.gep284 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load285 = load i32, ptr %switch.gep284, align 4
  br label %sdma_v4_0_seq_to_irq_id.exit191

sdma_v4_0_seq_to_irq_id.exit191:                  ; preds = %switch.lookup283, %for.body21.sdma_v4_0_seq_to_irq_id.exit191_crit_edge
  %retval.0.i190 = phi i32 [ %switch.load285, %switch.lookup283 ], [ -22, %for.body21.sdma_v4_0_seq_to_irq_id.exit191_crit_edge ]
  %call24 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %retval.0.i190, i32 noundef 242, ptr noundef %vm_hole_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %sdma_v4_0_seq_to_irq_id.exit191.cleanup_crit_edge

sdma_v4_0_seq_to_irq_id.exit191.cleanup_crit_edge: ; preds = %sdma_v4_0_seq_to_irq_id.exit191
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %sdma_v4_0_seq_to_irq_id.exit191
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.2238)
  %18 = icmp ult i32 %i.2238, 8
  br i1 %18, label %switch.lookup286, label %if.end27.sdma_v4_0_seq_to_irq_id.exit201_crit_edge

if.end27.sdma_v4_0_seq_to_irq_id.exit201_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_seq_to_irq_id.exit201

switch.lookup286:                                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep287 = getelementptr inbounds [8 x i32], ptr @switch.table.sdma_v4_0_sw_init.82, i32 0, i32 %i.2238
  %19 = ptrtoint ptr %switch.gep287 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load288 = load i32, ptr %switch.gep287, align 4
  br label %sdma_v4_0_seq_to_irq_id.exit201

sdma_v4_0_seq_to_irq_id.exit201:                  ; preds = %switch.lookup286, %if.end27.sdma_v4_0_seq_to_irq_id.exit201_crit_edge
  %retval.0.i200 = phi i32 [ %switch.load288, %switch.lookup286 ], [ -22, %if.end27.sdma_v4_0_seq_to_irq_id.exit201_crit_edge ]
  %call30 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %retval.0.i200, i32 noundef 244, ptr noundef %doorbell_invalid_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %sdma_v4_0_seq_to_irq_id.exit201.cleanup_crit_edge

sdma_v4_0_seq_to_irq_id.exit201.cleanup_crit_edge: ; preds = %sdma_v4_0_seq_to_irq_id.exit201
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %sdma_v4_0_seq_to_irq_id.exit201
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.2238)
  %20 = icmp ult i32 %i.2238, 8
  br i1 %20, label %switch.lookup289, label %if.end33.sdma_v4_0_seq_to_irq_id.exit211_crit_edge

if.end33.sdma_v4_0_seq_to_irq_id.exit211_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_seq_to_irq_id.exit211

switch.lookup289:                                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep290 = getelementptr inbounds [8 x i32], ptr @switch.table.sdma_v4_0_sw_init.83, i32 0, i32 %i.2238
  %21 = ptrtoint ptr %switch.gep290 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load291 = load i32, ptr %switch.gep290, align 4
  br label %sdma_v4_0_seq_to_irq_id.exit211

sdma_v4_0_seq_to_irq_id.exit211:                  ; preds = %switch.lookup289, %if.end33.sdma_v4_0_seq_to_irq_id.exit211_crit_edge
  %retval.0.i210 = phi i32 [ %switch.load291, %switch.lookup289 ], [ -22, %if.end33.sdma_v4_0_seq_to_irq_id.exit211_crit_edge ]
  %call36 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %retval.0.i210, i32 noundef 246, ptr noundef %pool_timeout_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %sdma_v4_0_seq_to_irq_id.exit211.cleanup_crit_edge

sdma_v4_0_seq_to_irq_id.exit211.cleanup_crit_edge: ; preds = %sdma_v4_0_seq_to_irq_id.exit211
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %sdma_v4_0_seq_to_irq_id.exit211
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.2238)
  %22 = icmp ult i32 %i.2238, 8
  br i1 %22, label %switch.lookup292, label %if.end39.sdma_v4_0_seq_to_irq_id.exit221_crit_edge

if.end39.sdma_v4_0_seq_to_irq_id.exit221_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_seq_to_irq_id.exit221

switch.lookup292:                                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep293 = getelementptr inbounds [8 x i32], ptr @switch.table.sdma_v4_0_sw_init.84, i32 0, i32 %i.2238
  %23 = ptrtoint ptr %switch.gep293 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load294 = load i32, ptr %switch.gep293, align 4
  br label %sdma_v4_0_seq_to_irq_id.exit221

sdma_v4_0_seq_to_irq_id.exit221:                  ; preds = %switch.lookup292, %if.end39.sdma_v4_0_seq_to_irq_id.exit221_crit_edge
  %retval.0.i220 = phi i32 [ %switch.load294, %switch.lookup292 ], [ -22, %if.end39.sdma_v4_0_seq_to_irq_id.exit221_crit_edge ]
  %call42 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef %retval.0.i220, i32 noundef 247, ptr noundef %srbm_write_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.cond17, label %sdma_v4_0_seq_to_irq_id.exit221.cleanup_crit_edge

sdma_v4_0_seq_to_irq_id.exit221.cleanup_crit_edge: ; preds = %sdma_v4_0_seq_to_irq_id.exit221
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body53:                                       ; preds = %for.inc93.for.body53_crit_edge, %for.body53.lr.ph
  %i.3241 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc94, %for.inc93.for.body53_crit_edge ]
  %ring55 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 3
  %ring_obj = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 3, i32 4
  %24 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ring_obj, align 8
  %use_doorbell = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 3, i32 24
  %25 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %use_doorbell, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef %i.3241, ptr noundef nonnull @.str.16) #10
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 144, i32 13, i32 %i.3241
  %26 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx58, align 4
  %shl = shl i32 %27, 1
  %doorbell_index59 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 3, i32 23
  %28 = ptrtoint ptr %doorbell_index59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl, ptr %doorbell_index59, align 8
  %name = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 3, i32 29
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.77, i32 noundef %i.3241)
  %call63 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring55, i32 noundef 1024, ptr noundef %trap_irq62, i32 noundef %i.3241, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %for.body53.cleanup_crit_edge

for.body53.cleanup_crit_edge:                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %for.body53
  %29 = ptrtoint ptr %has_page_queue to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_page_queue, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool68.not = icmp eq i8 %30, 0
  br i1 %tobool68.not, label %if.end66.for.inc93_crit_edge, label %if.then69

if.end66.for.inc93_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc93

if.then69:                                        ; preds = %if.end66
  %page = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 4
  %ring_obj73 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 4, i32 4
  %31 = ptrtoint ptr %ring_obj73 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %ring_obj73, align 8
  %use_doorbell74 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 4, i32 24
  %32 = ptrtoint ptr %use_doorbell74 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %use_doorbell74, align 4
  %33 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx58, align 4
  %shl78 = shl i32 %34, 1
  %doorbell_index79 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 4, i32 23
  %add81 = add i32 %shl78, 1024
  %35 = ptrtoint ptr %doorbell_index79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add81, ptr %doorbell_index79, align 8
  %name82 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.le, i32 0, i32 %i.3241, i32 4, i32 29
  %call84 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name82, ptr noundef nonnull @.str.78, i32 noundef %i.3241)
  %call88 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %page, i32 noundef 1024, ptr noundef %trap_irq62, i32 noundef %i.3241, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then69.for.inc93_crit_edge, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then69.for.inc93_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc93

for.inc93:                                        ; preds = %if.then69.for.inc93_crit_edge, %if.end66.for.inc93_crit_edge
  %inc94 = add nuw nsw i32 %i.3241, 1
  %36 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_instances, align 4
  %cmp52 = icmp slt i32 %inc94, %37
  br i1 %cmp52, label %for.inc93.for.body53_crit_edge, label %for.inc93.cleanup_crit_edge

for.inc93.cleanup_crit_edge:                      ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc93.for.body53_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53

cleanup:                                          ; preds = %for.inc93.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %for.body53.cleanup_crit_edge, %sdma_v4_0_seq_to_irq_id.exit221.cleanup_crit_edge, %sdma_v4_0_seq_to_irq_id.exit211.cleanup_crit_edge, %sdma_v4_0_seq_to_irq_id.exit201.cleanup_crit_edge, %sdma_v4_0_seq_to_irq_id.exit191.cleanup_crit_edge, %for.cond49.preheader.cleanup_crit_edge, %sdma_v4_0_seq_to_irq_id.exit181.cleanup_crit_edge, %sdma_v4_0_seq_to_irq_id.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond49.preheader.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %call63, %for.body53.cleanup_crit_edge ], [ %call88, %if.then69.cleanup_crit_edge ], [ 0, %for.inc93.cleanup_crit_edge ], [ %call42, %sdma_v4_0_seq_to_irq_id.exit221.cleanup_crit_edge ], [ %call36, %sdma_v4_0_seq_to_irq_id.exit211.cleanup_crit_edge ], [ %call30, %sdma_v4_0_seq_to_irq_id.exit201.cleanup_crit_edge ], [ %call24, %sdma_v4_0_seq_to_irq_id.exit191.cleanup_crit_edge ], [ %call10, %sdma_v4_0_seq_to_irq_id.exit181.cleanup_crit_edge ], [ %call2, %sdma_v4_0_seq_to_irq_id.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 12
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ras_fini = getelementptr inbounds %struct.amdgpu_sdma_ras_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ras_fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras_fini, align 4
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
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %4 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp28 = icmp sgt i32 %5, 0
  br i1 %cmp28, label %for.body.lr.ph, label %if.end.sdma_v4_0_destroy_inst_ctx.exit_crit_edge

if.end.sdma_v4_0_destroy_inst_ctx.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_destroy_inst_ctx.exit

for.body.lr.ph:                                   ; preds = %if.end
  %has_page_queue = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ring = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.029, i32 3
  tail call void @amdgpu_ring_fini(ptr noundef %ring) #10
  %6 = ptrtoint ptr %has_page_queue to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_page_queue, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %page = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.029, i32 4
  tail call void @amdgpu_ring_fini(ptr noundef %page) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %8 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23.i = icmp sgt i32 %9, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %for.end.sdma_v4_0_destroy_inst_ctx.exit_crit_edge

for.end.sdma_v4_0_destroy_inst_ctx.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_destroy_inst_ctx.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %arrayidx6.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.024.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  tail call void @release_firmware(ptr noundef %11) #10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 8
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %14, label %for.inc.i [
    i32 262658, label %for.body.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge
    i32 263168, label %for.body.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge35
  ]

for.body.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge35: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_destroy_inst_ctx.exit

for.body.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_destroy_inst_ctx.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %16 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_instances, align 4
  %cmp.i = icmp slt i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge

for.inc.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_destroy_inst_ctx.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sdma_v4_0_destroy_inst_ctx.exit:                  ; preds = %for.inc.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge, %for.body.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge, %for.body.i.sdma_v4_0_destroy_inst_ctx.exit_crit_edge35, %for.end.sdma_v4_0_destroy_inst_ctx.exit_crit_edge, %if.end.sdma_v4_0_destroy_inst_ctx.exit_crit_edge
  %18 = call ptr @memset(ptr %sdma, i32 0, i32 14656)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %handle, i32 noundef 7, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %5, label %if.then3.if.end4_crit_edge [
    i32 262144, label %sw.bb.i
    i32 262145, label %sw.bb2.i
    i32 262656, label %sw.bb3.i
    i32 262658, label %sw.bb4.i
    i32 263168, label %sw.bb5.i
    i32 262400, label %if.then3.sw.bb6.i_crit_edge
    i32 262401, label %if.then3.sw.bb6.i_crit_edge20
    i32 262402, label %sw.bb7.i
  ]

if.then3.sw.bb6.i_crit_edge20:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

if.then3.sw.bb6.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

sw.bb.i:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_4, i32 noundef 25) #10
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_vg10, i32 noundef 7) #10
  br label %if.end4

sw.bb2.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_4, i32 noundef 25) #10
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_vg12, i32 noundef 7) #10
  br label %if.end4

sw.bb3.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma0_4_2_init, i32 noundef 1) #10
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma0_4_2, i32 noundef 27) #10
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma1_4_2, i32 noundef 27) #10
  br label %if.end4

sw.bb4.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_arct, i32 noundef 32) #10
  br label %if.end4

sw.bb5.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_aldebaran, i32 noundef 15) #10
  br label %if.end4

sw.bb6.i:                                         ; preds = %if.then3.sw.bb6.i_crit_edge, %if.then3.sw.bb6.i_crit_edge20
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_4_1, i32 noundef 11) #10
  %apu_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %7 = ptrtoint ptr %apu_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %apu_flags.i, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_rv2, i32 noundef 2) #10
  br label %if.end4

if.else.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_rv1, i32 noundef 2) #10
  br label %if.end4

sw.bb7.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @soc15_program_register_sequence(ptr noundef %handle, ptr noundef nonnull @golden_settings_sdma_4_3, i32 noundef 10) #10
  br label %if.end4

if.end4:                                          ; preds = %sw.bb7.i, %if.else.i, %if.then.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt, align 8
  %and.i10 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %if.else.i13, label %if.then.i12

if.then.i12:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sdma_v4_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #10
  tail call fastcc void @sdma_v4_0_enable(ptr noundef %handle, i1 noundef zeroext false) #10
  br label %if.end5.i

if.else.i13:                                      ; preds = %if.end4
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %11 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 2
  br i1 %cmp.not.i, label %if.else.i13.if.end4.i_crit_edge, label %if.then1.i

if.else.i13.if.end4.i_crit_edge:                  ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.else.i13
  tail call fastcc void @sdma_v4_0_enable(ptr noundef %handle, i1 noundef zeroext false) #10
  %sdma.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %num_instances.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %13 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_instances.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp107.i.i = icmp sgt i32 %14, 0
  br i1 %cmp107.i.i, label %for.body.lr.ph.i.i, label %if.then1.i.if.end4.i_crit_edge

if.then1.i.if.end4.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

for.body.lr.ph.i.i:                               ; preds = %if.then1.i
  %arrayidx41.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 10
  %arrayidx35.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 9
  %arrayidx29.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 8
  %arrayidx23.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 7
  %arrayidx17.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 6
  %arrayidx11.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 5
  %arrayidx5.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 4
  %arrayidx.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit103.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0108.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc23.i.i, %sdma_v4_0_get_reg_offset.exit103.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.0108.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %for.body.i.i.sdma_v4_0_start.exit_crit_edge, label %if.end.i.i

for.body.i.i.sdma_v4_0_start.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_start.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  tail call void @amdgpu_ucode_print_sdma_hdr(ptr noundef %18) #10
  %ucode_size_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %ucode_size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ucode_size_bytes.i.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  %div51.i.i = lshr i32 %21, 2
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 8
  %data11.i.i = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %data11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data11.i.i, align 4
  %ucode_array_offset_bytes.i.i = getelementptr inbounds %struct.common_firmware_header, ptr %18, i32 0, i32 8
  %26 = ptrtoint ptr %ucode_array_offset_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ucode_array_offset_bytes.i.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %28
  %29 = zext i32 %i.0108.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %i.0108.i.i, label %if.end.i.i.sdma_v4_0_get_reg_offset.exit.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb3.i.i.i
    i32 2, label %sw.bb9.i.i.i
    i32 3, label %sw.bb15.i.i.i
    i32 4, label %sw.bb21.i.i.i
    i32 5, label %sw.bb27.i.i.i
    i32 6, label %sw.bb33.i.i.i
    i32 7, label %sw.bb39.i.i.i
  ]

if.end.i.i.sdma_v4_0_get_reg_offset.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 8
  br label %return.sink.split.i.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx5.i.i.i, align 8
  br label %return.sink.split.i.i.i

sw.bb9.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx11.i.i.i, align 8
  %arrayidx13.i.i.i = getelementptr i32, ptr %35, i32 1
  br label %return.sink.split.i.i.i

sw.bb15.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx17.i.i.i, align 8
  %arrayidx19.i.i.i = getelementptr i32, ptr %37, i32 1
  br label %return.sink.split.i.i.i

sw.bb21.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx23.i.i.i, align 8
  %arrayidx25.i.i.i = getelementptr i32, ptr %39, i32 1
  br label %return.sink.split.i.i.i

sw.bb27.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx29.i.i.i, align 8
  %arrayidx31.i.i.i = getelementptr i32, ptr %41, i32 1
  br label %return.sink.split.i.i.i

sw.bb33.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx35.i.i.i, align 8
  %arrayidx37.i.i.i = getelementptr i32, ptr %43, i32 1
  br label %return.sink.split.i.i.i

sw.bb39.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx41.i.i.i, align 8
  %arrayidx43.i.i.i = getelementptr i32, ptr %45, i32 1
  br label %return.sink.split.i.i.i

return.sink.split.i.i.i:                          ; preds = %sw.bb39.i.i.i, %sw.bb33.i.i.i, %sw.bb27.i.i.i, %sw.bb21.i.i.i, %sw.bb15.i.i.i, %sw.bb9.i.i.i, %sw.bb3.i.i.i, %sw.bb.i.i.i
  %arrayidx43.sink.i.i.i = phi ptr [ %arrayidx43.i.i.i, %sw.bb39.i.i.i ], [ %arrayidx37.i.i.i, %sw.bb33.i.i.i ], [ %arrayidx31.i.i.i, %sw.bb27.i.i.i ], [ %arrayidx25.i.i.i, %sw.bb21.i.i.i ], [ %arrayidx19.i.i.i, %sw.bb15.i.i.i ], [ %arrayidx13.i.i.i, %sw.bb9.i.i.i ], [ %33, %sw.bb3.i.i.i ], [ %31, %sw.bb.i.i.i ]
  %46 = ptrtoint ptr %arrayidx43.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx43.sink.i.i.i, align 4
  br label %sdma_v4_0_get_reg_offset.exit.i.i

sdma_v4_0_get_reg_offset.exit.i.i:                ; preds = %return.sink.split.i.i.i, %if.end.i.i.sdma_v4_0_get_reg_offset.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.i.i.sdma_v4_0_get_reg_offset.exit.i.i_crit_edge ], [ %47, %return.sink.split.i.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i.i.i, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp14104.not.i.i = icmp ult i32 %21, 4
  br i1 %cmp14104.not.i.i, label %sdma_v4_0_get_reg_offset.exit.i.i.for.end.i.i_crit_edge, label %for.body15.preheader.i.i

sdma_v4_0_get_reg_offset.exit.i.i.for.end.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body15.preheader.i.i:                         ; preds = %sdma_v4_0_get_reg_offset.exit.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div51.i.i, i32 1) #10
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit77.i.i.for.body15.i.i_crit_edge, %for.body15.preheader.i.i
  %j.0106.i.i = phi i32 [ %inc.i.i, %sdma_v4_0_get_reg_offset.exit77.i.i.for.body15.i.i_crit_edge ], [ 0, %for.body15.preheader.i.i ]
  %fw_data.0105.i.i = phi ptr [ %incdec.ptr.i.i, %sdma_v4_0_get_reg_offset.exit77.i.i.for.body15.i.i_crit_edge ], [ %add.ptr.i.i, %for.body15.preheader.i.i ]
  %48 = zext i32 %i.0108.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %i.0108.i.i, label %for.body15.i.i.sdma_v4_0_get_reg_offset.exit77.i.i_crit_edge [
    i32 0, label %sw.bb.i53.i.i
    i32 1, label %sw.bb3.i55.i.i
    i32 2, label %sw.bb9.i58.i.i
    i32 3, label %sw.bb15.i61.i.i
    i32 4, label %sw.bb21.i64.i.i
    i32 5, label %sw.bb27.i67.i.i
    i32 6, label %sw.bb33.i70.i.i
    i32 7, label %sw.bb39.i73.i.i
  ]

for.body15.i.i.sdma_v4_0_get_reg_offset.exit77.i.i_crit_edge: ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit77.i.i

sw.bb.i53.i.i:                                    ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i, align 8
  br label %return.sink.split.i75.i.i

sw.bb3.i55.i.i:                                   ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx5.i.i.i, align 8
  br label %return.sink.split.i75.i.i

sw.bb9.i58.i.i:                                   ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx11.i.i.i, align 8
  %arrayidx13.i57.i.i = getelementptr i32, ptr %54, i32 1
  br label %return.sink.split.i75.i.i

sw.bb15.i61.i.i:                                  ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx17.i.i.i, align 8
  %arrayidx19.i60.i.i = getelementptr i32, ptr %56, i32 1
  br label %return.sink.split.i75.i.i

sw.bb21.i64.i.i:                                  ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx23.i.i.i, align 8
  %arrayidx25.i63.i.i = getelementptr i32, ptr %58, i32 1
  br label %return.sink.split.i75.i.i

sw.bb27.i67.i.i:                                  ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx29.i.i.i, align 8
  %arrayidx31.i66.i.i = getelementptr i32, ptr %60, i32 1
  br label %return.sink.split.i75.i.i

sw.bb33.i70.i.i:                                  ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx35.i.i.i, align 8
  %arrayidx37.i69.i.i = getelementptr i32, ptr %62, i32 1
  br label %return.sink.split.i75.i.i

sw.bb39.i73.i.i:                                  ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx41.i.i.i, align 8
  %arrayidx43.i72.i.i = getelementptr i32, ptr %64, i32 1
  br label %return.sink.split.i75.i.i

return.sink.split.i75.i.i:                        ; preds = %sw.bb39.i73.i.i, %sw.bb33.i70.i.i, %sw.bb27.i67.i.i, %sw.bb21.i64.i.i, %sw.bb15.i61.i.i, %sw.bb9.i58.i.i, %sw.bb3.i55.i.i, %sw.bb.i53.i.i
  %arrayidx43.sink.i74.i.i = phi ptr [ %arrayidx43.i72.i.i, %sw.bb39.i73.i.i ], [ %arrayidx37.i69.i.i, %sw.bb33.i70.i.i ], [ %arrayidx31.i66.i.i, %sw.bb27.i67.i.i ], [ %arrayidx25.i63.i.i, %sw.bb21.i64.i.i ], [ %arrayidx19.i60.i.i, %sw.bb15.i61.i.i ], [ %arrayidx13.i57.i.i, %sw.bb9.i58.i.i ], [ %52, %sw.bb3.i55.i.i ], [ %50, %sw.bb.i53.i.i ]
  %65 = ptrtoint ptr %arrayidx43.sink.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx43.sink.i74.i.i, align 4
  %add44.i.i.i = add i32 %66, 1
  br label %sdma_v4_0_get_reg_offset.exit77.i.i

sdma_v4_0_get_reg_offset.exit77.i.i:              ; preds = %return.sink.split.i75.i.i, %for.body15.i.i.sdma_v4_0_get_reg_offset.exit77.i.i_crit_edge
  %retval.0.i76.i.i = phi i32 [ 0, %for.body15.i.i.sdma_v4_0_get_reg_offset.exit77.i.i_crit_edge ], [ %add44.i.i.i, %return.sink.split.i75.i.i ]
  %incdec.ptr.i.i = getelementptr i32, ptr %fw_data.0105.i.i, i32 1
  %67 = ptrtoint ptr %fw_data.0105.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fw_data.0105.i.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #10
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i76.i.i, i32 noundef %69, i32 noundef 0) #10
  %inc.i.i = add nuw nsw i32 %j.0106.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %sdma_v4_0_get_reg_offset.exit77.i.i.for.end.i.i_crit_edge, label %sdma_v4_0_get_reg_offset.exit77.i.i.for.body15.i.i_crit_edge

sdma_v4_0_get_reg_offset.exit77.i.i.for.body15.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15.i.i

sdma_v4_0_get_reg_offset.exit77.i.i.for.end.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit77.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit77.i.i.for.end.i.i_crit_edge, %sdma_v4_0_get_reg_offset.exit.i.i.for.end.i.i_crit_edge
  %70 = zext i32 %i.0108.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %i.0108.i.i, label %for.end.i.i.sdma_v4_0_get_reg_offset.exit103.i.i_crit_edge [
    i32 0, label %sw.bb.i79.i.i
    i32 1, label %sw.bb3.i81.i.i
    i32 2, label %sw.bb9.i84.i.i
    i32 3, label %sw.bb15.i87.i.i
    i32 4, label %sw.bb21.i90.i.i
    i32 5, label %sw.bb27.i93.i.i
    i32 6, label %sw.bb33.i96.i.i
    i32 7, label %sw.bb39.i99.i.i
  ]

for.end.i.i.sdma_v4_0_get_reg_offset.exit103.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit103.i.i

sw.bb.i79.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i, align 8
  br label %return.sink.split.i101.i.i

sw.bb3.i81.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx5.i.i.i, align 8
  br label %return.sink.split.i101.i.i

sw.bb9.i84.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx11.i.i.i, align 8
  %arrayidx13.i83.i.i = getelementptr i32, ptr %76, i32 1
  br label %return.sink.split.i101.i.i

sw.bb15.i87.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx17.i.i.i, align 8
  %arrayidx19.i86.i.i = getelementptr i32, ptr %78, i32 1
  br label %return.sink.split.i101.i.i

sw.bb21.i90.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx23.i.i.i, align 8
  %arrayidx25.i89.i.i = getelementptr i32, ptr %80, i32 1
  br label %return.sink.split.i101.i.i

sw.bb27.i93.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx29.i.i.i, align 8
  %arrayidx31.i92.i.i = getelementptr i32, ptr %82, i32 1
  br label %return.sink.split.i101.i.i

sw.bb33.i96.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx35.i.i.i, align 8
  %arrayidx37.i95.i.i = getelementptr i32, ptr %84, i32 1
  br label %return.sink.split.i101.i.i

sw.bb39.i99.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx41.i.i.i, align 8
  %arrayidx43.i98.i.i = getelementptr i32, ptr %86, i32 1
  br label %return.sink.split.i101.i.i

return.sink.split.i101.i.i:                       ; preds = %sw.bb39.i99.i.i, %sw.bb33.i96.i.i, %sw.bb27.i93.i.i, %sw.bb21.i90.i.i, %sw.bb15.i87.i.i, %sw.bb9.i84.i.i, %sw.bb3.i81.i.i, %sw.bb.i79.i.i
  %arrayidx43.sink.i100.i.i = phi ptr [ %arrayidx43.i98.i.i, %sw.bb39.i99.i.i ], [ %arrayidx37.i95.i.i, %sw.bb33.i96.i.i ], [ %arrayidx31.i92.i.i, %sw.bb27.i93.i.i ], [ %arrayidx25.i89.i.i, %sw.bb21.i90.i.i ], [ %arrayidx19.i86.i.i, %sw.bb15.i87.i.i ], [ %arrayidx13.i83.i.i, %sw.bb9.i84.i.i ], [ %74, %sw.bb3.i81.i.i ], [ %72, %sw.bb.i79.i.i ]
  %87 = ptrtoint ptr %arrayidx43.sink.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx43.sink.i100.i.i, align 4
  br label %sdma_v4_0_get_reg_offset.exit103.i.i

sdma_v4_0_get_reg_offset.exit103.i.i:             ; preds = %return.sink.split.i101.i.i, %for.end.i.i.sdma_v4_0_get_reg_offset.exit103.i.i_crit_edge
  %retval.0.i102.i.i = phi i32 [ 0, %for.end.i.i.sdma_v4_0_get_reg_offset.exit103.i.i_crit_edge ], [ %88, %return.sink.split.i101.i.i ]
  %fw_version.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.0108.i.i, i32 1
  %89 = ptrtoint ptr %fw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fw_version.i.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i102.i.i, i32 noundef %90, i32 noundef 0) #10
  %inc23.i.i = add nuw nsw i32 %i.0108.i.i, 1
  %91 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_instances.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc23.i.i, %92
  br i1 %cmp.i.i, label %sdma_v4_0_get_reg_offset.exit103.i.i.for.body.i.i_crit_edge, label %sdma_v4_0_get_reg_offset.exit103.i.i.if.end4.i_crit_edge

sdma_v4_0_get_reg_offset.exit103.i.i.if.end4.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

sdma_v4_0_get_reg_offset.exit103.i.i.for.body.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end4.i:                                        ; preds = %sdma_v4_0_get_reg_offset.exit103.i.i.if.end4.i_crit_edge, %if.then1.i.if.end4.i_crit_edge, %if.else.i13.if.end4.i_crit_edge
  tail call fastcc void @sdma_v4_0_enable(ptr noundef %handle, i1 noundef zeroext true) #10
  tail call fastcc void @sdma_v4_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext true) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end4.i, %if.then.i12
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %93 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp6358.i = icmp sgt i32 %94, 0
  br i1 %cmp6358.i, label %for.body.lr.ph.i, label %if.end5.i.for.end.i_crit_edge

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %arrayidx41.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 10
  %arrayidx35.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 9
  %arrayidx29.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 8
  %arrayidx23.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 7
  %arrayidx17.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 6
  %arrayidx11.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 5
  %arrayidx5.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 4
  %arrayidx.i134.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  %gpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 2
  %has_page_queue.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0359.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end26.i.for.body.i_crit_edge ]
  %95 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %i.0359.i, label %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb9.i.i
    i32 3, label %sw.bb15.i.i
    i32 4, label %sw.bb21.i.i
    i32 5, label %sw.bb27.i.i
    i32 6, label %sw.bb33.i.i
    i32 7, label %sw.bb39.i.i
  ]

for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i.i

sw.bb3.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i.i

sw.bb9.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i.i = getelementptr i32, ptr %101, i32 1
  br label %return.sink.split.i.i

sw.bb15.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i.i = getelementptr i32, ptr %103, i32 1
  br label %return.sink.split.i.i

sw.bb21.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i.i = getelementptr i32, ptr %105, i32 1
  br label %return.sink.split.i.i

sw.bb27.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i.i = getelementptr i32, ptr %107, i32 1
  br label %return.sink.split.i.i

sw.bb33.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i.i = getelementptr i32, ptr %109, i32 1
  br label %return.sink.split.i.i

sw.bb39.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i.i = getelementptr i32, ptr %111, i32 1
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %sw.bb39.i.i, %sw.bb33.i.i, %sw.bb27.i.i, %sw.bb21.i.i, %sw.bb15.i.i, %sw.bb9.i.i, %sw.bb3.i.i, %sw.bb.i.i
  %arrayidx43.sink.i.i = phi ptr [ %arrayidx43.i.i, %sw.bb39.i.i ], [ %arrayidx37.i.i, %sw.bb33.i.i ], [ %arrayidx31.i.i, %sw.bb27.i.i ], [ %arrayidx25.i.i, %sw.bb21.i.i ], [ %arrayidx19.i.i, %sw.bb15.i.i ], [ %arrayidx13.i.i, %sw.bb9.i.i ], [ %99, %sw.bb3.i.i ], [ %97, %sw.bb.i.i ]
  %112 = ptrtoint ptr %arrayidx43.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx43.sink.i.i, align 4
  %add44.i.i = add i32 %113, 33
  br label %sdma_v4_0_get_reg_offset.exit.i

sdma_v4_0_get_reg_offset.exit.i:                  ; preds = %return.sink.split.i.i, %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge
  %retval.0.i135.i = phi i32 [ 0, %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge ], [ %add44.i.i, %return.sink.split.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i135.i, i32 noundef 0, i32 noundef 0) #10
  %ring1.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3
  %rptr_offs.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3, i32 6
  %114 = ptrtoint ptr %rptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rptr_offs.i.i, align 8
  %mul.i.i = shl i32 %115, 2
  %116 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit.i163.i_crit_edge [
    i32 0, label %sw.bb.i.i138.i
    i32 1, label %sw.bb3.i.i140.i
    i32 2, label %sw.bb9.i.i143.i
    i32 3, label %sw.bb15.i.i146.i
    i32 4, label %sw.bb21.i.i149.i
    i32 5, label %sw.bb27.i.i152.i
    i32 6, label %sw.bb33.i.i155.i
    i32 7, label %sw.bb39.i.i158.i
  ]

sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit.i163.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit.i163.i

sw.bb.i.i138.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i.i161.i

sw.bb3.i.i140.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i.i161.i

sw.bb9.i.i143.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i.i142.i = getelementptr i32, ptr %122, i32 1
  br label %return.sink.split.i.i161.i

sw.bb15.i.i146.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i.i145.i = getelementptr i32, ptr %124, i32 1
  br label %return.sink.split.i.i161.i

sw.bb21.i.i149.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i.i148.i = getelementptr i32, ptr %126, i32 1
  br label %return.sink.split.i.i161.i

sw.bb27.i.i152.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i.i151.i = getelementptr i32, ptr %128, i32 1
  br label %return.sink.split.i.i161.i

sw.bb33.i.i155.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i.i154.i = getelementptr i32, ptr %130, i32 1
  br label %return.sink.split.i.i161.i

sw.bb39.i.i158.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i.i157.i = getelementptr i32, ptr %132, i32 1
  br label %return.sink.split.i.i161.i

return.sink.split.i.i161.i:                       ; preds = %sw.bb39.i.i158.i, %sw.bb33.i.i155.i, %sw.bb27.i.i152.i, %sw.bb21.i.i149.i, %sw.bb15.i.i146.i, %sw.bb9.i.i143.i, %sw.bb3.i.i140.i, %sw.bb.i.i138.i
  %arrayidx43.sink.i.i159.i = phi ptr [ %arrayidx43.i.i157.i, %sw.bb39.i.i158.i ], [ %arrayidx37.i.i154.i, %sw.bb33.i.i155.i ], [ %arrayidx31.i.i151.i, %sw.bb27.i.i152.i ], [ %arrayidx25.i.i148.i, %sw.bb21.i.i149.i ], [ %arrayidx19.i.i145.i, %sw.bb15.i.i146.i ], [ %arrayidx13.i.i142.i, %sw.bb9.i.i143.i ], [ %120, %sw.bb3.i.i140.i ], [ %118, %sw.bb.i.i138.i ]
  %133 = ptrtoint ptr %arrayidx43.sink.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx43.sink.i.i159.i, align 4
  %add44.i.i160.i = add i32 %134, 128
  br label %sdma_v4_0_get_reg_offset.exit.i163.i

sdma_v4_0_get_reg_offset.exit.i163.i:             ; preds = %return.sink.split.i.i161.i, %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit.i163.i_crit_edge
  %retval.0.i.i162.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit.i163.i_crit_edge ], [ %add44.i.i160.i, %return.sink.split.i.i161.i ]
  %call2.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i.i162.i, i32 noundef 0) #10
  %ring_size.i.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3, i32 9
  %135 = ptrtoint ptr %ring_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ring_size.i.i.i, align 8
  %div49.i.i.i = lshr i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %136)
  %cmp.i.i.i.i = icmp ugt i32 %136, 7
  %sub.i50.i.i.i = add nsw i32 %div49.i.i.i, -1
  %137 = tail call i32 @llvm.ctlz.i32(i32 %sub.i50.i.i.i, i1 false) #10, !range !252
  %and.i.i.i = and i32 %call2.i.i, -8767
  %.neg = mul nuw nsw i32 %137, 62
  %.neg.op = and i32 %.neg, 62
  %and34.i.i.i = select i1 %cmp.i.i.i.i, i32 %.neg.op, i32 0
  %or.i.i.i = or i32 %and34.i.i.i, %and.i.i.i
  %or38.i.i.i = or i32 %or.i.i.i, 8704
  %138 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit.i163.i.sdma_v4_0_get_reg_offset.exit195.i.i_crit_edge [
    i32 0, label %sw.bb.i170.i.i
    i32 1, label %sw.bb3.i172.i.i
    i32 2, label %sw.bb9.i175.i.i
    i32 3, label %sw.bb15.i178.i.i
    i32 4, label %sw.bb21.i181.i.i
    i32 5, label %sw.bb27.i184.i.i
    i32 6, label %sw.bb33.i187.i.i
    i32 7, label %sw.bb39.i190.i.i
  ]

sdma_v4_0_get_reg_offset.exit.i163.i.sdma_v4_0_get_reg_offset.exit195.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit195.i.i

sw.bb.i170.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i193.i.i

sw.bb3.i172.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i193.i.i

sw.bb9.i175.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i174.i.i = getelementptr i32, ptr %144, i32 1
  br label %return.sink.split.i193.i.i

sw.bb15.i178.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i177.i.i = getelementptr i32, ptr %146, i32 1
  br label %return.sink.split.i193.i.i

sw.bb21.i181.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i180.i.i = getelementptr i32, ptr %148, i32 1
  br label %return.sink.split.i193.i.i

sw.bb27.i184.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i183.i.i = getelementptr i32, ptr %150, i32 1
  br label %return.sink.split.i193.i.i

sw.bb33.i187.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i186.i.i = getelementptr i32, ptr %152, i32 1
  br label %return.sink.split.i193.i.i

sw.bb39.i190.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i163.i
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i189.i.i = getelementptr i32, ptr %154, i32 1
  br label %return.sink.split.i193.i.i

return.sink.split.i193.i.i:                       ; preds = %sw.bb39.i190.i.i, %sw.bb33.i187.i.i, %sw.bb27.i184.i.i, %sw.bb21.i181.i.i, %sw.bb15.i178.i.i, %sw.bb9.i175.i.i, %sw.bb3.i172.i.i, %sw.bb.i170.i.i
  %arrayidx43.sink.i191.i.i = phi ptr [ %arrayidx43.i189.i.i, %sw.bb39.i190.i.i ], [ %arrayidx37.i186.i.i, %sw.bb33.i187.i.i ], [ %arrayidx31.i183.i.i, %sw.bb27.i184.i.i ], [ %arrayidx25.i180.i.i, %sw.bb21.i181.i.i ], [ %arrayidx19.i177.i.i, %sw.bb15.i178.i.i ], [ %arrayidx13.i174.i.i, %sw.bb9.i175.i.i ], [ %142, %sw.bb3.i172.i.i ], [ %140, %sw.bb.i170.i.i ]
  %155 = ptrtoint ptr %arrayidx43.sink.i191.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx43.sink.i191.i.i, align 4
  %add44.i192.i.i = add i32 %156, 128
  br label %sdma_v4_0_get_reg_offset.exit195.i.i

sdma_v4_0_get_reg_offset.exit195.i.i:             ; preds = %return.sink.split.i193.i.i, %sdma_v4_0_get_reg_offset.exit.i163.i.sdma_v4_0_get_reg_offset.exit195.i.i_crit_edge
  %retval.0.i194.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.i163.i.sdma_v4_0_get_reg_offset.exit195.i.i_crit_edge ], [ %add44.i192.i.i, %return.sink.split.i193.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i194.i.i, i32 noundef %or38.i.i.i, i32 noundef 0) #10
  %157 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit195.i.i.sdma_v4_0_get_reg_offset.exit222.i.i_crit_edge [
    i32 0, label %sw.bb.i197.i.i
    i32 1, label %sw.bb3.i199.i.i
    i32 2, label %sw.bb9.i202.i.i
    i32 3, label %sw.bb15.i205.i.i
    i32 4, label %sw.bb21.i208.i.i
    i32 5, label %sw.bb27.i211.i.i
    i32 6, label %sw.bb33.i214.i.i
    i32 7, label %sw.bb39.i217.i.i
  ]

sdma_v4_0_get_reg_offset.exit195.i.i.sdma_v4_0_get_reg_offset.exit222.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit222.i.i

sw.bb.i197.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i220.i.i

sw.bb3.i199.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i220.i.i

sw.bb9.i202.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %162 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i201.i.i = getelementptr i32, ptr %163, i32 1
  br label %return.sink.split.i220.i.i

sw.bb15.i205.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i204.i.i = getelementptr i32, ptr %165, i32 1
  br label %return.sink.split.i220.i.i

sw.bb21.i208.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i207.i.i = getelementptr i32, ptr %167, i32 1
  br label %return.sink.split.i220.i.i

sw.bb27.i211.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i210.i.i = getelementptr i32, ptr %169, i32 1
  br label %return.sink.split.i220.i.i

sw.bb33.i214.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i213.i.i = getelementptr i32, ptr %171, i32 1
  br label %return.sink.split.i220.i.i

sw.bb39.i217.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit195.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i216.i.i = getelementptr i32, ptr %173, i32 1
  br label %return.sink.split.i220.i.i

return.sink.split.i220.i.i:                       ; preds = %sw.bb39.i217.i.i, %sw.bb33.i214.i.i, %sw.bb27.i211.i.i, %sw.bb21.i208.i.i, %sw.bb15.i205.i.i, %sw.bb9.i202.i.i, %sw.bb3.i199.i.i, %sw.bb.i197.i.i
  %arrayidx43.sink.i218.i.i = phi ptr [ %arrayidx43.i216.i.i, %sw.bb39.i217.i.i ], [ %arrayidx37.i213.i.i, %sw.bb33.i214.i.i ], [ %arrayidx31.i210.i.i, %sw.bb27.i211.i.i ], [ %arrayidx25.i207.i.i, %sw.bb21.i208.i.i ], [ %arrayidx19.i204.i.i, %sw.bb15.i205.i.i ], [ %arrayidx13.i201.i.i, %sw.bb9.i202.i.i ], [ %161, %sw.bb3.i199.i.i ], [ %159, %sw.bb.i197.i.i ]
  %174 = ptrtoint ptr %arrayidx43.sink.i218.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx43.sink.i218.i.i, align 4
  %add44.i219.i.i = add i32 %175, 131
  br label %sdma_v4_0_get_reg_offset.exit222.i.i

sdma_v4_0_get_reg_offset.exit222.i.i:             ; preds = %return.sink.split.i220.i.i, %sdma_v4_0_get_reg_offset.exit195.i.i.sdma_v4_0_get_reg_offset.exit222.i.i_crit_edge
  %retval.0.i221.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit195.i.i.sdma_v4_0_get_reg_offset.exit222.i.i_crit_edge ], [ %add44.i219.i.i, %return.sink.split.i220.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i221.i.i, i32 noundef 0, i32 noundef 0) #10
  %176 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit222.i.i.sdma_v4_0_get_reg_offset.exit249.i.i_crit_edge [
    i32 0, label %sw.bb.i224.i.i
    i32 1, label %sw.bb3.i226.i.i
    i32 2, label %sw.bb9.i229.i.i
    i32 3, label %sw.bb15.i232.i.i
    i32 4, label %sw.bb21.i235.i.i
    i32 5, label %sw.bb27.i238.i.i
    i32 6, label %sw.bb33.i241.i.i
    i32 7, label %sw.bb39.i244.i.i
  ]

sdma_v4_0_get_reg_offset.exit222.i.i.sdma_v4_0_get_reg_offset.exit249.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit249.i.i

sw.bb.i224.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i247.i.i

sw.bb3.i226.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i247.i.i

sw.bb9.i229.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i228.i.i = getelementptr i32, ptr %182, i32 1
  br label %return.sink.split.i247.i.i

sw.bb15.i232.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i231.i.i = getelementptr i32, ptr %184, i32 1
  br label %return.sink.split.i247.i.i

sw.bb21.i235.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i234.i.i = getelementptr i32, ptr %186, i32 1
  br label %return.sink.split.i247.i.i

sw.bb27.i238.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i237.i.i = getelementptr i32, ptr %188, i32 1
  br label %return.sink.split.i247.i.i

sw.bb33.i241.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %189 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i240.i.i = getelementptr i32, ptr %190, i32 1
  br label %return.sink.split.i247.i.i

sw.bb39.i244.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i243.i.i = getelementptr i32, ptr %192, i32 1
  br label %return.sink.split.i247.i.i

return.sink.split.i247.i.i:                       ; preds = %sw.bb39.i244.i.i, %sw.bb33.i241.i.i, %sw.bb27.i238.i.i, %sw.bb21.i235.i.i, %sw.bb15.i232.i.i, %sw.bb9.i229.i.i, %sw.bb3.i226.i.i, %sw.bb.i224.i.i
  %arrayidx43.sink.i245.i.i = phi ptr [ %arrayidx43.i243.i.i, %sw.bb39.i244.i.i ], [ %arrayidx37.i240.i.i, %sw.bb33.i241.i.i ], [ %arrayidx31.i237.i.i, %sw.bb27.i238.i.i ], [ %arrayidx25.i234.i.i, %sw.bb21.i235.i.i ], [ %arrayidx19.i231.i.i, %sw.bb15.i232.i.i ], [ %arrayidx13.i228.i.i, %sw.bb9.i229.i.i ], [ %180, %sw.bb3.i226.i.i ], [ %178, %sw.bb.i224.i.i ]
  %193 = ptrtoint ptr %arrayidx43.sink.i245.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx43.sink.i245.i.i, align 4
  %add44.i246.i.i = add i32 %194, 132
  br label %sdma_v4_0_get_reg_offset.exit249.i.i

sdma_v4_0_get_reg_offset.exit249.i.i:             ; preds = %return.sink.split.i247.i.i, %sdma_v4_0_get_reg_offset.exit222.i.i.sdma_v4_0_get_reg_offset.exit249.i.i_crit_edge
  %retval.0.i248.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit222.i.i.sdma_v4_0_get_reg_offset.exit249.i.i_crit_edge ], [ %add44.i246.i.i, %return.sink.split.i247.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i248.i.i, i32 noundef 0, i32 noundef 0) #10
  %195 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit249.i.i.sdma_v4_0_get_reg_offset.exit276.i.i_crit_edge [
    i32 0, label %sw.bb.i251.i.i
    i32 1, label %sw.bb3.i253.i.i
    i32 2, label %sw.bb9.i256.i.i
    i32 3, label %sw.bb15.i259.i.i
    i32 4, label %sw.bb21.i262.i.i
    i32 5, label %sw.bb27.i265.i.i
    i32 6, label %sw.bb33.i268.i.i
    i32 7, label %sw.bb39.i271.i.i
  ]

sdma_v4_0_get_reg_offset.exit249.i.i.sdma_v4_0_get_reg_offset.exit276.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit276.i.i

sw.bb.i251.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i274.i.i

sw.bb3.i253.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i274.i.i

sw.bb9.i256.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i255.i.i = getelementptr i32, ptr %201, i32 1
  br label %return.sink.split.i274.i.i

sw.bb15.i259.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i258.i.i = getelementptr i32, ptr %203, i32 1
  br label %return.sink.split.i274.i.i

sw.bb21.i262.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %204 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i261.i.i = getelementptr i32, ptr %205, i32 1
  br label %return.sink.split.i274.i.i

sw.bb27.i265.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %206 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i264.i.i = getelementptr i32, ptr %207, i32 1
  br label %return.sink.split.i274.i.i

sw.bb33.i268.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i267.i.i = getelementptr i32, ptr %209, i32 1
  br label %return.sink.split.i274.i.i

sw.bb39.i271.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i270.i.i = getelementptr i32, ptr %211, i32 1
  br label %return.sink.split.i274.i.i

return.sink.split.i274.i.i:                       ; preds = %sw.bb39.i271.i.i, %sw.bb33.i268.i.i, %sw.bb27.i265.i.i, %sw.bb21.i262.i.i, %sw.bb15.i259.i.i, %sw.bb9.i256.i.i, %sw.bb3.i253.i.i, %sw.bb.i251.i.i
  %arrayidx43.sink.i272.i.i = phi ptr [ %arrayidx43.i270.i.i, %sw.bb39.i271.i.i ], [ %arrayidx37.i267.i.i, %sw.bb33.i268.i.i ], [ %arrayidx31.i264.i.i, %sw.bb27.i265.i.i ], [ %arrayidx25.i261.i.i, %sw.bb21.i262.i.i ], [ %arrayidx19.i258.i.i, %sw.bb15.i259.i.i ], [ %arrayidx13.i255.i.i, %sw.bb9.i256.i.i ], [ %199, %sw.bb3.i253.i.i ], [ %197, %sw.bb.i251.i.i ]
  %212 = ptrtoint ptr %arrayidx43.sink.i272.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx43.sink.i272.i.i, align 4
  %add44.i273.i.i = add i32 %213, 133
  br label %sdma_v4_0_get_reg_offset.exit276.i.i

sdma_v4_0_get_reg_offset.exit276.i.i:             ; preds = %return.sink.split.i274.i.i, %sdma_v4_0_get_reg_offset.exit249.i.i.sdma_v4_0_get_reg_offset.exit276.i.i_crit_edge
  %retval.0.i275.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit249.i.i.sdma_v4_0_get_reg_offset.exit276.i.i_crit_edge ], [ %add44.i273.i.i, %return.sink.split.i274.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i275.i.i, i32 noundef 0, i32 noundef 0) #10
  %214 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit276.i.i.sdma_v4_0_get_reg_offset.exit303.i.i_crit_edge [
    i32 0, label %sw.bb.i278.i.i
    i32 1, label %sw.bb3.i280.i.i
    i32 2, label %sw.bb9.i283.i.i
    i32 3, label %sw.bb15.i286.i.i
    i32 4, label %sw.bb21.i289.i.i
    i32 5, label %sw.bb27.i292.i.i
    i32 6, label %sw.bb33.i295.i.i
    i32 7, label %sw.bb39.i298.i.i
  ]

sdma_v4_0_get_reg_offset.exit276.i.i.sdma_v4_0_get_reg_offset.exit303.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit303.i.i

sw.bb.i278.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %215 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i301.i.i

sw.bb3.i280.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %217 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i301.i.i

sw.bb9.i283.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i282.i.i = getelementptr i32, ptr %220, i32 1
  br label %return.sink.split.i301.i.i

sw.bb15.i286.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %221 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i285.i.i = getelementptr i32, ptr %222, i32 1
  br label %return.sink.split.i301.i.i

sw.bb21.i289.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %223 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i288.i.i = getelementptr i32, ptr %224, i32 1
  br label %return.sink.split.i301.i.i

sw.bb27.i292.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %225 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i291.i.i = getelementptr i32, ptr %226, i32 1
  br label %return.sink.split.i301.i.i

sw.bb33.i295.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i294.i.i = getelementptr i32, ptr %228, i32 1
  br label %return.sink.split.i301.i.i

sw.bb39.i298.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit276.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i297.i.i = getelementptr i32, ptr %230, i32 1
  br label %return.sink.split.i301.i.i

return.sink.split.i301.i.i:                       ; preds = %sw.bb39.i298.i.i, %sw.bb33.i295.i.i, %sw.bb27.i292.i.i, %sw.bb21.i289.i.i, %sw.bb15.i286.i.i, %sw.bb9.i283.i.i, %sw.bb3.i280.i.i, %sw.bb.i278.i.i
  %arrayidx43.sink.i299.i.i = phi ptr [ %arrayidx43.i297.i.i, %sw.bb39.i298.i.i ], [ %arrayidx37.i294.i.i, %sw.bb33.i295.i.i ], [ %arrayidx31.i291.i.i, %sw.bb27.i292.i.i ], [ %arrayidx25.i288.i.i, %sw.bb21.i289.i.i ], [ %arrayidx19.i285.i.i, %sw.bb15.i286.i.i ], [ %arrayidx13.i282.i.i, %sw.bb9.i283.i.i ], [ %218, %sw.bb3.i280.i.i ], [ %216, %sw.bb.i278.i.i ]
  %231 = ptrtoint ptr %arrayidx43.sink.i299.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx43.sink.i299.i.i, align 4
  %add44.i300.i.i = add i32 %232, 134
  br label %sdma_v4_0_get_reg_offset.exit303.i.i

sdma_v4_0_get_reg_offset.exit303.i.i:             ; preds = %return.sink.split.i301.i.i, %sdma_v4_0_get_reg_offset.exit276.i.i.sdma_v4_0_get_reg_offset.exit303.i.i_crit_edge
  %retval.0.i302.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit276.i.i.sdma_v4_0_get_reg_offset.exit303.i.i_crit_edge ], [ %add44.i300.i.i, %return.sink.split.i301.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i302.i.i, i32 noundef 0, i32 noundef 0) #10
  %233 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit303.i.i.sdma_v4_0_get_reg_offset.exit330.i.i_crit_edge [
    i32 0, label %sw.bb.i305.i.i
    i32 1, label %sw.bb3.i307.i.i
    i32 2, label %sw.bb9.i310.i.i
    i32 3, label %sw.bb15.i313.i.i
    i32 4, label %sw.bb21.i316.i.i
    i32 5, label %sw.bb27.i319.i.i
    i32 6, label %sw.bb33.i322.i.i
    i32 7, label %sw.bb39.i325.i.i
  ]

sdma_v4_0_get_reg_offset.exit303.i.i.sdma_v4_0_get_reg_offset.exit330.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit330.i.i

sw.bb.i305.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %234 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i328.i.i

sw.bb3.i307.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %236 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i328.i.i

sw.bb9.i310.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %238 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i309.i.i = getelementptr i32, ptr %239, i32 1
  br label %return.sink.split.i328.i.i

sw.bb15.i313.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %240 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i312.i.i = getelementptr i32, ptr %241, i32 1
  br label %return.sink.split.i328.i.i

sw.bb21.i316.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %242 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i315.i.i = getelementptr i32, ptr %243, i32 1
  br label %return.sink.split.i328.i.i

sw.bb27.i319.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %244 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i318.i.i = getelementptr i32, ptr %245, i32 1
  br label %return.sink.split.i328.i.i

sw.bb33.i322.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %246 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i321.i.i = getelementptr i32, ptr %247, i32 1
  br label %return.sink.split.i328.i.i

sw.bb39.i325.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit303.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %248 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i324.i.i = getelementptr i32, ptr %249, i32 1
  br label %return.sink.split.i328.i.i

return.sink.split.i328.i.i:                       ; preds = %sw.bb39.i325.i.i, %sw.bb33.i322.i.i, %sw.bb27.i319.i.i, %sw.bb21.i316.i.i, %sw.bb15.i313.i.i, %sw.bb9.i310.i.i, %sw.bb3.i307.i.i, %sw.bb.i305.i.i
  %arrayidx43.sink.i326.i.i = phi ptr [ %arrayidx43.i324.i.i, %sw.bb39.i325.i.i ], [ %arrayidx37.i321.i.i, %sw.bb33.i322.i.i ], [ %arrayidx31.i318.i.i, %sw.bb27.i319.i.i ], [ %arrayidx25.i315.i.i, %sw.bb21.i316.i.i ], [ %arrayidx19.i312.i.i, %sw.bb15.i313.i.i ], [ %arrayidx13.i309.i.i, %sw.bb9.i310.i.i ], [ %237, %sw.bb3.i307.i.i ], [ %235, %sw.bb.i305.i.i ]
  %250 = ptrtoint ptr %arrayidx43.sink.i326.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx43.sink.i326.i.i, align 4
  %add44.i327.i.i = add i32 %251, 136
  br label %sdma_v4_0_get_reg_offset.exit330.i.i

sdma_v4_0_get_reg_offset.exit330.i.i:             ; preds = %return.sink.split.i328.i.i, %sdma_v4_0_get_reg_offset.exit303.i.i.sdma_v4_0_get_reg_offset.exit330.i.i_crit_edge
  %retval.0.i329.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit303.i.i.sdma_v4_0_get_reg_offset.exit330.i.i_crit_edge ], [ %add44.i327.i.i, %return.sink.split.i328.i.i ]
  %252 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %gpu_addr.i.i, align 8
  %conv.i.i = zext i32 %mul.i.i to i64
  %add.i.i = add i64 %253, %conv.i.i
  %shr.i.i = lshr i64 %add.i.i, 32
  %conv11.i.i = trunc i64 %shr.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i329.i.i, i32 noundef %conv11.i.i, i32 noundef 0) #10
  %254 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %254, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit330.i.i.sdma_v4_0_get_reg_offset.exit357.i.i_crit_edge [
    i32 0, label %sw.bb.i332.i.i
    i32 1, label %sw.bb3.i334.i.i
    i32 2, label %sw.bb9.i337.i.i
    i32 3, label %sw.bb15.i340.i.i
    i32 4, label %sw.bb21.i343.i.i
    i32 5, label %sw.bb27.i346.i.i
    i32 6, label %sw.bb33.i349.i.i
    i32 7, label %sw.bb39.i352.i.i
  ]

sdma_v4_0_get_reg_offset.exit330.i.i.sdma_v4_0_get_reg_offset.exit357.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit357.i.i

sw.bb.i332.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %255 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i355.i.i

sw.bb3.i334.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %257 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i355.i.i

sw.bb9.i337.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %259 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i336.i.i = getelementptr i32, ptr %260, i32 1
  br label %return.sink.split.i355.i.i

sw.bb15.i340.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %261 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i339.i.i = getelementptr i32, ptr %262, i32 1
  br label %return.sink.split.i355.i.i

sw.bb21.i343.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %263 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i342.i.i = getelementptr i32, ptr %264, i32 1
  br label %return.sink.split.i355.i.i

sw.bb27.i346.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %265 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i345.i.i = getelementptr i32, ptr %266, i32 1
  br label %return.sink.split.i355.i.i

sw.bb33.i349.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %267 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i348.i.i = getelementptr i32, ptr %268, i32 1
  br label %return.sink.split.i355.i.i

sw.bb39.i352.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %269 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i351.i.i = getelementptr i32, ptr %270, i32 1
  br label %return.sink.split.i355.i.i

return.sink.split.i355.i.i:                       ; preds = %sw.bb39.i352.i.i, %sw.bb33.i349.i.i, %sw.bb27.i346.i.i, %sw.bb21.i343.i.i, %sw.bb15.i340.i.i, %sw.bb9.i337.i.i, %sw.bb3.i334.i.i, %sw.bb.i332.i.i
  %arrayidx43.sink.i353.i.i = phi ptr [ %arrayidx43.i351.i.i, %sw.bb39.i352.i.i ], [ %arrayidx37.i348.i.i, %sw.bb33.i349.i.i ], [ %arrayidx31.i345.i.i, %sw.bb27.i346.i.i ], [ %arrayidx25.i342.i.i, %sw.bb21.i343.i.i ], [ %arrayidx19.i339.i.i, %sw.bb15.i340.i.i ], [ %arrayidx13.i336.i.i, %sw.bb9.i337.i.i ], [ %258, %sw.bb3.i334.i.i ], [ %256, %sw.bb.i332.i.i ]
  %271 = ptrtoint ptr %arrayidx43.sink.i353.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx43.sink.i353.i.i, align 4
  %add44.i354.i.i = add i32 %272, 137
  br label %sdma_v4_0_get_reg_offset.exit357.i.i

sdma_v4_0_get_reg_offset.exit357.i.i:             ; preds = %return.sink.split.i355.i.i, %sdma_v4_0_get_reg_offset.exit330.i.i.sdma_v4_0_get_reg_offset.exit357.i.i_crit_edge
  %retval.0.i356.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit330.i.i.sdma_v4_0_get_reg_offset.exit357.i.i_crit_edge ], [ %add44.i354.i.i, %return.sink.split.i355.i.i ]
  %273 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %gpu_addr.i.i, align 8
  %275 = trunc i64 %274 to i32
  %conv18.i.i = add i32 %mul.i.i, %275
  %and19.i.i = and i32 %conv18.i.i, -4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i356.i.i, i32 noundef %and19.i.i, i32 noundef 0) #10
  %276 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit357.i.i.sdma_v4_0_get_reg_offset.exit384.i.i_crit_edge [
    i32 0, label %sw.bb.i359.i.i
    i32 1, label %sw.bb3.i361.i.i
    i32 2, label %sw.bb9.i364.i.i
    i32 3, label %sw.bb15.i367.i.i
    i32 4, label %sw.bb21.i370.i.i
    i32 5, label %sw.bb27.i373.i.i
    i32 6, label %sw.bb33.i376.i.i
    i32 7, label %sw.bb39.i379.i.i
  ]

sdma_v4_0_get_reg_offset.exit357.i.i.sdma_v4_0_get_reg_offset.exit384.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit384.i.i

sw.bb.i359.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %277 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i382.i.i

sw.bb3.i361.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %279 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i382.i.i

sw.bb9.i364.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %281 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i363.i.i = getelementptr i32, ptr %282, i32 1
  br label %return.sink.split.i382.i.i

sw.bb15.i367.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %283 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i366.i.i = getelementptr i32, ptr %284, i32 1
  br label %return.sink.split.i382.i.i

sw.bb21.i370.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %285 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i369.i.i = getelementptr i32, ptr %286, i32 1
  br label %return.sink.split.i382.i.i

sw.bb27.i373.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %287 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i372.i.i = getelementptr i32, ptr %288, i32 1
  br label %return.sink.split.i382.i.i

sw.bb33.i376.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %289 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i375.i.i = getelementptr i32, ptr %290, i32 1
  br label %return.sink.split.i382.i.i

sw.bb39.i379.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit357.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %291 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i378.i.i = getelementptr i32, ptr %292, i32 1
  br label %return.sink.split.i382.i.i

return.sink.split.i382.i.i:                       ; preds = %sw.bb39.i379.i.i, %sw.bb33.i376.i.i, %sw.bb27.i373.i.i, %sw.bb21.i370.i.i, %sw.bb15.i367.i.i, %sw.bb9.i364.i.i, %sw.bb3.i361.i.i, %sw.bb.i359.i.i
  %arrayidx43.sink.i380.i.i = phi ptr [ %arrayidx43.i378.i.i, %sw.bb39.i379.i.i ], [ %arrayidx37.i375.i.i, %sw.bb33.i376.i.i ], [ %arrayidx31.i372.i.i, %sw.bb27.i373.i.i ], [ %arrayidx25.i369.i.i, %sw.bb21.i370.i.i ], [ %arrayidx19.i366.i.i, %sw.bb15.i367.i.i ], [ %arrayidx13.i363.i.i, %sw.bb9.i364.i.i ], [ %280, %sw.bb3.i361.i.i ], [ %278, %sw.bb.i359.i.i ]
  %293 = ptrtoint ptr %arrayidx43.sink.i380.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx43.sink.i380.i.i, align 4
  %add44.i381.i.i = add i32 %294, 129
  br label %sdma_v4_0_get_reg_offset.exit384.i.i

sdma_v4_0_get_reg_offset.exit384.i.i:             ; preds = %return.sink.split.i382.i.i, %sdma_v4_0_get_reg_offset.exit357.i.i.sdma_v4_0_get_reg_offset.exit384.i.i_crit_edge
  %retval.0.i383.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit357.i.i.sdma_v4_0_get_reg_offset.exit384.i.i_crit_edge ], [ %add44.i381.i.i, %return.sink.split.i382.i.i ]
  %gpu_addr22.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3, i32 12
  %295 = ptrtoint ptr %gpu_addr22.i.i to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %gpu_addr22.i.i, align 8
  %shr23.i.i = lshr i64 %296, 8
  %conv24.i.i = trunc i64 %shr23.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i383.i.i, i32 noundef %conv24.i.i, i32 noundef 0) #10
  %297 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %297, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit384.i.i.sdma_v4_0_get_reg_offset.exit411.i.i_crit_edge [
    i32 0, label %sw.bb.i386.i.i
    i32 1, label %sw.bb3.i388.i.i
    i32 2, label %sw.bb9.i391.i.i
    i32 3, label %sw.bb15.i394.i.i
    i32 4, label %sw.bb21.i397.i.i
    i32 5, label %sw.bb27.i400.i.i
    i32 6, label %sw.bb33.i403.i.i
    i32 7, label %sw.bb39.i406.i.i
  ]

sdma_v4_0_get_reg_offset.exit384.i.i.sdma_v4_0_get_reg_offset.exit411.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit411.i.i

sw.bb.i386.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %298 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i409.i.i

sw.bb3.i388.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %300 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i409.i.i

sw.bb9.i391.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %302 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i390.i.i = getelementptr i32, ptr %303, i32 1
  br label %return.sink.split.i409.i.i

sw.bb15.i394.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %304 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i393.i.i = getelementptr i32, ptr %305, i32 1
  br label %return.sink.split.i409.i.i

sw.bb21.i397.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %306 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i396.i.i = getelementptr i32, ptr %307, i32 1
  br label %return.sink.split.i409.i.i

sw.bb27.i400.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %308 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i399.i.i = getelementptr i32, ptr %309, i32 1
  br label %return.sink.split.i409.i.i

sw.bb33.i403.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %310 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i402.i.i = getelementptr i32, ptr %311, i32 1
  br label %return.sink.split.i409.i.i

sw.bb39.i406.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit384.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %312 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i405.i.i = getelementptr i32, ptr %313, i32 1
  br label %return.sink.split.i409.i.i

return.sink.split.i409.i.i:                       ; preds = %sw.bb39.i406.i.i, %sw.bb33.i403.i.i, %sw.bb27.i400.i.i, %sw.bb21.i397.i.i, %sw.bb15.i394.i.i, %sw.bb9.i391.i.i, %sw.bb3.i388.i.i, %sw.bb.i386.i.i
  %arrayidx43.sink.i407.i.i = phi ptr [ %arrayidx43.i405.i.i, %sw.bb39.i406.i.i ], [ %arrayidx37.i402.i.i, %sw.bb33.i403.i.i ], [ %arrayidx31.i399.i.i, %sw.bb27.i400.i.i ], [ %arrayidx25.i396.i.i, %sw.bb21.i397.i.i ], [ %arrayidx19.i393.i.i, %sw.bb15.i394.i.i ], [ %arrayidx13.i390.i.i, %sw.bb9.i391.i.i ], [ %301, %sw.bb3.i388.i.i ], [ %299, %sw.bb.i386.i.i ]
  %314 = ptrtoint ptr %arrayidx43.sink.i407.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx43.sink.i407.i.i, align 4
  %add44.i408.i.i = add i32 %315, 130
  br label %sdma_v4_0_get_reg_offset.exit411.i.i

sdma_v4_0_get_reg_offset.exit411.i.i:             ; preds = %return.sink.split.i409.i.i, %sdma_v4_0_get_reg_offset.exit384.i.i.sdma_v4_0_get_reg_offset.exit411.i.i_crit_edge
  %retval.0.i410.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit384.i.i.sdma_v4_0_get_reg_offset.exit411.i.i_crit_edge ], [ %add44.i408.i.i, %return.sink.split.i409.i.i ]
  %316 = ptrtoint ptr %gpu_addr22.i.i to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %gpu_addr22.i.i, align 8
  %shr27.i.i = lshr i64 %317, 40
  %conv28.i.i = trunc i64 %shr27.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i410.i.i, i32 noundef %conv28.i.i, i32 noundef 0) #10
  %wptr.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3, i32 7
  %318 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_store8_noabort(i32 %318)
  store i64 0, ptr %wptr.i.i, align 8
  %319 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %319, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit411.i.i.sdma_v4_0_get_reg_offset.exit438.i.i_crit_edge [
    i32 0, label %sw.bb.i413.i.i
    i32 1, label %sw.bb3.i415.i.i
    i32 2, label %sw.bb9.i418.i.i
    i32 3, label %sw.bb15.i421.i.i
    i32 4, label %sw.bb21.i424.i.i
    i32 5, label %sw.bb27.i427.i.i
    i32 6, label %sw.bb33.i430.i.i
    i32 7, label %sw.bb39.i433.i.i
  ]

sdma_v4_0_get_reg_offset.exit411.i.i.sdma_v4_0_get_reg_offset.exit438.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit438.i.i

sw.bb.i413.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %320 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i436.i.i

sw.bb3.i415.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %322 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i436.i.i

sw.bb9.i418.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %324 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i417.i.i = getelementptr i32, ptr %325, i32 1
  br label %return.sink.split.i436.i.i

sw.bb15.i421.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %326 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i420.i.i = getelementptr i32, ptr %327, i32 1
  br label %return.sink.split.i436.i.i

sw.bb21.i424.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %328 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i423.i.i = getelementptr i32, ptr %329, i32 1
  br label %return.sink.split.i436.i.i

sw.bb27.i427.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %330 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i426.i.i = getelementptr i32, ptr %331, i32 1
  br label %return.sink.split.i436.i.i

sw.bb33.i430.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %332 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i429.i.i = getelementptr i32, ptr %333, i32 1
  br label %return.sink.split.i436.i.i

sw.bb39.i433.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit411.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %334 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i432.i.i = getelementptr i32, ptr %335, i32 1
  br label %return.sink.split.i436.i.i

return.sink.split.i436.i.i:                       ; preds = %sw.bb39.i433.i.i, %sw.bb33.i430.i.i, %sw.bb27.i427.i.i, %sw.bb21.i424.i.i, %sw.bb15.i421.i.i, %sw.bb9.i418.i.i, %sw.bb3.i415.i.i, %sw.bb.i413.i.i
  %arrayidx43.sink.i434.i.i = phi ptr [ %arrayidx43.i432.i.i, %sw.bb39.i433.i.i ], [ %arrayidx37.i429.i.i, %sw.bb33.i430.i.i ], [ %arrayidx31.i426.i.i, %sw.bb27.i427.i.i ], [ %arrayidx25.i423.i.i, %sw.bb21.i424.i.i ], [ %arrayidx19.i420.i.i, %sw.bb15.i421.i.i ], [ %arrayidx13.i417.i.i, %sw.bb9.i418.i.i ], [ %323, %sw.bb3.i415.i.i ], [ %321, %sw.bb.i413.i.i ]
  %336 = ptrtoint ptr %arrayidx43.sink.i434.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx43.sink.i434.i.i, align 4
  %add44.i435.i.i = add i32 %337, 181
  br label %sdma_v4_0_get_reg_offset.exit438.i.i

sdma_v4_0_get_reg_offset.exit438.i.i:             ; preds = %return.sink.split.i436.i.i, %sdma_v4_0_get_reg_offset.exit411.i.i.sdma_v4_0_get_reg_offset.exit438.i.i_crit_edge
  %retval.0.i437.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit411.i.i.sdma_v4_0_get_reg_offset.exit438.i.i_crit_edge ], [ %add44.i435.i.i, %return.sink.split.i436.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i437.i.i, i32 noundef 1, i32 noundef 0) #10
  %338 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %338, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit438.i.i.sdma_v4_0_get_reg_offset.exit465.i.i_crit_edge [
    i32 0, label %sw.bb.i440.i.i
    i32 1, label %sw.bb3.i442.i.i
    i32 2, label %sw.bb9.i445.i.i
    i32 3, label %sw.bb15.i448.i.i
    i32 4, label %sw.bb21.i451.i.i
    i32 5, label %sw.bb27.i454.i.i
    i32 6, label %sw.bb33.i457.i.i
    i32 7, label %sw.bb39.i460.i.i
  ]

sdma_v4_0_get_reg_offset.exit438.i.i.sdma_v4_0_get_reg_offset.exit465.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit465.i.i

sw.bb.i440.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %339 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i463.i.i

sw.bb3.i442.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %341 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i463.i.i

sw.bb9.i445.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %343 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i444.i.i = getelementptr i32, ptr %344, i32 1
  br label %return.sink.split.i463.i.i

sw.bb15.i448.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %345 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i447.i.i = getelementptr i32, ptr %346, i32 1
  br label %return.sink.split.i463.i.i

sw.bb21.i451.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %347 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i450.i.i = getelementptr i32, ptr %348, i32 1
  br label %return.sink.split.i463.i.i

sw.bb27.i454.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %349 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i453.i.i = getelementptr i32, ptr %350, i32 1
  br label %return.sink.split.i463.i.i

sw.bb33.i457.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %351 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i456.i.i = getelementptr i32, ptr %352, i32 1
  br label %return.sink.split.i463.i.i

sw.bb39.i460.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit438.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %353 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i459.i.i = getelementptr i32, ptr %354, i32 1
  br label %return.sink.split.i463.i.i

return.sink.split.i463.i.i:                       ; preds = %sw.bb39.i460.i.i, %sw.bb33.i457.i.i, %sw.bb27.i454.i.i, %sw.bb21.i451.i.i, %sw.bb15.i448.i.i, %sw.bb9.i445.i.i, %sw.bb3.i442.i.i, %sw.bb.i440.i.i
  %arrayidx43.sink.i461.i.i = phi ptr [ %arrayidx43.i459.i.i, %sw.bb39.i460.i.i ], [ %arrayidx37.i456.i.i, %sw.bb33.i457.i.i ], [ %arrayidx31.i453.i.i, %sw.bb27.i454.i.i ], [ %arrayidx25.i450.i.i, %sw.bb21.i451.i.i ], [ %arrayidx19.i447.i.i, %sw.bb15.i448.i.i ], [ %arrayidx13.i444.i.i, %sw.bb9.i445.i.i ], [ %342, %sw.bb3.i442.i.i ], [ %340, %sw.bb.i440.i.i ]
  %355 = ptrtoint ptr %arrayidx43.sink.i461.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx43.sink.i461.i.i, align 4
  %add44.i462.i.i = add i32 %356, 146
  br label %sdma_v4_0_get_reg_offset.exit465.i.i

sdma_v4_0_get_reg_offset.exit465.i.i:             ; preds = %return.sink.split.i463.i.i, %sdma_v4_0_get_reg_offset.exit438.i.i.sdma_v4_0_get_reg_offset.exit465.i.i_crit_edge
  %retval.0.i464.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit438.i.i.sdma_v4_0_get_reg_offset.exit465.i.i_crit_edge ], [ %add44.i462.i.i, %return.sink.split.i463.i.i ]
  %call31.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i464.i.i, i32 noundef 0) #10
  %357 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit465.i.i.sdma_v4_0_get_reg_offset.exit492.i.i_crit_edge [
    i32 0, label %sw.bb.i467.i.i
    i32 1, label %sw.bb3.i469.i.i
    i32 2, label %sw.bb9.i472.i.i
    i32 3, label %sw.bb15.i475.i.i
    i32 4, label %sw.bb21.i478.i.i
    i32 5, label %sw.bb27.i481.i.i
    i32 6, label %sw.bb33.i484.i.i
    i32 7, label %sw.bb39.i487.i.i
  ]

sdma_v4_0_get_reg_offset.exit465.i.i.sdma_v4_0_get_reg_offset.exit492.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit492.i.i

sw.bb.i467.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %358 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i490.i.i

sw.bb3.i469.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %360 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i490.i.i

sw.bb9.i472.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %362 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i471.i.i = getelementptr i32, ptr %363, i32 1
  br label %return.sink.split.i490.i.i

sw.bb15.i475.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %364 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i474.i.i = getelementptr i32, ptr %365, i32 1
  br label %return.sink.split.i490.i.i

sw.bb21.i478.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %366 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i477.i.i = getelementptr i32, ptr %367, i32 1
  br label %return.sink.split.i490.i.i

sw.bb27.i481.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %368 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i480.i.i = getelementptr i32, ptr %369, i32 1
  br label %return.sink.split.i490.i.i

sw.bb33.i484.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %370 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i483.i.i = getelementptr i32, ptr %371, i32 1
  br label %return.sink.split.i490.i.i

sw.bb39.i487.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit465.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %372 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i486.i.i = getelementptr i32, ptr %373, i32 1
  br label %return.sink.split.i490.i.i

return.sink.split.i490.i.i:                       ; preds = %sw.bb39.i487.i.i, %sw.bb33.i484.i.i, %sw.bb27.i481.i.i, %sw.bb21.i478.i.i, %sw.bb15.i475.i.i, %sw.bb9.i472.i.i, %sw.bb3.i469.i.i, %sw.bb.i467.i.i
  %arrayidx43.sink.i488.i.i = phi ptr [ %arrayidx43.i486.i.i, %sw.bb39.i487.i.i ], [ %arrayidx37.i483.i.i, %sw.bb33.i484.i.i ], [ %arrayidx31.i480.i.i, %sw.bb27.i481.i.i ], [ %arrayidx25.i477.i.i, %sw.bb21.i478.i.i ], [ %arrayidx19.i474.i.i, %sw.bb15.i475.i.i ], [ %arrayidx13.i471.i.i, %sw.bb9.i472.i.i ], [ %361, %sw.bb3.i469.i.i ], [ %359, %sw.bb.i467.i.i ]
  %374 = ptrtoint ptr %arrayidx43.sink.i488.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx43.sink.i488.i.i, align 4
  %add44.i489.i.i = add i32 %375, 171
  br label %sdma_v4_0_get_reg_offset.exit492.i.i

sdma_v4_0_get_reg_offset.exit492.i.i:             ; preds = %return.sink.split.i490.i.i, %sdma_v4_0_get_reg_offset.exit465.i.i.sdma_v4_0_get_reg_offset.exit492.i.i_crit_edge
  %retval.0.i491.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit465.i.i.sdma_v4_0_get_reg_offset.exit492.i.i_crit_edge ], [ %add44.i489.i.i, %return.sink.split.i490.i.i ]
  %call33.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i491.i.i, i32 noundef 0) #10
  %and34.i.i = and i32 %call31.i.i, -268435457
  %use_doorbell.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3, i32 24
  %376 = ptrtoint ptr %use_doorbell.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %use_doorbell.i.i, align 4, !range !251
  %378 = zext i8 %377 to i32
  %shl.i.i = shl nuw nsw i32 %378, 28
  %or37.i.i = or i32 %shl.i.i, %and34.i.i
  %and38.i.i = and i32 %call33.i.i, -268435453
  %doorbell_index.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3, i32 23
  %379 = ptrtoint ptr %doorbell_index.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %doorbell_index.i.i, align 8
  %shl39.i.i = shl i32 %380, 2
  %and40.i.i = and i32 %shl39.i.i, 268435452
  %or41.i.i = or i32 %and40.i.i, %and38.i.i
  %381 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %381, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit492.i.i.sdma_v4_0_get_reg_offset.exit519.i.i_crit_edge [
    i32 0, label %sw.bb.i494.i.i
    i32 1, label %sw.bb3.i496.i.i
    i32 2, label %sw.bb9.i499.i.i
    i32 3, label %sw.bb15.i502.i.i
    i32 4, label %sw.bb21.i505.i.i
    i32 5, label %sw.bb27.i508.i.i
    i32 6, label %sw.bb33.i511.i.i
    i32 7, label %sw.bb39.i514.i.i
  ]

sdma_v4_0_get_reg_offset.exit492.i.i.sdma_v4_0_get_reg_offset.exit519.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit519.i.i

sw.bb.i494.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %382 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i517.i.i

sw.bb3.i496.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %384 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i517.i.i

sw.bb9.i499.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %386 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i498.i.i = getelementptr i32, ptr %387, i32 1
  br label %return.sink.split.i517.i.i

sw.bb15.i502.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %388 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i501.i.i = getelementptr i32, ptr %389, i32 1
  br label %return.sink.split.i517.i.i

sw.bb21.i505.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %390 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i504.i.i = getelementptr i32, ptr %391, i32 1
  br label %return.sink.split.i517.i.i

sw.bb27.i508.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %392 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i507.i.i = getelementptr i32, ptr %393, i32 1
  br label %return.sink.split.i517.i.i

sw.bb33.i511.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %394 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i510.i.i = getelementptr i32, ptr %395, i32 1
  br label %return.sink.split.i517.i.i

sw.bb39.i514.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit492.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %396 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i513.i.i = getelementptr i32, ptr %397, i32 1
  br label %return.sink.split.i517.i.i

return.sink.split.i517.i.i:                       ; preds = %sw.bb39.i514.i.i, %sw.bb33.i511.i.i, %sw.bb27.i508.i.i, %sw.bb21.i505.i.i, %sw.bb15.i502.i.i, %sw.bb9.i499.i.i, %sw.bb3.i496.i.i, %sw.bb.i494.i.i
  %arrayidx43.sink.i515.i.i = phi ptr [ %arrayidx43.i513.i.i, %sw.bb39.i514.i.i ], [ %arrayidx37.i510.i.i, %sw.bb33.i511.i.i ], [ %arrayidx31.i507.i.i, %sw.bb27.i508.i.i ], [ %arrayidx25.i504.i.i, %sw.bb21.i505.i.i ], [ %arrayidx19.i501.i.i, %sw.bb15.i502.i.i ], [ %arrayidx13.i498.i.i, %sw.bb9.i499.i.i ], [ %385, %sw.bb3.i496.i.i ], [ %383, %sw.bb.i494.i.i ]
  %398 = ptrtoint ptr %arrayidx43.sink.i515.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx43.sink.i515.i.i, align 4
  %add44.i516.i.i = add i32 %399, 146
  br label %sdma_v4_0_get_reg_offset.exit519.i.i

sdma_v4_0_get_reg_offset.exit519.i.i:             ; preds = %return.sink.split.i517.i.i, %sdma_v4_0_get_reg_offset.exit492.i.i.sdma_v4_0_get_reg_offset.exit519.i.i_crit_edge
  %retval.0.i518.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit492.i.i.sdma_v4_0_get_reg_offset.exit519.i.i_crit_edge ], [ %add44.i516.i.i, %return.sink.split.i517.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i518.i.i, i32 noundef %or37.i.i, i32 noundef 0) #10
  %400 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %400, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit519.i.i.sdma_v4_0_get_reg_offset.exit546.i.i_crit_edge [
    i32 0, label %sw.bb.i521.i.i
    i32 1, label %sw.bb3.i523.i.i
    i32 2, label %sw.bb9.i526.i.i
    i32 3, label %sw.bb15.i529.i.i
    i32 4, label %sw.bb21.i532.i.i
    i32 5, label %sw.bb27.i535.i.i
    i32 6, label %sw.bb33.i538.i.i
    i32 7, label %sw.bb39.i541.i.i
  ]

sdma_v4_0_get_reg_offset.exit519.i.i.sdma_v4_0_get_reg_offset.exit546.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit546.i.i

sw.bb.i521.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %401 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i544.i.i

sw.bb3.i523.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %403 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i544.i.i

sw.bb9.i526.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %405 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i525.i.i = getelementptr i32, ptr %406, i32 1
  br label %return.sink.split.i544.i.i

sw.bb15.i529.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %407 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i528.i.i = getelementptr i32, ptr %408, i32 1
  br label %return.sink.split.i544.i.i

sw.bb21.i532.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %409 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i531.i.i = getelementptr i32, ptr %410, i32 1
  br label %return.sink.split.i544.i.i

sw.bb27.i535.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %411 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i534.i.i = getelementptr i32, ptr %412, i32 1
  br label %return.sink.split.i544.i.i

sw.bb33.i538.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %413 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i537.i.i = getelementptr i32, ptr %414, i32 1
  br label %return.sink.split.i544.i.i

sw.bb39.i541.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit519.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %415 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i540.i.i = getelementptr i32, ptr %416, i32 1
  br label %return.sink.split.i544.i.i

return.sink.split.i544.i.i:                       ; preds = %sw.bb39.i541.i.i, %sw.bb33.i538.i.i, %sw.bb27.i535.i.i, %sw.bb21.i532.i.i, %sw.bb15.i529.i.i, %sw.bb9.i526.i.i, %sw.bb3.i523.i.i, %sw.bb.i521.i.i
  %arrayidx43.sink.i542.i.i = phi ptr [ %arrayidx43.i540.i.i, %sw.bb39.i541.i.i ], [ %arrayidx37.i537.i.i, %sw.bb33.i538.i.i ], [ %arrayidx31.i534.i.i, %sw.bb27.i535.i.i ], [ %arrayidx25.i531.i.i, %sw.bb21.i532.i.i ], [ %arrayidx19.i528.i.i, %sw.bb15.i529.i.i ], [ %arrayidx13.i525.i.i, %sw.bb9.i526.i.i ], [ %404, %sw.bb3.i523.i.i ], [ %402, %sw.bb.i521.i.i ]
  %417 = ptrtoint ptr %arrayidx43.sink.i542.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %arrayidx43.sink.i542.i.i, align 4
  %add44.i543.i.i = add i32 %418, 171
  br label %sdma_v4_0_get_reg_offset.exit546.i.i

sdma_v4_0_get_reg_offset.exit546.i.i:             ; preds = %return.sink.split.i544.i.i, %sdma_v4_0_get_reg_offset.exit519.i.i.sdma_v4_0_get_reg_offset.exit546.i.i_crit_edge
  %retval.0.i545.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit519.i.i.sdma_v4_0_get_reg_offset.exit546.i.i_crit_edge ], [ %add44.i543.i.i, %return.sink.split.i544.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i545.i.i, i32 noundef %or41.i.i, i32 noundef 0) #10
  tail call void @sdma_v4_0_ring_set_wptr(ptr noundef %ring1.i.i) #10
  %419 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %419, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit546.i.i.sdma_v4_0_get_reg_offset.exit573.i.i_crit_edge [
    i32 0, label %sw.bb.i548.i.i
    i32 1, label %sw.bb3.i550.i.i
    i32 2, label %sw.bb9.i553.i.i
    i32 3, label %sw.bb15.i556.i.i
    i32 4, label %sw.bb21.i559.i.i
    i32 5, label %sw.bb27.i562.i.i
    i32 6, label %sw.bb33.i565.i.i
    i32 7, label %sw.bb39.i568.i.i
  ]

sdma_v4_0_get_reg_offset.exit546.i.i.sdma_v4_0_get_reg_offset.exit573.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit573.i.i

sw.bb.i548.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %420 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i571.i.i

sw.bb3.i550.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %422 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i571.i.i

sw.bb9.i553.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %424 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i552.i.i = getelementptr i32, ptr %425, i32 1
  br label %return.sink.split.i571.i.i

sw.bb15.i556.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %426 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i555.i.i = getelementptr i32, ptr %427, i32 1
  br label %return.sink.split.i571.i.i

sw.bb21.i559.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %428 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i558.i.i = getelementptr i32, ptr %429, i32 1
  br label %return.sink.split.i571.i.i

sw.bb27.i562.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %430 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i561.i.i = getelementptr i32, ptr %431, i32 1
  br label %return.sink.split.i571.i.i

sw.bb33.i565.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %432 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i564.i.i = getelementptr i32, ptr %433, i32 1
  br label %return.sink.split.i571.i.i

sw.bb39.i568.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit546.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %434 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i567.i.i = getelementptr i32, ptr %435, i32 1
  br label %return.sink.split.i571.i.i

return.sink.split.i571.i.i:                       ; preds = %sw.bb39.i568.i.i, %sw.bb33.i565.i.i, %sw.bb27.i562.i.i, %sw.bb21.i559.i.i, %sw.bb15.i556.i.i, %sw.bb9.i553.i.i, %sw.bb3.i550.i.i, %sw.bb.i548.i.i
  %arrayidx43.sink.i569.i.i = phi ptr [ %arrayidx43.i567.i.i, %sw.bb39.i568.i.i ], [ %arrayidx37.i564.i.i, %sw.bb33.i565.i.i ], [ %arrayidx31.i561.i.i, %sw.bb27.i562.i.i ], [ %arrayidx25.i558.i.i, %sw.bb21.i559.i.i ], [ %arrayidx19.i555.i.i, %sw.bb15.i556.i.i ], [ %arrayidx13.i552.i.i, %sw.bb9.i553.i.i ], [ %423, %sw.bb3.i550.i.i ], [ %421, %sw.bb.i548.i.i ]
  %436 = ptrtoint ptr %arrayidx43.sink.i569.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx43.sink.i569.i.i, align 4
  %add44.i570.i.i = add i32 %437, 181
  br label %sdma_v4_0_get_reg_offset.exit573.i.i

sdma_v4_0_get_reg_offset.exit573.i.i:             ; preds = %return.sink.split.i571.i.i, %sdma_v4_0_get_reg_offset.exit546.i.i.sdma_v4_0_get_reg_offset.exit573.i.i_crit_edge
  %retval.0.i572.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit546.i.i.sdma_v4_0_get_reg_offset.exit573.i.i_crit_edge ], [ %add44.i570.i.i, %return.sink.split.i571.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i572.i.i, i32 noundef 0, i32 noundef 0) #10
  %438 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %438)
  %439 = load i64, ptr %gpu_addr.i.i, align 8
  %wptr_offs.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3, i32 26
  %440 = ptrtoint ptr %wptr_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %wptr_offs.i.i, align 8
  %mul47.i.i = shl i32 %441, 2
  %conv48.i.i = zext i32 %mul47.i.i to i64
  %add49.i.i = add i64 %439, %conv48.i.i
  %442 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %442, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit573.i.i.sdma_v4_0_get_reg_offset.exit600.i.i_crit_edge [
    i32 0, label %sw.bb.i575.i.i
    i32 1, label %sw.bb3.i577.i.i
    i32 2, label %sw.bb9.i580.i.i
    i32 3, label %sw.bb15.i583.i.i
    i32 4, label %sw.bb21.i586.i.i
    i32 5, label %sw.bb27.i589.i.i
    i32 6, label %sw.bb33.i592.i.i
    i32 7, label %sw.bb39.i595.i.i
  ]

sdma_v4_0_get_reg_offset.exit573.i.i.sdma_v4_0_get_reg_offset.exit600.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit600.i.i

sw.bb.i575.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %443 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i598.i.i

sw.bb3.i577.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %445 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i598.i.i

sw.bb9.i580.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %447 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i579.i.i = getelementptr i32, ptr %448, i32 1
  br label %return.sink.split.i598.i.i

sw.bb15.i583.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %449 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i582.i.i = getelementptr i32, ptr %450, i32 1
  br label %return.sink.split.i598.i.i

sw.bb21.i586.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %451 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i585.i.i = getelementptr i32, ptr %452, i32 1
  br label %return.sink.split.i598.i.i

sw.bb27.i589.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %453 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i588.i.i = getelementptr i32, ptr %454, i32 1
  br label %return.sink.split.i598.i.i

sw.bb33.i592.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %455 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i591.i.i = getelementptr i32, ptr %456, i32 1
  br label %return.sink.split.i598.i.i

sw.bb39.i595.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit573.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %457 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i594.i.i = getelementptr i32, ptr %458, i32 1
  br label %return.sink.split.i598.i.i

return.sink.split.i598.i.i:                       ; preds = %sw.bb39.i595.i.i, %sw.bb33.i592.i.i, %sw.bb27.i589.i.i, %sw.bb21.i586.i.i, %sw.bb15.i583.i.i, %sw.bb9.i580.i.i, %sw.bb3.i577.i.i, %sw.bb.i575.i.i
  %arrayidx43.sink.i596.i.i = phi ptr [ %arrayidx43.i594.i.i, %sw.bb39.i595.i.i ], [ %arrayidx37.i591.i.i, %sw.bb33.i592.i.i ], [ %arrayidx31.i588.i.i, %sw.bb27.i589.i.i ], [ %arrayidx25.i585.i.i, %sw.bb21.i586.i.i ], [ %arrayidx19.i582.i.i, %sw.bb15.i583.i.i ], [ %arrayidx13.i579.i.i, %sw.bb9.i580.i.i ], [ %446, %sw.bb3.i577.i.i ], [ %444, %sw.bb.i575.i.i ]
  %459 = ptrtoint ptr %arrayidx43.sink.i596.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %arrayidx43.sink.i596.i.i, align 4
  %add44.i597.i.i = add i32 %460, 179
  br label %sdma_v4_0_get_reg_offset.exit600.i.i

sdma_v4_0_get_reg_offset.exit600.i.i:             ; preds = %return.sink.split.i598.i.i, %sdma_v4_0_get_reg_offset.exit573.i.i.sdma_v4_0_get_reg_offset.exit600.i.i_crit_edge
  %retval.0.i599.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit573.i.i.sdma_v4_0_get_reg_offset.exit600.i.i_crit_edge ], [ %add44.i597.i.i, %return.sink.split.i598.i.i ]
  %conv52.i.i = trunc i64 %add49.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i599.i.i, i32 noundef %conv52.i.i, i32 noundef 0) #10
  %461 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %461, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit600.i.i.sdma_v4_0_get_reg_offset.exit627.i.i_crit_edge [
    i32 0, label %sw.bb.i602.i.i
    i32 1, label %sw.bb3.i604.i.i
    i32 2, label %sw.bb9.i607.i.i
    i32 3, label %sw.bb15.i610.i.i
    i32 4, label %sw.bb21.i613.i.i
    i32 5, label %sw.bb27.i616.i.i
    i32 6, label %sw.bb33.i619.i.i
    i32 7, label %sw.bb39.i622.i.i
  ]

sdma_v4_0_get_reg_offset.exit600.i.i.sdma_v4_0_get_reg_offset.exit627.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit627.i.i

sw.bb.i602.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %462 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i625.i.i

sw.bb3.i604.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %464 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i625.i.i

sw.bb9.i607.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %466 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i606.i.i = getelementptr i32, ptr %467, i32 1
  br label %return.sink.split.i625.i.i

sw.bb15.i610.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %468 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i609.i.i = getelementptr i32, ptr %469, i32 1
  br label %return.sink.split.i625.i.i

sw.bb21.i613.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %470 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i612.i.i = getelementptr i32, ptr %471, i32 1
  br label %return.sink.split.i625.i.i

sw.bb27.i616.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %472 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i615.i.i = getelementptr i32, ptr %473, i32 1
  br label %return.sink.split.i625.i.i

sw.bb33.i619.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %474 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i618.i.i = getelementptr i32, ptr %475, i32 1
  br label %return.sink.split.i625.i.i

sw.bb39.i622.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit600.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %476 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i621.i.i = getelementptr i32, ptr %477, i32 1
  br label %return.sink.split.i625.i.i

return.sink.split.i625.i.i:                       ; preds = %sw.bb39.i622.i.i, %sw.bb33.i619.i.i, %sw.bb27.i616.i.i, %sw.bb21.i613.i.i, %sw.bb15.i610.i.i, %sw.bb9.i607.i.i, %sw.bb3.i604.i.i, %sw.bb.i602.i.i
  %arrayidx43.sink.i623.i.i = phi ptr [ %arrayidx43.i621.i.i, %sw.bb39.i622.i.i ], [ %arrayidx37.i618.i.i, %sw.bb33.i619.i.i ], [ %arrayidx31.i615.i.i, %sw.bb27.i616.i.i ], [ %arrayidx25.i612.i.i, %sw.bb21.i613.i.i ], [ %arrayidx19.i609.i.i, %sw.bb15.i610.i.i ], [ %arrayidx13.i606.i.i, %sw.bb9.i607.i.i ], [ %465, %sw.bb3.i604.i.i ], [ %463, %sw.bb.i602.i.i ]
  %478 = ptrtoint ptr %arrayidx43.sink.i623.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %arrayidx43.sink.i623.i.i, align 4
  %add44.i624.i.i = add i32 %479, 178
  br label %sdma_v4_0_get_reg_offset.exit627.i.i

sdma_v4_0_get_reg_offset.exit627.i.i:             ; preds = %return.sink.split.i625.i.i, %sdma_v4_0_get_reg_offset.exit600.i.i.sdma_v4_0_get_reg_offset.exit627.i.i_crit_edge
  %retval.0.i626.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit600.i.i.sdma_v4_0_get_reg_offset.exit627.i.i_crit_edge ], [ %add44.i624.i.i, %return.sink.split.i625.i.i ]
  %shr54.i.i = lshr i64 %add49.i.i, 32
  %conv56.i.i = trunc i64 %shr54.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i626.i.i, i32 noundef %conv56.i.i, i32 noundef 0) #10
  %480 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %480, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit627.i.i.sdma_v4_0_get_reg_offset.exit654.i.i_crit_edge [
    i32 0, label %sw.bb.i629.i.i
    i32 1, label %sw.bb3.i631.i.i
    i32 2, label %sw.bb9.i634.i.i
    i32 3, label %sw.bb15.i637.i.i
    i32 4, label %sw.bb21.i640.i.i
    i32 5, label %sw.bb27.i643.i.i
    i32 6, label %sw.bb33.i646.i.i
    i32 7, label %sw.bb39.i649.i.i
  ]

sdma_v4_0_get_reg_offset.exit627.i.i.sdma_v4_0_get_reg_offset.exit654.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit654.i.i

sw.bb.i629.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %481 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i652.i.i

sw.bb3.i631.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %483 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i652.i.i

sw.bb9.i634.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %485 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i633.i.i = getelementptr i32, ptr %486, i32 1
  br label %return.sink.split.i652.i.i

sw.bb15.i637.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %487 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i636.i.i = getelementptr i32, ptr %488, i32 1
  br label %return.sink.split.i652.i.i

sw.bb21.i640.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %489 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i639.i.i = getelementptr i32, ptr %490, i32 1
  br label %return.sink.split.i652.i.i

sw.bb27.i643.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %491 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i642.i.i = getelementptr i32, ptr %492, i32 1
  br label %return.sink.split.i652.i.i

sw.bb33.i646.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %493 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i645.i.i = getelementptr i32, ptr %494, i32 1
  br label %return.sink.split.i652.i.i

sw.bb39.i649.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit627.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %495 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i648.i.i = getelementptr i32, ptr %496, i32 1
  br label %return.sink.split.i652.i.i

return.sink.split.i652.i.i:                       ; preds = %sw.bb39.i649.i.i, %sw.bb33.i646.i.i, %sw.bb27.i643.i.i, %sw.bb21.i640.i.i, %sw.bb15.i637.i.i, %sw.bb9.i634.i.i, %sw.bb3.i631.i.i, %sw.bb.i629.i.i
  %arrayidx43.sink.i650.i.i = phi ptr [ %arrayidx43.i648.i.i, %sw.bb39.i649.i.i ], [ %arrayidx37.i645.i.i, %sw.bb33.i646.i.i ], [ %arrayidx31.i642.i.i, %sw.bb27.i643.i.i ], [ %arrayidx25.i639.i.i, %sw.bb21.i640.i.i ], [ %arrayidx19.i636.i.i, %sw.bb15.i637.i.i ], [ %arrayidx13.i633.i.i, %sw.bb9.i634.i.i ], [ %484, %sw.bb3.i631.i.i ], [ %482, %sw.bb.i629.i.i ]
  %497 = ptrtoint ptr %arrayidx43.sink.i650.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %arrayidx43.sink.i650.i.i, align 4
  %add44.i651.i.i = add i32 %498, 135
  br label %sdma_v4_0_get_reg_offset.exit654.i.i

sdma_v4_0_get_reg_offset.exit654.i.i:             ; preds = %return.sink.split.i652.i.i, %sdma_v4_0_get_reg_offset.exit627.i.i.sdma_v4_0_get_reg_offset.exit654.i.i_crit_edge
  %retval.0.i653.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit627.i.i.sdma_v4_0_get_reg_offset.exit654.i.i_crit_edge ], [ %add44.i651.i.i, %return.sink.split.i652.i.i ]
  %call58.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i653.i.i, i32 noundef 0) #10
  %and59.i.i = and i32 %call58.i.i, -5
  %499 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %virt, align 8
  %and60.lobit.i.i = and i32 %500, 4
  %or64.i.i = or i32 %and60.lobit.i.i, %and59.i.i
  %501 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %501, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit654.i.i.sdma_v4_0_get_reg_offset.exit681.i.i_crit_edge [
    i32 0, label %sw.bb.i656.i.i
    i32 1, label %sw.bb3.i658.i.i
    i32 2, label %sw.bb9.i661.i.i
    i32 3, label %sw.bb15.i664.i.i
    i32 4, label %sw.bb21.i667.i.i
    i32 5, label %sw.bb27.i670.i.i
    i32 6, label %sw.bb33.i673.i.i
    i32 7, label %sw.bb39.i676.i.i
  ]

sdma_v4_0_get_reg_offset.exit654.i.i.sdma_v4_0_get_reg_offset.exit681.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit681.i.i

sw.bb.i656.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %502 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i679.i.i

sw.bb3.i658.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %504 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i679.i.i

sw.bb9.i661.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %506 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i660.i.i = getelementptr i32, ptr %507, i32 1
  br label %return.sink.split.i679.i.i

sw.bb15.i664.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %508 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i663.i.i = getelementptr i32, ptr %509, i32 1
  br label %return.sink.split.i679.i.i

sw.bb21.i667.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %510 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i666.i.i = getelementptr i32, ptr %511, i32 1
  br label %return.sink.split.i679.i.i

sw.bb27.i670.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %512 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i669.i.i = getelementptr i32, ptr %513, i32 1
  br label %return.sink.split.i679.i.i

sw.bb33.i673.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %514 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i672.i.i = getelementptr i32, ptr %515, i32 1
  br label %return.sink.split.i679.i.i

sw.bb39.i676.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %516 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i675.i.i = getelementptr i32, ptr %517, i32 1
  br label %return.sink.split.i679.i.i

return.sink.split.i679.i.i:                       ; preds = %sw.bb39.i676.i.i, %sw.bb33.i673.i.i, %sw.bb27.i670.i.i, %sw.bb21.i667.i.i, %sw.bb15.i664.i.i, %sw.bb9.i661.i.i, %sw.bb3.i658.i.i, %sw.bb.i656.i.i
  %arrayidx43.sink.i677.i.i = phi ptr [ %arrayidx43.i675.i.i, %sw.bb39.i676.i.i ], [ %arrayidx37.i672.i.i, %sw.bb33.i673.i.i ], [ %arrayidx31.i669.i.i, %sw.bb27.i670.i.i ], [ %arrayidx25.i666.i.i, %sw.bb21.i667.i.i ], [ %arrayidx19.i663.i.i, %sw.bb15.i664.i.i ], [ %arrayidx13.i660.i.i, %sw.bb9.i661.i.i ], [ %505, %sw.bb3.i658.i.i ], [ %503, %sw.bb.i656.i.i ]
  %518 = ptrtoint ptr %arrayidx43.sink.i677.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %arrayidx43.sink.i677.i.i, align 4
  %add44.i678.i.i = add i32 %519, 135
  br label %sdma_v4_0_get_reg_offset.exit681.i.i

sdma_v4_0_get_reg_offset.exit681.i.i:             ; preds = %return.sink.split.i679.i.i, %sdma_v4_0_get_reg_offset.exit654.i.i.sdma_v4_0_get_reg_offset.exit681.i.i_crit_edge
  %retval.0.i680.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit654.i.i.sdma_v4_0_get_reg_offset.exit681.i.i_crit_edge ], [ %add44.i678.i.i, %return.sink.split.i679.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i680.i.i, i32 noundef %or64.i.i, i32 noundef 0) #10
  %or67.i.i = or i32 %or.i.i.i, 12801
  %520 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %520, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit681.i.i.sdma_v4_0_get_reg_offset.exit708.i.i_crit_edge [
    i32 0, label %sw.bb.i683.i.i
    i32 1, label %sw.bb3.i685.i.i
    i32 2, label %sw.bb9.i688.i.i
    i32 3, label %sw.bb15.i691.i.i
    i32 4, label %sw.bb21.i694.i.i
    i32 5, label %sw.bb27.i697.i.i
    i32 6, label %sw.bb33.i700.i.i
    i32 7, label %sw.bb39.i703.i.i
  ]

sdma_v4_0_get_reg_offset.exit681.i.i.sdma_v4_0_get_reg_offset.exit708.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit708.i.i

sw.bb.i683.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %521 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i706.i.i

sw.bb3.i685.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %523 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i706.i.i

sw.bb9.i688.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %525 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i687.i.i = getelementptr i32, ptr %526, i32 1
  br label %return.sink.split.i706.i.i

sw.bb15.i691.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %527 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i690.i.i = getelementptr i32, ptr %528, i32 1
  br label %return.sink.split.i706.i.i

sw.bb21.i694.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %529 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i693.i.i = getelementptr i32, ptr %530, i32 1
  br label %return.sink.split.i706.i.i

sw.bb27.i697.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %531 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i696.i.i = getelementptr i32, ptr %532, i32 1
  br label %return.sink.split.i706.i.i

sw.bb33.i700.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %533 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i699.i.i = getelementptr i32, ptr %534, i32 1
  br label %return.sink.split.i706.i.i

sw.bb39.i703.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit681.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %535 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i702.i.i = getelementptr i32, ptr %536, i32 1
  br label %return.sink.split.i706.i.i

return.sink.split.i706.i.i:                       ; preds = %sw.bb39.i703.i.i, %sw.bb33.i700.i.i, %sw.bb27.i697.i.i, %sw.bb21.i694.i.i, %sw.bb15.i691.i.i, %sw.bb9.i688.i.i, %sw.bb3.i685.i.i, %sw.bb.i683.i.i
  %arrayidx43.sink.i704.i.i = phi ptr [ %arrayidx43.i702.i.i, %sw.bb39.i703.i.i ], [ %arrayidx37.i699.i.i, %sw.bb33.i700.i.i ], [ %arrayidx31.i696.i.i, %sw.bb27.i697.i.i ], [ %arrayidx25.i693.i.i, %sw.bb21.i694.i.i ], [ %arrayidx19.i690.i.i, %sw.bb15.i691.i.i ], [ %arrayidx13.i687.i.i, %sw.bb9.i688.i.i ], [ %524, %sw.bb3.i685.i.i ], [ %522, %sw.bb.i683.i.i ]
  %537 = ptrtoint ptr %arrayidx43.sink.i704.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %arrayidx43.sink.i704.i.i, align 4
  %add44.i705.i.i = add i32 %538, 128
  br label %sdma_v4_0_get_reg_offset.exit708.i.i

sdma_v4_0_get_reg_offset.exit708.i.i:             ; preds = %return.sink.split.i706.i.i, %sdma_v4_0_get_reg_offset.exit681.i.i.sdma_v4_0_get_reg_offset.exit708.i.i_crit_edge
  %retval.0.i707.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit681.i.i.sdma_v4_0_get_reg_offset.exit708.i.i_crit_edge ], [ %add44.i705.i.i, %return.sink.split.i706.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i707.i.i, i32 noundef %or67.i.i, i32 noundef 0) #10
  %539 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %539, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit708.i.i.sdma_v4_0_get_reg_offset.exit735.i.i_crit_edge [
    i32 0, label %sw.bb.i710.i.i
    i32 1, label %sw.bb3.i712.i.i
    i32 2, label %sw.bb9.i715.i.i
    i32 3, label %sw.bb15.i718.i.i
    i32 4, label %sw.bb21.i721.i.i
    i32 5, label %sw.bb27.i724.i.i
    i32 6, label %sw.bb33.i727.i.i
    i32 7, label %sw.bb39.i730.i.i
  ]

sdma_v4_0_get_reg_offset.exit708.i.i.sdma_v4_0_get_reg_offset.exit735.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit735.i.i

sw.bb.i710.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %540 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i733.i.i

sw.bb3.i712.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %542 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i733.i.i

sw.bb9.i715.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %544 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i714.i.i = getelementptr i32, ptr %545, i32 1
  br label %return.sink.split.i733.i.i

sw.bb15.i718.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %546 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i717.i.i = getelementptr i32, ptr %547, i32 1
  br label %return.sink.split.i733.i.i

sw.bb21.i721.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %548 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i720.i.i = getelementptr i32, ptr %549, i32 1
  br label %return.sink.split.i733.i.i

sw.bb27.i724.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %550 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i723.i.i = getelementptr i32, ptr %551, i32 1
  br label %return.sink.split.i733.i.i

sw.bb33.i727.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %552 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i726.i.i = getelementptr i32, ptr %553, i32 1
  br label %return.sink.split.i733.i.i

sw.bb39.i730.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit708.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %554 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i729.i.i = getelementptr i32, ptr %555, i32 1
  br label %return.sink.split.i733.i.i

return.sink.split.i733.i.i:                       ; preds = %sw.bb39.i730.i.i, %sw.bb33.i727.i.i, %sw.bb27.i724.i.i, %sw.bb21.i721.i.i, %sw.bb15.i718.i.i, %sw.bb9.i715.i.i, %sw.bb3.i712.i.i, %sw.bb.i710.i.i
  %arrayidx43.sink.i731.i.i = phi ptr [ %arrayidx43.i729.i.i, %sw.bb39.i730.i.i ], [ %arrayidx37.i726.i.i, %sw.bb33.i727.i.i ], [ %arrayidx31.i723.i.i, %sw.bb27.i724.i.i ], [ %arrayidx25.i720.i.i, %sw.bb21.i721.i.i ], [ %arrayidx19.i717.i.i, %sw.bb15.i718.i.i ], [ %arrayidx13.i714.i.i, %sw.bb9.i715.i.i ], [ %543, %sw.bb3.i712.i.i ], [ %541, %sw.bb.i710.i.i ]
  %556 = ptrtoint ptr %arrayidx43.sink.i731.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %arrayidx43.sink.i731.i.i, align 4
  %add44.i732.i.i = add i32 %557, 138
  br label %sdma_v4_0_get_reg_offset.exit735.i.i

sdma_v4_0_get_reg_offset.exit735.i.i:             ; preds = %return.sink.split.i733.i.i, %sdma_v4_0_get_reg_offset.exit708.i.i.sdma_v4_0_get_reg_offset.exit735.i.i_crit_edge
  %retval.0.i734.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit708.i.i.sdma_v4_0_get_reg_offset.exit735.i.i_crit_edge ], [ %add44.i732.i.i, %return.sink.split.i733.i.i ]
  %call70.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i734.i.i, i32 noundef 0) #10
  %558 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %558, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit735.i.i.sdma_v4_0_gfx_resume.exit.i_crit_edge [
    i32 0, label %sw.bb.i737.i.i
    i32 1, label %sw.bb3.i739.i.i
    i32 2, label %sw.bb9.i742.i.i
    i32 3, label %sw.bb15.i745.i.i
    i32 4, label %sw.bb21.i748.i.i
    i32 5, label %sw.bb27.i751.i.i
    i32 6, label %sw.bb33.i754.i.i
    i32 7, label %sw.bb39.i757.i.i
  ]

sdma_v4_0_get_reg_offset.exit735.i.i.sdma_v4_0_gfx_resume.exit.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_gfx_resume.exit.i

sw.bb.i737.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %559 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i760.i.i

sw.bb3.i739.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %561 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i760.i.i

sw.bb9.i742.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %563 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i741.i.i = getelementptr i32, ptr %564, i32 1
  br label %return.sink.split.i760.i.i

sw.bb15.i745.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %565 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i744.i.i = getelementptr i32, ptr %566, i32 1
  br label %return.sink.split.i760.i.i

sw.bb21.i748.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %567 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i747.i.i = getelementptr i32, ptr %568, i32 1
  br label %return.sink.split.i760.i.i

sw.bb27.i751.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %569 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i750.i.i = getelementptr i32, ptr %570, i32 1
  br label %return.sink.split.i760.i.i

sw.bb33.i754.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %571 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i753.i.i = getelementptr i32, ptr %572, i32 1
  br label %return.sink.split.i760.i.i

sw.bb39.i757.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit735.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %573 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i756.i.i = getelementptr i32, ptr %574, i32 1
  br label %return.sink.split.i760.i.i

return.sink.split.i760.i.i:                       ; preds = %sw.bb39.i757.i.i, %sw.bb33.i754.i.i, %sw.bb27.i751.i.i, %sw.bb21.i748.i.i, %sw.bb15.i745.i.i, %sw.bb9.i742.i.i, %sw.bb3.i739.i.i, %sw.bb.i737.i.i
  %arrayidx43.sink.i758.i.i = phi ptr [ %arrayidx43.i756.i.i, %sw.bb39.i757.i.i ], [ %arrayidx37.i753.i.i, %sw.bb33.i754.i.i ], [ %arrayidx31.i750.i.i, %sw.bb27.i751.i.i ], [ %arrayidx25.i747.i.i, %sw.bb21.i748.i.i ], [ %arrayidx19.i744.i.i, %sw.bb15.i745.i.i ], [ %arrayidx13.i741.i.i, %sw.bb9.i742.i.i ], [ %562, %sw.bb3.i739.i.i ], [ %560, %sw.bb.i737.i.i ]
  %575 = ptrtoint ptr %arrayidx43.sink.i758.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %arrayidx43.sink.i758.i.i, align 4
  %add44.i759.i.i = add i32 %576, 138
  br label %sdma_v4_0_gfx_resume.exit.i

sdma_v4_0_gfx_resume.exit.i:                      ; preds = %return.sink.split.i760.i.i, %sdma_v4_0_get_reg_offset.exit735.i.i.sdma_v4_0_gfx_resume.exit.i_crit_edge
  %retval.0.i761.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit735.i.i.sdma_v4_0_gfx_resume.exit.i_crit_edge ], [ %add44.i759.i.i, %return.sink.split.i760.i.i ]
  %or74.i.i = or i32 %call70.i.i, 17
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i761.i.i, i32 noundef %or74.i.i, i32 noundef 0) #10
  %ready.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 3, i32 3, i32 17
  %577 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 1, ptr %ready.i.i, align 4
  %578 = ptrtoint ptr %has_page_queue.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %has_page_queue.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %579)
  %tobool9.not.i = icmp eq i8 %579, 0
  br i1 %tobool9.not.i, label %sdma_v4_0_gfx_resume.exit.i.if.end11.i_crit_edge, label %if.then10.i

sdma_v4_0_gfx_resume.exit.i.if.end11.i_crit_edge: ; preds = %sdma_v4_0_gfx_resume.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then10.i:                                      ; preds = %sdma_v4_0_gfx_resume.exit.i
  %page.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4
  %rptr_offs.i165.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4, i32 6
  %580 = ptrtoint ptr %rptr_offs.i165.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %rptr_offs.i165.i, align 8
  %mul.i166.i = shl i32 %581, 2
  %582 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %582, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %i.0359.i, label %if.then10.i.sdma_v4_0_get_reg_offset.exit.i195.i_crit_edge [
    i32 0, label %sw.bb.i.i168.i
    i32 1, label %sw.bb3.i.i170.i
    i32 2, label %sw.bb9.i.i173.i
    i32 3, label %sw.bb15.i.i176.i
    i32 4, label %sw.bb21.i.i179.i
    i32 5, label %sw.bb27.i.i182.i
    i32 6, label %sw.bb33.i.i185.i
    i32 7, label %sw.bb39.i.i188.i
  ]

if.then10.i.sdma_v4_0_get_reg_offset.exit.i195.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit.i195.i

sw.bb.i.i168.i:                                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %583 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i.i191.i

sw.bb3.i.i170.i:                                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %585 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i.i191.i

sw.bb9.i.i173.i:                                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %587 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i.i172.i = getelementptr i32, ptr %588, i32 1
  br label %return.sink.split.i.i191.i

sw.bb15.i.i176.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %589 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i.i175.i = getelementptr i32, ptr %590, i32 1
  br label %return.sink.split.i.i191.i

sw.bb21.i.i179.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %591 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i.i178.i = getelementptr i32, ptr %592, i32 1
  br label %return.sink.split.i.i191.i

sw.bb27.i.i182.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %593 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i.i181.i = getelementptr i32, ptr %594, i32 1
  br label %return.sink.split.i.i191.i

sw.bb33.i.i185.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %595 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i.i184.i = getelementptr i32, ptr %596, i32 1
  br label %return.sink.split.i.i191.i

sw.bb39.i.i188.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %597 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i.i187.i = getelementptr i32, ptr %598, i32 1
  br label %return.sink.split.i.i191.i

return.sink.split.i.i191.i:                       ; preds = %sw.bb39.i.i188.i, %sw.bb33.i.i185.i, %sw.bb27.i.i182.i, %sw.bb21.i.i179.i, %sw.bb15.i.i176.i, %sw.bb9.i.i173.i, %sw.bb3.i.i170.i, %sw.bb.i.i168.i
  %arrayidx43.sink.i.i189.i = phi ptr [ %arrayidx43.i.i187.i, %sw.bb39.i.i188.i ], [ %arrayidx37.i.i184.i, %sw.bb33.i.i185.i ], [ %arrayidx31.i.i181.i, %sw.bb27.i.i182.i ], [ %arrayidx25.i.i178.i, %sw.bb21.i.i179.i ], [ %arrayidx19.i.i175.i, %sw.bb15.i.i176.i ], [ %arrayidx13.i.i172.i, %sw.bb9.i.i173.i ], [ %586, %sw.bb3.i.i170.i ], [ %584, %sw.bb.i.i168.i ]
  %599 = ptrtoint ptr %arrayidx43.sink.i.i189.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %arrayidx43.sink.i.i189.i, align 4
  %add44.i.i190.i = add i32 %600, 224
  br label %sdma_v4_0_get_reg_offset.exit.i195.i

sdma_v4_0_get_reg_offset.exit.i195.i:             ; preds = %return.sink.split.i.i191.i, %if.then10.i.sdma_v4_0_get_reg_offset.exit.i195.i_crit_edge
  %retval.0.i.i192.i = phi i32 [ 0, %if.then10.i.sdma_v4_0_get_reg_offset.exit.i195.i_crit_edge ], [ %add44.i.i190.i, %return.sink.split.i.i191.i ]
  %call1.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i.i192.i, i32 noundef 0) #10
  %ring_size.i.i193.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4, i32 9
  %601 = ptrtoint ptr %ring_size.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %ring_size.i.i193.i, align 8
  %div49.i.i194.i = lshr i32 %602, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %602)
  %cmp.i.i.i211.i = icmp ugt i32 %602, 7
  %sub.i50.i.i213.i = add nsw i32 %div49.i.i194.i, -1
  %603 = tail call i32 @llvm.ctlz.i32(i32 %sub.i50.i.i213.i, i1 false) #10, !range !252
  %and.i.i225.i = and i32 %call1.i.i, -8767
  %.neg18 = mul nuw nsw i32 %603, 62
  %.neg18.op = and i32 %.neg18, 62
  %and34.i.i227.i = select i1 %cmp.i.i.i211.i, i32 %.neg18.op, i32 0
  %or.i.i228.i = or i32 %and34.i.i227.i, %and.i.i225.i
  %or38.i.i229.i = or i32 %or.i.i228.i, 8704
  %604 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %604, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit.i195.i.sdma_v4_0_get_reg_offset.exit194.i.i_crit_edge [
    i32 0, label %sw.bb.i169.i.i
    i32 1, label %sw.bb3.i171.i.i
    i32 2, label %sw.bb9.i174.i.i
    i32 3, label %sw.bb15.i177.i.i
    i32 4, label %sw.bb21.i180.i.i
    i32 5, label %sw.bb27.i183.i.i
    i32 6, label %sw.bb33.i186.i.i
    i32 7, label %sw.bb39.i189.i.i
  ]

sdma_v4_0_get_reg_offset.exit.i195.i.sdma_v4_0_get_reg_offset.exit194.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit194.i.i

sw.bb.i169.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  %605 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i192.i.i

sw.bb3.i171.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  %607 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i192.i.i

sw.bb9.i174.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  %609 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i173.i.i = getelementptr i32, ptr %610, i32 1
  br label %return.sink.split.i192.i.i

sw.bb15.i177.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  %611 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i176.i.i = getelementptr i32, ptr %612, i32 1
  br label %return.sink.split.i192.i.i

sw.bb21.i180.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  %613 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i179.i.i = getelementptr i32, ptr %614, i32 1
  br label %return.sink.split.i192.i.i

sw.bb27.i183.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  %615 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i182.i.i = getelementptr i32, ptr %616, i32 1
  br label %return.sink.split.i192.i.i

sw.bb33.i186.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  %617 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i185.i.i = getelementptr i32, ptr %618, i32 1
  br label %return.sink.split.i192.i.i

sw.bb39.i189.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  %619 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i188.i.i = getelementptr i32, ptr %620, i32 1
  br label %return.sink.split.i192.i.i

return.sink.split.i192.i.i:                       ; preds = %sw.bb39.i189.i.i, %sw.bb33.i186.i.i, %sw.bb27.i183.i.i, %sw.bb21.i180.i.i, %sw.bb15.i177.i.i, %sw.bb9.i174.i.i, %sw.bb3.i171.i.i, %sw.bb.i169.i.i
  %arrayidx43.sink.i190.i.i = phi ptr [ %arrayidx43.i188.i.i, %sw.bb39.i189.i.i ], [ %arrayidx37.i185.i.i, %sw.bb33.i186.i.i ], [ %arrayidx31.i182.i.i, %sw.bb27.i183.i.i ], [ %arrayidx25.i179.i.i, %sw.bb21.i180.i.i ], [ %arrayidx19.i176.i.i, %sw.bb15.i177.i.i ], [ %arrayidx13.i173.i.i, %sw.bb9.i174.i.i ], [ %608, %sw.bb3.i171.i.i ], [ %606, %sw.bb.i169.i.i ]
  %621 = ptrtoint ptr %arrayidx43.sink.i190.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %arrayidx43.sink.i190.i.i, align 4
  %add44.i191.i.i = add i32 %622, 224
  br label %sdma_v4_0_get_reg_offset.exit194.i.i

sdma_v4_0_get_reg_offset.exit194.i.i:             ; preds = %return.sink.split.i192.i.i, %sdma_v4_0_get_reg_offset.exit.i195.i.sdma_v4_0_get_reg_offset.exit194.i.i_crit_edge
  %retval.0.i193.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.i195.i.sdma_v4_0_get_reg_offset.exit194.i.i_crit_edge ], [ %add44.i191.i.i, %return.sink.split.i192.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i193.i.i, i32 noundef %or38.i.i229.i, i32 noundef 0) #10
  %623 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %623, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit194.i.i.sdma_v4_0_get_reg_offset.exit221.i.i_crit_edge [
    i32 0, label %sw.bb.i196.i.i
    i32 1, label %sw.bb3.i198.i.i
    i32 2, label %sw.bb9.i201.i.i
    i32 3, label %sw.bb15.i204.i.i
    i32 4, label %sw.bb21.i207.i.i
    i32 5, label %sw.bb27.i210.i.i
    i32 6, label %sw.bb33.i213.i.i
    i32 7, label %sw.bb39.i216.i.i
  ]

sdma_v4_0_get_reg_offset.exit194.i.i.sdma_v4_0_get_reg_offset.exit221.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit221.i.i

sw.bb.i196.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %624 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i219.i.i

sw.bb3.i198.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %626 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i219.i.i

sw.bb9.i201.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %628 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i200.i.i = getelementptr i32, ptr %629, i32 1
  br label %return.sink.split.i219.i.i

sw.bb15.i204.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %630 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i203.i.i = getelementptr i32, ptr %631, i32 1
  br label %return.sink.split.i219.i.i

sw.bb21.i207.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %632 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i206.i.i = getelementptr i32, ptr %633, i32 1
  br label %return.sink.split.i219.i.i

sw.bb27.i210.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %634 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i209.i.i = getelementptr i32, ptr %635, i32 1
  br label %return.sink.split.i219.i.i

sw.bb33.i213.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %636 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i212.i.i = getelementptr i32, ptr %637, i32 1
  br label %return.sink.split.i219.i.i

sw.bb39.i216.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %638 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i215.i.i = getelementptr i32, ptr %639, i32 1
  br label %return.sink.split.i219.i.i

return.sink.split.i219.i.i:                       ; preds = %sw.bb39.i216.i.i, %sw.bb33.i213.i.i, %sw.bb27.i210.i.i, %sw.bb21.i207.i.i, %sw.bb15.i204.i.i, %sw.bb9.i201.i.i, %sw.bb3.i198.i.i, %sw.bb.i196.i.i
  %arrayidx43.sink.i217.i.i = phi ptr [ %arrayidx43.i215.i.i, %sw.bb39.i216.i.i ], [ %arrayidx37.i212.i.i, %sw.bb33.i213.i.i ], [ %arrayidx31.i209.i.i, %sw.bb27.i210.i.i ], [ %arrayidx25.i206.i.i, %sw.bb21.i207.i.i ], [ %arrayidx19.i203.i.i, %sw.bb15.i204.i.i ], [ %arrayidx13.i200.i.i, %sw.bb9.i201.i.i ], [ %627, %sw.bb3.i198.i.i ], [ %625, %sw.bb.i196.i.i ]
  %640 = ptrtoint ptr %arrayidx43.sink.i217.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %arrayidx43.sink.i217.i.i, align 4
  %add44.i218.i.i = add i32 %641, 227
  br label %sdma_v4_0_get_reg_offset.exit221.i.i

sdma_v4_0_get_reg_offset.exit221.i.i:             ; preds = %return.sink.split.i219.i.i, %sdma_v4_0_get_reg_offset.exit194.i.i.sdma_v4_0_get_reg_offset.exit221.i.i_crit_edge
  %retval.0.i220.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit194.i.i.sdma_v4_0_get_reg_offset.exit221.i.i_crit_edge ], [ %add44.i218.i.i, %return.sink.split.i219.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i220.i.i, i32 noundef 0, i32 noundef 0) #10
  %642 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %642, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit221.i.i.sdma_v4_0_get_reg_offset.exit248.i.i_crit_edge [
    i32 0, label %sw.bb.i223.i.i
    i32 1, label %sw.bb3.i225.i.i
    i32 2, label %sw.bb9.i228.i.i
    i32 3, label %sw.bb15.i231.i.i
    i32 4, label %sw.bb21.i234.i.i
    i32 5, label %sw.bb27.i237.i.i
    i32 6, label %sw.bb33.i240.i.i
    i32 7, label %sw.bb39.i243.i.i
  ]

sdma_v4_0_get_reg_offset.exit221.i.i.sdma_v4_0_get_reg_offset.exit248.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit248.i.i

sw.bb.i223.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %643 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i246.i.i

sw.bb3.i225.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %645 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i246.i.i

sw.bb9.i228.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %647 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i227.i.i = getelementptr i32, ptr %648, i32 1
  br label %return.sink.split.i246.i.i

sw.bb15.i231.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %649 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i230.i.i = getelementptr i32, ptr %650, i32 1
  br label %return.sink.split.i246.i.i

sw.bb21.i234.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %651 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i233.i.i = getelementptr i32, ptr %652, i32 1
  br label %return.sink.split.i246.i.i

sw.bb27.i237.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %653 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i236.i.i = getelementptr i32, ptr %654, i32 1
  br label %return.sink.split.i246.i.i

sw.bb33.i240.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %655 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i239.i.i = getelementptr i32, ptr %656, i32 1
  br label %return.sink.split.i246.i.i

sw.bb39.i243.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %657 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i242.i.i = getelementptr i32, ptr %658, i32 1
  br label %return.sink.split.i246.i.i

return.sink.split.i246.i.i:                       ; preds = %sw.bb39.i243.i.i, %sw.bb33.i240.i.i, %sw.bb27.i237.i.i, %sw.bb21.i234.i.i, %sw.bb15.i231.i.i, %sw.bb9.i228.i.i, %sw.bb3.i225.i.i, %sw.bb.i223.i.i
  %arrayidx43.sink.i244.i.i = phi ptr [ %arrayidx43.i242.i.i, %sw.bb39.i243.i.i ], [ %arrayidx37.i239.i.i, %sw.bb33.i240.i.i ], [ %arrayidx31.i236.i.i, %sw.bb27.i237.i.i ], [ %arrayidx25.i233.i.i, %sw.bb21.i234.i.i ], [ %arrayidx19.i230.i.i, %sw.bb15.i231.i.i ], [ %arrayidx13.i227.i.i, %sw.bb9.i228.i.i ], [ %646, %sw.bb3.i225.i.i ], [ %644, %sw.bb.i223.i.i ]
  %659 = ptrtoint ptr %arrayidx43.sink.i244.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %arrayidx43.sink.i244.i.i, align 4
  %add44.i245.i.i = add i32 %660, 228
  br label %sdma_v4_0_get_reg_offset.exit248.i.i

sdma_v4_0_get_reg_offset.exit248.i.i:             ; preds = %return.sink.split.i246.i.i, %sdma_v4_0_get_reg_offset.exit221.i.i.sdma_v4_0_get_reg_offset.exit248.i.i_crit_edge
  %retval.0.i247.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit221.i.i.sdma_v4_0_get_reg_offset.exit248.i.i_crit_edge ], [ %add44.i245.i.i, %return.sink.split.i246.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i247.i.i, i32 noundef 0, i32 noundef 0) #10
  %661 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %661, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit248.i.i.sdma_v4_0_get_reg_offset.exit275.i.i_crit_edge [
    i32 0, label %sw.bb.i250.i.i
    i32 1, label %sw.bb3.i252.i.i
    i32 2, label %sw.bb9.i255.i.i
    i32 3, label %sw.bb15.i258.i.i
    i32 4, label %sw.bb21.i261.i.i
    i32 5, label %sw.bb27.i264.i.i
    i32 6, label %sw.bb33.i267.i.i
    i32 7, label %sw.bb39.i270.i.i
  ]

sdma_v4_0_get_reg_offset.exit248.i.i.sdma_v4_0_get_reg_offset.exit275.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit275.i.i

sw.bb.i250.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %662 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i273.i.i

sw.bb3.i252.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %664 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i273.i.i

sw.bb9.i255.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %666 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i254.i.i = getelementptr i32, ptr %667, i32 1
  br label %return.sink.split.i273.i.i

sw.bb15.i258.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %668 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i257.i.i = getelementptr i32, ptr %669, i32 1
  br label %return.sink.split.i273.i.i

sw.bb21.i261.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %670 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i260.i.i = getelementptr i32, ptr %671, i32 1
  br label %return.sink.split.i273.i.i

sw.bb27.i264.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %672 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i263.i.i = getelementptr i32, ptr %673, i32 1
  br label %return.sink.split.i273.i.i

sw.bb33.i267.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %674 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i266.i.i = getelementptr i32, ptr %675, i32 1
  br label %return.sink.split.i273.i.i

sw.bb39.i270.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit248.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %676 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i269.i.i = getelementptr i32, ptr %677, i32 1
  br label %return.sink.split.i273.i.i

return.sink.split.i273.i.i:                       ; preds = %sw.bb39.i270.i.i, %sw.bb33.i267.i.i, %sw.bb27.i264.i.i, %sw.bb21.i261.i.i, %sw.bb15.i258.i.i, %sw.bb9.i255.i.i, %sw.bb3.i252.i.i, %sw.bb.i250.i.i
  %arrayidx43.sink.i271.i.i = phi ptr [ %arrayidx43.i269.i.i, %sw.bb39.i270.i.i ], [ %arrayidx37.i266.i.i, %sw.bb33.i267.i.i ], [ %arrayidx31.i263.i.i, %sw.bb27.i264.i.i ], [ %arrayidx25.i260.i.i, %sw.bb21.i261.i.i ], [ %arrayidx19.i257.i.i, %sw.bb15.i258.i.i ], [ %arrayidx13.i254.i.i, %sw.bb9.i255.i.i ], [ %665, %sw.bb3.i252.i.i ], [ %663, %sw.bb.i250.i.i ]
  %678 = ptrtoint ptr %arrayidx43.sink.i271.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %arrayidx43.sink.i271.i.i, align 4
  %add44.i272.i.i = add i32 %679, 229
  br label %sdma_v4_0_get_reg_offset.exit275.i.i

sdma_v4_0_get_reg_offset.exit275.i.i:             ; preds = %return.sink.split.i273.i.i, %sdma_v4_0_get_reg_offset.exit248.i.i.sdma_v4_0_get_reg_offset.exit275.i.i_crit_edge
  %retval.0.i274.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit248.i.i.sdma_v4_0_get_reg_offset.exit275.i.i_crit_edge ], [ %add44.i272.i.i, %return.sink.split.i273.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i274.i.i, i32 noundef 0, i32 noundef 0) #10
  %680 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %680, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit275.i.i.sdma_v4_0_get_reg_offset.exit302.i.i_crit_edge [
    i32 0, label %sw.bb.i277.i.i
    i32 1, label %sw.bb3.i279.i.i
    i32 2, label %sw.bb9.i282.i.i
    i32 3, label %sw.bb15.i285.i.i
    i32 4, label %sw.bb21.i288.i.i
    i32 5, label %sw.bb27.i291.i.i
    i32 6, label %sw.bb33.i294.i.i
    i32 7, label %sw.bb39.i297.i.i
  ]

sdma_v4_0_get_reg_offset.exit275.i.i.sdma_v4_0_get_reg_offset.exit302.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit302.i.i

sw.bb.i277.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %681 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i300.i.i

sw.bb3.i279.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %683 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i300.i.i

sw.bb9.i282.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %685 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i281.i.i = getelementptr i32, ptr %686, i32 1
  br label %return.sink.split.i300.i.i

sw.bb15.i285.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %687 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i284.i.i = getelementptr i32, ptr %688, i32 1
  br label %return.sink.split.i300.i.i

sw.bb21.i288.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %689 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i287.i.i = getelementptr i32, ptr %690, i32 1
  br label %return.sink.split.i300.i.i

sw.bb27.i291.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %691 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i290.i.i = getelementptr i32, ptr %692, i32 1
  br label %return.sink.split.i300.i.i

sw.bb33.i294.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %693 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i293.i.i = getelementptr i32, ptr %694, i32 1
  br label %return.sink.split.i300.i.i

sw.bb39.i297.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit275.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %695 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i296.i.i = getelementptr i32, ptr %696, i32 1
  br label %return.sink.split.i300.i.i

return.sink.split.i300.i.i:                       ; preds = %sw.bb39.i297.i.i, %sw.bb33.i294.i.i, %sw.bb27.i291.i.i, %sw.bb21.i288.i.i, %sw.bb15.i285.i.i, %sw.bb9.i282.i.i, %sw.bb3.i279.i.i, %sw.bb.i277.i.i
  %arrayidx43.sink.i298.i.i = phi ptr [ %arrayidx43.i296.i.i, %sw.bb39.i297.i.i ], [ %arrayidx37.i293.i.i, %sw.bb33.i294.i.i ], [ %arrayidx31.i290.i.i, %sw.bb27.i291.i.i ], [ %arrayidx25.i287.i.i, %sw.bb21.i288.i.i ], [ %arrayidx19.i284.i.i, %sw.bb15.i285.i.i ], [ %arrayidx13.i281.i.i, %sw.bb9.i282.i.i ], [ %684, %sw.bb3.i279.i.i ], [ %682, %sw.bb.i277.i.i ]
  %697 = ptrtoint ptr %arrayidx43.sink.i298.i.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %arrayidx43.sink.i298.i.i, align 4
  %add44.i299.i.i = add i32 %698, 230
  br label %sdma_v4_0_get_reg_offset.exit302.i.i

sdma_v4_0_get_reg_offset.exit302.i.i:             ; preds = %return.sink.split.i300.i.i, %sdma_v4_0_get_reg_offset.exit275.i.i.sdma_v4_0_get_reg_offset.exit302.i.i_crit_edge
  %retval.0.i301.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit275.i.i.sdma_v4_0_get_reg_offset.exit302.i.i_crit_edge ], [ %add44.i299.i.i, %return.sink.split.i300.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i301.i.i, i32 noundef 0, i32 noundef 0) #10
  %699 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %699, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit302.i.i.sdma_v4_0_get_reg_offset.exit329.i.i_crit_edge [
    i32 0, label %sw.bb.i304.i.i
    i32 1, label %sw.bb3.i306.i.i
    i32 2, label %sw.bb9.i309.i.i
    i32 3, label %sw.bb15.i312.i.i
    i32 4, label %sw.bb21.i315.i.i
    i32 5, label %sw.bb27.i318.i.i
    i32 6, label %sw.bb33.i321.i.i
    i32 7, label %sw.bb39.i324.i.i
  ]

sdma_v4_0_get_reg_offset.exit302.i.i.sdma_v4_0_get_reg_offset.exit329.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit329.i.i

sw.bb.i304.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %700 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i327.i.i

sw.bb3.i306.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %702 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i327.i.i

sw.bb9.i309.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %704 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i308.i.i = getelementptr i32, ptr %705, i32 1
  br label %return.sink.split.i327.i.i

sw.bb15.i312.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %706 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i311.i.i = getelementptr i32, ptr %707, i32 1
  br label %return.sink.split.i327.i.i

sw.bb21.i315.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %708 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i314.i.i = getelementptr i32, ptr %709, i32 1
  br label %return.sink.split.i327.i.i

sw.bb27.i318.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %710 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i317.i.i = getelementptr i32, ptr %711, i32 1
  br label %return.sink.split.i327.i.i

sw.bb33.i321.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %712 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i320.i.i = getelementptr i32, ptr %713, i32 1
  br label %return.sink.split.i327.i.i

sw.bb39.i324.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit302.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %714 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i323.i.i = getelementptr i32, ptr %715, i32 1
  br label %return.sink.split.i327.i.i

return.sink.split.i327.i.i:                       ; preds = %sw.bb39.i324.i.i, %sw.bb33.i321.i.i, %sw.bb27.i318.i.i, %sw.bb21.i315.i.i, %sw.bb15.i312.i.i, %sw.bb9.i309.i.i, %sw.bb3.i306.i.i, %sw.bb.i304.i.i
  %arrayidx43.sink.i325.i.i = phi ptr [ %arrayidx43.i323.i.i, %sw.bb39.i324.i.i ], [ %arrayidx37.i320.i.i, %sw.bb33.i321.i.i ], [ %arrayidx31.i317.i.i, %sw.bb27.i318.i.i ], [ %arrayidx25.i314.i.i, %sw.bb21.i315.i.i ], [ %arrayidx19.i311.i.i, %sw.bb15.i312.i.i ], [ %arrayidx13.i308.i.i, %sw.bb9.i309.i.i ], [ %703, %sw.bb3.i306.i.i ], [ %701, %sw.bb.i304.i.i ]
  %716 = ptrtoint ptr %arrayidx43.sink.i325.i.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %arrayidx43.sink.i325.i.i, align 4
  %add44.i326.i.i = add i32 %717, 232
  br label %sdma_v4_0_get_reg_offset.exit329.i.i

sdma_v4_0_get_reg_offset.exit329.i.i:             ; preds = %return.sink.split.i327.i.i, %sdma_v4_0_get_reg_offset.exit302.i.i.sdma_v4_0_get_reg_offset.exit329.i.i_crit_edge
  %retval.0.i328.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit302.i.i.sdma_v4_0_get_reg_offset.exit329.i.i_crit_edge ], [ %add44.i326.i.i, %return.sink.split.i327.i.i ]
  %718 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %718)
  %719 = load i64, ptr %gpu_addr.i.i, align 8
  %conv.i232.i = zext i32 %mul.i166.i to i64
  %add.i233.i = add i64 %719, %conv.i232.i
  %shr.i234.i = lshr i64 %add.i233.i, 32
  %conv10.i.i = trunc i64 %shr.i234.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i328.i.i, i32 noundef %conv10.i.i, i32 noundef 0) #10
  %720 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %720, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit329.i.i.sdma_v4_0_get_reg_offset.exit356.i.i_crit_edge [
    i32 0, label %sw.bb.i331.i.i
    i32 1, label %sw.bb3.i333.i.i
    i32 2, label %sw.bb9.i336.i.i
    i32 3, label %sw.bb15.i339.i.i
    i32 4, label %sw.bb21.i342.i.i
    i32 5, label %sw.bb27.i345.i.i
    i32 6, label %sw.bb33.i348.i.i
    i32 7, label %sw.bb39.i351.i.i
  ]

sdma_v4_0_get_reg_offset.exit329.i.i.sdma_v4_0_get_reg_offset.exit356.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit356.i.i

sw.bb.i331.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %721 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i354.i.i

sw.bb3.i333.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %723 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i354.i.i

sw.bb9.i336.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %725 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i335.i.i = getelementptr i32, ptr %726, i32 1
  br label %return.sink.split.i354.i.i

sw.bb15.i339.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %727 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i338.i.i = getelementptr i32, ptr %728, i32 1
  br label %return.sink.split.i354.i.i

sw.bb21.i342.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %729 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i341.i.i = getelementptr i32, ptr %730, i32 1
  br label %return.sink.split.i354.i.i

sw.bb27.i345.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %731 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i344.i.i = getelementptr i32, ptr %732, i32 1
  br label %return.sink.split.i354.i.i

sw.bb33.i348.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %733 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i347.i.i = getelementptr i32, ptr %734, i32 1
  br label %return.sink.split.i354.i.i

sw.bb39.i351.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit329.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %735 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i350.i.i = getelementptr i32, ptr %736, i32 1
  br label %return.sink.split.i354.i.i

return.sink.split.i354.i.i:                       ; preds = %sw.bb39.i351.i.i, %sw.bb33.i348.i.i, %sw.bb27.i345.i.i, %sw.bb21.i342.i.i, %sw.bb15.i339.i.i, %sw.bb9.i336.i.i, %sw.bb3.i333.i.i, %sw.bb.i331.i.i
  %arrayidx43.sink.i352.i.i = phi ptr [ %arrayidx43.i350.i.i, %sw.bb39.i351.i.i ], [ %arrayidx37.i347.i.i, %sw.bb33.i348.i.i ], [ %arrayidx31.i344.i.i, %sw.bb27.i345.i.i ], [ %arrayidx25.i341.i.i, %sw.bb21.i342.i.i ], [ %arrayidx19.i338.i.i, %sw.bb15.i339.i.i ], [ %arrayidx13.i335.i.i, %sw.bb9.i336.i.i ], [ %724, %sw.bb3.i333.i.i ], [ %722, %sw.bb.i331.i.i ]
  %737 = ptrtoint ptr %arrayidx43.sink.i352.i.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %arrayidx43.sink.i352.i.i, align 4
  %add44.i353.i.i = add i32 %738, 233
  br label %sdma_v4_0_get_reg_offset.exit356.i.i

sdma_v4_0_get_reg_offset.exit356.i.i:             ; preds = %return.sink.split.i354.i.i, %sdma_v4_0_get_reg_offset.exit329.i.i.sdma_v4_0_get_reg_offset.exit356.i.i_crit_edge
  %retval.0.i355.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit329.i.i.sdma_v4_0_get_reg_offset.exit356.i.i_crit_edge ], [ %add44.i353.i.i, %return.sink.split.i354.i.i ]
  %739 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %739)
  %740 = load i64, ptr %gpu_addr.i.i, align 8
  %741 = trunc i64 %740 to i32
  %conv17.i.i = add i32 %mul.i166.i, %741
  %and18.i.i = and i32 %conv17.i.i, -4
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i355.i.i, i32 noundef %and18.i.i, i32 noundef 0) #10
  %742 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %742, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit356.i.i.sdma_v4_0_get_reg_offset.exit383.i.i_crit_edge [
    i32 0, label %sw.bb.i358.i.i
    i32 1, label %sw.bb3.i360.i.i
    i32 2, label %sw.bb9.i363.i.i
    i32 3, label %sw.bb15.i366.i.i
    i32 4, label %sw.bb21.i369.i.i
    i32 5, label %sw.bb27.i372.i.i
    i32 6, label %sw.bb33.i375.i.i
    i32 7, label %sw.bb39.i378.i.i
  ]

sdma_v4_0_get_reg_offset.exit356.i.i.sdma_v4_0_get_reg_offset.exit383.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit383.i.i

sw.bb.i358.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %743 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i381.i.i

sw.bb3.i360.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %745 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i381.i.i

sw.bb9.i363.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %747 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i362.i.i = getelementptr i32, ptr %748, i32 1
  br label %return.sink.split.i381.i.i

sw.bb15.i366.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %749 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i365.i.i = getelementptr i32, ptr %750, i32 1
  br label %return.sink.split.i381.i.i

sw.bb21.i369.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %751 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i368.i.i = getelementptr i32, ptr %752, i32 1
  br label %return.sink.split.i381.i.i

sw.bb27.i372.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %753 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i371.i.i = getelementptr i32, ptr %754, i32 1
  br label %return.sink.split.i381.i.i

sw.bb33.i375.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %755 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i374.i.i = getelementptr i32, ptr %756, i32 1
  br label %return.sink.split.i381.i.i

sw.bb39.i378.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit356.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %757 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i377.i.i = getelementptr i32, ptr %758, i32 1
  br label %return.sink.split.i381.i.i

return.sink.split.i381.i.i:                       ; preds = %sw.bb39.i378.i.i, %sw.bb33.i375.i.i, %sw.bb27.i372.i.i, %sw.bb21.i369.i.i, %sw.bb15.i366.i.i, %sw.bb9.i363.i.i, %sw.bb3.i360.i.i, %sw.bb.i358.i.i
  %arrayidx43.sink.i379.i.i = phi ptr [ %arrayidx43.i377.i.i, %sw.bb39.i378.i.i ], [ %arrayidx37.i374.i.i, %sw.bb33.i375.i.i ], [ %arrayidx31.i371.i.i, %sw.bb27.i372.i.i ], [ %arrayidx25.i368.i.i, %sw.bb21.i369.i.i ], [ %arrayidx19.i365.i.i, %sw.bb15.i366.i.i ], [ %arrayidx13.i362.i.i, %sw.bb9.i363.i.i ], [ %746, %sw.bb3.i360.i.i ], [ %744, %sw.bb.i358.i.i ]
  %759 = ptrtoint ptr %arrayidx43.sink.i379.i.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %arrayidx43.sink.i379.i.i, align 4
  %add44.i380.i.i = add i32 %760, 225
  br label %sdma_v4_0_get_reg_offset.exit383.i.i

sdma_v4_0_get_reg_offset.exit383.i.i:             ; preds = %return.sink.split.i381.i.i, %sdma_v4_0_get_reg_offset.exit356.i.i.sdma_v4_0_get_reg_offset.exit383.i.i_crit_edge
  %retval.0.i382.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit356.i.i.sdma_v4_0_get_reg_offset.exit383.i.i_crit_edge ], [ %add44.i380.i.i, %return.sink.split.i381.i.i ]
  %gpu_addr21.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4, i32 12
  %761 = ptrtoint ptr %gpu_addr21.i.i to i32
  call void @__asan_load8_noabort(i32 %761)
  %762 = load i64, ptr %gpu_addr21.i.i, align 8
  %shr22.i.i = lshr i64 %762, 8
  %conv23.i.i = trunc i64 %shr22.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i382.i.i, i32 noundef %conv23.i.i, i32 noundef 0) #10
  %763 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %763, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit383.i.i.sdma_v4_0_get_reg_offset.exit410.i.i_crit_edge [
    i32 0, label %sw.bb.i385.i.i
    i32 1, label %sw.bb3.i387.i.i
    i32 2, label %sw.bb9.i390.i.i
    i32 3, label %sw.bb15.i393.i.i
    i32 4, label %sw.bb21.i396.i.i
    i32 5, label %sw.bb27.i399.i.i
    i32 6, label %sw.bb33.i402.i.i
    i32 7, label %sw.bb39.i405.i.i
  ]

sdma_v4_0_get_reg_offset.exit383.i.i.sdma_v4_0_get_reg_offset.exit410.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit410.i.i

sw.bb.i385.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %764 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i408.i.i

sw.bb3.i387.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %766 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i408.i.i

sw.bb9.i390.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %768 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i389.i.i = getelementptr i32, ptr %769, i32 1
  br label %return.sink.split.i408.i.i

sw.bb15.i393.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %770 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i392.i.i = getelementptr i32, ptr %771, i32 1
  br label %return.sink.split.i408.i.i

sw.bb21.i396.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %772 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i395.i.i = getelementptr i32, ptr %773, i32 1
  br label %return.sink.split.i408.i.i

sw.bb27.i399.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %774 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i398.i.i = getelementptr i32, ptr %775, i32 1
  br label %return.sink.split.i408.i.i

sw.bb33.i402.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %776 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i401.i.i = getelementptr i32, ptr %777, i32 1
  br label %return.sink.split.i408.i.i

sw.bb39.i405.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit383.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %778 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i404.i.i = getelementptr i32, ptr %779, i32 1
  br label %return.sink.split.i408.i.i

return.sink.split.i408.i.i:                       ; preds = %sw.bb39.i405.i.i, %sw.bb33.i402.i.i, %sw.bb27.i399.i.i, %sw.bb21.i396.i.i, %sw.bb15.i393.i.i, %sw.bb9.i390.i.i, %sw.bb3.i387.i.i, %sw.bb.i385.i.i
  %arrayidx43.sink.i406.i.i = phi ptr [ %arrayidx43.i404.i.i, %sw.bb39.i405.i.i ], [ %arrayidx37.i401.i.i, %sw.bb33.i402.i.i ], [ %arrayidx31.i398.i.i, %sw.bb27.i399.i.i ], [ %arrayidx25.i395.i.i, %sw.bb21.i396.i.i ], [ %arrayidx19.i392.i.i, %sw.bb15.i393.i.i ], [ %arrayidx13.i389.i.i, %sw.bb9.i390.i.i ], [ %767, %sw.bb3.i387.i.i ], [ %765, %sw.bb.i385.i.i ]
  %780 = ptrtoint ptr %arrayidx43.sink.i406.i.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %arrayidx43.sink.i406.i.i, align 4
  %add44.i407.i.i = add i32 %781, 226
  br label %sdma_v4_0_get_reg_offset.exit410.i.i

sdma_v4_0_get_reg_offset.exit410.i.i:             ; preds = %return.sink.split.i408.i.i, %sdma_v4_0_get_reg_offset.exit383.i.i.sdma_v4_0_get_reg_offset.exit410.i.i_crit_edge
  %retval.0.i409.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit383.i.i.sdma_v4_0_get_reg_offset.exit410.i.i_crit_edge ], [ %add44.i407.i.i, %return.sink.split.i408.i.i ]
  %782 = ptrtoint ptr %gpu_addr21.i.i to i32
  call void @__asan_load8_noabort(i32 %782)
  %783 = load i64, ptr %gpu_addr21.i.i, align 8
  %shr26.i.i = lshr i64 %783, 40
  %conv27.i.i = trunc i64 %shr26.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i409.i.i, i32 noundef %conv27.i.i, i32 noundef 0) #10
  %wptr.i235.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4, i32 7
  %784 = ptrtoint ptr %wptr.i235.i to i32
  call void @__asan_store8_noabort(i32 %784)
  store i64 0, ptr %wptr.i235.i, align 8
  %785 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %785, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit410.i.i.sdma_v4_0_get_reg_offset.exit437.i.i_crit_edge [
    i32 0, label %sw.bb.i412.i.i
    i32 1, label %sw.bb3.i414.i.i
    i32 2, label %sw.bb9.i417.i.i
    i32 3, label %sw.bb15.i420.i.i
    i32 4, label %sw.bb21.i423.i.i
    i32 5, label %sw.bb27.i426.i.i
    i32 6, label %sw.bb33.i429.i.i
    i32 7, label %sw.bb39.i432.i.i
  ]

sdma_v4_0_get_reg_offset.exit410.i.i.sdma_v4_0_get_reg_offset.exit437.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit437.i.i

sw.bb.i412.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %786 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i435.i.i

sw.bb3.i414.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %788 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i435.i.i

sw.bb9.i417.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %790 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i416.i.i = getelementptr i32, ptr %791, i32 1
  br label %return.sink.split.i435.i.i

sw.bb15.i420.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %792 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i419.i.i = getelementptr i32, ptr %793, i32 1
  br label %return.sink.split.i435.i.i

sw.bb21.i423.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %794 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i422.i.i = getelementptr i32, ptr %795, i32 1
  br label %return.sink.split.i435.i.i

sw.bb27.i426.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %796 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i425.i.i = getelementptr i32, ptr %797, i32 1
  br label %return.sink.split.i435.i.i

sw.bb33.i429.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %798 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i428.i.i = getelementptr i32, ptr %799, i32 1
  br label %return.sink.split.i435.i.i

sw.bb39.i432.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit410.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %800 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i431.i.i = getelementptr i32, ptr %801, i32 1
  br label %return.sink.split.i435.i.i

return.sink.split.i435.i.i:                       ; preds = %sw.bb39.i432.i.i, %sw.bb33.i429.i.i, %sw.bb27.i426.i.i, %sw.bb21.i423.i.i, %sw.bb15.i420.i.i, %sw.bb9.i417.i.i, %sw.bb3.i414.i.i, %sw.bb.i412.i.i
  %arrayidx43.sink.i433.i.i = phi ptr [ %arrayidx43.i431.i.i, %sw.bb39.i432.i.i ], [ %arrayidx37.i428.i.i, %sw.bb33.i429.i.i ], [ %arrayidx31.i425.i.i, %sw.bb27.i426.i.i ], [ %arrayidx25.i422.i.i, %sw.bb21.i423.i.i ], [ %arrayidx19.i419.i.i, %sw.bb15.i420.i.i ], [ %arrayidx13.i416.i.i, %sw.bb9.i417.i.i ], [ %789, %sw.bb3.i414.i.i ], [ %787, %sw.bb.i412.i.i ]
  %802 = ptrtoint ptr %arrayidx43.sink.i433.i.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %arrayidx43.sink.i433.i.i, align 4
  %add44.i434.i.i = add i32 %803, 277
  br label %sdma_v4_0_get_reg_offset.exit437.i.i

sdma_v4_0_get_reg_offset.exit437.i.i:             ; preds = %return.sink.split.i435.i.i, %sdma_v4_0_get_reg_offset.exit410.i.i.sdma_v4_0_get_reg_offset.exit437.i.i_crit_edge
  %retval.0.i436.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit410.i.i.sdma_v4_0_get_reg_offset.exit437.i.i_crit_edge ], [ %add44.i434.i.i, %return.sink.split.i435.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i436.i.i, i32 noundef 1, i32 noundef 0) #10
  %804 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %804, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit437.i.i.sdma_v4_0_get_reg_offset.exit464.i.i_crit_edge [
    i32 0, label %sw.bb.i439.i.i
    i32 1, label %sw.bb3.i441.i.i
    i32 2, label %sw.bb9.i444.i.i
    i32 3, label %sw.bb15.i447.i.i
    i32 4, label %sw.bb21.i450.i.i
    i32 5, label %sw.bb27.i453.i.i
    i32 6, label %sw.bb33.i456.i.i
    i32 7, label %sw.bb39.i459.i.i
  ]

sdma_v4_0_get_reg_offset.exit437.i.i.sdma_v4_0_get_reg_offset.exit464.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit464.i.i

sw.bb.i439.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %805 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i462.i.i

sw.bb3.i441.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %807 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i462.i.i

sw.bb9.i444.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %809 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i443.i.i = getelementptr i32, ptr %810, i32 1
  br label %return.sink.split.i462.i.i

sw.bb15.i447.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %811 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i446.i.i = getelementptr i32, ptr %812, i32 1
  br label %return.sink.split.i462.i.i

sw.bb21.i450.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %813 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i449.i.i = getelementptr i32, ptr %814, i32 1
  br label %return.sink.split.i462.i.i

sw.bb27.i453.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %815 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i452.i.i = getelementptr i32, ptr %816, i32 1
  br label %return.sink.split.i462.i.i

sw.bb33.i456.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %817 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i455.i.i = getelementptr i32, ptr %818, i32 1
  br label %return.sink.split.i462.i.i

sw.bb39.i459.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit437.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %819 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i458.i.i = getelementptr i32, ptr %820, i32 1
  br label %return.sink.split.i462.i.i

return.sink.split.i462.i.i:                       ; preds = %sw.bb39.i459.i.i, %sw.bb33.i456.i.i, %sw.bb27.i453.i.i, %sw.bb21.i450.i.i, %sw.bb15.i447.i.i, %sw.bb9.i444.i.i, %sw.bb3.i441.i.i, %sw.bb.i439.i.i
  %arrayidx43.sink.i460.i.i = phi ptr [ %arrayidx43.i458.i.i, %sw.bb39.i459.i.i ], [ %arrayidx37.i455.i.i, %sw.bb33.i456.i.i ], [ %arrayidx31.i452.i.i, %sw.bb27.i453.i.i ], [ %arrayidx25.i449.i.i, %sw.bb21.i450.i.i ], [ %arrayidx19.i446.i.i, %sw.bb15.i447.i.i ], [ %arrayidx13.i443.i.i, %sw.bb9.i444.i.i ], [ %808, %sw.bb3.i441.i.i ], [ %806, %sw.bb.i439.i.i ]
  %821 = ptrtoint ptr %arrayidx43.sink.i460.i.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %arrayidx43.sink.i460.i.i, align 4
  %add44.i461.i.i = add i32 %822, 242
  br label %sdma_v4_0_get_reg_offset.exit464.i.i

sdma_v4_0_get_reg_offset.exit464.i.i:             ; preds = %return.sink.split.i462.i.i, %sdma_v4_0_get_reg_offset.exit437.i.i.sdma_v4_0_get_reg_offset.exit464.i.i_crit_edge
  %retval.0.i463.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit437.i.i.sdma_v4_0_get_reg_offset.exit464.i.i_crit_edge ], [ %add44.i461.i.i, %return.sink.split.i462.i.i ]
  %call30.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i463.i.i, i32 noundef 0) #10
  %823 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %823, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit464.i.i.sdma_v4_0_get_reg_offset.exit491.i.i_crit_edge [
    i32 0, label %sw.bb.i466.i.i
    i32 1, label %sw.bb3.i468.i.i
    i32 2, label %sw.bb9.i471.i.i
    i32 3, label %sw.bb15.i474.i.i
    i32 4, label %sw.bb21.i477.i.i
    i32 5, label %sw.bb27.i480.i.i
    i32 6, label %sw.bb33.i483.i.i
    i32 7, label %sw.bb39.i486.i.i
  ]

sdma_v4_0_get_reg_offset.exit464.i.i.sdma_v4_0_get_reg_offset.exit491.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit491.i.i

sw.bb.i466.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %824 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i489.i.i

sw.bb3.i468.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %826 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i489.i.i

sw.bb9.i471.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %828 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i470.i.i = getelementptr i32, ptr %829, i32 1
  br label %return.sink.split.i489.i.i

sw.bb15.i474.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %830 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i473.i.i = getelementptr i32, ptr %831, i32 1
  br label %return.sink.split.i489.i.i

sw.bb21.i477.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %832 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i476.i.i = getelementptr i32, ptr %833, i32 1
  br label %return.sink.split.i489.i.i

sw.bb27.i480.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %834 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i479.i.i = getelementptr i32, ptr %835, i32 1
  br label %return.sink.split.i489.i.i

sw.bb33.i483.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %836 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i482.i.i = getelementptr i32, ptr %837, i32 1
  br label %return.sink.split.i489.i.i

sw.bb39.i486.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit464.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %838 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i485.i.i = getelementptr i32, ptr %839, i32 1
  br label %return.sink.split.i489.i.i

return.sink.split.i489.i.i:                       ; preds = %sw.bb39.i486.i.i, %sw.bb33.i483.i.i, %sw.bb27.i480.i.i, %sw.bb21.i477.i.i, %sw.bb15.i474.i.i, %sw.bb9.i471.i.i, %sw.bb3.i468.i.i, %sw.bb.i466.i.i
  %arrayidx43.sink.i487.i.i = phi ptr [ %arrayidx43.i485.i.i, %sw.bb39.i486.i.i ], [ %arrayidx37.i482.i.i, %sw.bb33.i483.i.i ], [ %arrayidx31.i479.i.i, %sw.bb27.i480.i.i ], [ %arrayidx25.i476.i.i, %sw.bb21.i477.i.i ], [ %arrayidx19.i473.i.i, %sw.bb15.i474.i.i ], [ %arrayidx13.i470.i.i, %sw.bb9.i471.i.i ], [ %827, %sw.bb3.i468.i.i ], [ %825, %sw.bb.i466.i.i ]
  %840 = ptrtoint ptr %arrayidx43.sink.i487.i.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load i32, ptr %arrayidx43.sink.i487.i.i, align 4
  %add44.i488.i.i = add i32 %841, 267
  br label %sdma_v4_0_get_reg_offset.exit491.i.i

sdma_v4_0_get_reg_offset.exit491.i.i:             ; preds = %return.sink.split.i489.i.i, %sdma_v4_0_get_reg_offset.exit464.i.i.sdma_v4_0_get_reg_offset.exit491.i.i_crit_edge
  %retval.0.i490.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit464.i.i.sdma_v4_0_get_reg_offset.exit491.i.i_crit_edge ], [ %add44.i488.i.i, %return.sink.split.i489.i.i ]
  %call32.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i490.i.i, i32 noundef 0) #10
  %and33.i.i = and i32 %call30.i.i, -268435457
  %use_doorbell.i236.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4, i32 24
  %842 = ptrtoint ptr %use_doorbell.i236.i to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %use_doorbell.i236.i, align 4, !range !251
  %844 = zext i8 %843 to i32
  %shl.i237.i = shl nuw nsw i32 %844, 28
  %or36.i.i = or i32 %shl.i237.i, %and33.i.i
  %and37.i.i = and i32 %call32.i.i, -268435453
  %doorbell_index.i238.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4, i32 23
  %845 = ptrtoint ptr %doorbell_index.i238.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load i32, ptr %doorbell_index.i238.i, align 8
  %shl38.i.i = shl i32 %846, 2
  %and39.i.i = and i32 %shl38.i.i, 268435452
  %or40.i.i = or i32 %and39.i.i, %and37.i.i
  %847 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %847, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit491.i.i.sdma_v4_0_get_reg_offset.exit518.i.i_crit_edge [
    i32 0, label %sw.bb.i493.i.i
    i32 1, label %sw.bb3.i495.i.i
    i32 2, label %sw.bb9.i498.i.i
    i32 3, label %sw.bb15.i501.i.i
    i32 4, label %sw.bb21.i504.i.i
    i32 5, label %sw.bb27.i507.i.i
    i32 6, label %sw.bb33.i510.i.i
    i32 7, label %sw.bb39.i513.i.i
  ]

sdma_v4_0_get_reg_offset.exit491.i.i.sdma_v4_0_get_reg_offset.exit518.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit518.i.i

sw.bb.i493.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %848 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i516.i.i

sw.bb3.i495.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %850 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i516.i.i

sw.bb9.i498.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %852 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i497.i.i = getelementptr i32, ptr %853, i32 1
  br label %return.sink.split.i516.i.i

sw.bb15.i501.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %854 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i500.i.i = getelementptr i32, ptr %855, i32 1
  br label %return.sink.split.i516.i.i

sw.bb21.i504.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %856 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i503.i.i = getelementptr i32, ptr %857, i32 1
  br label %return.sink.split.i516.i.i

sw.bb27.i507.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %858 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i506.i.i = getelementptr i32, ptr %859, i32 1
  br label %return.sink.split.i516.i.i

sw.bb33.i510.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %860 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i509.i.i = getelementptr i32, ptr %861, i32 1
  br label %return.sink.split.i516.i.i

sw.bb39.i513.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit491.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %862 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i512.i.i = getelementptr i32, ptr %863, i32 1
  br label %return.sink.split.i516.i.i

return.sink.split.i516.i.i:                       ; preds = %sw.bb39.i513.i.i, %sw.bb33.i510.i.i, %sw.bb27.i507.i.i, %sw.bb21.i504.i.i, %sw.bb15.i501.i.i, %sw.bb9.i498.i.i, %sw.bb3.i495.i.i, %sw.bb.i493.i.i
  %arrayidx43.sink.i514.i.i = phi ptr [ %arrayidx43.i512.i.i, %sw.bb39.i513.i.i ], [ %arrayidx37.i509.i.i, %sw.bb33.i510.i.i ], [ %arrayidx31.i506.i.i, %sw.bb27.i507.i.i ], [ %arrayidx25.i503.i.i, %sw.bb21.i504.i.i ], [ %arrayidx19.i500.i.i, %sw.bb15.i501.i.i ], [ %arrayidx13.i497.i.i, %sw.bb9.i498.i.i ], [ %851, %sw.bb3.i495.i.i ], [ %849, %sw.bb.i493.i.i ]
  %864 = ptrtoint ptr %arrayidx43.sink.i514.i.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load i32, ptr %arrayidx43.sink.i514.i.i, align 4
  %add44.i515.i.i = add i32 %865, 242
  br label %sdma_v4_0_get_reg_offset.exit518.i.i

sdma_v4_0_get_reg_offset.exit518.i.i:             ; preds = %return.sink.split.i516.i.i, %sdma_v4_0_get_reg_offset.exit491.i.i.sdma_v4_0_get_reg_offset.exit518.i.i_crit_edge
  %retval.0.i517.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit491.i.i.sdma_v4_0_get_reg_offset.exit518.i.i_crit_edge ], [ %add44.i515.i.i, %return.sink.split.i516.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i517.i.i, i32 noundef %or36.i.i, i32 noundef 0) #10
  %866 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %866, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit518.i.i.sdma_v4_0_get_reg_offset.exit545.i.i_crit_edge [
    i32 0, label %sw.bb.i520.i.i
    i32 1, label %sw.bb3.i522.i.i
    i32 2, label %sw.bb9.i525.i.i
    i32 3, label %sw.bb15.i528.i.i
    i32 4, label %sw.bb21.i531.i.i
    i32 5, label %sw.bb27.i534.i.i
    i32 6, label %sw.bb33.i537.i.i
    i32 7, label %sw.bb39.i540.i.i
  ]

sdma_v4_0_get_reg_offset.exit518.i.i.sdma_v4_0_get_reg_offset.exit545.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit545.i.i

sw.bb.i520.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %867 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i543.i.i

sw.bb3.i522.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %869 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i543.i.i

sw.bb9.i525.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %871 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i524.i.i = getelementptr i32, ptr %872, i32 1
  br label %return.sink.split.i543.i.i

sw.bb15.i528.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %873 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i527.i.i = getelementptr i32, ptr %874, i32 1
  br label %return.sink.split.i543.i.i

sw.bb21.i531.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %875 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i530.i.i = getelementptr i32, ptr %876, i32 1
  br label %return.sink.split.i543.i.i

sw.bb27.i534.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %877 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i533.i.i = getelementptr i32, ptr %878, i32 1
  br label %return.sink.split.i543.i.i

sw.bb33.i537.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %879 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i536.i.i = getelementptr i32, ptr %880, i32 1
  br label %return.sink.split.i543.i.i

sw.bb39.i540.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit518.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %881 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i539.i.i = getelementptr i32, ptr %882, i32 1
  br label %return.sink.split.i543.i.i

return.sink.split.i543.i.i:                       ; preds = %sw.bb39.i540.i.i, %sw.bb33.i537.i.i, %sw.bb27.i534.i.i, %sw.bb21.i531.i.i, %sw.bb15.i528.i.i, %sw.bb9.i525.i.i, %sw.bb3.i522.i.i, %sw.bb.i520.i.i
  %arrayidx43.sink.i541.i.i = phi ptr [ %arrayidx43.i539.i.i, %sw.bb39.i540.i.i ], [ %arrayidx37.i536.i.i, %sw.bb33.i537.i.i ], [ %arrayidx31.i533.i.i, %sw.bb27.i534.i.i ], [ %arrayidx25.i530.i.i, %sw.bb21.i531.i.i ], [ %arrayidx19.i527.i.i, %sw.bb15.i528.i.i ], [ %arrayidx13.i524.i.i, %sw.bb9.i525.i.i ], [ %870, %sw.bb3.i522.i.i ], [ %868, %sw.bb.i520.i.i ]
  %883 = ptrtoint ptr %arrayidx43.sink.i541.i.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load i32, ptr %arrayidx43.sink.i541.i.i, align 4
  %add44.i542.i.i = add i32 %884, 267
  br label %sdma_v4_0_get_reg_offset.exit545.i.i

sdma_v4_0_get_reg_offset.exit545.i.i:             ; preds = %return.sink.split.i543.i.i, %sdma_v4_0_get_reg_offset.exit518.i.i.sdma_v4_0_get_reg_offset.exit545.i.i_crit_edge
  %retval.0.i544.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit518.i.i.sdma_v4_0_get_reg_offset.exit545.i.i_crit_edge ], [ %add44.i542.i.i, %return.sink.split.i543.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i544.i.i, i32 noundef %or40.i.i, i32 noundef 0) #10
  tail call void @sdma_v4_0_page_ring_set_wptr(ptr noundef %page.i.i) #10
  %885 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %885, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit545.i.i.sdma_v4_0_get_reg_offset.exit572.i.i_crit_edge [
    i32 0, label %sw.bb.i547.i.i
    i32 1, label %sw.bb3.i549.i.i
    i32 2, label %sw.bb9.i552.i.i
    i32 3, label %sw.bb15.i555.i.i
    i32 4, label %sw.bb21.i558.i.i
    i32 5, label %sw.bb27.i561.i.i
    i32 6, label %sw.bb33.i564.i.i
    i32 7, label %sw.bb39.i567.i.i
  ]

sdma_v4_0_get_reg_offset.exit545.i.i.sdma_v4_0_get_reg_offset.exit572.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit572.i.i

sw.bb.i547.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %886 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i570.i.i

sw.bb3.i549.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %888 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i570.i.i

sw.bb9.i552.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %890 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i551.i.i = getelementptr i32, ptr %891, i32 1
  br label %return.sink.split.i570.i.i

sw.bb15.i555.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %892 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i554.i.i = getelementptr i32, ptr %893, i32 1
  br label %return.sink.split.i570.i.i

sw.bb21.i558.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %894 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i557.i.i = getelementptr i32, ptr %895, i32 1
  br label %return.sink.split.i570.i.i

sw.bb27.i561.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %896 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i560.i.i = getelementptr i32, ptr %897, i32 1
  br label %return.sink.split.i570.i.i

sw.bb33.i564.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %898 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i563.i.i = getelementptr i32, ptr %899, i32 1
  br label %return.sink.split.i570.i.i

sw.bb39.i567.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit545.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %900 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i566.i.i = getelementptr i32, ptr %901, i32 1
  br label %return.sink.split.i570.i.i

return.sink.split.i570.i.i:                       ; preds = %sw.bb39.i567.i.i, %sw.bb33.i564.i.i, %sw.bb27.i561.i.i, %sw.bb21.i558.i.i, %sw.bb15.i555.i.i, %sw.bb9.i552.i.i, %sw.bb3.i549.i.i, %sw.bb.i547.i.i
  %arrayidx43.sink.i568.i.i = phi ptr [ %arrayidx43.i566.i.i, %sw.bb39.i567.i.i ], [ %arrayidx37.i563.i.i, %sw.bb33.i564.i.i ], [ %arrayidx31.i560.i.i, %sw.bb27.i561.i.i ], [ %arrayidx25.i557.i.i, %sw.bb21.i558.i.i ], [ %arrayidx19.i554.i.i, %sw.bb15.i555.i.i ], [ %arrayidx13.i551.i.i, %sw.bb9.i552.i.i ], [ %889, %sw.bb3.i549.i.i ], [ %887, %sw.bb.i547.i.i ]
  %902 = ptrtoint ptr %arrayidx43.sink.i568.i.i to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load i32, ptr %arrayidx43.sink.i568.i.i, align 4
  %add44.i569.i.i = add i32 %903, 277
  br label %sdma_v4_0_get_reg_offset.exit572.i.i

sdma_v4_0_get_reg_offset.exit572.i.i:             ; preds = %return.sink.split.i570.i.i, %sdma_v4_0_get_reg_offset.exit545.i.i.sdma_v4_0_get_reg_offset.exit572.i.i_crit_edge
  %retval.0.i571.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit545.i.i.sdma_v4_0_get_reg_offset.exit572.i.i_crit_edge ], [ %add44.i569.i.i, %return.sink.split.i570.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i571.i.i, i32 noundef 0, i32 noundef 0) #10
  %904 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %904)
  %905 = load i64, ptr %gpu_addr.i.i, align 8
  %wptr_offs.i239.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4, i32 26
  %906 = ptrtoint ptr %wptr_offs.i239.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %wptr_offs.i239.i, align 8
  %mul46.i.i = shl i32 %907, 2
  %conv47.i.i = zext i32 %mul46.i.i to i64
  %add48.i.i = add i64 %905, %conv47.i.i
  %908 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %908, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit572.i.i.sdma_v4_0_get_reg_offset.exit599.i.i_crit_edge [
    i32 0, label %sw.bb.i574.i.i
    i32 1, label %sw.bb3.i576.i.i
    i32 2, label %sw.bb9.i579.i.i
    i32 3, label %sw.bb15.i582.i.i
    i32 4, label %sw.bb21.i585.i.i
    i32 5, label %sw.bb27.i588.i.i
    i32 6, label %sw.bb33.i591.i.i
    i32 7, label %sw.bb39.i594.i.i
  ]

sdma_v4_0_get_reg_offset.exit572.i.i.sdma_v4_0_get_reg_offset.exit599.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit599.i.i

sw.bb.i574.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %909 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i597.i.i

sw.bb3.i576.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %911 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i597.i.i

sw.bb9.i579.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %913 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i578.i.i = getelementptr i32, ptr %914, i32 1
  br label %return.sink.split.i597.i.i

sw.bb15.i582.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %915 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i581.i.i = getelementptr i32, ptr %916, i32 1
  br label %return.sink.split.i597.i.i

sw.bb21.i585.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %917 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i584.i.i = getelementptr i32, ptr %918, i32 1
  br label %return.sink.split.i597.i.i

sw.bb27.i588.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %919 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i587.i.i = getelementptr i32, ptr %920, i32 1
  br label %return.sink.split.i597.i.i

sw.bb33.i591.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %921 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i590.i.i = getelementptr i32, ptr %922, i32 1
  br label %return.sink.split.i597.i.i

sw.bb39.i594.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit572.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %923 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i593.i.i = getelementptr i32, ptr %924, i32 1
  br label %return.sink.split.i597.i.i

return.sink.split.i597.i.i:                       ; preds = %sw.bb39.i594.i.i, %sw.bb33.i591.i.i, %sw.bb27.i588.i.i, %sw.bb21.i585.i.i, %sw.bb15.i582.i.i, %sw.bb9.i579.i.i, %sw.bb3.i576.i.i, %sw.bb.i574.i.i
  %arrayidx43.sink.i595.i.i = phi ptr [ %arrayidx43.i593.i.i, %sw.bb39.i594.i.i ], [ %arrayidx37.i590.i.i, %sw.bb33.i591.i.i ], [ %arrayidx31.i587.i.i, %sw.bb27.i588.i.i ], [ %arrayidx25.i584.i.i, %sw.bb21.i585.i.i ], [ %arrayidx19.i581.i.i, %sw.bb15.i582.i.i ], [ %arrayidx13.i578.i.i, %sw.bb9.i579.i.i ], [ %912, %sw.bb3.i576.i.i ], [ %910, %sw.bb.i574.i.i ]
  %925 = ptrtoint ptr %arrayidx43.sink.i595.i.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %arrayidx43.sink.i595.i.i, align 4
  %add44.i596.i.i = add i32 %926, 275
  br label %sdma_v4_0_get_reg_offset.exit599.i.i

sdma_v4_0_get_reg_offset.exit599.i.i:             ; preds = %return.sink.split.i597.i.i, %sdma_v4_0_get_reg_offset.exit572.i.i.sdma_v4_0_get_reg_offset.exit599.i.i_crit_edge
  %retval.0.i598.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit572.i.i.sdma_v4_0_get_reg_offset.exit599.i.i_crit_edge ], [ %add44.i596.i.i, %return.sink.split.i597.i.i ]
  %conv51.i.i = trunc i64 %add48.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i598.i.i, i32 noundef %conv51.i.i, i32 noundef 0) #10
  %927 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %927, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit599.i.i.sdma_v4_0_get_reg_offset.exit626.i.i_crit_edge [
    i32 0, label %sw.bb.i601.i.i
    i32 1, label %sw.bb3.i603.i.i
    i32 2, label %sw.bb9.i606.i.i
    i32 3, label %sw.bb15.i609.i.i
    i32 4, label %sw.bb21.i612.i.i
    i32 5, label %sw.bb27.i615.i.i
    i32 6, label %sw.bb33.i618.i.i
    i32 7, label %sw.bb39.i621.i.i
  ]

sdma_v4_0_get_reg_offset.exit599.i.i.sdma_v4_0_get_reg_offset.exit626.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit626.i.i

sw.bb.i601.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %928 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i624.i.i

sw.bb3.i603.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %930 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i624.i.i

sw.bb9.i606.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %932 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i605.i.i = getelementptr i32, ptr %933, i32 1
  br label %return.sink.split.i624.i.i

sw.bb15.i609.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %934 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i608.i.i = getelementptr i32, ptr %935, i32 1
  br label %return.sink.split.i624.i.i

sw.bb21.i612.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %936 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i611.i.i = getelementptr i32, ptr %937, i32 1
  br label %return.sink.split.i624.i.i

sw.bb27.i615.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %938 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i614.i.i = getelementptr i32, ptr %939, i32 1
  br label %return.sink.split.i624.i.i

sw.bb33.i618.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %940 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i617.i.i = getelementptr i32, ptr %941, i32 1
  br label %return.sink.split.i624.i.i

sw.bb39.i621.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit599.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %942 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i620.i.i = getelementptr i32, ptr %943, i32 1
  br label %return.sink.split.i624.i.i

return.sink.split.i624.i.i:                       ; preds = %sw.bb39.i621.i.i, %sw.bb33.i618.i.i, %sw.bb27.i615.i.i, %sw.bb21.i612.i.i, %sw.bb15.i609.i.i, %sw.bb9.i606.i.i, %sw.bb3.i603.i.i, %sw.bb.i601.i.i
  %arrayidx43.sink.i622.i.i = phi ptr [ %arrayidx43.i620.i.i, %sw.bb39.i621.i.i ], [ %arrayidx37.i617.i.i, %sw.bb33.i618.i.i ], [ %arrayidx31.i614.i.i, %sw.bb27.i615.i.i ], [ %arrayidx25.i611.i.i, %sw.bb21.i612.i.i ], [ %arrayidx19.i608.i.i, %sw.bb15.i609.i.i ], [ %arrayidx13.i605.i.i, %sw.bb9.i606.i.i ], [ %931, %sw.bb3.i603.i.i ], [ %929, %sw.bb.i601.i.i ]
  %944 = ptrtoint ptr %arrayidx43.sink.i622.i.i to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load i32, ptr %arrayidx43.sink.i622.i.i, align 4
  %add44.i623.i.i = add i32 %945, 274
  br label %sdma_v4_0_get_reg_offset.exit626.i.i

sdma_v4_0_get_reg_offset.exit626.i.i:             ; preds = %return.sink.split.i624.i.i, %sdma_v4_0_get_reg_offset.exit599.i.i.sdma_v4_0_get_reg_offset.exit626.i.i_crit_edge
  %retval.0.i625.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit599.i.i.sdma_v4_0_get_reg_offset.exit626.i.i_crit_edge ], [ %add44.i623.i.i, %return.sink.split.i624.i.i ]
  %shr53.i.i = lshr i64 %add48.i.i, 32
  %conv55.i.i = trunc i64 %shr53.i.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i625.i.i, i32 noundef %conv55.i.i, i32 noundef 0) #10
  %946 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %946, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit626.i.i.sdma_v4_0_get_reg_offset.exit653.i.i_crit_edge [
    i32 0, label %sw.bb.i628.i.i
    i32 1, label %sw.bb3.i630.i.i
    i32 2, label %sw.bb9.i633.i.i
    i32 3, label %sw.bb15.i636.i.i
    i32 4, label %sw.bb21.i639.i.i
    i32 5, label %sw.bb27.i642.i.i
    i32 6, label %sw.bb33.i645.i.i
    i32 7, label %sw.bb39.i648.i.i
  ]

sdma_v4_0_get_reg_offset.exit626.i.i.sdma_v4_0_get_reg_offset.exit653.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit653.i.i

sw.bb.i628.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %947 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i651.i.i

sw.bb3.i630.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %949 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i651.i.i

sw.bb9.i633.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %951 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i632.i.i = getelementptr i32, ptr %952, i32 1
  br label %return.sink.split.i651.i.i

sw.bb15.i636.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %953 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i635.i.i = getelementptr i32, ptr %954, i32 1
  br label %return.sink.split.i651.i.i

sw.bb21.i639.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %955 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i638.i.i = getelementptr i32, ptr %956, i32 1
  br label %return.sink.split.i651.i.i

sw.bb27.i642.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %957 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i641.i.i = getelementptr i32, ptr %958, i32 1
  br label %return.sink.split.i651.i.i

sw.bb33.i645.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %959 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i644.i.i = getelementptr i32, ptr %960, i32 1
  br label %return.sink.split.i651.i.i

sw.bb39.i648.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit626.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %961 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i647.i.i = getelementptr i32, ptr %962, i32 1
  br label %return.sink.split.i651.i.i

return.sink.split.i651.i.i:                       ; preds = %sw.bb39.i648.i.i, %sw.bb33.i645.i.i, %sw.bb27.i642.i.i, %sw.bb21.i639.i.i, %sw.bb15.i636.i.i, %sw.bb9.i633.i.i, %sw.bb3.i630.i.i, %sw.bb.i628.i.i
  %arrayidx43.sink.i649.i.i = phi ptr [ %arrayidx43.i647.i.i, %sw.bb39.i648.i.i ], [ %arrayidx37.i644.i.i, %sw.bb33.i645.i.i ], [ %arrayidx31.i641.i.i, %sw.bb27.i642.i.i ], [ %arrayidx25.i638.i.i, %sw.bb21.i639.i.i ], [ %arrayidx19.i635.i.i, %sw.bb15.i636.i.i ], [ %arrayidx13.i632.i.i, %sw.bb9.i633.i.i ], [ %950, %sw.bb3.i630.i.i ], [ %948, %sw.bb.i628.i.i ]
  %963 = ptrtoint ptr %arrayidx43.sink.i649.i.i to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load i32, ptr %arrayidx43.sink.i649.i.i, align 4
  %add44.i650.i.i = add i32 %964, 231
  br label %sdma_v4_0_get_reg_offset.exit653.i.i

sdma_v4_0_get_reg_offset.exit653.i.i:             ; preds = %return.sink.split.i651.i.i, %sdma_v4_0_get_reg_offset.exit626.i.i.sdma_v4_0_get_reg_offset.exit653.i.i_crit_edge
  %retval.0.i652.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit626.i.i.sdma_v4_0_get_reg_offset.exit653.i.i_crit_edge ], [ %add44.i650.i.i, %return.sink.split.i651.i.i ]
  %call57.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i652.i.i, i32 noundef 0) #10
  %and58.i.i = and i32 %call57.i.i, -5
  %965 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load i32, ptr %virt, align 8
  %and59.lobit.i.i = and i32 %966, 4
  %or63.i.i = or i32 %and59.lobit.i.i, %and58.i.i
  %967 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %967, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit653.i.i.sdma_v4_0_get_reg_offset.exit680.i.i_crit_edge [
    i32 0, label %sw.bb.i655.i.i
    i32 1, label %sw.bb3.i657.i.i
    i32 2, label %sw.bb9.i660.i.i
    i32 3, label %sw.bb15.i663.i.i
    i32 4, label %sw.bb21.i666.i.i
    i32 5, label %sw.bb27.i669.i.i
    i32 6, label %sw.bb33.i672.i.i
    i32 7, label %sw.bb39.i675.i.i
  ]

sdma_v4_0_get_reg_offset.exit653.i.i.sdma_v4_0_get_reg_offset.exit680.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit680.i.i

sw.bb.i655.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %968 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i678.i.i

sw.bb3.i657.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %970 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i678.i.i

sw.bb9.i660.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %972 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i659.i.i = getelementptr i32, ptr %973, i32 1
  br label %return.sink.split.i678.i.i

sw.bb15.i663.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %974 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i662.i.i = getelementptr i32, ptr %975, i32 1
  br label %return.sink.split.i678.i.i

sw.bb21.i666.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %976 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i665.i.i = getelementptr i32, ptr %977, i32 1
  br label %return.sink.split.i678.i.i

sw.bb27.i669.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %978 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i668.i.i = getelementptr i32, ptr %979, i32 1
  br label %return.sink.split.i678.i.i

sw.bb33.i672.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %980 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i671.i.i = getelementptr i32, ptr %981, i32 1
  br label %return.sink.split.i678.i.i

sw.bb39.i675.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit653.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %982 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i674.i.i = getelementptr i32, ptr %983, i32 1
  br label %return.sink.split.i678.i.i

return.sink.split.i678.i.i:                       ; preds = %sw.bb39.i675.i.i, %sw.bb33.i672.i.i, %sw.bb27.i669.i.i, %sw.bb21.i666.i.i, %sw.bb15.i663.i.i, %sw.bb9.i660.i.i, %sw.bb3.i657.i.i, %sw.bb.i655.i.i
  %arrayidx43.sink.i676.i.i = phi ptr [ %arrayidx43.i674.i.i, %sw.bb39.i675.i.i ], [ %arrayidx37.i671.i.i, %sw.bb33.i672.i.i ], [ %arrayidx31.i668.i.i, %sw.bb27.i669.i.i ], [ %arrayidx25.i665.i.i, %sw.bb21.i666.i.i ], [ %arrayidx19.i662.i.i, %sw.bb15.i663.i.i ], [ %arrayidx13.i659.i.i, %sw.bb9.i660.i.i ], [ %971, %sw.bb3.i657.i.i ], [ %969, %sw.bb.i655.i.i ]
  %984 = ptrtoint ptr %arrayidx43.sink.i676.i.i to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load i32, ptr %arrayidx43.sink.i676.i.i, align 4
  %add44.i677.i.i = add i32 %985, 231
  br label %sdma_v4_0_get_reg_offset.exit680.i.i

sdma_v4_0_get_reg_offset.exit680.i.i:             ; preds = %return.sink.split.i678.i.i, %sdma_v4_0_get_reg_offset.exit653.i.i.sdma_v4_0_get_reg_offset.exit680.i.i_crit_edge
  %retval.0.i679.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit653.i.i.sdma_v4_0_get_reg_offset.exit680.i.i_crit_edge ], [ %add44.i677.i.i, %return.sink.split.i678.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i679.i.i, i32 noundef %or63.i.i, i32 noundef 0) #10
  %or66.i.i = or i32 %or.i.i228.i, 12801
  %986 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %986, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit680.i.i.sdma_v4_0_get_reg_offset.exit707.i.i_crit_edge [
    i32 0, label %sw.bb.i682.i.i
    i32 1, label %sw.bb3.i684.i.i
    i32 2, label %sw.bb9.i687.i.i
    i32 3, label %sw.bb15.i690.i.i
    i32 4, label %sw.bb21.i693.i.i
    i32 5, label %sw.bb27.i696.i.i
    i32 6, label %sw.bb33.i699.i.i
    i32 7, label %sw.bb39.i702.i.i
  ]

sdma_v4_0_get_reg_offset.exit680.i.i.sdma_v4_0_get_reg_offset.exit707.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit707.i.i

sw.bb.i682.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %987 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i705.i.i

sw.bb3.i684.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %989 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i705.i.i

sw.bb9.i687.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %991 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i686.i.i = getelementptr i32, ptr %992, i32 1
  br label %return.sink.split.i705.i.i

sw.bb15.i690.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %993 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i689.i.i = getelementptr i32, ptr %994, i32 1
  br label %return.sink.split.i705.i.i

sw.bb21.i693.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %995 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i692.i.i = getelementptr i32, ptr %996, i32 1
  br label %return.sink.split.i705.i.i

sw.bb27.i696.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %997 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i695.i.i = getelementptr i32, ptr %998, i32 1
  br label %return.sink.split.i705.i.i

sw.bb33.i699.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %999 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i698.i.i = getelementptr i32, ptr %1000, i32 1
  br label %return.sink.split.i705.i.i

sw.bb39.i702.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit680.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1001 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i701.i.i = getelementptr i32, ptr %1002, i32 1
  br label %return.sink.split.i705.i.i

return.sink.split.i705.i.i:                       ; preds = %sw.bb39.i702.i.i, %sw.bb33.i699.i.i, %sw.bb27.i696.i.i, %sw.bb21.i693.i.i, %sw.bb15.i690.i.i, %sw.bb9.i687.i.i, %sw.bb3.i684.i.i, %sw.bb.i682.i.i
  %arrayidx43.sink.i703.i.i = phi ptr [ %arrayidx43.i701.i.i, %sw.bb39.i702.i.i ], [ %arrayidx37.i698.i.i, %sw.bb33.i699.i.i ], [ %arrayidx31.i695.i.i, %sw.bb27.i696.i.i ], [ %arrayidx25.i692.i.i, %sw.bb21.i693.i.i ], [ %arrayidx19.i689.i.i, %sw.bb15.i690.i.i ], [ %arrayidx13.i686.i.i, %sw.bb9.i687.i.i ], [ %990, %sw.bb3.i684.i.i ], [ %988, %sw.bb.i682.i.i ]
  %1003 = ptrtoint ptr %arrayidx43.sink.i703.i.i to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load i32, ptr %arrayidx43.sink.i703.i.i, align 4
  %add44.i704.i.i = add i32 %1004, 224
  br label %sdma_v4_0_get_reg_offset.exit707.i.i

sdma_v4_0_get_reg_offset.exit707.i.i:             ; preds = %return.sink.split.i705.i.i, %sdma_v4_0_get_reg_offset.exit680.i.i.sdma_v4_0_get_reg_offset.exit707.i.i_crit_edge
  %retval.0.i706.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit680.i.i.sdma_v4_0_get_reg_offset.exit707.i.i_crit_edge ], [ %add44.i704.i.i, %return.sink.split.i705.i.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i706.i.i, i32 noundef %or66.i.i, i32 noundef 0) #10
  %1005 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1005, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit707.i.i.sdma_v4_0_get_reg_offset.exit734.i.i_crit_edge [
    i32 0, label %sw.bb.i709.i.i
    i32 1, label %sw.bb3.i711.i.i
    i32 2, label %sw.bb9.i714.i.i
    i32 3, label %sw.bb15.i717.i.i
    i32 4, label %sw.bb21.i720.i.i
    i32 5, label %sw.bb27.i723.i.i
    i32 6, label %sw.bb33.i726.i.i
    i32 7, label %sw.bb39.i729.i.i
  ]

sdma_v4_0_get_reg_offset.exit707.i.i.sdma_v4_0_get_reg_offset.exit734.i.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit734.i.i

sw.bb.i709.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1006 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i732.i.i

sw.bb3.i711.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1008 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i732.i.i

sw.bb9.i714.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1010 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i713.i.i = getelementptr i32, ptr %1011, i32 1
  br label %return.sink.split.i732.i.i

sw.bb15.i717.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1012 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i716.i.i = getelementptr i32, ptr %1013, i32 1
  br label %return.sink.split.i732.i.i

sw.bb21.i720.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1014 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i719.i.i = getelementptr i32, ptr %1015, i32 1
  br label %return.sink.split.i732.i.i

sw.bb27.i723.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1016 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i722.i.i = getelementptr i32, ptr %1017, i32 1
  br label %return.sink.split.i732.i.i

sw.bb33.i726.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1018 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i725.i.i = getelementptr i32, ptr %1019, i32 1
  br label %return.sink.split.i732.i.i

sw.bb39.i729.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit707.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1020 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i728.i.i = getelementptr i32, ptr %1021, i32 1
  br label %return.sink.split.i732.i.i

return.sink.split.i732.i.i:                       ; preds = %sw.bb39.i729.i.i, %sw.bb33.i726.i.i, %sw.bb27.i723.i.i, %sw.bb21.i720.i.i, %sw.bb15.i717.i.i, %sw.bb9.i714.i.i, %sw.bb3.i711.i.i, %sw.bb.i709.i.i
  %arrayidx43.sink.i730.i.i = phi ptr [ %arrayidx43.i728.i.i, %sw.bb39.i729.i.i ], [ %arrayidx37.i725.i.i, %sw.bb33.i726.i.i ], [ %arrayidx31.i722.i.i, %sw.bb27.i723.i.i ], [ %arrayidx25.i719.i.i, %sw.bb21.i720.i.i ], [ %arrayidx19.i716.i.i, %sw.bb15.i717.i.i ], [ %arrayidx13.i713.i.i, %sw.bb9.i714.i.i ], [ %1009, %sw.bb3.i711.i.i ], [ %1007, %sw.bb.i709.i.i ]
  %1022 = ptrtoint ptr %arrayidx43.sink.i730.i.i to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load i32, ptr %arrayidx43.sink.i730.i.i, align 4
  %add44.i731.i.i = add i32 %1023, 234
  br label %sdma_v4_0_get_reg_offset.exit734.i.i

sdma_v4_0_get_reg_offset.exit734.i.i:             ; preds = %return.sink.split.i732.i.i, %sdma_v4_0_get_reg_offset.exit707.i.i.sdma_v4_0_get_reg_offset.exit734.i.i_crit_edge
  %retval.0.i733.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit707.i.i.sdma_v4_0_get_reg_offset.exit734.i.i_crit_edge ], [ %add44.i731.i.i, %return.sink.split.i732.i.i ]
  %call69.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i733.i.i, i32 noundef 0) #10
  %1024 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1024, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit734.i.i.sdma_v4_0_page_resume.exit.i_crit_edge [
    i32 0, label %sw.bb.i736.i.i
    i32 1, label %sw.bb3.i738.i.i
    i32 2, label %sw.bb9.i741.i.i
    i32 3, label %sw.bb15.i744.i.i
    i32 4, label %sw.bb21.i747.i.i
    i32 5, label %sw.bb27.i750.i.i
    i32 6, label %sw.bb33.i753.i.i
    i32 7, label %sw.bb39.i756.i.i
  ]

sdma_v4_0_get_reg_offset.exit734.i.i.sdma_v4_0_page_resume.exit.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_page_resume.exit.i

sw.bb.i736.i.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1025 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i759.i.i

sw.bb3.i738.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1027 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i759.i.i

sw.bb9.i741.i.i:                                  ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1029 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i740.i.i = getelementptr i32, ptr %1030, i32 1
  br label %return.sink.split.i759.i.i

sw.bb15.i744.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1031 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i743.i.i = getelementptr i32, ptr %1032, i32 1
  br label %return.sink.split.i759.i.i

sw.bb21.i747.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1033 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i746.i.i = getelementptr i32, ptr %1034, i32 1
  br label %return.sink.split.i759.i.i

sw.bb27.i750.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1035 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i749.i.i = getelementptr i32, ptr %1036, i32 1
  br label %return.sink.split.i759.i.i

sw.bb33.i753.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1037 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i752.i.i = getelementptr i32, ptr %1038, i32 1
  br label %return.sink.split.i759.i.i

sw.bb39.i756.i.i:                                 ; preds = %sdma_v4_0_get_reg_offset.exit734.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1039 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i755.i.i = getelementptr i32, ptr %1040, i32 1
  br label %return.sink.split.i759.i.i

return.sink.split.i759.i.i:                       ; preds = %sw.bb39.i756.i.i, %sw.bb33.i753.i.i, %sw.bb27.i750.i.i, %sw.bb21.i747.i.i, %sw.bb15.i744.i.i, %sw.bb9.i741.i.i, %sw.bb3.i738.i.i, %sw.bb.i736.i.i
  %arrayidx43.sink.i757.i.i = phi ptr [ %arrayidx43.i755.i.i, %sw.bb39.i756.i.i ], [ %arrayidx37.i752.i.i, %sw.bb33.i753.i.i ], [ %arrayidx31.i749.i.i, %sw.bb27.i750.i.i ], [ %arrayidx25.i746.i.i, %sw.bb21.i747.i.i ], [ %arrayidx19.i743.i.i, %sw.bb15.i744.i.i ], [ %arrayidx13.i740.i.i, %sw.bb9.i741.i.i ], [ %1028, %sw.bb3.i738.i.i ], [ %1026, %sw.bb.i736.i.i ]
  %1041 = ptrtoint ptr %arrayidx43.sink.i757.i.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load i32, ptr %arrayidx43.sink.i757.i.i, align 4
  %add44.i758.i.i = add i32 %1042, 234
  br label %sdma_v4_0_page_resume.exit.i

sdma_v4_0_page_resume.exit.i:                     ; preds = %return.sink.split.i759.i.i, %sdma_v4_0_get_reg_offset.exit734.i.i.sdma_v4_0_page_resume.exit.i_crit_edge
  %retval.0.i760.i.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit734.i.i.sdma_v4_0_page_resume.exit.i_crit_edge ], [ %add44.i758.i.i, %return.sink.split.i759.i.i ]
  %or73.i.i = or i32 %call69.i.i, 17
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i760.i.i, i32 noundef %or73.i.i, i32 noundef 0) #10
  %ready.i241.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0359.i, i32 4, i32 3, i32 17
  %1043 = ptrtoint ptr %ready.i241.i to i32
  call void @__asan_store1_noabort(i32 %1043)
  store i8 1, ptr %ready.i241.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %sdma_v4_0_page_resume.exit.i, %sdma_v4_0_gfx_resume.exit.i.if.end11.i_crit_edge
  %1044 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1044, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %i.0359.i, label %if.end11.i.sdma_v4_0_get_reg_offset.exit268.i_crit_edge [
    i32 0, label %sw.bb.i243.i
    i32 1, label %sw.bb3.i245.i
    i32 2, label %sw.bb9.i248.i
    i32 3, label %sw.bb15.i251.i
    i32 4, label %sw.bb21.i254.i
    i32 5, label %sw.bb27.i257.i
    i32 6, label %sw.bb33.i260.i
    i32 7, label %sw.bb39.i263.i
  ]

if.end11.i.sdma_v4_0_get_reg_offset.exit268.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit268.i

sw.bb.i243.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %1045 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i266.i

sw.bb3.i245.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %1047 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i266.i

sw.bb9.i248.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %1049 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i247.i = getelementptr i32, ptr %1050, i32 1
  br label %return.sink.split.i266.i

sw.bb15.i251.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %1051 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i250.i = getelementptr i32, ptr %1052, i32 1
  br label %return.sink.split.i266.i

sw.bb21.i254.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %1053 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i253.i = getelementptr i32, ptr %1054, i32 1
  br label %return.sink.split.i266.i

sw.bb27.i257.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %1055 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i256.i = getelementptr i32, ptr %1056, i32 1
  br label %return.sink.split.i266.i

sw.bb33.i260.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %1057 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i259.i = getelementptr i32, ptr %1058, i32 1
  br label %return.sink.split.i266.i

sw.bb39.i263.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %1059 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i262.i = getelementptr i32, ptr %1060, i32 1
  br label %return.sink.split.i266.i

return.sink.split.i266.i:                         ; preds = %sw.bb39.i263.i, %sw.bb33.i260.i, %sw.bb27.i257.i, %sw.bb21.i254.i, %sw.bb15.i251.i, %sw.bb9.i248.i, %sw.bb3.i245.i, %sw.bb.i243.i
  %arrayidx43.sink.i264.i = phi ptr [ %arrayidx43.i262.i, %sw.bb39.i263.i ], [ %arrayidx37.i259.i, %sw.bb33.i260.i ], [ %arrayidx31.i256.i, %sw.bb27.i257.i ], [ %arrayidx25.i253.i, %sw.bb21.i254.i ], [ %arrayidx19.i250.i, %sw.bb15.i251.i ], [ %arrayidx13.i247.i, %sw.bb9.i248.i ], [ %1048, %sw.bb3.i245.i ], [ %1046, %sw.bb.i243.i ]
  %1061 = ptrtoint ptr %arrayidx43.sink.i264.i to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load i32, ptr %arrayidx43.sink.i264.i, align 4
  %add44.i265.i = add i32 %1062, 28
  br label %sdma_v4_0_get_reg_offset.exit268.i

sdma_v4_0_get_reg_offset.exit268.i:               ; preds = %return.sink.split.i266.i, %if.end11.i.sdma_v4_0_get_reg_offset.exit268.i_crit_edge
  %retval.0.i267.i = phi i32 [ 0, %if.end11.i.sdma_v4_0_get_reg_offset.exit268.i_crit_edge ], [ %add44.i265.i, %return.sink.split.i266.i ]
  %call13.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i267.i, i32 noundef 0) #10
  %or.i = or i32 %call13.i, 2
  %1063 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1063, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit268.i.sdma_v4_0_get_reg_offset.exit295.i_crit_edge [
    i32 0, label %sw.bb.i270.i
    i32 1, label %sw.bb3.i272.i
    i32 2, label %sw.bb9.i275.i
    i32 3, label %sw.bb15.i278.i
    i32 4, label %sw.bb21.i281.i
    i32 5, label %sw.bb27.i284.i
    i32 6, label %sw.bb33.i287.i
    i32 7, label %sw.bb39.i290.i
  ]

sdma_v4_0_get_reg_offset.exit268.i.sdma_v4_0_get_reg_offset.exit295.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit295.i

sw.bb.i270.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  %1064 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i293.i

sw.bb3.i272.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  %1066 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i293.i

sw.bb9.i275.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  %1068 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i274.i = getelementptr i32, ptr %1069, i32 1
  br label %return.sink.split.i293.i

sw.bb15.i278.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  %1070 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i277.i = getelementptr i32, ptr %1071, i32 1
  br label %return.sink.split.i293.i

sw.bb21.i281.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  %1072 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i280.i = getelementptr i32, ptr %1073, i32 1
  br label %return.sink.split.i293.i

sw.bb27.i284.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  %1074 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i283.i = getelementptr i32, ptr %1075, i32 1
  br label %return.sink.split.i293.i

sw.bb33.i287.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  %1076 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i286.i = getelementptr i32, ptr %1077, i32 1
  br label %return.sink.split.i293.i

sw.bb39.i290.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  %1078 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i289.i = getelementptr i32, ptr %1079, i32 1
  br label %return.sink.split.i293.i

return.sink.split.i293.i:                         ; preds = %sw.bb39.i290.i, %sw.bb33.i287.i, %sw.bb27.i284.i, %sw.bb21.i281.i, %sw.bb15.i278.i, %sw.bb9.i275.i, %sw.bb3.i272.i, %sw.bb.i270.i
  %arrayidx43.sink.i291.i = phi ptr [ %arrayidx43.i289.i, %sw.bb39.i290.i ], [ %arrayidx37.i286.i, %sw.bb33.i287.i ], [ %arrayidx31.i283.i, %sw.bb27.i284.i ], [ %arrayidx25.i280.i, %sw.bb21.i281.i ], [ %arrayidx19.i277.i, %sw.bb15.i278.i ], [ %arrayidx13.i274.i, %sw.bb9.i275.i ], [ %1067, %sw.bb3.i272.i ], [ %1065, %sw.bb.i270.i ]
  %1080 = ptrtoint ptr %arrayidx43.sink.i291.i to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load i32, ptr %arrayidx43.sink.i291.i, align 4
  %add44.i292.i = add i32 %1081, 28
  br label %sdma_v4_0_get_reg_offset.exit295.i

sdma_v4_0_get_reg_offset.exit295.i:               ; preds = %return.sink.split.i293.i, %sdma_v4_0_get_reg_offset.exit268.i.sdma_v4_0_get_reg_offset.exit295.i_crit_edge
  %retval.0.i294.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit268.i.sdma_v4_0_get_reg_offset.exit295.i_crit_edge ], [ %add44.i292.i, %return.sink.split.i293.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i294.i, i32 noundef %or.i, i32 noundef 0) #10
  %1082 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load i32, ptr %virt, align 8
  %and18.i = and i32 %1083, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %sdma_v4_0_get_reg_offset.exit295.i.if.end26.i_crit_edge

sdma_v4_0_get_reg_offset.exit295.i.if.end26.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit295.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then20.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit295.i
  %1084 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1084, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %i.0359.i, label %if.then20.i.sdma_v4_0_get_reg_offset.exit322.i_crit_edge [
    i32 0, label %sw.bb.i297.i
    i32 1, label %sw.bb3.i299.i
    i32 2, label %sw.bb9.i302.i
    i32 3, label %sw.bb15.i305.i
    i32 4, label %sw.bb21.i308.i
    i32 5, label %sw.bb27.i311.i
    i32 6, label %sw.bb33.i314.i
    i32 7, label %sw.bb39.i317.i
  ]

if.then20.i.sdma_v4_0_get_reg_offset.exit322.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit322.i

sw.bb.i297.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %1085 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i320.i

sw.bb3.i299.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %1087 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i320.i

sw.bb9.i302.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %1089 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i301.i = getelementptr i32, ptr %1090, i32 1
  br label %return.sink.split.i320.i

sw.bb15.i305.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %1091 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i304.i = getelementptr i32, ptr %1092, i32 1
  br label %return.sink.split.i320.i

sw.bb21.i308.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %1093 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i307.i = getelementptr i32, ptr %1094, i32 1
  br label %return.sink.split.i320.i

sw.bb27.i311.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %1095 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i310.i = getelementptr i32, ptr %1096, i32 1
  br label %return.sink.split.i320.i

sw.bb33.i314.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %1097 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %1097)
  %1098 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i313.i = getelementptr i32, ptr %1098, i32 1
  br label %return.sink.split.i320.i

sw.bb39.i317.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %1099 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i316.i = getelementptr i32, ptr %1100, i32 1
  br label %return.sink.split.i320.i

return.sink.split.i320.i:                         ; preds = %sw.bb39.i317.i, %sw.bb33.i314.i, %sw.bb27.i311.i, %sw.bb21.i308.i, %sw.bb15.i305.i, %sw.bb9.i302.i, %sw.bb3.i299.i, %sw.bb.i297.i
  %arrayidx43.sink.i318.i = phi ptr [ %arrayidx43.i316.i, %sw.bb39.i317.i ], [ %arrayidx37.i313.i, %sw.bb33.i314.i ], [ %arrayidx31.i310.i, %sw.bb27.i311.i ], [ %arrayidx25.i307.i, %sw.bb21.i308.i ], [ %arrayidx19.i304.i, %sw.bb15.i305.i ], [ %arrayidx13.i301.i, %sw.bb9.i302.i ], [ %1088, %sw.bb3.i299.i ], [ %1086, %sw.bb.i297.i ]
  %1101 = ptrtoint ptr %arrayidx43.sink.i318.i to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load i32, ptr %arrayidx43.sink.i318.i, align 4
  %add44.i319.i = add i32 %1102, 42
  br label %sdma_v4_0_get_reg_offset.exit322.i

sdma_v4_0_get_reg_offset.exit322.i:               ; preds = %return.sink.split.i320.i, %if.then20.i.sdma_v4_0_get_reg_offset.exit322.i_crit_edge
  %retval.0.i321.i = phi i32 [ 0, %if.then20.i.sdma_v4_0_get_reg_offset.exit322.i_crit_edge ], [ %add44.i319.i, %return.sink.split.i320.i ]
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i321.i, i32 noundef 0) #10
  %and23.i = and i32 %call22.i, -2
  %1103 = zext i32 %i.0359.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1103, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %i.0359.i, label %sdma_v4_0_get_reg_offset.exit322.i.sdma_v4_0_get_reg_offset.exit349.i_crit_edge [
    i32 0, label %sw.bb.i324.i
    i32 1, label %sw.bb3.i326.i
    i32 2, label %sw.bb9.i329.i
    i32 3, label %sw.bb15.i332.i
    i32 4, label %sw.bb21.i335.i
    i32 5, label %sw.bb27.i338.i
    i32 6, label %sw.bb33.i341.i
    i32 7, label %sw.bb39.i344.i
  ]

sdma_v4_0_get_reg_offset.exit322.i.sdma_v4_0_get_reg_offset.exit349.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit349.i

sw.bb.i324.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1104 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %arrayidx.i134.i, align 8
  br label %return.sink.split.i347.i

sw.bb3.i326.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1106 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i347.i

sw.bb9.i329.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1108 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i328.i = getelementptr i32, ptr %1109, i32 1
  br label %return.sink.split.i347.i

sw.bb15.i332.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1110 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i331.i = getelementptr i32, ptr %1111, i32 1
  br label %return.sink.split.i347.i

sw.bb21.i335.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1112 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i334.i = getelementptr i32, ptr %1113, i32 1
  br label %return.sink.split.i347.i

sw.bb27.i338.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1114 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i337.i = getelementptr i32, ptr %1115, i32 1
  br label %return.sink.split.i347.i

sw.bb33.i341.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1116 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i340.i = getelementptr i32, ptr %1117, i32 1
  br label %return.sink.split.i347.i

sw.bb39.i344.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  %1118 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i343.i = getelementptr i32, ptr %1119, i32 1
  br label %return.sink.split.i347.i

return.sink.split.i347.i:                         ; preds = %sw.bb39.i344.i, %sw.bb33.i341.i, %sw.bb27.i338.i, %sw.bb21.i335.i, %sw.bb15.i332.i, %sw.bb9.i329.i, %sw.bb3.i326.i, %sw.bb.i324.i
  %arrayidx43.sink.i345.i = phi ptr [ %arrayidx43.i343.i, %sw.bb39.i344.i ], [ %arrayidx37.i340.i, %sw.bb33.i341.i ], [ %arrayidx31.i337.i, %sw.bb27.i338.i ], [ %arrayidx25.i334.i, %sw.bb21.i335.i ], [ %arrayidx19.i331.i, %sw.bb15.i332.i ], [ %arrayidx13.i328.i, %sw.bb9.i329.i ], [ %1107, %sw.bb3.i326.i ], [ %1105, %sw.bb.i324.i ]
  %1120 = ptrtoint ptr %arrayidx43.sink.i345.i to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load i32, ptr %arrayidx43.sink.i345.i, align 4
  %add44.i346.i = add i32 %1121, 42
  br label %sdma_v4_0_get_reg_offset.exit349.i

sdma_v4_0_get_reg_offset.exit349.i:               ; preds = %return.sink.split.i347.i, %sdma_v4_0_get_reg_offset.exit322.i.sdma_v4_0_get_reg_offset.exit349.i_crit_edge
  %retval.0.i348.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit322.i.sdma_v4_0_get_reg_offset.exit349.i_crit_edge ], [ %add44.i346.i, %return.sink.split.i347.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i348.i, i32 noundef %and23.i, i32 noundef 0) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %sdma_v4_0_get_reg_offset.exit349.i, %sdma_v4_0_get_reg_offset.exit295.i.if.end26.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0359.i, 1
  %1122 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load i32, ptr %num_instances.i, align 4
  %cmp6.i = icmp slt i32 %inc.i, %1123
  br i1 %cmp6.i, label %if.end26.i.for.body.i_crit_edge, label %if.end26.i.for.end.i_crit_edge

if.end26.i.for.end.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end26.i.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %1124 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load i32, ptr %virt, align 8
  %and29.i = and i32 %1125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else32.i, label %if.then31.i

if.then31.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sdma_v4_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext true) #10
  tail call fastcc void @sdma_v4_0_enable(ptr noundef %handle, i1 noundef zeroext true) #10
  br label %if.end37.i

if.else32.i:                                      ; preds = %for.end.i
  %pg_flags.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %1126 = ptrtoint ptr %pg_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load i32, ptr %pg_flags.i.i.i, align 4
  %and.i.i350.i = and i32 %1127, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i350.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i350.i, 0
  br i1 %tobool.not.i.i.i, label %if.else32.i.if.end37.i_crit_edge, label %if.end.i.i.i

if.else32.i.if.end37.i_crit_edge:                 ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.end.i.i.i:                                     ; preds = %if.else32.i
  %arrayidx.i.i351.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %1128 = ptrtoint ptr %arrayidx.i.i351.i to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load i32, ptr %arrayidx.i.i351.i, align 4
  %.off.i.i.i = add i32 %1129, -262400
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %sw.bb.i.i353.i, label %if.end.i.i.i.if.end37.i_crit_edge

if.end.i.i.i.if.end37.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

sw.bb.i.i353.i:                                   ; preds = %if.end.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  %1130 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %arrayidx.i.i.i.i, align 8
  %1132 = ptrtoint ptr %1131 to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load i32, ptr %1131, align 4
  %add.i.i.i352.i = add i32 %1133, 26
  %call.i.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i.i.i352.i, i32 noundef 0) #10
  %or.i.i.i.i = or i32 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i.i, i32 %call.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %or.i.i.i.i, %call.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %sw.bb.i.i353.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

sw.bb.i.i353.i.if.end.i.i.i.i_crit_edge:          ; preds = %sw.bb.i.i353.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb.i.i353.i
  call void @__sanitizer_cov_trace_pc() #12
  %1134 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %arrayidx.i.i.i.i, align 8
  %1136 = ptrtoint ptr %1135 to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load i32, ptr %1135, align 4
  %add7.i.i.i.i = add i32 %1137, 26
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add7.i.i.i.i, i32 noundef %or.i.i.i.i, i32 noundef 0) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %sw.bb.i.i353.i.if.end.i.i.i.i_crit_edge
  %1138 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %arrayidx.i.i.i.i, align 8
  %1140 = ptrtoint ptr %1139 to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load i32, ptr %1139, align 4
  %add12.i.i.i.i = add i32 %1141, 28
  %call13.i.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add12.i.i.i.i, i32 noundef 0) #10
  %or14.i.i.i.i = or i32 %call13.i.i.i.i, 268435456
  call void @__sanitizer_cov_trace_cmp4(i32 %or14.i.i.i.i, i32 %call13.i.i.i.i)
  %cmp15.not.i.i.i.i = icmp eq i32 %or14.i.i.i.i, %call13.i.i.i.i
  br i1 %cmp15.not.i.i.i.i, label %if.end.i.i.i.i.if.end22.i.i.i.i_crit_edge, label %if.then16.i.i.i.i

if.end.i.i.i.i.if.end22.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i.i.i

if.then16.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1142 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %arrayidx.i.i.i.i, align 8
  %1144 = ptrtoint ptr %1143 to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load i32, ptr %1143, align 4
  %add21.i.i.i.i = add i32 %1145, 28
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add21.i.i.i.i, i32 noundef %or14.i.i.i.i, i32 noundef 0) #10
  br label %if.end22.i.i.i.i

if.end22.i.i.i.i:                                 ; preds = %if.then16.i.i.i.i, %if.end.i.i.i.i.if.end22.i.i.i.i_crit_edge
  %1146 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %arrayidx.i.i.i.i, align 8
  %1148 = ptrtoint ptr %1147 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load i32, ptr %1147, align 4
  %add27.i.i.i.i = add i32 %1149, 26
  %call28.i.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27.i.i.i.i, i32 noundef 0) #10
  %and.i.i.i.i = and i32 %call28.i.i.i.i, 67108615
  %or31.i.i.i.i = or i32 %and.i.i.i.i, 1073741904
  call void @__sanitizer_cov_trace_cmp4(i32 %or31.i.i.i.i, i32 %call28.i.i.i.i)
  %cmp32.not.i.i.i.i = icmp eq i32 %or31.i.i.i.i, %call28.i.i.i.i
  br i1 %cmp32.not.i.i.i.i, label %if.end22.i.i.i.i.sdma_v4_1_init_power_gating.exit.i.i.i_crit_edge, label %if.then33.i.i.i.i

if.end22.i.i.i.i.sdma_v4_1_init_power_gating.exit.i.i.i_crit_edge: ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_1_init_power_gating.exit.i.i.i

if.then33.i.i.i.i:                                ; preds = %if.end22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1150 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %arrayidx.i.i.i.i, align 8
  %1152 = ptrtoint ptr %1151 to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load i32, ptr %1151, align 4
  %add38.i.i.i.i = add i32 %1153, 26
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add38.i.i.i.i, i32 noundef %or31.i.i.i.i, i32 noundef 0) #10
  br label %sdma_v4_1_init_power_gating.exit.i.i.i

sdma_v4_1_init_power_gating.exit.i.i.i:           ; preds = %if.then33.i.i.i.i, %if.end22.i.i.i.i.sdma_v4_1_init_power_gating.exit.i.i.i_crit_edge
  %1154 = ptrtoint ptr %pg_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load i32, ptr %pg_flags.i.i.i, align 4
  %and.i5.i.i.i = and i32 %1155, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %and.i5.i.i.i, 0
  %1156 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1156)
  %1157 = load ptr, ptr %arrayidx.i.i.i.i, align 8
  %1158 = ptrtoint ptr %1157 to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load i32, ptr %1157, align 4
  %add14.i.i.i.i = add i32 %1159, 28
  %call15.i.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add14.i.i.i.i, i32 noundef 0) #10
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i11.i.i.i

if.then.i11.i.i.i:                                ; preds = %sdma_v4_1_init_power_gating.exit.i.i.i
  %or.i9.i.i.i = or i32 %call15.i.i.i.i, 268435456
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i9.i.i.i, i32 %call15.i.i.i.i)
  %cmp.not.i10.i.i.i = icmp eq i32 %or.i9.i.i.i, %call15.i.i.i.i
  br i1 %cmp.not.i10.i.i.i, label %if.then.i11.i.i.i.if.end37.i_crit_edge, label %if.then.i11.i.i.i.if.end25.sink.split.i.i.i.i_crit_edge

if.then.i11.i.i.i.if.end25.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.sink.split.i.i.i.i

if.then.i11.i.i.i.if.end37.i_crit_edge:           ; preds = %if.then.i11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.else.i.i.i.i:                                  ; preds = %sdma_v4_1_init_power_gating.exit.i.i.i
  %and16.i.i.i.i = and i32 %call15.i.i.i.i, -268435457
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i.i.i.i, i32 %call15.i.i.i.i)
  %cmp17.not.i.i.i.i = icmp eq i32 %and16.i.i.i.i, %call15.i.i.i.i
  br i1 %cmp17.not.i.i.i.i, label %if.else.i.i.i.i.if.end37.i_crit_edge, label %if.else.i.i.i.i.if.end25.sink.split.i.i.i.i_crit_edge

if.else.i.i.i.i.if.end25.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.sink.split.i.i.i.i

if.else.i.i.i.i.if.end37.i_crit_edge:             ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.end25.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end25.sink.split.i.i.i.i_crit_edge, %if.then.i11.i.i.i.if.end25.sink.split.i.i.i.i_crit_edge
  %and16.sink.i.i.i.i = phi i32 [ %or.i9.i.i.i, %if.then.i11.i.i.i.if.end25.sink.split.i.i.i.i_crit_edge ], [ %and16.i.i.i.i, %if.else.i.i.i.i.if.end25.sink.split.i.i.i.i_crit_edge ]
  %1160 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %arrayidx.i.i.i.i, align 8
  %1162 = ptrtoint ptr %1161 to i32
  call void @__asan_load4_noabort(i32 %1162)
  %1163 = load i32, ptr %1161, align 4
  %add23.i.i.i.i = add i32 %1163, 28
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add23.i.i.i.i, i32 noundef %and16.sink.i.i.i.i, i32 noundef 0) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end25.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end37.i_crit_edge, %if.then.i11.i.i.i.if.end37.i_crit_edge, %if.end.i.i.i.if.end37.i_crit_edge, %if.else32.i.if.end37.i_crit_edge, %if.then31.i
  %1164 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1165)
  %cmp41362.i = icmp sgt i32 %1165, 0
  br i1 %cmp41362.i, label %for.body42.lr.ph.i, label %if.end37.i.sdma_v4_0_start.exit_crit_edge

if.end37.i.sdma_v4_0_start.exit_crit_edge:        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_start.exit

for.body42.lr.ph.i:                               ; preds = %if.end37.i
  %has_page_queue50.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 10
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.inc70.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %i.1363.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc71.i, %for.inc70.i.for.body42.i_crit_edge ]
  %ring44.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.1363.i, i32 3
  %call45.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring44.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %for.body42.i.sdma_v4_0_start.exit_crit_edge

for.body42.i.sdma_v4_0_start.exit_crit_edge:      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_start.exit

if.end48.i:                                       ; preds = %for.body42.i
  %1166 = ptrtoint ptr %has_page_queue50.i to i32
  call void @__asan_load1_noabort(i32 %1166)
  %1167 = load i8, ptr %has_page_queue50.i, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1167)
  %tobool51.not.i = icmp eq i8 %1167, 0
  br i1 %tobool51.not.i, label %if.end48.i.if.end64.i_crit_edge, label %if.then52.i

if.end48.i.if.end64.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then52.i:                                      ; preds = %if.end48.i
  %page56.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.1363.i, i32 4
  %call57.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %page56.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.then52.i.sdma_v4_0_start.exit_crit_edge

if.then52.i.sdma_v4_0_start.exit_crit_edge:       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_start.exit

if.end60.i:                                       ; preds = %if.then52.i
  %1168 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp61.i = icmp eq ptr %1169, %page56.i
  br i1 %cmp61.i, label %if.then62.i, label %if.end60.i.if.end64.i_crit_edge

if.end60.i.if.end64.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i

if.then62.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %handle, i1 noundef zeroext true) #10
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then62.i, %if.end60.i.if.end64.i_crit_edge, %if.end48.i.if.end64.i_crit_edge
  %1170 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp67.i = icmp eq ptr %1171, %ring44.i
  br i1 %cmp67.i, label %if.then68.i, label %if.end64.i.for.inc70.i_crit_edge

if.end64.i.for.inc70.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %handle, i1 noundef zeroext true) #10
  br label %for.inc70.i

for.inc70.i:                                      ; preds = %if.then68.i, %if.end64.i.for.inc70.i_crit_edge
  %inc71.i = add nuw nsw i32 %i.1363.i, 1
  %1172 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load i32, ptr %num_instances.i, align 4
  %cmp41.i = icmp slt i32 %inc71.i, %1173
  br i1 %cmp41.i, label %for.inc70.i.for.body42.i_crit_edge, label %for.inc70.i.sdma_v4_0_start.exit_crit_edge

for.inc70.i.sdma_v4_0_start.exit_crit_edge:       ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_start.exit

for.inc70.i.for.body42.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42.i

sdma_v4_0_start.exit:                             ; preds = %for.inc70.i.sdma_v4_0_start.exit_crit_edge, %if.then52.i.sdma_v4_0_start.exit_crit_edge, %for.body42.i.sdma_v4_0_start.exit_crit_edge, %if.end37.i.sdma_v4_0_start.exit_crit_edge, %for.body.i.i.sdma_v4_0_start.exit_crit_edge
  %retval.3.i = phi i32 [ 0, %if.end37.i.sdma_v4_0_start.exit_crit_edge ], [ %call57.i, %if.then52.i.sdma_v4_0_start.exit_crit_edge ], [ 0, %for.inc70.i.sdma_v4_0_start.exit_crit_edge ], [ %call45.i, %for.body42.i.sdma_v4_0_start.exit_crit_edge ], [ -22, %for.body.i.i.sdma_v4_0_start.exit_crit_edge ]
  ret i32 %retval.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp sgt i32 %3, 0
  br i1 %cmp17, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ecc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %ecc_irq, i32 noundef %i.018) #10
  %inc = add nuw nsw i32 %i.018, 1
  %4 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call fastcc void @sdma_v4_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false)
  tail call fastcc void @sdma_v4_0_enable(ptr noundef %handle, i1 noundef zeroext false)
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and2 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %for.end.cleanup_crit_edge, label %if.then4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %handle, i32 noundef 7, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_s0ix = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 140
  %0 = ptrtoint ptr %in_s0ix to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_s0ix, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %4 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp17.i = icmp sgt i32 %5, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ecc_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_irq_put(ptr noundef %handle, ptr noundef %ecc_irq.i, i32 noundef %i.018.i) #10
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %6 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call fastcc void @sdma_v4_0_ctx_switch_enable(ptr noundef %handle, i1 noundef zeroext false) #10
  tail call fastcc void @sdma_v4_0_enable(ptr noundef %handle, i1 noundef zeroext false) #10
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 9
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and2.i = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %for.end.i.cleanup_crit_edge, label %if.then4.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %handle, i32 noundef 7, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %for.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_s0ix = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 140
  %0 = ptrtoint ptr %in_s0ix to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_s0ix, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @sdma_v4_0_hw_init(ptr noundef %handle)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sdma_v4_0_is_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.cleanup2_crit_edge, label %for.body.lr.ph

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup2

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 10
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 9
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 8
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 7
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 6
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 5
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  br label %for.body

for.cond:                                         ; preds = %sdma_v4_0_get_reg_offset.exit
  %inc = add nuw i32 %i.09, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup2.loopexit_crit_edge

for.cond.cleanup2.loopexit_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup2.loopexit

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %4 = zext i32 %i.09 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %i.09, label %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

for.body.sdma_v4_0_get_reg_offset.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %10, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %12, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %14, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %16, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %18, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %20, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %8, %sw.bb3.i ], [ %6, %sw.bb.i ]
  %21 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %22, 37
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i, i32 noundef 0) #10
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sdma_v4_0_get_reg_offset.exit.cleanup2.loopexit_crit_edge, label %for.cond

sdma_v4_0_get_reg_offset.exit.cleanup2.loopexit_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup2.loopexit

cleanup2.loopexit:                                ; preds = %sdma_v4_0_get_reg_offset.exit.cleanup2.loopexit_crit_edge, %for.cond.cleanup2.loopexit_crit_edge
  %phi.bo = xor i1 %tobool.not, true
  br label %cleanup2

cleanup2:                                         ; preds = %cleanup2.loopexit, %entry.cleanup2_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup2_crit_edge ], [ %phi.bo, %cleanup2.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_wait_for_idle(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.cleanup_crit_edge, label %for.cond1.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 10
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 9
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 8
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 7
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 6
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 5
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %if.end11.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.034 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc13, %if.end11.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp328.not = icmp eq i32 %3, 0
  br i1 %cmp328.not, label %for.cond1.preheader.for.end_crit_edge, label %for.cond1.preheader.for.body4_crit_edge

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %j.029 = phi i32 [ %inc, %for.inc.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  %4 = zext i32 %j.029 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %j.029, label %for.body4.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

for.body4.sdma_v4_0_get_reg_offset.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %10, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %12, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %14, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %16, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %18, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %20, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %8, %sw.bb3.i ], [ %6, %sw.bb.i ]
  %21 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %22, 37
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %for.body4.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body4.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i, i32 noundef 0) #10
  %and = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sdma_v4_0_get_reg_offset.exit.for.end_crit_edge, label %for.inc

sdma_v4_0_get_reg_offset.exit.for.end_crit_edge:  ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %sdma_v4_0_get_reg_offset.exit
  %inc = add nuw i32 %j.029, 1
  %23 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_instances, align 4
  %cmp3 = icmp ult i32 %inc, %24
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sdma_v4_0_get_reg_offset.exit.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond1.preheader.for.end_crit_edge ], [ %j.029, %sdma_v4_0_get_reg_offset.exit.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %25 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %26)
  %cmp9 = icmp eq i32 %j.0.lcssa, %26
  br i1 %cmp9, label %for.end.cleanup_crit_edge, label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #10
  %inc13 = add nuw i32 %i.034, 1
  %28 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc13, %29
  br i1 %cmp, label %if.end11.for.cond1.preheader_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.for.cond1.preheader_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end11.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdma_v4_0_soft_reset(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %2 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %for.cond.preheader.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %4 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp127.i = icmp sgt i32 %5, 0
  br i1 %cmp127.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.land.lhs.true.i8_crit_edge

for.cond.preheader.i.land.lhs.true.i8_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i8

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %arrayidx41.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 10
  %arrayidx35.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 9
  %arrayidx29.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 8
  %arrayidx23.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 7
  %arrayidx17.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 6
  %arrayidx11.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 5
  %arrayidx5.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 4
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0128.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = zext i32 %i.0128.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %i.0128.i, label %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb9.i.i
    i32 3, label %sw.bb15.i.i
    i32 4, label %sw.bb21.i.i
    i32 5, label %sw.bb27.i.i
    i32 6, label %sw.bb33.i.i
    i32 7, label %sw.bb39.i.i
  ]

for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 8
  br label %return.sink.split.i.i

sw.bb3.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i.i

sw.bb9.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i.i = getelementptr i32, ptr %12, i32 1
  br label %return.sink.split.i.i

sw.bb15.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i.i = getelementptr i32, ptr %14, i32 1
  br label %return.sink.split.i.i

sw.bb21.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i.i = getelementptr i32, ptr %16, i32 1
  br label %return.sink.split.i.i

sw.bb27.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i.i = getelementptr i32, ptr %18, i32 1
  br label %return.sink.split.i.i

sw.bb33.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i.i = getelementptr i32, ptr %20, i32 1
  br label %return.sink.split.i.i

sw.bb39.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i.i = getelementptr i32, ptr %22, i32 1
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %sw.bb39.i.i, %sw.bb33.i.i, %sw.bb27.i.i, %sw.bb21.i.i, %sw.bb15.i.i, %sw.bb9.i.i, %sw.bb3.i.i, %sw.bb.i.i
  %arrayidx43.sink.i.i = phi ptr [ %arrayidx43.i.i, %sw.bb39.i.i ], [ %arrayidx37.i.i, %sw.bb33.i.i ], [ %arrayidx31.i.i, %sw.bb27.i.i ], [ %arrayidx25.i.i, %sw.bb21.i.i ], [ %arrayidx19.i.i, %sw.bb15.i.i ], [ %arrayidx13.i.i, %sw.bb9.i.i ], [ %10, %sw.bb3.i.i ], [ %8, %sw.bb.i.i ]
  %23 = ptrtoint ptr %arrayidx43.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx43.sink.i.i, align 4
  %add44.i.i = add i32 %24, 27
  br label %sdma_v4_0_get_reg_offset.exit.i

sdma_v4_0_get_reg_offset.exit.i:                  ; preds = %return.sink.split.i.i, %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge ], [ %add44.i.i, %return.sink.split.i.i ]
  %call2.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call2.i)
  %25 = icmp ult i32 %call2.i, 16777216
  br i1 %25, label %sdma_v4_0_get_reg_offset.exit.i.for.inc.i_crit_edge, label %if.then5.i

sdma_v4_0_get_reg_offset.exit.i.for.inc.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then5.i:                                       ; preds = %sdma_v4_0_get_reg_offset.exit.i
  %and3.i = and i32 %call2.i, 16777215
  %26 = zext i32 %i.0128.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %i.0128.i, label %if.then5.i.sdma_v4_0_get_reg_offset.exit71.i_crit_edge [
    i32 0, label %sw.bb.i46.i
    i32 1, label %sw.bb3.i48.i
    i32 2, label %sw.bb9.i51.i
    i32 3, label %sw.bb15.i54.i
    i32 4, label %sw.bb21.i57.i
    i32 5, label %sw.bb27.i60.i
    i32 6, label %sw.bb33.i63.i
    i32 7, label %sw.bb39.i66.i
  ]

if.then5.i.sdma_v4_0_get_reg_offset.exit71.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit71.i

sw.bb.i46.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 8
  br label %return.sink.split.i69.i

sw.bb3.i48.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i69.i

sw.bb9.i51.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i50.i = getelementptr i32, ptr %32, i32 1
  br label %return.sink.split.i69.i

sw.bb15.i54.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i53.i = getelementptr i32, ptr %34, i32 1
  br label %return.sink.split.i69.i

sw.bb21.i57.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i56.i = getelementptr i32, ptr %36, i32 1
  br label %return.sink.split.i69.i

sw.bb27.i60.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i59.i = getelementptr i32, ptr %38, i32 1
  br label %return.sink.split.i69.i

sw.bb33.i63.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i62.i = getelementptr i32, ptr %40, i32 1
  br label %return.sink.split.i69.i

sw.bb39.i66.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i65.i = getelementptr i32, ptr %42, i32 1
  br label %return.sink.split.i69.i

return.sink.split.i69.i:                          ; preds = %sw.bb39.i66.i, %sw.bb33.i63.i, %sw.bb27.i60.i, %sw.bb21.i57.i, %sw.bb15.i54.i, %sw.bb9.i51.i, %sw.bb3.i48.i, %sw.bb.i46.i
  %arrayidx43.sink.i67.i = phi ptr [ %arrayidx43.i65.i, %sw.bb39.i66.i ], [ %arrayidx37.i62.i, %sw.bb33.i63.i ], [ %arrayidx31.i59.i, %sw.bb27.i60.i ], [ %arrayidx25.i56.i, %sw.bb21.i57.i ], [ %arrayidx19.i53.i, %sw.bb15.i54.i ], [ %arrayidx13.i50.i, %sw.bb9.i51.i ], [ %30, %sw.bb3.i48.i ], [ %28, %sw.bb.i46.i ]
  %43 = ptrtoint ptr %arrayidx43.sink.i67.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx43.sink.i67.i, align 4
  %add44.i68.i = add i32 %44, 27
  br label %sdma_v4_0_get_reg_offset.exit71.i

sdma_v4_0_get_reg_offset.exit71.i:                ; preds = %return.sink.split.i69.i, %if.then5.i.sdma_v4_0_get_reg_offset.exit71.i_crit_edge
  %retval.0.i70.i = phi i32 [ 0, %if.then5.i.sdma_v4_0_get_reg_offset.exit71.i_crit_edge ], [ %add44.i68.i, %return.sink.split.i69.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i70.i, i32 noundef %and3.i, i32 noundef 0) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %sdma_v4_0_get_reg_offset.exit71.i, %sdma_v4_0_get_reg_offset.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0128.i, 1
  %45 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %46
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge

for.inc.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_update_medium_grain_clock_gating.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %num_instances9.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %47 = ptrtoint ptr %num_instances9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_instances9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp10130.i = icmp sgt i32 %48, 0
  br i1 %cmp10130.i, label %for.body11.lr.ph.i, label %if.else.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge

if.else.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_update_medium_grain_clock_gating.exit

for.body11.lr.ph.i:                               ; preds = %if.else.i
  %arrayidx41.i91.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 10
  %arrayidx35.i88.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 9
  %arrayidx29.i85.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 8
  %arrayidx23.i82.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 7
  %arrayidx17.i79.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 6
  %arrayidx11.i76.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 5
  %arrayidx5.i74.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 4
  %arrayidx.i72.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc18.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %i.1131.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %inc19.i, %for.inc18.i.for.body11.i_crit_edge ]
  %49 = zext i32 %i.1131.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %i.1131.i, label %for.body11.i.sdma_v4_0_get_reg_offset.exit98.i_crit_edge [
    i32 0, label %sw.bb.i73.i
    i32 1, label %sw.bb3.i75.i
    i32 2, label %sw.bb9.i78.i
    i32 3, label %sw.bb15.i81.i
    i32 4, label %sw.bb21.i84.i
    i32 5, label %sw.bb27.i87.i
    i32 6, label %sw.bb33.i90.i
    i32 7, label %sw.bb39.i93.i
  ]

for.body11.i.sdma_v4_0_get_reg_offset.exit98.i_crit_edge: ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit98.i

sw.bb.i73.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i72.i, align 8
  br label %return.sink.split.i96.i

sw.bb3.i75.i:                                     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %arrayidx5.i74.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx5.i74.i, align 8
  br label %return.sink.split.i96.i

sw.bb9.i78.i:                                     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %arrayidx11.i76.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx11.i76.i, align 8
  %arrayidx13.i77.i = getelementptr i32, ptr %55, i32 1
  br label %return.sink.split.i96.i

sw.bb15.i81.i:                                    ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %arrayidx17.i79.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx17.i79.i, align 8
  %arrayidx19.i80.i = getelementptr i32, ptr %57, i32 1
  br label %return.sink.split.i96.i

sw.bb21.i84.i:                                    ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %arrayidx23.i82.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx23.i82.i, align 8
  %arrayidx25.i83.i = getelementptr i32, ptr %59, i32 1
  br label %return.sink.split.i96.i

sw.bb27.i87.i:                                    ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %arrayidx29.i85.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx29.i85.i, align 8
  %arrayidx31.i86.i = getelementptr i32, ptr %61, i32 1
  br label %return.sink.split.i96.i

sw.bb33.i90.i:                                    ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %arrayidx35.i88.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx35.i88.i, align 8
  %arrayidx37.i89.i = getelementptr i32, ptr %63, i32 1
  br label %return.sink.split.i96.i

sw.bb39.i93.i:                                    ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %arrayidx41.i91.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx41.i91.i, align 8
  %arrayidx43.i92.i = getelementptr i32, ptr %65, i32 1
  br label %return.sink.split.i96.i

return.sink.split.i96.i:                          ; preds = %sw.bb39.i93.i, %sw.bb33.i90.i, %sw.bb27.i87.i, %sw.bb21.i84.i, %sw.bb15.i81.i, %sw.bb9.i78.i, %sw.bb3.i75.i, %sw.bb.i73.i
  %arrayidx43.sink.i94.i = phi ptr [ %arrayidx43.i92.i, %sw.bb39.i93.i ], [ %arrayidx37.i89.i, %sw.bb33.i90.i ], [ %arrayidx31.i86.i, %sw.bb27.i87.i ], [ %arrayidx25.i83.i, %sw.bb21.i84.i ], [ %arrayidx19.i80.i, %sw.bb15.i81.i ], [ %arrayidx13.i77.i, %sw.bb9.i78.i ], [ %53, %sw.bb3.i75.i ], [ %51, %sw.bb.i73.i ]
  %66 = ptrtoint ptr %arrayidx43.sink.i94.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx43.sink.i94.i, align 4
  %add44.i95.i = add i32 %67, 27
  br label %sdma_v4_0_get_reg_offset.exit98.i

sdma_v4_0_get_reg_offset.exit98.i:                ; preds = %return.sink.split.i96.i, %for.body11.i.sdma_v4_0_get_reg_offset.exit98.i_crit_edge
  %retval.0.i97.i = phi i32 [ 0, %for.body11.i.sdma_v4_0_get_reg_offset.exit98.i_crit_edge ], [ %add44.i95.i, %return.sink.split.i96.i ]
  %call13.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %retval.0.i97.i, i32 noundef 0) #10
  %or.i = or i32 %call13.i, -16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %or.i)
  %cmp14.not.i = icmp eq i32 %call13.i, %or.i
  br i1 %cmp14.not.i, label %sdma_v4_0_get_reg_offset.exit98.i.for.inc18.i_crit_edge, label %if.then15.i

sdma_v4_0_get_reg_offset.exit98.i.for.inc18.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.i

if.then15.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit98.i
  %68 = zext i32 %i.1131.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %i.1131.i, label %if.then15.i.sdma_v4_0_get_reg_offset.exit125.i_crit_edge [
    i32 0, label %sw.bb.i100.i
    i32 1, label %sw.bb3.i102.i
    i32 2, label %sw.bb9.i105.i
    i32 3, label %sw.bb15.i108.i
    i32 4, label %sw.bb21.i111.i
    i32 5, label %sw.bb27.i114.i
    i32 6, label %sw.bb33.i117.i
    i32 7, label %sw.bb39.i120.i
  ]

if.then15.i.sdma_v4_0_get_reg_offset.exit125.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit125.i

sw.bb.i100.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i72.i, align 8
  br label %return.sink.split.i123.i

sw.bb3.i102.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %arrayidx5.i74.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx5.i74.i, align 8
  br label %return.sink.split.i123.i

sw.bb9.i105.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %arrayidx11.i76.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx11.i76.i, align 8
  %arrayidx13.i104.i = getelementptr i32, ptr %74, i32 1
  br label %return.sink.split.i123.i

sw.bb15.i108.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %arrayidx17.i79.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx17.i79.i, align 8
  %arrayidx19.i107.i = getelementptr i32, ptr %76, i32 1
  br label %return.sink.split.i123.i

sw.bb21.i111.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %arrayidx23.i82.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx23.i82.i, align 8
  %arrayidx25.i110.i = getelementptr i32, ptr %78, i32 1
  br label %return.sink.split.i123.i

sw.bb27.i114.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %arrayidx29.i85.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx29.i85.i, align 8
  %arrayidx31.i113.i = getelementptr i32, ptr %80, i32 1
  br label %return.sink.split.i123.i

sw.bb33.i117.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %arrayidx35.i88.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx35.i88.i, align 8
  %arrayidx37.i116.i = getelementptr i32, ptr %82, i32 1
  br label %return.sink.split.i123.i

sw.bb39.i120.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %arrayidx41.i91.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx41.i91.i, align 8
  %arrayidx43.i119.i = getelementptr i32, ptr %84, i32 1
  br label %return.sink.split.i123.i

return.sink.split.i123.i:                         ; preds = %sw.bb39.i120.i, %sw.bb33.i117.i, %sw.bb27.i114.i, %sw.bb21.i111.i, %sw.bb15.i108.i, %sw.bb9.i105.i, %sw.bb3.i102.i, %sw.bb.i100.i
  %arrayidx43.sink.i121.i = phi ptr [ %arrayidx43.i119.i, %sw.bb39.i120.i ], [ %arrayidx37.i116.i, %sw.bb33.i117.i ], [ %arrayidx31.i113.i, %sw.bb27.i114.i ], [ %arrayidx25.i110.i, %sw.bb21.i111.i ], [ %arrayidx19.i107.i, %sw.bb15.i108.i ], [ %arrayidx13.i104.i, %sw.bb9.i105.i ], [ %72, %sw.bb3.i102.i ], [ %70, %sw.bb.i100.i ]
  %85 = ptrtoint ptr %arrayidx43.sink.i121.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx43.sink.i121.i, align 4
  %add44.i122.i = add i32 %86, 27
  br label %sdma_v4_0_get_reg_offset.exit125.i

sdma_v4_0_get_reg_offset.exit125.i:               ; preds = %return.sink.split.i123.i, %if.then15.i.sdma_v4_0_get_reg_offset.exit125.i_crit_edge
  %retval.0.i124.i = phi i32 [ 0, %if.then15.i.sdma_v4_0_get_reg_offset.exit125.i_crit_edge ], [ %add44.i122.i, %return.sink.split.i123.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %retval.0.i124.i, i32 noundef %or.i, i32 noundef 0) #10
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit125.i, %sdma_v4_0_get_reg_offset.exit98.i.for.inc18.i_crit_edge
  %inc19.i = add nuw nsw i32 %i.1131.i, 1
  %87 = ptrtoint ptr %num_instances9.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_instances9.i, align 4
  %cmp10.i = icmp slt i32 %inc19.i, %88
  br i1 %cmp10.i, label %for.inc18.i.for.body11.i_crit_edge, label %for.inc18.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge

for.inc18.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_update_medium_grain_clock_gating.exit

for.inc18.i.for.body11.i_crit_edge:               ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i

sdma_v4_0_update_medium_grain_clock_gating.exit:  ; preds = %for.inc18.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge, %if.else.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge, %for.inc.i.sdma_v4_0_update_medium_grain_clock_gating.exit_crit_edge
  br i1 %cmp, label %sdma_v4_0_update_medium_grain_clock_gating.exit.land.lhs.true.i8_crit_edge, label %sdma_v4_0_update_medium_grain_clock_gating.exit.if.else.i20_crit_edge

sdma_v4_0_update_medium_grain_clock_gating.exit.if.else.i20_crit_edge: ; preds = %sdma_v4_0_update_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i20

sdma_v4_0_update_medium_grain_clock_gating.exit.land.lhs.true.i8_crit_edge: ; preds = %sdma_v4_0_update_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i8

land.lhs.true.i8:                                 ; preds = %sdma_v4_0_update_medium_grain_clock_gating.exit.land.lhs.true.i8_crit_edge, %for.cond.preheader.i.land.lhs.true.i8_crit_edge
  %cg_flags.i5 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %89 = ptrtoint ptr %cg_flags.i5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cg_flags.i5, align 8
  %and.i6 = and i32 %90, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool1.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool1.not.i7, label %land.lhs.true.i8.if.else.i20_crit_edge, label %for.cond.preheader.i10

land.lhs.true.i8.if.else.i20_crit_edge:           ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i20

for.cond.preheader.i10:                           ; preds = %land.lhs.true.i8
  %num_instances.i9 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %91 = ptrtoint ptr %num_instances.i9 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_instances.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp48.i = icmp sgt i32 %92, 0
  br i1 %cmp48.i, label %for.body.lr.ph.i12, label %for.cond.preheader.i10.cleanup_crit_edge

for.cond.preheader.i10.cleanup_crit_edge:         ; preds = %for.cond.preheader.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i12:                               ; preds = %for.cond.preheader.i10
  %arrayidx.i.i11 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.inc.i19.for.body.i16_crit_edge, %for.body.lr.ph.i12
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i12 ], [ %inc.i17, %for.inc.i19.for.body.i16_crit_edge ]
  %93 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i11, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %add44.i.i13 = add i32 %96, 26
  %call2.i14 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add44.i.i13, i32 noundef 0) #10
  %or.i15 = or i32 %call2.i14, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i14, i32 %or.i15)
  %cmp3.not.i = icmp eq i32 %call2.i14, %or.i15
  br i1 %cmp3.not.i, label %for.body.i16.for.inc.i19_crit_edge, label %if.then4.i

for.body.i16.for.inc.i19_crit_edge:               ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i19

if.then4.i:                                       ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i11, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add44.i42.i = add i32 %100, 26
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add44.i42.i, i32 noundef %or.i15, i32 noundef 0) #10
  br label %for.inc.i19

for.inc.i19:                                      ; preds = %if.then4.i, %for.body.i16.for.inc.i19_crit_edge
  %inc.i17 = add nuw nsw i32 %i.049.i, 1
  %101 = ptrtoint ptr %num_instances.i9 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_instances.i9, align 4
  %cmp.i18 = icmp slt i32 %inc.i17, %102
  br i1 %cmp.i18, label %for.inc.i19.for.body.i16_crit_edge, label %for.inc.i19.cleanup_crit_edge

for.inc.i19.cleanup_crit_edge:                    ; preds = %for.inc.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i19.for.body.i16_crit_edge:               ; preds = %for.inc.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i16

if.else.i20:                                      ; preds = %land.lhs.true.i8.if.else.i20_crit_edge, %sdma_v4_0_update_medium_grain_clock_gating.exit.if.else.i20_crit_edge
  %num_instances8.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %103 = ptrtoint ptr %num_instances8.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_instances8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp950.i = icmp sgt i32 %104, 0
  br i1 %cmp950.i, label %for.body10.lr.ph.i, label %if.else.i20.cleanup_crit_edge

if.else.i20.cleanup_crit_edge:                    ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body10.lr.ph.i:                               ; preds = %if.else.i20
  %arrayidx.i43.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc18.i24.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.151.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc19.i23, %for.inc18.i24.for.body10.i_crit_edge ]
  %105 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i43.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %add44.i44.i = add i32 %108, 26
  %call12.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add44.i44.i, i32 noundef 0) #10
  %and13.i = and i32 %call12.i, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %call12.i, i32 %and13.i)
  %cmp14.not.i21 = icmp eq i32 %call12.i, %and13.i
  br i1 %cmp14.not.i21, label %for.body10.i.for.inc18.i24_crit_edge, label %if.then15.i22

for.body10.i.for.inc18.i24_crit_edge:             ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.i24

if.then15.i22:                                    ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i43.i, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add44.i46.i = add i32 %112, 26
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add44.i46.i, i32 noundef %and13.i, i32 noundef 0) #10
  br label %for.inc18.i24

for.inc18.i24:                                    ; preds = %if.then15.i22, %for.body10.i.for.inc18.i24_crit_edge
  %inc19.i23 = add nuw nsw i32 %i.151.i, 1
  %113 = ptrtoint ptr %num_instances8.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_instances8.i, align 4
  %cmp9.i = icmp slt i32 %inc19.i23, %114
  br i1 %cmp9.i, label %for.inc18.i24.for.body10.i_crit_edge, label %for.inc18.i24.cleanup_crit_edge

for.inc18.i24.cleanup_crit_edge:                  ; preds = %for.inc18.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc18.i24.for.body10.i_crit_edge:             ; preds = %for.inc18.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i

cleanup:                                          ; preds = %for.inc18.i24.cleanup_crit_edge, %if.else.i20.cleanup_crit_edge, %for.inc.i19.cleanup_crit_edge, %for.cond.preheader.i10.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_set_powergating_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %1, -262400
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %land.lhs.true.i, label %sw.bb.if.else.i_crit_edge

sw.bb.if.else.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %2 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags.i, align 4
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.i = add i32 %7, 28
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #10
  %or.i = or i32 %call.i, 268435456
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %call.i)
  %cmp.not.i = icmp eq i32 %or.i, %call.i
  br i1 %cmp.not.i, label %if.then.i.sw.epilog_crit_edge, label %if.then.i.if.end25.sink.split.i_crit_edge

if.then.i.if.end25.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.sink.split.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.if.else.i_crit_edge
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add14.i = add i32 %11, 28
  %call15.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add14.i, i32 noundef 0) #10
  %and16.i = and i32 %call15.i, -268435457
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %call15.i)
  %cmp17.not.i = icmp eq i32 %and16.i, %call15.i
  br i1 %cmp17.not.i, label %if.else.i.sw.epilog_crit_edge, label %if.else.i.if.end25.sink.split.i_crit_edge

if.else.i.if.end25.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.sink.split.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end25.sink.split.i:                            ; preds = %if.else.i.if.end25.sink.split.i_crit_edge, %if.then.i.if.end25.sink.split.i_crit_edge
  %arrayidx11.sink.i = phi ptr [ %arrayidx.i, %if.then.i.if.end25.sink.split.i_crit_edge ], [ %arrayidx11.i, %if.else.i.if.end25.sink.split.i_crit_edge ]
  %and16.sink.i = phi i32 [ %or.i, %if.then.i.if.end25.sink.split.i_crit_edge ], [ %and16.i, %if.else.i.if.end25.sink.split.i_crit_edge ]
  %12 = ptrtoint ptr %arrayidx11.sink.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11.sink.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add23.i = add i32 %15, 28
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add23.i, i32 noundef %and16.sink.i, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25.sink.split.i, %if.else.i.sw.epilog_crit_edge, %if.then.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_get_clockgating_state(ptr noundef %handle, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %add = add i32 %6, 27
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add, i32 noundef 0) #10
  %and3 = and i32 %call, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 2048
  store i32 %or, ptr %flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add11 = add i32 %12, 26
  %call12 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add11, i32 noundef 0) #10
  %and13 = and i32 %call12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end6.if.end17_crit_edge, label %if.then15

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or16 = or i32 %14, 1024
  store i32 %or16, ptr %flags, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end6.if.end17_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sdma_v4_0_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i64 noundef %7) #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %shr = lshr i64 %9, 2
  ret i64 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sdma_v4_0_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i64 noundef %9) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %10 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %me, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %11, label %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

if.else.sdma_v4_0_get_reg_offset.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 3
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 4
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 5
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %18, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 6
  %19 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %20, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 7
  %21 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %22, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 8
  %23 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %24, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 9
  %25 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %26, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 10
  %27 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %28, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %16, %sw.bb3.i ], [ %14, %sw.bb.i ]
  %29 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %30, 134
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %retval.0.i, i32 noundef 0) #10
  %conv = zext i32 %call3 to i64
  %shl = shl nuw i64 %conv, 32
  %31 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %me, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %32, label %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit48_crit_edge [
    i32 0, label %sw.bb.i23
    i32 1, label %sw.bb3.i25
    i32 2, label %sw.bb9.i28
    i32 3, label %sw.bb15.i31
    i32 4, label %sw.bb21.i34
    i32 5, label %sw.bb27.i37
    i32 6, label %sw.bb33.i40
    i32 7, label %sw.bb39.i43
  ]

sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit48_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit48

sw.bb.i23:                                        ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i22 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 3
  %34 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i22, align 8
  br label %return.sink.split.i46

sw.bb3.i25:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i24 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 4
  %36 = ptrtoint ptr %arrayidx5.i24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx5.i24, align 8
  br label %return.sink.split.i46

sw.bb9.i28:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i26 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 5
  %38 = ptrtoint ptr %arrayidx11.i26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx11.i26, align 8
  %arrayidx13.i27 = getelementptr i32, ptr %39, i32 1
  br label %return.sink.split.i46

sw.bb15.i31:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i29 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 6
  %40 = ptrtoint ptr %arrayidx17.i29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx17.i29, align 8
  %arrayidx19.i30 = getelementptr i32, ptr %41, i32 1
  br label %return.sink.split.i46

sw.bb21.i34:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i32 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 7
  %42 = ptrtoint ptr %arrayidx23.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx23.i32, align 8
  %arrayidx25.i33 = getelementptr i32, ptr %43, i32 1
  br label %return.sink.split.i46

sw.bb27.i37:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i35 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 8
  %44 = ptrtoint ptr %arrayidx29.i35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx29.i35, align 8
  %arrayidx31.i36 = getelementptr i32, ptr %45, i32 1
  br label %return.sink.split.i46

sw.bb33.i40:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i38 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 9
  %46 = ptrtoint ptr %arrayidx35.i38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx35.i38, align 8
  %arrayidx37.i39 = getelementptr i32, ptr %47, i32 1
  br label %return.sink.split.i46

sw.bb39.i43:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i41 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 10
  %48 = ptrtoint ptr %arrayidx41.i41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx41.i41, align 8
  %arrayidx43.i42 = getelementptr i32, ptr %49, i32 1
  br label %return.sink.split.i46

return.sink.split.i46:                            ; preds = %sw.bb39.i43, %sw.bb33.i40, %sw.bb27.i37, %sw.bb21.i34, %sw.bb15.i31, %sw.bb9.i28, %sw.bb3.i25, %sw.bb.i23
  %arrayidx43.sink.i44 = phi ptr [ %arrayidx43.i42, %sw.bb39.i43 ], [ %arrayidx37.i39, %sw.bb33.i40 ], [ %arrayidx31.i36, %sw.bb27.i37 ], [ %arrayidx25.i33, %sw.bb21.i34 ], [ %arrayidx19.i30, %sw.bb15.i31 ], [ %arrayidx13.i27, %sw.bb9.i28 ], [ %37, %sw.bb3.i25 ], [ %35, %sw.bb.i23 ]
  %50 = ptrtoint ptr %arrayidx43.sink.i44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx43.sink.i44, align 4
  %add44.i45 = add i32 %51, 133
  br label %sdma_v4_0_get_reg_offset.exit48

sdma_v4_0_get_reg_offset.exit48:                  ; preds = %return.sink.split.i46, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit48_crit_edge
  %retval.0.i47 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit48_crit_edge ], [ %add44.i45, %return.sink.split.i46 ]
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %retval.0.i47, i32 noundef 0) #10
  %conv7 = zext i32 %call6 to i64
  %or = or i64 %shl, %conv7
  %52 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %me, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %53, i64 noundef %or) #10
  br label %if.end

if.end:                                           ; preds = %sdma_v4_0_get_reg_offset.exit48, %do.end
  %wptr.0 = phi i64 [ %9, %do.end ], [ %or, %sdma_v4_0_get_reg_offset.exit48 ]
  %shr = lshr i64 %wptr.0, 2
  ret i64 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #10
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %shl = shl i64 %9, 2
  %conv = trunc i64 %shl to i32
  %shr = lshr i64 %shl, 32
  %conv8 = trunc i64 %shr to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %7, i32 noundef %conv, i32 noundef %conv8) #10
  %10 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr, align 8
  %shl12 = shl i64 %11, 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %shl12, ptr %arrayidx, align 8
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %13 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %doorbell_index, align 8
  %15 = load i64, ptr %wptr, align 8
  %shl18 = shl i64 %15, 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %14, i64 noundef %shl18) #10
  %16 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %doorbell_index, align 8
  %18 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wptr, align 8
  %shl21 = shl i64 %19, 2
  tail call void @amdgpu_mm_wdoorbell64(ptr noundef %1, i32 noundef %17, i64 noundef %shl21) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %20 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %me, align 8
  %wptr22 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %22 = ptrtoint ptr %wptr22 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wptr22, align 8
  %shl23 = shl i64 %23, 2
  %conv25 = trunc i64 %shl23 to i32
  %shr29 = lshr i64 %shl23, 32
  %conv31 = trunc i64 %shr29 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %21, i32 noundef %conv25, i32 noundef %21, i32 noundef %conv31) #10
  %24 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %me, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %25, label %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

if.else.sdma_v4_0_get_reg_offset.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 3
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 4
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 5
  %31 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %32, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 6
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %34, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 7
  %35 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %36, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 8
  %37 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %38, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 9
  %39 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %40, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 10
  %41 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %42, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %30, %sw.bb3.i ], [ %28, %sw.bb.i ]
  %43 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %44, 133
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %45 = ptrtoint ptr %wptr22 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wptr22, align 8
  %.tr = trunc i64 %46 to i32
  %conv36 = shl i32 %.tr, 2
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %retval.0.i, i32 noundef %conv36, i32 noundef 0) #10
  %47 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %me, align 8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %48, label %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit93_crit_edge [
    i32 0, label %sw.bb.i68
    i32 1, label %sw.bb3.i70
    i32 2, label %sw.bb9.i73
    i32 3, label %sw.bb15.i76
    i32 4, label %sw.bb21.i79
    i32 5, label %sw.bb27.i82
    i32 6, label %sw.bb33.i85
    i32 7, label %sw.bb39.i88
  ]

sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit93_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit93

sw.bb.i68:                                        ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i67 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 3
  %50 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i67, align 8
  br label %return.sink.split.i91

sw.bb3.i70:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i69 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 4
  %52 = ptrtoint ptr %arrayidx5.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx5.i69, align 8
  br label %return.sink.split.i91

sw.bb9.i73:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i71 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 5
  %54 = ptrtoint ptr %arrayidx11.i71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx11.i71, align 8
  %arrayidx13.i72 = getelementptr i32, ptr %55, i32 1
  br label %return.sink.split.i91

sw.bb15.i76:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i74 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 6
  %56 = ptrtoint ptr %arrayidx17.i74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx17.i74, align 8
  %arrayidx19.i75 = getelementptr i32, ptr %57, i32 1
  br label %return.sink.split.i91

sw.bb21.i79:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i77 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 7
  %58 = ptrtoint ptr %arrayidx23.i77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx23.i77, align 8
  %arrayidx25.i78 = getelementptr i32, ptr %59, i32 1
  br label %return.sink.split.i91

sw.bb27.i82:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i80 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 8
  %60 = ptrtoint ptr %arrayidx29.i80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx29.i80, align 8
  %arrayidx31.i81 = getelementptr i32, ptr %61, i32 1
  br label %return.sink.split.i91

sw.bb33.i85:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i83 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 9
  %62 = ptrtoint ptr %arrayidx35.i83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx35.i83, align 8
  %arrayidx37.i84 = getelementptr i32, ptr %63, i32 1
  br label %return.sink.split.i91

sw.bb39.i88:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i86 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 10
  %64 = ptrtoint ptr %arrayidx41.i86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx41.i86, align 8
  %arrayidx43.i87 = getelementptr i32, ptr %65, i32 1
  br label %return.sink.split.i91

return.sink.split.i91:                            ; preds = %sw.bb39.i88, %sw.bb33.i85, %sw.bb27.i82, %sw.bb21.i79, %sw.bb15.i76, %sw.bb9.i73, %sw.bb3.i70, %sw.bb.i68
  %arrayidx43.sink.i89 = phi ptr [ %arrayidx43.i87, %sw.bb39.i88 ], [ %arrayidx37.i84, %sw.bb33.i85 ], [ %arrayidx31.i81, %sw.bb27.i82 ], [ %arrayidx25.i78, %sw.bb21.i79 ], [ %arrayidx19.i75, %sw.bb15.i76 ], [ %arrayidx13.i72, %sw.bb9.i73 ], [ %53, %sw.bb3.i70 ], [ %51, %sw.bb.i68 ]
  %66 = ptrtoint ptr %arrayidx43.sink.i89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx43.sink.i89, align 4
  %add44.i90 = add i32 %67, 134
  br label %sdma_v4_0_get_reg_offset.exit93

sdma_v4_0_get_reg_offset.exit93:                  ; preds = %return.sink.split.i91, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit93_crit_edge
  %retval.0.i92 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit93_crit_edge ], [ %add44.i90, %return.sink.split.i91 ]
  %68 = ptrtoint ptr %wptr22 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %wptr22, align 8
  %70 = lshr i64 %69, 30
  %conv43 = trunc i64 %70 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %retval.0.i92, i32 noundef %conv43, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %sdma_v4_0_get_reg_offset.exit93, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @sdma_v4_0_ring_insert_nop(ptr noundef %ring, i32 noundef %and2)
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit35

if.then.i25:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit48

if.then.i38:                                      ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit61

if.then.i51:                                      ; preds = %amdgpu_ring_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit74

if.then.i64:                                      ; preds = %amdgpu_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit87

if.then.i77:                                      ; preds = %amdgpu_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
define internal void @sdma_v4_0_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  %and1 = and i64 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %do.end10, label %do.body5, !prof !253

do.body5:                                         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 960, 0\0A.popsection", ""() #10, !srcloc !254
  unreachable

do.end10:                                         ; preds = %amdgpu_ring_write.exit
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i63 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i63, label %if.then.i64, label %do.end10.amdgpu_ring_write.exit74_crit_edge

do.end10.amdgpu_ring_write.exit74_crit_edge:      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit74

if.then.i64:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit74

amdgpu_ring_write.exit74:                         ; preds = %if.then.i64, %do.end10.amdgpu_ring_write.exit74_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i67 = add i64 %18, 1
  store i64 %inc.i67, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i69 = and i32 %20, %21
  %arrayidx.i70 = getelementptr i32, ptr %16, i32 %idxprom.i69
  %22 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i70, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i72 = and i64 %25, %24
  store i64 %and3.i72, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i73 = add i32 %27, -1
  store i32 %dec.i73, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv13 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i73)
  %cmp.i76 = icmp slt i32 %dec.i73, 1
  br i1 %cmp.i76, label %if.then.i77, label %amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge

amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge: ; preds = %amdgpu_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit87

if.then.i77:                                      ; preds = %amdgpu_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit87

amdgpu_ring_write.exit87:                         ; preds = %if.then.i77, %amdgpu_ring_write.exit74.amdgpu_ring_write.exit87_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i80 = add i64 %31, 1
  store i64 %inc.i80, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i82 = and i32 %33, %34
  %arrayidx.i83 = getelementptr i32, ptr %29, i32 %idxprom.i82
  %35 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %conv13, ptr %arrayidx.i83, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i85 = and i64 %38, %37
  store i64 %and3.i85, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i86 = add i32 %40, -1
  store i32 %dec.i86, ptr %count_dw.i, align 8
  %conv15 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i86)
  %cmp.i89 = icmp slt i32 %dec.i86, 1
  br i1 %cmp.i89, label %if.then.i90, label %amdgpu_ring_write.exit87.amdgpu_ring_write.exit100_crit_edge

amdgpu_ring_write.exit87.amdgpu_ring_write.exit100_crit_edge: ; preds = %amdgpu_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit100

if.then.i90:                                      ; preds = %amdgpu_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit100

amdgpu_ring_write.exit100:                        ; preds = %if.then.i90, %amdgpu_ring_write.exit87.amdgpu_ring_write.exit100_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i93 = add i64 %44, 1
  store i64 %inc.i93, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i95 = and i32 %46, %47
  %arrayidx.i96 = getelementptr i32, ptr %42, i32 %idxprom.i95
  %48 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv15, ptr %arrayidx.i96, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i98 = and i64 %51, %50
  store i64 %and3.i98, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i99 = add i32 %53, -1
  store i32 %dec.i99, ptr %count_dw.i, align 8
  br i1 %tobool.not, label %amdgpu_ring_write.exit100.if.end45_crit_edge, label %if.then17

amdgpu_ring_write.exit100.if.end45_crit_edge:     ; preds = %amdgpu_ring_write.exit100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then17:                                        ; preds = %amdgpu_ring_write.exit100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i99)
  %cmp.i102 = icmp slt i32 %dec.i99, 1
  br i1 %cmp.i102, label %if.then.i103, label %if.then17.do.end36_crit_edge

if.then17.do.end36_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.then.i103:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then.i103, %if.then17.do.end36_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i106 = add i64 %57, 1
  store i64 %inc.i106, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i108 = and i32 %59, %60
  %arrayidx.i109 = getelementptr i32, ptr %55, i32 %idxprom.i108
  %61 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 5, ptr %arrayidx.i109, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i111 = and i64 %64, %63
  store i64 %and3.i111, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i112 = add i32 %66, -1
  store i32 %dec.i112, ptr %count_dw.i, align 8
  %add = add i64 %addr, 4
  %conv38 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i112)
  %cmp.i115 = icmp slt i32 %dec.i112, 1
  br i1 %cmp.i115, label %if.then.i116, label %do.end36.amdgpu_ring_write.exit126_crit_edge

do.end36.amdgpu_ring_write.exit126_crit_edge:     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit126

if.then.i116:                                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit126

amdgpu_ring_write.exit126:                        ; preds = %if.then.i116, %do.end36.amdgpu_ring_write.exit126_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i119 = add i64 %70, 1
  store i64 %inc.i119, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i121 = and i32 %72, %73
  %arrayidx.i122 = getelementptr i32, ptr %68, i32 %idxprom.i121
  %74 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %conv38, ptr %arrayidx.i122, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i124 = and i64 %77, %76
  store i64 %and3.i124, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i125 = add i32 %79, -1
  store i32 %dec.i125, ptr %count_dw.i, align 8
  %shr39 = lshr i64 %add, 32
  %conv41 = trunc i64 %shr39 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i125)
  %cmp.i128 = icmp slt i32 %dec.i125, 1
  br i1 %cmp.i128, label %if.then.i129, label %amdgpu_ring_write.exit126.amdgpu_ring_write.exit139_crit_edge

amdgpu_ring_write.exit126.amdgpu_ring_write.exit139_crit_edge: ; preds = %amdgpu_ring_write.exit126
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit139

if.then.i129:                                     ; preds = %amdgpu_ring_write.exit126
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit139

amdgpu_ring_write.exit139:                        ; preds = %if.then.i129, %amdgpu_ring_write.exit126.amdgpu_ring_write.exit139_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %wptr.i, align 8
  %inc.i132 = add i64 %83, 1
  store i64 %inc.i132, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buf_mask.i, align 8
  %86 = trunc i64 %83 to i32
  %idxprom.i134 = and i32 %85, %86
  %arrayidx.i135 = getelementptr i32, ptr %81, i32 %idxprom.i134
  %87 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %conv41, ptr %arrayidx.i135, align 4
  %88 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %ptr_mask.i, align 8
  %90 = load i64, ptr %wptr.i, align 8
  %and3.i137 = and i64 %90, %89
  store i64 %and3.i137, ptr %wptr.i, align 8
  %91 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count_dw.i, align 8
  %dec.i138 = add i32 %92, -1
  store i32 %dec.i138, ptr %count_dw.i, align 8
  %shr42 = lshr i64 %seq, 32
  %conv44 = trunc i64 %shr42 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i138)
  %cmp.i141 = icmp slt i32 %dec.i138, 1
  br i1 %cmp.i141, label %if.then.i142, label %amdgpu_ring_write.exit139.amdgpu_ring_write.exit152_crit_edge

amdgpu_ring_write.exit139.amdgpu_ring_write.exit152_crit_edge: ; preds = %amdgpu_ring_write.exit139
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit152

if.then.i142:                                     ; preds = %amdgpu_ring_write.exit139
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit152

amdgpu_ring_write.exit152:                        ; preds = %if.then.i142, %amdgpu_ring_write.exit139.amdgpu_ring_write.exit152_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 4
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %wptr.i, align 8
  %inc.i145 = add i64 %96, 1
  store i64 %inc.i145, ptr %wptr.i, align 8
  %97 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %buf_mask.i, align 8
  %99 = trunc i64 %96 to i32
  %idxprom.i147 = and i32 %98, %99
  %arrayidx.i148 = getelementptr i32, ptr %94, i32 %idxprom.i147
  %100 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %conv44, ptr %arrayidx.i148, align 4
  %101 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ptr_mask.i, align 8
  %103 = load i64, ptr %wptr.i, align 8
  %and3.i150 = and i64 %103, %102
  store i64 %and3.i150, ptr %wptr.i, align 8
  %104 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count_dw.i, align 8
  %dec.i151 = add i32 %105, -1
  store i32 %dec.i151, ptr %count_dw.i, align 8
  br label %if.end45

if.end45:                                         ; preds = %amdgpu_ring_write.exit152, %amdgpu_ring_write.exit100.if.end45_crit_edge
  %106 = phi i32 [ %dec.i151, %amdgpu_ring_write.exit152 ], [ %dec.i99, %amdgpu_ring_write.exit100.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp.i154 = icmp slt i32 %106, 1
  br i1 %cmp.i154, label %if.then.i155, label %if.end45.amdgpu_ring_write.exit165_crit_edge

if.end45.amdgpu_ring_write.exit165_crit_edge:     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit165

if.then.i155:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit165

amdgpu_ring_write.exit165:                        ; preds = %if.then.i155, %if.end45.amdgpu_ring_write.exit165_crit_edge
  %107 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ring1.i, align 4
  %109 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %wptr.i, align 8
  %inc.i158 = add i64 %110, 1
  store i64 %inc.i158, ptr %wptr.i, align 8
  %111 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %buf_mask.i, align 8
  %113 = trunc i64 %110 to i32
  %idxprom.i160 = and i32 %112, %113
  %arrayidx.i161 = getelementptr i32, ptr %108, i32 %idxprom.i160
  %114 = ptrtoint ptr %arrayidx.i161 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 6, ptr %arrayidx.i161, align 4
  %115 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %ptr_mask.i, align 8
  %117 = load i64, ptr %wptr.i, align 8
  %and3.i163 = and i64 %117, %116
  store i64 %and3.i163, ptr %wptr.i, align 8
  %118 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count_dw.i, align 8
  %dec.i164 = add i32 %119, -1
  store i32 %dec.i164, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i164)
  %cmp.i167 = icmp slt i32 %dec.i164, 1
  br i1 %cmp.i167, label %if.then.i168, label %amdgpu_ring_write.exit165.amdgpu_ring_write.exit178_crit_edge

amdgpu_ring_write.exit165.amdgpu_ring_write.exit178_crit_edge: ; preds = %amdgpu_ring_write.exit165
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit178

if.then.i168:                                     ; preds = %amdgpu_ring_write.exit165
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit178

amdgpu_ring_write.exit178:                        ; preds = %if.then.i168, %amdgpu_ring_write.exit165.amdgpu_ring_write.exit178_crit_edge
  %120 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ring1.i, align 4
  %122 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %wptr.i, align 8
  %inc.i171 = add i64 %123, 1
  store i64 %inc.i171, ptr %wptr.i, align 8
  %124 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %buf_mask.i, align 8
  %126 = trunc i64 %123 to i32
  %idxprom.i173 = and i32 %125, %126
  %arrayidx.i174 = getelementptr i32, ptr %121, i32 %idxprom.i173
  %127 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 0, ptr %arrayidx.i174, align 4
  %128 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %ptr_mask.i, align 8
  %130 = load i64, ptr %wptr.i, align 8
  %and3.i176 = and i64 %130, %129
  store i64 %and3.i176, ptr %wptr.i, align 8
  %131 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %count_dw.i, align 8
  %dec.i177 = add i32 %132, -1
  store i32 %dec.i177, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_ring_emit_pipeline_sync(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_drv = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2
  %sync_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_seq, align 4
  %2 = ptrtoint ptr %fence_drv to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fence_drv, align 8
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, -4
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  tail call fastcc void @sdma_v4_0_wait_reg_mem(ptr noundef %ring, i32 noundef 1, i32 noundef 0, i32 noundef %conv, i32 noundef %conv3, i32 noundef %1, i32 noundef -1, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call = tail call i64 %5(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_ring_emit_hdp_flush(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 101, i32 4
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 8
  %get_hdp_flush_done_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %get_hdp_flush_done_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_hdp_flush_done_offset, align 4
  %call = tail call i32 %11(ptr noundef %1) #10
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 8
  %get_hdp_flush_req_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %get_hdp_flush_req_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hdp_flush_req_offset, align 4
  %call5 = tail call i32 %15(ptr noundef %1) #10
  tail call fastcc void @sdma_v4_0_wait_reg_mem(ptr noundef %ring, i32 noundef 0, i32 noundef 1, i32 noundef %call, i32 noundef %call5, i32 noundef %shl, i32 noundef %shl, i32 noundef 10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_ring_test_ring(ptr noundef %ring) #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !255
  %call = call i32 @amdgpu_device_wb_get(ptr noundef %1, ptr noundef nonnull %index) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %call5 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.error_free_wb_crit_edge

if.end.error_free_wb_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit62

if.then.i52:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit75

if.then.i65:                                      ; preds = %amdgpu_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit88

if.then.i78:                                      ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  store volatile i32 0, ptr %arrayidx.i84, align 4
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit101

if.then.i91:                                      ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @amdgpu_ring_commit(ptr noundef %ring) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_free_wb

if.end19:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748) #10
  %inc = add nuw i32 %i.0103, 1
  %86 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %87
  br i1 %cmp, label %if.end19.for.body_crit_edge, label %if.end19.error_free_wb_crit_edge

if.end19.error_free_wb_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_free_wb

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

error_free_wb:                                    ; preds = %if.end19.error_free_wb_crit_edge, %for.body.error_free_wb_crit_edge, %amdgpu_ring_write.exit101.error_free_wb_crit_edge, %if.end.error_free_wb_crit_edge
  %r.0 = phi i32 [ %call5, %if.end.error_free_wb_crit_edge ], [ -110, %amdgpu_ring_write.exit101.error_free_wb_crit_edge ], [ 0, %for.body.error_free_wb_crit_edge ], [ -110, %if.end19.error_free_wb_crit_edge ]
  %88 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %89) #10
  br label %cleanup

cleanup:                                          ; preds = %error_free_wb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_free_wb ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #0 align 64 {
entry:
  %ib = alloca %struct.amdgpu_ib, align 8
  %f = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #10
  %2 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %3 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #10
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %index, align 4, !annotation !255
  %call = call i32 @amdgpu_device_wb_get(ptr noundef %1, ptr noundef nonnull %index) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %call5 = call i32 @amdgpu_ib_get(ptr noundef %1, ptr noundef null, i32 noundef 256, i32 noundef 2, ptr noundef nonnull %ib) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.err0_crit_edge

if.end.err0_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  store i32 0, ptr %arrayidx18, align 4
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
  %call27 = call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef 1, ptr noundef nonnull %ib, ptr noundef null, ptr noundef nonnull %f) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end8.err1_crit_edge

if.end8.err1_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

if.end30:                                         ; preds = %if.end8
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f, align 4
  %call31 = call i32 @dma_fence_wait_timeout(ptr noundef %33, i1 noundef zeroext false, i32 noundef %timeout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp eq i32 %call31, 0
  br i1 %cmp, label %if.end30.err1_crit_edge, label %if.else

if.end30.err1_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp34 = icmp slt i32 %call31, 0
  br i1 %cmp34, label %if.else.err1_crit_edge, label %if.end38

if.else.err1_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

if.end38:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef null) #10
  %40 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %err1.err0_crit_edge, label %if.then.i

err1.err0_crit_edge:                              ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #12
  br label %err0

if.then.i:                                        ; preds = %err1
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %41, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !257
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err0_crit_edge, label %if.then10.i.i.i.i.i, !prof !253

if.end5.i.i.i.i.i.err0_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err0

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %err0

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !258
  call void @dma_fence_release(ptr noundef %refcount.i) #10
  br label %err0

err0:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err0_crit_edge, %err1.err0_crit_edge, %if.end.err0_crit_edge
  %r.1 = phi i32 [ %call5, %if.end.err0_crit_edge ], [ %r.0, %err1.err0_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.err0_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %44) #10
  br label %cleanup

cleanup:                                          ; preds = %err0, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err0 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_ring_insert_nop(ptr noundef %ring, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef %ring) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp27.not = icmp eq i32 %count, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %burst_nop to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %burst_nop, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028)
  %cmp3 = icmp eq i32 %i.028, 0
  %or.cond = select i1 %tobool1.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.for.inc.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.then.for.inc.sink.split_crit_edge
  %or.sink.ph = phi i32 [ %or, %if.then.for.inc.sink.split_crit_edge ], [ %11, %if.else.for.inc.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_ring_pad_ib(ptr noundef %ring, ptr nocapture noundef %ib) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef %ring) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %for.body.lr.ph
  %2 = ptrtoint ptr %burst_nop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %burst_nop, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.not = icmp eq i8 %3, 0
  br i1 %tobool1.not.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #12
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
define internal void @sdma_v4_0_ring_emit_wreg(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit15

if.then.i5:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
define internal void @sdma_v4_0_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sdma_v4_0_wait_reg_mem(ptr noundef %ring, i32 noundef 0, i32 noundef 0, i32 noundef %reg, i32 noundef 0, i32 noundef %val, i32 noundef %mask, i32 noundef 10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_emit_reg_write_reg_wait_helper(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wdoorbell64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v4_0_wait_reg_mem(ptr noundef %ring, i32 noundef %mem_space, i32 noundef %hdp, i32 noundef %addr0, i32 noundef %addr1, i32 noundef %ref, i32 noundef %mask, i32 noundef %inv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %hdp, 26
  %shl = and i32 %and, 67108864
  %shl2 = shl i32 %mem_space, 31
  %or = or i32 %shl, %shl2
  %or4 = or i32 %or, 805306376
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
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
  store volatile i32 %or4, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_space)
  %tobool.not = icmp eq i32 %mem_space, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i21 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i21, label %if.then.i22, label %if.then.amdgpu_ring_write.exit32_crit_edge

if.then.amdgpu_ring_write.exit32_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit32

if.then.i22:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit32

amdgpu_ring_write.exit32:                         ; preds = %if.then.i22, %if.then.amdgpu_ring_write.exit32_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i25 = add i64 %18, 1
  store i64 %inc.i25, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i27 = and i32 %20, %21
  %arrayidx.i28 = getelementptr i32, ptr %16, i32 %idxprom.i27
  %22 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %addr0, ptr %arrayidx.i28, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i30 = and i64 %25, %24
  store i64 %and3.i30, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i31 = add i32 %27, -1
  store i32 %dec.i31, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i31)
  %cmp.i34 = icmp slt i32 %dec.i31, 1
  br i1 %cmp.i34, label %amdgpu_ring_write.exit32.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit32.if.end_crit_edge

amdgpu_ring_write.exit32.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

amdgpu_ring_write.exit32.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else:                                          ; preds = %amdgpu_ring_write.exit
  %shl5 = shl i32 %addr0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i47 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i47, label %if.then.i48, label %if.else.amdgpu_ring_write.exit58_crit_edge

if.else.amdgpu_ring_write.exit58_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit58

if.then.i48:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit58

amdgpu_ring_write.exit58:                         ; preds = %if.then.i48, %if.else.amdgpu_ring_write.exit58_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i51 = add i64 %31, 1
  store i64 %inc.i51, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i53 = and i32 %33, %34
  %arrayidx.i54 = getelementptr i32, ptr %29, i32 %idxprom.i53
  %35 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %shl5, ptr %arrayidx.i54, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i56 = and i64 %38, %37
  store i64 %and3.i56, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i57 = add i32 %40, -1
  store i32 %dec.i57, ptr %count_dw.i, align 8
  %shl6 = shl i32 %addr1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i57)
  %cmp.i60 = icmp slt i32 %dec.i57, 1
  br i1 %cmp.i60, label %amdgpu_ring_write.exit58.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit58.if.end_crit_edge

amdgpu_ring_write.exit58.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

amdgpu_ring_write.exit58.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %amdgpu_ring_write.exit58.if.end.sink.split_crit_edge, %amdgpu_ring_write.exit32.if.end.sink.split_crit_edge
  %shl6.sink.ph = phi i32 [ %addr1, %amdgpu_ring_write.exit32.if.end.sink.split_crit_edge ], [ %shl6, %amdgpu_ring_write.exit58.if.end.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %amdgpu_ring_write.exit58.if.end_crit_edge, %amdgpu_ring_write.exit32.if.end_crit_edge
  %shl6.sink = phi i32 [ %addr1, %amdgpu_ring_write.exit32.if.end_crit_edge ], [ %shl6, %amdgpu_ring_write.exit58.if.end_crit_edge ], [ %shl6.sink.ph, %if.end.sink.split ]
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i64 = add i64 %44, 1
  store i64 %inc.i64, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i66 = and i32 %46, %47
  %arrayidx.i67 = getelementptr i32, ptr %42, i32 %idxprom.i66
  %48 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %shl6.sink, ptr %arrayidx.i67, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i69 = and i64 %51, %50
  store i64 %and3.i69, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %storemerge.in = load i32, ptr %count_dw.i, align 8
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %storemerge)
  %cmp.i73 = icmp slt i32 %storemerge, 1
  br i1 %cmp.i73, label %if.then.i74, label %if.end.amdgpu_ring_write.exit84_crit_edge

if.end.amdgpu_ring_write.exit84_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit84

if.then.i74:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit84

amdgpu_ring_write.exit84:                         ; preds = %if.then.i74, %if.end.amdgpu_ring_write.exit84_crit_edge
  %53 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring1.i, align 4
  %55 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %wptr.i, align 8
  %inc.i77 = add i64 %56, 1
  store i64 %inc.i77, ptr %wptr.i, align 8
  %57 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_mask.i, align 8
  %59 = trunc i64 %56 to i32
  %idxprom.i79 = and i32 %58, %59
  %arrayidx.i80 = getelementptr i32, ptr %54, i32 %idxprom.i79
  %60 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %ref, ptr %arrayidx.i80, align 4
  %61 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ptr_mask.i, align 8
  %63 = load i64, ptr %wptr.i, align 8
  %and3.i82 = and i64 %63, %62
  store i64 %and3.i82, ptr %wptr.i, align 8
  %64 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i, align 8
  %dec.i83 = add i32 %65, -1
  store i32 %dec.i83, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i83)
  %cmp.i86 = icmp slt i32 %dec.i83, 1
  br i1 %cmp.i86, label %if.then.i87, label %amdgpu_ring_write.exit84.amdgpu_ring_write.exit97_crit_edge

amdgpu_ring_write.exit84.amdgpu_ring_write.exit97_crit_edge: ; preds = %amdgpu_ring_write.exit84
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit97

if.then.i87:                                      ; preds = %amdgpu_ring_write.exit84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit97

amdgpu_ring_write.exit97:                         ; preds = %if.then.i87, %amdgpu_ring_write.exit84.amdgpu_ring_write.exit97_crit_edge
  %66 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ring1.i, align 4
  %68 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %wptr.i, align 8
  %inc.i90 = add i64 %69, 1
  store i64 %inc.i90, ptr %wptr.i, align 8
  %70 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %buf_mask.i, align 8
  %72 = trunc i64 %69 to i32
  %idxprom.i92 = and i32 %71, %72
  %arrayidx.i93 = getelementptr i32, ptr %67, i32 %idxprom.i92
  %73 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %mask, ptr %arrayidx.i93, align 4
  %74 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %ptr_mask.i, align 8
  %76 = load i64, ptr %wptr.i, align 8
  %and3.i95 = and i64 %76, %75
  store i64 %and3.i95, ptr %wptr.i, align 8
  %77 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count_dw.i, align 8
  %dec.i96 = add i32 %78, -1
  store i32 %dec.i96, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i96)
  %cmp.i99 = icmp slt i32 %dec.i96, 1
  br i1 %cmp.i99, label %if.then.i100, label %amdgpu_ring_write.exit97.amdgpu_ring_write.exit110_crit_edge

amdgpu_ring_write.exit97.amdgpu_ring_write.exit110_crit_edge: ; preds = %amdgpu_ring_write.exit97
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_ring_write.exit110

if.then.i100:                                     ; preds = %amdgpu_ring_write.exit97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %amdgpu_ring_write.exit110

amdgpu_ring_write.exit110:                        ; preds = %if.then.i100, %amdgpu_ring_write.exit97.amdgpu_ring_write.exit110_crit_edge
  %and7 = and i32 %inv, 65535
  %or9 = or i32 %and7, 268369920
  %79 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ring1.i, align 4
  %81 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %wptr.i, align 8
  %inc.i103 = add i64 %82, 1
  store i64 %inc.i103, ptr %wptr.i, align 8
  %83 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %buf_mask.i, align 8
  %85 = trunc i64 %82 to i32
  %idxprom.i105 = and i32 %84, %85
  %arrayidx.i106 = getelementptr i32, ptr %80, i32 %idxprom.i105
  %86 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 %or9, ptr %arrayidx.i106, align 4
  %87 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %ptr_mask.i, align 8
  %89 = load i64, ptr %wptr.i, align 8
  %and3.i108 = and i64 %89, %88
  store i64 %and3.i108, ptr %wptr.i, align 8
  %90 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count_dw.i, align 8
  %dec.i109 = add i32 %91, -1
  store i32 %dec.i109, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_sdma_get_instance_from_ring(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sdma_v4_0_page_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  br label %if.end

if.else:                                          ; preds = %entry
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %10 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %me, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %11, label %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

if.else.sdma_v4_0_get_reg_offset.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 3
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 4
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 5
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %18, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 6
  %19 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %20, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 7
  %21 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %22, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 8
  %23 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %24, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 9
  %25 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %26, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 10
  %27 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %28, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %16, %sw.bb3.i ], [ %14, %sw.bb.i ]
  %29 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %30, 230
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %retval.0.i, i32 noundef 0) #10
  %conv = zext i32 %call3 to i64
  %shl = shl nuw i64 %conv, 32
  %31 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %me, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %32, label %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit44_crit_edge [
    i32 0, label %sw.bb.i19
    i32 1, label %sw.bb3.i21
    i32 2, label %sw.bb9.i24
    i32 3, label %sw.bb15.i27
    i32 4, label %sw.bb21.i30
    i32 5, label %sw.bb27.i33
    i32 6, label %sw.bb33.i36
    i32 7, label %sw.bb39.i39
  ]

sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit44_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit44

sw.bb.i19:                                        ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 3
  %34 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i18, align 8
  br label %return.sink.split.i42

sw.bb3.i21:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i20 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 4
  %36 = ptrtoint ptr %arrayidx5.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx5.i20, align 8
  br label %return.sink.split.i42

sw.bb9.i24:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i22 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 5
  %38 = ptrtoint ptr %arrayidx11.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx11.i22, align 8
  %arrayidx13.i23 = getelementptr i32, ptr %39, i32 1
  br label %return.sink.split.i42

sw.bb15.i27:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i25 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 6
  %40 = ptrtoint ptr %arrayidx17.i25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx17.i25, align 8
  %arrayidx19.i26 = getelementptr i32, ptr %41, i32 1
  br label %return.sink.split.i42

sw.bb21.i30:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i28 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 7
  %42 = ptrtoint ptr %arrayidx23.i28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx23.i28, align 8
  %arrayidx25.i29 = getelementptr i32, ptr %43, i32 1
  br label %return.sink.split.i42

sw.bb27.i33:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i31 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 8
  %44 = ptrtoint ptr %arrayidx29.i31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx29.i31, align 8
  %arrayidx31.i32 = getelementptr i32, ptr %45, i32 1
  br label %return.sink.split.i42

sw.bb33.i36:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i34 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 9
  %46 = ptrtoint ptr %arrayidx35.i34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx35.i34, align 8
  %arrayidx37.i35 = getelementptr i32, ptr %47, i32 1
  br label %return.sink.split.i42

sw.bb39.i39:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i37 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 10
  %48 = ptrtoint ptr %arrayidx41.i37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx41.i37, align 8
  %arrayidx43.i38 = getelementptr i32, ptr %49, i32 1
  br label %return.sink.split.i42

return.sink.split.i42:                            ; preds = %sw.bb39.i39, %sw.bb33.i36, %sw.bb27.i33, %sw.bb21.i30, %sw.bb15.i27, %sw.bb9.i24, %sw.bb3.i21, %sw.bb.i19
  %arrayidx43.sink.i40 = phi ptr [ %arrayidx43.i38, %sw.bb39.i39 ], [ %arrayidx37.i35, %sw.bb33.i36 ], [ %arrayidx31.i32, %sw.bb27.i33 ], [ %arrayidx25.i29, %sw.bb21.i30 ], [ %arrayidx19.i26, %sw.bb15.i27 ], [ %arrayidx13.i23, %sw.bb9.i24 ], [ %37, %sw.bb3.i21 ], [ %35, %sw.bb.i19 ]
  %50 = ptrtoint ptr %arrayidx43.sink.i40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx43.sink.i40, align 4
  %add44.i41 = add i32 %51, 229
  br label %sdma_v4_0_get_reg_offset.exit44

sdma_v4_0_get_reg_offset.exit44:                  ; preds = %return.sink.split.i42, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit44_crit_edge
  %retval.0.i43 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit44_crit_edge ], [ %add44.i41, %return.sink.split.i42 ]
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %retval.0.i43, i32 noundef 0) #10
  %conv7 = zext i32 %call6 to i64
  %or = or i64 %shl, %conv7
  br label %if.end

if.end:                                           ; preds = %sdma_v4_0_get_reg_offset.exit44, %do.end
  %wptr.0 = phi i64 [ %9, %do.end ], [ %or, %sdma_v4_0_get_reg_offset.exit44 ]
  %shr = lshr i64 %wptr.0, 2
  ret i64 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_page_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_doorbell, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %shl = shl i64 %9, 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %shl, ptr %arrayidx, align 8
  %doorbell_index = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %11 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %doorbell_index, align 8
  %13 = load i64, ptr %wptr, align 8
  %shl11 = shl i64 %13, 2
  tail call void @amdgpu_mm_wdoorbell64(ptr noundef %1, i32 noundef %12, i64 noundef %shl11) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %wptr13 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %14 = ptrtoint ptr %wptr13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wptr13, align 8
  %shl14 = shl i64 %15, 2
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %16 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %me, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %17, label %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

if.else.sdma_v4_0_get_reg_offset.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 3
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 4
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 5
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %24, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 6
  %25 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %26, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 7
  %27 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %28, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 8
  %29 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %30, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 9
  %31 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %32, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 10
  %33 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %34, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %22, %sw.bb3.i ], [ %20, %sw.bb.i ]
  %35 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %36, 229
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %conv = trunc i64 %shl14 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %retval.0.i, i32 noundef %conv, i32 noundef 0) #10
  %37 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %me, align 8
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %38, label %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit59_crit_edge [
    i32 0, label %sw.bb.i34
    i32 1, label %sw.bb3.i36
    i32 2, label %sw.bb9.i39
    i32 3, label %sw.bb15.i42
    i32 4, label %sw.bb21.i45
    i32 5, label %sw.bb27.i48
    i32 6, label %sw.bb33.i51
    i32 7, label %sw.bb39.i54
  ]

sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit59_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit59

sw.bb.i34:                                        ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i33 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 3
  %40 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i33, align 8
  br label %return.sink.split.i57

sw.bb3.i36:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i35 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 4
  %42 = ptrtoint ptr %arrayidx5.i35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx5.i35, align 8
  br label %return.sink.split.i57

sw.bb9.i39:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i37 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 5
  %44 = ptrtoint ptr %arrayidx11.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx11.i37, align 8
  %arrayidx13.i38 = getelementptr i32, ptr %45, i32 1
  br label %return.sink.split.i57

sw.bb15.i42:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i40 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 6
  %46 = ptrtoint ptr %arrayidx17.i40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx17.i40, align 8
  %arrayidx19.i41 = getelementptr i32, ptr %47, i32 1
  br label %return.sink.split.i57

sw.bb21.i45:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i43 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 7
  %48 = ptrtoint ptr %arrayidx23.i43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx23.i43, align 8
  %arrayidx25.i44 = getelementptr i32, ptr %49, i32 1
  br label %return.sink.split.i57

sw.bb27.i48:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i46 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 8
  %50 = ptrtoint ptr %arrayidx29.i46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx29.i46, align 8
  %arrayidx31.i47 = getelementptr i32, ptr %51, i32 1
  br label %return.sink.split.i57

sw.bb33.i51:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i49 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 9
  %52 = ptrtoint ptr %arrayidx35.i49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx35.i49, align 8
  %arrayidx37.i50 = getelementptr i32, ptr %53, i32 1
  br label %return.sink.split.i57

sw.bb39.i54:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i52 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 10
  %54 = ptrtoint ptr %arrayidx41.i52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx41.i52, align 8
  %arrayidx43.i53 = getelementptr i32, ptr %55, i32 1
  br label %return.sink.split.i57

return.sink.split.i57:                            ; preds = %sw.bb39.i54, %sw.bb33.i51, %sw.bb27.i48, %sw.bb21.i45, %sw.bb15.i42, %sw.bb9.i39, %sw.bb3.i36, %sw.bb.i34
  %arrayidx43.sink.i55 = phi ptr [ %arrayidx43.i53, %sw.bb39.i54 ], [ %arrayidx37.i50, %sw.bb33.i51 ], [ %arrayidx31.i47, %sw.bb27.i48 ], [ %arrayidx25.i44, %sw.bb21.i45 ], [ %arrayidx19.i41, %sw.bb15.i42 ], [ %arrayidx13.i38, %sw.bb9.i39 ], [ %43, %sw.bb3.i36 ], [ %41, %sw.bb.i34 ]
  %56 = ptrtoint ptr %arrayidx43.sink.i55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx43.sink.i55, align 4
  %add44.i56 = add i32 %57, 230
  br label %sdma_v4_0_get_reg_offset.exit59

sdma_v4_0_get_reg_offset.exit59:                  ; preds = %return.sink.split.i57, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit59_crit_edge
  %retval.0.i58 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit59_crit_edge ], [ %add44.i56, %return.sink.split.i57 ]
  %shr = lshr i64 %shl14, 32
  %conv18 = trunc i64 %shr to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %retval.0.i58, i32 noundef %conv18, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %sdma_v4_0_get_reg_offset.exit59, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v4_0_emit_copy_buffer(ptr nocapture noundef %ib, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %byte_count, i1 noundef zeroext %tmz) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal void @sdma_v4_0_emit_fill_buffer(ptr nocapture noundef %ib, i32 noundef %src_data, i64 noundef %dst_offset, i32 noundef %byte_count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal void @sdma_v4_0_vm_copy_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal void @sdma_v4_0_vm_write_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %value, i32 noundef %count, i32 noundef %incr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdma_v4_0_vm_set_pte_pde(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @sdma_v4_0_set_trap_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %type, label %entry.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

entry.sdma_v4_0_get_reg_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %3 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %5 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %6, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %7 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %8, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %9 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %10, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %11 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %12, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %13 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %14, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %15 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %16, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %4, %sw.bb3.i ], [ %2, %sw.bb.i ]
  %17 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %18, 28
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %entry.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i, i32 noundef 0) #10
  %19 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %type, label %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit35_crit_edge [
    i32 0, label %sw.bb.i10
    i32 1, label %sw.bb3.i12
    i32 2, label %sw.bb9.i15
    i32 3, label %sw.bb15.i18
    i32 4, label %sw.bb21.i21
    i32 5, label %sw.bb27.i24
    i32 6, label %sw.bb33.i27
    i32 7, label %sw.bb39.i30
  ]

sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit35_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit35

sw.bb.i10:                                        ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  %20 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i9, align 8
  br label %return.sink.split.i33

sw.bb3.i12:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %22 = ptrtoint ptr %arrayidx5.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5.i11, align 8
  br label %return.sink.split.i33

sw.bb9.i15:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %24 = ptrtoint ptr %arrayidx11.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx11.i13, align 8
  %arrayidx13.i14 = getelementptr i32, ptr %25, i32 1
  br label %return.sink.split.i33

sw.bb15.i18:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %26 = ptrtoint ptr %arrayidx17.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx17.i16, align 8
  %arrayidx19.i17 = getelementptr i32, ptr %27, i32 1
  br label %return.sink.split.i33

sw.bb21.i21:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i19 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %28 = ptrtoint ptr %arrayidx23.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx23.i19, align 8
  %arrayidx25.i20 = getelementptr i32, ptr %29, i32 1
  br label %return.sink.split.i33

sw.bb27.i24:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i22 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %30 = ptrtoint ptr %arrayidx29.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx29.i22, align 8
  %arrayidx31.i23 = getelementptr i32, ptr %31, i32 1
  br label %return.sink.split.i33

sw.bb33.i27:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i25 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %32 = ptrtoint ptr %arrayidx35.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx35.i25, align 8
  %arrayidx37.i26 = getelementptr i32, ptr %33, i32 1
  br label %return.sink.split.i33

sw.bb39.i30:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i28 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %34 = ptrtoint ptr %arrayidx41.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx41.i28, align 8
  %arrayidx43.i29 = getelementptr i32, ptr %35, i32 1
  br label %return.sink.split.i33

return.sink.split.i33:                            ; preds = %sw.bb39.i30, %sw.bb33.i27, %sw.bb27.i24, %sw.bb21.i21, %sw.bb15.i18, %sw.bb9.i15, %sw.bb3.i12, %sw.bb.i10
  %arrayidx43.sink.i31 = phi ptr [ %arrayidx43.i29, %sw.bb39.i30 ], [ %arrayidx37.i26, %sw.bb33.i27 ], [ %arrayidx31.i23, %sw.bb27.i24 ], [ %arrayidx25.i20, %sw.bb21.i21 ], [ %arrayidx19.i17, %sw.bb15.i18 ], [ %arrayidx13.i14, %sw.bb9.i15 ], [ %23, %sw.bb3.i12 ], [ %21, %sw.bb.i10 ]
  %36 = ptrtoint ptr %arrayidx43.sink.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx43.sink.i31, align 4
  %add44.i32 = add i32 %37, 28
  br label %sdma_v4_0_get_reg_offset.exit35

sdma_v4_0_get_reg_offset.exit35:                  ; preds = %return.sink.split.i33, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit35_crit_edge
  %retval.0.i34 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit35_crit_edge ], [ %add44.i32, %return.sink.split.i33 ]
  %and = and i32 %call1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %cond = zext i1 %cmp to i32
  %or = or i32 %and, %cond
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i34, i32 noundef %or, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_process_trap_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27) #10
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %1, label %sw.epilog.i [
    i32 8, label %entry.sdma_v4_0_irq_id_to_seq.exit_crit_edge
    i32 9, label %sw.bb1.i
    i32 1, label %sw.bb2.i
    i32 4, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 17, label %sw.bb5.i
    i32 19, label %sw.bb6.i
    i32 24, label %sw.bb7.i
  ]

entry.sdma_v4_0_irq_id_to_seq.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_irq_id_to_seq.exit

sdma_v4_0_irq_id_to_seq.exit:                     ; preds = %sw.epilog.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.sdma_v4_0_irq_id_to_seq.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.epilog.i ], [ 7, %sw.bb7.i ], [ 6, %sw.bb6.i ], [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.sdma_v4_0_irq_id_to_seq.exit_crit_edge ]
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %3 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %4, label %sdma_v4_0_irq_id_to_seq.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 3, label %sw.bb11
  ]

sdma_v4_0_irq_id_to_seq.exit.sw.epilog_crit_edge: ; preds = %sdma_v4_0_irq_id_to_seq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %sdma_v4_0_irq_id_to_seq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %ring = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %retval.0.i, i32 3
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %sdma_v4_0_irq_id_to_seq.exit
  %arrayidx5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262656, i32 %7)
  %cmp = icmp eq i32 %7, 262656
  br i1 %cmp, label %if.then, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %sdma7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %page = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma7, i32 0, i32 %retval.0.i, i32 4
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %sdma_v4_0_irq_id_to_seq.exit
  %arrayidx13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262656, i32 %9)
  %cmp15.not = icmp eq i32 %9, 262656
  br i1 %cmp15.not, label %sw.bb11.sw.epilog_crit_edge, label %if.then16

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then16:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  %sdma17 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %page20 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma17, i32 0, i32 %retval.0.i, i32 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then16, %if.then, %sw.bb
  %page20.sink = phi ptr [ %page20, %if.then16 ], [ %page, %if.then ], [ %ring, %sw.bb ]
  %call21 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %page20.sink) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb11.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sdma_v4_0_irq_id_to_seq.exit.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_process_illegal_inst_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #10
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8, label %entry.if.end_crit_edge
    i32 9, label %sw.bb1.i
    i32 1, label %sw.bb2.i
    i32 4, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 17, label %sw.bb5.i
    i32 19, label %sw.bb6.i
    i32 24, label %sw.bb7.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 3, %sw.bb3.i ], [ 4, %sw.bb4.i ], [ 5, %sw.bb5.i ], [ 6, %sw.bb6.i ], [ 7, %sw.bb7.i ]
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %3 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cond = icmp eq i32 %4, 0
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %sched = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %retval.0.i.ph, i32 3, i32 3
  tail call void @drm_sched_fault(ptr noundef %sched) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_fault(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_set_ecc_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %type, label %entry.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

entry.sdma_v4_0_get_reg_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %3 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %5 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %6, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %7 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %8, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %9 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %10, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %11 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %12, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %13 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %14, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %15 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %16, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %4, %sw.bb3.i ], [ %2, %sw.bb.i ]
  %17 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %18, 50
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %entry.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i, i32 noundef 0) #10
  %19 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %type, label %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit35_crit_edge [
    i32 0, label %sw.bb.i10
    i32 1, label %sw.bb3.i12
    i32 2, label %sw.bb9.i15
    i32 3, label %sw.bb15.i18
    i32 4, label %sw.bb21.i21
    i32 5, label %sw.bb27.i24
    i32 6, label %sw.bb33.i27
    i32 7, label %sw.bb39.i30
  ]

sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit35_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit35

sw.bb.i10:                                        ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  %20 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i9, align 8
  br label %return.sink.split.i33

sw.bb3.i12:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %22 = ptrtoint ptr %arrayidx5.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5.i11, align 8
  br label %return.sink.split.i33

sw.bb9.i15:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %24 = ptrtoint ptr %arrayidx11.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx11.i13, align 8
  %arrayidx13.i14 = getelementptr i32, ptr %25, i32 1
  br label %return.sink.split.i33

sw.bb15.i18:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %26 = ptrtoint ptr %arrayidx17.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx17.i16, align 8
  %arrayidx19.i17 = getelementptr i32, ptr %27, i32 1
  br label %return.sink.split.i33

sw.bb21.i21:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i19 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %28 = ptrtoint ptr %arrayidx23.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx23.i19, align 8
  %arrayidx25.i20 = getelementptr i32, ptr %29, i32 1
  br label %return.sink.split.i33

sw.bb27.i24:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i22 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %30 = ptrtoint ptr %arrayidx29.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx29.i22, align 8
  %arrayidx31.i23 = getelementptr i32, ptr %31, i32 1
  br label %return.sink.split.i33

sw.bb33.i27:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i25 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %32 = ptrtoint ptr %arrayidx35.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx35.i25, align 8
  %arrayidx37.i26 = getelementptr i32, ptr %33, i32 1
  br label %return.sink.split.i33

sw.bb39.i30:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i28 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %34 = ptrtoint ptr %arrayidx41.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx41.i28, align 8
  %arrayidx43.i29 = getelementptr i32, ptr %35, i32 1
  br label %return.sink.split.i33

return.sink.split.i33:                            ; preds = %sw.bb39.i30, %sw.bb33.i27, %sw.bb27.i24, %sw.bb21.i21, %sw.bb15.i18, %sw.bb9.i15, %sw.bb3.i12, %sw.bb.i10
  %arrayidx43.sink.i31 = phi ptr [ %arrayidx43.i29, %sw.bb39.i30 ], [ %arrayidx37.i26, %sw.bb33.i27 ], [ %arrayidx31.i23, %sw.bb27.i24 ], [ %arrayidx25.i20, %sw.bb21.i21 ], [ %arrayidx19.i17, %sw.bb15.i18 ], [ %arrayidx13.i14, %sw.bb9.i15 ], [ %23, %sw.bb3.i12 ], [ %21, %sw.bb.i10 ]
  %36 = ptrtoint ptr %arrayidx43.sink.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx43.sink.i31, align 4
  %add44.i32 = add i32 %37, 50
  br label %sdma_v4_0_get_reg_offset.exit35

sdma_v4_0_get_reg_offset.exit35:                  ; preds = %return.sink.split.i33, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit35_crit_edge
  %retval.0.i34 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit35_crit_edge ], [ %add44.i32, %return.sink.split.i33 ]
  %and = and i32 %call1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  %shl = select i1 %cmp, i32 4, i32 0
  %or = or i32 %and, %shl
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i34, i32 noundef %or, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sdma_process_ecc_irq(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_process_vm_hole_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_v4_0_process_vm_hole_irq.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdma_v4_0_process_vm_hole_irq, %land.lhs.true)) #10
          to label %do.end [label %land.lhs.true], !srcloc !259

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @sdma_v4_0_process_vm_hole_irq._rs, ptr noundef nonnull @.str.31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_v4_0_process_vm_hole_irq.descriptor, ptr noundef %1, ptr noundef nonnull @.str.34) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  tail call fastcc void @sdma_v4_0_print_iv_entry(ptr noundef %adev, ptr noundef %entry1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v4_0_print_iv_entry(ptr noundef %adev, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  %task_info = alloca %struct.amdgpu_task_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %task_info) #10
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %1, label %entry.do.end_crit_edge [
    i32 8, label %entry.lor.lhs.false_crit_edge
    i32 9, label %sw.bb1.i
    i32 1, label %sw.bb2.i
    i32 4, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 17, label %sw.bb5.i
    i32 19, label %sw.bb6.i
    i32 24, label %sw.bb7.i
  ]

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.lor.lhs.false_crit_edge
  %retval.0.i1.ph = phi i32 [ 0, %entry.lor.lhs.false_crit_edge ], [ 1, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 3, %sw.bb3.i ], [ 4, %sw.bb4.i ], [ 5, %sw.bb5.i ], [ 6, %sw.bb6.i ], [ 7, %sw.bb7.i ]
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %3 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i1.ph, i32 %4)
  %cmp2.not = icmp slt i32 %retval.0.i1.ph, %4
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i15 = phi i32 [ %retval.0.i1.ph, %lor.lhs.false.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i15) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %7 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_data, align 4
  %conv = zext i32 %8 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %arrayidx4 = getelementptr %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %11 = and i32 %10, 15
  %and = zext i32 %11 to i64
  %shl6 = shl nuw nsw i64 %and, 44
  %or = or i64 %shl6, %shl
  %12 = call ptr @memset(ptr %task_info, i32 0, i32 40)
  %pasid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 8
  %13 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pasid, align 4
  call void @amdgpu_vm_get_task_info(ptr noundef %adev, i32 noundef %14, ptr noundef nonnull %task_info) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_v4_0_print_iv_entry.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdma_v4_0_print_iv_entry, %land.lhs.true)) #10
          to label %cleanup [label %land.lhs.true], !srcloc !259

land.lhs.true:                                    ; preds = %if.end
  %call11 = call i32 @___ratelimit(ptr noundef nonnull @sdma_v4_0_print_iv_entry._rs, ptr noundef nonnull @.str.36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %17 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_id, align 8
  %ring_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 3
  %19 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring_id, align 4
  %vmid = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 4
  %21 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vmid, align 8
  %23 = ptrtoint ptr %pasid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pasid, align 4
  %tgid = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 3
  %25 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tgid, align 4
  %task_name = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 1
  %pid = getelementptr inbounds %struct.amdgpu_task_info, ptr %task_info, i32 0, i32 2
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_v4_0_print_iv_entry.descriptor, ptr noundef %16, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i1.ph, i64 noundef %or, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %task_info, i32 noundef %26, ptr noundef %task_name, i32 noundef %28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true.cleanup_crit_edge, %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %task_info) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_get_task_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_process_doorbell_invalid_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_v4_0_process_doorbell_invalid_irq.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdma_v4_0_process_doorbell_invalid_irq, %land.lhs.true)) #10
          to label %do.end [label %land.lhs.true], !srcloc !259

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @sdma_v4_0_process_doorbell_invalid_irq._rs, ptr noundef nonnull @.str.41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_v4_0_process_doorbell_invalid_irq.descriptor, ptr noundef %1, ptr noundef nonnull @.str.43) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  tail call fastcc void @sdma_v4_0_print_iv_entry(ptr noundef %adev, ptr noundef %entry1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_process_pool_timeout_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_v4_0_process_pool_timeout_irq.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdma_v4_0_process_pool_timeout_irq, %land.lhs.true)) #10
          to label %do.end [label %land.lhs.true], !srcloc !259

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @sdma_v4_0_process_pool_timeout_irq._rs, ptr noundef nonnull @.str.44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_v4_0_process_pool_timeout_irq.descriptor, ptr noundef %1, ptr noundef nonnull @.str.46) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  tail call fastcc void @sdma_v4_0_print_iv_entry(ptr noundef %adev, ptr noundef %entry1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_process_srbm_write_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdma_v4_0_process_srbm_write_irq.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdma_v4_0_process_srbm_write_irq, %land.lhs.true)) #10
          to label %do.end [label %land.lhs.true], !srcloc !259

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @sdma_v4_0_process_srbm_write_irq._rs, ptr noundef nonnull @.str.47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdma_v4_0_process_srbm_write_irq.descriptor, ptr noundef %1, ptr noundef nonnull @.str.49) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  tail call fastcc void @sdma_v4_0_print_iv_entry(ptr noundef %adev, ptr noundef %entry1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sdma_ras_late_init(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sdma_ras_fini(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_query_ras_error_count(ptr noundef %adev, i32 noundef %instance, ptr nocapture noundef %ras_error_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %instance to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %instance, label %entry.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

entry.sdma_v4_0_get_reg_offset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %3 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %5 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %6, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %7 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %8, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %9 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %10, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %11 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %12, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %13 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %14, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %15 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %16, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %4, %sw.bb3.i ], [ %2, %sw.bb.i ]
  %17 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %18, 54
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %entry.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sdma_v4_0_get_reg_offset.exit.if.end_crit_edge, label %sdma_v4_0_get_reg_offset.exit.for.body.i_crit_edge

sdma_v4_0_get_reg_offset.exit.for.body.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  br label %for.body.i

sdma_v4_0_get_reg_offset.exit.if.end_crit_edge:   ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sdma_v4_0_get_reg_offset.exit.for.body.i_crit_edge
  %sec_count.0 = phi i32 [ %sec_count.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %sdma_v4_0_get_reg_offset.exit.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sdma_v4_0_get_reg_offset.exit.for.body.i_crit_edge ]
  %sec_count_mask.i = getelementptr [24 x %struct.soc15_ras_field_entry], ptr @sdma_v4_0_ras_fields, i32 0, i32 %i.09.i, i32 5
  %19 = ptrtoint ptr %sec_count_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sec_count_mask.i, align 4
  %and.i = and i32 %20, %call1
  %sec_count_shift.i = getelementptr [24 x %struct.soc15_ras_field_entry], ptr @sdma_v4_0_ras_fields, i32 0, i32 %i.09.i, i32 6
  %21 = ptrtoint ptr %sec_count_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sec_count_shift.i, align 4
  %shr.i = lshr i32 %and.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i6 = getelementptr [24 x %struct.soc15_ras_field_entry], ptr @sdma_v4_0_ras_fields, i32 0, i32 %i.09.i
  %23 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i6, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %24, i32 noundef %instance, i32 noundef %shr.i) #13
  %add.i = add i32 %shr.i, %sec_count.0
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %sec_count.1 = phi i32 [ %sec_count.0, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %do.end.i ]
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %sdma_v4_0_get_reg_offset.exit.if.end_crit_edge
  %sec_count.2 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.if.end_crit_edge ], [ %sec_count.1, %for.inc.i.if.end_crit_edge ]
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %25 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ce_count, align 4
  %add = add i32 %26, %sec_count.2
  store i32 %add, ptr %ce_count, align 4
  %27 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ras_error_status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdma_v4_0_reset_ras_error_count(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %amdgpu_ras_is_supported.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end_crit_edge, label %for.cond.preheader

amdgpu_ras_is_supported.exit.if.end_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader:                               ; preds = %amdgpu_ras_is_supported.exit
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %5 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp sgt i32 %6, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  br label %for.body

for.body:                                         ; preds = %sdma_v4_0_get_reg_offset.exit.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sdma_v4_0_get_reg_offset.exit.for.body_crit_edge ]
  %7 = zext i32 %i.010 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %i.010, label %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

for.body.sdma_v4_0_get_reg_offset.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %13, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %15, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %17, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %19, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %21, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %23, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %11, %sw.bb3.i ], [ %9, %sw.bb.i ]
  %24 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %25, 54
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i, i32 noundef 0) #10
  %inc = add nuw nsw i32 %i.010, 1
  %26 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %sdma_v4_0_get_reg_offset.exit.for.body_crit_edge, label %sdma_v4_0_get_reg_offset.exit.if.end_crit_edge

sdma_v4_0_get_reg_offset.exit.if.end_crit_edge:   ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sdma_v4_0_get_reg_offset.exit.for.body_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %sdma_v4_0_get_reg_offset.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %amdgpu_ras_is_supported.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdma_v4_0_process_ras_data_cb(ptr noundef %adev, ptr noundef %err_data, ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %amdgpu_ras_is_supported.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end_crit_edge, label %amdgpu_ras_is_supported.exit.out_crit_edge

amdgpu_ras_is_supported.exit.out_crit_edge:       ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

amdgpu_ras_is_supported.exit.if.end_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %client_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %5 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %client_id, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %6, label %if.end.out_crit_edge [
    i32 8, label %if.end.if.end4_crit_edge
    i32 9, label %if.end.if.end4_crit_edge11
    i32 1, label %if.end.if.end4_crit_edge12
    i32 4, label %if.end.if.end4_crit_edge13
    i32 5, label %if.end.if.end4_crit_edge14
    i32 17, label %if.end.if.end4_crit_edge15
    i32 19, label %if.end.if.end4_crit_edge16
    i32 24, label %if.end.if.end4_crit_edge17
  ]

if.end.if.end4_crit_edge17:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.if.end4_crit_edge16:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.if.end4_crit_edge15:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.if.end4_crit_edge14:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.if.end4_crit_edge13:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.if.end4_crit_edge12:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.if.end4_crit_edge11:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge11, %if.end.if.end4_crit_edge12, %if.end.if.end4_crit_edge13, %if.end.if.end4_crit_edge14, %if.end.if.end4_crit_edge15, %if.end.if.end4_crit_edge16, %if.end.if.end4_crit_edge17
  %call5 = tail call i32 @amdgpu_sdma_process_ras_data_cb(ptr noundef %adev, ptr noundef %err_data, ptr noundef %entry1) #10
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %amdgpu_ras_is_supported.exit.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_persistent_edc_harvesting_supported(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sdma_process_ras_data_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc15_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v4_0_ctx_switch_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %0 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %while.cond.preheader

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %0)
  %cmp268 = icmp ugt i32 %0, 65535
  br i1 %cmp268, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end37_crit_edge

while.cond.preheader.if.end37_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %unit.0270 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %value.0269 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %0, %while.cond.preheader.while.body_crit_edge ]
  %add = add i32 %value.0269, 1
  %shr = lshr i32 %add, 1
  %inc = add i32 %unit.0270, 1
  %cmp = icmp ugt i32 %add, 131071
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp1 = icmp ugt i32 %inc, 15
  br i1 %cmp1, label %land.end, label %while.end.if.end37_crit_edge

while.end.if.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.end:                                         ; preds = %while.end
  %.b105 = load i1, ptr @sdma_v4_0_ctx_switch_enable.__already_done, align 1
  br i1 %.b105, label %land.end.if.end37_crit_edge, label %if.then8, !prof !253

land.end.if.end37_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sdma_v4_0_ctx_switch_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 1088, i32 noundef 9, ptr noundef nonnull @.str.79, i32 noundef 2147450880) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then8, %land.end.if.end37_crit_edge, %while.end.if.end37_crit_edge, %while.cond.preheader.if.end37_crit_edge
  %value.1 = phi i32 [ %shr, %while.end.if.end37_crit_edge ], [ 65535, %if.then8 ], [ 65535, %land.end.if.end37_crit_edge ], [ %0, %while.cond.preheader.if.end37_crit_edge ]
  %unit.1 = phi i32 [ %inc, %while.end.if.end37_crit_edge ], [ 15, %if.then8 ], [ 15, %land.end.if.end37_crit_edge ], [ 0, %while.cond.preheader.if.end37_crit_edge ]
  %shl38 = shl nuw nsw i32 %value.1, 8
  %or = or i32 %shl38, %unit.1
  br label %if.end40

if.end40:                                         ; preds = %if.end37, %entry.if.end40_crit_edge
  %phase_quantum.0 = phi i32 [ %or, %if.end37 ], [ 0, %entry.if.end40_crit_edge ]
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %1 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp41272 = icmp sgt i32 %2, 0
  br i1 %cmp41272, label %for.body.lr.ph, label %if.end40.for.end_crit_edge

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end40
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  %shl44 = select i1 %enable, i32 262144, i32 0
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 3
  %conv = zext i1 %enable to i32
  br label %for.body

for.body:                                         ; preds = %sdma_v4_0_get_reg_offset.exit267.for.body_crit_edge, %for.body.lr.ph
  %i.0273 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %sdma_v4_0_get_reg_offset.exit267.for.body_crit_edge ]
  %3 = zext i32 %i.0273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %i.0273, label %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

for.body.sdma_v4_0_get_reg_offset.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %9, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %11, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %13, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %15, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %17, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %19, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %7, %sw.bb3.i ], [ %5, %sw.bb.i ]
  %20 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %21, 28
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call42 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i, i32 noundef 0) #10
  %and = and i32 %call42, -262145
  %or46 = or i32 %and, %shl44
  br i1 %enable, label %land.lhs.true, label %sdma_v4_0_get_reg_offset.exit.if.end53_crit_edge

sdma_v4_0_get_reg_offset.exit.if.end53_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true:                                    ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32))
  %22 = load i32, ptr @amdgpu_sdma_phase_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool48.not = icmp eq i32 %22, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end53_crit_edge, label %if.then49

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then49:                                        ; preds = %land.lhs.true
  %23 = zext i32 %i.0273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %i.0273, label %if.then49.sdma_v4_0_get_reg_offset.exit132_crit_edge [
    i32 0, label %sw.bb.i107
    i32 1, label %sw.bb3.i109
    i32 2, label %sw.bb9.i112
    i32 3, label %sw.bb15.i115
    i32 4, label %sw.bb21.i118
    i32 5, label %sw.bb27.i121
    i32 6, label %sw.bb33.i124
    i32 7, label %sw.bb39.i127
  ]

if.then49.sdma_v4_0_get_reg_offset.exit132_crit_edge: ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit132

sw.bb.i107:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i130

sw.bb3.i109:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i130

sw.bb9.i112:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i111 = getelementptr i32, ptr %29, i32 1
  br label %return.sink.split.i130

sw.bb15.i115:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i114 = getelementptr i32, ptr %31, i32 1
  br label %return.sink.split.i130

sw.bb21.i118:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i117 = getelementptr i32, ptr %33, i32 1
  br label %return.sink.split.i130

sw.bb27.i121:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i120 = getelementptr i32, ptr %35, i32 1
  br label %return.sink.split.i130

sw.bb33.i124:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i123 = getelementptr i32, ptr %37, i32 1
  br label %return.sink.split.i130

sw.bb39.i127:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i126 = getelementptr i32, ptr %39, i32 1
  br label %return.sink.split.i130

return.sink.split.i130:                           ; preds = %sw.bb39.i127, %sw.bb33.i124, %sw.bb27.i121, %sw.bb21.i118, %sw.bb15.i115, %sw.bb9.i112, %sw.bb3.i109, %sw.bb.i107
  %arrayidx43.sink.i128 = phi ptr [ %arrayidx43.i126, %sw.bb39.i127 ], [ %arrayidx37.i123, %sw.bb33.i124 ], [ %arrayidx31.i120, %sw.bb27.i121 ], [ %arrayidx25.i117, %sw.bb21.i118 ], [ %arrayidx19.i114, %sw.bb15.i115 ], [ %arrayidx13.i111, %sw.bb9.i112 ], [ %27, %sw.bb3.i109 ], [ %25, %sw.bb.i107 ]
  %40 = ptrtoint ptr %arrayidx43.sink.i128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx43.sink.i128, align 4
  %add44.i129 = add i32 %41, 44
  br label %sdma_v4_0_get_reg_offset.exit132

sdma_v4_0_get_reg_offset.exit132:                 ; preds = %return.sink.split.i130, %if.then49.sdma_v4_0_get_reg_offset.exit132_crit_edge
  %retval.0.i131 = phi i32 [ 0, %if.then49.sdma_v4_0_get_reg_offset.exit132_crit_edge ], [ %add44.i129, %return.sink.split.i130 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i131, i32 noundef %phase_quantum.0, i32 noundef 0) #10
  %42 = zext i32 %i.0273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %i.0273, label %sdma_v4_0_get_reg_offset.exit132.sdma_v4_0_get_reg_offset.exit159_crit_edge [
    i32 0, label %sw.bb.i134
    i32 1, label %sw.bb3.i136
    i32 2, label %sw.bb9.i139
    i32 3, label %sw.bb15.i142
    i32 4, label %sw.bb21.i145
    i32 5, label %sw.bb27.i148
    i32 6, label %sw.bb33.i151
    i32 7, label %sw.bb39.i154
  ]

sdma_v4_0_get_reg_offset.exit132.sdma_v4_0_get_reg_offset.exit159_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit159

sw.bb.i134:                                       ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i157

sw.bb3.i136:                                      ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i157

sw.bb9.i139:                                      ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i138 = getelementptr i32, ptr %48, i32 1
  br label %return.sink.split.i157

sw.bb15.i142:                                     ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i141 = getelementptr i32, ptr %50, i32 1
  br label %return.sink.split.i157

sw.bb21.i145:                                     ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i144 = getelementptr i32, ptr %52, i32 1
  br label %return.sink.split.i157

sw.bb27.i148:                                     ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i147 = getelementptr i32, ptr %54, i32 1
  br label %return.sink.split.i157

sw.bb33.i151:                                     ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i150 = getelementptr i32, ptr %56, i32 1
  br label %return.sink.split.i157

sw.bb39.i154:                                     ; preds = %sdma_v4_0_get_reg_offset.exit132
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i153 = getelementptr i32, ptr %58, i32 1
  br label %return.sink.split.i157

return.sink.split.i157:                           ; preds = %sw.bb39.i154, %sw.bb33.i151, %sw.bb27.i148, %sw.bb21.i145, %sw.bb15.i142, %sw.bb9.i139, %sw.bb3.i136, %sw.bb.i134
  %arrayidx43.sink.i155 = phi ptr [ %arrayidx43.i153, %sw.bb39.i154 ], [ %arrayidx37.i150, %sw.bb33.i151 ], [ %arrayidx31.i147, %sw.bb27.i148 ], [ %arrayidx25.i144, %sw.bb21.i145 ], [ %arrayidx19.i141, %sw.bb15.i142 ], [ %arrayidx13.i138, %sw.bb9.i139 ], [ %46, %sw.bb3.i136 ], [ %44, %sw.bb.i134 ]
  %59 = ptrtoint ptr %arrayidx43.sink.i155 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx43.sink.i155, align 4
  %add44.i156 = add i32 %60, 45
  br label %sdma_v4_0_get_reg_offset.exit159

sdma_v4_0_get_reg_offset.exit159:                 ; preds = %return.sink.split.i157, %sdma_v4_0_get_reg_offset.exit132.sdma_v4_0_get_reg_offset.exit159_crit_edge
  %retval.0.i158 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit132.sdma_v4_0_get_reg_offset.exit159_crit_edge ], [ %add44.i156, %return.sink.split.i157 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i158, i32 noundef %phase_quantum.0, i32 noundef 0) #10
  %61 = zext i32 %i.0273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %i.0273, label %sdma_v4_0_get_reg_offset.exit159.sdma_v4_0_get_reg_offset.exit186_crit_edge [
    i32 0, label %sw.bb.i161
    i32 1, label %sw.bb3.i163
    i32 2, label %sw.bb9.i166
    i32 3, label %sw.bb15.i169
    i32 4, label %sw.bb21.i172
    i32 5, label %sw.bb27.i175
    i32 6, label %sw.bb33.i178
    i32 7, label %sw.bb39.i181
  ]

sdma_v4_0_get_reg_offset.exit159.sdma_v4_0_get_reg_offset.exit186_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit186

sw.bb.i161:                                       ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i184

sw.bb3.i163:                                      ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i184

sw.bb9.i166:                                      ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i165 = getelementptr i32, ptr %67, i32 1
  br label %return.sink.split.i184

sw.bb15.i169:                                     ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i168 = getelementptr i32, ptr %69, i32 1
  br label %return.sink.split.i184

sw.bb21.i172:                                     ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i171 = getelementptr i32, ptr %71, i32 1
  br label %return.sink.split.i184

sw.bb27.i175:                                     ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i174 = getelementptr i32, ptr %73, i32 1
  br label %return.sink.split.i184

sw.bb33.i178:                                     ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i177 = getelementptr i32, ptr %75, i32 1
  br label %return.sink.split.i184

sw.bb39.i181:                                     ; preds = %sdma_v4_0_get_reg_offset.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i180 = getelementptr i32, ptr %77, i32 1
  br label %return.sink.split.i184

return.sink.split.i184:                           ; preds = %sw.bb39.i181, %sw.bb33.i178, %sw.bb27.i175, %sw.bb21.i172, %sw.bb15.i169, %sw.bb9.i166, %sw.bb3.i163, %sw.bb.i161
  %arrayidx43.sink.i182 = phi ptr [ %arrayidx43.i180, %sw.bb39.i181 ], [ %arrayidx37.i177, %sw.bb33.i178 ], [ %arrayidx31.i174, %sw.bb27.i175 ], [ %arrayidx25.i171, %sw.bb21.i172 ], [ %arrayidx19.i168, %sw.bb15.i169 ], [ %arrayidx13.i165, %sw.bb9.i166 ], [ %65, %sw.bb3.i163 ], [ %63, %sw.bb.i161 ]
  %78 = ptrtoint ptr %arrayidx43.sink.i182 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx43.sink.i182, align 4
  %add44.i183 = add i32 %79, 79
  br label %sdma_v4_0_get_reg_offset.exit186

sdma_v4_0_get_reg_offset.exit186:                 ; preds = %return.sink.split.i184, %sdma_v4_0_get_reg_offset.exit159.sdma_v4_0_get_reg_offset.exit186_crit_edge
  %retval.0.i185 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit159.sdma_v4_0_get_reg_offset.exit186_crit_edge ], [ %add44.i183, %return.sink.split.i184 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i185, i32 noundef %phase_quantum.0, i32 noundef 0) #10
  br label %if.end53

if.end53:                                         ; preds = %sdma_v4_0_get_reg_offset.exit186, %land.lhs.true.if.end53_crit_edge, %sdma_v4_0_get_reg_offset.exit.if.end53_crit_edge
  %80 = zext i32 %i.0273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %i.0273, label %if.end53.sdma_v4_0_get_reg_offset.exit213_crit_edge [
    i32 0, label %sw.bb.i188
    i32 1, label %sw.bb3.i190
    i32 2, label %sw.bb9.i193
    i32 3, label %sw.bb15.i196
    i32 4, label %sw.bb21.i199
    i32 5, label %sw.bb27.i202
    i32 6, label %sw.bb33.i205
    i32 7, label %sw.bb39.i208
  ]

if.end53.sdma_v4_0_get_reg_offset.exit213_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit213

sw.bb.i188:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i211

sw.bb3.i190:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i211

sw.bb9.i193:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i192 = getelementptr i32, ptr %86, i32 1
  br label %return.sink.split.i211

sw.bb15.i196:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i195 = getelementptr i32, ptr %88, i32 1
  br label %return.sink.split.i211

sw.bb21.i199:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i198 = getelementptr i32, ptr %90, i32 1
  br label %return.sink.split.i211

sw.bb27.i202:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i201 = getelementptr i32, ptr %92, i32 1
  br label %return.sink.split.i211

sw.bb33.i205:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i204 = getelementptr i32, ptr %94, i32 1
  br label %return.sink.split.i211

sw.bb39.i208:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i207 = getelementptr i32, ptr %96, i32 1
  br label %return.sink.split.i211

return.sink.split.i211:                           ; preds = %sw.bb39.i208, %sw.bb33.i205, %sw.bb27.i202, %sw.bb21.i199, %sw.bb15.i196, %sw.bb9.i193, %sw.bb3.i190, %sw.bb.i188
  %arrayidx43.sink.i209 = phi ptr [ %arrayidx43.i207, %sw.bb39.i208 ], [ %arrayidx37.i204, %sw.bb33.i205 ], [ %arrayidx31.i201, %sw.bb27.i202 ], [ %arrayidx25.i198, %sw.bb21.i199 ], [ %arrayidx19.i195, %sw.bb15.i196 ], [ %arrayidx13.i192, %sw.bb9.i193 ], [ %84, %sw.bb3.i190 ], [ %82, %sw.bb.i188 ]
  %97 = ptrtoint ptr %arrayidx43.sink.i209 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx43.sink.i209, align 4
  %add44.i210 = add i32 %98, 28
  br label %sdma_v4_0_get_reg_offset.exit213

sdma_v4_0_get_reg_offset.exit213:                 ; preds = %return.sink.split.i211, %if.end53.sdma_v4_0_get_reg_offset.exit213_crit_edge
  %retval.0.i212 = phi i32 [ 0, %if.end53.sdma_v4_0_get_reg_offset.exit213_crit_edge ], [ %add44.i210, %return.sink.split.i211 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i212, i32 noundef %or46, i32 noundef 0) #10
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262658, i32 %100)
  %cmp56 = icmp eq i32 %100, 262658
  br i1 %cmp56, label %land.lhs.true57, label %sdma_v4_0_get_reg_offset.exit213.if.end64_crit_edge

sdma_v4_0_get_reg_offset.exit213.if.end64_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit213
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

land.lhs.true57:                                  ; preds = %sdma_v4_0_get_reg_offset.exit213
  %fw_version = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.0273, i32 1
  %101 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %102)
  %cmp60 = icmp ugt i32 %102, 13
  br i1 %cmp60, label %if.then61, label %land.lhs.true57.if.end64_crit_edge

land.lhs.true57.if.end64_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then61:                                        ; preds = %land.lhs.true57
  %103 = zext i32 %i.0273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %i.0273, label %if.then61.sdma_v4_0_get_reg_offset.exit240_crit_edge [
    i32 0, label %sw.bb.i215
    i32 1, label %sw.bb3.i217
    i32 2, label %sw.bb9.i220
    i32 3, label %sw.bb15.i223
    i32 4, label %sw.bb21.i226
    i32 5, label %sw.bb27.i229
    i32 6, label %sw.bb33.i232
    i32 7, label %sw.bb39.i235
  ]

if.then61.sdma_v4_0_get_reg_offset.exit240_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit240

sw.bb.i215:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i238

sw.bb3.i217:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i238

sw.bb9.i220:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i219 = getelementptr i32, ptr %109, i32 1
  br label %return.sink.split.i238

sw.bb15.i223:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i222 = getelementptr i32, ptr %111, i32 1
  br label %return.sink.split.i238

sw.bb21.i226:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i225 = getelementptr i32, ptr %113, i32 1
  br label %return.sink.split.i238

sw.bb27.i229:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i228 = getelementptr i32, ptr %115, i32 1
  br label %return.sink.split.i238

sw.bb33.i232:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i231 = getelementptr i32, ptr %117, i32 1
  br label %return.sink.split.i238

sw.bb39.i235:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i234 = getelementptr i32, ptr %119, i32 1
  br label %return.sink.split.i238

return.sink.split.i238:                           ; preds = %sw.bb39.i235, %sw.bb33.i232, %sw.bb27.i229, %sw.bb21.i226, %sw.bb15.i223, %sw.bb9.i220, %sw.bb3.i217, %sw.bb.i215
  %arrayidx43.sink.i236 = phi ptr [ %arrayidx43.i234, %sw.bb39.i235 ], [ %arrayidx37.i231, %sw.bb33.i232 ], [ %arrayidx31.i228, %sw.bb27.i229 ], [ %arrayidx25.i225, %sw.bb21.i226 ], [ %arrayidx19.i222, %sw.bb15.i223 ], [ %arrayidx13.i219, %sw.bb9.i220 ], [ %107, %sw.bb3.i217 ], [ %105, %sw.bb.i215 ]
  %120 = ptrtoint ptr %arrayidx43.sink.i236 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx43.sink.i236, align 4
  %add44.i237 = add i32 %121, 83
  br label %sdma_v4_0_get_reg_offset.exit240

sdma_v4_0_get_reg_offset.exit240:                 ; preds = %return.sink.split.i238, %if.then61.sdma_v4_0_get_reg_offset.exit240_crit_edge
  %retval.0.i239 = phi i32 [ 0, %if.then61.sdma_v4_0_get_reg_offset.exit240_crit_edge ], [ %add44.i237, %return.sink.split.i238 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i239, i32 noundef %conv, i32 noundef 0) #10
  br label %if.end64

if.end64:                                         ; preds = %sdma_v4_0_get_reg_offset.exit240, %land.lhs.true57.if.end64_crit_edge, %sdma_v4_0_get_reg_offset.exit213.if.end64_crit_edge
  %122 = zext i32 %i.0273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %i.0273, label %if.end64.sdma_v4_0_get_reg_offset.exit267_crit_edge [
    i32 0, label %sw.bb.i242
    i32 1, label %sw.bb3.i244
    i32 2, label %sw.bb9.i247
    i32 3, label %sw.bb15.i250
    i32 4, label %sw.bb21.i253
    i32 5, label %sw.bb27.i256
    i32 6, label %sw.bb33.i259
    i32 7, label %sw.bb39.i262
  ]

if.end64.sdma_v4_0_get_reg_offset.exit267_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit267

sw.bb.i242:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i265

sw.bb3.i244:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i265

sw.bb9.i247:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i246 = getelementptr i32, ptr %128, i32 1
  br label %return.sink.split.i265

sw.bb15.i250:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i249 = getelementptr i32, ptr %130, i32 1
  br label %return.sink.split.i265

sw.bb21.i253:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i252 = getelementptr i32, ptr %132, i32 1
  br label %return.sink.split.i265

sw.bb27.i256:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i255 = getelementptr i32, ptr %134, i32 1
  br label %return.sink.split.i265

sw.bb33.i259:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i258 = getelementptr i32, ptr %136, i32 1
  br label %return.sink.split.i265

sw.bb39.i262:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i261 = getelementptr i32, ptr %138, i32 1
  br label %return.sink.split.i265

return.sink.split.i265:                           ; preds = %sw.bb39.i262, %sw.bb33.i259, %sw.bb27.i256, %sw.bb21.i253, %sw.bb15.i250, %sw.bb9.i247, %sw.bb3.i244, %sw.bb.i242
  %arrayidx43.sink.i263 = phi ptr [ %arrayidx43.i261, %sw.bb39.i262 ], [ %arrayidx37.i258, %sw.bb33.i259 ], [ %arrayidx31.i255, %sw.bb27.i256 ], [ %arrayidx25.i252, %sw.bb21.i253 ], [ %arrayidx19.i249, %sw.bb15.i250 ], [ %arrayidx13.i246, %sw.bb9.i247 ], [ %126, %sw.bb3.i244 ], [ %124, %sw.bb.i242 ]
  %139 = ptrtoint ptr %arrayidx43.sink.i263 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx43.sink.i263, align 4
  %add44.i264 = add i32 %140, 71
  br label %sdma_v4_0_get_reg_offset.exit267

sdma_v4_0_get_reg_offset.exit267:                 ; preds = %return.sink.split.i265, %if.end64.sdma_v4_0_get_reg_offset.exit267_crit_edge
  %retval.0.i266 = phi i32 [ 0, %if.end64.sdma_v4_0_get_reg_offset.exit267_crit_edge ], [ %add44.i264, %return.sink.split.i265 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i266, i32 noundef 8388736, i32 noundef 0) #10
  %inc66 = add nuw nsw i32 %i.0273, 1
  %141 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_instances, align 4
  %cmp41 = icmp slt i32 %inc66, %142
  br i1 %cmp41, label %sdma_v4_0_get_reg_offset.exit267.for.body_crit_edge, label %sdma_v4_0_get_reg_offset.exit267.for.end_crit_edge

sdma_v4_0_get_reg_offset.exit267.for.end_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit267
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sdma_v4_0_get_reg_offset.exit267.for.body_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit267
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %sdma_v4_0_get_reg_offset.exit267.for.end_crit_edge, %if.end40.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdma_v4_0_enable(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp116.i = icmp sgt i32 %1, 0
  br i1 %cmp116.i, label %for.body.lr.ph.i, label %if.then.sdma_v4_0_gfx_stop.exit_crit_edge

if.then.sdma_v4_0_gfx_stop.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_gfx_stop.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %sdma1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %arrayidx41.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %arrayidx35.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %arrayidx29.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %arrayidx23.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %arrayidx17.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %arrayidx11.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %arrayidx5.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %sdma_v4_0_get_reg_offset.exit115.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %unset.0118.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %unset.1.i, %sdma_v4_0_get_reg_offset.exit115.i.for.body.i_crit_edge ]
  %i.0117.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sdma_v4_0_get_reg_offset.exit115.i.for.body.i_crit_edge ]
  %ring.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma1.i, i32 0, i32 %i.0117.i, i32 3
  %2 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp5.i = icmp eq ptr %3, %ring.i
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %unset.0118.i)
  %cmp6.not.i = icmp eq i32 %unset.0118.i, 1
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext false) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %unset.1.i = phi i32 [ 1, %if.then.i ], [ 1, %land.lhs.true.i.if.end.i_crit_edge ], [ %unset.0118.i, %for.body.i.if.end.i_crit_edge ]
  %4 = zext i32 %i.0117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %i.0117.i, label %if.end.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb9.i.i
    i32 3, label %sw.bb15.i.i
    i32 4, label %sw.bb21.i.i
    i32 5, label %sw.bb27.i.i
    i32 6, label %sw.bb33.i.i
    i32 7, label %sw.bb39.i.i
  ]

if.end.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 8
  br label %return.sink.split.i.i

sw.bb3.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i.i

sw.bb9.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i.i = getelementptr i32, ptr %10, i32 1
  br label %return.sink.split.i.i

sw.bb15.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i.i = getelementptr i32, ptr %12, i32 1
  br label %return.sink.split.i.i

sw.bb21.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i.i = getelementptr i32, ptr %14, i32 1
  br label %return.sink.split.i.i

sw.bb27.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i.i = getelementptr i32, ptr %16, i32 1
  br label %return.sink.split.i.i

sw.bb33.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i.i = getelementptr i32, ptr %18, i32 1
  br label %return.sink.split.i.i

sw.bb39.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i.i = getelementptr i32, ptr %20, i32 1
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %sw.bb39.i.i, %sw.bb33.i.i, %sw.bb27.i.i, %sw.bb21.i.i, %sw.bb15.i.i, %sw.bb9.i.i, %sw.bb3.i.i, %sw.bb.i.i
  %arrayidx43.sink.i.i = phi ptr [ %arrayidx43.i.i, %sw.bb39.i.i ], [ %arrayidx37.i.i, %sw.bb33.i.i ], [ %arrayidx31.i.i, %sw.bb27.i.i ], [ %arrayidx25.i.i, %sw.bb21.i.i ], [ %arrayidx19.i.i, %sw.bb15.i.i ], [ %arrayidx13.i.i, %sw.bb9.i.i ], [ %8, %sw.bb3.i.i ], [ %6, %sw.bb.i.i ]
  %21 = ptrtoint ptr %arrayidx43.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx43.sink.i.i, align 4
  %add44.i.i = add i32 %22, 128
  br label %sdma_v4_0_get_reg_offset.exit.i

sdma_v4_0_get_reg_offset.exit.i:                  ; preds = %return.sink.split.i.i, %if.end.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.sdma_v4_0_get_reg_offset.exit.i_crit_edge ], [ %add44.i.i, %return.sink.split.i.i ]
  %call7.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i.i, i32 noundef 0) #10
  %and.i = and i32 %call7.i, -2
  %23 = zext i32 %i.0117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %i.0117.i, label %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit61.i_crit_edge [
    i32 0, label %sw.bb.i36.i
    i32 1, label %sw.bb3.i38.i
    i32 2, label %sw.bb9.i41.i
    i32 3, label %sw.bb15.i44.i
    i32 4, label %sw.bb21.i47.i
    i32 5, label %sw.bb27.i50.i
    i32 6, label %sw.bb33.i53.i
    i32 7, label %sw.bb39.i56.i
  ]

sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit61.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit61.i

sw.bb.i36.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 8
  br label %return.sink.split.i59.i

sw.bb3.i38.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i59.i

sw.bb9.i41.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i40.i = getelementptr i32, ptr %29, i32 1
  br label %return.sink.split.i59.i

sw.bb15.i44.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i43.i = getelementptr i32, ptr %31, i32 1
  br label %return.sink.split.i59.i

sw.bb21.i47.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i46.i = getelementptr i32, ptr %33, i32 1
  br label %return.sink.split.i59.i

sw.bb27.i50.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i49.i = getelementptr i32, ptr %35, i32 1
  br label %return.sink.split.i59.i

sw.bb33.i53.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i52.i = getelementptr i32, ptr %37, i32 1
  br label %return.sink.split.i59.i

sw.bb39.i56.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i55.i = getelementptr i32, ptr %39, i32 1
  br label %return.sink.split.i59.i

return.sink.split.i59.i:                          ; preds = %sw.bb39.i56.i, %sw.bb33.i53.i, %sw.bb27.i50.i, %sw.bb21.i47.i, %sw.bb15.i44.i, %sw.bb9.i41.i, %sw.bb3.i38.i, %sw.bb.i36.i
  %arrayidx43.sink.i57.i = phi ptr [ %arrayidx43.i55.i, %sw.bb39.i56.i ], [ %arrayidx37.i52.i, %sw.bb33.i53.i ], [ %arrayidx31.i49.i, %sw.bb27.i50.i ], [ %arrayidx25.i46.i, %sw.bb21.i47.i ], [ %arrayidx19.i43.i, %sw.bb15.i44.i ], [ %arrayidx13.i40.i, %sw.bb9.i41.i ], [ %27, %sw.bb3.i38.i ], [ %25, %sw.bb.i36.i ]
  %40 = ptrtoint ptr %arrayidx43.sink.i57.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx43.sink.i57.i, align 4
  %add44.i58.i = add i32 %41, 128
  br label %sdma_v4_0_get_reg_offset.exit61.i

sdma_v4_0_get_reg_offset.exit61.i:                ; preds = %return.sink.split.i59.i, %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit61.i_crit_edge
  %retval.0.i60.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.i.sdma_v4_0_get_reg_offset.exit61.i_crit_edge ], [ %add44.i58.i, %return.sink.split.i59.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i60.i, i32 noundef %and.i, i32 noundef 0) #10
  %42 = zext i32 %i.0117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %i.0117.i, label %sdma_v4_0_get_reg_offset.exit61.i.sdma_v4_0_get_reg_offset.exit88.i_crit_edge [
    i32 0, label %sw.bb.i63.i
    i32 1, label %sw.bb3.i65.i
    i32 2, label %sw.bb9.i68.i
    i32 3, label %sw.bb15.i71.i
    i32 4, label %sw.bb21.i74.i
    i32 5, label %sw.bb27.i77.i
    i32 6, label %sw.bb33.i80.i
    i32 7, label %sw.bb39.i83.i
  ]

sdma_v4_0_get_reg_offset.exit61.i.sdma_v4_0_get_reg_offset.exit88.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit88.i

sw.bb.i63.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 8
  br label %return.sink.split.i86.i

sw.bb3.i65.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i86.i

sw.bb9.i68.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i67.i = getelementptr i32, ptr %48, i32 1
  br label %return.sink.split.i86.i

sw.bb15.i71.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i70.i = getelementptr i32, ptr %50, i32 1
  br label %return.sink.split.i86.i

sw.bb21.i74.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i73.i = getelementptr i32, ptr %52, i32 1
  br label %return.sink.split.i86.i

sw.bb27.i77.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i76.i = getelementptr i32, ptr %54, i32 1
  br label %return.sink.split.i86.i

sw.bb33.i80.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i79.i = getelementptr i32, ptr %56, i32 1
  br label %return.sink.split.i86.i

sw.bb39.i83.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i82.i = getelementptr i32, ptr %58, i32 1
  br label %return.sink.split.i86.i

return.sink.split.i86.i:                          ; preds = %sw.bb39.i83.i, %sw.bb33.i80.i, %sw.bb27.i77.i, %sw.bb21.i74.i, %sw.bb15.i71.i, %sw.bb9.i68.i, %sw.bb3.i65.i, %sw.bb.i63.i
  %arrayidx43.sink.i84.i = phi ptr [ %arrayidx43.i82.i, %sw.bb39.i83.i ], [ %arrayidx37.i79.i, %sw.bb33.i80.i ], [ %arrayidx31.i76.i, %sw.bb27.i77.i ], [ %arrayidx25.i73.i, %sw.bb21.i74.i ], [ %arrayidx19.i70.i, %sw.bb15.i71.i ], [ %arrayidx13.i67.i, %sw.bb9.i68.i ], [ %46, %sw.bb3.i65.i ], [ %44, %sw.bb.i63.i ]
  %59 = ptrtoint ptr %arrayidx43.sink.i84.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx43.sink.i84.i, align 4
  %add44.i85.i = add i32 %60, 138
  br label %sdma_v4_0_get_reg_offset.exit88.i

sdma_v4_0_get_reg_offset.exit88.i:                ; preds = %return.sink.split.i86.i, %sdma_v4_0_get_reg_offset.exit61.i.sdma_v4_0_get_reg_offset.exit88.i_crit_edge
  %retval.0.i87.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit61.i.sdma_v4_0_get_reg_offset.exit88.i_crit_edge ], [ %add44.i85.i, %return.sink.split.i86.i ]
  %call10.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i87.i, i32 noundef 0) #10
  %and11.i = and i32 %call10.i, -2
  %61 = zext i32 %i.0117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %i.0117.i, label %sdma_v4_0_get_reg_offset.exit88.i.sdma_v4_0_get_reg_offset.exit115.i_crit_edge [
    i32 0, label %sw.bb.i90.i
    i32 1, label %sw.bb3.i92.i
    i32 2, label %sw.bb9.i95.i
    i32 3, label %sw.bb15.i98.i
    i32 4, label %sw.bb21.i101.i
    i32 5, label %sw.bb27.i104.i
    i32 6, label %sw.bb33.i107.i
    i32 7, label %sw.bb39.i110.i
  ]

sdma_v4_0_get_reg_offset.exit88.i.sdma_v4_0_get_reg_offset.exit115.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit115.i

sw.bb.i90.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 8
  br label %return.sink.split.i113.i

sw.bb3.i92.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx5.i.i, align 8
  br label %return.sink.split.i113.i

sw.bb9.i95.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx11.i.i, align 8
  %arrayidx13.i94.i = getelementptr i32, ptr %67, i32 1
  br label %return.sink.split.i113.i

sw.bb15.i98.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx17.i.i, align 8
  %arrayidx19.i97.i = getelementptr i32, ptr %69, i32 1
  br label %return.sink.split.i113.i

sw.bb21.i101.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx23.i.i, align 8
  %arrayidx25.i100.i = getelementptr i32, ptr %71, i32 1
  br label %return.sink.split.i113.i

sw.bb27.i104.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx29.i.i, align 8
  %arrayidx31.i103.i = getelementptr i32, ptr %73, i32 1
  br label %return.sink.split.i113.i

sw.bb33.i107.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx35.i.i, align 8
  %arrayidx37.i106.i = getelementptr i32, ptr %75, i32 1
  br label %return.sink.split.i113.i

sw.bb39.i110.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx41.i.i, align 8
  %arrayidx43.i109.i = getelementptr i32, ptr %77, i32 1
  br label %return.sink.split.i113.i

return.sink.split.i113.i:                         ; preds = %sw.bb39.i110.i, %sw.bb33.i107.i, %sw.bb27.i104.i, %sw.bb21.i101.i, %sw.bb15.i98.i, %sw.bb9.i95.i, %sw.bb3.i92.i, %sw.bb.i90.i
  %arrayidx43.sink.i111.i = phi ptr [ %arrayidx43.i109.i, %sw.bb39.i110.i ], [ %arrayidx37.i106.i, %sw.bb33.i107.i ], [ %arrayidx31.i103.i, %sw.bb27.i104.i ], [ %arrayidx25.i100.i, %sw.bb21.i101.i ], [ %arrayidx19.i97.i, %sw.bb15.i98.i ], [ %arrayidx13.i94.i, %sw.bb9.i95.i ], [ %65, %sw.bb3.i92.i ], [ %63, %sw.bb.i90.i ]
  %78 = ptrtoint ptr %arrayidx43.sink.i111.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx43.sink.i111.i, align 4
  %add44.i112.i = add i32 %79, 138
  br label %sdma_v4_0_get_reg_offset.exit115.i

sdma_v4_0_get_reg_offset.exit115.i:               ; preds = %return.sink.split.i113.i, %sdma_v4_0_get_reg_offset.exit88.i.sdma_v4_0_get_reg_offset.exit115.i_crit_edge
  %retval.0.i114.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit88.i.sdma_v4_0_get_reg_offset.exit115.i_crit_edge ], [ %add44.i112.i, %return.sink.split.i113.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i114.i, i32 noundef %and11.i, i32 noundef 0) #10
  %inc.i = add nuw nsw i32 %i.0117.i, 1
  %80 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %81
  br i1 %cmp.i, label %sdma_v4_0_get_reg_offset.exit115.i.for.body.i_crit_edge, label %sdma_v4_0_get_reg_offset.exit115.i.sdma_v4_0_gfx_stop.exit_crit_edge

sdma_v4_0_get_reg_offset.exit115.i.sdma_v4_0_gfx_stop.exit_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_gfx_stop.exit

sdma_v4_0_get_reg_offset.exit115.i.for.body.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sdma_v4_0_gfx_stop.exit:                          ; preds = %sdma_v4_0_get_reg_offset.exit115.i.sdma_v4_0_gfx_stop.exit_crit_edge, %if.then.sdma_v4_0_gfx_stop.exit_crit_edge
  %has_page_queue = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 10
  %82 = ptrtoint ptr %has_page_queue to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %has_page_queue, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool1.not = icmp eq i8 %83, 0
  br i1 %tobool1.not, label %sdma_v4_0_gfx_stop.exit.if.end3_crit_edge, label %if.then2

sdma_v4_0_gfx_stop.exit.if.end3_crit_edge:        ; preds = %sdma_v4_0_gfx_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %sdma_v4_0_gfx_stop.exit
  %84 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp117.i = icmp sgt i32 %85, 0
  br i1 %cmp117.i, label %for.body.lr.ph.i33, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

for.body.lr.ph.i33:                               ; preds = %if.then2
  %sdma1.i23 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107
  %buffer_funcs_ring.i24 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %arrayidx41.i.i25 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %arrayidx35.i.i26 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %arrayidx29.i.i27 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %arrayidx23.i.i28 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %arrayidx17.i.i29 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %arrayidx11.i.i30 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %arrayidx5.i.i31 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %arrayidx.i.i32 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  br label %for.body.i35

for.body.i35:                                     ; preds = %sdma_v4_0_get_reg_offset.exit116.i.for.body.i35_crit_edge, %for.body.lr.ph.i33
  %unset.0.off0119.i = phi i1 [ false, %for.body.lr.ph.i33 ], [ %unset.1.off0.i, %sdma_v4_0_get_reg_offset.exit116.i.for.body.i35_crit_edge ]
  %i.0118.i = phi i32 [ 0, %for.body.lr.ph.i33 ], [ %inc.i58, %sdma_v4_0_get_reg_offset.exit116.i.for.body.i35_crit_edge ]
  %page.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma1.i23, i32 0, i32 %i.0118.i, i32 4
  %86 = ptrtoint ptr %buffer_funcs_ring.i24 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buffer_funcs_ring.i24, align 4
  %cmp5.i34 = icmp ne ptr %87, %page.i
  %brmerge.i = select i1 %cmp5.i34, i1 true, i1 %unset.0.off0119.i
  br i1 %brmerge.i, label %for.body.i35.if.end.i37_crit_edge, label %if.then.i36

for.body.i35.if.end.i37_crit_edge:                ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i37

if.then.i36:                                      ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext false) #10
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.then.i36, %for.body.i35.if.end.i37_crit_edge
  %unset.1.off0.i = phi i1 [ true, %if.then.i36 ], [ %unset.0.off0119.i, %for.body.i35.if.end.i37_crit_edge ]
  %88 = zext i32 %i.0118.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %i.0118.i, label %if.end.i37.sdma_v4_0_get_reg_offset.exit.i57_crit_edge [
    i32 0, label %sw.bb.i.i38
    i32 1, label %sw.bb3.i.i39
    i32 2, label %sw.bb9.i.i41
    i32 3, label %sw.bb15.i.i43
    i32 4, label %sw.bb21.i.i45
    i32 5, label %sw.bb27.i.i47
    i32 6, label %sw.bb33.i.i49
    i32 7, label %sw.bb39.i.i51
  ]

if.end.i37.sdma_v4_0_get_reg_offset.exit.i57_crit_edge: ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit.i57

sw.bb.i.i38:                                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i32, align 8
  br label %return.sink.split.i.i54

sw.bb3.i.i39:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %arrayidx5.i.i31 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx5.i.i31, align 8
  br label %return.sink.split.i.i54

sw.bb9.i.i41:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %arrayidx11.i.i30 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx11.i.i30, align 8
  %arrayidx13.i.i40 = getelementptr i32, ptr %94, i32 1
  br label %return.sink.split.i.i54

sw.bb15.i.i43:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %arrayidx17.i.i29 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx17.i.i29, align 8
  %arrayidx19.i.i42 = getelementptr i32, ptr %96, i32 1
  br label %return.sink.split.i.i54

sw.bb21.i.i45:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %arrayidx23.i.i28 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx23.i.i28, align 8
  %arrayidx25.i.i44 = getelementptr i32, ptr %98, i32 1
  br label %return.sink.split.i.i54

sw.bb27.i.i47:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %arrayidx29.i.i27 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx29.i.i27, align 8
  %arrayidx31.i.i46 = getelementptr i32, ptr %100, i32 1
  br label %return.sink.split.i.i54

sw.bb33.i.i49:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %arrayidx35.i.i26 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx35.i.i26, align 8
  %arrayidx37.i.i48 = getelementptr i32, ptr %102, i32 1
  br label %return.sink.split.i.i54

sw.bb39.i.i51:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %arrayidx41.i.i25 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx41.i.i25, align 8
  %arrayidx43.i.i50 = getelementptr i32, ptr %104, i32 1
  br label %return.sink.split.i.i54

return.sink.split.i.i54:                          ; preds = %sw.bb39.i.i51, %sw.bb33.i.i49, %sw.bb27.i.i47, %sw.bb21.i.i45, %sw.bb15.i.i43, %sw.bb9.i.i41, %sw.bb3.i.i39, %sw.bb.i.i38
  %arrayidx43.sink.i.i52 = phi ptr [ %arrayidx43.i.i50, %sw.bb39.i.i51 ], [ %arrayidx37.i.i48, %sw.bb33.i.i49 ], [ %arrayidx31.i.i46, %sw.bb27.i.i47 ], [ %arrayidx25.i.i44, %sw.bb21.i.i45 ], [ %arrayidx19.i.i42, %sw.bb15.i.i43 ], [ %arrayidx13.i.i40, %sw.bb9.i.i41 ], [ %92, %sw.bb3.i.i39 ], [ %90, %sw.bb.i.i38 ]
  %105 = ptrtoint ptr %arrayidx43.sink.i.i52 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx43.sink.i.i52, align 4
  %add44.i.i53 = add i32 %106, 224
  br label %sdma_v4_0_get_reg_offset.exit.i57

sdma_v4_0_get_reg_offset.exit.i57:                ; preds = %return.sink.split.i.i54, %if.end.i37.sdma_v4_0_get_reg_offset.exit.i57_crit_edge
  %retval.0.i.i55 = phi i32 [ 0, %if.end.i37.sdma_v4_0_get_reg_offset.exit.i57_crit_edge ], [ %add44.i.i53, %return.sink.split.i.i54 ]
  %call6.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i.i55, i32 noundef 0) #10
  %and.i56 = and i32 %call6.i, -2
  %107 = zext i32 %i.0118.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %i.0118.i, label %sdma_v4_0_get_reg_offset.exit.i57.sdma_v4_0_get_reg_offset.exit62.i_crit_edge [
    i32 0, label %sw.bb.i37.i
    i32 1, label %sw.bb3.i39.i
    i32 2, label %sw.bb9.i42.i
    i32 3, label %sw.bb15.i45.i
    i32 4, label %sw.bb21.i48.i
    i32 5, label %sw.bb27.i51.i
    i32 6, label %sw.bb33.i54.i
    i32 7, label %sw.bb39.i57.i
  ]

sdma_v4_0_get_reg_offset.exit.i57.sdma_v4_0_get_reg_offset.exit62.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit62.i

sw.bb.i37.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i32, align 8
  br label %return.sink.split.i60.i

sw.bb3.i39.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %arrayidx5.i.i31 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx5.i.i31, align 8
  br label %return.sink.split.i60.i

sw.bb9.i42.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %arrayidx11.i.i30 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx11.i.i30, align 8
  %arrayidx13.i41.i = getelementptr i32, ptr %113, i32 1
  br label %return.sink.split.i60.i

sw.bb15.i45.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %arrayidx17.i.i29 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx17.i.i29, align 8
  %arrayidx19.i44.i = getelementptr i32, ptr %115, i32 1
  br label %return.sink.split.i60.i

sw.bb21.i48.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %arrayidx23.i.i28 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx23.i.i28, align 8
  %arrayidx25.i47.i = getelementptr i32, ptr %117, i32 1
  br label %return.sink.split.i60.i

sw.bb27.i51.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %arrayidx29.i.i27 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx29.i.i27, align 8
  %arrayidx31.i50.i = getelementptr i32, ptr %119, i32 1
  br label %return.sink.split.i60.i

sw.bb33.i54.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %arrayidx35.i.i26 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx35.i.i26, align 8
  %arrayidx37.i53.i = getelementptr i32, ptr %121, i32 1
  br label %return.sink.split.i60.i

sw.bb39.i57.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit.i57
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %arrayidx41.i.i25 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx41.i.i25, align 8
  %arrayidx43.i56.i = getelementptr i32, ptr %123, i32 1
  br label %return.sink.split.i60.i

return.sink.split.i60.i:                          ; preds = %sw.bb39.i57.i, %sw.bb33.i54.i, %sw.bb27.i51.i, %sw.bb21.i48.i, %sw.bb15.i45.i, %sw.bb9.i42.i, %sw.bb3.i39.i, %sw.bb.i37.i
  %arrayidx43.sink.i58.i = phi ptr [ %arrayidx43.i56.i, %sw.bb39.i57.i ], [ %arrayidx37.i53.i, %sw.bb33.i54.i ], [ %arrayidx31.i50.i, %sw.bb27.i51.i ], [ %arrayidx25.i47.i, %sw.bb21.i48.i ], [ %arrayidx19.i44.i, %sw.bb15.i45.i ], [ %arrayidx13.i41.i, %sw.bb9.i42.i ], [ %111, %sw.bb3.i39.i ], [ %109, %sw.bb.i37.i ]
  %124 = ptrtoint ptr %arrayidx43.sink.i58.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx43.sink.i58.i, align 4
  %add44.i59.i = add i32 %125, 224
  br label %sdma_v4_0_get_reg_offset.exit62.i

sdma_v4_0_get_reg_offset.exit62.i:                ; preds = %return.sink.split.i60.i, %sdma_v4_0_get_reg_offset.exit.i57.sdma_v4_0_get_reg_offset.exit62.i_crit_edge
  %retval.0.i61.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.i57.sdma_v4_0_get_reg_offset.exit62.i_crit_edge ], [ %add44.i59.i, %return.sink.split.i60.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i61.i, i32 noundef %and.i56, i32 noundef 0) #10
  %126 = zext i32 %i.0118.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %i.0118.i, label %sdma_v4_0_get_reg_offset.exit62.i.sdma_v4_0_get_reg_offset.exit89.i_crit_edge [
    i32 0, label %sw.bb.i64.i
    i32 1, label %sw.bb3.i66.i
    i32 2, label %sw.bb9.i69.i
    i32 3, label %sw.bb15.i72.i
    i32 4, label %sw.bb21.i75.i
    i32 5, label %sw.bb27.i78.i
    i32 6, label %sw.bb33.i81.i
    i32 7, label %sw.bb39.i84.i
  ]

sdma_v4_0_get_reg_offset.exit62.i.sdma_v4_0_get_reg_offset.exit89.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit89.i

sw.bb.i64.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i.i32, align 8
  br label %return.sink.split.i87.i

sw.bb3.i66.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %arrayidx5.i.i31 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx5.i.i31, align 8
  br label %return.sink.split.i87.i

sw.bb9.i69.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %arrayidx11.i.i30 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx11.i.i30, align 8
  %arrayidx13.i68.i = getelementptr i32, ptr %132, i32 1
  br label %return.sink.split.i87.i

sw.bb15.i72.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %arrayidx17.i.i29 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx17.i.i29, align 8
  %arrayidx19.i71.i = getelementptr i32, ptr %134, i32 1
  br label %return.sink.split.i87.i

sw.bb21.i75.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %arrayidx23.i.i28 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx23.i.i28, align 8
  %arrayidx25.i74.i = getelementptr i32, ptr %136, i32 1
  br label %return.sink.split.i87.i

sw.bb27.i78.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %arrayidx29.i.i27 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx29.i.i27, align 8
  %arrayidx31.i77.i = getelementptr i32, ptr %138, i32 1
  br label %return.sink.split.i87.i

sw.bb33.i81.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %arrayidx35.i.i26 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx35.i.i26, align 8
  %arrayidx37.i80.i = getelementptr i32, ptr %140, i32 1
  br label %return.sink.split.i87.i

sw.bb39.i84.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %arrayidx41.i.i25 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx41.i.i25, align 8
  %arrayidx43.i83.i = getelementptr i32, ptr %142, i32 1
  br label %return.sink.split.i87.i

return.sink.split.i87.i:                          ; preds = %sw.bb39.i84.i, %sw.bb33.i81.i, %sw.bb27.i78.i, %sw.bb21.i75.i, %sw.bb15.i72.i, %sw.bb9.i69.i, %sw.bb3.i66.i, %sw.bb.i64.i
  %arrayidx43.sink.i85.i = phi ptr [ %arrayidx43.i83.i, %sw.bb39.i84.i ], [ %arrayidx37.i80.i, %sw.bb33.i81.i ], [ %arrayidx31.i77.i, %sw.bb27.i78.i ], [ %arrayidx25.i74.i, %sw.bb21.i75.i ], [ %arrayidx19.i71.i, %sw.bb15.i72.i ], [ %arrayidx13.i68.i, %sw.bb9.i69.i ], [ %130, %sw.bb3.i66.i ], [ %128, %sw.bb.i64.i ]
  %143 = ptrtoint ptr %arrayidx43.sink.i85.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx43.sink.i85.i, align 4
  %add44.i86.i = add i32 %144, 234
  br label %sdma_v4_0_get_reg_offset.exit89.i

sdma_v4_0_get_reg_offset.exit89.i:                ; preds = %return.sink.split.i87.i, %sdma_v4_0_get_reg_offset.exit62.i.sdma_v4_0_get_reg_offset.exit89.i_crit_edge
  %retval.0.i88.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit62.i.sdma_v4_0_get_reg_offset.exit89.i_crit_edge ], [ %add44.i86.i, %return.sink.split.i87.i ]
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i88.i, i32 noundef 0) #10
  %and10.i = and i32 %call9.i, -2
  %145 = zext i32 %i.0118.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %i.0118.i, label %sdma_v4_0_get_reg_offset.exit89.i.sdma_v4_0_get_reg_offset.exit116.i_crit_edge [
    i32 0, label %sw.bb.i91.i
    i32 1, label %sw.bb3.i93.i
    i32 2, label %sw.bb9.i96.i
    i32 3, label %sw.bb15.i99.i
    i32 4, label %sw.bb21.i102.i
    i32 5, label %sw.bb27.i105.i
    i32 6, label %sw.bb33.i108.i
    i32 7, label %sw.bb39.i111.i
  ]

sdma_v4_0_get_reg_offset.exit89.i.sdma_v4_0_get_reg_offset.exit116.i_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit116.i

sw.bb.i91.i:                                      ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i.i32, align 8
  br label %return.sink.split.i114.i

sw.bb3.i93.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %arrayidx5.i.i31 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx5.i.i31, align 8
  br label %return.sink.split.i114.i

sw.bb9.i96.i:                                     ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %arrayidx11.i.i30 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx11.i.i30, align 8
  %arrayidx13.i95.i = getelementptr i32, ptr %151, i32 1
  br label %return.sink.split.i114.i

sw.bb15.i99.i:                                    ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %arrayidx17.i.i29 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx17.i.i29, align 8
  %arrayidx19.i98.i = getelementptr i32, ptr %153, i32 1
  br label %return.sink.split.i114.i

sw.bb21.i102.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  %154 = ptrtoint ptr %arrayidx23.i.i28 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx23.i.i28, align 8
  %arrayidx25.i101.i = getelementptr i32, ptr %155, i32 1
  br label %return.sink.split.i114.i

sw.bb27.i105.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %arrayidx29.i.i27 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx29.i.i27, align 8
  %arrayidx31.i104.i = getelementptr i32, ptr %157, i32 1
  br label %return.sink.split.i114.i

sw.bb33.i108.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %arrayidx35.i.i26 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx35.i.i26, align 8
  %arrayidx37.i107.i = getelementptr i32, ptr %159, i32 1
  br label %return.sink.split.i114.i

sw.bb39.i111.i:                                   ; preds = %sdma_v4_0_get_reg_offset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %arrayidx41.i.i25 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx41.i.i25, align 8
  %arrayidx43.i110.i = getelementptr i32, ptr %161, i32 1
  br label %return.sink.split.i114.i

return.sink.split.i114.i:                         ; preds = %sw.bb39.i111.i, %sw.bb33.i108.i, %sw.bb27.i105.i, %sw.bb21.i102.i, %sw.bb15.i99.i, %sw.bb9.i96.i, %sw.bb3.i93.i, %sw.bb.i91.i
  %arrayidx43.sink.i112.i = phi ptr [ %arrayidx43.i110.i, %sw.bb39.i111.i ], [ %arrayidx37.i107.i, %sw.bb33.i108.i ], [ %arrayidx31.i104.i, %sw.bb27.i105.i ], [ %arrayidx25.i101.i, %sw.bb21.i102.i ], [ %arrayidx19.i98.i, %sw.bb15.i99.i ], [ %arrayidx13.i95.i, %sw.bb9.i96.i ], [ %149, %sw.bb3.i93.i ], [ %147, %sw.bb.i91.i ]
  %162 = ptrtoint ptr %arrayidx43.sink.i112.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx43.sink.i112.i, align 4
  %add44.i113.i = add i32 %163, 234
  br label %sdma_v4_0_get_reg_offset.exit116.i

sdma_v4_0_get_reg_offset.exit116.i:               ; preds = %return.sink.split.i114.i, %sdma_v4_0_get_reg_offset.exit89.i.sdma_v4_0_get_reg_offset.exit116.i_crit_edge
  %retval.0.i115.i = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit89.i.sdma_v4_0_get_reg_offset.exit116.i_crit_edge ], [ %add44.i113.i, %return.sink.split.i114.i ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i115.i, i32 noundef %and10.i, i32 noundef 0) #10
  %inc.i58 = add nuw nsw i32 %i.0118.i, 1
  %164 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %num_instances.i, align 4
  %cmp.i59 = icmp slt i32 %inc.i58, %165
  br i1 %cmp.i59, label %sdma_v4_0_get_reg_offset.exit116.i.for.body.i35_crit_edge, label %sdma_v4_0_get_reg_offset.exit116.i.if.end3_crit_edge

sdma_v4_0_get_reg_offset.exit116.i.if.end3_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

sdma_v4_0_get_reg_offset.exit116.i.for.body.i35_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i35

if.end3:                                          ; preds = %sdma_v4_0_get_reg_offset.exit116.i.if.end3_crit_edge, %if.then2.if.end3_crit_edge, %sdma_v4_0_gfx_stop.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %166 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp87 = icmp sgt i32 %167, 0
  br i1 %cmp87, label %for.body.lr.ph, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %arrayidx41.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 10
  %arrayidx35.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 9
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 8
  %arrayidx23.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 7
  %arrayidx17.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 6
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 5
  %arrayidx5.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 3
  %not.enable = xor i1 %enable, true
  %cond = zext i1 %not.enable to i32
  br label %for.body

for.body:                                         ; preds = %sdma_v4_0_get_reg_offset.exit86.for.body_crit_edge, %for.body.lr.ph
  %i.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sdma_v4_0_get_reg_offset.exit86.for.body_crit_edge ]
  %168 = zext i32 %i.088 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %i.088, label %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
    i32 4, label %sw.bb21.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb33.i
    i32 7, label %sw.bb39.i
  ]

for.body.sdma_v4_0_get_reg_offset.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i

sw.bb9.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %174, i32 1
  br label %return.sink.split.i

sw.bb15.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i32, ptr %176, i32 1
  br label %return.sink.split.i

sw.bb21.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %178, i32 1
  br label %return.sink.split.i

sw.bb27.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %180, i32 1
  br label %return.sink.split.i

sw.bb33.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i = getelementptr i32, ptr %182, i32 1
  br label %return.sink.split.i

sw.bb39.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i = getelementptr i32, ptr %184, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb39.i, %sw.bb33.i, %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i
  %arrayidx43.sink.i = phi ptr [ %arrayidx43.i, %sw.bb39.i ], [ %arrayidx37.i, %sw.bb33.i ], [ %arrayidx31.i, %sw.bb27.i ], [ %arrayidx25.i, %sw.bb21.i ], [ %arrayidx19.i, %sw.bb15.i ], [ %arrayidx13.i, %sw.bb9.i ], [ %172, %sw.bb3.i ], [ %170, %sw.bb.i ]
  %185 = ptrtoint ptr %arrayidx43.sink.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx43.sink.i, align 4
  %add44.i = add i32 %186, 42
  br label %sdma_v4_0_get_reg_offset.exit

sdma_v4_0_get_reg_offset.exit:                    ; preds = %return.sink.split.i, %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.sdma_v4_0_get_reg_offset.exit_crit_edge ], [ %add44.i, %return.sink.split.i ]
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %retval.0.i, i32 noundef 0) #10
  %and = and i32 %call5, -2
  %or = or i32 %and, %cond
  %187 = zext i32 %i.088 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %i.088, label %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit86_crit_edge [
    i32 0, label %sw.bb.i61
    i32 1, label %sw.bb3.i63
    i32 2, label %sw.bb9.i66
    i32 3, label %sw.bb15.i69
    i32 4, label %sw.bb21.i72
    i32 5, label %sw.bb27.i75
    i32 6, label %sw.bb33.i78
    i32 7, label %sw.bb39.i81
  ]

sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit86_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdma_v4_0_get_reg_offset.exit86

sw.bb.i61:                                        ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i, align 8
  br label %return.sink.split.i84

sw.bb3.i63:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %190 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx5.i, align 8
  br label %return.sink.split.i84

sw.bb9.i66:                                       ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i65 = getelementptr i32, ptr %193, i32 1
  br label %return.sink.split.i84

sw.bb15.i69:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx17.i, align 8
  %arrayidx19.i68 = getelementptr i32, ptr %195, i32 1
  br label %return.sink.split.i84

sw.bb21.i72:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx23.i, align 8
  %arrayidx25.i71 = getelementptr i32, ptr %197, i32 1
  br label %return.sink.split.i84

sw.bb27.i75:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx29.i, align 8
  %arrayidx31.i74 = getelementptr i32, ptr %199, i32 1
  br label %return.sink.split.i84

sw.bb33.i78:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx35.i, align 8
  %arrayidx37.i77 = getelementptr i32, ptr %201, i32 1
  br label %return.sink.split.i84

sw.bb39.i81:                                      ; preds = %sdma_v4_0_get_reg_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx41.i, align 8
  %arrayidx43.i80 = getelementptr i32, ptr %203, i32 1
  br label %return.sink.split.i84

return.sink.split.i84:                            ; preds = %sw.bb39.i81, %sw.bb33.i78, %sw.bb27.i75, %sw.bb21.i72, %sw.bb15.i69, %sw.bb9.i66, %sw.bb3.i63, %sw.bb.i61
  %arrayidx43.sink.i82 = phi ptr [ %arrayidx43.i80, %sw.bb39.i81 ], [ %arrayidx37.i77, %sw.bb33.i78 ], [ %arrayidx31.i74, %sw.bb27.i75 ], [ %arrayidx25.i71, %sw.bb21.i72 ], [ %arrayidx19.i68, %sw.bb15.i69 ], [ %arrayidx13.i65, %sw.bb9.i66 ], [ %191, %sw.bb3.i63 ], [ %189, %sw.bb.i61 ]
  %204 = ptrtoint ptr %arrayidx43.sink.i82 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx43.sink.i82, align 4
  %add44.i83 = add i32 %205, 42
  br label %sdma_v4_0_get_reg_offset.exit86

sdma_v4_0_get_reg_offset.exit86:                  ; preds = %return.sink.split.i84, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit86_crit_edge
  %retval.0.i85 = phi i32 [ 0, %sdma_v4_0_get_reg_offset.exit.sdma_v4_0_get_reg_offset.exit86_crit_edge ], [ %add44.i83, %return.sink.split.i84 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %retval.0.i85, i32 noundef %or, i32 noundef 0) #10
  %inc = add nuw nsw i32 %i.088, 1
  %206 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %207
  br i1 %cmp, label %sdma_v4_0_get_reg_offset.exit86.for.body_crit_edge, label %sdma_v4_0_get_reg_offset.exit86.for.end_crit_edge

sdma_v4_0_get_reg_offset.exit86.for.end_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sdma_v4_0_get_reg_offset.exit86.for.body_crit_edge: ; preds = %sdma_v4_0_get_reg_offset.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %sdma_v4_0_get_reg_offset.exit86.for.end_crit_edge, %if.end3.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_sdma_hdr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !135, !137, !139, !140, !141, !142, !143, !145, !147, !148, !149, !150, !151, !153, !155, !156, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @__UNIQUE_ID_firmware390, !1, !"__UNIQUE_ID_firmware390", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 61, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware391, !3, !"__UNIQUE_ID_firmware391", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 62, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware392, !5, !"__UNIQUE_ID_firmware392", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 63, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware393, !7, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 64, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware394, !9, !"__UNIQUE_ID_firmware394", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 65, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware395, !11, !"__UNIQUE_ID_firmware395", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 66, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware396, !13, !"__UNIQUE_ID_firmware396", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 67, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware397, !15, !"__UNIQUE_ID_firmware397", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 68, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware398, !17, !"__UNIQUE_ID_firmware398", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 69, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware399, !19, !"__UNIQUE_ID_firmware399", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 70, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware400, !21, !"__UNIQUE_ID_firmware400", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 71, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware401, !23, !"__UNIQUE_ID_firmware401", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 72, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware402, !25, !"__UNIQUE_ID_firmware402", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 73, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2404, i32 10}
!28 = !{ptr @sdma_v4_0_ip_funcs, !29, !"sdma_v4_0_ip_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2403, i32 27}
!30 = !{ptr @sdma_v4_0_ip_block, !31, !"sdma_v4_0_ip_block", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2806, i32 38}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 1861, i32 3}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 622, i32 2}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 626, i32 15}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 629, i32 15}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 632, i32 15}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 637, i32 16}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 639, i32 16}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 641, i32 16}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 644, i32 15}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 648, i32 16}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 650, i32 16}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 653, i32 15}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 659, i32 37}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 679, i32 39}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 691, i32 2}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 707, i32 3}
!66 = !{ptr @sdma_v4_0_ring_funcs_2nd_mmhub, !67, !"sdma_v4_0_ring_funcs_2nd_mmhub", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2457, i32 39}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 727, i32 2}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 746, i32 3}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 751, i32 3}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 769, i32 2}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 773, i32 3}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 782, i32 3}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 786, i32 3}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!84 = !{ptr @sdma_v4_0_ring_funcs, !85, !"sdma_v4_0_ring_funcs", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2421, i32 39}
!86 = !{ptr @sdma_v4_0_page_ring_funcs_2nd_mmhub, !87, !"sdma_v4_0_page_ring_funcs_2nd_mmhub", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2521, i32 39}
!88 = !{ptr @sdma_v4_0_page_ring_funcs, !89, !"sdma_v4_0_page_ring_funcs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2489, i32 39}
!90 = !{ptr @sdma_v4_0_buffer_funcs, !91, !"sdma_v4_0_buffer_funcs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2684, i32 41}
!92 = !{ptr @sdma_v4_0_vm_pte_funcs, !93, !"sdma_v4_0_vm_pte_funcs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2703, i32 41}
!94 = !{ptr @sdma_v4_0_trap_irq_funcs, !95, !"sdma_v4_0_trap_irq_funcs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2577, i32 42}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2140, i32 2}
!98 = !{ptr @sdma_v4_0_illegal_inst_irq_funcs, !99, !"sdma_v4_0_illegal_inst_irq_funcs", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2582, i32 42}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2190, i32 2}
!102 = !{ptr @sdma_v4_0_ecc_irq_funcs, !103, !"sdma_v4_0_ecc_irq_funcs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2586, i32 42}
!104 = !{ptr @sdma_v4_0_vm_hole_irq_funcs, !105, !"sdma_v4_0_vm_hole_irq_funcs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2591, i32 42}
!106 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2251, i32 2}
!108 = !{ptr @sdma_v4_0_process_vm_hole_irq._rs, !107, !"_rs", i1 false, i1 false}
!109 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sdma_v4_0_process_vm_hole_irq.descriptor, !107, !"descriptor", i1 false, i1 false}
!114 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2228, i32 3}
!117 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @sdma_v4_0_print_iv_entry._entry, !116, !"_entry", i1 false, i1 false}
!121 = !{ptr @sdma_v4_0_print_iv_entry._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @sdma_v4_0_print_iv_entry._rs, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2238, i32 2}
!124 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sdma_v4_0_print_iv_entry.descriptor, !123, !"descriptor", i1 false, i1 false}
!126 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sdma_v4_0_doorbell_invalid_irq_funcs, !128, !"sdma_v4_0_doorbell_invalid_irq_funcs", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2595, i32 42}
!129 = !{ptr @sdma_v4_0_process_doorbell_invalid_irq._rs, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2260, i32 2}
!131 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @sdma_v4_0_process_doorbell_invalid_irq.descriptor, !130, !"descriptor", i1 false, i1 false}
!134 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @sdma_v4_0_pool_timeout_irq_funcs, !136, !"sdma_v4_0_pool_timeout_irq_funcs", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2599, i32 42}
!137 = !{ptr @sdma_v4_0_process_pool_timeout_irq._rs, !138, !"_rs", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2269, i32 2}
!139 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @sdma_v4_0_process_pool_timeout_irq.descriptor, !138, !"descriptor", i1 false, i1 false}
!142 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @sdma_v4_0_srbm_write_irq_funcs, !144, !"sdma_v4_0_srbm_write_irq_funcs", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2603, i32 42}
!145 = !{ptr @sdma_v4_0_process_srbm_write_irq._rs, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2279, i32 2}
!147 = !{ptr @.str.47, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.48, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @sdma_v4_0_process_srbm_write_irq.descriptor, !146, !"descriptor", i1 false, i1 false}
!150 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @sdma_v4_0_ras_funcs, !152, !"sdma_v4_0_ras_funcs", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2784, i32 43}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 2743, i32 4}
!155 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @sdma_v4_0_get_ras_error_count._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @sdma_v4_0_get_ras_error_count._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 296, i32 4}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 300, i32 4}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 304, i32 4}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 308, i32 4}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 312, i32 4}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 316, i32 4}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 320, i32 4}
!172 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 324, i32 4}
!174 = !{ptr @.str.60, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 328, i32 4}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 332, i32 4}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 336, i32 4}
!180 = !{ptr @.str.63, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 340, i32 4}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 344, i32 4}
!184 = !{ptr @.str.65, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 348, i32 4}
!186 = !{ptr @.str.66, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 352, i32 4}
!188 = !{ptr @.str.67, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 356, i32 4}
!190 = !{ptr @.str.68, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 360, i32 4}
!192 = !{ptr @.str.69, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 364, i32 4}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 368, i32 4}
!196 = !{ptr @.str.71, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 372, i32 4}
!198 = !{ptr @.str.72, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 376, i32 4}
!200 = !{ptr @.str.73, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 380, i32 4}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 384, i32 4}
!204 = !{ptr @.str.75, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 388, i32 4}
!206 = !{ptr @sdma_v4_0_ras_fields, !207, !"sdma_v4_0_ras_fields", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 295, i32 43}
!208 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 1962, i32 3}
!210 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 1968, i32 23}
!212 = !{ptr @.str.78, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 1986, i32 24}
!214 = !{ptr @golden_settings_sdma_4, !215, !"golden_settings_sdma_4", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 89, i32 38}
!216 = !{ptr @golden_settings_sdma_vg10, !217, !"golden_settings_sdma_vg10", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 117, i32 38}
!218 = !{ptr @golden_settings_sdma_vg12, !219, !"golden_settings_sdma_vg12", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 127, i32 38}
!220 = !{ptr @golden_settings_sdma0_4_2_init, !221, !"golden_settings_sdma0_4_2_init", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 151, i32 38}
!222 = !{ptr @golden_settings_sdma0_4_2, !223, !"golden_settings_sdma0_4_2", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 155, i32 38}
!224 = !{ptr @golden_settings_sdma1_4_2, !225, !"golden_settings_sdma1_4_2", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 186, i32 38}
!226 = !{ptr @golden_settings_sdma_arct, !227, !"golden_settings_sdma_arct", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 228, i32 38}
!228 = !{ptr @golden_settings_sdma_aldebaran, !229, !"golden_settings_sdma_aldebaran", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 264, i32 38}
!230 = !{ptr @golden_settings_sdma_4_1, !231, !"golden_settings_sdma_4_1", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 137, i32 38}
!232 = !{ptr @golden_settings_sdma_rv2, !233, !"golden_settings_sdma_rv2", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 222, i32 38}
!234 = !{ptr @golden_settings_sdma_rv1, !235, !"golden_settings_sdma_rv1", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 216, i32 38}
!236 = !{ptr @golden_settings_sdma_4_3, !237, !"golden_settings_sdma_4_3", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 282, i32 38}
!238 = distinct !{null, !239, !"__already_done", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c", i32 1086, i32 4}
!240 = !{ptr @.str.79, !239, !"<string literal>", i1 false, i1 false}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{i64 2162871760, i64 2162872263, i64 2162871797, i64 2162871853, i64 2162871887, i64 2162871911, i64 2162871952, i64 2162871973, i64 2162872001, i64 2162872035}
!251 = !{i8 0, i8 2}
!252 = !{i32 0, i32 33}
!253 = !{!"branch_weights", i32 2000, i32 1}
!254 = !{i64 2162889976, i64 2162890479, i64 2162890013, i64 2162890069, i64 2162890103, i64 2162890127, i64 2162890168, i64 2162890189, i64 2162890217, i64 2162890251}
!255 = !{!"auto-init"}
!256 = !{i64 2148368532}
!257 = !{i64 2148282996, i64 2148283028, i64 2148283057, i64 2148283091, i64 2148283122, i64 2148283145}
!258 = !{i64 2149647250}
!259 = !{i64 2148846666, i64 2148846671, i64 2148846684, i64 2148846728, i64 2148846762, i64 2148846783}
