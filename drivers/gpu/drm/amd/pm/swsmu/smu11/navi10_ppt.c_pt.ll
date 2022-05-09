; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmn2asic_mapping = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.smu_temperature_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.cmn2asic_msg_mapping = type { i32, i32, i32 }
%struct.smu_context = type { ptr, %struct.amdgpu_irq_src, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i64, %struct.smu_table_context, %struct.smu_dpm_context, %struct.smu_power_context, %struct.smu_feature, ptr, %struct.smu_baco_context, %struct.smu_temperature_range, ptr, %struct.smu_umd_pstate_table, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i32, i32, i8, i32, [7 x i32], [7 x i32], i32, i32, i8, i8, i32, i32, i32, i8, i8, %struct.work_struct, %struct.atomic64_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, %struct.smu_user_dpm_profile, %struct.stb_context }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.smu_table_context = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.smu_bios_boot_up_values, ptr, ptr, [15 x %struct.smu_table], %struct.smu_table, %struct.smu_table, %struct.smu_table, i8, ptr, ptr, ptr, i32, ptr }
%struct.smu_bios_boot_up_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.smu_table = type { i64, i32, i8, i64, ptr, ptr }
%struct.smu_dpm_context = type { i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, ptr }
%struct.smu_power_context = type { ptr, i32, %struct.smu_power_gate }
%struct.smu_power_gate = type { i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.mutex }
%struct.smu_feature = type { i32, [2 x i32], [2 x i32], [2 x i32], %struct.mutex }
%struct.smu_baco_context = type { %struct.mutex, i32, i8 }
%struct.smu_umd_pstate_table = type { %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq }
%struct.pstates_clk_freq = type { i32, i32, i32, %struct.smu_freq_info, %struct.smu_freq_info }
%struct.smu_freq_info = type { i32, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smu_user_dpm_profile = type { i32, i32, i32, i32, i32, i32, [23 x i32], i32 }
%struct.stb_context = type { i32, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.95, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.94], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.94 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.95 = type { %struct.spinlock, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { ptr, ptr, i8, [6 x ptr], [6 x ptr], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, %struct.amdgpu_audio, i32, i32, i32, i32, ptr, ptr }
%struct.amdgpu_audio = type { i8, [9 x %struct.amdgpu_audio_pin], i32 }
%struct.amdgpu_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.amdgpu_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [32 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdgpu_sched = type { i32, [8 x ptr] }
%struct.amdgpu_irq = type { i8, i32, %struct.spinlock, [32 x %struct.amdgpu_irq_client], i8, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.amdgpu_irq_src, ptr, [256 x i32], i32 }
%struct.amdgpu_irq_client = type { ptr }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i8, i8, ptr, ptr, i64, i64, ptr, i64, ptr, i8, i32, %struct.amdgpu_ih_regs, %struct.wait_queue_head, i64 }
%struct.amdgpu_ih_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_powerplay = type { ptr, ptr }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.106, i32, i32, i32, i32 }
%union.anon.106 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.PPTable_t = type { i32, [2 x i32], [4 x i16], [4 x i16], [4 x i16], [4 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i16, i16, i8, [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, [9 x %struct.DpmDescriptor_t], [16 x i16], [8 x i16], [8 x i16], [8 x i16], [4 x i16], [8 x i16], [8 x i16], [8 x i16], [8 x i16], [16 x i32], [9 x i16], i16, [4 x i8], [2 x i16], [2 x i16], [4 x i16], [4 x i16], i16, i16, i16, i16, i16, [2 x i8], i16, i8, i8, i8, [3 x i8], i8, i8, [2 x i8], [2 x i8], [2 x i8], [2 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, [2 x i8], [2 x i8], [2 x %struct.QuadraticInt_t], %struct.DroopInt_t, %struct.DroopInt_t, %struct.DroopInt_t, [2 x %struct.LinearInt_t], [2 x %struct.QuadraticInt_t], [2 x i16], [2 x i8], [2 x i8], [2 x i16], [2 x i16], i32, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, %struct.QuadraticInt_t, i8, i8, i16, i16, i16, i32, [5 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i32, [10 x i16], [2 x i16], [8 x i32], [8 x %struct.I2cControllerConfig_t], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, [8 x i32], [8 x i32] }
%struct.DpmDescriptor_t = type { i8, i8, i8, i8, %struct.LinearInt_t, %struct.QuadraticInt_t }
%struct.LinearInt_t = type { i32, i32 }
%struct.DroopInt_t = type { i32, i32, i32 }
%struct.QuadraticInt_t = type { i32, i32, i32 }
%struct.I2cControllerConfig_t = type { i8, i8, [2 x i8], i32, i8, i8, i8, i8 }
%struct.smu_11_0_dpm_table = type { i32, i32, i32, i8, [16 x %struct.smu_11_0_dpm_clk_level] }
%struct.smu_11_0_dpm_clk_level = type { i8, i32 }
%struct.smu_11_0_dpm_tables = type { %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_dpm_table, %struct.smu_11_0_pcie_table }
%struct.smu_11_0_pcie_table = type { [2 x i8], [2 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.smu_11_0_overdrive_table = type { i8, [3 x i8], i32, i32, [32 x i8], [32 x i32], [32 x i32] }
%struct.OverDriveTable_t = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i32] }
%struct.pp_clock_levels_with_latency = type { i32, [16 x %struct.pp_clock_with_latency] }
%struct.pp_clock_with_latency = type { i32, i32 }
%struct.DpmActivityMonitorCoeffInt_t = type { i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i16, [8 x i32] }
%struct.pp_display_clock_request = type { i32, i32 }
%struct.SmuMetrics_t = type { [9 x i16], i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i8, i8, [2 x i8], [8 x i32] }
%struct.pp_smu_wm_range_sets = type { i32, [4 x %struct.pp_smu_wm_set_range], i32, [4 x %struct.pp_smu_wm_set_range] }
%struct.pp_smu_wm_set_range = type { i16, i16, i16, i16, i8, i8 }
%struct.WatermarkRowGeneric_t = type { i16, i16, i16, i16, i8, [3 x i8], [8 x i32] }
%struct.smu_11_0_powerplay_table = type <{ %struct.atom_common_table_header, i8, i16, i32, i32, i16, i32, i8, i16, i16, i16, i16, i16, i16, [6 x i16], %struct.smu_11_0_power_saving_clock_table, %struct.smu_11_0_overdrive_table, %struct.PPTable_t }>
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct.smu_11_0_power_saving_clock_table = type { i8, [3 x i8], i32, [16 x i32], [16 x i32] }
%struct.smu_11_0_max_sustainable_clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpu_metrics_v1_3 = type { %struct.metrics_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, [4 x i16], i64, i16, i16, i16, i16, i64 }
%struct.metrics_table_header = type { i16, i8, i8 }
%struct.SmuMetrics_NV12_t = type { [9 x i16], i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, i32, i64, [8 x i32] }
%struct.SmuMetrics_NV12_legacy_t = type { [9 x i16], i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i32, i16, i16, i16, i16, [8 x i32] }
%struct.SmuMetrics_legacy_t = type { [9 x i16], i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, [8 x i32] }
%struct.SwI2cRequest_t = type { i8, i8, i16, i8, [3 x i8], [8 x %struct.SwI2cCmd_t], [8 x i32] }
%struct.SwI2cCmd_t = type { i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@navi10_ppt_funcs = internal constant { %struct.pptable_funcs, [124 x i8] } { %struct.pptable_funcs { ptr @navi10_run_btc, ptr @navi10_get_allowed_feature_mask, ptr null, ptr @navi10_set_default_dpm_table, ptr null, ptr @navi10_populate_umd_state_clk, ptr @navi10_print_clk_levels, ptr @navi10_force_clk_levels, ptr @navi10_od_edit_dpm_table, ptr @smu_v11_0_restore_user_od_settings, ptr @navi10_get_clock_by_type_with_latency, ptr null, ptr @navi10_get_power_profile_mode, ptr @navi10_set_power_profile_mode, ptr @navi10_dpm_set_vcn_enable, ptr @navi10_dpm_set_jpeg_enable, ptr @navi10_read_sensor, ptr @navi10_pre_display_config_changed, ptr @navi10_display_config_changed, ptr null, ptr @navi10_notify_smc_display_config, ptr @navi10_is_dpm_running, ptr @smu_v11_0_get_fan_speed_pwm, ptr @navi10_get_fan_speed_rpm, ptr @navi10_set_watermarks_table, ptr @navi10_get_thermal_temperature_range, ptr @navi10_get_uclk_dpm_states, ptr @navi10_set_default_od_settings, ptr @smu_v11_0_set_performance_level, ptr @navi10_display_disable_memory_clock_switch, ptr null, ptr @navi10_get_power_limit, ptr null, ptr null, ptr null, ptr @navi10_update_pcie_parameters, ptr @navi10_i2c_control_init, ptr @navi10_i2c_control_fini, ptr null, ptr null, ptr @smu_v11_0_init_microcode, ptr @smu_v11_0_load_microcode, ptr @smu_v11_0_fini_microcode, ptr @navi10_init_smc_tables, ptr @smu_v11_0_fini_smc_tables, ptr @smu_v11_0_init_power, ptr @smu_v11_0_fini_power, ptr @smu_v11_0_check_fw_status, ptr @smu_cmn_set_mp1_state, ptr @navi10_setup_pptable, ptr @smu_v11_0_get_vbios_bootup_values, ptr @smu_v11_0_check_fw_version, ptr null, ptr null, ptr @smu_cmn_write_pptable, ptr @smu_v11_0_set_driver_table_location, ptr @smu_v11_0_set_tool_table_location, ptr @smu_v11_0_notify_memory_pool_location, ptr @smu_v11_0_system_features_control, ptr @smu_cmn_send_smc_msg_with_param, ptr @smu_cmn_send_smc_msg, ptr @smu_v11_0_init_display_count, ptr @smu_v11_0_set_allowed_mask, ptr @smu_cmn_get_enabled_mask, ptr @smu_cmn_feature_is_enabled, ptr @smu_cmn_disable_all_features_with_exception, ptr @smu_v11_0_notify_display_change, ptr @smu_v11_0_set_power_limit, ptr @smu_v11_0_init_max_sustainable_clocks, ptr @smu_v11_0_enable_thermal_alert, ptr @smu_v11_0_disable_thermal_alert, ptr @smu_v11_0_set_min_deep_sleep_dcefclk, ptr @smu_v11_0_display_clock_voltage_request, ptr @smu_v11_0_get_fan_control_mode, ptr @smu_v11_0_set_fan_control_mode, ptr @smu_v11_0_set_fan_speed_pwm, ptr @smu_v11_0_set_fan_speed_rpm, ptr @smu_v11_0_set_xgmi_pstate, ptr @smu_v11_0_gfx_off_control, ptr null, ptr @smu_v11_0_register_irq_handler, ptr @smu_v11_0_set_azalia_d3_pme, ptr @smu_v11_0_get_max_sustainable_clocks_by_dc, ptr @smu_v11_0_baco_is_support, ptr @smu_v11_0_baco_get_state, ptr @smu_v11_0_baco_set_state, ptr @navi10_baco_enter, ptr @navi10_baco_exit, ptr null, ptr null, ptr null, ptr null, ptr @smu_v11_0_get_dpm_ultimate_freq, ptr @smu_v11_0_set_soft_freq_limited_range, ptr @smu_v11_0_set_power_source, ptr null, ptr @smu_cmn_get_pp_feature_mask, ptr @smu_cmn_set_pp_feature_mask, ptr @navi1x_get_gpu_metrics, ptr @navi10_enable_mgpu_fan_boost, ptr @smu_v11_0_gfx_ulv_control, ptr @smu_v11_0_deep_sleep_control, ptr @navi10_get_fan_parameters, ptr @navi10_post_smu_init, ptr @smu_v11_0_interrupt_work, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@navi10_table_map = internal global { [15 x %struct.cmn2asic_mapping], [40 x i8] } { [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping { i32 1, i32 8 }, %struct.cmn2asic_mapping { i32 1, i32 9 }, %struct.cmn2asic_mapping { i32 1, i32 10 }, %struct.cmn2asic_mapping { i32 1, i32 11 }, %struct.cmn2asic_mapping zeroinitializer], [40 x i8] zeroinitializer }, align 32
@navi10_pwr_src_map = internal global { [2 x %struct.cmn2asic_mapping], [16 x i8] } { [2 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }], [16 x i8] zeroinitializer }, align 32
@navi10_workload_map = internal global { [7 x %struct.cmn2asic_mapping], [40 x i8] } { [7 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping { i32 1, i32 6 }], [40 x i8] zeroinitializer }, align 32
@navi10_run_btc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2548, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu: RunBtc failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"navi10_run_btc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@navi10_run_btc._entry_ptr = internal global ptr @navi10_run_btc._entry, section ".printk_index", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%d: %uMhz %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%d: %s %s %dMhz %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.5GT/s,\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5.0GT/s,\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8.0GT/s,\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"16.0GT/s,\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x1\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x2\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x4\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x8\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x12\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x16\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OD_SCLK:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0: %uMhz\0A1: %uMhz\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OD_MCLK:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1: %uMHz\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OD_VDDC_CURVE:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%d: %uMHz %umV\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OD_RANGE\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCLK: %7uMhz %10uMhz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MCLK: %7uMhz %10uMhz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VDDC_CURVE_SCLK[0]: %7uMhz %10uMhz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VDDC_CURVE_VOLT[0]: %7dmV %11dmV\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VDDC_CURVE_SCLK[1]: %7uMhz %10uMhz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VDDC_CURVE_VOLT[1]: %7dmV %11dmV\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VDDC_CURVE_SCLK[2]: %7uMhz %10uMhz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VDDC_CURVE_VOLT[2]: %7dmV %11dmV\0A\00", [62 x i8] zeroinitializer }, align 32
@navi1x_get_smu_metrics_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: Failed to get smu version!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"navi1x_get_smu_metrics_data\00", [36 x i8] zeroinitializer }, align 32
@navi1x_get_smu_metrics_data._entry_ptr = internal global ptr @navi1x_get_smu_metrics_data._entry, section ".printk_index", align 4
@navi10_force_clk_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1489, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"amdgpu: Setting DCEFCLK min/max dpm level is not supported!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"navi10_force_clk_levels\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@navi10_force_clk_levels._entry_ptr = internal global ptr @navi10_force_clk_levels._entry, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 2378, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: OverDrive is not enabled!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"navi10_od_edit_dpm_table\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr = internal global ptr @navi10_od_edit_dpm_table._entry, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.2, i32 2383, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: OD board limits are not set!\0A\00", [58 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.45 = internal global ptr @navi10_od_edit_dpm_table._entry.43, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.2, i32 2392, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: GFXCLK_LIMITS not supported!\0A\00", [58 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.48 = internal global ptr @navi10_od_edit_dpm_table._entry.46, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.41, ptr @.str.2, i32 2396, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Overdrive is not initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.51 = internal global ptr @navi10_od_edit_dpm_table._entry.49, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.41, ptr @.str.2, i32 2401, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: invalid number of input parameters %d\0A\00", [49 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.54 = internal global ptr @navi10_od_edit_dpm_table._entry.52, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.41, ptr @.str.2, i32 2411, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: GfxclkFmin (%ld) must be <= GfxclkFmax (%u)!\0A\00", [42 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.57 = internal global ptr @navi10_od_edit_dpm_table._entry.55, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.41, ptr @.str.2, i32 2421, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: GfxclkFmax (%ld) must be >= GfxclkFmin (%u)!\0A\00", [42 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.60 = internal global ptr @navi10_od_edit_dpm_table._entry.58, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.41, ptr @.str.2, i32 2426, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Invalid SCLK_VDDC_TABLE index: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.63 = internal global ptr @navi10_od_edit_dpm_table._entry.61, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.41, ptr @.str.2, i32 2427, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: Supported indices: [0:min,1:max]\0A\00", [54 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.66 = internal global ptr @navi10_od_edit_dpm_table._entry.64, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.41, ptr @.str.2, i32 2438, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: UCLK_MAX not supported!\0A\00", [63 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.69 = internal global ptr @navi10_od_edit_dpm_table._entry.67, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.41, ptr @.str.2, i32 2442, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: invalid number of parameters: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.72 = internal global ptr @navi10_od_edit_dpm_table._entry.70, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.41, ptr @.str.2, i32 2446, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Invalid MCLK_VDDC_TABLE index: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.75 = internal global ptr @navi10_od_edit_dpm_table._entry.73, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.41, ptr @.str.2, i32 2447, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: Supported indices: [1:max]\0A\00", [60 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.78 = internal global ptr @navi10_od_edit_dpm_table._entry.76, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.41, ptr @.str.2, i32 2457, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: Overdrive table was not initialized!\0A\00", [50 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.81 = internal global ptr @navi10_od_edit_dpm_table._entry.79, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.41, ptr @.str.2, i32 2467, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Failed to import overdrive table!\0A\00", [53 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.84 = internal global ptr @navi10_od_edit_dpm_table._entry.82, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.41, ptr @.str.2, i32 2481, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: GFXCLK_CURVE not supported!\0A\00", [59 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.87 = internal global ptr @navi10_od_edit_dpm_table._entry.85, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.41, ptr @.str.2, i32 2485, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.89 = internal global ptr @navi10_od_edit_dpm_table._entry.88, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.41, ptr @.str.2, i32 2489, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.91 = internal global ptr @navi10_od_edit_dpm_table._entry.90, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.41, ptr @.str.2, i32 2513, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Invalid VDDC_CURVE index: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.94 = internal global ptr @navi10_od_edit_dpm_table._entry.92, section ".printk_index", align 4
@navi10_od_edit_dpm_table._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.41, ptr @.str.2, i32 2514, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Supported indices: [0, 1, 2]\0A\00", [58 x i8] zeroinitializer }, align 32
@navi10_od_edit_dpm_table._entry_ptr.97 = internal global ptr @navi10_od_edit_dpm_table._entry.95, section ".printk_index", align 4
@navi10_od_edit_dpm_table.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.41, ptr @.str.2, ptr @.str.99, i8 2, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: OD: set curve %ld: (%d, %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@navi10_od_setting_check_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 2236, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu: OD setting (%d, %d) is less than the minimum allowed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"navi10_od_setting_check_range\00", [34 x i8] zeroinitializer }, align 32
@navi10_od_setting_check_range._entry_ptr = internal global ptr @navi10_od_setting_check_range._entry, section ".printk_index", align 4
@navi10_od_setting_check_range._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 2240, ptr @.str.42, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"amdgpu: OD setting (%d, %d) is greater than the maximum allowed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@navi10_od_setting_check_range._entry_ptr.104 = internal global ptr @navi10_od_setting_check_range._entry.102, section ".printk_index", align 4
@navi10_dump_od_table.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 2, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"navi10_dump_od_table\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: OD: Gfxclk: (%d, %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@navi10_dump_od_table.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.105, ptr @.str.2, ptr @.str.107, i8 2, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: OD: Gfx1: (%d, %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@navi10_dump_od_table.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.105, ptr @.str.2, ptr @.str.108, i8 2, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: OD: Gfx2: (%d, %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@navi10_dump_od_table.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.105, ptr @.str.2, ptr @.str.109, i8 2, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: OD: Gfx3: (%d, %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@navi10_dump_od_table.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.105, ptr @.str.2, ptr @.str.110, i8 2, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: OD: UclkFmax: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@navi10_dump_od_table.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.105, ptr @.str.2, ptr @.str.111, i8 2, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: OD: OverDrivePct: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PROFILE_INDEX(NAME)\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLOCK_TYPE(NAME)\00", [47 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FPS\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MinFreqType\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MinActiveFreqType\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MinActiveFreq\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BoosterFreqType\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BoosterFreq\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PD_Data_limit_c\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PD_Data_error_coeff\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PD_Data_error_rate_coeff\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%16s %s %s %s %s %s %s %s %s %s %s\0A\00", [60 x i8] zeroinitializer }, align 32
@navi10_get_power_profile_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 1749, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: [%s] Failed to get activity monitor!\00", [51 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"navi10_get_power_profile_mode\00", [34 x i8] zeroinitializer }, align 32
@navi10_get_power_profile_mode._entry_ptr = internal global ptr @navi10_get_power_profile_mode._entry, section ".printk_index", align 4
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%2d %14s%s:\0A\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_pp_profile_name = external dso_local local_unnamed_addr constant [7 x ptr], align 4
@.str.127 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%19s %d(%13s) %7d %7d %7d %7d %7d %7d %7d %7d %7d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GFXCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SOCCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MEMLK\00", [26 x i8] zeroinitializer }, align 32
@navi10_set_power_profile_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1810, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Invalid power profile mode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"navi10_set_power_profile_mode\00", [34 x i8] zeroinitializer }, align 32
@navi10_set_power_profile_mode._entry_ptr = internal global ptr @navi10_set_power_profile_mode._entry, section ".printk_index", align 4
@navi10_set_power_profile_mode._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.133, ptr @.str.2, i32 1820, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@navi10_set_power_profile_mode._entry_ptr.135 = internal global ptr @navi10_set_power_profile_mode._entry.134, section ".printk_index", align 4
@navi10_set_power_profile_mode._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.133, ptr @.str.2, i32 1864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: [%s] Failed to set activity monitor!\00", [51 x i8] zeroinitializer }, align 32
@navi10_set_power_profile_mode._entry_ptr.138 = internal global ptr @navi10_set_power_profile_mode._entry.136, section ".printk_index", align 4
@navi10_notify_smc_display_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1903, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: Attempt to set divider for DCEFCLK Failed!\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"navi10_notify_smc_display_config\00", [63 x i8] zeroinitializer }, align 32
@navi10_notify_smc_display_config._entry_ptr = internal global ptr @navi10_notify_smc_display_config._entry, section ".printk_index", align 4
@navi10_notify_smc_display_config._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 1908, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: Attempt to set Hard Min for DCEFCLK Failed!\00", [44 x i8] zeroinitializer }, align 32
@navi10_notify_smc_display_config._entry_ptr.143 = internal global ptr @navi10_notify_smc_display_config._entry.141, section ".printk_index", align 4
@navi10_notify_smc_display_config._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 1915, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: [%s] Set hard min uclk failed!\00", [57 x i8] zeroinitializer }, align 32
@navi10_notify_smc_display_config._entry_ptr.146 = internal global ptr @navi10_notify_smc_display_config._entry.144, section ".printk_index", align 4
@navi10_set_watermarks_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 1971, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to update WMTABLE!\00", [62 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"navi10_set_watermarks_table\00", [36 x i8] zeroinitializer }, align 32
@navi10_set_watermarks_table._entry_ptr = internal global ptr @navi10_set_watermarks_table._entry, section ".printk_index", align 4
@smu11_thermal_policy = internal constant { [2 x %struct.smu_temperature_range], [48 x i8] } { [2 x %struct.smu_temperature_range] [%struct.smu_temperature_range { i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000, i32 -273150, i32 99000, i32 99000, i32 0 }, %struct.smu_temperature_range { i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 120000, i32 0 }], [48 x i8] zeroinitializer }, align 32
@navi10_set_default_od_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 2331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to get overdrive table!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"navi10_set_default_od_settings\00", [33 x i8] zeroinitializer }, align 32
@navi10_set_default_od_settings._entry_ptr = internal global ptr @navi10_set_default_od_settings._entry, section ".printk_index", align 4
@navi10_overdrive_get_gfx_clk_base_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 2259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"amdgpu: [GetBaseVoltage] failed to get GFXCLK AVFS voltage from SMU!\00", [59 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"navi10_overdrive_get_gfx_clk_base_voltage\00", [54 x i8] zeroinitializer }, align 32
@navi10_overdrive_get_gfx_clk_base_voltage._entry_ptr = internal global ptr @navi10_overdrive_get_gfx_clk_base_voltage._entry, section ".printk_index", align 4
@navi10_get_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 2153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Cannot get PPT limit due to pptable missing!\00", [43 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"navi10_get_power_limit\00", [41 x i8] zeroinitializer }, align 32
@navi10_get_power_limit._entry_ptr = internal global ptr @navi10_get_power_limit._entry, section ".printk_index", align 4
@navi10_get_power_limit.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.98, ptr @.str.154, ptr @.str.2, ptr @.str.155, i8 2, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: ODSETTING_POWERPERCENTAGE: %d (default: %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@navi10_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @navi10_i2c_xfer, ptr null, ptr null, ptr null, ptr @navi10_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMDGPU SMU\00", [21 x i8] zeroinitializer }, align 32
@navi10_i2c_control_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 105, i32 0, i16 8, i16 8, i16 2, i16 6 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register hw i2c, err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@navi10_append_powerplay_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 425, ptr @.str.39, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"amdgpu: smc_dpm_info table revision(format.content): %d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"navi10_append_powerplay_table\00", [34 x i8] zeroinitializer }, align 32
@navi10_append_powerplay_table._entry_ptr = internal global ptr @navi10_append_powerplay_table._entry, section ".printk_index", align 4
@navi10_append_powerplay_table._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: smc_dpm_info table format revision is not 4!\0A\00", [42 x i8] zeroinitializer }, align 32
@navi10_append_powerplay_table._entry_ptr.162 = internal global ptr @navi10_append_powerplay_table._entry.160, section ".printk_index", align 4
@navi10_append_powerplay_table._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.159, ptr @.str.2, i32 447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"amdgpu: smc_dpm_info with unsupported content revision %d!\0A\00", [36 x i8] zeroinitializer }, align 32
@navi10_append_powerplay_table._entry_ptr.165 = internal global ptr @navi10_append_powerplay_table._entry.163, section ".printk_index", align 4
@navi1x_get_gpu_metrics._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.166, ptr @.str.2, i32 3145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"navi1x_get_gpu_metrics\00", [41 x i8] zeroinitializer }, align 32
@navi1x_get_gpu_metrics._entry_ptr = internal global ptr @navi1x_get_gpu_metrics._entry, section ".printk_index", align 4
@navi1x_throttler_map = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\00#$\22&()'*+\00\00\10\11\00\01\02\0398\17", [43 x i8] zeroinitializer }, align 32
@link_speed = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 25, i16 50, i16 80, i16 160], [24 x i8] zeroinitializer }, align 32
@navi10_post_smu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 3209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Failed to apply umc cdr workaround!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"navi10_post_smu_init\00", [43 x i8] zeroinitializer }, align 32
@navi10_post_smu_init._entry_ptr = internal global ptr @navi10_post_smu_init._entry, section ".printk_index", align 4
@navi10_post_smu_init._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.2, i32 3224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Failed to switch to %s mode!\0A\00", [58 x i8] zeroinitializer }, align 32
@navi10_post_smu_init._entry_ptr.171 = internal global ptr @navi10_post_smu_init._entry.169, section ".printk_index", align 4
@.str.172 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AC\00", [29 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DC\00", [29 x i8] zeroinitializer }, align 32
@navi10_run_umc_cdr_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.174, ptr @.str.2, i32 2658, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"navi10_run_umc_cdr_workaround\00", [34 x i8] zeroinitializer }, align 32
@navi10_run_umc_cdr_workaround._entry_ptr = internal global ptr @navi10_run_umc_cdr_workaround._entry, section ".printk_index", align 4
@NoDbiPrbs7 = internal constant { [1024 x i32], [1024 x i8] } { [1024 x i32] [i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281, i32 252645135, i32 252645135, i32 252645135, i32 -252702961, i32 252645135, i32 252645135, i32 -252645136, i32 252645135, i32 252645135, i32 -252702961, i32 -252702961, i32 252645135, i32 -252645136, i32 -252645136, i32 252645135, i32 -252702961, i32 252645135, i32 -252702961, i32 -252645136, i32 252645135, i32 -252645136, i32 -252702961, i32 -252702961, i32 -252702961, i32 252702960, i32 -252645136, i32 -252645136, i32 252702960, i32 252645135, i32 252645135, i32 -252645136, i32 -252702961, i32 252645135, i32 -252702961, i32 252702960, i32 252645135, i32 -252645136, i32 252702960, i32 -252702961, i32 -252702961, i32 -252645136, i32 252702960, i32 -252645136, i32 -252702961, i32 -252645136, i32 252645135, i32 252702960, i32 -252702961, i32 -252702961, i32 252702960, i32 252702960, i32 -252645136, i32 252702960, i32 -252645136, i32 252645135, i32 -252645136, i32 252645135, i32 -252702961, i32 -252702961, i32 -252702961, i32 -252645136, i32 -252645136, i32 -252645136, i32 -252641281], [1024 x i8] zeroinitializer }, align 32
@DbiPrbs7 = internal constant { [1024 x i32], [1024 x i8] } { [1024 x i32] [i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535, i32 -1, i32 -1, i32 -1, i32 65535, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 65535, i32 65535, i32 -1, i32 0, i32 0, i32 -1, i32 65535, i32 -1, i32 65535, i32 0, i32 -1, i32 0, i32 65535, i32 65535, i32 65535, i32 -65536, i32 0, i32 0, i32 -65536, i32 -1, i32 -1, i32 0, i32 65535, i32 -1, i32 65535, i32 -65536, i32 -1, i32 0, i32 -65536, i32 65535, i32 65535, i32 0, i32 -65536, i32 0, i32 65535, i32 0, i32 -1, i32 -65536, i32 65535, i32 65535, i32 -65536, i32 -65536, i32 0, i32 -65536, i32 0, i32 -1, i32 0, i32 -1, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 0, i32 65535], [1024 x i8] zeroinitializer }, align 32
@navi10_message_map = internal global { <{ [158 x %struct.cmn2asic_msg_mapping], [49 x %struct.cmn2asic_msg_mapping] }>, [620 x i8] } { <{ [158 x %struct.cmn2asic_msg_mapping], [49 x %struct.cmn2asic_msg_mapping] }> <{ [158 x %struct.cmn2asic_msg_mapping] [%struct.cmn2asic_msg_mapping { i32 1, i32 1, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 2, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 3, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 4, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 5, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 6, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 7, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 8, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 9, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 10, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 11, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 12, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 13, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 36, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 53, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 14, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 15, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 16, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 17, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 18, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 19, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 20, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 21, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 58, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 24, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 26, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 27, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 28, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 29, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 30, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 31, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 32, i32 1 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 65, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 66, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 67, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 68, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 33, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 34, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 55, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 56, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 37, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 39, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 50, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 59, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 60, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 61, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 63, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 64, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 22, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 23, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 41, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 42, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 54, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 40, i32 1 }, %struct.cmn2asic_msg_mapping { i32 1, i32 62, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 25, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 51, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 52, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 76, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 43, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 44, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 45, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 46, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 72, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 70, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 38, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 69, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 73, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 74, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 78, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 79, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 80, i32 0 }], [49 x %struct.cmn2asic_msg_mapping] zeroinitializer }>, [620 x i8] zeroinitializer }, align 32
@navi10_clk_map = internal global { <{ [15 x %struct.cmn2asic_mapping], [8 x %struct.cmn2asic_mapping] }>, [40 x i8] } { <{ [15 x %struct.cmn2asic_mapping], [8 x %struct.cmn2asic_mapping] }> <{ [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping { i32 1, i32 8 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 2 }], [8 x %struct.cmn2asic_mapping] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@navi10_feature_mask_map = internal global { <{ [57 x %struct.cmn2asic_mapping], [38 x %struct.cmn2asic_mapping] }>, [168 x i8] } { <{ [57 x %struct.cmn2asic_mapping], [38 x %struct.cmn2asic_mapping] }> <{ [57 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping { i32 1, i32 0 }, %struct.cmn2asic_mapping { i32 1, i32 1 }, %struct.cmn2asic_mapping { i32 1, i32 3 }, %struct.cmn2asic_mapping { i32 1, i32 4 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 5 }, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping { i32 1, i32 7 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 10 }, %struct.cmn2asic_mapping { i32 1, i32 11 }, %struct.cmn2asic_mapping { i32 1, i32 12 }, %struct.cmn2asic_mapping { i32 1, i32 23 }, %struct.cmn2asic_mapping { i32 1, i32 24 }, %struct.cmn2asic_mapping { i32 1, i32 33 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 35 }, %struct.cmn2asic_mapping { i32 1, i32 13 }, %struct.cmn2asic_mapping { i32 1, i32 28 }, %struct.cmn2asic_mapping { i32 1, i32 29 }, %struct.cmn2asic_mapping { i32 1, i32 30 }, %struct.cmn2asic_mapping { i32 1, i32 31 }, %struct.cmn2asic_mapping { i32 1, i32 36 }, %struct.cmn2asic_mapping { i32 1, i32 32 }, %struct.cmn2asic_mapping { i32 1, i32 25 }, %struct.cmn2asic_mapping { i32 1, i32 17 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 2 }, %struct.cmn2asic_mapping { i32 1, i32 8 }, %struct.cmn2asic_mapping { i32 1, i32 9 }, %struct.cmn2asic_mapping { i32 1, i32 14 }, %struct.cmn2asic_mapping { i32 1, i32 15 }, %struct.cmn2asic_mapping { i32 1, i32 16 }, %struct.cmn2asic_mapping { i32 1, i32 18 }, %struct.cmn2asic_mapping { i32 1, i32 19 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 20 }, %struct.cmn2asic_mapping { i32 1, i32 21 }, %struct.cmn2asic_mapping { i32 1, i32 22 }, %struct.cmn2asic_mapping { i32 1, i32 26 }, %struct.cmn2asic_mapping { i32 1, i32 27 }, %struct.cmn2asic_mapping { i32 1, i32 34 }, %struct.cmn2asic_mapping { i32 1, i32 37 }, %struct.cmn2asic_mapping { i32 1, i32 38 }, %struct.cmn2asic_mapping { i32 1, i32 39 }, %struct.cmn2asic_mapping { i32 1, i32 40 }, %struct.cmn2asic_mapping { i32 1, i32 41 }, %struct.cmn2asic_mapping { i32 1, i32 42 }], [38 x %struct.cmn2asic_mapping] zeroinitializer }>, [168 x i8] zeroinitializer }, align 32
@switch.table.navi10_print_clk_levels = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 5, i32 3, i32 8], [40 x i8] zeroinitializer }, align 32
@switch.table.navi10_print_clk_levels.178 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@switch.table.navi10_print_clk_levels.179 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.navi10_print_clk_levels.180 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@switch.table.navi10_print_clk_levels.181 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@switch.table.navi10_read_sensor = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 5, i32 3, i32 8], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 720896, i64 720901, i64 720905]
@__sancov_gen_cov_switch_values.182 = internal global [6 x i64] [i64 4, i64 8, i64 192, i64 193, i64 240, i64 241]
@__sancov_gen_cov_switch_values.183 = internal global [10 x i64] [i64 8, i64 8, i64 193, i64 195, i64 197, i64 199, i64 242, i64 243, i64 244, i64 246]
@__sancov_gen_cov_switch_values.184 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7, i64 8, i64 12, i64 13, i64 14, i64 15, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.185 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 6, i64 7, i64 8, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.186 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.189 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 6, i64 7, i64 8, i64 14]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.191 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 3, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 15, i64 22]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 7]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 720896, i64 720901, i64 720905]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 720896, i64 720901]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 720896, i64 720901]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 32, i64 720896, i64 720901, i64 720905]
@__sancov_gen_cov_switch_values.197 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8, i64 10, i64 11, i64 13, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.198 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8, i64 10, i64 11, i64 13, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.199 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8, i64 10, i64 11, i64 13, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 27]
@__sancov_gen_cov_switch_values.200 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8, i64 10, i64 11, i64 13, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22]
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"navi10_ppt_funcs\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 3232, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"navi10_table_map\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 211, i32 32 }
@___asan_gen_.207 = private unnamed_addr constant [19 x i8] c"navi10_pwr_src_map\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 226, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"navi10_workload_map\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 231, i32 32 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2548, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1308, i32 38 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1309, i32 28 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1309, i32 34 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1339, i32 37 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1340, i32 62 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1341, i32 62 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1342, i32 62 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1343, i32 62 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1344, i32 63 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1345, i32 63 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1346, i32 63 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1347, i32 63 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1348, i32 63 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1349, i32 63 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1360, i32 36 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1361, i32 36 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1369, i32 36 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1370, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1377, i32 36 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1392, i32 37 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1400, i32 36 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1400, i32 45 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1407, i32 37 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1414, i32 37 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1421, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1425, i32 37 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1429, i32 37 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1433, i32 37 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1437, i32 37 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1441, i32 37 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 924, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1489, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2378, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2383, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2392, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2396, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2401, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2409, i32 6 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2419, i32 6 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2426, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2427, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2438, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2442, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2446, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2447, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2457, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2467, i32 5 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2481, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2485, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2489, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2513, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2514, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2527, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2236, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2240, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2222, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2223, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2224, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2225, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2226, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2227, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1717, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1718, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1719, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1720, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1721, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1722, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1723, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1724, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1725, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1726, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1727, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1733, i32 35 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1749, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1753, i32 36 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1754, i32 73 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1756, i32 36 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1759, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1773, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1787, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1810, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1820, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1864, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1903, i32 6 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1908, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1915, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1971, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c"smu11_thermal_policy\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 70, i32 45 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2331, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2259, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2153, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2170, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant [16 x i8] c"navi10_i2c_algo\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2857, i32 35 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2879, i32 49 }
@___asan_gen_.654 = private unnamed_addr constant [26 x i8] c"navi10_i2c_control_quirks\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2862, i32 40 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2884, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 423, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 428, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 446, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 3145, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant [21 x i8] c"navi1x_throttler_map\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 241, i32 22 }
@___asan_gen_.690 = private unnamed_addr constant [11 x i8] c"link_speed\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [52 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/inc/smu_v11_0.h\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 67, i32 38 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 3209, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 3223, i32 4 }
@___asan_gen_.714 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2658, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant [11 x i8] c"NoDbiPrbs7\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 55, i32 21 }
@___asan_gen_.723 = private unnamed_addr constant [9 x i8] c"DbiPrbs7\00", align 1
@___asan_gen_.724 = private unnamed_addr constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/inc/smu_11_0_cdr_table.h\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.724, i32 124, i32 21 }
@___asan_gen_.726 = private unnamed_addr constant [19 x i8] c"navi10_message_map\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 75, i32 36 }
@___asan_gen_.729 = private unnamed_addr constant [15 x i8] c"navi10_clk_map\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 150, i32 32 }
@___asan_gen_.732 = private unnamed_addr constant [24 x i8] c"navi10_feature_mask_map\00", align 1
@___asan_gen_.733 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 165, i32 32 }
@___asan_gen_.735 = private unnamed_addr constant [37 x i8] c"switch.table.navi10_print_clk_levels\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [41 x i8] c"switch.table.navi10_print_clk_levels.178\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [41 x i8] c"switch.table.navi10_print_clk_levels.179\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [41 x i8] c"switch.table.navi10_print_clk_levels.180\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [41 x i8] c"switch.table.navi10_print_clk_levels.181\00", align 1
@___asan_gen_.740 = private unnamed_addr constant [32 x i8] c"switch.table.navi10_read_sensor\00", align 1
@llvm.compiler.used = appending global [227 x ptr] [ptr @navi10_append_powerplay_table._entry, ptr @navi10_append_powerplay_table._entry.160, ptr @navi10_append_powerplay_table._entry.163, ptr @navi10_append_powerplay_table._entry_ptr, ptr @navi10_append_powerplay_table._entry_ptr.162, ptr @navi10_append_powerplay_table._entry_ptr.165, ptr @navi10_force_clk_levels._entry, ptr @navi10_force_clk_levels._entry_ptr, ptr @navi10_get_power_limit._entry, ptr @navi10_get_power_limit._entry_ptr, ptr @navi10_get_power_profile_mode._entry, ptr @navi10_get_power_profile_mode._entry_ptr, ptr @navi10_notify_smc_display_config._entry, ptr @navi10_notify_smc_display_config._entry.141, ptr @navi10_notify_smc_display_config._entry.144, ptr @navi10_notify_smc_display_config._entry_ptr, ptr @navi10_notify_smc_display_config._entry_ptr.143, ptr @navi10_notify_smc_display_config._entry_ptr.146, ptr @navi10_od_edit_dpm_table._entry, ptr @navi10_od_edit_dpm_table._entry.43, ptr @navi10_od_edit_dpm_table._entry.46, ptr @navi10_od_edit_dpm_table._entry.49, ptr @navi10_od_edit_dpm_table._entry.52, ptr @navi10_od_edit_dpm_table._entry.55, ptr @navi10_od_edit_dpm_table._entry.58, ptr @navi10_od_edit_dpm_table._entry.61, ptr @navi10_od_edit_dpm_table._entry.64, ptr @navi10_od_edit_dpm_table._entry.67, ptr @navi10_od_edit_dpm_table._entry.70, ptr @navi10_od_edit_dpm_table._entry.73, ptr @navi10_od_edit_dpm_table._entry.76, ptr @navi10_od_edit_dpm_table._entry.79, ptr @navi10_od_edit_dpm_table._entry.82, ptr @navi10_od_edit_dpm_table._entry.85, ptr @navi10_od_edit_dpm_table._entry.88, ptr @navi10_od_edit_dpm_table._entry.90, ptr @navi10_od_edit_dpm_table._entry.92, ptr @navi10_od_edit_dpm_table._entry.95, ptr @navi10_od_edit_dpm_table._entry_ptr, ptr @navi10_od_edit_dpm_table._entry_ptr.45, ptr @navi10_od_edit_dpm_table._entry_ptr.48, ptr @navi10_od_edit_dpm_table._entry_ptr.51, ptr @navi10_od_edit_dpm_table._entry_ptr.54, ptr @navi10_od_edit_dpm_table._entry_ptr.57, ptr @navi10_od_edit_dpm_table._entry_ptr.60, ptr @navi10_od_edit_dpm_table._entry_ptr.63, ptr @navi10_od_edit_dpm_table._entry_ptr.66, ptr @navi10_od_edit_dpm_table._entry_ptr.69, ptr @navi10_od_edit_dpm_table._entry_ptr.72, ptr @navi10_od_edit_dpm_table._entry_ptr.75, ptr @navi10_od_edit_dpm_table._entry_ptr.78, ptr @navi10_od_edit_dpm_table._entry_ptr.81, ptr @navi10_od_edit_dpm_table._entry_ptr.84, ptr @navi10_od_edit_dpm_table._entry_ptr.87, ptr @navi10_od_edit_dpm_table._entry_ptr.89, ptr @navi10_od_edit_dpm_table._entry_ptr.91, ptr @navi10_od_edit_dpm_table._entry_ptr.94, ptr @navi10_od_edit_dpm_table._entry_ptr.97, ptr @navi10_od_setting_check_range._entry, ptr @navi10_od_setting_check_range._entry.102, ptr @navi10_od_setting_check_range._entry_ptr, ptr @navi10_od_setting_check_range._entry_ptr.104, ptr @navi10_overdrive_get_gfx_clk_base_voltage._entry, ptr @navi10_overdrive_get_gfx_clk_base_voltage._entry_ptr, ptr @navi10_post_smu_init._entry, ptr @navi10_post_smu_init._entry.169, ptr @navi10_post_smu_init._entry_ptr, ptr @navi10_post_smu_init._entry_ptr.171, ptr @navi10_run_btc._entry, ptr @navi10_run_btc._entry_ptr, ptr @navi10_run_umc_cdr_workaround._entry, ptr @navi10_run_umc_cdr_workaround._entry_ptr, ptr @navi10_set_default_od_settings._entry, ptr @navi10_set_default_od_settings._entry_ptr, ptr @navi10_set_power_profile_mode._entry, ptr @navi10_set_power_profile_mode._entry.134, ptr @navi10_set_power_profile_mode._entry.136, ptr @navi10_set_power_profile_mode._entry_ptr, ptr @navi10_set_power_profile_mode._entry_ptr.135, ptr @navi10_set_power_profile_mode._entry_ptr.138, ptr @navi10_set_watermarks_table._entry, ptr @navi10_set_watermarks_table._entry_ptr, ptr @navi1x_get_gpu_metrics._entry, ptr @navi1x_get_gpu_metrics._entry_ptr, ptr @navi1x_get_smu_metrics_data._entry, ptr @navi1x_get_smu_metrics_data._entry_ptr, ptr @navi10_ppt_funcs, ptr @navi10_table_map, ptr @navi10_pwr_src_map, ptr @navi10_workload_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @smu11_thermal_policy, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @navi10_i2c_algo, ptr @.str.156, ptr @navi10_i2c_control_quirks, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.164, ptr @.str.166, ptr @navi1x_throttler_map, ptr @link_speed, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @NoDbiPrbs7, ptr @DbiPrbs7, ptr @navi10_message_map, ptr @navi10_clk_map, ptr @navi10_feature_mask_map, ptr @switch.table.navi10_print_clk_levels, ptr @switch.table.navi10_print_clk_levels.178, ptr @switch.table.navi10_print_clk_levels.179, ptr @switch.table.navi10_print_clk_levels.180, ptr @switch.table.navi10_print_clk_levels.181, ptr @switch.table.navi10_read_sensor], section "llvm.metadata"
@0 = internal global [184 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_ppt_funcs to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_table_map to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_pwr_src_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_workload_map to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_run_btc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi1x_get_smu_metrics_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_force_clk_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_edit_dpm_table._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_setting_check_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_od_setting_check_range._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_get_power_profile_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_set_power_profile_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_set_power_profile_mode._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_set_power_profile_mode._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_notify_smc_display_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_notify_smc_display_config._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_notify_smc_display_config._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_set_watermarks_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu11_thermal_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_set_default_od_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_overdrive_get_gfx_clk_base_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_get_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_i2c_control_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_append_powerplay_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_append_powerplay_table._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_append_powerplay_table._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi1x_get_gpu_metrics._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi1x_throttler_map to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_speed to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_post_smu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_post_smu_init._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_run_umc_cdr_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NoDbiPrbs7 to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DbiPrbs7 to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_message_map to i32), i32 2484, i32 3104, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_clk_map to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi10_feature_mask_map to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.navi10_print_clk_levels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.navi10_print_clk_levels.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.navi10_print_clk_levels.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.navi10_print_clk_levels.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.navi10_print_clk_levels.181 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.navi10_read_sensor to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @navi10_set_ppt_funcs(ptr nocapture noundef writeonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @navi10_ppt_funcs, ptr %ppt_funcs, align 8
  %message_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %1 = ptrtoint ptr %message_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @navi10_message_map, ptr %message_map, align 4
  %clock_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 4
  %2 = ptrtoint ptr %clock_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @navi10_clk_map, ptr %clock_map, align 8
  %feature_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %3 = ptrtoint ptr %feature_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @navi10_feature_mask_map, ptr %feature_map, align 4
  %table_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %4 = ptrtoint ptr %table_map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @navi10_table_map, ptr %table_map, align 8
  %pwr_src_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 7
  %5 = ptrtoint ptr %pwr_src_map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @navi10_pwr_src_map, ptr %pwr_src_map, align 4
  %workload_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 8
  %6 = ptrtoint ptr %workload_map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @navi10_workload_map, ptr %workload_map, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_run_btc(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 24, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_get_allowed_feature_mask(ptr nocapture noundef readonly %smu, ptr noundef %feature_mask, i32 noundef %num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp ugt i32 %num, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl nuw nsw i32 %num, 2
  %2 = call ptr @memset(ptr %feature_mask, i32 0, i32 %mul)
  %3 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %feature_mask, align 8
  %or = or i64 %4, 4894782470177
  store i64 %or, ptr %feature_mask, align 8
  %pp_feature = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 24
  %5 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pp_feature, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %or3 = or i64 %4, 4894782470179
  %7 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or3, ptr %feature_mask, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %8 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pp_feature, align 8
  %and7 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.if.end11_crit_edge, label %if.then9

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %feature_mask, align 8
  %or10 = or i64 %11, 64
  store i64 %or10, ptr %feature_mask, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4.if.end11_crit_edge
  %12 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pp_feature, align 8
  %and14 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end11.if.end18_crit_edge, label %if.then16

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %feature_mask, align 8
  %or17 = or i64 %15, 128
  store i64 %or17, ptr %feature_mask, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11.if.end18_crit_edge
  %16 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pp_feature, align 8
  %and21 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.if.end25_crit_edge, label %if.then23

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %feature_mask, align 8
  %or24 = or i64 %19, 32768
  store i64 %or24, ptr %feature_mask, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end18.if.end25_crit_edge
  %20 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pp_feature, align 8
  %and28 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.if.end32_crit_edge, label %if.then30

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %feature_mask, align 8
  %or31 = or i64 %23, 1024
  store i64 %or31, ptr %feature_mask, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25.if.end32_crit_edge
  %24 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pp_feature, align 8
  %and35 = and i32 %25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end32.if.end39_crit_edge, label %if.then37

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %feature_mask, align 8
  %or38 = or i64 %27, 131072
  store i64 %or38, ptr %feature_mask, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end32.if.end39_crit_edge
  %28 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smu, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %29, i32 0, i32 100
  %30 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pg_flags, align 4
  %and41 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end45_crit_edge, label %if.then43

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %feature_mask, align 8
  %or44 = or i64 %33, 1099511627776
  store i64 %or44, ptr %feature_mask, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end39.if.end45_crit_edge
  %34 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %smu, align 8
  %pg_flags47 = getelementptr inbounds %struct.amdgpu_device, ptr %35, i32 0, i32 100
  %36 = ptrtoint ptr %pg_flags47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pg_flags47, align 4
  %and48 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end45.if.end52_crit_edge, label %if.then50

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %feature_mask, align 8
  %or51 = or i64 %39, 2199023255552
  store i64 %or51, ptr %feature_mask, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end45.if.end52_crit_edge
  %40 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %smu, align 8
  %pg_flags54 = getelementptr inbounds %struct.amdgpu_device, ptr %41, i32 0, i32 100
  %42 = ptrtoint ptr %pg_flags54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pg_flags54, align 4
  %and55 = and i32 %43, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end52.if.end59_crit_edge, label %if.then57

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %feature_mask, align 8
  %or58 = or i64 %45, 524288
  store i64 %or58, ptr %feature_mask, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end52.if.end59_crit_edge
  %46 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smu, align 8
  %pg_flags61 = getelementptr inbounds %struct.amdgpu_device, ptr %47, i32 0, i32 100
  %48 = ptrtoint ptr %pg_flags61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pg_flags61, align 4
  %and62 = and i32 %49, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end59.if.end66_crit_edge, label %if.then64

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %feature_mask, align 8
  %or65 = or i64 %51, 1048576
  store i64 %or65, ptr %feature_mask, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end59.if.end66_crit_edge
  %dc_controlled_by_gpio = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 48
  %52 = ptrtoint ptr %dc_controlled_by_gpio to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dc_controlled_by_gpio, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool67.not = icmp eq i8 %53, 0
  br i1 %tobool67.not, label %if.end66.if.end70_crit_edge, label %if.then68

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %feature_mask, align 8
  %or69 = or i64 %55, 268435456
  store i64 %or69, ptr %feature_mask, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end66.if.end70_crit_edge
  %56 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pp_feature, align 8
  %and73 = and i32 %57, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end70.if.end77_crit_edge, label %if.then75

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %feature_mask, align 8
  %or76 = or i64 %59, 16
  store i64 %or76, ptr %feature_mask, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end70.if.end77_crit_edge
  %60 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smu, align 8
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %61, i32 0, i32 39
  %62 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i = tail call i32 %63(ptr noundef %61, i32 noundef 58786240) #13
  %and.i = and i32 %call.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end77.land.lhs.true82_crit_edge, label %land.lhs.true

if.end77.land.lhs.true82_crit_edge:               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

land.lhs.true:                                    ; preds = %if.end77
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %65)
  %cmp79 = icmp eq i32 %65, 720896
  br i1 %cmp79, label %land.lhs.true80, label %land.lhs.true.land.lhs.true82_crit_edge

land.lhs.true.land.lhs.true82_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

land.lhs.true80:                                  ; preds = %land.lhs.true
  %rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 7
  %66 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp81 = icmp eq i32 %67, 0
  br i1 %cmp81, label %land.lhs.true80.if.end89_crit_edge, label %land.lhs.true80.land.lhs.true82_crit_edge

land.lhs.true80.land.lhs.true82_crit_edge:        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true82

land.lhs.true80.if.end89_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

land.lhs.true82:                                  ; preds = %land.lhs.true80.land.lhs.true82_crit_edge, %land.lhs.true.land.lhs.true82_crit_edge, %if.end77.land.lhs.true82_crit_edge
  %68 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pp_feature, align 8
  %and85 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %land.lhs.true82.if.end89_crit_edge, label %if.then87

land.lhs.true82.if.end89_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then87:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %feature_mask, align 8
  %or88 = or i64 %71, 776
  store i64 %or88, ptr %feature_mask, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %land.lhs.true82.if.end89_crit_edge, %land.lhs.true80.if.end89_crit_edge
  %72 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %smu, align 8
  %pcie_rreg.i136 = getelementptr inbounds %struct.amdgpu_device, ptr %73, i32 0, i32 39
  %74 = ptrtoint ptr %pcie_rreg.i136 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pcie_rreg.i136, align 8
  %call.i137 = tail call i32 %75(ptr noundef %73, i32 noundef 58786240) #13
  %and.i138 = and i32 %call.i137, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139.not = icmp eq i32 %and.i138, 0
  br i1 %tobool.not.i139.not, label %if.end89.cleanup_crit_edge, label %land.lhs.true91

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true91:                                  ; preds = %if.end89
  %arrayidx93 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %76 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %77)
  %cmp95 = icmp eq i32 %77, 720896
  br i1 %cmp95, label %land.lhs.true96, label %land.lhs.true91.cleanup_crit_edge

land.lhs.true91.cleanup_crit_edge:                ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true96:                                  ; preds = %land.lhs.true91
  %rev_id97 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 7
  %78 = ptrtoint ptr %rev_id97 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rev_id97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp98 = icmp eq i32 %79, 0
  br i1 %cmp98, label %if.then99, label %land.lhs.true96.cleanup_crit_edge

land.lhs.true96.cleanup_crit_edge:                ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then99:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %feature_mask, align 8
  %and100 = and i64 %81, -2049
  store i64 %and100, ptr %feature_mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %land.lhs.true96.cleanup_crit_edge, %land.lhs.true91.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then99 ], [ 0, %land.lhs.true96.cleanup_crit_edge ], [ 0, %land.lhs.true91.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_set_default_dpm_table(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_pptable, align 4
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 6, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 1, i32 1
  %4 = ptrtoint ptr %SnapToDiscrete to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %SnapToDiscrete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %is_fine_grained = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 3
  %frombool = zext i1 %tobool5.not to i8
  %6 = ptrtoint ptr %is_fine_grained to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %is_fine_grained, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %count = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count, align 4
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %8 = ptrtoint ptr %socclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %socclk, align 4
  %div = udiv i32 %9, 100
  %dpm_levels = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 4
  %value = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %value, align 4
  %11 = ptrtoint ptr %dpm_levels to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %dpm_levels, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %1, align 4
  %max = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %max, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end
  %gfx_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1
  %call18 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else32, label %if.then20

if.then20:                                        ; preds = %if.end16
  %call21 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 0, ptr noundef %gfx_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete27 = getelementptr inbounds %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 0, i32 1
  %14 = ptrtoint ptr %SnapToDiscrete27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %SnapToDiscrete27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool28.not = icmp eq i8 %15, 0
  %is_fine_grained30 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 3
  %frombool31 = zext i1 %tobool28.not to i8
  %16 = ptrtoint ptr %is_fine_grained30 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool31, ptr %is_fine_grained30, align 4
  br label %if.end51

if.else32:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %count33 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %count33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %count33, align 4
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %18 = ptrtoint ptr %gfxclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gfxclk, align 4
  %div36 = udiv i32 %19, 100
  %dpm_levels37 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 4
  %value39 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %value39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div36, ptr %value39, align 4
  %21 = ptrtoint ptr %dpm_levels37 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dpm_levels37, align 4
  %22 = ptrtoint ptr %gfx_table to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div36, ptr %gfx_table, align 4
  %max50 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %max50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div36, ptr %max50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else32, %if.end24
  %uclk_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2
  %call53 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else67, label %if.then55

if.then55:                                        ; preds = %if.end51
  %call56 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 7, ptr noundef %uclk_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete62 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 2, i32 1
  %24 = ptrtoint ptr %SnapToDiscrete62 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %SnapToDiscrete62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool63.not = icmp eq i8 %25, 0
  %is_fine_grained65 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 3
  %frombool66 = zext i1 %tobool63.not to i8
  %26 = ptrtoint ptr %is_fine_grained65 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool66, ptr %is_fine_grained65, align 4
  br label %if.end86

if.else67:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %count68 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %count68 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %count68, align 4
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %28 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %uclk, align 8
  %div71 = udiv i32 %29, 100
  %dpm_levels72 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 4
  %value74 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %value74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div71, ptr %value74, align 4
  %31 = ptrtoint ptr %dpm_levels72 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %dpm_levels72, align 4
  %32 = ptrtoint ptr %uclk_table to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div71, ptr %uclk_table, align 4
  %max85 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %max85 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div71, ptr %max85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else67, %if.end59
  %vclk_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 4
  %call88 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else102, label %if.then90

if.then90:                                        ; preds = %if.end86
  %call91 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 1, ptr noundef %vclk_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end94:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete97 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 4, i32 1
  %34 = ptrtoint ptr %SnapToDiscrete97 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %SnapToDiscrete97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool98.not = icmp eq i8 %35, 0
  %is_fine_grained100 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 4, i32 3
  %frombool101 = zext i1 %tobool98.not to i8
  %36 = ptrtoint ptr %is_fine_grained100 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool101, ptr %is_fine_grained100, align 4
  br label %if.end121

if.else102:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  %count103 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %count103 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %count103, align 4
  %vclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 6
  %38 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vclk, align 8
  %div106 = udiv i32 %39, 100
  %dpm_levels107 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 4, i32 4
  %value109 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 4, i32 4, i32 0, i32 1
  %40 = ptrtoint ptr %value109 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div106, ptr %value109, align 4
  %41 = ptrtoint ptr %dpm_levels107 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %dpm_levels107, align 4
  %42 = ptrtoint ptr %vclk_table to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div106, ptr %vclk_table, align 4
  %max120 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %max120 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div106, ptr %max120, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.else102, %if.end94
  %dclk_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 6
  %call123 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.else137, label %if.then125

if.then125:                                       ; preds = %if.end121
  %call126 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 2, ptr noundef %dclk_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.then125.cleanup_crit_edge

if.then125.cleanup_crit_edge:                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end129:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete132 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 3, i32 1
  %44 = ptrtoint ptr %SnapToDiscrete132 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %SnapToDiscrete132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool133.not = icmp eq i8 %45, 0
  %is_fine_grained135 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 6, i32 3
  %frombool136 = zext i1 %tobool133.not to i8
  %46 = ptrtoint ptr %is_fine_grained135 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool136, ptr %is_fine_grained135, align 4
  br label %if.end156

if.else137:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  %count138 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %count138 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %count138, align 4
  %dclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 7
  %48 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dclk, align 4
  %div141 = udiv i32 %49, 100
  %dpm_levels142 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 6, i32 4
  %value144 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 6, i32 4, i32 0, i32 1
  %50 = ptrtoint ptr %value144 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div141, ptr %value144, align 4
  %51 = ptrtoint ptr %dpm_levels142 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %dpm_levels142, align 4
  %52 = ptrtoint ptr %dclk_table to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div141, ptr %dclk_table, align 4
  %max155 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %max155 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div141, ptr %max155, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.else137, %if.end129
  %dcef_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 8
  %call158 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.else172, label %if.then160

if.then160:                                       ; preds = %if.end156
  %call161 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 8, ptr noundef %dcef_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.then160.cleanup_crit_edge

if.then160.cleanup_crit_edge:                     ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end164:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete167 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 5, i32 1
  %54 = ptrtoint ptr %SnapToDiscrete167 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %SnapToDiscrete167, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool168.not = icmp eq i8 %55, 0
  %is_fine_grained170 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 8, i32 3
  %frombool171 = zext i1 %tobool168.not to i8
  %56 = ptrtoint ptr %is_fine_grained170 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool171, ptr %is_fine_grained170, align 4
  br label %if.end191

if.else172:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  %count173 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 8, i32 2
  %57 = ptrtoint ptr %count173 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %count173, align 4
  %dcefclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %58 = ptrtoint ptr %dcefclk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dcefclk, align 8
  %div176 = udiv i32 %59, 100
  %dpm_levels177 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 8, i32 4
  %value179 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 8, i32 4, i32 0, i32 1
  %60 = ptrtoint ptr %value179 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div176, ptr %value179, align 4
  %61 = ptrtoint ptr %dpm_levels177 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %dpm_levels177, align 4
  %62 = ptrtoint ptr %dcef_table to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div176, ptr %dcef_table, align 4
  %max190 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %max190 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div176, ptr %max190, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.else172, %if.end164
  %pixel_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 9
  %call193 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.else207, label %if.then195

if.then195:                                       ; preds = %if.end191
  %call196 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 10, ptr noundef %pixel_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.end199, label %if.then195.cleanup_crit_edge

if.then195.cleanup_crit_edge:                     ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end199:                                        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete202 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 7, i32 1
  %64 = ptrtoint ptr %SnapToDiscrete202 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %SnapToDiscrete202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool203.not = icmp eq i8 %65, 0
  %is_fine_grained205 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 9, i32 3
  %frombool206 = zext i1 %tobool203.not to i8
  %66 = ptrtoint ptr %is_fine_grained205 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool206, ptr %is_fine_grained205, align 4
  br label %if.end227

if.else207:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  %count208 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 9, i32 2
  %67 = ptrtoint ptr %count208 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %count208, align 4
  %dcefclk211 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %68 = ptrtoint ptr %dcefclk211 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dcefclk211, align 8
  %div212 = udiv i32 %69, 100
  %dpm_levels213 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 9, i32 4
  %value215 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 9, i32 4, i32 0, i32 1
  %70 = ptrtoint ptr %value215 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div212, ptr %value215, align 4
  %71 = ptrtoint ptr %dpm_levels213 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %dpm_levels213, align 4
  %72 = ptrtoint ptr %pixel_table to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div212, ptr %pixel_table, align 4
  %max226 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 9, i32 1
  %73 = ptrtoint ptr %max226 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div212, ptr %max226, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.else207, %if.end199
  %display_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 10
  %call229 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.else243, label %if.then231

if.then231:                                       ; preds = %if.end227
  %call232 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 9, ptr noundef %display_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end235, label %if.then231.cleanup_crit_edge

if.then231.cleanup_crit_edge:                     ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end235:                                        ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete238 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 6, i32 1
  %74 = ptrtoint ptr %SnapToDiscrete238 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %SnapToDiscrete238, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool239.not = icmp eq i8 %75, 0
  %is_fine_grained241 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 10, i32 3
  %frombool242 = zext i1 %tobool239.not to i8
  %76 = ptrtoint ptr %is_fine_grained241 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %frombool242, ptr %is_fine_grained241, align 4
  br label %if.end263

if.else243:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  %count244 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 10, i32 2
  %77 = ptrtoint ptr %count244 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %count244, align 4
  %dcefclk247 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %78 = ptrtoint ptr %dcefclk247 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dcefclk247, align 8
  %div248 = udiv i32 %79, 100
  %dpm_levels249 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 10, i32 4
  %value251 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 10, i32 4, i32 0, i32 1
  %80 = ptrtoint ptr %value251 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div248, ptr %value251, align 4
  %81 = ptrtoint ptr %dpm_levels249 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %dpm_levels249, align 4
  %82 = ptrtoint ptr %display_table to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div248, ptr %display_table, align 4
  %max262 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %max262 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div248, ptr %max262, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.else243, %if.end235
  %phy_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 11
  %call265 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.else279, label %if.then267

if.then267:                                       ; preds = %if.end263
  %call268 = tail call i32 @smu_v11_0_set_single_dpm_table(ptr noundef %smu, i32 noundef 11, ptr noundef %phy_table) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %if.end271, label %if.then267.cleanup_crit_edge

if.then267.cleanup_crit_edge:                     ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end271:                                        ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #15
  %SnapToDiscrete274 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 41, i32 8, i32 1
  %84 = ptrtoint ptr %SnapToDiscrete274 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %SnapToDiscrete274, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool275.not = icmp eq i8 %85, 0
  %is_fine_grained277 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 11, i32 3
  %frombool278 = zext i1 %tobool275.not to i8
  %86 = ptrtoint ptr %is_fine_grained277 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool278, ptr %is_fine_grained277, align 4
  br label %cleanup

if.else279:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #15
  %count280 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 11, i32 2
  %87 = ptrtoint ptr %count280 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %count280, align 4
  %dcefclk283 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %88 = ptrtoint ptr %dcefclk283 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dcefclk283, align 8
  %div284 = udiv i32 %89, 100
  %dpm_levels285 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 11, i32 4
  %value287 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 11, i32 4, i32 0, i32 1
  %90 = ptrtoint ptr %value287 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %div284, ptr %value287, align 4
  %91 = ptrtoint ptr %dpm_levels285 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %dpm_levels285, align 4
  %92 = ptrtoint ptr %phy_table to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div284, ptr %phy_table, align 4
  %max298 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 11, i32 1
  %93 = ptrtoint ptr %max298 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div284, ptr %max298, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else279, %if.end271, %if.then267.cleanup_crit_edge, %if.then231.cleanup_crit_edge, %if.then195.cleanup_crit_edge, %if.then160.cleanup_crit_edge, %if.then125.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ %call56, %if.then55.cleanup_crit_edge ], [ %call91, %if.then90.cleanup_crit_edge ], [ %call126, %if.then125.cleanup_crit_edge ], [ %call161, %if.then160.cleanup_crit_edge ], [ %call196, %if.then195.cleanup_crit_edge ], [ %call232, %if.then231.cleanup_crit_edge ], [ %call268, %if.then267.cleanup_crit_edge ], [ 0, %if.else279 ], [ 0, %if.end271 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi10_populate_umd_state_clk(ptr nocapture noundef %smu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  %gfx_table2 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1
  %uclk_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2
  %pstate_table6 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %gfx_table2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfx_table2, align 4
  %6 = ptrtoint ptr %pstate_table6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pstate_table6, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %3, i32 0, i32 172, i32 15
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default23 [
    i32 720896, label %sw.bb
    i32 720901, label %sw.bb12
    i32 720905, label %entry.sw.epilog25_crit_edge
  ]

entry.sw.epilog25_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog25

sw.bb:                                            ; preds = %entry
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revision, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %13, label %sw.default [
    i8 -16, label %sw.bb.sw.epilog25_crit_edge
    i8 -64, label %sw.bb.sw.epilog25_crit_edge91
    i8 -15, label %sw.bb.sw.bb11_crit_edge
    i8 -63, label %sw.bb.sw.bb11_crit_edge92
  ]

sw.bb.sw.bb11_crit_edge92:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11

sw.bb.sw.bb11_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb11

sw.bb.sw.epilog25_crit_edge91:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog25

sw.bb.sw.epilog25_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog25

sw.bb11:                                          ; preds = %sw.bb.sw.bb11_crit_edge, %sw.bb.sw.bb11_crit_edge92
  br label %sw.epilog25

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog25

sw.bb12:                                          ; preds = %entry
  %pdev13 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev13, align 4
  %revision14 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %revision14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %revision14, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %18, label %sw.default20 [
    i8 -57, label %sw.bb12.sw.epilog25_crit_edge
    i8 -12, label %sw.bb12.sw.epilog25_crit_edge93
    i8 -63, label %sw.bb12.sw.bb17_crit_edge
    i8 -14, label %sw.bb12.sw.bb17_crit_edge94
    i8 -61, label %sw.bb12.sw.bb18_crit_edge
    i8 -13, label %sw.bb12.sw.bb18_crit_edge95
    i8 -59, label %sw.bb12.sw.bb19_crit_edge
    i8 -10, label %sw.bb12.sw.bb19_crit_edge96
  ]

sw.bb12.sw.bb19_crit_edge96:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

sw.bb12.sw.bb19_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

sw.bb12.sw.bb18_crit_edge95:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb18

sw.bb12.sw.bb18_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb18

sw.bb12.sw.bb17_crit_edge94:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

sw.bb12.sw.bb17_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb17

sw.bb12.sw.epilog25_crit_edge93:                  ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog25

sw.bb12.sw.epilog25_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog25

sw.bb17:                                          ; preds = %sw.bb12.sw.bb17_crit_edge, %sw.bb12.sw.bb17_crit_edge94
  br label %sw.epilog25

sw.bb18:                                          ; preds = %sw.bb12.sw.bb18_crit_edge, %sw.bb12.sw.bb18_crit_edge95
  br label %sw.epilog25

sw.bb19:                                          ; preds = %sw.bb12.sw.bb19_crit_edge, %sw.bb12.sw.bb19_crit_edge96
  br label %sw.epilog25

sw.default20:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog25

sw.default23:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %count = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %sub = add i32 %21, -1
  %value = getelementptr %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 4, i32 %sub, i32 1
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value, align 4
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %sw.default23, %sw.default20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb12.sw.epilog25_crit_edge, %sw.bb12.sw.epilog25_crit_edge93, %sw.default, %sw.bb11, %sw.bb.sw.epilog25_crit_edge, %sw.bb.sw.epilog25_crit_edge91, %entry.sw.epilog25_crit_edge
  %sclk_freq.0 = phi i32 [ %23, %sw.default23 ], [ 1448, %sw.default20 ], [ 1181, %sw.bb19 ], [ 1181, %sw.bb18 ], [ 1448, %sw.bb17 ], [ 1625, %sw.default ], [ 1755, %sw.bb11 ], [ 1830, %sw.bb.sw.epilog25_crit_edge ], [ 1830, %sw.bb.sw.epilog25_crit_edge91 ], [ 1670, %sw.bb12.sw.epilog25_crit_edge ], [ 1670, %sw.bb12.sw.epilog25_crit_edge93 ], [ 1100, %entry.sw.epilog25_crit_edge ]
  %peak = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 2
  %24 = ptrtoint ptr %peak to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sclk_freq.0, ptr %peak, align 4
  %25 = ptrtoint ptr %uclk_table to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uclk_table, align 4
  %uclk_pstate = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2
  %27 = ptrtoint ptr %uclk_pstate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %uclk_pstate, align 4
  %max = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max, align 4
  %peak30 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 2
  %30 = ptrtoint ptr %peak30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %peak30, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %socclk_pstate = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1
  %33 = ptrtoint ptr %socclk_pstate to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %socclk_pstate, align 4
  %max33 = getelementptr inbounds %struct.smu_11_0_dpm_table, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %max33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max33, align 4
  %peak35 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1, i32 2
  %36 = ptrtoint ptr %peak35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %peak35, align 4
  %max36 = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %max36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300, i32 %38)
  %cmp = icmp ugt i32 %38, 1300
  br i1 %cmp, label %land.lhs.true, label %sw.epilog25.if.else_crit_edge

sw.epilog25.if.else_crit_edge:                    ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %sw.epilog25
  %39 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 625, i32 %40)
  %cmp39 = icmp ugt i32 %40, 625
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true41:                                  ; preds = %land.lhs.true
  %41 = ptrtoint ptr %max33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 980, i32 %42)
  %cmp43 = icmp ugt i32 %42, 980
  br i1 %cmp43, label %land.lhs.true41.if.end_crit_edge, label %land.lhs.true41.if.else_crit_edge

