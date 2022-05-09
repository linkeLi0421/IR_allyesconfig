; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu11/cyan_skillfish_ppt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmn2asic_msg_mapping = type { i32, i32, i32 }
%struct.cmn2asic_mapping = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smu_context = type { ptr, %struct.amdgpu_irq_src, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i64, %struct.smu_table_context, %struct.smu_dpm_context, %struct.smu_power_context, %struct.smu_feature, ptr, %struct.smu_baco_context, %struct.smu_temperature_range, ptr, %struct.smu_umd_pstate_table, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i32, i32, i8, i32, [7 x i32], [7 x i32], i32, i32, i8, i8, i32, i32, i32, i8, i8, %struct.work_struct, %struct.atomic64_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, %struct.smu_user_dpm_profile, %struct.stb_context }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.smu_temperature_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu_umd_pstate_table = type { %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq }
%struct.pstates_clk_freq = type { i32, i32, i32, %struct.smu_freq_info, %struct.smu_freq_info }
%struct.smu_freq_info = type { i32, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.smu_user_dpm_profile = type { i32, i32, i32, i32, i32, i32, [23 x i32], i32 }
%struct.stb_context = type { i32, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.SmuMetricsTable_t = type { [6 x i16], [6 x i32], [6 x i16], [2 x i16], [2 x i16], [6 x i16], i16, i16, i16, i16, i16, i16, [2 x i32], [2 x i32], [2 x i32], i32, i16, i16, i16, i16 }
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
%struct.SmuMetrics_t = type { %struct.SmuMetricsTable_t, %struct.SmuMetricsTable_t, i32, i32, i32 }
%struct.gpu_metrics_v2_2 = type { %struct.metrics_table_header, i16, i16, [8 x i16], [2 x i16], i16, i16, i64, i16, i16, i16, i16, [8 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], [2 x i16], i32, i16, [3 x i16], i64 }
%struct.metrics_table_header = type { i16, i8, i8 }

@cyan_skillfish_ppt_funcs = internal constant { %struct.pptable_funcs, [124 x i8] } { %struct.pptable_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyan_skillfish_print_clk_levels, ptr null, ptr @cyan_skillfish_od_edit_dpm_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyan_skillfish_read_sensor, ptr null, ptr null, ptr null, ptr null, ptr @cyan_skillfish_is_dpm_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyan_skillfish_init_smc_tables, ptr @cyan_skillfish_finit_smc_tables, ptr @smu_v11_0_init_power, ptr @smu_v11_0_fini_power, ptr @smu_v11_0_check_fw_status, ptr null, ptr null, ptr null, ptr @smu_v11_0_check_fw_version, ptr null, ptr null, ptr null, ptr @smu_v11_0_set_driver_table_location, ptr null, ptr @smu_v11_0_notify_memory_pool_location, ptr null, ptr @smu_cmn_send_smc_msg_with_param, ptr @smu_cmn_send_smc_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_v11_0_register_irq_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyan_skillfish_get_gpu_metrics, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_v11_0_interrupt_work, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@cyan_skillfish_message_map = internal global { [207 x %struct.cmn2asic_msg_mapping], [620 x i8] } { [207 x %struct.cmn2asic_msg_mapping] [%struct.cmn2asic_msg_mapping { i32 1, i32 1, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 2, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 3, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 61, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 4, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 5, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 6, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 7, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping zeroinitializer, %struct.cmn2asic_msg_mapping { i32 1, i32 14, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 59, i32 0 }, %struct.cmn2asic_msg_mapping { i32 1, i32 60, i32 0 }, %struct.cmn2asic_msg_mapping zeroinitializer], [620 x i8] zeroinitializer }, align 32
@cyan_skillfish_table_map = internal global { [15 x %struct.cmn2asic_mapping], [40 x i8] } { [15 x %struct.cmn2asic_mapping] [%struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping { i32 1, i32 6 }, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer, %struct.cmn2asic_mapping zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OD_SCLK\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0: %uMhz *\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OD_VDDC\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0: %umV *\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OD_RANGE\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCLK: %7uMhz %10uMhz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VDDC: %7umV  %10umV\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@cyan_skillfish_sclk_default = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2: %uMhz %s\0A\00", [19 x i8] zeroinitializer }, align 32
@cyan_skillfish_print_clk_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 368, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: Unsupported clock type\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cyan_skillfish_print_clk_levels\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyan_skillfish_print_clk_levels._entry_ptr = internal global ptr @cyan_skillfish_print_clk_levels._entry, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.15, i32 468, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: Invalid parameter!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cyan_skillfish_od_edit_dpm_table\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.15, i32 475, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: Invalid sclk! Valid sclk range: %uMHz - %uMhz\0A\00", [41 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.23 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.21, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.15, i32 482, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Invalid vddc! Valid vddc range: %umV - %umV\0A\00", [43 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.26 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.24, section ".printk_index", align 4
@cyan_skillfish_user_settings.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cyan_skillfish_user_settings.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cyan_skillfish_od_edit_dpm_table._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.15, i32 492, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.28 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.27, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.15, i32 502, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.30 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.29, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.15, i32 509, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.32 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.31, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.15, i32 517, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.34 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.33, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.15, i32 524, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: Set sclk failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.37 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.35, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.15, i32 531, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: Unforce vddc failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.40 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.38, section ".printk_index", align 4
@cyan_skillfish_od_edit_dpm_table._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.19, ptr @.str.15, i32 542, ptr @.str.20, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: Force vddc failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@cyan_skillfish_od_edit_dpm_table._entry_ptr.43 = internal global ptr @cyan_skillfish_od_edit_dpm_table._entry.41, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 6, i64 12, i64 13, i64 14, i64 18, i64 20, i64 21]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.45 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 9, i64 10, i64 11, i64 15]
@__sancov_gen_cov_switch_values.46 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 19, i64 20, i64 21, i64 26, i64 28, i64 29]
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"cyan_skillfish_ppt_funcs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 555, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"cyan_skillfish_message_map\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 69, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"cyan_skillfish_table_map\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 83, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 321, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 321, i32 44 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 322, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 328, i32 44 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 329, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 332, i32 45 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 333, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 335, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 359, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 360, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 360, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 361, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant [28 x i8] c"cyan_skillfish_sclk_default\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 61, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 364, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 368, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 468, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 474, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 481, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"cyan_skillfish_user_settings.0\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [31 x i8] c"cyan_skillfish_user_settings.1\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 492, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 502, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 508, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 516, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 524, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 531, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 542, i32 5 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @cyan_skillfish_od_edit_dpm_table._entry, ptr @cyan_skillfish_od_edit_dpm_table._entry.21, ptr @cyan_skillfish_od_edit_dpm_table._entry.24, ptr @cyan_skillfish_od_edit_dpm_table._entry.27, ptr @cyan_skillfish_od_edit_dpm_table._entry.29, ptr @cyan_skillfish_od_edit_dpm_table._entry.31, ptr @cyan_skillfish_od_edit_dpm_table._entry.33, ptr @cyan_skillfish_od_edit_dpm_table._entry.35, ptr @cyan_skillfish_od_edit_dpm_table._entry.38, ptr @cyan_skillfish_od_edit_dpm_table._entry.41, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.23, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.26, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.28, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.30, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.32, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.34, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.37, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.40, ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.43, ptr @cyan_skillfish_print_clk_levels._entry, ptr @cyan_skillfish_print_clk_levels._entry_ptr, ptr @cyan_skillfish_ppt_funcs, ptr @cyan_skillfish_message_map, ptr @cyan_skillfish_table_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cyan_skillfish_sclk_default, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @cyan_skillfish_user_settings.0, ptr @cyan_skillfish_user_settings.1, ptr @.str.36, ptr @.str.39, ptr @.str.42], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_ppt_funcs to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_message_map to i32), i32 2484, i32 3104, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_table_map to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_sclk_default to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_print_clk_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_user_settings.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_user_settings.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyan_skillfish_od_edit_dpm_table._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cyan_skillfish_set_ppt_funcs(ptr nocapture noundef writeonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cyan_skillfish_ppt_funcs, ptr %ppt_funcs, align 8
  %message_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %1 = ptrtoint ptr %message_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cyan_skillfish_message_map, ptr %message_map, align 4
  %table_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %2 = ptrtoint ptr %table_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cyan_skillfish_table_map, ptr %table_map, align 8
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %3 = ptrtoint ptr %is_apu to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_apu, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyan_skillfish_print_clk_levels(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %buf) #1 align 64 {
entry:
  %cur_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_value) #6
  %0 = ptrtoint ptr %cur_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_value, align 4
  %tobool.not.i = icmp eq ptr %buf, null
  %1 = ptrtoint ptr %buf to i32
  %and.i = and i32 %1, 4095
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %idx.neg.i
  %buf.addr.0 = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %size.0 = select i1 %tobool.not.i, i32 0, i32 %and.i
  %2 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_type, label %do.end [
    i32 18, label %sw.bb
    i32 20, label %sw.bb4
    i32 21, label %sw.bb13
    i32 1, label %sw.bb3.i
    i32 6, label %sw.bb2.i
    i32 2, label %sw.bb4.i
    i32 12, label %entry.cyan_skillfish_get_current_clk_freq.exit_crit_edge
    i32 14, label %entry.cyan_skillfish_get_current_clk_freq.exit_crit_edge121
    i32 0, label %entry.cyan_skillfish_get_current_clk_freq.exit88_crit_edge
    i32 13, label %entry.cyan_skillfish_get_current_clk_freq.exit88_crit_edge122
  ]

entry.cyan_skillfish_get_current_clk_freq.exit88_crit_edge122: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_current_clk_freq.exit88

entry.cyan_skillfish_get_current_clk_freq.exit88_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_current_clk_freq.exit88

entry.cyan_skillfish_get_current_clk_freq.exit_crit_edge121: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_current_clk_freq.exit

entry.cyan_skillfish_get_current_clk_freq.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_current_clk_freq.exit

sw.bb:                                            ; preds = %entry
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %3 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #6
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i71 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i71, label %if.end, label %cyan_skillfish_get_smu_metrics_data.exit

cyan_skillfish_get_smu_metrics_data.exit:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %GfxclkFrequency.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %GfxclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %GfxclkFrequency.i, align 4
  %conv.i = zext i16 %6 to i32
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #6
  %call1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %add = add i32 %call1, %size.0
  %call2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add, ptr noundef nonnull @.str.2, i32 noundef %conv.i) #6
  %add3 = add i32 %add, %call2
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %metrics_table.i73 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %7 = ptrtoint ptr %metrics_table.i73 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %metrics_table.i73, align 8
  %metrics_lock.i74 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i74, i32 noundef 0) #6
  %call.i75 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end8, label %cyan_skillfish_get_smu_metrics_data.exit78

