; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_umc.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_umc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ras_fs_if = type { %struct.ras_common_if, ptr, [32 x i8] }
%struct.ras_common_if = type { i32, i32, i32, [32 x i8] }
%struct.ras_ih_if = type { %struct.ras_common_if, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ras_manager = type { %struct.ras_common_if, i32, %struct.list_head, ptr, %struct.device_attribute, i32, %struct.ras_fs_data, %struct.ras_ih_data, %struct.ras_err_data }
%struct.list_head = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ras_fs_data = type { [32 x i8], [32 x i8] }
%struct.ras_ih_data = type { %struct.work_struct, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ras_err_data = type { i32, i32, i32, ptr }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_ras = type { i32, %struct.list_head, %struct.device_attribute, %struct.bin_attribute, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, ptr, %struct.mutex, i32, i8, %struct.amdgpu_ras_eeprom_control, i8, i32, i8, i8, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.umc_ecc_info }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ras_eeprom_control = type { %struct.amdgpu_ras_eeprom_table_header, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.amdgpu_ras_eeprom_table_header = type { i32, i32, i32, i32, i32 }
%struct.umc_ecc_info = type { [32 x %struct.ecc_info_per_ch] }
%struct.ecc_info_per_ch = type { i16, i16, i64, i64 }
%struct.amdgpu_umc_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ras_dispatch_if = type { %struct.ras_common_if, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"umc_err_count\00", [18 x i8] zeroinitializer }, align 32
@__const.amdgpu_umc_ras_late_init.fs_info = private unnamed_addr constant %struct.ras_fs_if { %struct.ras_common_if zeroinitializer, ptr @.str, [32 x i8] zeroinitializer }, align 4
@__const.amdgpu_umc_ras_late_init.ih_info = private unnamed_addr constant %struct.ras_ih_if { %struct.ras_common_if zeroinitializer, ptr @amdgpu_umc_process_ras_data_cb }, align 4
@amdgpu_umc_do_page_retirement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 54, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"amdgpu: Failed to alloc memory for umc error address record!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu_umc_do_page_retirement\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_umc.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_umc_do_page_retirement._entry_ptr = internal global ptr @amdgpu_umc_do_page_retirement._entry, section ".printk_index", align 4
@amdgpu_umc_do_page_retirement._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 78, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@amdgpu_umc_do_page_retirement._entry_ptr.7 = internal global ptr @amdgpu_umc_do_page_retirement._entry.6, section ".printk_index", align 4
@amdgpu_umc_do_page_retirement._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 91, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"amdgpu: %ld uncorrectable hardware errors detected in UMC block\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_umc_do_page_retirement._entry_ptr.11 = internal global ptr @amdgpu_umc_do_page_retirement._entry.8, section ".printk_index", align 4
@amdgpu_bad_page_threshold = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 144, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 53, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 77, i32 5 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_umc.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 89, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @amdgpu_umc_do_page_retirement._entry, ptr @amdgpu_umc_do_page_retirement._entry.6, ptr @amdgpu_umc_do_page_retirement._entry.8, ptr @amdgpu_umc_do_page_retirement._entry_ptr, ptr @amdgpu_umc_do_page_retirement._entry_ptr.11, ptr @amdgpu_umc_do_page_retirement._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_umc_do_page_retirement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_umc_do_page_retirement._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_umc_do_page_retirement._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_umc_poison_handler(ptr noundef %adev, ptr noundef %ras_error_status, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.ras_common_if, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %head) #8
  %0 = call ptr @memset(ptr %head, i32 0, i32 44)
  %call = call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef nonnull %head) #8
  call fastcc void @amdgpu_umc_do_page_retirement(ptr noundef %adev, ptr noundef %ras_error_status, i1 noundef zeroext %reset)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ras_error_status, align 4
  %err_data3 = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %err_data3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err_data3, align 4
  %add = add i32 %4, %2
  store i32 %add, ptr %err_data3, align 4
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %5 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ce_count, align 4
  %ce_count6 = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %ce_count6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ce_count6, align 4
  %add7 = add i32 %8, %6
  store i32 %add7, ptr %ce_count6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %head) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ras_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_umc_do_page_retirement(ptr noundef %adev, ptr noundef %ras_error_status, i1 noundef zeroext %reset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %smu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %umc_ecc = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 21
  %call = tail call i32 @smu_get_ecc_info(ptr noundef %smu, ptr noundef %umc_ecc) #8
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.if.end75_crit_edge [
    i32 -95, label %if.then
    i32 0, label %if.then33
  ]

entry.if.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then:                                          ; preds = %entry
  %umc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 7
  %3 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ras_funcs, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then.if.end75_crit_edge, label %land.lhs.true

if.then.if.end75_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true:                                    ; preds = %if.then
  %query_ras_error_count = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %query_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %query_ras_error_count, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(ptr noundef %adev, ptr noundef %ras_error_status) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true.if.end_crit_edge
  %7 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %ras_funcs, align 4
  %tobool11.not = icmp eq ptr %.pr, null
  br i1 %tobool11.not, label %if.end.if.end75_crit_edge, label %land.lhs.true12

if.end.if.end75_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true12:                                  ; preds = %if.end
  %query_ras_error_address = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %.pr, i32 0, i32 4
  %8 = ptrtoint ptr %query_ras_error_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %query_ras_error_address, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %land.lhs.true12.if.end75_crit_edge, label %land.lhs.true16

land.lhs.true12.if.end75_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %10 = ptrtoint ptr %umc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %umc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %land.lhs.true16.if.end75_crit_edge, label %if.then19

land.lhs.true16.if.end75_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then19:                                        ; preds = %land.lhs.true16
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 31) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !27

kcalloc.exit.thread:                              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %err_addr37 = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %14 = ptrtoint ptr %err_addr37 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %err_addr37, align 4
  br label %do.end

if.end7.i.i:                                      ; preds = %if.then19
  %15 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #11
  %err_addr = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %16 = ptrtoint ptr %err_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %err_addr, align 4
  %tobool24.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool24.not, label %if.end7.i.i.do.end_crit_edge, label %if.end7.i.i.if.end27_crit_edge

if.end7.i.i.if.end27_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end7.i.i.do.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end7.i.i.do.end_crit_edge, %kcalloc.exit.thread
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.1) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.end7.i.i.if.end27_crit_edge
  %19 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ras_funcs, align 4
  %query_ras_error_address30 = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %20, i32 0, i32 4
  br label %if.end75.sink.split