land.lhs.true41.if.else_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true41.if.end_crit_edge:                 ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %land.lhs.true41.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %sw.epilog25.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true41.if.end_crit_edge
  %.sink90 = phi i32 [ %5, %if.else ], [ 1300, %land.lhs.true41.if.end_crit_edge ]
  %.sink89 = phi i32 [ %26, %if.else ], [ 625, %land.lhs.true41.if.end_crit_edge ]
  %.sink = phi i32 [ %32, %if.else ], [ 980, %land.lhs.true41.if.end_crit_edge ]
  %standard53 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 1
  %43 = ptrtoint ptr %standard53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink90, ptr %standard53, align 4
  %standard57 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 2, i32 1
  %44 = ptrtoint ptr %standard57 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink89, ptr %standard57, align 4
  %standard61 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 1, i32 1
  %45 = ptrtoint ptr %standard61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink, ptr %standard61, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_print_clk_levels(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %buf) #1 align 64 {
entry:
  %cur_value = alloca i32, align 4
  %value = alloca i32, align 4
  %count = alloca i32, align 4
  %freq_values = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_value) #13
  %0 = ptrtoint ptr %cur_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #13
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #13
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %freq_values) #13
  %3 = call ptr @memset(ptr %freq_values, i32 0, i32 12)
  %dpm_context2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %dpm_context2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dpm_context2, align 4
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %6 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_pptable, align 4
  %overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 16
  %8 = ptrtoint ptr %overdrive_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %overdrive_table, align 4
  %od_settings3 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 21
  %10 = ptrtoint ptr %od_settings3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %od_settings3, align 4
  %tobool.not.i = icmp eq ptr %buf, null
  %12 = ptrtoint ptr %buf to i32
  %and.i = and i32 %12, 4095
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %idx.neg.i
  %buf.addr.0 = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %size.0 = select i1 %tobool.not.i, i32 0, i32 %and.i
  %13 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %clk_type, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 13, label %entry.sw.bb_crit_edge558
    i32 6, label %entry.sw.bb_crit_edge559
    i32 14, label %entry.sw.bb_crit_edge560
    i32 7, label %entry.sw.bb_crit_edge561
    i32 12, label %entry.sw.bb_crit_edge562
    i32 1, label %entry.sw.bb_crit_edge563
    i32 2, label %entry.sw.bb_crit_edge564
    i32 8, label %entry.sw.bb_crit_edge565
    i32 15, label %sw.bb56
    i32 18, label %sw.bb185
    i32 19, label %sw.bb201
    i32 20, label %sw.bb218
    i32 21, label %sw.bb248
  ]

entry.sw.bb_crit_edge565:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge564:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge563:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge562:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge561:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge560:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge559:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge558:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge558, %entry.sw.bb_crit_edge559, %entry.sw.bb_crit_edge560, %entry.sw.bb_crit_edge561, %entry.sw.bb_crit_edge562, %entry.sw.bb_crit_edge563, %entry.sw.bb_crit_edge564, %entry.sw.bb_crit_edge565
  %call.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %14 = icmp ult i32 %call.i, 6
  br i1 %14, label %switch.lookup, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.navi10_print_clk_levels, i32 0, i32 %call.i
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call6.i = call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef %switch.load, ptr noundef nonnull %cur_value) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %call4 = call i32 @smu_v11_0_get_dpm_level_count(ptr noundef %smu, i32 noundef %clk_type, ptr noundef nonnull %count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %16 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_pptable, align 4
  %call.i414 = call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #13
  %SnapToDiscrete.i = getelementptr %struct.PPTable_t, ptr %17, i32 0, i32 41, i32 %call.i414, i32 1
  %18 = ptrtoint ptr %SnapToDiscrete.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %SnapToDiscrete.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i415 = icmp eq i8 %19, 0
  br i1 %cmp.i415, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp532.not = icmp eq i32 %21, 0
  br i1 %cmp532.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0534 = phi i32 [ %inc, %if.end13.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %size.1533 = phi i32 [ %add, %if.end13.for.body_crit_edge ], [ %size.0, %for.cond.preheader.for.body_crit_edge ]
  %conv = trunc i32 %i.0534 to i16
  %call10 = call i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef %clk_type, i16 noundef zeroext %conv, ptr noundef nonnull %value) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value, align 4
  %24 = ptrtoint ptr %cur_value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp14 = icmp eq i32 %25, %23
  %cond = select i1 %cmp14, ptr @.str.6, ptr @.str.7
  %call16 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.1533, ptr noundef nonnull @.str.5, i32 noundef %i.0534, i32 noundef %23, ptr noundef nonnull %cond) #13
  %add = add i32 %call16, %size.1533
  %inc = add nuw i32 %i.0534, 1
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %if.end7
  %call17 = call i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef %clk_type, i16 noundef zeroext 0, ptr noundef nonnull %freq_values) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.else
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count, align 4
  %30 = trunc i32 %29 to i16
  %conv21 = add i16 %30, -1
  %arrayidx22 = getelementptr inbounds [3 x i32], ptr %freq_values, i32 0, i32 2
  %call23 = call i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef %clk_type, i16 noundef zeroext %conv21, ptr noundef %arrayidx22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %31 = ptrtoint ptr %cur_value to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_value, align 4
  %arrayidx27 = getelementptr inbounds [3 x i32], ptr %freq_values, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx27, align 4
  %34 = ptrtoint ptr %freq_values to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %freq_values, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %35)
  %cmp29 = icmp eq i32 %32, %35
  br i1 %cmp29, label %if.end26.if.then38_crit_edge, label %cond.false

if.end26.if.then38_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

cond.false:                                       ; preds = %if.end26
  %36 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %37)
  %cmp32 = icmp eq i32 %32, %37
  br i1 %cmp32, label %cond.false.if.then38_crit_edge, label %cond.false.for.body45_crit_edge

cond.false.for.body45_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body45

cond.false.if.then38_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.then38:                                        ; preds = %cond.false.if.then38_crit_edge, %if.end26.if.then38_crit_edge
  %cond35.ph = phi i32 [ 0, %if.end26.if.then38_crit_edge ], [ 2, %cond.false.if.then38_crit_edge ]
  %38 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx22, align 4
  %40 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx27, align 4
  br label %for.body45

for.body45:                                       ; preds = %if.then38, %cond.false.for.body45_crit_edge
  %cond35522 = phi i32 [ %cond35.ph, %if.then38 ], [ 1, %cond.false.for.body45_crit_edge ]
  %exitcond.not.1 = phi i1 [ true, %if.then38 ], [ false, %cond.false.for.body45_crit_edge ]
  %41 = ptrtoint ptr %freq_values to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %freq_values, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond35522)
  %cmp47 = icmp eq i32 %cond35522, 0
  %cond49 = select i1 %cmp47, ptr @.str.6, ptr @.str.7
  %call50 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %42, ptr noundef nonnull %cond49) #13
  %add51 = add i32 %call50, %size.0
  %arrayidx46.1 = getelementptr inbounds [3 x i32], ptr %freq_values, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond35522)
  %cmp47.1 = icmp eq i32 %cond35522, 1
  %cond49.1 = select i1 %cmp47.1, ptr @.str.6, ptr @.str.7
  %call50.1 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add51, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %44, ptr noundef nonnull %cond49.1) #13
  %add51.1 = add i32 %call50.1, %add51
  br i1 %exitcond.not.1, label %for.body45.cleanup_crit_edge, label %for.body45.2

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body45.2:                                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx46.2 = getelementptr inbounds [3 x i32], ptr %freq_values, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx46.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond35522)
  %cmp47.2 = icmp eq i32 %cond35522, 2
  %cond49.2 = select i1 %cmp47.2, ptr @.str.6, ptr @.str.7
  %call50.2 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add51.1, ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef %46, ptr noundef nonnull %cond49.2) #13
  %add51.2 = add i32 %call50.2, %add51.1
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  %call57 = tail call i32 @smu_v11_0_get_current_pcie_link_speed_level(ptr noundef %smu) #13
  %call58 = tail call i32 @smu_v11_0_get_current_pcie_link_width_level(ptr noundef %smu) #13
  %pcie_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 13
  %47 = ptrtoint ptr %pcie_table to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pcie_table, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %49 = icmp ult i8 %48, 3
  br i1 %49, label %switch.lookup544, label %cond.false86