cyan_skillfish_get_smu_metrics_data.exit78:       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i74) #6
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx31.i = getelementptr %struct.SmuMetricsTable_t, ptr %8, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx31.i, align 4
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i74) #6
  %call9 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #6
  %add10 = add i32 %call9, %size.0
  %call11 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add10, ptr noundef nonnull @.str.4, i32 noundef %10) #6
  %add12 = add i32 %add10, %call11
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #6
  %add15 = add i32 %call14, %size.0
  %call16 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add15, ptr noundef nonnull @.str.6, i32 noundef 1000, i32 noundef 2000) #6
  %add17 = add i32 %add15, %call16
  %call18 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add17, ptr noundef nonnull @.str.7, i32 noundef 700, i32 noundef 1129) #6
  %add19 = add i32 %add17, %call18
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_current_clk_freq.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_current_clk_freq.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_current_clk_freq.exit

cyan_skillfish_get_current_clk_freq.exit:         ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %entry.cyan_skillfish_get_current_clk_freq.exit_crit_edge, %entry.cyan_skillfish_get_current_clk_freq.exit_crit_edge121
  %member_type.0.i = phi i32 [ 5, %sw.bb4.i ], [ 3, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 2, %entry.cyan_skillfish_get_current_clk_freq.exit_crit_edge ], [ 2, %entry.cyan_skillfish_get_current_clk_freq.exit_crit_edge121 ]
  %call.i79 = call fastcc i32 @cyan_skillfish_get_smu_metrics_data(ptr noundef %smu, i32 noundef %member_type.0.i, ptr noundef nonnull %cur_value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool22.not = icmp eq i32 %call.i79, 0
  br i1 %tobool22.not, label %if.end24, label %cyan_skillfish_get_current_clk_freq.exit.cleanup_crit_edge

cyan_skillfish_get_current_clk_freq.exit.cleanup_crit_edge: ; preds = %cyan_skillfish_get_current_clk_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %cyan_skillfish_get_current_clk_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %cur_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_value, align 4
  %call25 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.2, i32 noundef %12) #6
  %add26 = add i32 %call25, %size.0
  br label %cleanup