if.then33:                                        ; preds = %entry
  %umc34 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116
  %ras_funcs35 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 7
  %21 = ptrtoint ptr %ras_funcs35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ras_funcs35, align 4
  %tobool36.not = icmp eq ptr %22, null
  br i1 %tobool36.not, label %if.then33.if.end75_crit_edge, label %land.lhs.true37

if.then33.if.end75_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true37:                                  ; preds = %if.then33
  %ecc_info_query_ras_error_count = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %ecc_info_query_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ecc_info_query_ras_error_count, align 4
  %tobool40.not = icmp eq ptr %24, null
  br i1 %tobool40.not, label %land.lhs.true37.if.end45_crit_edge, label %if.then41

land.lhs.true37.if.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %24(ptr noundef %adev, ptr noundef %ras_error_status) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %land.lhs.true37.if.end45_crit_edge
  %25 = ptrtoint ptr %ras_funcs35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr43 = load ptr, ptr %ras_funcs35, align 4
  %tobool48.not = icmp eq ptr %.pr43, null
  br i1 %tobool48.not, label %if.end45.if.end75_crit_edge, label %land.lhs.true49

if.end45.if.end75_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true49:                                  ; preds = %if.end45
  %ecc_info_query_ras_error_address = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %.pr43, i32 0, i32 7
  %26 = ptrtoint ptr %ecc_info_query_ras_error_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ecc_info_query_ras_error_address, align 4
  %tobool52.not = icmp eq ptr %27, null
  br i1 %tobool52.not, label %land.lhs.true49.if.end75_crit_edge, label %land.lhs.true53