cond.false86:                                     ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %cmp92 = icmp eq i8 %48, 3
  %cond94 = select i1 %cmp92, ptr @.str.12, ptr @.str.7
  br label %cond.end99

switch.lookup544:                                 ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #15
  %50 = sext i8 %48 to i32
  %switch.gep545 = getelementptr inbounds [3 x ptr], ptr @switch.table.navi10_print_clk_levels.178, i32 0, i32 %50
  %51 = ptrtoint ptr %switch.gep545 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load546 = load ptr, ptr %switch.gep545, align 4
  br label %cond.end99

cond.end99:                                       ; preds = %switch.lookup544, %cond.false86
  %cond100 = phi ptr [ %cond94, %cond.false86 ], [ %switch.load546, %switch.lookup544 ]
  %arrayidx103 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 13, i32 1, i32 0
  %52 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx103, align 1
  %switch.tableidx = add i8 %53, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %54 = icmp ult i8 %switch.tableidx, 5
  br i1 %54, label %switch.lookup547, label %cond.false144

cond.false144:                                    ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %53)
  %cmp150 = icmp eq i8 %53, 6
  %cond152 = select i1 %cmp150, ptr @.str.18, ptr @.str.7
  br label %cond.end161

switch.lookup547:                                 ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #15
  %55 = sext i8 %switch.tableidx to i32
  %switch.gep548 = getelementptr inbounds [5 x ptr], ptr @switch.table.navi10_print_clk_levels.179, i32 0, i32 %55
  %56 = ptrtoint ptr %switch.gep548 to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load549 = load ptr, ptr %switch.gep548, align 4
  br label %cond.end161

cond.end161:                                      ; preds = %switch.lookup547, %cond.false144
  %cond162 = phi ptr [ %cond152, %cond.false144 ], [ %switch.load549, %switch.lookup547 ]
  %arrayidx163 = getelementptr %struct.PPTable_t, ptr %7, i32 0, i32 75, i32 0
  %57 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx163, align 2
  %conv164 = zext i16 %58 to i32
  %conv169 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call57, i32 %conv169)
  %cmp170 = icmp eq i32 %call57, %conv169
  %conv176 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call58, i32 %conv176)
  %cmp177 = icmp eq i32 %call58, %conv176
  %or.cond523 = select i1 %cmp170, i1 %cmp177, i1 false
  %59 = select i1 %or.cond523, ptr @.str.6, ptr @.str.7
  %call180 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull %cond100, ptr noundef nonnull %cond162, i32 noundef %conv164, ptr noundef nonnull %59) #13
  %add181 = add i32 %call180, %size.0
  %arrayidx63.1 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 13, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx63.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %62 = icmp ult i8 %61, 3
  br i1 %62, label %switch.lookup550, label %cond.false86.1

cond.false86.1:                                   ; preds = %cond.end161
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %cmp92.1 = icmp eq i8 %61, 3
  %cond94.1 = select i1 %cmp92.1, ptr @.str.12, ptr @.str.7
  br label %cond.end99.1

switch.lookup550:                                 ; preds = %cond.end161
  call void @__sanitizer_cov_trace_pc() #15
  %63 = sext i8 %61 to i32
  %switch.gep551 = getelementptr inbounds [3 x ptr], ptr @switch.table.navi10_print_clk_levels.180, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep551 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load552 = load ptr, ptr %switch.gep551, align 4
  br label %cond.end99.1

cond.end99.1:                                     ; preds = %switch.lookup550, %cond.false86.1
  %cond100.1 = phi ptr [ %cond94.1, %cond.false86.1 ], [ %switch.load552, %switch.lookup550 ]
  %arrayidx103.1 = getelementptr %struct.smu_11_0_dpm_tables, ptr %5, i32 0, i32 13, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx103.1, align 1
  %switch.tableidx554 = add i8 %66, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx554)
  %67 = icmp ult i8 %switch.tableidx554, 5
  br i1 %67, label %switch.lookup553, label %cond.false144.1

cond.false144.1:                                  ; preds = %cond.end99.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %66)
  %cmp150.1 = icmp eq i8 %66, 6
  %cond152.1 = select i1 %cmp150.1, ptr @.str.18, ptr @.str.7
  br label %cond.end161.1

switch.lookup553:                                 ; preds = %cond.end99.1
  call void @__sanitizer_cov_trace_pc() #15
  %68 = sext i8 %switch.tableidx554 to i32
  %switch.gep555 = getelementptr inbounds [5 x ptr], ptr @switch.table.navi10_print_clk_levels.181, i32 0, i32 %68
  %69 = ptrtoint ptr %switch.gep555 to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load556 = load ptr, ptr %switch.gep555, align 4
  br label %cond.end161.1

cond.end161.1:                                    ; preds = %switch.lookup553, %cond.false144.1
  %cond162.1 = phi ptr [ %cond152.1, %cond.false144.1 ], [ %switch.load556, %switch.lookup553 ]
  %arrayidx163.1 = getelementptr %struct.PPTable_t, ptr %7, i32 0, i32 75, i32 1
  %70 = ptrtoint ptr %arrayidx163.1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx163.1, align 2
  %conv164.1 = zext i16 %71 to i32
  %conv169.1 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call57, i32 %conv169.1)
  %cmp170.1 = icmp eq i32 %call57, %conv169.1
  %conv176.1 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call58, i32 %conv176.1)
  %cmp177.1 = icmp eq i32 %call58, %conv176.1
  %or.cond523.1 = select i1 %cmp170.1, i1 %cmp177.1, i1 false
  %72 = select i1 %or.cond523.1, ptr @.str.6, ptr @.str.7
  %call180.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add181, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %cond100.1, ptr noundef nonnull %cond162.1, i32 noundef %conv164.1, ptr noundef nonnull %72) #13
  %add181.1 = add i32 %call180.1, %add181
  br label %cleanup

sw.bb185:                                         ; preds = %entry
  %od_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 25
  %73 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %od_enabled, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool186.not = icmp eq i8 %74, 0
  %tobool187.not = icmp eq ptr %9, null
  %or.cond = select i1 %tobool186.not, i1 true, i1 %tobool187.not
  %tobool189.not = icmp eq ptr %11, null
  %or.cond406 = select i1 %or.cond, i1 true, i1 %tobool189.not
  br i1 %or.cond406, label %sw.bb185.cleanup_crit_edge, label %if.end191

sw.bb185.cleanup_crit_edge:                       ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end191:                                        ; preds = %sw.bb185
  %arrayidx.i = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 4, i32 0
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.i.not = icmp eq i8 %76, 0
  br i1 %tobool.i.not, label %if.end191.cleanup_crit_edge, label %if.end194

if.end191.cleanup_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end194:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #15
  %call195 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.19) #13
  %add196 = add i32 %call195, %size.0
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %9, align 4
  %conv197 = zext i16 %78 to i32
  %GfxclkFmax = getelementptr inbounds %struct.OverDriveTable_t, ptr %9, i32 0, i32 1
  %79 = ptrtoint ptr %GfxclkFmax to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %GfxclkFmax, align 2
  %conv198 = zext i16 %80 to i32
  %call199 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add196, ptr noundef nonnull @.str.20, i32 noundef %conv197, i32 noundef %conv198) #13
  %add200 = add i32 %call199, %add196
  br label %cleanup

sw.bb201:                                         ; preds = %entry
  %od_enabled202 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 25
  %81 = ptrtoint ptr %od_enabled202 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %od_enabled202, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool203.not = icmp eq i8 %82, 0
  %tobool205.not = icmp eq ptr %9, null
  %or.cond407 = select i1 %tobool203.not, i1 true, i1 %tobool205.not
  %tobool207.not = icmp eq ptr %11, null
  %or.cond408 = select i1 %or.cond407, i1 true, i1 %tobool207.not
  br i1 %or.cond408, label %sw.bb201.cleanup_crit_edge, label %if.end209

sw.bb201.cleanup_crit_edge:                       ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end209:                                        ; preds = %sw.bb201
  %arrayidx.i416 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 4, i32 2
  %83 = ptrtoint ptr %arrayidx.i416 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i416, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.i417.not = icmp eq i8 %84, 0
  br i1 %tobool.i417.not, label %if.end209.cleanup_crit_edge, label %if.end212

if.end209.cleanup_crit_edge:                      ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end212:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #15
  %call213 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.21) #13
  %add214 = add i32 %call213, %size.0
  %UclkFmax = getelementptr inbounds %struct.OverDriveTable_t, ptr %9, i32 0, i32 8
  %85 = ptrtoint ptr %UclkFmax to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %UclkFmax, align 4
  %conv215 = zext i16 %86 to i32
  %call216 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add214, ptr noundef nonnull @.str.22, i32 noundef %conv215) #13
  %add217 = add i32 %call216, %add214
  br label %cleanup

sw.bb218:                                         ; preds = %entry
  %od_enabled219 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 25
  %87 = ptrtoint ptr %od_enabled219 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %od_enabled219, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool220.not = icmp eq i8 %88, 0
  %tobool222.not = icmp eq ptr %9, null
  %or.cond409 = select i1 %tobool220.not, i1 true, i1 %tobool222.not
  %tobool224.not = icmp eq ptr %11, null
  %or.cond410 = select i1 %or.cond409, i1 true, i1 %tobool224.not
  br i1 %or.cond410, label %sw.bb218.cleanup_crit_edge, label %if.end226

sw.bb218.cleanup_crit_edge:                       ; preds = %sw.bb218
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end226:                                        ; preds = %sw.bb218
  %arrayidx.i418 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %arrayidx.i418 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i418, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.i419.not = icmp eq i8 %90, 0
  br i1 %tobool.i419.not, label %if.end226.cleanup_crit_edge, label %sw.epilog.2

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog.2:                                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #15
  %call230 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.23) #13
  %add231 = add i32 %call230, %size.0
  %GfxclkFreq3 = getelementptr inbounds %struct.OverDriveTable_t, ptr %9, i32 0, i32 6
  %GfxclkFreq2 = getelementptr inbounds %struct.OverDriveTable_t, ptr %9, i32 0, i32 4
  %GfxclkFreq1 = getelementptr inbounds %struct.OverDriveTable_t, ptr %9, i32 0, i32 2
  %91 = ptrtoint ptr %GfxclkFreq1 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %GfxclkFreq1, align 2
  %conv240 = zext i16 %92 to i32
  %arrayidx241 = getelementptr %struct.OverDriveTable_t, ptr %9, i32 0, i32 3
  %93 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx241, align 2
  %95 = lshr i16 %94, 2
  %div = zext i16 %95 to i32
  %call243 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add231, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef %conv240, i32 noundef %div) #13
  %add244 = add i32 %call243, %add231
  %96 = ptrtoint ptr %GfxclkFreq2 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %GfxclkFreq2, align 2
  %conv240.1 = zext i16 %97 to i32
  %arrayidx241.1 = getelementptr %struct.OverDriveTable_t, ptr %9, i32 0, i32 5
  %98 = ptrtoint ptr %arrayidx241.1 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx241.1, align 2
  %100 = lshr i16 %99, 2
  %div.1 = zext i16 %100 to i32
  %call243.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add244, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef %conv240.1, i32 noundef %div.1) #13
  %add244.1 = add i32 %call243.1, %add244
  %101 = ptrtoint ptr %GfxclkFreq3 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %GfxclkFreq3, align 2
  %conv240.2 = zext i16 %102 to i32
  %arrayidx241.2 = getelementptr %struct.OverDriveTable_t, ptr %9, i32 0, i32 7
  %103 = ptrtoint ptr %arrayidx241.2 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx241.2, align 2
  %105 = lshr i16 %104, 2
  %div.2 = zext i16 %105 to i32
  %call243.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add244.1, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef %conv240.2, i32 noundef %div.2) #13
  %add244.2 = add i32 %call243.2, %add244.1
  br label %cleanup

sw.bb248:                                         ; preds = %entry
  %od_enabled249 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 25
  %106 = ptrtoint ptr %od_enabled249 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %od_enabled249, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool250.not = icmp eq i8 %107, 0
  %tobool252.not = icmp eq ptr %9, null
  %or.cond411 = select i1 %tobool250.not, i1 true, i1 %tobool252.not
  %tobool254.not = icmp eq ptr %11, null
  %or.cond412 = select i1 %or.cond411, i1 true, i1 %tobool254.not
  br i1 %or.cond412, label %sw.bb248.cleanup_crit_edge, label %if.end256

sw.bb248.cleanup_crit_edge:                       ; preds = %sw.bb248
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end256:                                        ; preds = %sw.bb248
  %call257 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #13
  %add258 = add i32 %call257, %size.0
  %arrayidx.i420 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 4, i32 0
  %108 = ptrtoint ptr %arrayidx.i420 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i420, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.i421.not = icmp eq i8 %109, 0
  br i1 %tobool.i421.not, label %if.end256.if.end263_crit_edge, label %if.then260

if.end256.if.end263_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end263

if.then260:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i422 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 6, i32 1
  %110 = ptrtoint ptr %arrayidx.i422 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %arrayidx.i422, align 1
  %arrayidx5.i = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 5, i32 0
  %112 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %arrayidx5.i, align 1
  %call261 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add258, ptr noundef nonnull @.str.27, i32 noundef %111, i32 noundef %113) #13
  %add262 = add i32 %call261, %add258
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end256.if.end263_crit_edge
  %size.5 = phi i32 [ %add262, %if.then260 ], [ %add258, %if.end256.if.end263_crit_edge ]
  %arrayidx.i425 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 4, i32 2
  %114 = ptrtoint ptr %arrayidx.i425 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i425, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.i426.not = icmp eq i8 %115, 0
  br i1 %tobool.i426.not, label %if.end263.if.end268_crit_edge, label %if.then265

if.end263.if.end268_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end268

if.then265:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i427 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 6, i32 8
  %116 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %arrayidx.i427, align 1
  %arrayidx5.i429 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 5, i32 8
  %118 = ptrtoint ptr %arrayidx5.i429 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx5.i429, align 1
  %call266 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.5, ptr noundef nonnull @.str.28, i32 noundef %117, i32 noundef %119) #13
  %add267 = add i32 %call266, %size.5
  br label %if.end268

if.end268:                                        ; preds = %if.then265, %if.end263.if.end268_crit_edge
  %size.6 = phi i32 [ %add267, %if.then265 ], [ %size.5, %if.end263.if.end268_crit_edge ]
  %arrayidx.i430 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 4, i32 1
  %120 = ptrtoint ptr %arrayidx.i430 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i430, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.i431.not = icmp eq i8 %121, 0
  br i1 %tobool.i431.not, label %if.end268.cleanup_crit_edge, label %if.then270

if.end268.cleanup_crit_edge:                      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then270:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i432 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 6, i32 2
  %122 = ptrtoint ptr %arrayidx.i432 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %arrayidx.i432, align 1
  %arrayidx5.i434 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 5, i32 2
  %124 = ptrtoint ptr %arrayidx5.i434 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %arrayidx5.i434, align 1
  %call271 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.6, ptr noundef nonnull @.str.29, i32 noundef %123, i32 noundef %125) #13
  %add272 = add i32 %call271, %size.6
  %arrayidx.i435 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 6, i32 3
  %126 = ptrtoint ptr %arrayidx.i435 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %arrayidx.i435, align 1
  %arrayidx5.i437 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 5, i32 3
  %128 = ptrtoint ptr %arrayidx5.i437 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %arrayidx5.i437, align 1
  %call273 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add272, ptr noundef nonnull @.str.30, i32 noundef %127, i32 noundef %129) #13
  %add274 = add i32 %call273, %add272
  %arrayidx.i438 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 6, i32 4
  %130 = ptrtoint ptr %arrayidx.i438 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %arrayidx.i438, align 1
  %arrayidx5.i440 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 5, i32 4
  %132 = ptrtoint ptr %arrayidx5.i440 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %arrayidx5.i440, align 1
  %call275 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add274, ptr noundef nonnull @.str.31, i32 noundef %131, i32 noundef %133) #13
  %add276 = add i32 %call275, %add274
  %arrayidx.i441 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 6, i32 5
  %134 = ptrtoint ptr %arrayidx.i441 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %arrayidx.i441, align 1
  %arrayidx5.i443 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 5, i32 5
  %136 = ptrtoint ptr %arrayidx5.i443 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %arrayidx5.i443, align 1
  %call277 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add276, ptr noundef nonnull @.str.32, i32 noundef %135, i32 noundef %137) #13
  %add278 = add i32 %call277, %add276
  %arrayidx.i444 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 6, i32 6
  %138 = ptrtoint ptr %arrayidx.i444 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %arrayidx.i444, align 1
  %arrayidx5.i446 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 5, i32 6
  %140 = ptrtoint ptr %arrayidx5.i446 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %arrayidx5.i446, align 1
  %call279 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add278, ptr noundef nonnull @.str.33, i32 noundef %139, i32 noundef %141) #13
  %add280 = add i32 %call279, %add278
  %arrayidx.i447 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 6, i32 7
  %142 = ptrtoint ptr %arrayidx.i447 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %arrayidx.i447, align 1
  %arrayidx5.i449 = getelementptr %struct.smu_11_0_overdrive_table, ptr %11, i32 0, i32 5, i32 7
  %144 = ptrtoint ptr %arrayidx5.i449 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %arrayidx5.i449, align 1
  %call281 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add280, ptr noundef nonnull @.str.34, i32 noundef %143, i32 noundef %145) #13
  %add282 = add i32 %call281, %add280
  br label %cleanup

cleanup:                                          ; preds = %if.then270, %if.end268.cleanup_crit_edge, %sw.bb248.cleanup_crit_edge, %sw.epilog.2, %if.end226.cleanup_crit_edge, %sw.bb218.cleanup_crit_edge, %if.end212, %if.end209.cleanup_crit_edge, %sw.bb201.cleanup_crit_edge, %if.end194, %if.end191.cleanup_crit_edge, %sw.bb185.cleanup_crit_edge, %cond.end161.1, %for.body45.2, %for.body45.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %size.7 = phi i32 [ %size.0, %entry.cleanup_crit_edge ], [ %size.0, %sw.bb248.cleanup_crit_edge ], [ %add282, %if.then270 ], [ %size.6, %if.end268.cleanup_crit_edge ], [ %size.0, %sw.bb218.cleanup_crit_edge ], [ %size.0, %if.end226.cleanup_crit_edge ], [ %size.0, %sw.bb201.cleanup_crit_edge ], [ %add217, %if.end212 ], [ %size.0, %if.end209.cleanup_crit_edge ], [ %size.0, %sw.bb185.cleanup_crit_edge ], [ %add200, %if.end194 ], [ %size.0, %if.end191.cleanup_crit_edge ], [ %size.0, %if.end20.cleanup_crit_edge ], [ %size.0, %if.else.cleanup_crit_edge ], [ %size.0, %if.end.cleanup_crit_edge ], [ %size.0, %switch.lookup.cleanup_crit_edge ], [ %size.0, %sw.bb.cleanup_crit_edge ], [ %size.0, %for.cond.preheader.cleanup_crit_edge ], [ %add181.1, %cond.end161.1 ], [ %add244.2, %sw.epilog.2 ], [ %add51.1, %for.body45.cleanup_crit_edge ], [ %add51.2, %for.body45.2 ], [ %size.1533, %for.body.cleanup_crit_edge ], [ %add, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %freq_values) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_value) #13
  ret i32 %size.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_force_clk_levels(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %mask) #1 align 64 {
entry:
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #13
  %0 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_freq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #13
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max_freq, align 4
  %2 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %clk_type, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 13, label %entry.sw.bb_crit_edge48
    i32 6, label %entry.sw.bb_crit_edge49
    i32 14, label %entry.sw.bb_crit_edge50
    i32 7, label %entry.sw.bb_crit_edge51
    i32 12, label %entry.sw.bb_crit_edge52
    i32 8, label %do.end
  ]

entry.sw.bb_crit_edge52:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge51:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge50:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge48:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge48, %entry.sw.bb_crit_edge49, %entry.sw.bb_crit_edge50, %entry.sw.bb_crit_edge51, %entry.sw.bb_crit_edge52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %3 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 true), !range !356
  %spec.select = select i1 %tobool.not, i32 0, i32 %3
  %driver_pptable.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %4 = ptrtoint ptr %driver_pptable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_pptable.i, align 4
  %call.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #13
  %SnapToDiscrete.i = getelementptr %struct.PPTable_t, ptr %5, i32 0, i32 41, i32 %call.i, i32 1
  %6 = ptrtoint ptr %SnapToDiscrete.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %SnapToDiscrete.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.not = icmp ne i32 %spec.select, 0
  %cond10 = zext i1 %cmp9.not to i32
  %soft_min_level.0 = select i1 %cmp.i, i32 %cond10, i32 %spec.select
  %conv = trunc i32 %soft_min_level.0 to i16
  %call11 = call i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef %clk_type, i16 noundef zeroext %conv, ptr noundef nonnull %min_freq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %sw.bb
  %8 = call i32 @llvm.ctlz.i32(i32 %mask, i1 false) #13, !range !356
  %sub3 = sub nsw i32 31, %8
  %cond6 = select i1 %tobool.not, i32 0, i32 %sub3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond6)
  %cmp.not = icmp ne i32 %cond6, 0
  %cond8 = zext i1 %cmp.not to i32
  %soft_max_level.0 = select i1 %cmp.i, i32 %cond8, i32 %cond6
  %conv15 = trunc i32 %soft_max_level.0 to i16
  %call16 = call i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef %clk_type, i16 noundef zeroext %conv15, ptr noundef nonnull %max_freq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_freq, align 4
  %11 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_freq, align 4
  %call20 = call i32 @smu_v11_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %10, i32 noundef %12) #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smu, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.37) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end19, %if.end14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_od_edit_dpm_table(ptr noundef %smu, i32 noundef %type, ptr nocapture noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 16
  %0 = ptrtoint ptr %overdrive_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %overdrive_table, align 4
  %od_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 25
  %2 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %od_enabled, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.40) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %od_settings1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 21
  %8 = ptrtoint ptr %od_settings1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %od_settings1, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.44) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %14 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %type, label %if.end9.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb91
    i32 4, label %sw.bb132
    i32 5, label %sw.bb145
    i32 3, label %sw.bb168
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  %arrayidx.i = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 4, i32 0
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i.not = icmp eq i8 %16, 0
  br i1 %tobool.i.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smu, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.47) #16
  br label %cleanup

if.end17:                                         ; preds = %sw.bb
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %do.end23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp438.not = icmp eq i32 %size, 0
  br i1 %cmp438.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %GfxclkFmax52 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 1
  br label %for.body

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smu, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.50) #16
  br label %cleanup

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %for.body.lr.ph
  %i.0439 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end86.for.body_crit_edge ]
  %add = add i32 %i.0439, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp27 = icmp ugt i32 %add, %size
  br i1 %cmp27, label %do.end31, label %if.end34

do.end31:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smu, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.53, i32 noundef %size) #16
  br label %cleanup

if.end34:                                         ; preds = %for.body
  %arrayidx = getelementptr i32, ptr %input, i32 %i.0439
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %30, label %do.end72 [
    i32 0, label %sw.bb35
    i32 1, label %sw.bb51
  ]

sw.bb35:                                          ; preds = %if.end34
  %add36 = or i32 %i.0439, 1
  %arrayidx37 = getelementptr i32, ptr %input, i32 %add36
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx37, align 4
  %34 = ptrtoint ptr %GfxclkFmax52 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %GfxclkFmax52, align 2
  %conv = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv)
  %cmp38 = icmp sgt i32 %33, %conv
  br i1 %cmp38, label %do.end43, label %sw.bb35.sw.epilog_crit_edge

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end43:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %smu, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 4
  %conv49 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.56, i32 noundef %33, i32 noundef %conv49) #16
  br label %cleanup

sw.bb51:                                          ; preds = %if.end34
  %add53 = or i32 %i.0439, 1
  %arrayidx54 = getelementptr i32, ptr %input, i32 %add53
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx54, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %1, align 4
  %conv56 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv56)
  %cmp57 = icmp slt i32 %43, %conv56
  br i1 %cmp57, label %do.end62, label %sw.bb51.sw.epilog_crit_edge

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end62:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smu, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %50 = ptrtoint ptr %GfxclkFmax52 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %GfxclkFmax52, align 2
  %conv68 = zext i16 %51 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.59, i32 noundef %43, i32 noundef %conv68) #16
  br label %cleanup

do.end72:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %smu, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.62, i32 noundef %30) #16
  %56 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %smu, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.65) #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb51.sw.epilog_crit_edge, %sw.bb35.sw.epilog_crit_edge
  %add81.pre-phi = phi i32 [ %add53, %sw.bb51.sw.epilog_crit_edge ], [ %add36, %sw.bb35.sw.epilog_crit_edge ]
  %freq_setting.0 = phi i32 [ 0, %sw.bb51.sw.epilog_crit_edge ], [ 1, %sw.bb35.sw.epilog_crit_edge ]
  %freq_ptr.0 = phi ptr [ %GfxclkFmax52, %sw.bb51.sw.epilog_crit_edge ], [ %1, %sw.bb35.sw.epilog_crit_edge ]
  %arrayidx82 = getelementptr i32, ptr %input, i32 %add81.pre-phi
  %60 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx82, align 4
  %arrayidx.i384 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 6, i32 %freq_setting.0
  %62 = ptrtoint ptr %arrayidx.i384 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %arrayidx.i384, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %61)
  %cmp.i = icmp ugt i32 %63, %61
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %smu, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.100, i32 noundef %freq_setting.0, i32 noundef %61, i32 noundef %63) #16
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %arrayidx3.i = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 5, i32 %freq_setting.0
  %68 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %61)
  %cmp4.i = icmp ult i32 %69, %61
  br i1 %cmp4.i, label %do.end7.i, label %if.end86

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %smu, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.103, i32 noundef %freq_setting.0, i32 noundef %61, i32 noundef %69) #16
  br label %cleanup

if.end86:                                         ; preds = %if.end.i
  %74 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx82, align 4
  %conv89 = trunc i32 %75 to i16
  %76 = ptrtoint ptr %freq_ptr.0 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv89, ptr %freq_ptr.0, align 2
  %cmp = icmp ult i32 %add, %size
  br i1 %cmp, label %if.end86.for.body_crit_edge, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.bb91:                                          ; preds = %if.end9
  %arrayidx.i386 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 4, i32 2
  %77 = ptrtoint ptr %arrayidx.i386 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i386, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.i387.not = icmp eq i8 %78, 0
  br i1 %tobool.i387.not, label %do.end96, label %if.end99

do.end96:                                         ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %smu, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.68) #16
  br label %cleanup

if.end99:                                         ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp100 = icmp ult i32 %size, 2
  br i1 %cmp100, label %do.end105, label %if.end108

do.end105:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %smu, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.71, i32 noundef %size) #16
  br label %cleanup

if.end108:                                        ; preds = %if.end99
  %87 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp110.not = icmp eq i32 %88, 1
  br i1 %cmp110.not, label %if.end124, label %do.end115

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %smu, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.74, i32 noundef %88) #16
  %93 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %smu, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.77) #16
  br label %cleanup

if.end124:                                        ; preds = %if.end108
  %arrayidx125 = getelementptr i32, ptr %input, i32 1
  %97 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx125, align 4
  %arrayidx.i388 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 6, i32 8
  %99 = ptrtoint ptr %arrayidx.i388 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %arrayidx.i388, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %98)
  %cmp.i389 = icmp ugt i32 %100, %98
  br i1 %cmp.i389, label %do.end.i390, label %if.end.i393

do.end.i390:                                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %smu, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.100, i32 noundef 8, i32 noundef %98, i32 noundef %100) #16
  br label %cleanup

if.end.i393:                                      ; preds = %if.end124
  %arrayidx3.i391 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 5, i32 8
  %105 = ptrtoint ptr %arrayidx3.i391 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %arrayidx3.i391, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %98)
  %cmp4.i392 = icmp ult i32 %106, %98
  br i1 %cmp4.i392, label %do.end7.i394, label %if.end129

do.end7.i394:                                     ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %smu, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %110, ptr noundef nonnull @.str.103, i32 noundef 8, i32 noundef %98, i32 noundef %106) #16
  br label %cleanup

if.end129:                                        ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx125, align 4
  %conv131 = trunc i32 %112 to i16
  %UclkFmax = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 8
  %113 = ptrtoint ptr %UclkFmax to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv131, ptr %UclkFmax, align 4
  br label %cleanup

sw.bb132:                                         ; preds = %if.end9
  %tobool134.not = icmp eq ptr %1, null
  br i1 %tobool134.not, label %sw.bb132.do.end139_crit_edge, label %land.lhs.true

sw.bb132.do.end139_crit_edge:                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end139

land.lhs.true:                                    ; preds = %sw.bb132
  %boot_overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 17
  %114 = ptrtoint ptr %boot_overdrive_table to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %boot_overdrive_table, align 8
  %tobool135.not = icmp eq ptr %115, null
  br i1 %tobool135.not, label %land.lhs.true.do.end139_crit_edge, label %if.end142

land.lhs.true.do.end139_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end139

do.end139:                                        ; preds = %land.lhs.true.do.end139_crit_edge, %sw.bb132.do.end139_crit_edge
  %116 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %smu, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.80) #16
  br label %cleanup

if.end142:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %120 = call ptr @memcpy(ptr %1, ptr %115, i32 64)
  br label %cleanup

sw.bb145:                                         ; preds = %if.end9
  %user_overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 18
  %121 = ptrtoint ptr %user_overdrive_table to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %user_overdrive_table, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(64) %1, ptr noundef dereferenceable(64) %122, i32 64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool147.not = icmp eq i32 %bcmp, 0
  br i1 %tobool147.not, label %sw.bb145.cleanup_crit_edge, label %if.then148

sw.bb145.cleanup_crit_edge:                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then148:                                       ; preds = %sw.bb145
  tail call fastcc void @navi10_dump_od_table(ptr noundef %smu, ptr noundef %1)
  %call149 = tail call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 11, i32 noundef 0, ptr noundef %1, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end157, label %do.end154

do.end154:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %smu, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.83) #16
  br label %cleanup

if.end157:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %user_overdrive_table to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %user_overdrive_table, align 4
  %129 = call ptr @memcpy(ptr %128, ptr %1, i32 64)
  %user_od = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 5
  %130 = ptrtoint ptr %user_od to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %user_od, align 4
  %131 = load ptr, ptr %user_overdrive_table, align 4
  %boot_overdrive_table160 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 17
  %132 = ptrtoint ptr %boot_overdrive_table160 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %boot_overdrive_table160, align 8
  %bcmp383 = tail call i32 @bcmp(ptr noundef dereferenceable(64) %131, ptr noundef dereferenceable(64) %133, i32 64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp383)
  %tobool162.not = icmp ne i32 %bcmp383, 0
  %spec.store.select = zext i1 %tobool162.not to i32
  %134 = ptrtoint ptr %user_od to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %spec.store.select, ptr %user_od, align 4
  br label %cleanup

sw.bb168:                                         ; preds = %if.end9
  %arrayidx.i397 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 4, i32 1
  %135 = ptrtoint ptr %arrayidx.i397 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i397, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.i398.not = icmp eq i8 %136, 0
  br i1 %tobool.i398.not, label %do.end173, label %if.end176

do.end173:                                        ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %smu, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %140, ptr noundef nonnull @.str.86) #16
  br label %cleanup

if.end176:                                        ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp177 = icmp ult i32 %size, 3
  br i1 %cmp177, label %do.end182, label %if.end185

do.end182:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %smu, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %144, ptr noundef nonnull @.str.71, i32 noundef %size) #16
  br label %cleanup

if.end185:                                        ; preds = %if.end176
  %tobool186.not = icmp eq ptr %1, null
  br i1 %tobool186.not, label %do.end190, label %if.end193

do.end190:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %smu, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %148, ptr noundef nonnull @.str.50) #16
  br label %cleanup

if.end193:                                        ; preds = %if.end185
  %149 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %input, align 4
  %151 = zext i32 %150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %150, label %do.end201 [
    i32 0, label %sw.bb195
    i32 1, label %sw.bb196
    i32 2, label %sw.bb197
  ]

sw.bb195:                                         ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  %GfxclkFreq1 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 2
  %GfxclkVolt1 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 3
  br label %sw.epilog210

sw.bb196:                                         ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  %GfxclkFreq2 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 4
  %GfxclkVolt2 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 5
  br label %sw.epilog210

sw.bb197:                                         ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  %GfxclkFreq3 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 6
  %GfxclkVolt3 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 7
  br label %sw.epilog210

do.end201:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %smu, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %155, ptr noundef nonnull @.str.93, i32 noundef %150) #16
  %156 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %smu, align 8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.96) #16
  br label %cleanup

sw.epilog210:                                     ; preds = %sw.bb197, %sw.bb196, %sw.bb195
  %freq_setting.1 = phi i32 [ 6, %sw.bb197 ], [ 4, %sw.bb196 ], [ 2, %sw.bb195 ]
  %voltage_setting.0 = phi i32 [ 7, %sw.bb197 ], [ 5, %sw.bb196 ], [ 3, %sw.bb195 ]
  %freq_ptr.1 = phi ptr [ %GfxclkFreq3, %sw.bb197 ], [ %GfxclkFreq2, %sw.bb196 ], [ %GfxclkFreq1, %sw.bb195 ]
  %voltage_ptr.0 = phi ptr [ %GfxclkVolt3, %sw.bb197 ], [ %GfxclkVolt2, %sw.bb196 ], [ %GfxclkVolt1, %sw.bb195 ]
  %arrayidx211 = getelementptr i32, ptr %input, i32 1
  %160 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx211, align 4
  %arrayidx.i399 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 6, i32 %freq_setting.1
  %162 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %arrayidx.i399, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %161)
  %cmp.i400 = icmp ugt i32 %163, %161
  br i1 %cmp.i400, label %do.end.i401, label %if.end.i404

do.end.i401:                                      ; preds = %sw.epilog210
  call void @__sanitizer_cov_trace_pc() #15
  %164 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %smu, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %167, ptr noundef nonnull @.str.100, i32 noundef %freq_setting.1, i32 noundef %161, i32 noundef %163) #16
  br label %cleanup

if.end.i404:                                      ; preds = %sw.epilog210
  %arrayidx3.i402 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 5, i32 %freq_setting.1
  %168 = ptrtoint ptr %arrayidx3.i402 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %arrayidx3.i402, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %161)
  %cmp4.i403 = icmp ult i32 %169, %161
  br i1 %cmp4.i403, label %do.end7.i405, label %if.end215

do.end7.i405:                                     ; preds = %if.end.i404
  call void @__sanitizer_cov_trace_pc() #15
  %170 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %smu, align 8
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %173, ptr noundef nonnull @.str.103, i32 noundef %freq_setting.1, i32 noundef %161, i32 noundef %169) #16
  br label %cleanup

if.end215:                                        ; preds = %if.end.i404
  %arrayidx216 = getelementptr i32, ptr %input, i32 2
  %174 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp217.not = icmp eq i32 %175, 0
  br i1 %cmp217.not, label %if.else, label %if.then219

if.then219:                                       ; preds = %if.end215
  %arrayidx.i408 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 6, i32 %voltage_setting.0
  %176 = ptrtoint ptr %arrayidx.i408 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %arrayidx.i408, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %175)
  %cmp.i409 = icmp ugt i32 %177, %175
  br i1 %cmp.i409, label %do.end.i410, label %if.end.i413

do.end.i410:                                      ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #15
  %178 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %smu, align 8
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %181, ptr noundef nonnull @.str.100, i32 noundef %voltage_setting.0, i32 noundef %175, i32 noundef %177) #16
  br label %cleanup

if.end.i413:                                      ; preds = %if.then219
  %arrayidx3.i411 = getelementptr %struct.smu_11_0_overdrive_table, ptr %9, i32 0, i32 5, i32 %voltage_setting.0
  %182 = ptrtoint ptr %arrayidx3.i411 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %arrayidx3.i411, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %175)
  %cmp4.i412 = icmp ult i32 %183, %175
  br i1 %cmp4.i412, label %do.end7.i414, label %if.end224

do.end7.i414:                                     ; preds = %if.end.i413
  call void @__sanitizer_cov_trace_pc() #15
  %184 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %smu, align 8
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %187, ptr noundef nonnull @.str.103, i32 noundef %voltage_setting.0, i32 noundef %175, i32 noundef %183) #16
  br label %cleanup

if.end224:                                        ; preds = %if.end.i413
  call void @__sanitizer_cov_trace_pc() #15
  %188 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx211, align 4
  %conv226 = trunc i32 %189 to i16
  %190 = ptrtoint ptr %freq_ptr.1 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv226, ptr %freq_ptr.1, align 2
  %191 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx216, align 4
  %.tr = trunc i32 %192 to i16
  %conv230 = shl i16 %.tr, 2
  %193 = ptrtoint ptr %voltage_ptr.0 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv230, ptr %voltage_ptr.0, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @navi10_od_edit_dpm_table.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@navi10_od_edit_dpm_table, %if.then236)) #13
          to label %if.end248 [label %if.then236], !srcloc !357

if.then236:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #15
  %194 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %smu, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 8
  %198 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %input, align 4
  %200 = ptrtoint ptr %freq_ptr.1 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %freq_ptr.1, align 2
  %conv240 = zext i16 %201 to i32
  %202 = ptrtoint ptr %voltage_ptr.0 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %voltage_ptr.0, align 2
  %conv241 = zext i16 %203 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @navi10_od_edit_dpm_table.__UNIQUE_ID_ddebug354, ptr noundef %197, ptr noundef nonnull @.str.99, i32 noundef %199, i32 noundef %conv240, i32 noundef %conv241) #13
  br label %if.end248

if.else:                                          ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #15
  %GfxclkVolt1245 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 3
  %204 = ptrtoint ptr %GfxclkVolt1245 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %GfxclkVolt1245, align 2
  %GfxclkVolt2246 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 5
  %205 = ptrtoint ptr %GfxclkVolt2246 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %GfxclkVolt2246, align 2
  %GfxclkVolt3247 = getelementptr inbounds %struct.OverDriveTable_t, ptr %1, i32 0, i32 7
  %206 = ptrtoint ptr %GfxclkVolt3247 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 0, ptr %GfxclkVolt3247, align 2
  br label %if.end248