cyan_skillfish_get_current_clk_freq.exit88:       ; preds = %entry.cyan_skillfish_get_current_clk_freq.exit88_crit_edge, %entry.cyan_skillfish_get_current_clk_freq.exit88_crit_edge122
  %call.i85 = call fastcc i32 @cyan_skillfish_get_smu_metrics_data(ptr noundef %smu, i32 noundef 0, ptr noundef nonnull %cur_value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool29.not = icmp eq i32 %call.i85, 0
  br i1 %tobool29.not, label %if.end31, label %cyan_skillfish_get_current_clk_freq.exit88.cleanup_crit_edge

cyan_skillfish_get_current_clk_freq.exit88.cleanup_crit_edge: ; preds = %cyan_skillfish_get_current_clk_freq.exit88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %cyan_skillfish_get_current_clk_freq.exit88
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %cur_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %14)
  %cmp = icmp eq i32 %14, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %14)
  %cmp33 = icmp eq i32 %14, 1000
  %.str.9..str.10 = select i1 %cmp33, ptr @.str.9, ptr @.str.10
  %cmp38 = select i1 %cmp, ptr @.str.10, ptr %.str.9..str.10
  %15 = xor i1 %cmp33, %cmp
  %call39 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %size.0, ptr noundef nonnull @.str.8, i32 noundef 1000, ptr noundef nonnull %cmp38) #6
  %add40 = add i32 %call39, %size.0
  %cond44 = select i1 %15, ptr @.str.10, ptr @.str.9
  %cyan_skillfish_sclk_default.val = load i32, ptr @cyan_skillfish_sclk_default, align 4
  %cond42 = select i1 %15, i32 %cyan_skillfish_sclk_default.val, i32 %14
  %call45 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add40, ptr noundef nonnull @.str.11, i32 noundef %cond42, ptr noundef nonnull %cond44) #6
  %add46 = add i32 %call45, %add40
  %cond48 = select i1 %cmp, ptr @.str.9, ptr @.str.10
  %call49 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf.addr.0, i32 noundef %add46, ptr noundef nonnull @.str.12, i32 noundef 2000, ptr noundef nonnull %cond48) #6
  %add50 = add i32 %add46, %call49
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smu, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end31, %cyan_skillfish_get_current_clk_freq.exit88.cleanup_crit_edge, %if.end24, %cyan_skillfish_get_current_clk_freq.exit.cleanup_crit_edge, %sw.bb13, %if.end8, %cyan_skillfish_get_smu_metrics_data.exit78, %if.end, %cyan_skillfish_get_smu_metrics_data.exit
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.i, %cyan_skillfish_get_smu_metrics_data.exit ], [ %call.i75, %cyan_skillfish_get_smu_metrics_data.exit78 ], [ %call.i79, %cyan_skillfish_get_current_clk_freq.exit.cleanup_crit_edge ], [ %call.i85, %cyan_skillfish_get_current_clk_freq.exit88.cleanup_crit_edge ], [ %add50, %if.end31 ], [ %add26, %if.end24 ], [ %add19, %sw.bb13 ], [ %add12, %if.end8 ], [ %add3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyan_skillfish_od_edit_dpm_table(ptr noundef %smu, i32 noundef %type, ptr nocapture noundef readonly %input, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb28
    i32 5, label %sw.bb37
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp.not = icmp eq i32 %size, 3
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %sw.bb
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.not = icmp eq i32 %2, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %3 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smu, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx2 = getelementptr i32, ptr %input, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %9 = add i32 %8, -2001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1001, i32 %9)
  %10 = icmp ult i32 %9, -1001
  br i1 %10, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smu, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.22, i32 noundef 1000, i32 noundef 2000) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %arrayidx14 = getelementptr i32, ptr %input, i32 2
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 4
  %17 = add i32 %16, -1130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -430, i32 %17)
  %18 = icmp ult i32 %17, -430
  br i1 %18, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smu, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.25, i32 noundef 700, i32 noundef 1129) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %8, ptr @cyan_skillfish_user_settings.0, align 4
  store i32 %16, ptr @cyan_skillfish_user_settings.1, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp29.not = icmp eq i32 %size, 0
  br i1 %cmp29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smu, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end36:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %27 = load i32, ptr @cyan_skillfish_sclk_default, align 4
  store i32 %27, ptr @cyan_skillfish_user_settings.0, align 4
  store i32 5118, ptr @cyan_skillfish_user_settings.1, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp38.not = icmp eq i32 %size, 0
  br i1 %cmp38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smu, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end45:                                         ; preds = %sw.bb37
  %32 = load i32, ptr @cyan_skillfish_user_settings.0, align 4
  %33 = add i32 %32, -2001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1001, i32 %33)
  %34 = icmp ult i32 %33, -1001
  br i1 %34, label %do.end52, label %if.end55

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smu, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.22, i32 noundef 1000, i32 noundef 2000) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %39 = load i32, ptr @cyan_skillfish_user_settings.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5118, i32 %39)
  %cmp56.not = icmp ne i32 %39, 5118
  %40 = add i32 %39, -1130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -430, i32 %40)
  %41 = icmp ult i32 %40, -430
  %or.cond = and i1 %cmp56.not, %41
  br i1 %or.cond, label %do.end63, label %if.end66

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %smu, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.25, i32 noundef 700, i32 noundef 1129) #9
  br label %cleanup