land.lhs.true49.if.end75_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %28 = ptrtoint ptr %umc34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %umc34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool56.not = icmp eq i32 %29, 0
  br i1 %tobool56.not, label %land.lhs.true53.if.end75_crit_edge, label %if.then57

land.lhs.true53.if.end75_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then57:                                        ; preds = %land.lhs.true53
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 31) #8
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kcalloc.exit33.thread, label %if.end7.i.i31, !prof !27

kcalloc.exit33.thread:                            ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %err_addr6146 = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %32 = ptrtoint ptr %err_addr6146 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %err_addr6146, align 4
  br label %do.end67

if.end7.i.i31:                                    ; preds = %if.then57
  %33 = extractvalue { i32, i1 } %30, 0
  %call8.i.i30 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #11
  %err_addr61 = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %34 = ptrtoint ptr %err_addr61 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i30, ptr %err_addr61, align 4
  %tobool63.not = icmp eq ptr %call8.i.i30, null
  br i1 %tobool63.not, label %if.end7.i.i31.do.end67_crit_edge, label %if.end7.i.i31.if.end69_crit_edge

if.end7.i.i31.if.end69_crit_edge:                 ; preds = %if.end7.i.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end7.i.i31.do.end67_crit_edge:                 ; preds = %if.end7.i.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

do.end67:                                         ; preds = %if.end7.i.i31.do.end67_crit_edge, %kcalloc.exit33.thread
  %35 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.1) #12
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %if.end7.i.i31.if.end69_crit_edge
  %37 = ptrtoint ptr %ras_funcs35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ras_funcs35, align 4
  %ecc_info_query_ras_error_address72 = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %38, i32 0, i32 7
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %if.end69, %if.end27
  %ecc_info_query_ras_error_address72.sink = phi ptr [ %ecc_info_query_ras_error_address72, %if.end69 ], [ %query_ras_error_address30, %if.end27 ]
  %39 = ptrtoint ptr %ecc_info_query_ras_error_address72.sink to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ecc_info_query_ras_error_address72.sink, align 4
  tail call void %40(ptr noundef %adev, ptr noundef %ras_error_status) #8
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %land.lhs.true53.if.end75_crit_edge, %land.lhs.true49.if.end75_crit_edge, %if.end45.if.end75_crit_edge, %if.then33.if.end75_crit_edge, %land.lhs.true16.if.end75_crit_edge, %land.lhs.true12.if.end75_crit_edge, %if.end.if.end75_crit_edge, %if.then.if.end75_crit_edge, %entry.if.end75_crit_edge
  %41 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ras_error_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool76.not = icmp eq i32 %42, 0
  br i1 %tobool76.not, label %if.end75.if.end109_crit_edge, label %do.end80

if.end75.if.end109_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

do.end80:                                         ; preds = %if.end75
  %43 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.9, i32 noundef %42) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %45 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp83.not = icmp eq i32 %45, 0
  br i1 %cmp83.not, label %do.end80.if.end104_crit_edge, label %land.lhs.true84

do.end80.if.end104_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

land.lhs.true84:                                  ; preds = %do.end80
  %err_addr_cnt = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 2
  %46 = ptrtoint ptr %err_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err_addr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool85.not = icmp eq i32 %47, 0
  br i1 %tobool85.not, label %land.lhs.true84.if.end104_crit_edge, label %if.then86

land.lhs.true84.if.end104_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then86:                                        ; preds = %land.lhs.true84
  %err_addr87 = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %48 = ptrtoint ptr %err_addr87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %err_addr87, align 4
  %call89 = tail call i32 @amdgpu_ras_add_bad_pages(ptr noundef %adev, ptr noundef %49, i32 noundef %47) #8
  %call90 = tail call i32 @amdgpu_ras_save_bad_pages(ptr noundef %adev) #8
  %ppt_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 2
  %50 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ppt_funcs, align 8
  %tobool92.not = icmp eq ptr %51, null
  br i1 %tobool92.not, label %if.then86.if.end104_crit_edge, label %land.lhs.true93