if.end248:                                        ; preds = %if.else, %if.then236, %if.end224
  tail call fastcc void @navi10_dump_od_table(ptr noundef %smu, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end248, %do.end7.i414, %do.end.i410, %do.end7.i405, %do.end.i401, %do.end201, %do.end190, %do.end182, %do.end173, %if.end157, %do.end154, %sw.bb145.cleanup_crit_edge, %if.end142, %do.end139, %if.end129, %do.end7.i394, %do.end.i390, %do.end115, %do.end105, %do.end96, %if.end86.cleanup_crit_edge, %do.end7.i, %do.end.i, %do.end72, %do.end62, %do.end43, %do.end31, %do.end23, %for.cond.preheader.cleanup_crit_edge, %do.end14, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end182 ], [ -22, %do.end201 ], [ -22, %do.end190 ], [ -524, %do.end173 ], [ %call149, %do.end154 ], [ -22, %do.end139 ], [ -22, %do.end105 ], [ -22, %do.end115 ], [ -524, %do.end96 ], [ -22, %do.end31 ], [ -22, %do.end72 ], [ -22, %do.end62 ], [ -22, %do.end43 ], [ -22, %do.end23 ], [ -524, %do.end14 ], [ -2, %do.end6 ], [ -22, %do.end ], [ -38, %if.end9.cleanup_crit_edge ], [ 0, %sw.bb145.cleanup_crit_edge ], [ 0, %if.end157 ], [ 0, %if.end248 ], [ 0, %if.end142 ], [ 0, %if.end129 ], [ -22, %do.end.i ], [ -22, %do.end7.i ], [ -22, %do.end.i390 ], [ -22, %do.end7.i394 ], [ -22, %do.end.i401 ], [ -22, %do.end7.i405 ], [ -22, %do.end.i410 ], [ -22, %do.end7.i414 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_restore_user_od_settings(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_get_clock_by_type_with_latency(ptr noundef %smu, i32 noundef %clk_type, ptr nocapture noundef writeonly %clocks) #1 align 64 {
entry:
  %level_count = alloca i32, align 4
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level_count) #13
  %0 = ptrtoint ptr %level_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %level_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #13
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %freq, align 4
  %2 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %clk_type, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge29
    i32 6, label %entry.sw.bb_crit_edge30
    i32 14, label %entry.sw.bb_crit_edge31
    i32 7, label %entry.sw.bb_crit_edge32
  ]

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30, %entry.sw.bb_crit_edge31, %entry.sw.bb_crit_edge32
  %call = call i32 @smu_v11_0_get_dpm_level_count(ptr noundef %smu, i32 noundef %clk_type, ptr noundef nonnull %level_count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %level_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level_count, align 4
  %5 = call i32 @llvm.umin.i32(i32 %4, i32 16)
  %6 = ptrtoint ptr %level_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %level_count, align 4
  %7 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp126.not = icmp eq i32 %5, 0
  br i1 %cmp126.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %if.end5.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %conv = trunc i32 %i.027 to i16
  %call2 = call i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef %clk_type, i16 noundef zeroext %conv, ptr noundef nonnull %freq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq, align 4
  %mul = mul i32 %9, 1000
  %arrayidx = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.027
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %arrayidx, align 4
  %latency_in_us = getelementptr %struct.pp_clock_levels_with_latency, ptr %clocks, i32 0, i32 1, i32 %i.027, i32 1
  %11 = ptrtoint ptr %latency_in_us to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %latency_in_us, align 4
  %inc = add nuw i32 %i.027, 1
  %12 = ptrtoint ptr %level_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %level_count, align 4
  %cmp1 = icmp ult i32 %inc, %13
  br i1 %cmp1, label %if.end5.for.body_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level_count) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_get_power_profile_mode(ptr noundef %smu, ptr noundef %buf) #1 align 64 {
entry:
  %activity_monitor = alloca %struct.DpmActivityMonitorCoeffInt_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %activity_monitor) #13
  %0 = call ptr @memset(ptr %activity_monitor, i32 255, i32 136)
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122) #13
  %power_profile_mode = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 40
  %Gfx_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 2
  %Gfx_MinFreqStep = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 5
  %Gfx_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 3
  %Gfx_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 6
  %Gfx_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 4
  %Gfx_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 7
  %Gfx_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 11
  %Gfx_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 12
  %Gfx_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 13
  %Soc_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 16
  %Soc_MinFreqStep = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 19
  %Soc_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 17
  %Soc_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 20
  %Soc_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 18
  %Soc_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 21
  %Soc_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 25
  %Soc_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 26
  %Soc_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 27
  %Mem_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 30
  %Mem_MinFreqStep = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 33
  %Mem_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 31
  %Mem_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 34
  %Mem_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 32
  %Mem_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 35
  %Mem_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 39
  %Mem_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 40
  %Mem_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.end
  %size.071 = phi i32 [ %call, %if.end ], [ %add39, %if.end11.for.body_crit_edge ]
  %i.070 = phi i32 [ 0, %if.end ], [ %inc, %if.end11.for.body_crit_edge ]
  %call1 = call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef %i.070) #13
  %sext.mask = and i32 %call1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask)
  %cmp3.not = icmp eq i32 %sext.mask, 0
  br i1 %cmp3.not, label %if.end6, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %conv269 = and i32 %call1, 65535
  %call8 = call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 10, i32 noundef %conv269, ptr noundef nonnull %activity_monitor, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %arrayidx = getelementptr [7 x ptr], ptr @amdgpu_pp_profile_name, i32 0, i32 %i.070
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.070, i32 %8)
  %cmp12 = icmp eq i32 %i.070, %8
  %cond = select i1 %cmp12, ptr @.str.6, ptr @.str.127
  %call14 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %size.071, ptr noundef nonnull @.str.126, i32 noundef %i.070, ptr noundef %6, ptr noundef nonnull %cond) #13
  %add15 = add i32 %call14, %size.071
  %9 = ptrtoint ptr %Gfx_FPS to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %Gfx_FPS, align 2
  %conv16 = zext i8 %10 to i32
  %11 = ptrtoint ptr %Gfx_MinFreqStep to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %Gfx_MinFreqStep, align 1
  %conv17 = zext i8 %12 to i32
  %13 = ptrtoint ptr %Gfx_MinActiveFreqType to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %Gfx_MinActiveFreqType, align 1
  %conv18 = zext i8 %14 to i32
  %15 = ptrtoint ptr %Gfx_MinActiveFreq to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %Gfx_MinActiveFreq, align 2
  %conv19 = zext i16 %16 to i32
  %17 = ptrtoint ptr %Gfx_BoosterFreqType to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Gfx_BoosterFreqType, align 4
  %conv20 = zext i8 %18 to i32
  %19 = ptrtoint ptr %Gfx_BoosterFreq to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %Gfx_BoosterFreq, align 4
  %conv21 = zext i16 %20 to i32
  %21 = ptrtoint ptr %Gfx_PD_Data_limit_c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %Gfx_PD_Data_limit_c, align 4
  %23 = ptrtoint ptr %Gfx_PD_Data_error_coeff to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %Gfx_PD_Data_error_coeff, align 4
  %25 = ptrtoint ptr %Gfx_PD_Data_error_rate_coeff to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %Gfx_PD_Data_error_rate_coeff, align 4
  %call22 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %add15, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, i32 noundef 0, ptr noundef nonnull @.str.129, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %22, i32 noundef %24, i32 noundef %26) #13
  %add23 = add i32 %call22, %add15
  %27 = ptrtoint ptr %Soc_FPS to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %Soc_FPS, align 2
  %conv24 = zext i8 %28 to i32
  %29 = ptrtoint ptr %Soc_MinFreqStep to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %Soc_MinFreqStep, align 1
  %conv25 = zext i8 %30 to i32
  %31 = ptrtoint ptr %Soc_MinActiveFreqType to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %Soc_MinActiveFreqType, align 1
  %conv26 = zext i8 %32 to i32
  %33 = ptrtoint ptr %Soc_MinActiveFreq to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %Soc_MinActiveFreq, align 2
  %conv27 = zext i16 %34 to i32
  %35 = ptrtoint ptr %Soc_BoosterFreqType to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %Soc_BoosterFreqType, align 4
  %conv28 = zext i8 %36 to i32
  %37 = ptrtoint ptr %Soc_BoosterFreq to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %Soc_BoosterFreq, align 4
  %conv29 = zext i16 %38 to i32
  %39 = ptrtoint ptr %Soc_PD_Data_limit_c to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %Soc_PD_Data_limit_c, align 4
  %41 = ptrtoint ptr %Soc_PD_Data_error_coeff to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %Soc_PD_Data_error_coeff, align 4
  %43 = ptrtoint ptr %Soc_PD_Data_error_rate_coeff to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %Soc_PD_Data_error_rate_coeff, align 4
  %call30 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %add23, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, i32 noundef 1, ptr noundef nonnull @.str.130, i32 noundef %conv24, i32 noundef %conv25, i32 noundef %conv26, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %40, i32 noundef %42, i32 noundef %44) #13
  %add31 = add i32 %call30, %add23
  %45 = ptrtoint ptr %Mem_FPS to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %Mem_FPS, align 2
  %conv32 = zext i8 %46 to i32
  %47 = ptrtoint ptr %Mem_MinFreqStep to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %Mem_MinFreqStep, align 1
  %conv33 = zext i8 %48 to i32
  %49 = ptrtoint ptr %Mem_MinActiveFreqType to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %Mem_MinActiveFreqType, align 1
  %conv34 = zext i8 %50 to i32
  %51 = ptrtoint ptr %Mem_MinActiveFreq to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %Mem_MinActiveFreq, align 2
  %conv35 = zext i16 %52 to i32
  %53 = ptrtoint ptr %Mem_BoosterFreqType to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %Mem_BoosterFreqType, align 4
  %conv36 = zext i8 %54 to i32
  %55 = ptrtoint ptr %Mem_BoosterFreq to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %Mem_BoosterFreq, align 4
  %conv37 = zext i16 %56 to i32
  %57 = ptrtoint ptr %Mem_PD_Data_limit_c to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %Mem_PD_Data_limit_c, align 4
  %59 = ptrtoint ptr %Mem_PD_Data_error_coeff to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %Mem_PD_Data_error_coeff, align 4
  %61 = ptrtoint ptr %Mem_PD_Data_error_rate_coeff to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %Mem_PD_Data_error_rate_coeff, align 4
  %call38 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef nonnull %buf, i32 noundef %add31, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, i32 noundef 2, ptr noundef nonnull @.str.131, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %58, i32 noundef %60, i32 noundef %62) #13
  %add39 = add i32 %call38, %add31
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %if.end11.cleanup_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %do.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %add39, %if.end11.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %activity_monitor) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_set_power_profile_mode(ptr noundef %smu, ptr noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  %activity_monitor = alloca %struct.DpmActivityMonitorCoeffInt_t, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %activity_monitor) #13
  %0 = call ptr @memset(ptr %activity_monitor, i32 255, i32 136)
  %arrayidx = getelementptr i32, ptr %input, i32 %size
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %power_profile_mode = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 40
  %3 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp ugt i32 %2, 6
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.132, i32 noundef %2) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp4 = icmp eq i32 %2, 6
  br i1 %cmp4, label %if.then5, label %if.end.if.end69_crit_edge

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then5:                                         ; preds = %if.end
  %call = call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 10, i32 noundef 6, ptr noundef nonnull %activity_monitor, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smu, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.133) #16
  br label %cleanup

if.end12:                                         ; preds = %if.then5
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %13, label %if.end12.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb44
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx14 = getelementptr i32, ptr %input, i32 1
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 4
  %conv = trunc i32 %16 to i8
  %Gfx_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 2
  %17 = ptrtoint ptr %Gfx_FPS to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %Gfx_FPS, align 2
  %arrayidx15 = getelementptr i32, ptr %input, i32 2
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %conv16 = trunc i32 %19 to i8
  %Gfx_MinFreqStep = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 5
  %20 = ptrtoint ptr %Gfx_MinFreqStep to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16, ptr %Gfx_MinFreqStep, align 1
  %arrayidx17 = getelementptr i32, ptr %input, i32 3
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17, align 4
  %conv18 = trunc i32 %22 to i8
  %Gfx_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 3
  %23 = ptrtoint ptr %Gfx_MinActiveFreqType to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv18, ptr %Gfx_MinActiveFreqType, align 1
  %arrayidx19 = getelementptr i32, ptr %input, i32 4
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx19, align 4
  %conv20 = trunc i32 %25 to i16
  %Gfx_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 6
  %26 = ptrtoint ptr %Gfx_MinActiveFreq to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv20, ptr %Gfx_MinActiveFreq, align 2
  %arrayidx21 = getelementptr i32, ptr %input, i32 5
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx21, align 4
  %conv22 = trunc i32 %28 to i8
  %Gfx_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 4
  %29 = ptrtoint ptr %Gfx_BoosterFreqType to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv22, ptr %Gfx_BoosterFreqType, align 4
  %arrayidx23 = getelementptr i32, ptr %input, i32 6
  %30 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx23, align 4
  %conv24 = trunc i32 %31 to i16
  %Gfx_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 7
  %32 = ptrtoint ptr %Gfx_BoosterFreq to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv24, ptr %Gfx_BoosterFreq, align 4
  %arrayidx25 = getelementptr i32, ptr %input, i32 7
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx25, align 4
  %Gfx_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 11
  %35 = ptrtoint ptr %Gfx_PD_Data_limit_c to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %Gfx_PD_Data_limit_c, align 4
  %arrayidx26 = getelementptr i32, ptr %input, i32 8
  %36 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx26, align 4
  %Gfx_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 12
  %38 = ptrtoint ptr %Gfx_PD_Data_error_coeff to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %Gfx_PD_Data_error_coeff, align 4
  %arrayidx27 = getelementptr i32, ptr %input, i32 9
  %39 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx27, align 4
  %Gfx_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 13
  %41 = ptrtoint ptr %Gfx_PD_Data_error_rate_coeff to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %Gfx_PD_Data_error_rate_coeff, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx29 = getelementptr i32, ptr %input, i32 1
  %42 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx29, align 4
  %conv30 = trunc i32 %43 to i8
  %Soc_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 16
  %44 = ptrtoint ptr %Soc_FPS to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv30, ptr %Soc_FPS, align 2
  %arrayidx31 = getelementptr i32, ptr %input, i32 2
  %45 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx31, align 4
  %conv32 = trunc i32 %46 to i8
  %Soc_MinFreqStep = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 19
  %47 = ptrtoint ptr %Soc_MinFreqStep to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv32, ptr %Soc_MinFreqStep, align 1
  %arrayidx33 = getelementptr i32, ptr %input, i32 3
  %48 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx33, align 4
  %conv34 = trunc i32 %49 to i8
  %Soc_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 17
  %50 = ptrtoint ptr %Soc_MinActiveFreqType to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv34, ptr %Soc_MinActiveFreqType, align 1
  %arrayidx35 = getelementptr i32, ptr %input, i32 4
  %51 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx35, align 4
  %conv36 = trunc i32 %52 to i16
  %Soc_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 20
  %53 = ptrtoint ptr %Soc_MinActiveFreq to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv36, ptr %Soc_MinActiveFreq, align 2
  %arrayidx37 = getelementptr i32, ptr %input, i32 5
  %54 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx37, align 4
  %conv38 = trunc i32 %55 to i8
  %Soc_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 18
  %56 = ptrtoint ptr %Soc_BoosterFreqType to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv38, ptr %Soc_BoosterFreqType, align 4
  %arrayidx39 = getelementptr i32, ptr %input, i32 6
  %57 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx39, align 4
  %conv40 = trunc i32 %58 to i16
  %Soc_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 21
  %59 = ptrtoint ptr %Soc_BoosterFreq to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv40, ptr %Soc_BoosterFreq, align 4
  %arrayidx41 = getelementptr i32, ptr %input, i32 7
  %60 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx41, align 4
  %Soc_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 25
  %62 = ptrtoint ptr %Soc_PD_Data_limit_c to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %Soc_PD_Data_limit_c, align 4
  %arrayidx42 = getelementptr i32, ptr %input, i32 8
  %63 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx42, align 4
  %Soc_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 26
  %65 = ptrtoint ptr %Soc_PD_Data_error_coeff to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %Soc_PD_Data_error_coeff, align 4
  %arrayidx43 = getelementptr i32, ptr %input, i32 9
  %66 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx43, align 4
  %Soc_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 27
  %68 = ptrtoint ptr %Soc_PD_Data_error_rate_coeff to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %Soc_PD_Data_error_rate_coeff, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx45 = getelementptr i32, ptr %input, i32 1
  %69 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx45, align 4
  %conv46 = trunc i32 %70 to i8
  %Mem_FPS = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 30
  %71 = ptrtoint ptr %Mem_FPS to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv46, ptr %Mem_FPS, align 2
  %arrayidx47 = getelementptr i32, ptr %input, i32 2
  %72 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx47, align 4
  %conv48 = trunc i32 %73 to i8
  %Mem_MinFreqStep = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 33
  %74 = ptrtoint ptr %Mem_MinFreqStep to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv48, ptr %Mem_MinFreqStep, align 1
  %arrayidx49 = getelementptr i32, ptr %input, i32 3
  %75 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx49, align 4
  %conv50 = trunc i32 %76 to i8
  %Mem_MinActiveFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 31
  %77 = ptrtoint ptr %Mem_MinActiveFreqType to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv50, ptr %Mem_MinActiveFreqType, align 1
  %arrayidx51 = getelementptr i32, ptr %input, i32 4
  %78 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx51, align 4
  %conv52 = trunc i32 %79 to i16
  %Mem_MinActiveFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 34
  %80 = ptrtoint ptr %Mem_MinActiveFreq to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv52, ptr %Mem_MinActiveFreq, align 2
  %arrayidx53 = getelementptr i32, ptr %input, i32 5
  %81 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx53, align 4
  %conv54 = trunc i32 %82 to i8
  %Mem_BoosterFreqType = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 32
  %83 = ptrtoint ptr %Mem_BoosterFreqType to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv54, ptr %Mem_BoosterFreqType, align 4
  %arrayidx55 = getelementptr i32, ptr %input, i32 6
  %84 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx55, align 4
  %conv56 = trunc i32 %85 to i16
  %Mem_BoosterFreq = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 35
  %86 = ptrtoint ptr %Mem_BoosterFreq to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv56, ptr %Mem_BoosterFreq, align 4
  %arrayidx57 = getelementptr i32, ptr %input, i32 7
  %87 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx57, align 4
  %Mem_PD_Data_limit_c = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 39
  %89 = ptrtoint ptr %Mem_PD_Data_limit_c to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %Mem_PD_Data_limit_c, align 4
  %arrayidx58 = getelementptr i32, ptr %input, i32 8
  %90 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx58, align 4
  %Mem_PD_Data_error_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 40
  %92 = ptrtoint ptr %Mem_PD_Data_error_coeff to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %Mem_PD_Data_error_coeff, align 4
  %arrayidx59 = getelementptr i32, ptr %input, i32 9
  %93 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx59, align 4
  %Mem_PD_Data_error_rate_coeff = getelementptr inbounds %struct.DpmActivityMonitorCoeffInt_t, ptr %activity_monitor, i32 0, i32 41
  %95 = ptrtoint ptr %Mem_PD_Data_error_rate_coeff to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %Mem_PD_Data_error_rate_coeff, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb28, %sw.bb, %if.end12.sw.epilog_crit_edge
  %call60 = call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 10, i32 noundef 6, ptr noundef nonnull %activity_monitor, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %sw.epilog.if.end69_crit_edge, label %do.end65

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

do.end65:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %smu, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.133) #16
  br label %cleanup

if.end69:                                         ; preds = %sw.epilog.if.end69_crit_edge, %if.end.if.end69_crit_edge
  %100 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %power_profile_mode, align 4
  %call71 = call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 5, i32 noundef %101) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end69.cleanup_crit_edge, label %if.end75

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl nuw i32 1, %call71
  %call76 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 14, i32 noundef %shl, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end69.cleanup_crit_edge, %do.end65, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end9 ], [ %call60, %do.end65 ], [ 0, %if.end75 ], [ -22, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %activity_monitor) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_dpm_set_vcn_enable(ptr noundef %smu, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then.if.end15_crit_edge, label %if.then2

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 85, i32 noundef 1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end15_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.if.end15_crit_edge, label %if.then9

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 86, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then2.if.end15_crit_edge, %if.then.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_dpm_set_jpeg_enable(ptr noundef %smu, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 45) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then.if.end15_crit_edge, label %if.then2

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 87, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end15_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.if.end15_crit_edge, label %if.then9

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 88, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then2.if.end15_crit_edge, %if.then.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_read_sensor(ptr noundef %smu, i32 noundef %sensor, ptr noundef %data, ptr noundef writeonly %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %sensor_lock, i32 noundef 0) #13
  %2 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %sensor, label %if.end.sw.epilog_crit_edge [
    i32 22, label %sw.bb
    i32 8, label %sw.bb2
    i32 7, label %sw.bb3
    i32 15, label %sw.bb5
    i32 11, label %sw.bb7
    i32 10, label %sw.bb9
    i32 12, label %sw.bb11
    i32 9, label %sw.bb13
    i32 0, label %sw.bb15
    i32 3, label %sw.bb18
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %FanMaximumRpm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 95
  %3 = ptrtoint ptr %FanMaximumRpm to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %FanMaximumRpm, align 2
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef 17, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef 16, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef 19, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef 21, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef 20, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef 22, ptr noundef nonnull %data)
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end
  %call.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb13.navi10_get_current_clk_freq_by_table.exit_crit_edge, label %if.end.i

sw.bb13.navi10_get_current_clk_freq_by_table.exit_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_get_current_clk_freq_by_table.exit

if.end.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %6 = icmp ult i32 %call.i, 6
  br i1 %6, label %switch.lookup, label %if.end.i.navi10_get_current_clk_freq_by_table.exit_crit_edge

if.end.i.navi10_get_current_clk_freq_by_table.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_get_current_clk_freq_by_table.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.navi10_read_sensor, i32 0, i32 %call.i
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call6.i = tail call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef %switch.load, ptr noundef nonnull %data) #13
  br label %navi10_get_current_clk_freq_by_table.exit

navi10_get_current_clk_freq_by_table.exit:        ; preds = %switch.lookup, %if.end.i.navi10_get_current_clk_freq_by_table.exit_crit_edge, %sw.bb13.navi10_get_current_clk_freq_by_table.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %switch.lookup ], [ %call.i, %sw.bb13.navi10_get_current_clk_freq_by_table.exit_crit_edge ], [ -22, %if.end.i.navi10_get_current_clk_freq_by_table.exit_crit_edge ]
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %mul = mul i32 %9, 100
  store i32 %mul, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef 10, ptr noundef nonnull %data)
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %mul17 = mul i32 %11, 100
  store i32 %mul17, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 @smu_v11_0_get_gfx_vdd(ptr noundef %smu, ptr noundef nonnull %data) #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb18, %sw.bb15, %navi10_get_current_clk_freq_by_table.exit, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb
  %ret.0.ph = phi i32 [ 0, %sw.bb ], [ %call, %sw.bb2 ], [ %call4, %sw.bb3 ], [ %call6, %sw.bb5 ], [ %call8, %sw.bb7 ], [ %call10, %sw.bb9 ], [ %call12, %sw.bb11 ], [ %retval.0.i, %navi10_get_current_clk_freq_by_table.exit ], [ %call16, %sw.bb15 ], [ %call19, %sw.bb18 ]
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %if.end.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %sensor_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_pre_display_config_changed(ptr noundef %smu) #1 align 64 {
entry:
  %max_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #13
  %0 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_freq, align 4
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 65, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @smu_v11_0_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef 7, ptr noundef null, ptr noundef nonnull %max_freq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %1 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_freq, align 4
  %call8 = call i32 @smu_v11_0_set_hard_freq_limited_range(ptr noundef %smu, i32 noundef 7, i32 noundef 0, i32 noundef %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end12:                                         ; preds = %if.end7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_display_config_changed(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %watermarks_bitmap = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 34
  %0 = ptrtoint ptr %watermarks_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %watermarks_bitmap, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true2

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.end8_crit_edge, label %if.then

land.lhs.true2.if.end8_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true2
  %display_config = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 18
  %2 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display_config, align 4
  %num_display = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_display to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_display, align 4
  %call5 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 65, i32 noundef %5, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %land.lhs.true2.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call5, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_notify_smc_display_config(ptr noundef %smu) #1 align 64 {
entry:
  %clock_req = alloca %struct.pp_display_clock_request, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_req) #13
  %0 = ptrtoint ptr %clock_req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clock_req, align 4, !annotation !358
  %1 = getelementptr inbounds %struct.pp_display_clock_request, ptr %clock_req, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !358
  %display_config = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 18
  %3 = ptrtoint ptr %display_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %display_config, align 4
  %min_dcef_set_clk = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %min_dcef_set_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %min_dcef_set_clk, align 4
  %min_dcef_deep_sleep_set_clk = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %4, i32 0, i32 21
  %7 = ptrtoint ptr %min_dcef_deep_sleep_set_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_dcef_deep_sleep_set_clk, align 4
  %min_mem_set_clock = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %min_mem_set_clock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_mem_set_clock, align 4
  %call = tail call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %clock_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %clock_req, align 4
  %mul = mul i32 %6, 10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %1, align 4
  %call4 = call i32 @smu_v11_0_display_clock_voltage_request(ptr noundef %smu, ptr noundef nonnull %clock_req) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %do.end17

if.then6:                                         ; preds = %if.then
  %call7 = call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end21_crit_edge, label %if.then9

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then9:                                         ; preds = %if.then6
  %div = udiv i32 %8, 100
  %call11 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 48, i32 noundef %div, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then9.if.end21_crit_edge, label %do.end

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smu, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.139) #16
  br label %cleanup

do.end17:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smu, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.142) #16
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %if.then9.if.end21_crit_edge, %if.then6.if.end21_crit_edge, %entry.if.end21_crit_edge
  %call22 = call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.then24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  %div26 = udiv i32 %10, 100
  %call27 = call i32 @smu_v11_0_set_hard_freq_limited_range(ptr noundef %smu, i32 noundef 7, i32 noundef %div26, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then24.cleanup_crit_edge, label %do.end32

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smu, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.140) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.then24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call27, %do.end32 ], [ %call11, %do.end ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_req) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @navi10_is_dpm_running(ptr noundef %smu) #1 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #13
  %0 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %feature_mask, align 4, !annotation !358
  %1 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !358
  %call = call i32 @smu_cmn_get_enabled_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %feature_mask, align 4
  %5 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3 = icmp ne i32 %5, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool3, %if.end ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #13
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_fan_speed_pwm(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_get_fan_speed_rpm(ptr noundef %smu, ptr noundef %speed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %speed, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @smu_v11_0_get_fan_control_mode(ptr noundef %smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cond = icmp eq i32 %call, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #13
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.navi10_get_smu_metrics_data.exit_crit_edge

sw.bb.navi10_get_smu_metrics_data.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %CurrFanSpeed.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %CurrFanSpeed.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %CurrFanSpeed.i, align 2
  %conv57.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv57.i, ptr %speed, align 4
  br label %navi10_get_smu_metrics_data.exit

navi10_get_smu_metrics_data.exit:                 ; preds = %if.end.i, %sw.bb.navi10_get_smu_metrics_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @smu_v11_0_get_fan_speed_rpm(ptr noundef %smu, ptr noundef nonnull %speed) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %navi10_get_smu_metrics_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %navi10_get_smu_metrics_data.exit ], [ %call2, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_set_watermarks_table(ptr noundef %smu, ptr noundef readonly %clock_ranges) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %watermarks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %0 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %watermarks_table, align 8
  %tobool.not = icmp eq ptr %clock_ranges, null
  br i1 %tobool.not, label %entry.if.end68_crit_edge, label %if.then

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %num_writer_wm_sets = getelementptr inbounds %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 2
  %4 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_writer_wm_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ugt i32 %5, 4
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4136.not = icmp eq i32 %7, 0
  br i1 %cmp4136.not, label %for.cond.preheader.for.cond27.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond27.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond27.preheader

for.cond27.preheaderthread-pre-split:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %num_writer_wm_sets, align 4
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond27.preheaderthread-pre-split, %for.cond.preheader.for.cond27.preheader_crit_edge
  %9 = phi i32 [ %.pr, %for.cond27.preheaderthread-pre-split ], [ %5, %for.cond.preheader.for.cond27.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp29138.not = icmp eq i32 %9, 0
  br i1 %cmp29138.not, label %for.cond27.preheader.for.end67_crit_edge, label %for.cond27.preheader.for.body30_crit_edge

for.cond27.preheader.for.body30_crit_edge:        ; preds = %for.cond27.preheader
  br label %for.body30

for.cond27.preheader.for.end67_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end67

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0137 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0137
  %min_drain_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0137, i32 2
  %10 = ptrtoint ptr %min_drain_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %min_drain_clk_mhz, align 2
  %arrayidx6 = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0137
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx6, align 4
  %max_drain_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0137, i32 3
  %13 = ptrtoint ptr %max_drain_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_drain_clk_mhz, align 2
  %MaxClock = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0137, i32 1
  %15 = ptrtoint ptr %MaxClock to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %MaxClock, align 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %MinUclk = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0137, i32 2
  %18 = ptrtoint ptr %MinUclk to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %MinUclk, align 4
  %max_fill_clk_mhz = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0137, i32 1
  %19 = ptrtoint ptr %max_fill_clk_mhz to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_fill_clk_mhz, align 2
  %MaxUclk = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0137, i32 3
  %21 = ptrtoint ptr %MaxUclk to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %MaxUclk, align 2
  %wm_inst = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 1, i32 %i.0137, i32 4
  %22 = ptrtoint ptr %wm_inst to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wm_inst, align 2
  %WmSetting = getelementptr [2 x [4 x %struct.WatermarkRowGeneric_t]], ptr %1, i32 0, i32 1, i32 %i.0137, i32 4
  %24 = ptrtoint ptr %WmSetting to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %WmSetting, align 4
  %inc = add nuw i32 %i.0137, 1
  %25 = ptrtoint ptr %clock_ranges to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clock_ranges, align 4
  %cmp4 = icmp ult i32 %inc, %26
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.cond27.preheaderthread-pre-split

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.cond27.preheader.for.body30_crit_edge
  %i.1139 = phi i32 [ %inc66, %for.body30.for.body30_crit_edge ], [ 0, %for.cond27.preheader.for.body30_crit_edge ]
  %arrayidx31 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1139
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx31, align 2
  %arrayidx35 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1139
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx35, align 4
  %max_fill_clk_mhz39 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1139, i32 1
  %30 = ptrtoint ptr %max_fill_clk_mhz39 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_fill_clk_mhz39, align 2
  %MaxClock43 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1139, i32 1
  %32 = ptrtoint ptr %MaxClock43 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %MaxClock43, align 2
  %min_drain_clk_mhz46 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1139, i32 2
  %33 = ptrtoint ptr %min_drain_clk_mhz46 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %min_drain_clk_mhz46, align 2
  %MinUclk50 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1139, i32 2
  %35 = ptrtoint ptr %MinUclk50 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %MinUclk50, align 4
  %max_drain_clk_mhz53 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1139, i32 3
  %36 = ptrtoint ptr %max_drain_clk_mhz53 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_drain_clk_mhz53, align 2
  %MaxUclk57 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1139, i32 3
  %38 = ptrtoint ptr %MaxUclk57 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %MaxUclk57, align 2
  %wm_inst60 = getelementptr %struct.pp_smu_wm_range_sets, ptr %clock_ranges, i32 0, i32 3, i32 %i.1139, i32 4
  %39 = ptrtoint ptr %wm_inst60 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wm_inst60, align 2
  %WmSetting64 = getelementptr [4 x %struct.WatermarkRowGeneric_t], ptr %1, i32 0, i32 %i.1139, i32 4
  %41 = ptrtoint ptr %WmSetting64 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %WmSetting64, align 4
  %inc66 = add nuw i32 %i.1139, 1
  %42 = ptrtoint ptr %num_writer_wm_sets to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_writer_wm_sets, align 4
  %cmp29 = icmp ult i32 %inc66, %43
  br i1 %cmp29, label %for.body30.for.body30_crit_edge, label %for.body30.for.end67_crit_edge

for.body30.for.end67_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end67

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30

for.end67:                                        ; preds = %for.body30.for.end67_crit_edge, %for.cond27.preheader.for.end67_crit_edge
  %watermarks_bitmap = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 34
  %44 = ptrtoint ptr %watermarks_bitmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %watermarks_bitmap, align 4
  %or = or i32 %45, 1
  store i32 %or, ptr %watermarks_bitmap, align 4
  br label %if.end68

if.end68:                                         ; preds = %for.end67, %entry.if.end68_crit_edge
  %watermarks_bitmap69 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 34
  %46 = ptrtoint ptr %watermarks_bitmap69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %watermarks_bitmap69, align 4
  %48 = and i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %if.then74, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then74:                                        ; preds = %if.end68
  %call = tail call i32 @smu_cmn_write_watermarks_table(ptr noundef %smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool75.not = icmp eq i32 %call, 0
  br i1 %tobool75.not, label %if.end77, label %do.end

do.end:                                           ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %smu, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.147) #16
  br label %cleanup

if.end77:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %watermarks_bitmap69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %watermarks_bitmap69, align 4
  %or79 = or i32 %55, 2
  store i32 %or79, ptr %watermarks_bitmap69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end, %if.end68.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end77 ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi10_get_thermal_temperature_range(ptr nocapture noundef readonly %smu, ptr noundef writeonly %range) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %range, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %smu_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %2 = ptrtoint ptr %smu_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_table, align 8
  %4 = call ptr @memcpy(ptr %range, ptr @smu11_thermal_policy, i32 40)
  %TedgeLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %TedgeLimit to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %TedgeLimit, align 4
  %conv = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %max, align 4
  %8 = load i16, ptr %TedgeLimit, align 4
  %conv3 = zext i16 %8 to i32
  %9 = mul nuw nsw i32 %conv3, 1000
  %mul4 = add nuw nsw i32 %9, 5000
  %edge_emergency_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 2
  %10 = ptrtoint ptr %edge_emergency_max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul4, ptr %edge_emergency_max, align 4
  %ThotspotLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %ThotspotLimit to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ThotspotLimit, align 2
  %conv5 = zext i16 %12 to i32
  %mul6 = mul nuw nsw i32 %conv5, 1000
  %hotspot_crit_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 4
  %13 = ptrtoint ptr %hotspot_crit_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul6, ptr %hotspot_crit_max, align 4
  %14 = load i16, ptr %ThotspotLimit, align 2
  %conv8 = zext i16 %14 to i32
  %15 = mul nuw nsw i32 %conv8, 1000
  %mul10 = add nuw nsw i32 %15, 5000
  %hotspot_emergency_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 5
  %16 = ptrtoint ptr %hotspot_emergency_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul10, ptr %hotspot_emergency_max, align 4
  %TmemLimit = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %TmemLimit to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %TmemLimit, align 4
  %conv11 = zext i16 %18 to i32
  %mul12 = mul nuw nsw i32 %conv11, 1000
  %mem_crit_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 7
  %19 = ptrtoint ptr %mem_crit_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul12, ptr %mem_crit_max, align 4
  %20 = load i16, ptr %TmemLimit, align 4
  %conv14 = zext i16 %20 to i32
  %21 = mul nuw nsw i32 %conv14, 1000
  %mul16 = add nuw nsw i32 %21, 5000
  %mem_emergency_max = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 8
  %22 = ptrtoint ptr %mem_emergency_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul16, ptr %mem_emergency_max, align 4
  %software_shutdown_temp = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %software_shutdown_temp to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %software_shutdown_temp, align 1
  %conv17 = zext i16 %24 to i32
  %software_shutdown_temp18 = getelementptr inbounds %struct.smu_temperature_range, ptr %range, i32 0, i32 9
  %25 = ptrtoint ptr %software_shutdown_temp18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv17, ptr %software_shutdown_temp18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_get_uclk_dpm_states(ptr nocapture noundef readonly %smu, ptr noundef writeonly %clocks_in_khz, ptr noundef writeonly %num_states) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clocks_in_khz, null
  %tobool1.not = icmp eq ptr %num_states, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %NumDiscreteLevels = getelementptr %struct.PPTable_t, ptr %1, i32 0, i32 41, i32 2, i32 2
  %2 = ptrtoint ptr %NumDiscreteLevels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %NumDiscreteLevels, align 2
  %FreqTableUclk = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %cmp7 = icmp eq ptr %FreqTableUclk, null
  %or.cond30 = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond30, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %num_states to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %num_states, align 4
  %5 = zext i8 %3 to i16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dpm_levels.033 = phi ptr [ %incdec.ptr15, %for.body.for.body_crit_edge ], [ %FreqTableUclk, %for.body.preheader ]
  %clocks_in_khz.addr.032 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %clocks_in_khz, %for.body.preheader ]
  %6 = ptrtoint ptr %dpm_levels.033 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dpm_levels.033, align 2
  %conv14 = zext i16 %7 to i32
  %mul = mul nuw nsw i32 %conv14, 1000
  %8 = ptrtoint ptr %clocks_in_khz.addr.032 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %clocks_in_khz.addr.032, align 4
  %incdec.ptr = getelementptr i32, ptr %clocks_in_khz.addr.032, i32 1
  %incdec.ptr15 = getelementptr i16, ptr %dpm_levels.033, i32 1
  %inc = add nuw nsw i16 %i.034, 1
  %cmp12 = icmp ult i16 %inc, %5
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_set_default_od_settings(ptr noundef %smu) #1 align 64 {
entry:
  %value.i72 = alloca i32, align 4
  %value.i64 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 16
  %0 = ptrtoint ptr %overdrive_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %overdrive_table, align 4
  %boot_overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 17
  %2 = ptrtoint ptr %boot_overdrive_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_overdrive_table, align 8
  %user_overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 18
  %4 = ptrtoint ptr %user_overdrive_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_overdrive_table, align 4
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 137
  %8 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_suspend, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 11, i32 noundef 0, ptr noundef %3, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.149) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %GfxclkVolt1 = getelementptr inbounds %struct.OverDriveTable_t, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %GfxclkVolt1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %GfxclkVolt1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool7.not = icmp eq i16 %15, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %GfxclkFreq1 = getelementptr inbounds %struct.OverDriveTable_t, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %GfxclkFreq1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %GfxclkFreq1, align 4
  %conv = zext i16 %17 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #13
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %value.i, align 4
  %call.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 96, i32 noundef %conv, ptr noundef nonnull %value.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %navi10_overdrive_get_gfx_clk_base_voltage.exit.thread, label %navi10_overdrive_get_gfx_clk_base_voltage.exit

navi10_overdrive_get_gfx_clk_base_voltage.exit.thread: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  %conv.i = trunc i32 %20 to i16
  %21 = ptrtoint ptr %GfxclkVolt1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %GfxclkVolt1, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #13
  br label %if.end14

navi10_overdrive_get_gfx_clk_base_voltage.exit:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smu, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.151) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #13
  br label %cleanup

if.end14:                                         ; preds = %navi10_overdrive_get_gfx_clk_base_voltage.exit.thread, %if.end6.if.end14_crit_edge
  %GfxclkVolt2 = getelementptr inbounds %struct.OverDriveTable_t, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %GfxclkVolt2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %GfxclkVolt2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool15.not = icmp eq i16 %27, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then16:                                        ; preds = %if.end14
  %GfxclkFreq2 = getelementptr inbounds %struct.OverDriveTable_t, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %GfxclkFreq2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %GfxclkFreq2, align 4
  %conv18 = zext i16 %29 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i64) #13
  %30 = ptrtoint ptr %value.i64 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %value.i64, align 4
  %call.i66 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 96, i32 noundef %conv18, ptr noundef nonnull %value.i64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %navi10_overdrive_get_gfx_clk_base_voltage.exit71.thread, label %navi10_overdrive_get_gfx_clk_base_voltage.exit71

navi10_overdrive_get_gfx_clk_base_voltage.exit71.thread: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %value.i64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value.i64, align 4
  %conv.i69 = trunc i32 %32 to i16
  %33 = ptrtoint ptr %GfxclkVolt2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i69, ptr %GfxclkVolt2, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i64) #13
  br label %if.end23

navi10_overdrive_get_gfx_clk_base_voltage.exit71: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %smu, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.151) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i64) #13
  br label %cleanup