if.end66:                                         ; preds = %if.end55
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 203, i32 noundef %32, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end73, label %do.end70

do.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smu, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end73:                                         ; preds = %if.end66
  %50 = load i32, ptr @cyan_skillfish_user_settings.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5118, i32 %50)
  %cmp74 = icmp eq i32 %50, 5118
  br i1 %cmp74, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end73
  %call76 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 205, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.cleanup_crit_edge, label %do.end81

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %smu, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.else:                                          ; preds = %if.end73
  %sub = sub i32 1550, %50
  %mul = mul i32 %sub, 160
  %div = udiv i32 %mul, 1000
  %call85 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 204, i32 noundef %div, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.else.cleanup_crit_edge, label %do.end90

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end90:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %smu, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.42) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.else.cleanup_crit_edge, %do.end81, %if.then75.cleanup_crit_edge, %do.end70, %do.end63, %do.end52, %do.end42, %if.end36, %do.end33, %if.end25, %do.end22, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end42 ], [ -22, %do.end52 ], [ -22, %do.end63 ], [ %call, %do.end70 ], [ %call76, %do.end81 ], [ %call85, %do.end90 ], [ -22, %do.end33 ], [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %do.end22 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then75.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end36 ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyan_skillfish_read_sensor(ptr noundef %smu, i32 noundef %sensor, ptr noundef %data, ptr noundef writeonly %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %sensor_lock, i32 noundef 0) #6
  %0 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %sensor, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb2
    i32 15, label %sw.bb5
    i32 11, label %sw.bb7
    i32 10, label %sw.bb9
    i32 2, label %sw.bb11
    i32 3, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %1 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #6
  %call.i = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cyan_skillfish_get_smu_metrics_data.exit_crit_edge

sw.bb.cyan_skillfish_get_smu_metrics_data.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %GfxclkFrequency.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %GfxclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %GfxclkFrequency.i, align 4
  %conv.i = zext i16 %4 to i32
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.i, ptr %data, align 4
  br label %cyan_skillfish_get_smu_metrics_data.exit

cyan_skillfish_get_smu_metrics_data.exit:         ; preds = %if.end.i, %sw.bb.cyan_skillfish_get_smu_metrics_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i) #6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %mul = mul i32 %7, 100
  store i32 %mul, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %if.end
  %metrics_table.i40 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %metrics_table.i40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %metrics_table.i40, align 8
  %metrics_lock.i41 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i41, i32 noundef 0) #6
  %call.i42 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool.not.i43, label %if.end.i44, label %sw.bb2.cyan_skillfish_get_smu_metrics_data.exit45_crit_edge

sw.bb2.cyan_skillfish_get_smu_metrics_data.exit45_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_smu_metrics_data.exit45

if.end.i44:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %MemclkFrequency.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %MemclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %MemclkFrequency.i, align 2
  %conv14.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv14.i, ptr %data, align 4
  br label %cyan_skillfish_get_smu_metrics_data.exit45

cyan_skillfish_get_smu_metrics_data.exit45:       ; preds = %if.end.i44, %sw.bb2.cyan_skillfish_get_smu_metrics_data.exit45_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i41) #6
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %mul4 = mul i32 %14, 100
  store i32 %mul4, ptr %data, align 4
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  %metrics_table.i46 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %15 = ptrtoint ptr %metrics_table.i46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %metrics_table.i46, align 8
  %metrics_lock.i47 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i47, i32 noundef 0) #6
  %call.i48 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %if.end.i50, label %sw.bb5.cyan_skillfish_get_smu_metrics_data.exit51_crit_edge