if.then86.if.end104_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

land.lhs.true93:                                  ; preds = %if.then86
  %send_hbm_bad_pages_num = getelementptr inbounds %struct.pptable_funcs, ptr %51, i32 0, i32 110
  %52 = ptrtoint ptr %send_hbm_bad_pages_num to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %send_hbm_bad_pages_num, align 4
  %tobool96.not = icmp eq ptr %53, null
  br i1 %tobool96.not, label %land.lhs.true93.if.end104_crit_edge, label %if.then97

land.lhs.true93.if.end104_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then97:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #10
  %ras_num_recs = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 13, i32 4
  %54 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ras_num_recs, align 8
  %call102 = tail call i32 %53(ptr noundef %smu, i32 noundef %55) #8
  br label %if.end104

if.end104:                                        ; preds = %if.then97, %land.lhs.true93.if.end104_crit_edge, %if.then86.if.end104_crit_edge, %land.lhs.true84.if.end104_crit_edge, %do.end80.if.end104_crit_edge
  br i1 %reset, label %if.then106, label %if.end104.if.end109_crit_edge

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then106:                                       ; preds = %if.end104
  %56 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ras, align 8
  %in_recovery.i = getelementptr inbounds %struct.amdgpu_ras, ptr %57, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_recovery.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %in_recovery.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then106
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %in_recovery.i, ptr %in_recovery.i, i32 0, i32 1, ptr elementtype(i32) %in_recovery.i) #8, !srcloc !29
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %58, 0
  %tobool.not.i.i.i.i34 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i34, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %58, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %atomic_cmpxchg.exit.i.if.end109_crit_edge

atomic_cmpxchg.exit.i.if.end109_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then.i:                                        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %recovery_work.i = getelementptr inbounds %struct.amdgpu_ras, ptr %57, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i1.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %recovery_work.i) #8
  br label %if.end109

if.end109:                                        ; preds = %if.then.i, %atomic_cmpxchg.exit.i.if.end109_crit_edge, %if.end104.if.end109_crit_edge, %if.end75.if.end109_crit_edge
  %err_addr110 = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %60 = ptrtoint ptr %err_addr110 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %err_addr110, align 4
  tail call void @kfree(ptr noundef %61) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_umc_ras_late_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %fs_info = alloca %struct.ras_fs_if, align 4
  %ih_info = alloca %struct.ras_ih_if, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %fs_info) #8
  %0 = call ptr @memcpy(ptr %fs_info, ptr @__const.amdgpu_umc_ras_late_init.fs_info, i32 80)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_info) #8
  %1 = call ptr @memcpy(ptr %ih_info, ptr @__const.amdgpu_umc_ras_late_init.ih_info, i32 48)
  %ras_if = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 5
  %2 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras_if, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 44) #13
  %5 = ptrtoint ptr %ras_if to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %ras_if, align 4
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call7.i, align 8
  %type = getelementptr inbounds %struct.ras_common_if, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %type, align 4
  %sub_block_index = getelementptr inbounds %struct.ras_common_if, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %sub_block_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sub_block_index, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %9 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ras_if, align 4
  %11 = call ptr @memcpy(ptr %fs_info, ptr %10, i32 44)
  %12 = call ptr @memmove(ptr %ih_info, ptr %10, i32 44)
  %call19 = call i32 @amdgpu_ras_late_init(ptr noundef %adev, ptr noundef %10, ptr noundef nonnull %fs_info, ptr noundef nonnull %ih_info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.free_crit_edge

if.end13.free_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end22:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ras_if, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %16)
  %cmp.i = icmp ugt i32 %16, 14
  br i1 %cmp.i, label %if.end22.free_crit_edge, label %if.end.i

if.end22.free_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end.i:                                         ; preds = %if.end22
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %17 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i.free_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i.free_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

amdgpu_ras_is_supported.exit:                     ; preds = %if.end.i
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %19 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ras_enabled.i, align 8
  %21 = shl nuw nsw i32 1, %16
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not = icmp eq i32 %22, 0
  br i1 %tobool27.not, label %amdgpu_ras_is_supported.exit.free_crit_edge, label %if.then28