if.end23:                                         ; preds = %navi10_overdrive_get_gfx_clk_base_voltage.exit71.thread, %if.end14.if.end23_crit_edge
  %GfxclkVolt3 = getelementptr inbounds %struct.OverDriveTable_t, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %GfxclkVolt3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %GfxclkVolt3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool24.not = icmp eq i16 %39, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then25:                                        ; preds = %if.end23
  %GfxclkFreq3 = getelementptr inbounds %struct.OverDriveTable_t, ptr %3, i32 0, i32 6
  %40 = ptrtoint ptr %GfxclkFreq3 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %GfxclkFreq3, align 4
  %conv27 = zext i16 %41 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i72) #13
  %42 = ptrtoint ptr %value.i72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %value.i72, align 4
  %call.i74 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 96, i32 noundef %conv27, ptr noundef nonnull %value.i72) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %navi10_overdrive_get_gfx_clk_base_voltage.exit79.thread, label %navi10_overdrive_get_gfx_clk_base_voltage.exit79

navi10_overdrive_get_gfx_clk_base_voltage.exit79.thread: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %value.i72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %value.i72, align 4
  %conv.i77 = trunc i32 %44 to i16
  %45 = ptrtoint ptr %GfxclkVolt3 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i77, ptr %GfxclkVolt3, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i72) #13
  br label %if.end32

navi10_overdrive_get_gfx_clk_base_voltage.exit79: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smu, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.151) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i72) #13
  br label %cleanup

if.end32:                                         ; preds = %navi10_overdrive_get_gfx_clk_base_voltage.exit79.thread, %if.end23.if.end32_crit_edge
  call fastcc void @navi10_dump_od_table(ptr noundef %smu, ptr noundef %3)
  %50 = call ptr @memcpy(ptr %1, ptr %3, i32 64)
  %51 = call ptr @memcpy(ptr %5, ptr %3, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %navi10_overdrive_get_gfx_clk_base_voltage.exit79, %navi10_overdrive_get_gfx_clk_base_voltage.exit71, %navi10_overdrive_get_gfx_clk_base_voltage.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end32 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %navi10_overdrive_get_gfx_clk_base_voltage.exit ], [ %call.i66, %navi10_overdrive_get_gfx_clk_base_voltage.exit71 ], [ %call.i74, %navi10_overdrive_get_gfx_clk_base_voltage.exit79 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_performance_level(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_display_disable_memory_clock_switch(ptr noundef %smu, i1 noundef zeroext %disable_memory_clock_switch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %disable_memory_clock_switch to i8
  %disable_uclk_switch = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 36
  %0 = ptrtoint ptr %disable_uclk_switch to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disable_uclk_switch, align 4, !range !355
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_sustainable_clocks1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 7
  %2 = ptrtoint ptr %max_sustainable_clocks1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max_sustainable_clocks1, align 4
  %uclock = getelementptr inbounds %struct.smu_11_0_max_sustainable_clocks, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %uclock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uclock, align 4
  %hard_min_uclk_req_from_dal = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 35
  %6 = ptrtoint ptr %hard_min_uclk_req_from_dal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hard_min_uclk_req_from_dal, align 8
  %. = select i1 %disable_memory_clock_switch, i32 %5, i32 %7
  %call7 = tail call i32 @smu_v11_0_set_hard_freq_limited_range(ptr noundef %smu, i32 noundef 7, i32 noundef %., i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %disable_uclk_switch to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %disable_uclk_switch, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_get_power_limit(ptr noundef %smu, ptr noundef writeonly %current_power_limit, ptr noundef writeonly %default_power_limit, ptr noundef writeonly %max_power_limit) #1 align 64 {
entry:
  %power_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %0 = ptrtoint ptr %smu_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_table, align 8
  %od_settings1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 21
  %2 = ptrtoint ptr %od_settings1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %od_settings1, align 4
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %4 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_pptable, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power_limit) #13
  %6 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %power_limit, align 4, !annotation !358
  %call = call i32 @smu_v11_0_get_current_power_limit(ptr noundef %smu, ptr noundef nonnull %power_limit) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.153) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %SocketPowerLimitAc = getelementptr inbounds %struct.PPTable_t, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %SocketPowerLimitAc to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %SocketPowerLimitAc, align 4
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %power_limit, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %current_power_limit, null
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_limit, align 4
  %16 = ptrtoint ptr %current_power_limit to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %current_power_limit, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %default_power_limit, null
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power_limit, align 4
  %19 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %default_power_limit, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %max_power_limit, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %od_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 25
  %20 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %od_enabled, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not = icmp eq i8 %21, 0
  br i1 %tobool14.not, label %if.then13.if.end31_crit_edge, label %land.lhs.true

if.then13.if.end31_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then13
  %arrayidx.i = getelementptr %struct.smu_11_0_overdrive_table, ptr %3, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not = icmp eq i8 %23, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end31_crit_edge, label %if.then18

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then18:                                        ; preds = %land.lhs.true
  %arrayidx19 = getelementptr %struct.smu_11_0_powerplay_table, ptr %1, i32 0, i32 16, i32 5, i32 9
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %arrayidx19, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @navi10_get_power_limit.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@navi10_get_power_limit, %if.then25)) #13
          to label %do.end30 [label %if.then25], !srcloc !357

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smu, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %power_limit, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @navi10_get_power_limit.__UNIQUE_ID_ddebug347, ptr noundef %30, ptr noundef nonnull @.str.155, i32 noundef %26, i32 noundef %32) #13
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %if.then18
  %add = add i32 %26, 100
  %33 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %power_limit, align 4
  %mul = mul i32 %34, %add
  %div = udiv i32 %mul, 100
  store i32 %div, ptr %power_limit, align 4
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %land.lhs.true.if.end31_crit_edge, %if.then13.if.end31_crit_edge
  %35 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %power_limit, align 4
  %37 = ptrtoint ptr %max_power_limit to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max_power_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end31 ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power_limit) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_update_pcie_parameters(ptr noundef %smu, i32 noundef %pcie_gen_cap, i32 noundef %pcie_width_cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_pptable, align 4
  %pcie_table = getelementptr inbounds %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 13
  %arrayidx = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 73, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %pcie_table to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %pcie_table, align 1
  %arrayidx3 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 74, i32 0
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 13, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx6, align 1
  %arrayidx.1 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 73, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 13, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx2.1, align 1
  %arrayidx3.1 = getelementptr %struct.PPTable_t, ptr %3, i32 0, i32 74, i32 1
  %13 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.1, align 1
  %arrayidx6.1 = getelementptr %struct.smu_11_0_dpm_tables, ptr %1, i32 0, i32 13, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx6.1, align 1
  %conv38 = trunc i32 %pcie_gen_cap to i8
  %conv50 = trunc i32 %pcie_width_cap to i8
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %17 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %pcie_gen_cap)
  %cond = shl nuw nsw i32 %17, 8
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3, align 1
  %conv21 = zext i8 %19 to i32
  %20 = tail call i32 @llvm.umin.i32(i32 %conv21, i32 %pcie_width_cap)
  %or31 = or i32 %cond, %20
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 46, i32 noundef %or31, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34, i32 %pcie_gen_cap)
  %cmp35 = icmp ugt i32 %conv34, %pcie_gen_cap
  br i1 %cmp35, label %if.then37, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %pcie_table to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv38, ptr %pcie_table, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.end.if.end43_crit_edge
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx3, align 1
  %conv46 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv46, i32 %pcie_width_cap)
  %cmp47 = icmp ugt i32 %conv46, %pcie_width_cap
  br i1 %cmp47, label %if.then49, label %if.end43.for.inc56_crit_edge

if.end43.for.inc56_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc56

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv50, ptr %arrayidx6, align 1
  br label %for.inc56

for.inc56:                                        ; preds = %if.then49, %if.end43.for.inc56_crit_edge
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %28 to i32
  %29 = tail call i32 @llvm.umin.i32(i32 %conv.1, i32 %pcie_gen_cap)
  %cond.1 = shl nuw nsw i32 %29, 8
  %30 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx3.1, align 1
  %conv21.1 = zext i8 %31 to i32
  %32 = tail call i32 @llvm.umin.i32(i32 %conv21.1, i32 %pcie_width_cap)
  %or.1 = or i32 %cond.1, %32
  %or31.1 = or i32 %or.1, 65536
  %call.1 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 46, i32 noundef %or31.1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.inc56.cleanup_crit_edge

for.inc56.cleanup_crit_edge:                      ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.1:                                         ; preds = %for.inc56
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1, align 1
  %conv34.1 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34.1, i32 %pcie_gen_cap)
  %cmp35.1 = icmp ugt i32 %conv34.1, %pcie_gen_cap
  br i1 %cmp35.1, label %if.then37.1, label %if.end.1.if.end43.1_crit_edge

if.end.1.if.end43.1_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.1

if.then37.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv38, ptr %arrayidx2.1, align 1
  br label %if.end43.1

if.end43.1:                                       ; preds = %if.then37.1, %if.end.1.if.end43.1_crit_edge
  %36 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx3.1, align 1
  %conv46.1 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv46.1, i32 %pcie_width_cap)
  %cmp47.1 = icmp ugt i32 %conv46.1, %pcie_width_cap
  br i1 %cmp47.1, label %if.then49.1, label %if.end43.1.cleanup_crit_edge

if.end43.1.cleanup_crit_edge:                     ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then49.1:                                      ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv50, ptr %arrayidx6.1, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then49.1, %if.end43.1.cleanup_crit_edge, %for.inc56.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %for.inc56.cleanup_crit_edge ], [ 0, %if.then49.1 ], [ 0, %if.end43.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_i2c_control_init(ptr nocapture noundef readnone %smu, ptr noundef %control) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %control, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 1
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %class, align 4
  %pdev = getelementptr i8, ptr %control, i32 -31236
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 2
  %5 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @navi10_i2c_algo, ptr %algo, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 12
  %6 = call ptr @memcpy(ptr %name, ptr @.str.156, i32 11)
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 17
  %7 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @navi10_i2c_control_quirks, ptr %quirks, align 8
  %call2 = tail call i32 @i2c_add_adapter(ptr noundef %control) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.157, i32 noundef %call2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @navi10_i2c_control_fini(ptr nocapture noundef readnone %smu, ptr noundef %control) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef %control) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_microcode(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_load_microcode(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_v11_0_fini_microcode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_init_smc_tables(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tables2.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11
  %0 = ptrtoint ptr %tables2.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1192, ptr %tables2.i, align 8
  %align.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 0, i32 1
  %1 = ptrtoint ptr %align.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %align.i, align 8
  %domain.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 0, i32 2
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %domain.i, align 4
  %arrayidx6.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 384, ptr %arrayidx6.i, align 8
  %align9.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1, i32 1
  %4 = ptrtoint ptr %align9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %align9.i, align 8
  %domain11.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1, i32 2
  %5 = ptrtoint ptr %domain11.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %domain11.i, align 4
  %arrayidx15.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8
  %6 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 120, ptr %arrayidx15.i, align 8
  %align18.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 1
  %7 = ptrtoint ptr %align18.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %align18.i, align 8
  %domain20.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 2
  %8 = ptrtoint ptr %domain20.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %domain20.i, align 4
  %arrayidx24.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 12
  %9 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 72, ptr %arrayidx24.i, align 8
  %align27.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 12, i32 1
  %10 = ptrtoint ptr %align27.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %align27.i, align 8
  %domain29.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 12, i32 2
  %11 = ptrtoint ptr %domain29.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %domain29.i, align 4
  %arrayidx33.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 11
  %12 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 64, ptr %arrayidx33.i, align 8
  %align36.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 11, i32 1
  %13 = ptrtoint ptr %align36.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %align36.i, align 8
  %domain38.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 11, i32 2
  %14 = ptrtoint ptr %domain38.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %domain38.i, align 4
  %arrayidx42.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7
  %15 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 102400, ptr %arrayidx42.i, align 8
  %align45.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7, i32 1
  %16 = ptrtoint ptr %align45.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %align45.i, align 8
  %domain47.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7, i32 2
  %17 = ptrtoint ptr %domain47.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %domain47.i, align 4
  %arrayidx51.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10
  %18 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 136, ptr %arrayidx51.i, align 8
  %align54.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10, i32 1
  %19 = ptrtoint ptr %align54.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %align54.i, align 8
  %domain56.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 10, i32 2
  %20 = ptrtoint ptr %domain56.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %domain56.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 120) #18
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %22 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i, ptr %metrics_table.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %metrics_time.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %23 = ptrtoint ptr %metrics_time.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %metrics_time.i, align 4
  %gpu_metrics_table_size.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 19
  %24 = ptrtoint ptr %gpu_metrics_table_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 120, ptr %gpu_metrics_table_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i105.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 120) #18
  %gpu_metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %26 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i105.i, ptr %gpu_metrics_table.i, align 4
  %tobool63.not.i = icmp eq ptr %call7.i.i105.i, null
  br i1 %tobool63.not.i, label %if.end.i.err1_out.i_crit_edge, label %if.end65.i

if.end.i.err1_out.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err1_out.i

if.end65.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i106.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 384) #18
  %watermarks_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %28 = ptrtoint ptr %watermarks_table.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i106.i, ptr %watermarks_table.i, align 8
  %tobool68.not.i = icmp eq ptr %call7.i.i106.i, null
  br i1 %tobool68.not.i, label %err2_out.i, label %if.end

err2_out.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpu_metrics_table.i, align 4
  tail call void @kfree(ptr noundef %30) #13
  br label %err1_out.i

err1_out.i:                                       ; preds = %err2_out.i, %if.end.i.err1_out.i_crit_edge
  %31 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %metrics_table.i, align 8
  tail call void @kfree(ptr noundef %32) #13
  br label %cleanup

if.end:                                           ; preds = %if.end65.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 1884) #18
  %dpm_context.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %34 = ptrtoint ptr %dpm_context.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i11, ptr %dpm_context.i, align 4
  %tobool.not.i12 = icmp eq ptr %call7.i.i.i11, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %smu_dpm1.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15
  %35 = ptrtoint ptr %smu_dpm1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1884, ptr %smu_dpm1.i, align 4
  %call5 = tail call i32 @smu_v11_0_init_smc_tables(ptr noundef %smu) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %err1_out.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err1_out.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_fini_smc_tables(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_power(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_fini_power(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_check_fw_status(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_set_mp1_state(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_setup_pptable(ptr noundef %smu) #1 align 64 {
entry:
  %smc_dpm_table.i = alloca ptr, align 4
  %smc_dpm_table_v4_7.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_v11_0_setup_pptable(ptr noundef %smu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %0 = ptrtoint ptr %smu_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_table.i, align 8
  %driver_pptable.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %driver_pptable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_pptable.i, align 4
  %smc_pptable.i = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %1, i32 0, i32 17
  %4 = call ptr @memcpy(ptr %3, ptr %smc_pptable.i, i32 1192)
  %5 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu, align 8
  %7 = load ptr, ptr %driver_pptable.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_dpm_table.i) #13
  %8 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %smc_dpm_table.i, align 4, !annotation !358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_dpm_table_v4_7.i) #13
  %9 = ptrtoint ptr %smc_dpm_table_v4_7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %smc_dpm_table_v4_7.i, align 4, !annotation !358
  %call.i = call i32 @amdgpu_atombios_get_data_table(ptr noundef %6, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %smc_dpm_table.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.navi10_append_powerplay_table.exit.thread_crit_edge

if.end.navi10_append_powerplay_table.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_append_powerplay_table.exit.thread

do.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 8
  %12 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smc_dpm_table.i, align 4
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %format_revision.i, align 1
  %conv.i = zext i8 %15 to i32
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %content_revision.i, align 1
  %conv3.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.158, i32 noundef %conv.i, i32 noundef %conv3.i) #16
  %18 = ptrtoint ptr %smc_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smc_dpm_table.i, align 4
  %format_revision5.i = getelementptr inbounds %struct.atom_common_table_header, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %format_revision5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %format_revision5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 4
  br i1 %cmp.not.i, label %if.end13.i, label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.161) #16
  br label %navi10_append_powerplay_table.exit.thread

if.end13.i:                                       ; preds = %do.end.i
  %content_revision15.i = getelementptr inbounds %struct.atom_common_table_header, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %content_revision15.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %content_revision15.i, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %25, label %do.end49.i [
    i8 5, label %if.end13.i.sw.epilog.i_crit_edge
    i8 7, label %sw.bb26.i
  ]

if.end13.i.sw.epilog.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end13.i
  %call27.i = call i32 @amdgpu_atombios_get_data_table(ptr noundef %6, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %smc_dpm_table_v4_7.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %do.end43.i, label %sw.bb26.i.navi10_append_powerplay_table.exit.thread_crit_edge

sw.bb26.i.navi10_append_powerplay_table.exit.thread_crit_edge: ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_append_powerplay_table.exit.thread

do.end43.i:                                       ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %smc_dpm_table_v4_7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smc_dpm_table_v4_7.i, align 4
  br label %sw.epilog.i

do.end49.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv16.i = zext i8 %25 to i32
  %29 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %smu, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.164, i32 noundef %conv16.i) #16
  br label %navi10_append_powerplay_table.exit.thread

sw.epilog.i:                                      ; preds = %do.end43.i, %if.end13.i.sw.epilog.i_crit_edge
  %.sink.i = phi ptr [ %28, %do.end43.i ], [ %19, %if.end13.i.sw.epilog.i_crit_edge ]
  %add.ptr45.sink.i = getelementptr i8, ptr %7, i32 964
  %add.ptr46.i = getelementptr i8, ptr %.sink.i, i32 4
  %33 = call ptr @memcpy(ptr %add.ptr45.sink.i, ptr %add.ptr46.i, i32 196)
  %pp_feature.i = getelementptr inbounds %struct.amdgpu_device, ptr %6, i32 0, i32 98, i32 24
  %34 = ptrtoint ptr %pp_feature.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pp_feature.i, align 8
  %and.i = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool55.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool55.not.i, label %sw.epilog.i.if.end8_crit_edge, label %if.then56.i

sw.epilog.i.if.end8_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then56.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %DebugOverrides.i = getelementptr inbounds %struct.PPTable_t, ptr %7, i32 0, i32 119
  %36 = ptrtoint ptr %DebugOverrides.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %DebugOverrides.i, align 4
  %or.i = or i32 %37, 512
  store i32 %or.i, ptr %DebugOverrides.i, align 4
  br label %if.end8

navi10_append_powerplay_table.exit.thread:        ; preds = %do.end49.i, %sw.bb26.i.navi10_append_powerplay_table.exit.thread_crit_edge, %do.end11.i, %if.end.navi10_append_powerplay_table.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call27.i, %sw.bb26.i.navi10_append_powerplay_table.exit.thread_crit_edge ], [ %call.i, %if.end.navi10_append_powerplay_table.exit.thread_crit_edge ], [ -22, %do.end49.i ], [ -22, %do.end11.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_dpm_table_v4_7.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_dpm_table.i) #13
  br label %cleanup

if.end8:                                          ; preds = %if.then56.i, %sw.epilog.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_dpm_table_v4_7.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_dpm_table.i) #13
  %38 = ptrtoint ptr %smu_table.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smu_table.i, align 8
  %platform_caps.i = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %platform_caps.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %platform_caps.i, align 1
  %and.i26 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %if.end8.if.end.i_crit_edge, label %if.then.i

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %dc_controlled_by_gpio.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 48
  %42 = ptrtoint ptr %dc_controlled_by_gpio.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %dc_controlled_by_gpio.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge
  %43 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %smu, align 8
  %45 = ptrtoint ptr %platform_caps.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %platform_caps.i, align 1
  %47 = and i32 %46, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %if.end.i.navi10_check_powerplay_table.exit_crit_edge, label %if.then.i.i

if.end.i.navi10_check_powerplay_table.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_check_powerplay_table.exit

if.then.i.i:                                      ; preds = %if.end.i
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %44, i32 0, i32 132
  %49 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %virt.i.i, align 8
  %and6.i.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then.i.i.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.cond.false.i.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %44, i32 0, i32 106, i32 2, i32 15
  %51 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %funcs.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %52, null
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %sriov_rreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %sriov_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sriov_rreg.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %54, null
  br i1 %tobool13.not.i.i, label %land.lhs.true9.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true9.i.i.cond.false.i.i_crit_edge:      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %44, i32 0, i32 130, i32 13
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx19.i.i = getelementptr i32, ptr %56, i32 2
  %57 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx19.i.i, align 4
  %call.i.i = call i32 %54(ptr noundef %44, i32 noundef %58, i32 noundef 0, i32 noundef 13) #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true9.i.i.cond.false.i.i_crit_edge, %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.then.i.i.cond.false.i.i_crit_edge
  %arrayidx21.i.i = getelementptr %struct.amdgpu_device, ptr %44, i32 0, i32 130, i32 13
  %59 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx21.i.i, align 8
  %arrayidx23.i.i = getelementptr i32, ptr %60, i32 2
  %61 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx23.i.i, align 4
  %call25.i.i = call i32 @amdgpu_device_rreg(ptr noundef %44, i32 noundef %62, i32 noundef 0) #13
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %call25.i.i, %cond.false.i.i ]
  %platform_support.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 19, i32 2
  %63 = trunc i32 %cond.i.i to i8
  %64 = lshr i8 %63, 7
  %65 = ptrtoint ptr %platform_support.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %platform_support.i.i, align 4
  br label %navi10_check_powerplay_table.exit