sw.bb5.cyan_skillfish_get_smu_metrics_data.exit51_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_smu_metrics_data.exit51

if.end.i50:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %CurrentSocketPower.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %CurrentSocketPower.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %CurrentSocketPower.i, align 4
  %shl.i = shl i32 %18, 8
  %div.i = udiv i32 %shl.i, 1000
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.i, ptr %data, align 4
  br label %cyan_skillfish_get_smu_metrics_data.exit51

cyan_skillfish_get_smu_metrics_data.exit51:       ; preds = %if.end.i50, %sw.bb5.cyan_skillfish_get_smu_metrics_data.exit51_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i47) #6
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  %metrics_table.i52 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %20 = ptrtoint ptr %metrics_table.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %metrics_table.i52, align 8
  %metrics_lock.i53 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i53, i32 noundef 0) #6
  %call.i54 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %if.end.i56, label %sw.bb7.cyan_skillfish_get_smu_metrics_data.exit57_crit_edge

sw.bb7.cyan_skillfish_get_smu_metrics_data.exit57_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_smu_metrics_data.exit57

if.end.i56:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %SocTemperature.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %SocTemperature.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %SocTemperature.i, align 4
  %24 = udiv i16 %23, 100
  %div24.i = zext i16 %24 to i32
  %mul25.i = mul nuw nsw i32 %div24.i, 1000
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul25.i, ptr %data, align 4
  br label %cyan_skillfish_get_smu_metrics_data.exit57

cyan_skillfish_get_smu_metrics_data.exit57:       ; preds = %if.end.i56, %sw.bb7.cyan_skillfish_get_smu_metrics_data.exit57_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i53) #6
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %if.end
  %metrics_table.i58 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %26 = ptrtoint ptr %metrics_table.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %metrics_table.i58, align 8
  %metrics_lock.i59 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i59, i32 noundef 0) #6
  %call.i60 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %if.end.i62, label %sw.bb9.cyan_skillfish_get_smu_metrics_data.exit63_crit_edge

sw.bb9.cyan_skillfish_get_smu_metrics_data.exit63_crit_edge: ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_smu_metrics_data.exit63

if.end.i62:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %GfxTemperature.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %GfxTemperature.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %GfxTemperature.i, align 2
  %30 = udiv i16 %29, 100
  %div20.i = zext i16 %30 to i32
  %mul.i = mul nuw nsw i32 %div20.i, 1000
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i, ptr %data, align 4
  br label %cyan_skillfish_get_smu_metrics_data.exit63

cyan_skillfish_get_smu_metrics_data.exit63:       ; preds = %if.end.i62, %sw.bb9.cyan_skillfish_get_smu_metrics_data.exit63_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i59) #6
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end
  %metrics_table.i64 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %32 = ptrtoint ptr %metrics_table.i64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %metrics_table.i64, align 8
  %metrics_lock.i65 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i65, i32 noundef 0) #6
  %call.i66 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.end.i68, label %sw.bb11.cyan_skillfish_get_smu_metrics_data.exit69_crit_edge

sw.bb11.cyan_skillfish_get_smu_metrics_data.exit69_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_smu_metrics_data.exit69

if.end.i68:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %Voltage.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %Voltage.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %Voltage.i, align 4
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %data, align 4
  br label %cyan_skillfish_get_smu_metrics_data.exit69

cyan_skillfish_get_smu_metrics_data.exit69:       ; preds = %if.end.i68, %sw.bb11.cyan_skillfish_get_smu_metrics_data.exit69_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i65) #6
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end
  %metrics_table.i70 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %metrics_table.i70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %metrics_table.i70, align 8
  %metrics_lock.i71 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock.i71, i32 noundef 0) #6
  %call.i72 = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.end.i74, label %sw.bb13.cyan_skillfish_get_smu_metrics_data.exit75_crit_edge

sw.bb13.cyan_skillfish_get_smu_metrics_data.exit75_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_smu_metrics_data.exit75

if.end.i74:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx31.i = getelementptr %struct.SmuMetricsTable_t, ptr %38, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx31.i, align 4
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %data, align 4
  br label %cyan_skillfish_get_smu_metrics_data.exit75

cyan_skillfish_get_smu_metrics_data.exit75:       ; preds = %if.end.i74, %sw.bb13.cyan_skillfish_get_smu_metrics_data.exit75_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock.i71) #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %cyan_skillfish_get_smu_metrics_data.exit75, %cyan_skillfish_get_smu_metrics_data.exit69, %cyan_skillfish_get_smu_metrics_data.exit63, %cyan_skillfish_get_smu_metrics_data.exit57, %cyan_skillfish_get_smu_metrics_data.exit51, %cyan_skillfish_get_smu_metrics_data.exit45, %cyan_skillfish_get_smu_metrics_data.exit
  %ret.0.ph = phi i32 [ %call.i, %cyan_skillfish_get_smu_metrics_data.exit ], [ %call.i42, %cyan_skillfish_get_smu_metrics_data.exit45 ], [ %call.i48, %cyan_skillfish_get_smu_metrics_data.exit51 ], [ %call.i54, %cyan_skillfish_get_smu_metrics_data.exit57 ], [ %call.i60, %cyan_skillfish_get_smu_metrics_data.exit63 ], [ %call.i66, %cyan_skillfish_get_smu_metrics_data.exit69 ], [ %call.i72, %cyan_skillfish_get_smu_metrics_data.exit75 ]
  %42 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %if.end.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %sensor_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cyan_skillfish_is_dpm_running(ptr noundef %smu) #1 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #6
  %2 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %feature_mask, align 4, !annotation !91
  %3 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !91
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %feature_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %feature_mask, align 4
  %9 = load i32, ptr @cyan_skillfish_sclk_default, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %metrics_table.i, align 8
  %metrics_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %metrics_lock.i, i32 noundef 0) #6
  %call.i = call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.cyan_skillfish_get_smu_metrics_data.exit_crit_edge