amdgpu_ras_is_supported.exit.free_crit_edge:      ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.then28:                                        ; preds = %amdgpu_ras_is_supported.exit
  %ecc_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 40
  %call29 = call i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %ecc_irq, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %late_fini

if.end33:                                         ; preds = %if.then28
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 7
  %23 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ras_funcs, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %land.lhs.true

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end33
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool38.not = icmp eq ptr %26, null
  br i1 %tobool38.not, label %land.lhs.true.cleanup_crit_edge, label %if.then39

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void %26(ptr noundef %adev) #8
  br label %cleanup

late_fini:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ras_if, align 4
  call void @amdgpu_ras_late_fini(ptr noundef %adev, ptr noundef %28, ptr noundef nonnull %ih_info) #8
  br label %free

free:                                             ; preds = %late_fini, %amdgpu_ras_is_supported.exit.free_crit_edge, %if.end.i.free_crit_edge, %if.end22.free_crit_edge, %if.end13.free_crit_edge
  %r.0 = phi i32 [ %call19, %if.end13.free_crit_edge ], [ %call29, %late_fini ], [ 0, %amdgpu_ras_is_supported.exit.free_crit_edge ], [ 0, %if.end22.free_crit_edge ], [ 0, %if.end.i.free_crit_edge ]
  %29 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ras_if, align 4
  call void @kfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %ras_if to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %ras_if, align 4
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then39, %land.lhs.true.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %free ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_info) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %fs_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_umc_process_ras_data_cb(ptr noundef %adev, ptr noundef %ras_error_status, ptr nocapture noundef readnone %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amdgpu_umc_do_page_retirement(ptr noundef %adev, ptr noundef %ras_error_status, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_late_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ras_late_fini(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_umc_ras_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %ih_info = alloca %struct.ras_ih_if, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %amdgpu_ras_is_supported.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end_crit_edge, label %land.lhs.true

amdgpu_ras_is_supported.exit.if.end_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %amdgpu_ras_is_supported.exit
  %ras_if = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 5
  %5 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ras_if, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_info) #8
  %7 = call ptr @memcpy(ptr %ih_info, ptr %6, i32 44)
  %cb = getelementptr inbounds %struct.ras_ih_if, ptr %ih_info, i32 0, i32 1
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @amdgpu_umc_process_ras_data_cb, ptr %cb, align 4
  call void @amdgpu_ras_late_fini(ptr noundef %adev, ptr noundef nonnull %6, ptr noundef nonnull %ih_info) #8
  call void @kfree(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_info) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %amdgpu_ras_is_supported.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_umc_process_ecc_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %ih_data = alloca %struct.ras_dispatch_if, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_if2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 5
  %0 = ptrtoint ptr %ras_if2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras_if2, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_data) #8
  %entry3 = getelementptr inbounds %struct.ras_dispatch_if, ptr %ih_data, i32 0, i32 1
  %2 = ptrtoint ptr %entry3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry1, ptr %entry3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = call ptr @memcpy(ptr %ih_data, ptr %1, i32 44)
  %call = call i32 @amdgpu_ras_interrupt_dispatch(ptr noundef %adev, ptr noundef nonnull %ih_data) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_data) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_interrupt_dispatch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_get_ecc_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_add_bad_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_save_bad_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_umc.c", i32 144, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_umc.c", i32 53, i32 5}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @amdgpu_umc_do_page_retirement._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @amdgpu_umc_do_page_retirement._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @amdgpu_umc_do_page_retirement._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_umc.c", i32 77, i32 5}
!12 = !{ptr @amdgpu_umc_do_page_retirement._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_umc.c", i32 89, i32 3}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @amdgpu_umc_do_page_retirement._entry.8, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @amdgpu_umc_do_page_retirement._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2148790493}
!29 = !{i64 1174159, i64 1174183, i64 1174204, i64 1174221, i64 1174238}
!30 = !{i64 2148790719}