navi10_check_powerplay_table.exit:                ; preds = %cond.end.i.i, %if.end.i.navi10_check_powerplay_table.exit_crit_edge
  %thermal_controller_type.i = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %39, i32 0, i32 7
  %66 = ptrtoint ptr %thermal_controller_type.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %thermal_controller_type.i, align 1
  %thermal_controller_type1.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 15
  %68 = ptrtoint ptr %thermal_controller_type1.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %thermal_controller_type1.i, align 8
  %overdrive_table.i = getelementptr inbounds %struct.smu_11_0_powerplay_table, ptr %39, i32 0, i32 16
  %od_settings.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 21
  %69 = ptrtoint ptr %od_settings.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %overdrive_table.i, ptr %od_settings.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %navi10_check_powerplay_table.exit, %navi10_append_powerplay_table.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %navi10_check_powerplay_table.exit ], [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %navi10_append_powerplay_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_vbios_bootup_values(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_check_fw_version(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_write_pptable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_driver_table_location(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_tool_table_location(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_notify_memory_pool_location(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_system_features_control(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_display_count(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_allowed_mask(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_enabled_mask(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_enabled(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_disable_all_features_with_exception(ptr noundef, i1 noundef zeroext, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_notify_display_change(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_power_limit(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_max_sustainable_clocks(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_enable_thermal_alert(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_disable_thermal_alert(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_min_deep_sleep_dcefclk(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_display_clock_voltage_request(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_fan_control_mode(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_fan_control_mode(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_fan_speed_pwm(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_fan_speed_rpm(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_xgmi_pstate(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_gfx_off_control(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_register_irq_handler(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_azalia_d3_pme(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_max_sustainable_clocks_by_dc(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu_v11_0_baco_is_support(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_get_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_set_state(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_baco_enter(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %2 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_runpm, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @smu_cmn_is_audio_func_enabled(ptr noundef %1) #13
  br i1 %call, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @smu_v11_0_baco_set_armd3_sequence(ptr noundef %smu, i32 noundef 0) #13
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call3 = tail call i32 @smu_v11_0_baco_enter(ptr noundef %smu) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_baco_exit(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %2 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_runpm, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @smu_cmn_is_audio_func_enabled(ptr noundef %1) #13
  br i1 %call, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 10) #13
  %call2 = tail call i32 @smu_v11_0_baco_set_armd3_sequence(ptr noundef %smu, i32 noundef 3) #13
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call3 = tail call i32 @smu_v11_0_baco_exit(ptr noundef %smu) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_dpm_ultimate_freq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_soft_freq_limited_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_power_source(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_pp_feature_mask(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_set_pp_feature_mask(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi1x_get_gpu_metrics(ptr noundef %smu, ptr nocapture noundef writeonly %table) #1 align 64 {
entry:
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #13
  %2 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %smu_version, align 4, !annotation !358
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.35) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %6, label %if.end.if.else21_crit_edge [
    i32 720905, label %sw.bb
    i32 720901, label %land.lhs.true
    i32 720896, label %land.lhs.true17
  ]

if.end.if.else21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

sw.bb:                                            ; preds = %if.end
  %8 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3415040, i32 %9)
  %cmp = icmp ugt i32 %9, 3415040
  %gpu_metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %10 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpu_metrics_table.i, align 4
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #13
  %call.i = call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.bb
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %metrics_table.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %metrics.sroa.0.0.copyload.i = load i16, ptr %13, align 1
  %metrics.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 2
  %15 = ptrtoint ptr %metrics.sroa.5.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %metrics.sroa.5.0.copyload.i = load i16, ptr %metrics.sroa.5.0..sroa_idx.i, align 1
  %metrics.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 4
  %16 = ptrtoint ptr %metrics.sroa.6.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %metrics.sroa.6.0.copyload.i = load i16, ptr %metrics.sroa.6.0..sroa_idx.i, align 1
  %metrics.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 6
  %17 = ptrtoint ptr %metrics.sroa.7.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %metrics.sroa.7.0.copyload.i = load i16, ptr %metrics.sroa.7.0..sroa_idx.i, align 1
  %metrics.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 8
  %18 = ptrtoint ptr %metrics.sroa.8.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %metrics.sroa.8.0.copyload.i = load i16, ptr %metrics.sroa.8.0..sroa_idx.i, align 1
  %metrics.sroa.950.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 18
  %19 = ptrtoint ptr %metrics.sroa.950.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %metrics.sroa.950.0.copyload.i = load i16, ptr %metrics.sroa.950.0..sroa_idx.i, align 1
  %metrics.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 20
  %20 = ptrtoint ptr %metrics.sroa.10.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %metrics.sroa.10.0.copyload.i = load i16, ptr %metrics.sroa.10.0..sroa_idx.i, align 1
  %metrics.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 22
  %21 = ptrtoint ptr %metrics.sroa.11.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %metrics.sroa.11.0.copyload.i = load i16, ptr %metrics.sroa.11.0..sroa_idx.i, align 1
  %metrics.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 24
  %22 = ptrtoint ptr %metrics.sroa.12.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %metrics.sroa.12.0.copyload.i = load i16, ptr %metrics.sroa.12.0..sroa_idx.i, align 1
  %metrics.sroa.14.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 26
  %23 = ptrtoint ptr %metrics.sroa.14.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %metrics.sroa.14.0.copyload.i = load i16, ptr %metrics.sroa.14.0..sroa_idx.i, align 1
  %metrics.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 28
  %24 = ptrtoint ptr %metrics.sroa.15.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %metrics.sroa.15.0.copyload.i = load i8, ptr %metrics.sroa.15.0..sroa_idx.i, align 1
  %metrics.sroa.17.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 29
  %25 = ptrtoint ptr %metrics.sroa.17.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %metrics.sroa.17.0.copyload.i = load i8, ptr %metrics.sroa.17.0..sroa_idx.i, align 1
  %metrics.sroa.19.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 30
  %26 = ptrtoint ptr %metrics.sroa.19.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %metrics.sroa.19.0.copyload.i = load i8, ptr %metrics.sroa.19.0..sroa_idx.i, align 1
  %metrics.sroa.2155.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 32
  %27 = ptrtoint ptr %metrics.sroa.2155.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %metrics.sroa.2155.0.copyload.i = load i16, ptr %metrics.sroa.2155.0..sroa_idx.i, align 1
  %metrics.sroa.22.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 34
  %28 = ptrtoint ptr %metrics.sroa.22.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %metrics.sroa.22.0.copyload.i = load i16, ptr %metrics.sroa.22.0..sroa_idx.i, align 1
  %metrics.sroa.23.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 36
  %29 = ptrtoint ptr %metrics.sroa.23.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %metrics.sroa.23.0.copyload.i = load i16, ptr %metrics.sroa.23.0..sroa_idx.i, align 1
  %metrics.sroa.24.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 38
  %30 = ptrtoint ptr %metrics.sroa.24.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %metrics.sroa.24.0.copyload.i = load i16, ptr %metrics.sroa.24.0..sroa_idx.i, align 1
  %metrics.sroa.25.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 40
  %31 = ptrtoint ptr %metrics.sroa.25.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %metrics.sroa.25.0.copyload.i = load i16, ptr %metrics.sroa.25.0..sroa_idx.i, align 1
  %metrics.sroa.26.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 42
  %32 = ptrtoint ptr %metrics.sroa.26.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %metrics.sroa.26.0.copyload.i = load i16, ptr %metrics.sroa.26.0..sroa_idx.i, align 1
  %metrics.sroa.2756.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 46
  %33 = ptrtoint ptr %metrics.sroa.2756.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %metrics.sroa.2756.0.copyload.i = load i16, ptr %metrics.sroa.2756.0..sroa_idx.i, align 1
  %metrics.sroa.2857.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 56
  %34 = ptrtoint ptr %metrics.sroa.2857.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %metrics.sroa.2857.0.copyload.i = load i32, ptr %metrics.sroa.2857.0..sroa_idx.i, align 1
  %metrics.sroa.3059.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 62
  %35 = ptrtoint ptr %metrics.sroa.3059.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %metrics.sroa.3059.0.copyload.i = load i16, ptr %metrics.sroa.3059.0..sroa_idx.i, align 1
  %metrics.sroa.31.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 64
  %36 = ptrtoint ptr %metrics.sroa.31.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %metrics.sroa.31.0.copyload.i = load i16, ptr %metrics.sroa.31.0..sroa_idx.i, align 1
  %metrics.sroa.32.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 66
  %37 = ptrtoint ptr %metrics.sroa.32.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %metrics.sroa.32.0.copyload.i = load i16, ptr %metrics.sroa.32.0..sroa_idx.i, align 1
  %metrics.sroa.33.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 68
  %38 = ptrtoint ptr %metrics.sroa.33.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %metrics.sroa.33.0.copyload.i = load i16, ptr %metrics.sroa.33.0..sroa_idx.i, align 1
  %metrics.sroa.34.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 70
  %39 = ptrtoint ptr %metrics.sroa.34.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %metrics.sroa.34.0.copyload.i = load i16, ptr %metrics.sroa.34.0..sroa_idx.i, align 1
  %metrics.sroa.3560.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 74
  %40 = ptrtoint ptr %metrics.sroa.3560.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %metrics.sroa.3560.0.copyload.i = load i8, ptr %metrics.sroa.3560.0..sroa_idx.i, align 1
  %metrics.sroa.36.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 75
  %41 = ptrtoint ptr %metrics.sroa.36.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %metrics.sroa.36.0.copyload.i = load i8, ptr %metrics.sroa.36.0..sroa_idx.i, align 1
  %metrics.sroa.3761.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 80
  %42 = ptrtoint ptr %metrics.sroa.3761.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %metrics.sroa.3761.0.copyload.i = load i64, ptr %metrics.sroa.3761.0..sroa_idx.i, align 1
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 3) #13
  %temperature_edge.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 1
  %43 = ptrtoint ptr %temperature_edge.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %metrics.sroa.22.0.copyload.i, ptr %temperature_edge.i, align 4
  %temperature_hotspot.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 2
  %44 = ptrtoint ptr %temperature_hotspot.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %metrics.sroa.23.0.copyload.i, ptr %temperature_hotspot.i, align 2
  %temperature_mem.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 3
  %45 = ptrtoint ptr %temperature_mem.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %metrics.sroa.24.0.copyload.i, ptr %temperature_mem.i, align 8
  %temperature_vrgfx.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 4
  %46 = ptrtoint ptr %temperature_vrgfx.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %metrics.sroa.25.0.copyload.i, ptr %temperature_vrgfx.i, align 2
  %temperature_vrsoc.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 5
  %47 = ptrtoint ptr %temperature_vrsoc.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %metrics.sroa.2756.0.copyload.i, ptr %temperature_vrsoc.i, align 4
  %temperature_vrmem.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 6
  %48 = ptrtoint ptr %temperature_vrmem.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %metrics.sroa.26.0.copyload.i, ptr %temperature_vrmem.i, align 2
  %average_gfx_activity.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 7
  %49 = ptrtoint ptr %average_gfx_activity.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %metrics.sroa.12.0.copyload.i, ptr %average_gfx_activity.i, align 8
  %average_umc_activity.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 8
  %50 = ptrtoint ptr %average_umc_activity.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %metrics.sroa.14.0.copyload.i, ptr %average_umc_activity.i, align 2
  %average_socket_power.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 10
  %51 = ptrtoint ptr %average_socket_power.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %metrics.sroa.2155.0.copyload.i, ptr %average_socket_power.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %metrics.sroa.12.0.copyload.i)
  %cmp.i = icmp ugt i16 %metrics.sroa.12.0.copyload.i, 15
  %spec.select.i = select i1 %cmp.i, i16 %metrics.sroa.34.0.copyload.i, i16 %metrics.sroa.950.0.copyload.i
  %52 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 13
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %spec.select.i, ptr %52, align 8
  %average_socclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 14
  %54 = ptrtoint ptr %average_socclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %metrics.sroa.10.0.copyload.i, ptr %average_socclk_frequency.i, align 2
  %average_uclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 15
  %55 = ptrtoint ptr %average_uclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %metrics.sroa.11.0.copyload.i, ptr %average_uclk_frequency.i, align 4
  %energy_accumulator.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 11
  %56 = ptrtoint ptr %energy_accumulator.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %metrics.sroa.3761.0.copyload.i, ptr %energy_accumulator.i, align 8
  %average_vclk0_frequency.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 16
  %57 = ptrtoint ptr %average_vclk0_frequency.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %metrics.sroa.31.0.copyload.i, ptr %average_vclk0_frequency.i, align 2
  %average_dclk0_frequency.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 17
  %58 = ptrtoint ptr %average_dclk0_frequency.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %metrics.sroa.32.0.copyload.i, ptr %average_dclk0_frequency.i, align 8
  %average_mm_activity.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 9
  %59 = ptrtoint ptr %average_mm_activity.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %metrics.sroa.33.0.copyload.i, ptr %average_mm_activity.i, align 4
  %current_gfxclk.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 20
  %60 = ptrtoint ptr %current_gfxclk.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %metrics.sroa.0.0.copyload.i, ptr %current_gfxclk.i, align 2
  %current_socclk.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 21
  %61 = ptrtoint ptr %current_socclk.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %metrics.sroa.5.0.copyload.i, ptr %current_socclk.i, align 8
  %current_uclk.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 22
  %62 = ptrtoint ptr %current_uclk.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %metrics.sroa.6.0.copyload.i, ptr %current_uclk.i, align 2
  %current_vclk0.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 23
  %63 = ptrtoint ptr %current_vclk0.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %metrics.sroa.8.0.copyload.i, ptr %current_vclk0.i, align 4
  %current_dclk0.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 24
  %64 = ptrtoint ptr %current_dclk0.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %metrics.sroa.7.0.copyload.i, ptr %current_dclk0.i, align 2
  %throttle_status.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 27
  %65 = ptrtoint ptr %throttle_status.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %metrics.sroa.2857.0.copyload.i, ptr %throttle_status.i, align 4
  %call18.i = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %metrics.sroa.2857.0.copyload.i, ptr noundef nonnull @navi1x_throttler_map) #13
  %indep_throttle_status.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 40
  %66 = ptrtoint ptr %indep_throttle_status.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %call18.i, ptr %indep_throttle_status.i, align 8
  %current_fan_speed.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 28
  %67 = ptrtoint ptr %current_fan_speed.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %metrics.sroa.3059.0.copyload.i, ptr %current_fan_speed.i, align 8
  %conv19.i = zext i8 %metrics.sroa.36.0.copyload.i to i16
  %pcie_link_width.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 29
  %68 = ptrtoint ptr %pcie_link_width.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv19.i, ptr %pcie_link_width.i, align 2
  %idxprom.i = zext i8 %metrics.sroa.3560.0.copyload.i to i32
  %arrayidx20.i = getelementptr [4 x i16], ptr @link_speed, i32 0, i32 %idxprom.i
  %69 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx20.i, align 2
  %pcie_link_speed.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 30
  %71 = ptrtoint ptr %pcie_link_speed.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %pcie_link_speed.i, align 4
  %call.i.i.i = call i64 @ktime_get_with_offset(i32 noundef 1) #13
  %system_clock_counter.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 12
  %72 = ptrtoint ptr %system_clock_counter.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %call.i.i.i, ptr %system_clock_counter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.17.0.copyload.i)
  %tobool22.not.i = icmp eq i8 %metrics.sroa.17.0.copyload.i, 0
  br i1 %tobool22.not.i, label %if.end.i.if.end27.i_crit_edge, label %if.then23.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv25.i = zext i8 %metrics.sroa.17.0.copyload.i to i32
  %mul.neg.i = mul nsw i32 %conv25.i, -625
  %sub.i = add nsw i32 %mul.neg.i, 155000
  %div.i = sdiv i32 %sub.i, 100
  %conv26.i = trunc i32 %div.i to i16
  %voltage_gfx.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 37
  %73 = ptrtoint ptr %voltage_gfx.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv26.i, ptr %voltage_gfx.i, align 2
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.19.0.copyload.i)
  %tobool28.not.i = icmp eq i8 %metrics.sroa.19.0.copyload.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end36.i_crit_edge, label %if.then29.i

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv31.i = zext i8 %metrics.sroa.19.0.copyload.i to i32
  %mul32.neg.i = mul nsw i32 %conv31.i, -625
  %sub33.i = add nsw i32 %mul32.neg.i, 155000
  %div34.i = sdiv i32 %sub33.i, 100
  %conv35.i = trunc i32 %div34.i to i16
  %voltage_mem.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 38
  %74 = ptrtoint ptr %voltage_mem.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv35.i, ptr %voltage_mem.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end36.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.15.0.copyload.i)
  %tobool37.not.i = icmp eq i8 %metrics.sroa.15.0.copyload.i, 0
  br i1 %tobool37.not.i, label %if.end36.i.if.end45.i_crit_edge, label %if.then38.i

if.end36.i.if.end45.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv40.i = zext i8 %metrics.sroa.15.0.copyload.i to i32
  %mul41.neg.i = mul nsw i32 %conv40.i, -625
  %sub42.i = add nsw i32 %mul41.neg.i, 155000
  %div43.i = sdiv i32 %sub42.i, 100
  %conv44.i = trunc i32 %div43.i to i16
  %voltage_soc.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 36
  %75 = ptrtoint ptr %voltage_soc.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv44.i, ptr %voltage_soc.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then38.i, %if.end36.i.if.end45.i_crit_edge
  %76 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %11, ptr %table, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  br i1 %tobool.not.i, label %if.end.i103, label %if.then.i43

if.then.i43:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  br label %cleanup

if.end.i103:                                      ; preds = %if.else
  %metrics_table.i44 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %77 = ptrtoint ptr %metrics_table.i44 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %metrics_table.i44, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %metrics.sroa.0.0.copyload.i45 = load i16, ptr %78, align 1
  %metrics.sroa.5.0..sroa_idx.i46 = getelementptr inbounds i8, ptr %78, i32 2
  %80 = ptrtoint ptr %metrics.sroa.5.0..sroa_idx.i46 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %metrics.sroa.5.0.copyload.i47 = load i16, ptr %metrics.sroa.5.0..sroa_idx.i46, align 1
  %metrics.sroa.6.0..sroa_idx.i48 = getelementptr inbounds i8, ptr %78, i32 4
  %81 = ptrtoint ptr %metrics.sroa.6.0..sroa_idx.i48 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %metrics.sroa.6.0.copyload.i49 = load i16, ptr %metrics.sroa.6.0..sroa_idx.i48, align 1
  %metrics.sroa.7.0..sroa_idx.i50 = getelementptr inbounds i8, ptr %78, i32 6
  %82 = ptrtoint ptr %metrics.sroa.7.0..sroa_idx.i50 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %metrics.sroa.7.0.copyload.i51 = load i16, ptr %metrics.sroa.7.0..sroa_idx.i50, align 1
  %metrics.sroa.8.0..sroa_idx.i52 = getelementptr inbounds i8, ptr %78, i32 8
  %83 = ptrtoint ptr %metrics.sroa.8.0..sroa_idx.i52 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %metrics.sroa.8.0.copyload.i53 = load i16, ptr %metrics.sroa.8.0..sroa_idx.i52, align 1
  %metrics.sroa.945.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 18
  %84 = ptrtoint ptr %metrics.sroa.945.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %metrics.sroa.945.0.copyload.i = load i16, ptr %metrics.sroa.945.0..sroa_idx.i, align 1
  %metrics.sroa.10.0..sroa_idx.i54 = getelementptr inbounds i8, ptr %78, i32 20
  %85 = ptrtoint ptr %metrics.sroa.10.0..sroa_idx.i54 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %metrics.sroa.10.0.copyload.i55 = load i16, ptr %metrics.sroa.10.0..sroa_idx.i54, align 1
  %metrics.sroa.11.0..sroa_idx.i56 = getelementptr inbounds i8, ptr %78, i32 22
  %86 = ptrtoint ptr %metrics.sroa.11.0..sroa_idx.i56 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %metrics.sroa.11.0.copyload.i57 = load i16, ptr %metrics.sroa.11.0..sroa_idx.i56, align 1
  %metrics.sroa.12.0..sroa_idx.i58 = getelementptr inbounds i8, ptr %78, i32 24
  %87 = ptrtoint ptr %metrics.sroa.12.0..sroa_idx.i58 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %metrics.sroa.12.0.copyload.i59 = load i16, ptr %metrics.sroa.12.0..sroa_idx.i58, align 1
  %metrics.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 26
  %88 = ptrtoint ptr %metrics.sroa.13.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %metrics.sroa.13.0.copyload.i = load i16, ptr %metrics.sroa.13.0..sroa_idx.i, align 1
  %metrics.sroa.14.0..sroa_idx.i60 = getelementptr inbounds i8, ptr %78, i32 28
  %89 = ptrtoint ptr %metrics.sroa.14.0..sroa_idx.i60 to i32
  call void @__asan_load1_noabort(i32 %89)
  %metrics.sroa.14.0.copyload.i61 = load i8, ptr %metrics.sroa.14.0..sroa_idx.i60, align 1
  %metrics.sroa.16.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 29
  %90 = ptrtoint ptr %metrics.sroa.16.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %metrics.sroa.16.0.copyload.i = load i8, ptr %metrics.sroa.16.0..sroa_idx.i, align 1
  %metrics.sroa.18.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 30
  %91 = ptrtoint ptr %metrics.sroa.18.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %metrics.sroa.18.0.copyload.i = load i8, ptr %metrics.sroa.18.0..sroa_idx.i, align 1
  %metrics.sroa.2049.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 32
  %92 = ptrtoint ptr %metrics.sroa.2049.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %metrics.sroa.2049.0.copyload.i = load i16, ptr %metrics.sroa.2049.0..sroa_idx.i, align 1
  %metrics.sroa.21.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 34
  %93 = ptrtoint ptr %metrics.sroa.21.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %metrics.sroa.21.0.copyload.i = load i16, ptr %metrics.sroa.21.0..sroa_idx.i, align 1
  %metrics.sroa.22.0..sroa_idx.i62 = getelementptr inbounds i8, ptr %78, i32 36
  %94 = ptrtoint ptr %metrics.sroa.22.0..sroa_idx.i62 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %metrics.sroa.22.0.copyload.i63 = load i16, ptr %metrics.sroa.22.0..sroa_idx.i62, align 1
  %metrics.sroa.23.0..sroa_idx.i64 = getelementptr inbounds i8, ptr %78, i32 38
  %95 = ptrtoint ptr %metrics.sroa.23.0..sroa_idx.i64 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %metrics.sroa.23.0.copyload.i65 = load i16, ptr %metrics.sroa.23.0..sroa_idx.i64, align 1
  %metrics.sroa.24.0..sroa_idx.i66 = getelementptr inbounds i8, ptr %78, i32 40
  %96 = ptrtoint ptr %metrics.sroa.24.0..sroa_idx.i66 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %metrics.sroa.24.0.copyload.i67 = load i16, ptr %metrics.sroa.24.0..sroa_idx.i66, align 1
  %metrics.sroa.25.0..sroa_idx.i68 = getelementptr inbounds i8, ptr %78, i32 42
  %97 = ptrtoint ptr %metrics.sroa.25.0..sroa_idx.i68 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %metrics.sroa.25.0.copyload.i69 = load i16, ptr %metrics.sroa.25.0..sroa_idx.i68, align 1
  %metrics.sroa.2650.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 46
  %98 = ptrtoint ptr %metrics.sroa.2650.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %metrics.sroa.2650.0.copyload.i = load i16, ptr %metrics.sroa.2650.0..sroa_idx.i, align 1
  %metrics.sroa.2751.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 56
  %99 = ptrtoint ptr %metrics.sroa.2751.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %metrics.sroa.2751.0.copyload.i = load i32, ptr %metrics.sroa.2751.0..sroa_idx.i, align 1
  %metrics.sroa.2953.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 62
  %100 = ptrtoint ptr %metrics.sroa.2953.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %metrics.sroa.2953.0.copyload.i = load i16, ptr %metrics.sroa.2953.0..sroa_idx.i, align 1
  %metrics.sroa.30.0..sroa_idx.i = getelementptr inbounds i8, ptr %78, i32 64
  %101 = ptrtoint ptr %metrics.sroa.30.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %metrics.sroa.30.0.copyload.i = load i32, ptr %metrics.sroa.30.0..sroa_idx.i, align 1
  %metrics.sroa.31.0..sroa_idx.i70 = getelementptr inbounds i8, ptr %78, i32 68
  %102 = ptrtoint ptr %metrics.sroa.31.0..sroa_idx.i70 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %metrics.sroa.31.0.copyload.i71 = load i16, ptr %metrics.sroa.31.0..sroa_idx.i70, align 1
  %metrics.sroa.32.0..sroa_idx.i72 = getelementptr inbounds i8, ptr %78, i32 70
  %103 = ptrtoint ptr %metrics.sroa.32.0..sroa_idx.i72 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %metrics.sroa.32.0.copyload.i73 = load i16, ptr %metrics.sroa.32.0..sroa_idx.i72, align 1
  %metrics.sroa.33.0..sroa_idx.i74 = getelementptr inbounds i8, ptr %78, i32 72
  %104 = ptrtoint ptr %metrics.sroa.33.0..sroa_idx.i74 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %metrics.sroa.33.0.copyload.i75 = load i16, ptr %metrics.sroa.33.0..sroa_idx.i74, align 1
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 3) #13
  %temperature_edge.i76 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 1
  %105 = ptrtoint ptr %temperature_edge.i76 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %metrics.sroa.21.0.copyload.i, ptr %temperature_edge.i76, align 4
  %temperature_hotspot.i77 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 2
  %106 = ptrtoint ptr %temperature_hotspot.i77 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %metrics.sroa.22.0.copyload.i63, ptr %temperature_hotspot.i77, align 2
  %temperature_mem.i78 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 3
  %107 = ptrtoint ptr %temperature_mem.i78 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %metrics.sroa.23.0.copyload.i65, ptr %temperature_mem.i78, align 8
  %temperature_vrgfx.i79 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 4
  %108 = ptrtoint ptr %temperature_vrgfx.i79 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %metrics.sroa.24.0.copyload.i67, ptr %temperature_vrgfx.i79, align 2
  %temperature_vrsoc.i80 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 5
  %109 = ptrtoint ptr %temperature_vrsoc.i80 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %metrics.sroa.2650.0.copyload.i, ptr %temperature_vrsoc.i80, align 4
  %temperature_vrmem.i81 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 6
  %110 = ptrtoint ptr %temperature_vrmem.i81 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %metrics.sroa.25.0.copyload.i69, ptr %temperature_vrmem.i81, align 2
  %average_gfx_activity.i82 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 7
  %111 = ptrtoint ptr %average_gfx_activity.i82 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %metrics.sroa.12.0.copyload.i59, ptr %average_gfx_activity.i82, align 8
  %average_umc_activity.i83 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 8
  %112 = ptrtoint ptr %average_umc_activity.i83 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %metrics.sroa.13.0.copyload.i, ptr %average_umc_activity.i83, align 2
  %average_socket_power.i84 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 10
  %113 = ptrtoint ptr %average_socket_power.i84 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %metrics.sroa.2049.0.copyload.i, ptr %average_socket_power.i84, align 2
  %average_gfxclk_frequency.i = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 13
  %114 = ptrtoint ptr %average_gfxclk_frequency.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %metrics.sroa.945.0.copyload.i, ptr %average_gfxclk_frequency.i, align 8
  %average_socclk_frequency.i85 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 14
  %115 = ptrtoint ptr %average_socclk_frequency.i85 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %metrics.sroa.10.0.copyload.i55, ptr %average_socclk_frequency.i85, align 2
  %average_uclk_frequency.i86 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 15
  %116 = ptrtoint ptr %average_uclk_frequency.i86 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %metrics.sroa.11.0.copyload.i57, ptr %average_uclk_frequency.i86, align 4
  %conv.i = zext i32 %metrics.sroa.30.0.copyload.i to i64
  %energy_accumulator.i87 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 11
  %117 = ptrtoint ptr %energy_accumulator.i87 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv.i, ptr %energy_accumulator.i87, align 8
  %average_vclk0_frequency.i88 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 16
  %118 = ptrtoint ptr %average_vclk0_frequency.i88 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %metrics.sroa.31.0.copyload.i71, ptr %average_vclk0_frequency.i88, align 2
  %average_dclk0_frequency.i89 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 17
  %119 = ptrtoint ptr %average_dclk0_frequency.i89 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %metrics.sroa.32.0.copyload.i73, ptr %average_dclk0_frequency.i89, align 8
  %average_mm_activity.i90 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 9
  %120 = ptrtoint ptr %average_mm_activity.i90 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %metrics.sroa.33.0.copyload.i75, ptr %average_mm_activity.i90, align 4
  %current_gfxclk.i91 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 20
  %121 = ptrtoint ptr %current_gfxclk.i91 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %metrics.sroa.0.0.copyload.i45, ptr %current_gfxclk.i91, align 2
  %current_socclk.i92 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 21
  %122 = ptrtoint ptr %current_socclk.i92 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %metrics.sroa.5.0.copyload.i47, ptr %current_socclk.i92, align 8
  %current_uclk.i93 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 22
  %123 = ptrtoint ptr %current_uclk.i93 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %metrics.sroa.6.0.copyload.i49, ptr %current_uclk.i93, align 2
  %current_vclk0.i94 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 23
  %124 = ptrtoint ptr %current_vclk0.i94 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %metrics.sroa.8.0.copyload.i53, ptr %current_vclk0.i94, align 4
  %current_dclk0.i95 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 24
  %125 = ptrtoint ptr %current_dclk0.i95 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %metrics.sroa.7.0.copyload.i51, ptr %current_dclk0.i95, align 2
  %throttle_status.i96 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 27
  %126 = ptrtoint ptr %throttle_status.i96 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %metrics.sroa.2751.0.copyload.i, ptr %throttle_status.i96, align 4
  %call13.i = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %metrics.sroa.2751.0.copyload.i, ptr noundef nonnull @navi1x_throttler_map) #13
  %indep_throttle_status.i97 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 40
  %127 = ptrtoint ptr %indep_throttle_status.i97 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %call13.i, ptr %indep_throttle_status.i97, align 8
  %current_fan_speed.i98 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 28
  %128 = ptrtoint ptr %current_fan_speed.i98 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %metrics.sroa.2953.0.copyload.i, ptr %current_fan_speed.i98, align 8
  %call14.i = call zeroext i16 @smu_v11_0_get_current_pcie_link_width(ptr noundef %smu) #13
  %pcie_link_width.i99 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 29
  %129 = ptrtoint ptr %pcie_link_width.i99 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %call14.i, ptr %pcie_link_width.i99, align 2
  %call15.i = call zeroext i16 @smu_v11_0_get_current_pcie_link_speed(ptr noundef %smu) #13
  %pcie_link_speed.i100 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 30
  %130 = ptrtoint ptr %pcie_link_speed.i100 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %call15.i, ptr %pcie_link_speed.i100, align 4
  %call.i.i.i101 = call i64 @ktime_get_with_offset(i32 noundef 1) #13
  %system_clock_counter.i102 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 12
  %131 = ptrtoint ptr %system_clock_counter.i102 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %call.i.i.i101, ptr %system_clock_counter.i102, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.16.0.copyload.i)
  %tobool17.not.i = icmp eq i8 %metrics.sroa.16.0.copyload.i, 0
  br i1 %tobool17.not.i, label %if.end.i103.if.end22.i_crit_edge, label %if.then18.i

if.end.i103.if.end22.i_crit_edge:                 ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #15
  %conv20.i = zext i8 %metrics.sroa.16.0.copyload.i to i32
  %mul.neg.i104 = mul nsw i32 %conv20.i, -625
  %sub.i105 = add nsw i32 %mul.neg.i104, 155000
  %div.i106 = sdiv i32 %sub.i105, 100
  %conv21.i = trunc i32 %div.i106 to i16
  %voltage_gfx.i107 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 37
  %132 = ptrtoint ptr %voltage_gfx.i107 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv21.i, ptr %voltage_gfx.i107, align 2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end.i103.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.18.0.copyload.i)
  %tobool23.not.i = icmp eq i8 %metrics.sroa.18.0.copyload.i, 0
  br i1 %tobool23.not.i, label %if.end22.i.if.end31.i_crit_edge, label %if.then24.i

if.end22.i.if.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv26.i108 = zext i8 %metrics.sroa.18.0.copyload.i to i32
  %mul27.neg.i = mul nsw i32 %conv26.i108, -625
  %sub28.i = add nsw i32 %mul27.neg.i, 155000
  %div29.i = sdiv i32 %sub28.i, 100
  %conv30.i = trunc i32 %div29.i to i16
  %voltage_mem.i109 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 38
  %133 = ptrtoint ptr %voltage_mem.i109 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv30.i, ptr %voltage_mem.i109, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.14.0.copyload.i61)
  %tobool32.not.i = icmp eq i8 %metrics.sroa.14.0.copyload.i61, 0
  br i1 %tobool32.not.i, label %if.end31.i.if.end40.i_crit_edge, label %if.then33.i

if.end31.i.if.end40.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv35.i110 = zext i8 %metrics.sroa.14.0.copyload.i61 to i32
  %mul36.neg.i = mul nsw i32 %conv35.i110, -625
  %sub37.i = add nsw i32 %mul36.neg.i, 155000
  %div38.i = sdiv i32 %sub37.i, 100
  %conv39.i = trunc i32 %div38.i to i16
  %voltage_soc.i111 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %11, i32 0, i32 36
  %134 = ptrtoint ptr %voltage_soc.i111 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv39.i, ptr %voltage_soc.i111, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then33.i, %if.end31.i.if.end40.i_crit_edge
  %135 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %11, ptr %table, align 4
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %136 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3481344, i32 %137)
  %cmp12 = icmp ugt i32 %137, 3481344
  br i1 %cmp12, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.if.else21_crit_edge

land.lhs.true.if.else21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

land.lhs.true17:                                  ; preds = %if.end
  %138 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2767616, i32 %139)
  %cmp18 = icmp ugt i32 %139, 2767616
  br i1 %cmp18, label %land.lhs.true17.if.then19_crit_edge, label %land.lhs.true17.if.else21_crit_edge

land.lhs.true17.if.else21_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

land.lhs.true17.if.then19_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true17.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %gpu_metrics_table.i113 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %140 = ptrtoint ptr %gpu_metrics_table.i113 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %gpu_metrics_table.i113, align 4
  %metrics_lock.i114 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %metrics_lock.i114, i32 noundef 0) #13
  %call.i115 = call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %if.end.i196, label %if.then.i117

if.then.i117:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %metrics_lock.i114) #13
  br label %cleanup

if.end.i196:                                      ; preds = %if.then19
  %metrics_table.i118 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %142 = ptrtoint ptr %metrics_table.i118 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %metrics_table.i118, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %metrics.sroa.0.0.copyload.i119 = load i16, ptr %143, align 1
  %metrics.sroa.5.0..sroa_idx.i120 = getelementptr inbounds i8, ptr %143, i32 2
  %145 = ptrtoint ptr %metrics.sroa.5.0..sroa_idx.i120 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %metrics.sroa.5.0.copyload.i121 = load i16, ptr %metrics.sroa.5.0..sroa_idx.i120, align 1
  %metrics.sroa.6.0..sroa_idx.i122 = getelementptr inbounds i8, ptr %143, i32 4
  %146 = ptrtoint ptr %metrics.sroa.6.0..sroa_idx.i122 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %metrics.sroa.6.0.copyload.i123 = load i16, ptr %metrics.sroa.6.0..sroa_idx.i122, align 1
  %metrics.sroa.7.0..sroa_idx.i124 = getelementptr inbounds i8, ptr %143, i32 6
  %147 = ptrtoint ptr %metrics.sroa.7.0..sroa_idx.i124 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %metrics.sroa.7.0.copyload.i125 = load i16, ptr %metrics.sroa.7.0..sroa_idx.i124, align 1
  %metrics.sroa.8.0..sroa_idx.i126 = getelementptr inbounds i8, ptr %143, i32 8
  %148 = ptrtoint ptr %metrics.sroa.8.0..sroa_idx.i126 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %metrics.sroa.8.0.copyload.i127 = load i16, ptr %metrics.sroa.8.0..sroa_idx.i126, align 1
  %metrics.sroa.950.0..sroa_idx.i128 = getelementptr inbounds i8, ptr %143, i32 18
  %149 = ptrtoint ptr %metrics.sroa.950.0..sroa_idx.i128 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %metrics.sroa.950.0.copyload.i129 = load i16, ptr %metrics.sroa.950.0..sroa_idx.i128, align 1
  %metrics.sroa.10.0..sroa_idx.i130 = getelementptr inbounds i8, ptr %143, i32 20
  %150 = ptrtoint ptr %metrics.sroa.10.0..sroa_idx.i130 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %metrics.sroa.10.0.copyload.i131 = load i16, ptr %metrics.sroa.10.0..sroa_idx.i130, align 1
  %metrics.sroa.11.0..sroa_idx.i132 = getelementptr inbounds i8, ptr %143, i32 22
  %151 = ptrtoint ptr %metrics.sroa.11.0..sroa_idx.i132 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %metrics.sroa.11.0.copyload.i133 = load i16, ptr %metrics.sroa.11.0..sroa_idx.i132, align 1
  %metrics.sroa.12.0..sroa_idx.i134 = getelementptr inbounds i8, ptr %143, i32 24
  %152 = ptrtoint ptr %metrics.sroa.12.0..sroa_idx.i134 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %metrics.sroa.12.0.copyload.i135 = load i16, ptr %metrics.sroa.12.0..sroa_idx.i134, align 1
  %metrics.sroa.14.0..sroa_idx.i136 = getelementptr inbounds i8, ptr %143, i32 26
  %153 = ptrtoint ptr %metrics.sroa.14.0..sroa_idx.i136 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %metrics.sroa.14.0.copyload.i137 = load i16, ptr %metrics.sroa.14.0..sroa_idx.i136, align 1
  %metrics.sroa.15.0..sroa_idx.i138 = getelementptr inbounds i8, ptr %143, i32 28
  %154 = ptrtoint ptr %metrics.sroa.15.0..sroa_idx.i138 to i32
  call void @__asan_load1_noabort(i32 %154)
  %metrics.sroa.15.0.copyload.i139 = load i8, ptr %metrics.sroa.15.0..sroa_idx.i138, align 1
  %metrics.sroa.17.0..sroa_idx.i140 = getelementptr inbounds i8, ptr %143, i32 29
  %155 = ptrtoint ptr %metrics.sroa.17.0..sroa_idx.i140 to i32
  call void @__asan_load1_noabort(i32 %155)
  %metrics.sroa.17.0.copyload.i141 = load i8, ptr %metrics.sroa.17.0..sroa_idx.i140, align 1
  %metrics.sroa.19.0..sroa_idx.i142 = getelementptr inbounds i8, ptr %143, i32 30
  %156 = ptrtoint ptr %metrics.sroa.19.0..sroa_idx.i142 to i32
  call void @__asan_load1_noabort(i32 %156)
  %metrics.sroa.19.0.copyload.i143 = load i8, ptr %metrics.sroa.19.0..sroa_idx.i142, align 1
  %metrics.sroa.2155.0..sroa_idx.i144 = getelementptr inbounds i8, ptr %143, i32 32
  %157 = ptrtoint ptr %metrics.sroa.2155.0..sroa_idx.i144 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %metrics.sroa.2155.0.copyload.i145 = load i16, ptr %metrics.sroa.2155.0..sroa_idx.i144, align 1
  %metrics.sroa.22.0..sroa_idx.i146 = getelementptr inbounds i8, ptr %143, i32 34
  %158 = ptrtoint ptr %metrics.sroa.22.0..sroa_idx.i146 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %metrics.sroa.22.0.copyload.i147 = load i16, ptr %metrics.sroa.22.0..sroa_idx.i146, align 1
  %metrics.sroa.23.0..sroa_idx.i148 = getelementptr inbounds i8, ptr %143, i32 36
  %159 = ptrtoint ptr %metrics.sroa.23.0..sroa_idx.i148 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %metrics.sroa.23.0.copyload.i149 = load i16, ptr %metrics.sroa.23.0..sroa_idx.i148, align 1
  %metrics.sroa.24.0..sroa_idx.i150 = getelementptr inbounds i8, ptr %143, i32 38
  %160 = ptrtoint ptr %metrics.sroa.24.0..sroa_idx.i150 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %metrics.sroa.24.0.copyload.i151 = load i16, ptr %metrics.sroa.24.0..sroa_idx.i150, align 1
  %metrics.sroa.25.0..sroa_idx.i152 = getelementptr inbounds i8, ptr %143, i32 40
  %161 = ptrtoint ptr %metrics.sroa.25.0..sroa_idx.i152 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %metrics.sroa.25.0.copyload.i153 = load i16, ptr %metrics.sroa.25.0..sroa_idx.i152, align 1
  %metrics.sroa.26.0..sroa_idx.i154 = getelementptr inbounds i8, ptr %143, i32 42
  %162 = ptrtoint ptr %metrics.sroa.26.0..sroa_idx.i154 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 2)
  %metrics.sroa.26.0.copyload.i155 = load i16, ptr %metrics.sroa.26.0..sroa_idx.i154, align 1
  %metrics.sroa.2756.0..sroa_idx.i156 = getelementptr inbounds i8, ptr %143, i32 46
  %163 = ptrtoint ptr %metrics.sroa.2756.0..sroa_idx.i156 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %metrics.sroa.2756.0.copyload.i157 = load i16, ptr %metrics.sroa.2756.0..sroa_idx.i156, align 1
  %metrics.sroa.2857.0..sroa_idx.i158 = getelementptr inbounds i8, ptr %143, i32 56
  %164 = ptrtoint ptr %metrics.sroa.2857.0..sroa_idx.i158 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %metrics.sroa.2857.0.copyload.i159 = load i32, ptr %metrics.sroa.2857.0..sroa_idx.i158, align 1
  %metrics.sroa.3059.0..sroa_idx.i160 = getelementptr inbounds i8, ptr %143, i32 62
  %165 = ptrtoint ptr %metrics.sroa.3059.0..sroa_idx.i160 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %metrics.sroa.3059.0.copyload.i161 = load i16, ptr %metrics.sroa.3059.0..sroa_idx.i160, align 1
  %metrics.sroa.31.0..sroa_idx.i162 = getelementptr inbounds i8, ptr %143, i32 64
  %166 = ptrtoint ptr %metrics.sroa.31.0..sroa_idx.i162 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %metrics.sroa.31.0.copyload.i163 = load i16, ptr %metrics.sroa.31.0..sroa_idx.i162, align 1
  %metrics.sroa.3260.0..sroa_idx.i = getelementptr inbounds i8, ptr %143, i32 68
  %167 = ptrtoint ptr %metrics.sroa.3260.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %metrics.sroa.3260.0.copyload.i = load i8, ptr %metrics.sroa.3260.0..sroa_idx.i, align 1
  %metrics.sroa.33.0..sroa_idx.i164 = getelementptr inbounds i8, ptr %143, i32 69
  %168 = ptrtoint ptr %metrics.sroa.33.0..sroa_idx.i164 to i32
  call void @__asan_load1_noabort(i32 %168)
  %metrics.sroa.33.0.copyload.i165 = load i8, ptr %metrics.sroa.33.0..sroa_idx.i164, align 1
  call void @mutex_unlock(ptr noundef %metrics_lock.i114) #13
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %141, i8 noundef zeroext 1, i8 noundef zeroext 3) #13
  %temperature_edge.i166 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 1
  %169 = ptrtoint ptr %temperature_edge.i166 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %metrics.sroa.22.0.copyload.i147, ptr %temperature_edge.i166, align 4
  %temperature_hotspot.i167 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 2
  %170 = ptrtoint ptr %temperature_hotspot.i167 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %metrics.sroa.23.0.copyload.i149, ptr %temperature_hotspot.i167, align 2
  %temperature_mem.i168 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 3
  %171 = ptrtoint ptr %temperature_mem.i168 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %metrics.sroa.24.0.copyload.i151, ptr %temperature_mem.i168, align 8
  %temperature_vrgfx.i169 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 4
  %172 = ptrtoint ptr %temperature_vrgfx.i169 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %metrics.sroa.25.0.copyload.i153, ptr %temperature_vrgfx.i169, align 2
  %temperature_vrsoc.i170 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 5
  %173 = ptrtoint ptr %temperature_vrsoc.i170 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %metrics.sroa.2756.0.copyload.i157, ptr %temperature_vrsoc.i170, align 4
  %temperature_vrmem.i171 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 6
  %174 = ptrtoint ptr %temperature_vrmem.i171 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %metrics.sroa.26.0.copyload.i155, ptr %temperature_vrmem.i171, align 2
  %average_gfx_activity.i172 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 7
  %175 = ptrtoint ptr %average_gfx_activity.i172 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %metrics.sroa.12.0.copyload.i135, ptr %average_gfx_activity.i172, align 8
  %average_umc_activity.i173 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 8
  %176 = ptrtoint ptr %average_umc_activity.i173 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %metrics.sroa.14.0.copyload.i137, ptr %average_umc_activity.i173, align 2
  %average_socket_power.i174 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 10
  %177 = ptrtoint ptr %average_socket_power.i174 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %metrics.sroa.2155.0.copyload.i145, ptr %average_socket_power.i174, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %metrics.sroa.12.0.copyload.i135)
  %cmp.i175 = icmp ugt i16 %metrics.sroa.12.0.copyload.i135, 15
  %spec.select.i176 = select i1 %cmp.i175, i16 %metrics.sroa.31.0.copyload.i163, i16 %metrics.sroa.950.0.copyload.i129
  %178 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 13
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %spec.select.i176, ptr %178, align 8
  %average_socclk_frequency.i177 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 14
  %180 = ptrtoint ptr %average_socclk_frequency.i177 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %metrics.sroa.10.0.copyload.i131, ptr %average_socclk_frequency.i177, align 2
  %average_uclk_frequency.i178 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 15
  %181 = ptrtoint ptr %average_uclk_frequency.i178 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %metrics.sroa.11.0.copyload.i133, ptr %average_uclk_frequency.i178, align 4
  %current_gfxclk.i179 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 20
  %182 = ptrtoint ptr %current_gfxclk.i179 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %metrics.sroa.0.0.copyload.i119, ptr %current_gfxclk.i179, align 2
  %current_socclk.i180 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 21
  %183 = ptrtoint ptr %current_socclk.i180 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %metrics.sroa.5.0.copyload.i121, ptr %current_socclk.i180, align 8
  %current_uclk.i181 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 22
  %184 = ptrtoint ptr %current_uclk.i181 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %metrics.sroa.6.0.copyload.i123, ptr %current_uclk.i181, align 2
  %current_vclk0.i182 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 23
  %185 = ptrtoint ptr %current_vclk0.i182 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %metrics.sroa.8.0.copyload.i127, ptr %current_vclk0.i182, align 4
  %current_dclk0.i183 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 24
  %186 = ptrtoint ptr %current_dclk0.i183 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %metrics.sroa.7.0.copyload.i125, ptr %current_dclk0.i183, align 2
  %throttle_status.i184 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 27
  %187 = ptrtoint ptr %throttle_status.i184 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %metrics.sroa.2857.0.copyload.i159, ptr %throttle_status.i184, align 4
  %call18.i185 = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %metrics.sroa.2857.0.copyload.i159, ptr noundef nonnull @navi1x_throttler_map) #13
  %indep_throttle_status.i186 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 40
  %188 = ptrtoint ptr %indep_throttle_status.i186 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %call18.i185, ptr %indep_throttle_status.i186, align 8
  %current_fan_speed.i187 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 28
  %189 = ptrtoint ptr %current_fan_speed.i187 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %metrics.sroa.3059.0.copyload.i161, ptr %current_fan_speed.i187, align 8
  %conv19.i188 = zext i8 %metrics.sroa.33.0.copyload.i165 to i16
  %pcie_link_width.i189 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 29
  %190 = ptrtoint ptr %pcie_link_width.i189 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv19.i188, ptr %pcie_link_width.i189, align 2
  %idxprom.i190 = zext i8 %metrics.sroa.3260.0.copyload.i to i32
  %arrayidx20.i191 = getelementptr [4 x i16], ptr @link_speed, i32 0, i32 %idxprom.i190
  %191 = ptrtoint ptr %arrayidx20.i191 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %arrayidx20.i191, align 2
  %pcie_link_speed.i192 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 30
  %193 = ptrtoint ptr %pcie_link_speed.i192 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %pcie_link_speed.i192, align 4
  %call.i.i.i193 = call i64 @ktime_get_with_offset(i32 noundef 1) #13
  %system_clock_counter.i194 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 12
  %194 = ptrtoint ptr %system_clock_counter.i194 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %call.i.i.i193, ptr %system_clock_counter.i194, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.17.0.copyload.i141)
  %tobool22.not.i195 = icmp eq i8 %metrics.sroa.17.0.copyload.i141, 0
  br i1 %tobool22.not.i195, label %if.end.i196.if.end27.i205_crit_edge, label %if.then23.i203

if.end.i196.if.end27.i205_crit_edge:              ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i205

if.then23.i203:                                   ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #15
  %conv25.i197 = zext i8 %metrics.sroa.17.0.copyload.i141 to i32
  %mul.neg.i198 = mul nsw i32 %conv25.i197, -625
  %sub.i199 = add nsw i32 %mul.neg.i198, 155000
  %div.i200 = sdiv i32 %sub.i199, 100
  %conv26.i201 = trunc i32 %div.i200 to i16
  %voltage_gfx.i202 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 37
  %195 = ptrtoint ptr %voltage_gfx.i202 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv26.i201, ptr %voltage_gfx.i202, align 2
  br label %if.end27.i205

if.end27.i205:                                    ; preds = %if.then23.i203, %if.end.i196.if.end27.i205_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.19.0.copyload.i143)
  %tobool28.not.i204 = icmp eq i8 %metrics.sroa.19.0.copyload.i143, 0
  br i1 %tobool28.not.i204, label %if.end27.i205.if.end36.i214_crit_edge, label %if.then29.i212

if.end27.i205.if.end36.i214_crit_edge:            ; preds = %if.end27.i205
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i214

if.then29.i212:                                   ; preds = %if.end27.i205
  call void @__sanitizer_cov_trace_pc() #15
  %conv31.i206 = zext i8 %metrics.sroa.19.0.copyload.i143 to i32
  %mul32.neg.i207 = mul nsw i32 %conv31.i206, -625
  %sub33.i208 = add nsw i32 %mul32.neg.i207, 155000
  %div34.i209 = sdiv i32 %sub33.i208, 100
  %conv35.i210 = trunc i32 %div34.i209 to i16
  %voltage_mem.i211 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 38
  %196 = ptrtoint ptr %voltage_mem.i211 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv35.i210, ptr %voltage_mem.i211, align 4
  br label %if.end36.i214

if.end36.i214:                                    ; preds = %if.then29.i212, %if.end27.i205.if.end36.i214_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.15.0.copyload.i139)
  %tobool37.not.i213 = icmp eq i8 %metrics.sroa.15.0.copyload.i139, 0
  br i1 %tobool37.not.i213, label %if.end36.i214.if.end45.i222_crit_edge, label %if.then38.i221

if.end36.i214.if.end45.i222_crit_edge:            ; preds = %if.end36.i214
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i222

if.then38.i221:                                   ; preds = %if.end36.i214
  call void @__sanitizer_cov_trace_pc() #15
  %conv40.i215 = zext i8 %metrics.sroa.15.0.copyload.i139 to i32
  %mul41.neg.i216 = mul nsw i32 %conv40.i215, -625
  %sub42.i217 = add nsw i32 %mul41.neg.i216, 155000
  %div43.i218 = sdiv i32 %sub42.i217, 100
  %conv44.i219 = trunc i32 %div43.i218 to i16
  %voltage_soc.i220 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %141, i32 0, i32 36
  %197 = ptrtoint ptr %voltage_soc.i220 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv44.i219, ptr %voltage_soc.i220, align 8
  br label %if.end45.i222

if.end45.i222:                                    ; preds = %if.then38.i221, %if.end36.i214.if.end45.i222_crit_edge
  %198 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %141, ptr %table, align 4
  br label %cleanup

if.else21:                                        ; preds = %land.lhs.true17.if.else21_crit_edge, %land.lhs.true.if.else21_crit_edge, %if.end.if.else21_crit_edge
  %gpu_metrics_table.i224 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %199 = ptrtoint ptr %gpu_metrics_table.i224 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %gpu_metrics_table.i224, align 4
  %metrics_lock.i225 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %metrics_lock.i225, i32 noundef 0) #13
  %call.i226 = call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool.not.i227 = icmp eq i32 %call.i226, 0
  br i1 %tobool.not.i227, label %if.end.i291, label %if.then.i228

if.then.i228:                                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %metrics_lock.i225) #13
  br label %cleanup

if.end.i291:                                      ; preds = %if.else21
  %metrics_table.i229 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %201 = ptrtoint ptr %metrics_table.i229 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %metrics_table.i229, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 2)
  %metrics.sroa.0.0.copyload.i230 = load i16, ptr %202, align 1
  %metrics.sroa.5.0..sroa_idx.i231 = getelementptr inbounds i8, ptr %202, i32 2
  %204 = ptrtoint ptr %metrics.sroa.5.0..sroa_idx.i231 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %metrics.sroa.5.0.copyload.i232 = load i16, ptr %metrics.sroa.5.0..sroa_idx.i231, align 1
  %metrics.sroa.6.0..sroa_idx.i233 = getelementptr inbounds i8, ptr %202, i32 4
  %205 = ptrtoint ptr %metrics.sroa.6.0..sroa_idx.i233 to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %metrics.sroa.6.0.copyload.i234 = load i16, ptr %metrics.sroa.6.0..sroa_idx.i233, align 1
  %metrics.sroa.7.0..sroa_idx.i235 = getelementptr inbounds i8, ptr %202, i32 6
  %206 = ptrtoint ptr %metrics.sroa.7.0..sroa_idx.i235 to i32
  call void @__asan_loadN_noabort(i32 %206, i32 2)
  %metrics.sroa.7.0.copyload.i236 = load i16, ptr %metrics.sroa.7.0..sroa_idx.i235, align 1
  %metrics.sroa.8.0..sroa_idx.i237 = getelementptr inbounds i8, ptr %202, i32 8
  %207 = ptrtoint ptr %metrics.sroa.8.0..sroa_idx.i237 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 2)
  %metrics.sroa.8.0.copyload.i238 = load i16, ptr %metrics.sroa.8.0..sroa_idx.i237, align 1
  %metrics.sroa.944.0..sroa_idx.i = getelementptr inbounds i8, ptr %202, i32 18
  %208 = ptrtoint ptr %metrics.sroa.944.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 2)
  %metrics.sroa.944.0.copyload.i = load i16, ptr %metrics.sroa.944.0..sroa_idx.i, align 1
  %metrics.sroa.10.0..sroa_idx.i239 = getelementptr inbounds i8, ptr %202, i32 20
  %209 = ptrtoint ptr %metrics.sroa.10.0..sroa_idx.i239 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 2)
  %metrics.sroa.10.0.copyload.i240 = load i16, ptr %metrics.sroa.10.0..sroa_idx.i239, align 1
  %metrics.sroa.11.0..sroa_idx.i241 = getelementptr inbounds i8, ptr %202, i32 22
  %210 = ptrtoint ptr %metrics.sroa.11.0..sroa_idx.i241 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %metrics.sroa.11.0.copyload.i242 = load i16, ptr %metrics.sroa.11.0..sroa_idx.i241, align 1
  %metrics.sroa.12.0..sroa_idx.i243 = getelementptr inbounds i8, ptr %202, i32 24
  %211 = ptrtoint ptr %metrics.sroa.12.0..sroa_idx.i243 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 2)
  %metrics.sroa.12.0.copyload.i244 = load i16, ptr %metrics.sroa.12.0..sroa_idx.i243, align 1
  %metrics.sroa.13.0..sroa_idx.i245 = getelementptr inbounds i8, ptr %202, i32 26
  %212 = ptrtoint ptr %metrics.sroa.13.0..sroa_idx.i245 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 2)
  %metrics.sroa.13.0.copyload.i246 = load i16, ptr %metrics.sroa.13.0..sroa_idx.i245, align 1
  %metrics.sroa.14.0..sroa_idx.i247 = getelementptr inbounds i8, ptr %202, i32 28
  %213 = ptrtoint ptr %metrics.sroa.14.0..sroa_idx.i247 to i32
  call void @__asan_load1_noabort(i32 %213)
  %metrics.sroa.14.0.copyload.i248 = load i8, ptr %metrics.sroa.14.0..sroa_idx.i247, align 1
  %metrics.sroa.16.0..sroa_idx.i249 = getelementptr inbounds i8, ptr %202, i32 29
  %214 = ptrtoint ptr %metrics.sroa.16.0..sroa_idx.i249 to i32
  call void @__asan_load1_noabort(i32 %214)
  %metrics.sroa.16.0.copyload.i250 = load i8, ptr %metrics.sroa.16.0..sroa_idx.i249, align 1
  %metrics.sroa.18.0..sroa_idx.i251 = getelementptr inbounds i8, ptr %202, i32 30
  %215 = ptrtoint ptr %metrics.sroa.18.0..sroa_idx.i251 to i32
  call void @__asan_load1_noabort(i32 %215)
  %metrics.sroa.18.0.copyload.i252 = load i8, ptr %metrics.sroa.18.0..sroa_idx.i251, align 1
  %metrics.sroa.2048.0..sroa_idx.i = getelementptr inbounds i8, ptr %202, i32 32
  %216 = ptrtoint ptr %metrics.sroa.2048.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %metrics.sroa.2048.0.copyload.i = load i16, ptr %metrics.sroa.2048.0..sroa_idx.i, align 1
  %metrics.sroa.21.0..sroa_idx.i253 = getelementptr inbounds i8, ptr %202, i32 34
  %217 = ptrtoint ptr %metrics.sroa.21.0..sroa_idx.i253 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 2)
  %metrics.sroa.21.0.copyload.i254 = load i16, ptr %metrics.sroa.21.0..sroa_idx.i253, align 1
  %metrics.sroa.22.0..sroa_idx.i255 = getelementptr inbounds i8, ptr %202, i32 36
  %218 = ptrtoint ptr %metrics.sroa.22.0..sroa_idx.i255 to i32
  call void @__asan_loadN_noabort(i32 %218, i32 2)
  %metrics.sroa.22.0.copyload.i256 = load i16, ptr %metrics.sroa.22.0..sroa_idx.i255, align 1
  %metrics.sroa.23.0..sroa_idx.i257 = getelementptr inbounds i8, ptr %202, i32 38
  %219 = ptrtoint ptr %metrics.sroa.23.0..sroa_idx.i257 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 2)
  %metrics.sroa.23.0.copyload.i258 = load i16, ptr %metrics.sroa.23.0..sroa_idx.i257, align 1
  %metrics.sroa.24.0..sroa_idx.i259 = getelementptr inbounds i8, ptr %202, i32 40
  %220 = ptrtoint ptr %metrics.sroa.24.0..sroa_idx.i259 to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %metrics.sroa.24.0.copyload.i260 = load i16, ptr %metrics.sroa.24.0..sroa_idx.i259, align 1
  %metrics.sroa.25.0..sroa_idx.i261 = getelementptr inbounds i8, ptr %202, i32 42
  %221 = ptrtoint ptr %metrics.sroa.25.0..sroa_idx.i261 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 2)
  %metrics.sroa.25.0.copyload.i262 = load i16, ptr %metrics.sroa.25.0..sroa_idx.i261, align 1
  %metrics.sroa.2649.0..sroa_idx.i = getelementptr inbounds i8, ptr %202, i32 46
  %222 = ptrtoint ptr %metrics.sroa.2649.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %222, i32 2)
  %metrics.sroa.2649.0.copyload.i = load i16, ptr %metrics.sroa.2649.0..sroa_idx.i, align 1
  %metrics.sroa.2750.0..sroa_idx.i = getelementptr inbounds i8, ptr %202, i32 56
  %223 = ptrtoint ptr %metrics.sroa.2750.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %223, i32 4)
  %metrics.sroa.2750.0.copyload.i = load i32, ptr %metrics.sroa.2750.0..sroa_idx.i, align 1
  %metrics.sroa.2952.0..sroa_idx.i = getelementptr inbounds i8, ptr %202, i32 62
  %224 = ptrtoint ptr %metrics.sroa.2952.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 2)
  %metrics.sroa.2952.0.copyload.i = load i16, ptr %metrics.sroa.2952.0..sroa_idx.i, align 1
  call void @mutex_unlock(ptr noundef %metrics_lock.i225) #13
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %200, i8 noundef zeroext 1, i8 noundef zeroext 3) #13
  %temperature_edge.i263 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 1
  %225 = ptrtoint ptr %temperature_edge.i263 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %metrics.sroa.21.0.copyload.i254, ptr %temperature_edge.i263, align 4
  %temperature_hotspot.i264 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 2
  %226 = ptrtoint ptr %temperature_hotspot.i264 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %metrics.sroa.22.0.copyload.i256, ptr %temperature_hotspot.i264, align 2
  %temperature_mem.i265 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 3
  %227 = ptrtoint ptr %temperature_mem.i265 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %metrics.sroa.23.0.copyload.i258, ptr %temperature_mem.i265, align 8
  %temperature_vrgfx.i266 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 4
  %228 = ptrtoint ptr %temperature_vrgfx.i266 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %metrics.sroa.24.0.copyload.i260, ptr %temperature_vrgfx.i266, align 2
  %temperature_vrsoc.i267 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 5
  %229 = ptrtoint ptr %temperature_vrsoc.i267 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %metrics.sroa.2649.0.copyload.i, ptr %temperature_vrsoc.i267, align 4
  %temperature_vrmem.i268 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 6
  %230 = ptrtoint ptr %temperature_vrmem.i268 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %metrics.sroa.25.0.copyload.i262, ptr %temperature_vrmem.i268, align 2
  %average_gfx_activity.i269 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 7
  %231 = ptrtoint ptr %average_gfx_activity.i269 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %metrics.sroa.12.0.copyload.i244, ptr %average_gfx_activity.i269, align 8
  %average_umc_activity.i270 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 8
  %232 = ptrtoint ptr %average_umc_activity.i270 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %metrics.sroa.13.0.copyload.i246, ptr %average_umc_activity.i270, align 2
  %average_socket_power.i271 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 10
  %233 = ptrtoint ptr %average_socket_power.i271 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %metrics.sroa.2048.0.copyload.i, ptr %average_socket_power.i271, align 2
  %average_gfxclk_frequency.i272 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 13
  %234 = ptrtoint ptr %average_gfxclk_frequency.i272 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %metrics.sroa.944.0.copyload.i, ptr %average_gfxclk_frequency.i272, align 8
  %average_socclk_frequency.i273 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 14
  %235 = ptrtoint ptr %average_socclk_frequency.i273 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %metrics.sroa.10.0.copyload.i240, ptr %average_socclk_frequency.i273, align 2
  %average_uclk_frequency.i274 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 15
  %236 = ptrtoint ptr %average_uclk_frequency.i274 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %metrics.sroa.11.0.copyload.i242, ptr %average_uclk_frequency.i274, align 4
  %current_gfxclk.i275 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 20
  %237 = ptrtoint ptr %current_gfxclk.i275 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %metrics.sroa.0.0.copyload.i230, ptr %current_gfxclk.i275, align 2
  %current_socclk.i276 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 21
  %238 = ptrtoint ptr %current_socclk.i276 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %metrics.sroa.5.0.copyload.i232, ptr %current_socclk.i276, align 8
  %current_uclk.i277 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 22
  %239 = ptrtoint ptr %current_uclk.i277 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %metrics.sroa.6.0.copyload.i234, ptr %current_uclk.i277, align 2
  %current_vclk0.i278 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 23
  %240 = ptrtoint ptr %current_vclk0.i278 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %metrics.sroa.8.0.copyload.i238, ptr %current_vclk0.i278, align 4
  %current_dclk0.i279 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 24
  %241 = ptrtoint ptr %current_dclk0.i279 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %metrics.sroa.7.0.copyload.i236, ptr %current_dclk0.i279, align 2
  %throttle_status.i280 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 27
  %242 = ptrtoint ptr %throttle_status.i280 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %metrics.sroa.2750.0.copyload.i, ptr %throttle_status.i280, align 4
  %call13.i281 = call i64 @smu_cmn_get_indep_throttler_status(i32 noundef %metrics.sroa.2750.0.copyload.i, ptr noundef nonnull @navi1x_throttler_map) #13
  %indep_throttle_status.i282 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 40
  %243 = ptrtoint ptr %indep_throttle_status.i282 to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %call13.i281, ptr %indep_throttle_status.i282, align 8
  %current_fan_speed.i283 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 28
  %244 = ptrtoint ptr %current_fan_speed.i283 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %metrics.sroa.2952.0.copyload.i, ptr %current_fan_speed.i283, align 8
  %call14.i284 = call zeroext i16 @smu_v11_0_get_current_pcie_link_width(ptr noundef %smu) #13
  %pcie_link_width.i285 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 29
  %245 = ptrtoint ptr %pcie_link_width.i285 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %call14.i284, ptr %pcie_link_width.i285, align 2
  %call15.i286 = call zeroext i16 @smu_v11_0_get_current_pcie_link_speed(ptr noundef %smu) #13
  %pcie_link_speed.i287 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 30
  %246 = ptrtoint ptr %pcie_link_speed.i287 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %call15.i286, ptr %pcie_link_speed.i287, align 4
  %call.i.i.i288 = call i64 @ktime_get_with_offset(i32 noundef 1) #13
  %system_clock_counter.i289 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 12
  %247 = ptrtoint ptr %system_clock_counter.i289 to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 %call.i.i.i288, ptr %system_clock_counter.i289, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.16.0.copyload.i250)
  %tobool17.not.i290 = icmp eq i8 %metrics.sroa.16.0.copyload.i250, 0
  br i1 %tobool17.not.i290, label %if.end.i291.if.end21.i_crit_edge, label %if.then18.i298