if.then8.cyan_skillfish_get_smu_metrics_data.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cyan_skillfish_get_smu_metrics_data.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %GfxclkFrequency.i = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %GfxclkFrequency.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %GfxclkFrequency.i, align 4
  %conv.i = zext i16 %13 to i32
  store i32 %conv.i, ptr @cyan_skillfish_sclk_default, align 4
  br label %cyan_skillfish_get_smu_metrics_data.exit

cyan_skillfish_get_smu_metrics_data.exit:         ; preds = %if.end.i, %if.then8.cyan_skillfish_get_smu_metrics_data.exit_crit_edge
  call void @mutex_unlock(ptr noundef %metrics_lock.i) #6
  br label %if.end10

if.end10:                                         ; preds = %cyan_skillfish_get_smu_metrics_data.exit, %if.end4.if.end10_crit_edge
  %14 = and i32 %8, 8288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11 = icmp ne i32 %14, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool11, %if.end10 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyan_skillfish_init_smc_tables(ptr noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 244, ptr %arrayidx.i, align 8
  %align.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 1
  %1 = ptrtoint ptr %align.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %align.i, align 8
  %domain.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8, i32 2
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %domain.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 244) #10
  %metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %4 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %metrics_table.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %gpu_metrics_table_size.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 19
  %5 = ptrtoint ptr %gpu_metrics_table_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %gpu_metrics_table_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i26.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 128) #10
  %gpu_metrics_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %7 = ptrtoint ptr %gpu_metrics_table.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i26.i, ptr %gpu_metrics_table.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i.i26.i, null
  br i1 %tobool9.not.i, label %err1_out.i, label %if.end

err1_out.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %gpu_metrics_table_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %gpu_metrics_table_size.i, align 8
  %9 = ptrtoint ptr %metrics_table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %metrics_table.i, align 8
  tail call void @kfree(ptr noundef %10) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %metrics_time.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %11 = ptrtoint ptr %metrics_time.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metrics_time.i, align 4
  %call1 = tail call i32 @smu_v11_0_init_smc_tables(ptr noundef %smu) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err1_out.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err1_out.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyan_skillfish_finit_smc_tables(ptr nocapture noundef %smu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metrics_table, align 8
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %metrics_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %metrics_table, align 8
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %3 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpu_metrics_table, align 4
  tail call void @kfree(ptr noundef %4) #6
  %5 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %gpu_metrics_table, align 4
  %gpu_metrics_table_size = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 19
  %6 = ptrtoint ptr %gpu_metrics_table_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %gpu_metrics_table_size, align 8
  %metrics_time = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %7 = ptrtoint ptr %metrics_time to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metrics_time, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_power(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_fini_power(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_check_fw_status(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_check_fw_version(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_set_driver_table_location(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_notify_memory_pool_location(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_register_irq_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyan_skillfish_get_gpu_metrics(ptr noundef %smu, ptr nocapture noundef writeonly %table) #1 align 64 {
entry:
  %metrics = alloca %struct.SmuMetrics_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %0 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu_metrics_table, align 4
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %metrics) #6
  %2 = call ptr @memset(ptr %metrics, i32 255, i32 244)
  %call = call i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef nonnull %metrics, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @smu_cmn_init_soft_gpu_metrics(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  %GfxTemperature = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 7
  %3 = ptrtoint ptr %GfxTemperature to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %GfxTemperature, align 2
  %temperature_gfx = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %temperature_gfx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %temperature_gfx, align 4
  %SocTemperature = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 16
  %6 = ptrtoint ptr %SocTemperature to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %SocTemperature, align 4
  %temperature_soc = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %temperature_soc to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %temperature_soc, align 2
  %CurrentSocketPower = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 15
  %9 = ptrtoint ptr %CurrentSocketPower to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %CurrentSocketPower, align 4
  %conv = trunc i32 %10 to i16
  %average_socket_power = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %average_socket_power to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %average_socket_power, align 8
  %Power = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 14
  %12 = ptrtoint ptr %Power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Power, align 4
  %conv5 = trunc i32 %13 to i16
  %average_soc_power = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %average_soc_power to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5, ptr %average_soc_power, align 4
  %arrayidx8 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8, align 4
  %conv9 = trunc i32 %16 to i16
  %average_gfx_power = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %average_gfx_power to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv9, ptr %average_gfx_power, align 2
  %GfxclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %GfxclkFrequency to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %GfxclkFrequency, align 4
  %average_gfxclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %average_gfxclk_frequency to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %average_gfxclk_frequency, align 8
  %SocclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %SocclkFrequency to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %SocclkFrequency, align 4
  %average_socclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %average_socclk_frequency to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %average_socclk_frequency, align 2
  %MemclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 11
  %24 = ptrtoint ptr %MemclkFrequency to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %MemclkFrequency, align 2
  %average_uclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %average_uclk_frequency to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %average_uclk_frequency, align 4
  %27 = load i16, ptr %MemclkFrequency, align 2
  %average_fclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 16
  %28 = ptrtoint ptr %average_fclk_frequency to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %average_fclk_frequency, align 2
  %VclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 9
  %29 = ptrtoint ptr %VclkFrequency to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %VclkFrequency, align 2
  %average_vclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %average_vclk_frequency to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %average_vclk_frequency, align 8
  %DclkFrequency = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 10
  %32 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %DclkFrequency, align 4
  %average_dclk_frequency = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 18
  %34 = ptrtoint ptr %average_dclk_frequency to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %average_dclk_frequency, align 2
  %GfxclkFrequency17 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 6
  %35 = ptrtoint ptr %GfxclkFrequency17 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %GfxclkFrequency17, align 4
  %current_gfxclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 19
  %37 = ptrtoint ptr %current_gfxclk to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %current_gfxclk, align 4
  %SocclkFrequency19 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 8
  %38 = ptrtoint ptr %SocclkFrequency19 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %SocclkFrequency19, align 4
  %current_socclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %current_socclk to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %current_socclk, align 2
  %MemclkFrequency21 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 11
  %41 = ptrtoint ptr %MemclkFrequency21 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %MemclkFrequency21, align 2
  %current_uclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 21
  %43 = ptrtoint ptr %current_uclk to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %current_uclk, align 8
  %current_fclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 22
  %44 = ptrtoint ptr %current_fclk to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %42, ptr %current_fclk, align 2
  %VclkFrequency25 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 9
  %45 = ptrtoint ptr %VclkFrequency25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %VclkFrequency25, align 2
  %current_vclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 23
  %47 = ptrtoint ptr %current_vclk to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %current_vclk, align 4
  %DclkFrequency27 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 10
  %48 = ptrtoint ptr %DclkFrequency27 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %DclkFrequency27, align 4
  %current_dclk = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 24
  %50 = ptrtoint ptr %current_dclk to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %current_dclk, align 2
  %arrayidx30 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 2, i32 0
  %51 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 3, i32 0
  %53 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx31, align 2
  %arrayidx33 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 1, i32 0
  %54 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx33, align 4
  %conv34 = trunc i32 %55 to i16
  %arrayidx35 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 12, i32 0
  %56 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv34, ptr %arrayidx35, align 2
  %57 = ptrtoint ptr %metrics to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %metrics, align 4
  %arrayidx38 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 25, i32 0
  %59 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx38, align 2
  %arrayidx30.1 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx30.1, align 2
  %arrayidx31.1 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %arrayidx31.1, align 2
  %arrayidx33.1 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 1, i32 1
  %63 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx33.1, align 4
  %conv34.1 = trunc i32 %64 to i16
  %arrayidx35.1 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 12, i32 1
  %65 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv34.1, ptr %arrayidx35.1, align 2
  %arrayidx37.1 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx37.1, align 2
  %arrayidx38.1 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 25, i32 1
  %68 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx38.1, align 2
  %arrayidx30.2 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx30.2, align 4
  %arrayidx31.2 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %arrayidx31.2, align 2
  %arrayidx33.2 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 1, i32 2
  %72 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx33.2, align 4
  %conv34.2 = trunc i32 %73 to i16
  %arrayidx35.2 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 12, i32 2
  %74 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv34.2, ptr %arrayidx35.2, align 2
  %arrayidx37.2 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx37.2, align 4
  %arrayidx38.2 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 25, i32 2
  %77 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx38.2, align 2
  %arrayidx30.3 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 2, i32 3
  %78 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx30.3, align 2
  %arrayidx31.3 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 3, i32 3
  %80 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %arrayidx31.3, align 2
  %arrayidx33.3 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 1, i32 3
  %81 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx33.3, align 4
  %conv34.3 = trunc i32 %82 to i16
  %arrayidx35.3 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 12, i32 3
  %83 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv34.3, ptr %arrayidx35.3, align 2
  %arrayidx37.3 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx37.3, align 2
  %arrayidx38.3 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 25, i32 3
  %86 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %arrayidx38.3, align 2
  %arrayidx30.4 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 2, i32 4
  %87 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx30.4, align 4
  %arrayidx31.4 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 3, i32 4
  %89 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %arrayidx31.4, align 2
  %arrayidx33.4 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 1, i32 4
  %90 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx33.4, align 4
  %conv34.4 = trunc i32 %91 to i16
  %arrayidx35.4 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 12, i32 4
  %92 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv34.4, ptr %arrayidx35.4, align 2
  %arrayidx37.4 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 4
  %93 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx37.4, align 4
  %arrayidx38.4 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 25, i32 4
  %95 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %arrayidx38.4, align 2
  %arrayidx30.5 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 2, i32 5
  %96 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx30.5, align 2
  %arrayidx31.5 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 3, i32 5
  %98 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %arrayidx31.5, align 2
  %arrayidx33.5 = getelementptr inbounds %struct.SmuMetrics_t, ptr %metrics, i32 0, i32 1, i32 1, i32 5
  %99 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx33.5, align 4
  %conv34.5 = trunc i32 %100 to i16
  %arrayidx35.5 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 12, i32 5
  %101 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv34.5, ptr %arrayidx35.5, align 2
  %arrayidx37.5 = getelementptr inbounds [6 x i16], ptr %metrics, i32 0, i32 5
  %102 = ptrtoint ptr %arrayidx37.5 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx37.5, align 2
  %arrayidx38.5 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 25, i32 5
  %104 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %arrayidx38.5, align 2
  %arrayidx44 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 4, i32 0
  %105 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx44, align 4
  %arrayidx45 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 4, i32 0
  %107 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %arrayidx45, align 2
  %arrayidx47 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 3, i32 0
  %108 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx47, align 4
  %arrayidx48 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 26, i32 0
  %110 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %arrayidx48, align 2
  %arrayidx44.1 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx44.1, align 2
  %arrayidx45.1 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %arrayidx45.1, align 2
  %arrayidx47.1 = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 3, i32 1
  %114 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx47.1, align 2
  %arrayidx48.1 = getelementptr %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 26, i32 1
  %116 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %arrayidx48.1, align 2
  %ThrottlerStatus = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %metrics, i32 0, i32 18
  %117 = ptrtoint ptr %ThrottlerStatus to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %ThrottlerStatus, align 4
  %conv53 = zext i16 %118 to i32
  %throttle_status = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 27
  %119 = ptrtoint ptr %throttle_status to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv53, ptr %throttle_status, align 4
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 1) #6
  %system_clock_counter = getelementptr inbounds %struct.gpu_metrics_v2_2, ptr %1, i32 0, i32 7
  %120 = ptrtoint ptr %system_clock_counter to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %call.i.i, ptr %system_clock_counter, align 8
  %121 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %1, ptr %table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 128, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %metrics) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_v11_0_interrupt_work(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyan_skillfish_get_smu_metrics_data(ptr noundef %smu, i32 noundef %member, ptr nocapture noundef writeonly %value) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %metrics_table, align 8
  %metrics_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock, i32 noundef 0) #6
  %call = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef null, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %member to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %member, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb6
    i32 5, label %sw.bb9
    i32 2, label %sw.bb12
    i32 19, label %sw.bb15
    i32 20, label %sw.bb17
    i32 21, label %sw.bb21
    i32 28, label %sw.bb26
    i32 29, label %sw.bb28
    i32 26, label %sw.bb32
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %GfxclkFrequency = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %GfxclkFrequency to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %GfxclkFrequency, align 4
  %conv = zext i16 %4 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %SocclkFrequency = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %SocclkFrequency to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %SocclkFrequency, align 4
  %conv5 = zext i16 %6 to i32
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %VclkFrequency = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %VclkFrequency to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %VclkFrequency, align 2
  %conv8 = zext i16 %8 to i32
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %DclkFrequency = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %DclkFrequency to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %DclkFrequency, align 4
  %conv11 = zext i16 %10 to i32
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %MemclkFrequency = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %MemclkFrequency to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %MemclkFrequency, align 2
  %conv14 = zext i16 %12 to i32
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %CurrentSocketPower = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %CurrentSocketPower to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %CurrentSocketPower, align 4
  %shl = shl i32 %14, 8
  %div = udiv i32 %shl, 1000
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %GfxTemperature = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %GfxTemperature to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %GfxTemperature, align 2
  %17 = udiv i16 %16, 100
  %div20 = zext i16 %17 to i32
  %mul = mul nuw nsw i32 %div20, 1000
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %SocTemperature = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %SocTemperature to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %SocTemperature, align 4
  %20 = udiv i16 %19, 100
  %div24 = zext i16 %20 to i32
  %mul25 = mul nuw nsw i32 %div24, 1000
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %Voltage = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %Voltage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %Voltage, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx31 = getelementptr %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx31, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ThrottlerStatus = getelementptr inbounds %struct.SmuMetricsTable_t, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %ThrottlerStatus to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ThrottlerStatus, align 4
  %conv34 = zext i16 %26 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb28, %sw.bb26, %sw.bb21, %sw.bb17, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ %conv34, %sw.bb32 ], [ %24, %sw.bb28 ], [ %22, %sw.bb26 ], [ %mul25, %sw.bb21 ], [ %mul, %sw.bb17 ], [ %div, %sw.bb15 ], [ %conv14, %sw.bb12 ], [ %conv11, %sw.bb9 ], [ %conv8, %sw.bb6 ], [ %conv5, %sw.bb3 ], [ %conv, %sw.bb ], [ -1, %if.end.sw.epilog_crit_edge ]
  %27 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %metrics_lock) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_init_smc_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_metrics_table(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_cmn_init_soft_gpu_metrics(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @cyan_skillfish_ppt_funcs, !1, !"cyan_skillfish_ppt_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 555, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 321, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 321, i32 44}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 322, i32 36}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 328, i32 44}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 329, i32 36}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 332, i32 45}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 333, i32 36}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 335, i32 36}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 359, i32 36}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 360, i32 14}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 360, i32 20}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 361, i32 36}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 364, i32 36}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 368, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cyan_skillfish_print_clk_levels._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @cyan_skillfish_print_clk_levels._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @cyan_skillfish_sclk_default, !37, !"cyan_skillfish_sclk_default", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 61, i32 17}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 468, i32 4}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 474, i32 4}
!46 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 481, i32 4}
!50 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.27, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 492, i32 4}
!54 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.29, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 502, i32 4}
!57 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.31, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 508, i32 4}
!60 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.33, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 516, i32 4}
!63 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 524, i32 4}
!66 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 531, i32 5}
!70 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 542, i32 5}
!74 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cyan_skillfish_od_edit_dpm_table._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"cyan_skillfish_user_settings", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 59, i32 3}
!78 = !{ptr @cyan_skillfish_message_map, !79, !"cyan_skillfish_message_map", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 69, i32 36}
!80 = !{ptr @cyan_skillfish_table_map, !81, !"cyan_skillfish_table_map", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu11/cyan_skillfish_ppt.c", i32 83, i32 32}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i8 0, i8 2}