if.end.i291.if.end21.i_crit_edge:                 ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then18.i298:                                   ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i292 = zext i8 %metrics.sroa.16.0.copyload.i250 to i32
  %mul.neg.i293 = mul nsw i32 %conv.i292, -625
  %sub.i294 = add nsw i32 %mul.neg.i293, 155000
  %div.i295 = sdiv i32 %sub.i294, 100
  %conv20.i296 = trunc i32 %div.i295 to i16
  %voltage_gfx.i297 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 37
  %248 = ptrtoint ptr %voltage_gfx.i297 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %conv20.i296, ptr %voltage_gfx.i297, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i298, %if.end.i291.if.end21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.18.0.copyload.i252)
  %tobool22.not.i299 = icmp eq i8 %metrics.sroa.18.0.copyload.i252, 0
  br i1 %tobool22.not.i299, label %if.end21.i.if.end30.i_crit_edge, label %if.then23.i302

if.end21.i.if.end30.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then23.i302:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv25.i300 = zext i8 %metrics.sroa.18.0.copyload.i252 to i32
  %mul26.neg.i = mul nsw i32 %conv25.i300, -625
  %sub27.i = add nsw i32 %mul26.neg.i, 155000
  %div28.i = sdiv i32 %sub27.i, 100
  %conv29.i = trunc i32 %div28.i to i16
  %voltage_mem.i301 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 38
  %249 = ptrtoint ptr %voltage_mem.i301 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv29.i, ptr %voltage_mem.i301, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i302, %if.end21.i.if.end30.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %metrics.sroa.14.0.copyload.i248)
  %tobool31.not.i = icmp eq i8 %metrics.sroa.14.0.copyload.i248, 0
  br i1 %tobool31.not.i, label %if.end30.i.if.end39.i_crit_edge, label %if.then32.i

if.end30.i.if.end39.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv34.i = zext i8 %metrics.sroa.14.0.copyload.i248 to i32
  %mul35.neg.i = mul nsw i32 %conv34.i, -625
  %sub36.i = add nsw i32 %mul35.neg.i, 155000
  %div37.i = sdiv i32 %sub36.i, 100
  %conv38.i = trunc i32 %div37.i to i16
  %voltage_soc.i303 = getelementptr inbounds %struct.gpu_metrics_v1_3, ptr %200, i32 0, i32 36
  %250 = ptrtoint ptr %voltage_soc.i303 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %conv38.i, ptr %voltage_soc.i303, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then32.i, %if.end30.i.if.end39.i_crit_edge
  %251 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %200, ptr %table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i, %if.then.i228, %if.end45.i222, %if.then.i117, %if.end40.i, %if.then.i43, %if.end45.i, %if.then.i, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %if.then.i ], [ 120, %if.end45.i ], [ %call.i, %if.then.i43 ], [ 120, %if.end40.i ], [ %call.i115, %if.then.i117 ], [ 120, %if.end45.i222 ], [ %call.i226, %if.then.i228 ], [ 120, %if.end39.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_enable_mgpu_fan_boost(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720905, i32 %3)
  %cmp = icmp eq i32 %3, 720905
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %4 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_pptable, align 4
  %MGpuFanBoostLimitRpm = getelementptr inbounds %struct.PPTable_t, ptr %5, i32 0, i32 129
  %6 = ptrtoint ptr %MGpuFanBoostLimitRpm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MGpuFanBoostLimitRpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29458, i16 %11)
  %cmp5 = icmp eq i16 %11, 29458
  br i1 %cmp5, label %land.lhs.true, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %revision = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 12
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp9 = icmp eq i8 %13, 0
  %spec.select = select i1 %cmp9, i32 53640, i32 0
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end4.if.end12_crit_edge
  %param.0 = phi i32 [ 0, %if.end4.if.end12_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 83, i32 noundef %param.0, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_gfx_ulv_control(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_deep_sleep_control(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi10_get_fan_parameters(ptr nocapture noundef %smu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %FanMaximumRpm = getelementptr inbounds %struct.PPTable_t, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %FanMaximumRpm to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %FanMaximumRpm, align 2
  %conv = zext i16 %3 to i32
  %fan_max_rpm = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 52
  %4 = ptrtoint ptr %fan_max_rpm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %fan_max_rpm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_post_smu_init(ptr noundef %smu) #1 align 64 {
entry:
  %pmfw_version.i = alloca i32, align 4
  %param.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmfw_version.i) #13
  %4 = ptrtoint ptr %pmfw_version.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pmfw_version.i, align 4, !annotation !358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %5 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %param.i, align 4, !annotation !358
  %call.i.i = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.navi10_run_umc_cdr_workaround.exit.thread_crit_edge, label %navi10_need_umc_cdr_workaround.exit.i

if.end.navi10_run_umc_cdr_workaround.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_run_umc_cdr_workaround.exit.thread

navi10_need_umc_cdr_workaround.exit.i:            ; preds = %if.end
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %7, label %navi10_need_umc_cdr_workaround.exit.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge [
    i32 720901, label %navi10_need_umc_cdr_workaround.exit.i.if.end.i_crit_edge
    i32 720896, label %navi10_need_umc_cdr_workaround.exit.i.if.end.i_crit_edge40
  ]

navi10_need_umc_cdr_workaround.exit.i.if.end.i_crit_edge40: ; preds = %navi10_need_umc_cdr_workaround.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

navi10_need_umc_cdr_workaround.exit.i.if.end.i_crit_edge: ; preds = %navi10_need_umc_cdr_workaround.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

navi10_need_umc_cdr_workaround.exit.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge: ; preds = %navi10_need_umc_cdr_workaround.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_run_umc_cdr_workaround.exit.thread

if.end.i:                                         ; preds = %navi10_need_umc_cdr_workaround.exit.i.if.end.i_crit_edge, %navi10_need_umc_cdr_workaround.exit.i.if.end.i_crit_edge40
  %call2.i = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %pmfw_version.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.35) #16
  br label %navi10_run_umc_cdr_workaround.exit.thread36

if.end4.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %12, label %if.end4.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge [
    i32 720896, label %land.lhs.true.i
    i32 720901, label %land.lhs.true11.i
  ]

if.end4.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_run_umc_cdr_workaround.exit.thread

land.lhs.true.i:                                  ; preds = %if.end4.i
  %14 = ptrtoint ptr %pmfw_version.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pmfw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2766079, i32 %15)
  %cmp6.i = icmp ugt i32 %15, 2766079
  br i1 %cmp6.i, label %land.lhs.true.i.if.then13.i_crit_edge, label %if.then41.i

land.lhs.true.i.if.then13.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

land.lhs.true11.i:                                ; preds = %if.end4.i
  %16 = ptrtoint ptr %pmfw_version.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pmfw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3480831, i32 %17)
  %cmp12.i = icmp ugt i32 %17, 3480831
  br i1 %cmp12.i, label %land.lhs.true11.i.if.then13.i_crit_edge, label %land.lhs.true11.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge

land.lhs.true11.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_run_umc_cdr_workaround.exit.thread

land.lhs.true11.i.if.then13.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

if.then13.i:                                      ; preds = %land.lhs.true11.i.if.then13.i_crit_edge, %land.lhs.true.i.if.then13.i_crit_edge
  %call14.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 157, i32 noundef 0, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then13.i.navi10_run_umc_cdr_workaround.exit.thread36_crit_edge

if.then13.i.navi10_run_umc_cdr_workaround.exit.thread36_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_run_umc_cdr_workaround.exit.thread36

if.end17.i:                                       ; preds = %if.then13.i
  %18 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %param.i, align 4
  %conv63.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv63.i)
  %tobool20.not.i = icmp eq i32 %conv63.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end17.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge

if.end17.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_run_umc_cdr_workaround.exit.thread

if.end22.i:                                       ; preds = %if.end17.i
  %conv1964.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1964.i)
  %tobool23.not.i = icmp eq i32 %conv1964.i, 0
  br i1 %tobool23.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end22.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %21)
  %cmp28.i = icmp eq i32 %21, 720896
  br i1 %cmp28.i, label %if.then30.i, label %if.then24.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge

if.then24.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_run_umc_cdr_workaround.exit.thread

if.then30.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #15
  %call31.i = call fastcc i32 @navi10_umc_hybrid_cdr_workaround(ptr noundef %smu) #13
  br label %navi10_run_umc_cdr_workaround.exit

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %call33.i = call fastcc i32 @navi10_set_dummy_pstates_table_location(ptr noundef %smu) #13
  br label %navi10_run_umc_cdr_workaround.exit

if.then41.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call42.i = call fastcc i32 @navi10_umc_hybrid_cdr_workaround(ptr noundef %smu) #13
  br label %navi10_run_umc_cdr_workaround.exit

navi10_run_umc_cdr_workaround.exit.thread:        ; preds = %if.then24.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge, %if.end17.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge, %land.lhs.true11.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge, %if.end4.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge, %navi10_need_umc_cdr_workaround.exit.i.navi10_run_umc_cdr_workaround.exit.thread_crit_edge, %if.end.navi10_run_umc_cdr_workaround.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmfw_version.i) #13
  br label %if.end4

navi10_run_umc_cdr_workaround.exit.thread36:      ; preds = %if.then13.i.navi10_run_umc_cdr_workaround.exit.thread36_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call14.i, %if.then13.i.navi10_run_umc_cdr_workaround.exit.thread36_crit_edge ], [ %call2.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmfw_version.i) #13
  br label %do.end

navi10_run_umc_cdr_workaround.exit:               ; preds = %if.then41.i, %if.else.i, %if.then30.i
  %retval.0.i = phi i32 [ %call31.i, %if.then30.i ], [ %call33.i, %if.else.i ], [ %call42.i, %if.then41.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmfw_version.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool2.not, label %navi10_run_umc_cdr_workaround.exit.if.end4_crit_edge, label %navi10_run_umc_cdr_workaround.exit.do.end_crit_edge

navi10_run_umc_cdr_workaround.exit.do.end_crit_edge: ; preds = %navi10_run_umc_cdr_workaround.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

navi10_run_umc_cdr_workaround.exit.if.end4_crit_edge: ; preds = %navi10_run_umc_cdr_workaround.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

do.end:                                           ; preds = %navi10_run_umc_cdr_workaround.exit.do.end_crit_edge, %navi10_run_umc_cdr_workaround.exit.thread36
  %retval.0.i39 = phi i32 [ %retval.0.i.ph, %navi10_run_umc_cdr_workaround.exit.thread36 ], [ %retval.0.i, %navi10_run_umc_cdr_workaround.exit.do.end_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.167) #16
  br label %cleanup

if.end4:                                          ; preds = %navi10_run_umc_cdr_workaround.exit.if.end4_crit_edge, %navi10_run_umc_cdr_workaround.exit.thread
  %dc_controlled_by_gpio = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 48
  %24 = ptrtoint ptr %dc_controlled_by_gpio to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dc_controlled_by_gpio, align 1, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool5.not = icmp eq i8 %25, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %ac_power = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 23
  %26 = ptrtoint ptr %ac_power to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ac_power, align 4, !range !355
  %28 = xor i8 %27, 1
  %29 = zext i8 %28 to i32
  %call8 = call i32 @smu_v11_0_set_power_source(ptr noundef %smu, i32 noundef %29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.cleanup_crit_edge, label %do.end13

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end13:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %32 = ptrtoint ptr %ac_power to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ac_power, align 4, !range !355
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool17.not = icmp eq i8 %33, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.173, ptr @.str.172
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.170, ptr noundef nonnull %cond18) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39, %do.end ], [ %call8, %do.end13 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_v11_0_interrupt_work(ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_single_dpm_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_dpm_level_count(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_current_pcie_link_speed_level(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_current_pcie_link_width_level(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_to_asic_specific_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @navi1x_get_smu_metrics_data(ptr noundef %smu, i32 noundef %member, ptr nocapture noundef writeonly %value) unnamed_addr #1 align 64 {
entry:
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #13
  %2 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %smu_version, align 4, !annotation !358
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef null, ptr noundef nonnull %smu_version) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.35) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %6, label %if.end.if.else21_crit_edge [
    i32 720905, label %sw.bb
    i32 720901, label %land.lhs.true
    i32 720896, label %land.lhs.true17
  ]

if.end.if.else21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

sw.bb:                                            ; preds = %if.end
  %8 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3415040, i32 %9)
  %cmp = icmp ugt i32 %9, 3415040
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #13
  %call.i = call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.bb
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.navi12_get_smu_metrics_data.exit_crit_edge

if.then3.navi12_get_smu_metrics_data.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi12_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %if.then3
  %12 = zext i32 %member to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %member, label %if.end.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb11.i
    i32 5, label %sw.bb15.i
    i32 8, label %sw.bb19.i
    i32 10, label %sw.bb23.i
    i32 11, label %sw.bb30.i
    i32 13, label %sw.bb32.i
    i32 16, label %sw.bb34.i
    i32 17, label %sw.bb37.i
    i32 19, label %sw.bb39.i
    i32 20, label %sw.bb41.i
    i32 21, label %sw.bb43.i
    i32 22, label %sw.bb46.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %11, align 8
  %conv.i = zext i16 %14 to i32
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.i = getelementptr [9 x i16], ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = zext i16 %16 to i32
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx9.i = getelementptr [9 x i16], ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx9.i, align 4
  %conv10.i = zext i16 %18 to i32
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx13.i = getelementptr [9 x i16], ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx13.i, align 8
  %conv14.i = zext i16 %20 to i32
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx17.i = getelementptr [9 x i16], ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx17.i, align 2
  %conv18.i = zext i16 %22 to i32
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx21.i = getelementptr [9 x i16], ptr %11, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx21.i, align 2
  %conv22.i = zext i16 %24 to i32
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end.i
  %AverageGfxActivity.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 4
  %25 = ptrtoint ptr %AverageGfxActivity.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %AverageGfxActivity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %26)
  %cmp.i = icmp ugt i16 %26, 15
  br i1 %cmp.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxclkFrequencyPreDs.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 29
  %27 = ptrtoint ptr %AverageGfxclkFrequencyPreDs.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %AverageGfxclkFrequencyPreDs.i, align 2
  %conv27.i = zext i16 %28 to i32
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxclkFrequencyPostDs.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 1
  %29 = ptrtoint ptr %AverageGfxclkFrequencyPostDs.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %AverageGfxclkFrequencyPostDs.i, align 2
  %conv28.i = zext i16 %30 to i32
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 2
  %31 = ptrtoint ptr %AverageSocclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %AverageSocclkFrequency.i, align 4
  %conv31.i = zext i16 %32 to i32
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkFrequencyPostDs.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 3
  %33 = ptrtoint ptr %AverageUclkFrequencyPostDs.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %AverageUclkFrequencyPostDs.i, align 2
  %conv33.i = zext i16 %34 to i32
  br label %sw.epilog.i

sw.bb34.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxActivity35.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 4
  %35 = ptrtoint ptr %AverageGfxActivity35.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %AverageGfxActivity35.i, align 8
  %conv36.i = zext i16 %36 to i32
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkActivity.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 5
  %37 = ptrtoint ptr %AverageUclkActivity.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %AverageUclkActivity.i, align 2
  %conv38.i = zext i16 %38 to i32
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocketPower.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 10
  %39 = ptrtoint ptr %AverageSocketPower.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %AverageSocketPower.i, align 8
  %conv40.i = zext i16 %40 to i32
  %shl.i = shl nuw nsw i32 %conv40.i, 8
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureEdge.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 11
  %41 = ptrtoint ptr %TemperatureEdge.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %TemperatureEdge.i, align 2
  %conv42.i = zext i16 %42 to i32
  %mul.i = mul nuw nsw i32 %conv42.i, 1000
  br label %sw.epilog.i

sw.bb43.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureHotspot.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 12
  %43 = ptrtoint ptr %TemperatureHotspot.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %TemperatureHotspot.i, align 4
  %conv44.i = zext i16 %44 to i32
  %mul45.i = mul nuw nsw i32 %conv44.i, 1000
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureMem.i = getelementptr inbounds %struct.SmuMetrics_NV12_t, ptr %11, i32 0, i32 13
  %45 = ptrtoint ptr %TemperatureMem.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %TemperatureMem.i, align 2
  %conv47.i = zext i16 %46 to i32
  %mul48.i = mul nuw nsw i32 %conv47.i, 1000
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb46.i, %sw.bb43.i, %sw.bb41.i, %sw.bb39.i, %sw.bb37.i, %sw.bb34.i, %sw.bb32.i, %sw.bb30.i, %if.else.i, %if.then26.i, %sw.bb19.i, %sw.bb15.i, %sw.bb11.i, %sw.bb7.i, %sw.bb3.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %conv27.sink.i = phi i32 [ %conv27.i, %if.then26.i ], [ %conv28.i, %if.else.i ], [ %mul48.i, %sw.bb46.i ], [ %mul45.i, %sw.bb43.i ], [ %mul.i, %sw.bb41.i ], [ %shl.i, %sw.bb39.i ], [ %conv38.i, %sw.bb37.i ], [ %conv36.i, %sw.bb34.i ], [ %conv33.i, %sw.bb32.i ], [ %conv31.i, %sw.bb30.i ], [ %conv22.i, %sw.bb19.i ], [ %conv18.i, %sw.bb15.i ], [ %conv14.i, %sw.bb11.i ], [ %conv10.i, %sw.bb7.i ], [ %conv6.i, %sw.bb3.i ], [ %conv.i, %sw.bb.i ], [ -1, %if.end.i.sw.epilog.i_crit_edge ]
  %47 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv27.sink.i, ptr %value, align 4
  br label %navi12_get_smu_metrics_data.exit

navi12_get_smu_metrics_data.exit:                 ; preds = %sw.epilog.i, %if.then3.navi12_get_smu_metrics_data.exit_crit_edge
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  br i1 %tobool.not.i, label %if.end.i46, label %if.else.navi12_get_legacy_smu_metrics_data.exit_crit_edge

if.else.navi12_get_legacy_smu_metrics_data.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi12_get_legacy_smu_metrics_data.exit

if.end.i46:                                       ; preds = %if.else
  %48 = zext i32 %member to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %member, label %if.end.i46.sw.epilog.i78_crit_edge [
    i32 0, label %sw.bb.i48
    i32 1, label %sw.bb3.i51
    i32 2, label %sw.bb7.i54
    i32 3, label %sw.bb11.i57
    i32 5, label %sw.bb15.i60
    i32 8, label %sw.bb19.i63
    i32 10, label %sw.bb23.i64
    i32 11, label %sw.bb25.i
    i32 13, label %sw.bb27.i
    i32 16, label %sw.bb29.i
    i32 17, label %sw.bb31.i
    i32 19, label %sw.bb33.i
    i32 20, label %sw.bb35.i
    i32 21, label %sw.bb37.i76
    i32 22, label %sw.bb40.i
  ]

if.end.i46.sw.epilog.i78_crit_edge:               ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i78

sw.bb.i48:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %11, align 4
  %conv.i47 = zext i16 %50 to i32
  br label %sw.epilog.i78

sw.bb3.i51:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.i49 = getelementptr [9 x i16], ptr %11, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx5.i49 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx5.i49, align 2
  %conv6.i50 = zext i16 %52 to i32
  br label %sw.epilog.i78

sw.bb7.i54:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx9.i52 = getelementptr [9 x i16], ptr %11, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx9.i52 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx9.i52, align 4
  %conv10.i53 = zext i16 %54 to i32
  br label %sw.epilog.i78

sw.bb11.i57:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx13.i55 = getelementptr [9 x i16], ptr %11, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx13.i55 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx13.i55, align 4
  %conv14.i56 = zext i16 %56 to i32
  br label %sw.epilog.i78

sw.bb15.i60:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx17.i58 = getelementptr [9 x i16], ptr %11, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx17.i58 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx17.i58, align 2
  %conv18.i59 = zext i16 %58 to i32
  br label %sw.epilog.i78

sw.bb19.i63:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx21.i61 = getelementptr [9 x i16], ptr %11, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx21.i61 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx21.i61, align 2
  %conv22.i62 = zext i16 %60 to i32
  br label %sw.epilog.i78

sw.bb23.i64:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 1
  %61 = ptrtoint ptr %AverageGfxclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %AverageGfxclkFrequency.i, align 2
  %conv24.i = zext i16 %62 to i32
  br label %sw.epilog.i78

sw.bb25.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocclkFrequency.i65 = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 2
  %63 = ptrtoint ptr %AverageSocclkFrequency.i65 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %AverageSocclkFrequency.i65, align 4
  %conv26.i = zext i16 %64 to i32
  br label %sw.epilog.i78

sw.bb27.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkFrequency.i = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 3
  %65 = ptrtoint ptr %AverageUclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %AverageUclkFrequency.i, align 2
  %conv28.i66 = zext i16 %66 to i32
  br label %sw.epilog.i78

sw.bb29.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxActivity.i67 = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 4
  %67 = ptrtoint ptr %AverageGfxActivity.i67 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %AverageGfxActivity.i67, align 4
  %conv30.i = zext i16 %68 to i32
  br label %sw.epilog.i78

sw.bb31.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkActivity.i68 = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 5
  %69 = ptrtoint ptr %AverageUclkActivity.i68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %AverageUclkActivity.i68, align 2
  %conv32.i = zext i16 %70 to i32
  br label %sw.epilog.i78

sw.bb33.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocketPower.i69 = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 10
  %71 = ptrtoint ptr %AverageSocketPower.i69 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %AverageSocketPower.i69, align 4
  %conv34.i = zext i16 %72 to i32
  %shl.i70 = shl nuw nsw i32 %conv34.i, 8
  br label %sw.epilog.i78

sw.bb35.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureEdge.i71 = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 11
  %73 = ptrtoint ptr %TemperatureEdge.i71 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %TemperatureEdge.i71, align 2
  %conv36.i72 = zext i16 %74 to i32
  %mul.i73 = mul nuw nsw i32 %conv36.i72, 1000
  br label %sw.epilog.i78

sw.bb37.i76:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureHotspot.i74 = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 12
  %75 = ptrtoint ptr %TemperatureHotspot.i74 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %TemperatureHotspot.i74, align 4
  %conv38.i75 = zext i16 %76 to i32
  %mul39.i = mul nuw nsw i32 %conv38.i75, 1000
  br label %sw.epilog.i78

sw.bb40.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureMem.i77 = getelementptr inbounds %struct.SmuMetrics_NV12_legacy_t, ptr %11, i32 0, i32 13
  %77 = ptrtoint ptr %TemperatureMem.i77 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %TemperatureMem.i77, align 2
  %conv41.i = zext i16 %78 to i32
  %mul42.i = mul nuw nsw i32 %conv41.i, 1000
  br label %sw.epilog.i78

sw.epilog.i78:                                    ; preds = %sw.bb40.i, %sw.bb37.i76, %sw.bb35.i, %sw.bb33.i, %sw.bb31.i, %sw.bb29.i, %sw.bb27.i, %sw.bb25.i, %sw.bb23.i64, %sw.bb19.i63, %sw.bb15.i60, %sw.bb11.i57, %sw.bb7.i54, %sw.bb3.i51, %sw.bb.i48, %if.end.i46.sw.epilog.i78_crit_edge
  %.sink.i = phi i32 [ %mul42.i, %sw.bb40.i ], [ %mul39.i, %sw.bb37.i76 ], [ %mul.i73, %sw.bb35.i ], [ %shl.i70, %sw.bb33.i ], [ %conv32.i, %sw.bb31.i ], [ %conv30.i, %sw.bb29.i ], [ %conv28.i66, %sw.bb27.i ], [ %conv26.i, %sw.bb25.i ], [ %conv24.i, %sw.bb23.i64 ], [ %conv22.i62, %sw.bb19.i63 ], [ %conv18.i59, %sw.bb15.i60 ], [ %conv14.i56, %sw.bb11.i57 ], [ %conv10.i53, %sw.bb7.i54 ], [ %conv6.i50, %sw.bb3.i51 ], [ %conv.i47, %sw.bb.i48 ], [ -1, %if.end.i46.sw.epilog.i78_crit_edge ]
  %79 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink.i, ptr %value, align 4
  br label %navi12_get_legacy_smu_metrics_data.exit

navi12_get_legacy_smu_metrics_data.exit:          ; preds = %sw.epilog.i78, %if.else.navi12_get_legacy_smu_metrics_data.exit_crit_edge
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %80 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3481344, i32 %81)
  %cmp12 = icmp ugt i32 %81, 3481344
  br i1 %cmp12, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.if.else21_crit_edge

land.lhs.true.if.else21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

land.lhs.true17:                                  ; preds = %if.end
  %82 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %smu_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2767616, i32 %83)
  %cmp18 = icmp ugt i32 %83, 2767616
  br i1 %cmp18, label %land.lhs.true17.if.then19_crit_edge, label %land.lhs.true17.if.else21_crit_edge

land.lhs.true17.if.else21_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

land.lhs.true17.if.then19_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true17.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %metrics_table.i79 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %84 = ptrtoint ptr %metrics_table.i79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %metrics_table.i79, align 8
  %metrics_lock.i80 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %metrics_lock.i80, i32 noundef 0) #13
  %call.i81 = call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %if.end.i83, label %if.then19.navi10_get_smu_metrics_data.exit_crit_edge

if.then19.navi10_get_smu_metrics_data.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_get_smu_metrics_data.exit

if.end.i83:                                       ; preds = %if.then19
  %86 = zext i32 %member to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %member, label %if.end.i83.sw.epilog.i139_crit_edge [
    i32 0, label %sw.bb.i85
    i32 1, label %sw.bb3.i88
    i32 2, label %sw.bb7.i91
    i32 3, label %sw.bb11.i94
    i32 5, label %sw.bb15.i97
    i32 8, label %sw.bb19.i100
    i32 10, label %sw.bb23.i103
    i32 11, label %sw.bb30.i112
    i32 13, label %sw.bb32.i115
    i32 16, label %sw.bb34.i118
    i32 17, label %sw.bb37.i121
    i32 19, label %sw.bb39.i125
    i32 20, label %sw.bb41.i129
    i32 21, label %sw.bb43.i133
    i32 22, label %sw.bb46.i137
    i32 23, label %sw.bb49.i
    i32 24, label %sw.bb52.i
    i32 26, label %sw.bb55.i
    i32 27, label %sw.bb56.i
  ]

if.end.i83.sw.epilog.i139_crit_edge:              ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i139

sw.bb.i85:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %85, align 4
  %conv.i84 = zext i16 %88 to i32
  br label %sw.epilog.i139

sw.bb3.i88:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.i86 = getelementptr [9 x i16], ptr %85, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx5.i86 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx5.i86, align 2
  %conv6.i87 = zext i16 %90 to i32
  br label %sw.epilog.i139

sw.bb7.i91:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx9.i89 = getelementptr [9 x i16], ptr %85, i32 0, i32 2
  %91 = ptrtoint ptr %arrayidx9.i89 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx9.i89, align 4
  %conv10.i90 = zext i16 %92 to i32
  br label %sw.epilog.i139

sw.bb11.i94:                                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx13.i92 = getelementptr [9 x i16], ptr %85, i32 0, i32 4
  %93 = ptrtoint ptr %arrayidx13.i92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx13.i92, align 4
  %conv14.i93 = zext i16 %94 to i32
  br label %sw.epilog.i139

sw.bb15.i97:                                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx17.i95 = getelementptr [9 x i16], ptr %85, i32 0, i32 3
  %95 = ptrtoint ptr %arrayidx17.i95 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx17.i95, align 2
  %conv18.i96 = zext i16 %96 to i32
  br label %sw.epilog.i139

sw.bb19.i100:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx21.i98 = getelementptr [9 x i16], ptr %85, i32 0, i32 5
  %97 = ptrtoint ptr %arrayidx21.i98 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx21.i98, align 2
  %conv22.i99 = zext i16 %98 to i32
  br label %sw.epilog.i139

sw.bb23.i103:                                     ; preds = %if.end.i83
  %AverageGfxActivity.i101 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 4
  %99 = ptrtoint ptr %AverageGfxActivity.i101 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %AverageGfxActivity.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %100)
  %cmp.i102 = icmp ugt i16 %100, 15
  br i1 %cmp.i102, label %if.then26.i106, label %if.else.i109

if.then26.i106:                                   ; preds = %sw.bb23.i103
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxclkFrequencyPreDs.i104 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 26
  %101 = ptrtoint ptr %AverageGfxclkFrequencyPreDs.i104 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %AverageGfxclkFrequencyPreDs.i104, align 4
  %conv27.i105 = zext i16 %102 to i32
  br label %sw.epilog.i139

if.else.i109:                                     ; preds = %sw.bb23.i103
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxclkFrequencyPostDs.i107 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 1
  %103 = ptrtoint ptr %AverageGfxclkFrequencyPostDs.i107 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %AverageGfxclkFrequencyPostDs.i107, align 2
  %conv28.i108 = zext i16 %104 to i32
  br label %sw.epilog.i139

sw.bb30.i112:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocclkFrequency.i110 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 2
  %105 = ptrtoint ptr %AverageSocclkFrequency.i110 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %AverageSocclkFrequency.i110, align 4
  %conv31.i111 = zext i16 %106 to i32
  br label %sw.epilog.i139

sw.bb32.i115:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkFrequencyPostDs.i113 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 3
  %107 = ptrtoint ptr %AverageUclkFrequencyPostDs.i113 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %AverageUclkFrequencyPostDs.i113, align 2
  %conv33.i114 = zext i16 %108 to i32
  br label %sw.epilog.i139

sw.bb34.i118:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxActivity35.i116 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 4
  %109 = ptrtoint ptr %AverageGfxActivity35.i116 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %AverageGfxActivity35.i116, align 4
  %conv36.i117 = zext i16 %110 to i32
  br label %sw.epilog.i139

sw.bb37.i121:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkActivity.i119 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 5
  %111 = ptrtoint ptr %AverageUclkActivity.i119 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %AverageUclkActivity.i119, align 2
  %conv38.i120 = zext i16 %112 to i32
  br label %sw.epilog.i139

sw.bb39.i125:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocketPower.i122 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 10
  %113 = ptrtoint ptr %AverageSocketPower.i122 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %AverageSocketPower.i122, align 4
  %conv40.i123 = zext i16 %114 to i32
  %shl.i124 = shl nuw nsw i32 %conv40.i123, 8
  br label %sw.epilog.i139

sw.bb41.i129:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureEdge.i126 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 11
  %115 = ptrtoint ptr %TemperatureEdge.i126 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %TemperatureEdge.i126, align 2
  %conv42.i127 = zext i16 %116 to i32
  %mul.i128 = mul nuw nsw i32 %conv42.i127, 1000
  br label %sw.epilog.i139

sw.bb43.i133:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureHotspot.i130 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 12
  %117 = ptrtoint ptr %TemperatureHotspot.i130 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %TemperatureHotspot.i130, align 4
  %conv44.i131 = zext i16 %118 to i32
  %mul45.i132 = mul nuw nsw i32 %conv44.i131, 1000
  br label %sw.epilog.i139

sw.bb46.i137:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureMem.i134 = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 13
  %119 = ptrtoint ptr %TemperatureMem.i134 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %TemperatureMem.i134, align 2
  %conv47.i135 = zext i16 %120 to i32
  %mul48.i136 = mul nuw nsw i32 %conv47.i135, 1000
  br label %sw.epilog.i139

sw.bb49.i:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureVrGfx.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 14
  %121 = ptrtoint ptr %TemperatureVrGfx.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %TemperatureVrGfx.i, align 4
  %conv50.i = zext i16 %122 to i32
  %mul51.i = mul nuw nsw i32 %conv50.i, 1000
  br label %sw.epilog.i139

sw.bb52.i:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureVrSoc.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 17
  %123 = ptrtoint ptr %TemperatureVrSoc.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %TemperatureVrSoc.i, align 2
  %conv53.i = zext i16 %124 to i32
  %mul54.i = mul nuw nsw i32 %conv53.i, 1000
  br label %sw.epilog.i139

sw.bb55.i:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %ThrottlerStatus.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 22
  %125 = ptrtoint ptr %ThrottlerStatus.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ThrottlerStatus.i, align 4
  br label %sw.epilog.i139

sw.bb56.i:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  %CurrFanSpeed.i = getelementptr inbounds %struct.SmuMetrics_t, ptr %85, i32 0, i32 25
  %127 = ptrtoint ptr %CurrFanSpeed.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %CurrFanSpeed.i, align 2
  %conv57.i = zext i16 %128 to i32
  br label %sw.epilog.i139

sw.epilog.i139:                                   ; preds = %sw.bb56.i, %sw.bb55.i, %sw.bb52.i, %sw.bb49.i, %sw.bb46.i137, %sw.bb43.i133, %sw.bb41.i129, %sw.bb39.i125, %sw.bb37.i121, %sw.bb34.i118, %sw.bb32.i115, %sw.bb30.i112, %if.else.i109, %if.then26.i106, %sw.bb19.i100, %sw.bb15.i97, %sw.bb11.i94, %sw.bb7.i91, %sw.bb3.i88, %sw.bb.i85, %if.end.i83.sw.epilog.i139_crit_edge
  %conv27.sink.i138 = phi i32 [ %conv27.i105, %if.then26.i106 ], [ %conv28.i108, %if.else.i109 ], [ %conv57.i, %sw.bb56.i ], [ %126, %sw.bb55.i ], [ %mul54.i, %sw.bb52.i ], [ %mul51.i, %sw.bb49.i ], [ %mul48.i136, %sw.bb46.i137 ], [ %mul45.i132, %sw.bb43.i133 ], [ %mul.i128, %sw.bb41.i129 ], [ %shl.i124, %sw.bb39.i125 ], [ %conv38.i120, %sw.bb37.i121 ], [ %conv36.i117, %sw.bb34.i118 ], [ %conv33.i114, %sw.bb32.i115 ], [ %conv31.i111, %sw.bb30.i112 ], [ %conv22.i99, %sw.bb19.i100 ], [ %conv18.i96, %sw.bb15.i97 ], [ %conv14.i93, %sw.bb11.i94 ], [ %conv10.i90, %sw.bb7.i91 ], [ %conv6.i87, %sw.bb3.i88 ], [ %conv.i84, %sw.bb.i85 ], [ -1, %if.end.i83.sw.epilog.i139_crit_edge ]
  %129 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv27.sink.i138, ptr %value, align 4
  br label %navi10_get_smu_metrics_data.exit

navi10_get_smu_metrics_data.exit:                 ; preds = %sw.epilog.i139, %if.then19.navi10_get_smu_metrics_data.exit_crit_edge
  call void @mutex_unlock(ptr noundef %metrics_lock.i80) #13
  br label %cleanup

if.else21:                                        ; preds = %land.lhs.true17.if.else21_crit_edge, %land.lhs.true.if.else21_crit_edge, %if.end.if.else21_crit_edge
  %metrics_table.i140 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %130 = ptrtoint ptr %metrics_table.i140 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %metrics_table.i140, align 8
  %metrics_lock.i141 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %metrics_lock.i141, i32 noundef 0) #13
  %call.i142 = call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.end.i144, label %if.else21.navi10_get_legacy_smu_metrics_data.exit_crit_edge

if.else21.navi10_get_legacy_smu_metrics_data.exit_crit_edge: ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  br label %navi10_get_legacy_smu_metrics_data.exit

if.end.i144:                                      ; preds = %if.else21
  %132 = zext i32 %member to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %member, label %if.end.i144.sw.epilog.i194_crit_edge [
    i32 0, label %sw.bb.i146
    i32 1, label %sw.bb3.i149
    i32 2, label %sw.bb7.i152
    i32 3, label %sw.bb11.i155
    i32 5, label %sw.bb15.i158
    i32 8, label %sw.bb19.i161
    i32 10, label %sw.bb23.i164
    i32 11, label %sw.bb25.i167
    i32 13, label %sw.bb27.i170
    i32 16, label %sw.bb29.i173
    i32 17, label %sw.bb31.i176
    i32 19, label %sw.bb33.i180
    i32 20, label %sw.bb35.i184
    i32 21, label %sw.bb37.i188
    i32 22, label %sw.bb40.i192
  ]

if.end.i144.sw.epilog.i194_crit_edge:             ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i194

sw.bb.i146:                                       ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %131 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %131, align 4
  %conv.i145 = zext i16 %134 to i32
  br label %sw.epilog.i194

sw.bb3.i149:                                      ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.i147 = getelementptr [9 x i16], ptr %131, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx5.i147 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx5.i147, align 2
  %conv6.i148 = zext i16 %136 to i32
  br label %sw.epilog.i194

sw.bb7.i152:                                      ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx9.i150 = getelementptr [9 x i16], ptr %131, i32 0, i32 2
  %137 = ptrtoint ptr %arrayidx9.i150 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx9.i150, align 4
  %conv10.i151 = zext i16 %138 to i32
  br label %sw.epilog.i194

sw.bb11.i155:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx13.i153 = getelementptr [9 x i16], ptr %131, i32 0, i32 4
  %139 = ptrtoint ptr %arrayidx13.i153 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx13.i153, align 4
  %conv14.i154 = zext i16 %140 to i32
  br label %sw.epilog.i194

sw.bb15.i158:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx17.i156 = getelementptr [9 x i16], ptr %131, i32 0, i32 3
  %141 = ptrtoint ptr %arrayidx17.i156 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx17.i156, align 2
  %conv18.i157 = zext i16 %142 to i32
  br label %sw.epilog.i194

sw.bb19.i161:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx21.i159 = getelementptr [9 x i16], ptr %131, i32 0, i32 5
  %143 = ptrtoint ptr %arrayidx21.i159 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx21.i159, align 2
  %conv22.i160 = zext i16 %144 to i32
  br label %sw.epilog.i194

sw.bb23.i164:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxclkFrequency.i162 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 1
  %145 = ptrtoint ptr %AverageGfxclkFrequency.i162 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %AverageGfxclkFrequency.i162, align 2
  %conv24.i163 = zext i16 %146 to i32
  br label %sw.epilog.i194

sw.bb25.i167:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocclkFrequency.i165 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 2
  %147 = ptrtoint ptr %AverageSocclkFrequency.i165 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %AverageSocclkFrequency.i165, align 4
  %conv26.i166 = zext i16 %148 to i32
  br label %sw.epilog.i194

sw.bb27.i170:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkFrequency.i168 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 3
  %149 = ptrtoint ptr %AverageUclkFrequency.i168 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %AverageUclkFrequency.i168, align 2
  %conv28.i169 = zext i16 %150 to i32
  br label %sw.epilog.i194

sw.bb29.i173:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %AverageGfxActivity.i171 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 4
  %151 = ptrtoint ptr %AverageGfxActivity.i171 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %AverageGfxActivity.i171, align 4
  %conv30.i172 = zext i16 %152 to i32
  br label %sw.epilog.i194

sw.bb31.i176:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %AverageUclkActivity.i174 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 5
  %153 = ptrtoint ptr %AverageUclkActivity.i174 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %AverageUclkActivity.i174, align 2
  %conv32.i175 = zext i16 %154 to i32
  br label %sw.epilog.i194

sw.bb33.i180:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %AverageSocketPower.i177 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 10
  %155 = ptrtoint ptr %AverageSocketPower.i177 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %AverageSocketPower.i177, align 4
  %conv34.i178 = zext i16 %156 to i32
  %shl.i179 = shl nuw nsw i32 %conv34.i178, 8
  br label %sw.epilog.i194

sw.bb35.i184:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureEdge.i181 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 11
  %157 = ptrtoint ptr %TemperatureEdge.i181 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %TemperatureEdge.i181, align 2
  %conv36.i182 = zext i16 %158 to i32
  %mul.i183 = mul nuw nsw i32 %conv36.i182, 1000
  br label %sw.epilog.i194

sw.bb37.i188:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureHotspot.i185 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 12
  %159 = ptrtoint ptr %TemperatureHotspot.i185 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %TemperatureHotspot.i185, align 4
  %conv38.i186 = zext i16 %160 to i32
  %mul39.i187 = mul nuw nsw i32 %conv38.i186, 1000
  br label %sw.epilog.i194

sw.bb40.i192:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #15
  %TemperatureMem.i189 = getelementptr inbounds %struct.SmuMetrics_legacy_t, ptr %131, i32 0, i32 13
  %161 = ptrtoint ptr %TemperatureMem.i189 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %TemperatureMem.i189, align 2
  %conv41.i190 = zext i16 %162 to i32
  %mul42.i191 = mul nuw nsw i32 %conv41.i190, 1000
  br label %sw.epilog.i194

sw.epilog.i194:                                   ; preds = %sw.bb40.i192, %sw.bb37.i188, %sw.bb35.i184, %sw.bb33.i180, %sw.bb31.i176, %sw.bb29.i173, %sw.bb27.i170, %sw.bb25.i167, %sw.bb23.i164, %sw.bb19.i161, %sw.bb15.i158, %sw.bb11.i155, %sw.bb7.i152, %sw.bb3.i149, %sw.bb.i146, %if.end.i144.sw.epilog.i194_crit_edge
  %.sink.i193 = phi i32 [ %mul42.i191, %sw.bb40.i192 ], [ %mul39.i187, %sw.bb37.i188 ], [ %mul.i183, %sw.bb35.i184 ], [ %shl.i179, %sw.bb33.i180 ], [ %conv32.i175, %sw.bb31.i176 ], [ %conv30.i172, %sw.bb29.i173 ], [ %conv28.i169, %sw.bb27.i170 ], [ %conv26.i166, %sw.bb25.i167 ], [ %conv24.i163, %sw.bb23.i164 ], [ %conv22.i160, %sw.bb19.i161 ], [ %conv18.i157, %sw.bb15.i158 ], [ %conv14.i154, %sw.bb11.i155 ], [ %conv10.i151, %sw.bb7.i152 ], [ %conv6.i148, %sw.bb3.i149 ], [ %conv.i145, %sw.bb.i146 ], [ -1, %if.end.i144.sw.epilog.i194_crit_edge ]
  %163 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %.sink.i193, ptr %value, align 4
  br label %navi10_get_legacy_smu_metrics_data.exit

navi10_get_legacy_smu_metrics_data.exit:          ; preds = %sw.epilog.i194, %if.else21.navi10_get_legacy_smu_metrics_data.exit_crit_edge
  call void @mutex_unlock(ptr noundef %metrics_lock.i141) #13
  br label %cleanup

cleanup:                                          ; preds = %navi10_get_legacy_smu_metrics_data.exit, %navi10_get_smu_metrics_data.exit, %navi12_get_legacy_smu_metrics_data.exit, %navi12_get_smu_metrics_data.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %navi12_get_smu_metrics_data.exit ], [ %call.i, %navi12_get_legacy_smu_metrics_data.exit ], [ %call.i81, %navi10_get_smu_metrics_data.exit ], [ %call.i142, %navi10_get_legacy_smu_metrics_data.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_smc_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @navi10_dump_od_table(ptr nocapture noundef readonly %smu, ptr nocapture noundef readonly %od_table) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@navi10_dump_od_table, %if.then)) #13
          to label %do.body4 [label %if.then], !srcloc !357

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %od_table to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %od_table, align 4
  %conv = zext i16 %5 to i32
  %GfxclkFmax = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 1
  %6 = ptrtoint ptr %GfxclkFmax to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %GfxclkFmax, align 2
  %conv3 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @navi10_dump_od_table.__UNIQUE_ID_ddebug348, ptr noundef %3, ptr noundef nonnull @.str.106, i32 noundef %conv, i32 noundef %conv3) #13
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@navi10_dump_od_table, %if.then16)) #13
          to label %do.body23 [label %if.then16], !srcloc !357

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smu, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %GfxclkFreq1 = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 2
  %12 = ptrtoint ptr %GfxclkFreq1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %GfxclkFreq1, align 4
  %conv19 = zext i16 %13 to i32
  %GfxclkVolt1 = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 3
  %14 = ptrtoint ptr %GfxclkVolt1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %GfxclkVolt1, align 2
  %conv20 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @navi10_dump_od_table.__UNIQUE_ID_ddebug349, ptr noundef %11, ptr noundef nonnull @.str.107, i32 noundef %conv19, i32 noundef %conv20) #13
  br label %do.body23

do.body23:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@navi10_dump_od_table, %if.then35)) #13
          to label %do.body42 [label %if.then35], !srcloc !357

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smu, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %GfxclkFreq2 = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 4
  %20 = ptrtoint ptr %GfxclkFreq2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %GfxclkFreq2, align 4
  %conv38 = zext i16 %21 to i32
  %GfxclkVolt2 = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 5
  %22 = ptrtoint ptr %GfxclkVolt2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %GfxclkVolt2, align 2
  %conv39 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @navi10_dump_od_table.__UNIQUE_ID_ddebug350, ptr noundef %19, ptr noundef nonnull @.str.108, i32 noundef %conv38, i32 noundef %conv39) #13
  br label %do.body42

do.body42:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@navi10_dump_od_table, %if.then54)) #13
          to label %do.body61 [label %if.then54], !srcloc !357

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smu, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %GfxclkFreq3 = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 6
  %28 = ptrtoint ptr %GfxclkFreq3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %GfxclkFreq3, align 4
  %conv57 = zext i16 %29 to i32
  %GfxclkVolt3 = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 7
  %30 = ptrtoint ptr %GfxclkVolt3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %GfxclkVolt3, align 2
  %conv58 = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @navi10_dump_od_table.__UNIQUE_ID_ddebug351, ptr noundef %27, ptr noundef nonnull @.str.109, i32 noundef %conv57, i32 noundef %conv58) #13
  br label %do.body61

do.body61:                                        ; preds = %if.then54, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@navi10_dump_od_table, %if.then73)) #13
          to label %do.body79 [label %if.then73], !srcloc !357

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smu, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %UclkFmax = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 8
  %36 = ptrtoint ptr %UclkFmax to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %UclkFmax, align 4
  %conv76 = zext i16 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @navi10_dump_od_table.__UNIQUE_ID_ddebug352, ptr noundef %35, ptr noundef nonnull @.str.110, i32 noundef %conv76) #13
  br label %do.body79

do.body79:                                        ; preds = %if.then73, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@navi10_dump_od_table, %if.then91)) #13
          to label %do.end96 [label %if.then91], !srcloc !357

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smu, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %OverDrivePct = getelementptr inbounds %struct.OverDriveTable_t, ptr %od_table, i32 0, i32 9
  %42 = ptrtoint ptr %OverDrivePct to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %OverDrivePct, align 2
  %conv94 = sext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @navi10_dump_od_table.__UNIQUE_ID_ddebug353, ptr noundef %41, ptr noundef nonnull @.str.111, i32 noundef %conv94) #13
  br label %do.end96

do.end96:                                         ; preds = %if.then91, %do.body79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_update_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_gfx_vdd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_hard_freq_limited_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_supported(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_fan_speed_rpm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_write_watermarks_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_get_current_power_limit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @navi10_i2c_xfer(ptr noundef %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num_msgs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %smu = getelementptr i8, ptr %i2c_adap, i32 -4464
  %cpu_addr = getelementptr i8, ptr %i2c_adap, i32 -3424
  %0 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_addr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call7.i.i, align 8
  %I2CSpeed = getelementptr inbounds %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %I2CSpeed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %I2CSpeed, align 1
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msg, align 4
  %shl = shl i16 %6, 1
  %SlaveAddress = getelementptr inbounds %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %SlaveAddress to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %shl, ptr %SlaveAddress, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_msgs)
  %cmp180 = icmp sgt i32 %num_msgs, 0
  br i1 %cmp180, label %for.cond7.preheader.lr.ph, label %if.end.for.end65_crit_edge

if.end.for.end65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end65

for.cond7.preheader.lr.ph:                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 1
  %NumCmds = getelementptr inbounds %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 3
  %sub43 = add nsw i32 %num_msgs, -1
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc63.for.cond7.preheader_crit_edge, %for.cond7.preheader.lr.ph
  %dir.0184 = phi i16 [ %10, %for.cond7.preheader.lr.ph ], [ %dir.1.lcssa, %for.inc63.for.cond7.preheader_crit_edge ]
  %c.0183 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %c.1.lcssa, %for.inc63.for.cond7.preheader_crit_edge ]
  %i.0181 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc64, %for.inc63.for.cond7.preheader_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0181, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 4
  %conv9 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp10173.not = icmp eq i16 %12, 0
  br i1 %cmp10173.not, label %for.cond7.preheader.for.inc63_crit_edge, label %for.body12.lr.ph

for.cond7.preheader.for.inc63_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc63

for.body12.lr.ph:                                 ; preds = %for.cond7.preheader
  %flags15 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0181, i32 1
  %13 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags15, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp eq i16 %15, 0
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0181, i32 3
  %sub = add nsw i32 %conv9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0181, i32 %sub43)
  %cmp44 = icmp ne i32 %i.0181, %sub43
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %tobool50.not = icmp sgt i16 %14, -1
  %or.cond = select i1 %cmp44, i1 %tobool50.not, i1 false
  br label %for.body12

for.body12:                                       ; preds = %if.end60.for.body12_crit_edge, %for.body12.lr.ph
  %dir.1178 = phi i16 [ %dir.0184, %for.body12.lr.ph ], [ %dir.2, %if.end60.for.body12_crit_edge ]
  %c.1175 = phi i32 [ %c.0183, %for.body12.lr.ph ], [ %inc62, %if.end60.for.body12_crit_edge ]
  %j.0174 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc61, %if.end60.for.body12_crit_edge ]
  br i1 %tobool18.not, label %if.then19, label %for.body12.if.end22_crit_edge

for.body12.if.end22_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then19:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx13 = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 5, i32 %c.1175
  %Cmd = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 5, i32 %c.1175, i32 1
  %16 = ptrtoint ptr %Cmd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %Cmd, align 1
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %arrayidx21 = getelementptr i8, ptr %18, i32 %j.0174
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21, align 1
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx13, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.body12.if.end22_crit_edge
  %xor172 = xor i16 %14, %dir.1178
  %22 = and i16 %xor172, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool28.not = icmp eq i16 %22, 0
  br i1 %tobool28.not, label %if.end22.if.end37_crit_edge, label %if.then29

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %CmdConfig = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 5, i32 %c.1175, i32 3
  %23 = ptrtoint ptr %CmdConfig to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %CmdConfig, align 1
  %25 = or i8 %24, 2
  store i8 %25, ptr %CmdConfig, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end22.if.end37_crit_edge
  %dir.2 = phi i16 [ %15, %if.then29 ], [ %dir.1178, %if.end22.if.end37_crit_edge ]
  %26 = ptrtoint ptr %NumCmds to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %NumCmds, align 4
  %inc = add i8 %27, 1
  store i8 %inc, ptr %NumCmds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0174, i32 %sub)
  %cmp41 = icmp ne i32 %j.0174, %sub
  %brmerge = select i1 %cmp41, i1 true, i1 %or.cond
  br i1 %brmerge, label %if.end37.if.end60_crit_edge, label %if.then51

if.end37.if.end60_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %CmdConfig52 = getelementptr %struct.SwI2cRequest_t, ptr %call7.i.i, i32 0, i32 5, i32 %c.1175, i32 3
  %28 = ptrtoint ptr %CmdConfig52 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %CmdConfig52, align 1
  %30 = and i8 %29, -4
  %31 = or i8 %30, 1
  store i8 %31, ptr %CmdConfig52, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then51, %if.end37.if.end60_crit_edge
  %inc61 = add nuw nsw i32 %j.0174, 1
  %inc62 = add i32 %c.1175, 1
  %exitcond.not = icmp eq i32 %inc61, %conv9
  br i1 %exitcond.not, label %if.end60.for.inc63_crit_edge, label %if.end60.for.body12_crit_edge

if.end60.for.body12_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body12

if.end60.for.inc63_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc63

for.inc63:                                        ; preds = %if.end60.for.inc63_crit_edge, %for.cond7.preheader.for.inc63_crit_edge
  %c.1.lcssa = phi i32 [ %c.0183, %for.cond7.preheader.for.inc63_crit_edge ], [ %inc62, %if.end60.for.inc63_crit_edge ]
  %dir.1.lcssa = phi i16 [ %dir.0184, %for.cond7.preheader.for.inc63_crit_edge ], [ %dir.2, %if.end60.for.inc63_crit_edge ]
  %inc64 = add nuw nsw i32 %i.0181, 1
  %exitcond195.not = icmp eq i32 %inc64, %num_msgs
  br i1 %exitcond195.not, label %for.inc63.for.end65_crit_edge, label %for.inc63.for.cond7.preheader_crit_edge

for.inc63.for.cond7.preheader_crit_edge:          ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond7.preheader

for.inc63.for.end65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end65

for.end65:                                        ; preds = %for.inc63.for.end65_crit_edge, %if.end.for.end65_crit_edge
  %mutex = getelementptr i8, ptr %i2c_adap, i32 -4420
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call68 = tail call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool71.not = icmp ne i32 %call68, 0
  %cmp180.not = xor i1 %cmp180, true
  %brmerge197 = or i1 %tobool71.not, %cmp180.not
  %call68.mux = select i1 %tobool71.not, i32 %call68, i32 %num_msgs
  br i1 %brmerge197, label %for.end65.fail_crit_edge, label %for.end65.for.body77_crit_edge

for.end65.for.body77_crit_edge:                   ; preds = %for.end65
  br label %for.body77

for.end65.fail_crit_edge:                         ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

for.body77:                                       ; preds = %for.inc105.for.body77_crit_edge, %for.end65.for.body77_crit_edge
  %c.2194 = phi i32 [ %c.4, %for.inc105.for.body77_crit_edge ], [ 0, %for.end65.for.body77_crit_edge ]
  %i.1191 = phi i32 [ %inc106, %for.inc105.for.body77_crit_edge ], [ 0, %for.end65.for.body77_crit_edge ]
  %flags79 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1191, i32 1
  %32 = ptrtoint ptr %flags79 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags79, align 2
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool82.not = icmp eq i16 %34, 0
  %len85 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1191, i32 2
  %35 = ptrtoint ptr %len85 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len85, align 4
  br i1 %tobool82.not, label %if.then83, label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %for.body77
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp92186.not = icmp eq i16 %36, 0
  br i1 %cmp92186.not, label %for.cond88.preheader.for.inc105_crit_edge, label %for.body94.lr.ph

for.cond88.preheader.for.inc105_crit_edge:        ; preds = %for.cond88.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc105

for.body94.lr.ph:                                 ; preds = %for.cond88.preheader
  %buf99 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1191, i32 3
  br label %for.body94

if.then83:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #15
  %conv86 = zext i16 %36 to i32
  %add = add i32 %c.2194, %conv86
  br label %for.inc105

for.body94:                                       ; preds = %for.body94.for.body94_crit_edge, %for.body94.lr.ph
  %c.3188 = phi i32 [ %c.2194, %for.body94.lr.ph ], [ %inc103, %for.body94.for.body94_crit_edge ]
  %j.1187 = phi i32 [ 0, %for.body94.lr.ph ], [ %inc102, %for.body94.for.body94_crit_edge ]
  %Data = getelementptr %struct.SwI2cRequest_t, ptr %1, i32 0, i32 5, i32 %c.3188, i32 2
  %37 = ptrtoint ptr %Data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %Data, align 1
  %39 = ptrtoint ptr %buf99 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf99, align 4
  %arrayidx100 = getelementptr i8, ptr %40, i32 %j.1187
  %41 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %38, ptr %arrayidx100, align 1
  %inc102 = add nuw nsw i32 %j.1187, 1
  %inc103 = add i32 %c.3188, 1
  %42 = ptrtoint ptr %len85 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len85, align 4
  %conv91 = zext i16 %43 to i32
  %cmp92 = icmp ult i32 %inc102, %conv91
  br i1 %cmp92, label %for.body94.for.body94_crit_edge, label %for.body94.for.inc105_crit_edge

for.body94.for.inc105_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc105

for.body94.for.body94_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body94

for.inc105:                                       ; preds = %for.body94.for.inc105_crit_edge, %if.then83, %for.cond88.preheader.for.inc105_crit_edge
  %c.4 = phi i32 [ %add, %if.then83 ], [ %c.2194, %for.cond88.preheader.for.inc105_crit_edge ], [ %inc103, %for.body94.for.inc105_crit_edge ]
  %inc106 = add nuw nsw i32 %i.1191, 1
  %exitcond196.not = icmp eq i32 %inc106, %num_msgs
  br i1 %exitcond196.not, label %for.inc105.fail_crit_edge, label %for.inc105.for.body77_crit_edge

for.inc105.for.body77_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body77

for.inc105.fail_crit_edge:                        ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

fail:                                             ; preds = %for.inc105.fail_crit_edge, %for.end65.fail_crit_edge
  %r.0 = phi i32 [ %call68.mux, %for.end65.fail_crit_edge ], [ %num_msgs, %for.inc105.fail_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %fail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %fail ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi10_i2c_func(ptr nocapture noundef readnone %adap) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_smc_tables(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_setup_pptable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu_cmn_is_audio_func_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_set_armd3_sequence(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_enter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_baco_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_cmn_init_soft_gpu_metrics(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @smu_cmn_get_indep_throttler_status(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @smu_v11_0_get_current_pcie_link_width(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @smu_v11_0_get_current_pcie_link_speed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @navi10_umc_hybrid_cdr_workaround(ptr noundef %smu) unnamed_addr #1 align 64 {
entry:
  %uclk_count = alloca i32, align 4
  %uclk_min = alloca i32, align 4
  %uclk_max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uclk_count) #13
  %0 = ptrtoint ptr %uclk_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uclk_count, align 4, !annotation !358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uclk_min) #13
  %1 = ptrtoint ptr %uclk_min to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %uclk_min, align 4, !annotation !358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uclk_max) #13
  %2 = ptrtoint ptr %uclk_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uclk_max, align 4, !annotation !358
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @smu_v11_0_get_dpm_level_count(ptr noundef %smu, i32 noundef 7, ptr noundef nonnull %uclk_count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %uclk_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uclk_count, align 4
  %5 = trunc i32 %4 to i16
  %conv = add i16 %5, -1
  %call5 = call i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef 7, i16 noundef zeroext %conv, ptr noundef nonnull %uclk_max) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %uclk_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uclk_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %7)
  %cmp = icmp ugt i32 %7, 750
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = call i32 @smu_v11_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef 7, i16 noundef zeroext 0, ptr noundef nonnull %uclk_min) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %uclk_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uclk_min, align 4
  %call16 = call i32 @smu_v11_0_set_hard_freq_limited_range(ptr noundef %smu, i32 noundef 7, i32 noundef 0, i32 noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %uclk_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uclk_max, align 4
  %call20 = call i32 @smu_v11_0_set_hard_freq_limited_range(ptr noundef %smu, i32 noundef 7, i32 noundef 0, i32 noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 154, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uclk_max) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uclk_min) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uclk_count) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @navi10_set_dummy_pstates_table_location(ptr noundef %smu) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_addr = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 14, i32 4
  %0 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_addr, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %dummy_table.033 = phi ptr [ %1, %entry ], [ %add.ptr2, %for.body.for.body_crit_edge ]
  %2 = call ptr @memcpy(ptr %dummy_table.033, ptr @NoDbiPrbs7, i32 4096)
  %add.ptr = getelementptr i8, ptr %dummy_table.033, i32 4096
  %3 = call ptr @memcpy(ptr %add.ptr, ptr @DbiPrbs7, i32 4096)
  %add.ptr2 = getelementptr i8, ptr %dummy_table.033, i32 8192
  %add = add nuw nsw i32 %i.034, 8192
  %cmp = icmp ult i32 %i.034, 253952
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %4 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu, align 8
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 4
  %flush_hdp = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %flush_hdp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flush_hdp, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %cond.false, label %for.end.cond.end_crit_edge

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 102, i32 1
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %.sink = phi ptr [ %13, %cond.false ], [ %9, %for.end.cond.end_crit_edge ]
  tail call void %.sink(ptr noundef %5, ptr noundef null) #13
  %mc_address = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 14, i32 3
  %14 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mc_address, align 8
  %shr = lshr i64 %15, 32
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 155, i32 noundef %conv, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mc_address, align 8
  %conv13 = trunc i64 %17 to i32
  %call14 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 156, i32 noundef %conv13, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ %call, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !222, !223, !224, !226, !228, !230, !232, !234, !236, !238, !239, !240, !241, !243, !244, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !288, !290, !292, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !315, !317, !318, !319, !320, !322, !323, !324, !325, !326, !328, !329, !330, !332, !334, !336, !338, !340, !342, !344}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !{ptr @navi10_ppt_funcs, !1, !"navi10_ppt_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 3232, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2548, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @navi10_run_btc._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @navi10_run_btc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1308, i32 38}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1309, i32 28}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1309, i32 34}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1339, i32 37}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1340, i32 62}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1341, i32 62}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1342, i32 62}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1343, i32 62}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1344, i32 63}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1345, i32 63}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1346, i32 63}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1347, i32 63}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1348, i32 63}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1349, i32 63}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1360, i32 36}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1361, i32 36}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1369, i32 36}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1370, i32 36}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1377, i32 36}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1392, i32 37}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1400, i32 36}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1400, i32 45}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1407, i32 37}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1414, i32 37}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1421, i32 37}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1425, i32 37}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1429, i32 37}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1433, i32 37}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1437, i32 37}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1441, i32 37}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 924, i32 3}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @navi1x_get_smu_metrics_data._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @navi1x_get_smu_metrics_data._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1489, i32 3}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @navi10_force_clk_levels._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @navi10_force_clk_levels._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2378, i32 3}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @navi10_od_edit_dpm_table._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @navi10_od_edit_dpm_table._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2383, i32 3}
!89 = !{ptr @navi10_od_edit_dpm_table._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2392, i32 4}
!93 = !{ptr @navi10_od_edit_dpm_table._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2396, i32 4}
!97 = !{ptr @navi10_od_edit_dpm_table._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2401, i32 5}
!101 = !{ptr @navi10_od_edit_dpm_table._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2409, i32 6}
!105 = !{ptr @navi10_od_edit_dpm_table._entry.55, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2419, i32 6}
!109 = !{ptr @navi10_od_edit_dpm_table._entry.58, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.60, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2426, i32 5}
!113 = !{ptr @navi10_od_edit_dpm_table._entry.61, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.63, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2427, i32 5}
!117 = !{ptr @navi10_od_edit_dpm_table._entry.64, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.66, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2438, i32 4}
!121 = !{ptr @navi10_od_edit_dpm_table._entry.67, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.69, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2442, i32 4}
!125 = !{ptr @navi10_od_edit_dpm_table._entry.70, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.72, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2446, i32 4}
!129 = !{ptr @navi10_od_edit_dpm_table._entry.73, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.75, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.77, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2447, i32 4}
!133 = !{ptr @navi10_od_edit_dpm_table._entry.76, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.78, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.80, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2457, i32 4}
!137 = !{ptr @navi10_od_edit_dpm_table._entry.79, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.81, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.83, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2467, i32 5}
!141 = !{ptr @navi10_od_edit_dpm_table._entry.82, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.84, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.86, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2481, i32 4}
!145 = !{ptr @navi10_od_edit_dpm_table._entry.85, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.87, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @navi10_od_edit_dpm_table._entry.88, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2485, i32 4}
!149 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.89, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @navi10_od_edit_dpm_table._entry.90, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2489, i32 4}
!152 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.91, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.93, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2513, i32 4}
!155 = !{ptr @navi10_od_edit_dpm_table._entry.92, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.94, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.96, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2514, i32 4}
!159 = !{ptr @navi10_od_edit_dpm_table._entry.95, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @navi10_od_edit_dpm_table._entry_ptr.97, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.98, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2527, i32 4}
!163 = !{ptr @.str.99, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @navi10_od_edit_dpm_table.__UNIQUE_ID_ddebug354, !162, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!165 = !{ptr @.str.100, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2236, i32 3}
!167 = !{ptr @.str.101, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @navi10_od_setting_check_range._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @navi10_od_setting_check_range._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.103, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2240, i32 3}
!172 = !{ptr @navi10_od_setting_check_range._entry.102, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @navi10_od_setting_check_range._entry_ptr.104, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.105, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2222, i32 2}
!176 = !{ptr @.str.106, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug348, !175, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!178 = !{ptr @.str.107, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2223, i32 2}
!180 = !{ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug349, !179, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!181 = !{ptr @.str.108, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2224, i32 2}
!183 = !{ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug350, !182, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!184 = !{ptr @.str.109, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2225, i32 2}
!186 = !{ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug351, !185, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!187 = !{ptr @.str.110, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2226, i32 2}
!189 = !{ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug352, !188, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!190 = !{ptr @.str.111, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2227, i32 2}
!192 = !{ptr @navi10_dump_od_table.__UNIQUE_ID_ddebug353, !191, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!193 = !{ptr @.str.112, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1717, i32 4}
!195 = !{ptr @.str.113, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1718, i32 4}
!197 = !{ptr @.str.114, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1719, i32 4}
!199 = !{ptr @.str.115, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1720, i32 4}
!201 = !{ptr @.str.116, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1721, i32 4}
!203 = !{ptr @.str.117, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1722, i32 4}
!205 = !{ptr @.str.118, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1723, i32 4}
!207 = !{ptr @.str.119, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1724, i32 4}
!209 = !{ptr @.str.120, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1725, i32 4}
!211 = !{ptr @.str.121, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1726, i32 4}
!213 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1727, i32 4}
!215 = distinct !{null, !216, !"title", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1716, i32 21}
!217 = !{ptr @.str.123, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1733, i32 35}
!219 = !{ptr @.str.124, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1749, i32 4}
!221 = !{ptr @.str.125, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @navi10_get_power_profile_mode._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @navi10_get_power_profile_mode._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.126, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1753, i32 36}
!226 = !{ptr @.str.127, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1754, i32 73}
!228 = !{ptr @.str.128, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1756, i32 36}
!230 = !{ptr @.str.129, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1759, i32 4}
!232 = !{ptr @.str.130, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1773, i32 4}
!234 = !{ptr @.str.131, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1787, i32 4}
!236 = !{ptr @.str.132, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1810, i32 3}
!238 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @navi10_set_power_profile_mode._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @navi10_set_power_profile_mode._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @navi10_set_power_profile_mode._entry.134, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1820, i32 4}
!243 = !{ptr @navi10_set_power_profile_mode._entry_ptr.135, !242, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.137, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1864, i32 4}
!246 = !{ptr @navi10_set_power_profile_mode._entry.136, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @navi10_set_power_profile_mode._entry_ptr.138, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.139, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1903, i32 6}
!250 = !{ptr @.str.140, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @navi10_notify_smc_display_config._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @navi10_notify_smc_display_config._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.142, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1908, i32 4}
!255 = !{ptr @navi10_notify_smc_display_config._entry.141, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @navi10_notify_smc_display_config._entry_ptr.143, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.145, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1915, i32 4}
!259 = !{ptr @navi10_notify_smc_display_config._entry.144, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @navi10_notify_smc_display_config._entry_ptr.146, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.147, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 1971, i32 4}
!263 = !{ptr @.str.148, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @navi10_set_watermarks_table._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @navi10_set_watermarks_table._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @smu11_thermal_policy, !267, !"smu11_thermal_policy", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/smu_v11_0.h", i32 70, i32 45}
!268 = !{ptr @.str.149, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2331, i32 3}
!270 = !{ptr @.str.150, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @navi10_set_default_od_settings._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @navi10_set_default_od_settings._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.151, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2259, i32 3}
!275 = !{ptr @.str.152, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @navi10_overdrive_get_gfx_clk_base_voltage._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @navi10_overdrive_get_gfx_clk_base_voltage._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.153, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2153, i32 4}
!280 = !{ptr @.str.154, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @navi10_get_power_limit._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @navi10_get_power_limit._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.155, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2170, i32 4}
!285 = !{ptr @navi10_get_power_limit.__UNIQUE_ID_ddebug347, !284, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!286 = !{ptr @.str.156, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2879, i32 49}
!288 = !{ptr @.str.157, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2884, i32 3}
!290 = !{ptr @navi10_i2c_algo, !291, !"navi10_i2c_algo", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2857, i32 35}
!292 = !{ptr @navi10_i2c_control_quirks, !293, !"navi10_i2c_control_quirks", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2862, i32 40}
!294 = !{ptr @.str.158, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 423, i32 2}
!296 = !{ptr @.str.159, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @navi10_append_powerplay_table._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @navi10_append_powerplay_table._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.161, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 428, i32 3}
!301 = !{ptr @navi10_append_powerplay_table._entry.160, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @navi10_append_powerplay_table._entry_ptr.162, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.164, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 446, i32 3}
!305 = !{ptr @navi10_append_powerplay_table._entry.163, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @navi10_append_powerplay_table._entry_ptr.165, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.166, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 3145, i32 3}
!309 = !{ptr @navi1x_get_gpu_metrics._entry, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @navi1x_get_gpu_metrics._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @navi1x_throttler_map, !312, !"navi1x_throttler_map", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 241, i32 22}
!313 = !{ptr @link_speed, !314, !"link_speed", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/smu_v11_0.h", i32 67, i32 38}
!315 = !{ptr @.str.167, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 3209, i32 3}
!317 = !{ptr @.str.168, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @navi10_post_smu_init._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @navi10_post_smu_init._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.170, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 3223, i32 4}
!322 = !{ptr @navi10_post_smu_init._entry.169, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @navi10_post_smu_init._entry_ptr.171, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.172, !321, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.173, !321, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.174, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 2658, i32 3}
!328 = !{ptr @navi10_run_umc_cdr_workaround._entry, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @navi10_run_umc_cdr_workaround._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @NoDbiPrbs7, !331, !"NoDbiPrbs7", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/smu_11_0_cdr_table.h", i32 55, i32 21}
!332 = !{ptr @DbiPrbs7, !333, !"DbiPrbs7", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/inc/smu_11_0_cdr_table.h", i32 124, i32 21}
!334 = !{ptr @navi10_message_map, !335, !"navi10_message_map", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 75, i32 36}
!336 = !{ptr @navi10_clk_map, !337, !"navi10_clk_map", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 150, i32 32}
!338 = !{ptr @navi10_feature_mask_map, !339, !"navi10_feature_mask_map", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 165, i32 32}
!340 = !{ptr @navi10_table_map, !341, !"navi10_table_map", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 211, i32 32}
!342 = !{ptr @navi10_pwr_src_map, !343, !"navi10_pwr_src_map", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 226, i32 32}
!344 = !{ptr @navi10_workload_map, !345, !"navi10_workload_map", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/navi10_ppt.c", i32 231, i32 32}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 1, !"min_enum_size", i32 4}
!348 = !{i32 8, !"branch-target-enforcement", i32 0}
!349 = !{i32 8, !"sign-return-address", i32 0}
!350 = !{i32 8, !"sign-return-address-all", i32 0}
!351 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!352 = !{i32 7, !"uwtable", i32 1}
!353 = !{i32 7, !"frame-pointer", i32 2}
!354 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!355 = !{i8 0, i8 2}
!356 = !{i32 0, i32 33}
!357 = !{i64 2148283641, i64 2148283646, i64 2148283659, i64 2148283703, i64 2148283737, i64 2148283758}
!358 = !{!"auto-init"}
