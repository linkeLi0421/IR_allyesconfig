; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ras_fs_if = type { %struct.ras_common_if, ptr, [32 x i8] }
%struct.ras_common_if = type { i32, i32, i32, [32 x i8] }
%struct.ras_ih_if = type { %struct.ras_common_if, ptr }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.kiq_pm4_funcs = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.amdgpu_gfx_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_gfx_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ras = type { i32, %struct.list_head, %struct.device_attribute, %struct.bin_attribute, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, ptr, %struct.mutex, i32, i8, %struct.amdgpu_ras_eeprom_control, i8, i32, i8, i8, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.umc_ecc_info }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ras_eeprom_control = type { %struct.amdgpu_ras_eeprom_table_header, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.amdgpu_ras_eeprom_table_header = type { i32, i32, i32, i32, i32 }
%struct.umc_ecc_info = type { [32 x %struct.ecc_info_per_ch] }
%struct.ecc_info_per_ch = type { i16, i16, i64, i64 }
%struct.ras_dispatch_if = type { %struct.ras_common_if, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.amd_pm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@amdgpu_disable_cu = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%u.%u\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: could not parse disable_cu\0A\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_gfx_parse_disable_cu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] amdgpu: disabling CU %u.%u.%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_gfx_parse_disable_cu\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_gfx_parse_disable_cu._entry_ptr = internal global ptr @amdgpu_gfx_parse_disable_cu._entry, section ".printk_index", align 4
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: disable_cu %u.%u.%u is out of range\0A\00", [51 x i8] zeroinitializer }, align 32
@amdgpu_gfx_compute_queue_acquire.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu_gfx_compute_queue_acquire\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: mec queue bitmap weight=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_gfx_kiq_init_ring.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&kiq->ring_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kiq_%d.%d.%d\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_gfx_kiq_init_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 318, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: (%d) failed to init kiq ring\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu_gfx_kiq_init_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_gfx_kiq_init_ring._entry_ptr = internal global ptr @amdgpu_gfx_kiq_init_ring._entry, section ".printk_index", align 4
@amdgpu_gfx_kiq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 346, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: failed to create KIQ bo (%d).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu_gfx_kiq_init\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_gfx_kiq_init._entry_ptr = internal global ptr @amdgpu_gfx_kiq_init._entry, section ".printk_index", align 4
@amdgpu_gfx_kiq_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 354, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: (%d) reserve kiq eop bo failed\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_gfx_kiq_init._entry_ptr.19 = internal global ptr @amdgpu_gfx_kiq_init._entry.17, section ".printk_index", align 4
@amdgpu_gfx_mqd_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 380, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: failed to create ring mqd ob (%d)\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_gfx_mqd_sw_init\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_gfx_mqd_sw_init._entry_ptr = internal global ptr @amdgpu_gfx_mqd_sw_init._entry, section ".printk_index", align 4
@amdgpu_gfx_mqd_sw_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 387, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: no memory to create MQD backup for ring %s\0A\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_gfx_mqd_sw_init._entry_ptr.24 = internal global ptr @amdgpu_gfx_mqd_sw_init._entry.22, section ".printk_index", align 4
@amdgpu_async_gfx_ring = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_gfx_mqd_sw_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 399, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: failed to create ring mqd bo (%d)\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_gfx_mqd_sw_init._entry_ptr.27 = internal global ptr @amdgpu_gfx_mqd_sw_init._entry.25, section ".printk_index", align 4
@amdgpu_gfx_mqd_sw_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 406, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@amdgpu_gfx_mqd_sw_init._entry_ptr.29 = internal global ptr @amdgpu_gfx_mqd_sw_init._entry.28, section ".printk_index", align 4
@amdgpu_gfx_mqd_sw_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 419, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@amdgpu_gfx_mqd_sw_init._entry_ptr.31 = internal global ptr @amdgpu_gfx_mqd_sw_init._entry.30, section ".printk_index", align 4
@amdgpu_gfx_mqd_sw_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 426, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@amdgpu_gfx_mqd_sw_init._entry_ptr.33 = internal global ptr @amdgpu_gfx_mqd_sw_init._entry.32, section ".printk_index", align 4
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid KCQ enabled: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_gfx_enable_kcq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] kiq ring mec %d pipe %d q %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu_gfx_enable_kcq\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_gfx_enable_kcq._entry_ptr = internal global ptr @amdgpu_gfx_enable_kcq._entry, section ".printk_index", align 4
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to lock KIQ (%d).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"KCQ enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_gfx_off_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_gfx_off_ctrl.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu_gfx_off_ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: GFXOFF is disabled, re-init SPM golden settings\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfx_err_count\00", [18 x i8] zeroinitializer }, align 32
@__const.amdgpu_gfx_ras_late_init.fs_info = private unnamed_addr constant %struct.ras_fs_if { %struct.ras_common_if zeroinitializer, ptr @.str.41, [32 x i8] zeroinitializer }, align 4
@__const.amdgpu_gfx_ras_late_init.ih_info = private unnamed_addr constant %struct.ras_ih_if { %struct.ras_common_if zeroinitializer, ptr @amdgpu_gfx_process_ras_data_cb }, align 4
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CP ECC ERROR IRQ\0A\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_kiq_rreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013amdgpu: critical bug! too many kiq readers\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_kiq_rreg\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_kiq_rreg._entry_ptr = internal global ptr @amdgpu_kiq_rreg._entry, section ".printk_index", align 4
@amdgpu_kiq_rreg._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 786, ptr @.str.47, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: failed to read reg:%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_kiq_rreg._entry_ptr.48 = internal global ptr @amdgpu_kiq_rreg._entry.45, section ".printk_index", align 4
@amdgpu_kiq_wreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 842, ptr @.str.47, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: failed to write reg:%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_kiq_wreg\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_kiq_wreg._entry_ptr = internal global ptr @amdgpu_kiq_wreg._entry, section ".printk_index", align 4
@amdgpu_num_kcq = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_gfx_get_num_kcq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 850, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"amdgpu: set kernel compute queue number to 8 due to invalid parameter provided by user\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_gfx_get_num_kcq\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_gfx_get_num_kcq._entry_ptr = internal global ptr @amdgpu_gfx_get_num_kcq._entry, section ".printk_index", align 4
@amdgpu_compute_multipipe = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_gfx_is_multipipe_capable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016[drm] amdgpu: forcing compute pipe policy %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu_gfx_is_multipipe_capable\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_gfx_is_multipipe_capable._entry_ptr = internal global ptr @amdgpu_gfx_is_multipipe_capable._entry, section ".printk_index", align 4
@amdgpu_gfx_kiq_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 290, ptr @.str.47, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to find a queue for KIQ\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_gfx_kiq_acquire\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_gfx_kiq_acquire._entry_ptr = internal global ptr @amdgpu_gfx_kiq_acquire._entry, section ".printk_index", align 4
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.59, i32 179, ptr @.str.47, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 160, i32 23 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 162, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 167, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 170, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 234, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 301, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 314, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 318, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 346, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 354, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 380, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 387, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 399, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 406, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 419, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 426, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 519, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 526, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 533, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 545, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 597, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 629, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 720, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 740, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 786, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 842, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 850, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 184, i32 3 }
@___asan_gen_.242 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 290, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 179, i32 4 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_gfx_enable_kcq._entry, ptr @amdgpu_gfx_enable_kcq._entry_ptr, ptr @amdgpu_gfx_get_num_kcq._entry, ptr @amdgpu_gfx_get_num_kcq._entry_ptr, ptr @amdgpu_gfx_is_multipipe_capable._entry, ptr @amdgpu_gfx_is_multipipe_capable._entry_ptr, ptr @amdgpu_gfx_kiq_acquire._entry, ptr @amdgpu_gfx_kiq_acquire._entry_ptr, ptr @amdgpu_gfx_kiq_init._entry, ptr @amdgpu_gfx_kiq_init._entry.17, ptr @amdgpu_gfx_kiq_init._entry_ptr, ptr @amdgpu_gfx_kiq_init._entry_ptr.19, ptr @amdgpu_gfx_kiq_init_ring._entry, ptr @amdgpu_gfx_kiq_init_ring._entry_ptr, ptr @amdgpu_gfx_mqd_sw_init._entry, ptr @amdgpu_gfx_mqd_sw_init._entry.22, ptr @amdgpu_gfx_mqd_sw_init._entry.25, ptr @amdgpu_gfx_mqd_sw_init._entry.28, ptr @amdgpu_gfx_mqd_sw_init._entry.30, ptr @amdgpu_gfx_mqd_sw_init._entry.32, ptr @amdgpu_gfx_mqd_sw_init._entry_ptr, ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.24, ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.27, ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.29, ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.31, ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.33, ptr @amdgpu_gfx_parse_disable_cu._entry, ptr @amdgpu_gfx_parse_disable_cu._entry_ptr, ptr @amdgpu_kiq_rreg._entry, ptr @amdgpu_kiq_rreg._entry.45, ptr @amdgpu_kiq_rreg._entry_ptr, ptr @amdgpu_kiq_rreg._entry_ptr.48, ptr @amdgpu_kiq_wreg._entry, ptr @amdgpu_kiq_wreg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @amdgpu_gfx_kiq_init_ring.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_parse_disable_cu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_kiq_init_ring.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_kiq_init_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_kiq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_kiq_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_mqd_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_mqd_sw_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_mqd_sw_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_mqd_sw_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_mqd_sw_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_mqd_sw_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_enable_kcq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_kiq_rreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_kiq_rreg._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_kiq_wreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_get_num_kcq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_is_multipipe_capable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gfx_kiq_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_gfx_mec_queue_to_bit(ptr nocapture noundef readonly %adev, i32 noundef %mec, i32 noundef %pipe, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pipe_per_mec = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  %0 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pipe_per_mec, align 4
  %mul = mul i32 %1, %mec
  %num_queue_per_pipe = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 6
  %2 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queue_per_pipe, align 8
  %mul416 = add i32 %mul, %pipe
  %add9 = mul i32 %mul416, %3
  %add10 = add i32 %add9, %queue
  ret i32 %add10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_queue_mask_bit_to_mec_queue(ptr nocapture noundef readonly %adev, i32 noundef %bit, ptr nocapture noundef writeonly %mec, ptr nocapture noundef writeonly %pipe, ptr nocapture noundef writeonly %queue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queue_per_pipe = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 6
  %0 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_queue_per_pipe, align 8
  %rem = urem i32 %bit, %1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rem, ptr %queue, align 4
  %3 = load i32, ptr %num_queue_per_pipe, align 8
  %div = udiv i32 %bit, %3
  %num_pipe_per_mec = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  %4 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pipe_per_mec, align 4
  %rem7 = urem i32 %div, %5
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem7, ptr %pipe, align 4
  %7 = load i32, ptr %num_queue_per_pipe, align 8
  %div11 = udiv i32 %bit, %7
  %8 = load i32, ptr %num_pipe_per_mec, align 4
  %div15 = udiv i32 %div11, %8
  %9 = ptrtoint ptr %mec to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div15, ptr %mec, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_gfx_is_mec_queue_enabled(ptr noundef %adev, i32 noundef %mec, i32 noundef %pipe, i32 noundef %queue) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pipe_per_mec.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  %0 = ptrtoint ptr %num_pipe_per_mec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pipe_per_mec.i, align 4
  %mul.i = mul i32 %1, %mec
  %num_queue_per_pipe.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 6
  %2 = ptrtoint ptr %num_queue_per_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queue_per_pipe.i, align 8
  %mul416.i = add i32 %mul.i, %pipe
  %add9.i = mul i32 %mul416.i, %3
  %add10.i = add i32 %add9.i, %queue
  %queue_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 8
  %div3.i = lshr i32 %add10.i, 5
  %arrayidx.i = getelementptr i32, ptr %queue_bitmap, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %add10.i, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_gfx_me_queue_to_bit(ptr nocapture noundef readonly %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pipe_per_me = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 4
  %0 = ptrtoint ptr %num_pipe_per_me to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pipe_per_me, align 8
  %mul = mul i32 %1, %me
  %num_queue_per_pipe = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 5
  %2 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queue_per_pipe, align 4
  %mul416 = add i32 %mul, %pipe
  %add9 = mul i32 %mul416, %3
  %add10 = add i32 %add9, %queue
  ret i32 %add10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_gfx_bit_to_me_queue(ptr nocapture noundef readonly %adev, i32 noundef %bit, ptr nocapture noundef writeonly %me, ptr nocapture noundef writeonly %pipe, ptr nocapture noundef writeonly %queue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queue_per_pipe = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 5
  %0 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_queue_per_pipe, align 4
  %rem = urem i32 %bit, %1
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rem, ptr %queue, align 4
  %3 = load i32, ptr %num_queue_per_pipe, align 4
  %div = udiv i32 %bit, %3
  %num_pipe_per_me = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 4
  %4 = ptrtoint ptr %num_pipe_per_me to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pipe_per_me, align 8
  %rem7 = urem i32 %div, %5
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem7, ptr %pipe, align 4
  %7 = load i32, ptr %num_queue_per_pipe, align 4
  %div11 = udiv i32 %bit, %7
  %8 = load i32, ptr %num_pipe_per_me, align 8
  %div15 = udiv i32 %div11, %8
  %9 = ptrtoint ptr %me to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div15, ptr %me, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_gfx_is_me_queue_enabled(ptr noundef %adev, i32 noundef %me, i32 noundef %pipe, i32 noundef %queue) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pipe_per_me.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 4
  %0 = ptrtoint ptr %num_pipe_per_me.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pipe_per_me.i, align 8
  %mul.i = mul i32 %1, %me
  %num_queue_per_pipe.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 5
  %2 = ptrtoint ptr %num_queue_per_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_queue_per_pipe.i, align 4
  %mul416.i = add i32 %mul.i, %pipe
  %add9.i = mul i32 %mul416.i, %3
  %add10.i = add i32 %add9.i, %queue
  %queue_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 7
  %div3.i = lshr i32 %add10.i, 5
  %arrayidx.i = getelementptr i32, ptr %queue_bitmap, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %add10.i, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_gfx_scratch_get(ptr nocapture noundef %adev, ptr nocapture noundef writeonly %reg) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %free_mask = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 8, i32 2
  %0 = ptrtoint ptr %free_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_mask, align 8
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true), !range !129
  %3 = add nuw nsw i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %iszero = icmp eq i32 %1, 0
  %ffs = select i1 %iszero, i32 0, i32 %3
  br i1 %iszero, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %scratch = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 8
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scratch, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ffs, i32 %5)
  %cmp3.not = icmp ugt i32 %ffs, %5
  br i1 %cmp3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add nsw i32 %ffs, -1
  %shl = shl nuw i32 1, %dec
  %neg = xor i32 %shl, -1
  %and = and i32 %1, %neg
  %6 = ptrtoint ptr %free_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %free_mask, align 8
  %reg_base = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 8, i32 1
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_base, align 4
  %add = add i32 %8, %dec
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %reg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_gfx_scratch_free(ptr nocapture noundef %adev, i32 noundef %reg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 8, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_base, align 4
  %sub = sub i32 %reg, %1
  %shl = shl nuw i32 1, %sub
  %free_mask = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 8, i32 2
  %2 = ptrtoint ptr %free_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_mask, align 8
  %or = or i32 %shl, %3
  store i32 %or, ptr %free_mask, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_parse_disable_cu(ptr nocapture noundef %mask, i32 noundef %max_se, i32 noundef %max_sh) local_unnamed_addr #6 align 64 {
entry:
  %se = alloca i32, align 4
  %sh = alloca i32, align 4
  %cu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %se) #16
  %0 = ptrtoint ptr %se to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %se, align 4, !annotation !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sh) #16
  %1 = ptrtoint ptr %sh to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sh, align 4, !annotation !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cu) #16
  %2 = ptrtoint ptr %cu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cu, align 4, !annotation !130
  %mul = shl i32 %max_se, 2
  %mul1 = mul i32 %mul, %max_sh
  %3 = call ptr @memset(ptr %mask, i32 0, i32 %mul1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_disable_cu to i32))
  %4 = load ptr, ptr @amdgpu_disable_cu, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup18_crit_edge, label %lor.lhs.false

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup18

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup18_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.cond

lor.lhs.false.cleanup18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup18

for.cond:                                         ; preds = %if.end12.for.cond_crit_edge, %lor.lhs.false.for.cond_crit_edge
  %p.0 = phi ptr [ %add.ptr, %if.end12.for.cond_crit_edge ], [ %4, %lor.lhs.false.for.cond_crit_edge ]
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %p.0, ptr noundef nonnull @.str, ptr noundef nonnull %se, ptr noundef nonnull %sh, ptr noundef nonnull %cu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp slt i32 %call, 3
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #16
  br label %cleanup18

if.end4:                                          ; preds = %for.cond
  %7 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %se, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %max_se)
  %cmp5 = icmp ult i32 %8, %max_se
  br i1 %cmp5, label %land.lhs.true, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %9 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max_sh)
  %cmp6 = icmp ult i32 %10, %max_sh
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %11 = ptrtoint ptr %cu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp8 = icmp ult i32 %12, 16
  br i1 %cmp8, label %do.end, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

do.end:                                           ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %8, i32 noundef %10, i32 noundef %12) #19
  %13 = ptrtoint ptr %cu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cu, align 4
  %shl = shl nuw i32 1, %14
  %15 = ptrtoint ptr %se to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %se, align 4
  %mul11 = mul i32 %16, %max_sh
  %17 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sh, align 4
  %add = add i32 %mul11, %18
  %arrayidx = getelementptr i32, ptr %mask, i32 %add
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %or = or i32 %20, %shl
  store i32 %or, ptr %arrayidx, align 4
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end4.if.else_crit_edge
  %21 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh, align 4
  %23 = ptrtoint ptr %cu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cu, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %8, i32 noundef %22, i32 noundef %24) #16
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.end
  %call13 = call ptr @strchr(ptr noundef %p.0, i32 noundef 44)
  %tobool14.not = icmp eq ptr %call13, null
  %add.ptr = getelementptr i8, ptr %call13, i32 1
  br i1 %tobool14.not, label %if.end12.cleanup18_crit_edge, label %if.end12.for.cond_crit_edge

if.end12.for.cond_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.end12.cleanup18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup18

cleanup18:                                        ; preds = %if.end12.cleanup18_crit_edge, %if.then3, %lor.lhs.false.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cu) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sh) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %se) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_gfx_is_high_priority_compute_queue(ptr noundef readonly %adev, ptr noundef readnone %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %0 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  %compute_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38
  %cmp2 = icmp eq ptr %compute_ring, %ring
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  ret i1 %or.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_compute_queue_acquire(ptr noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_compute_multipipe to i32))
  %0 = load i32, ptr @amdgpu_compute_multipipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.not.i = icmp eq i32 %0, -1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %0) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_compute_multipipe to i32))
  %1 = load i32, ptr @amdgpu_compute_multipipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.i = icmp eq i32 %1, 1
  br label %amdgpu_gfx_is_multipipe_capable.exit

if.end.i:                                         ; preds = %entry
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp2.i = icmp eq i32 %3, 16
  br i1 %cmp2.i, label %if.end.i.amdgpu_gfx_is_multipipe_capable.exit_crit_edge, label %if.end4.i

if.end.i.amdgpu_gfx_is_multipipe_capable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_gfx_is_multipipe_capable.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %num_mec.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 4
  %4 = ptrtoint ptr %num_mec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_mec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5.i = icmp ugt i32 %5, 1
  br label %amdgpu_gfx_is_multipipe_capable.exit

amdgpu_gfx_is_multipipe_capable.exit:             ; preds = %if.end4.i, %if.end.i.amdgpu_gfx_is_multipipe_capable.exit_crit_edge, %do.end.i
  %retval.0.i64 = phi i1 [ %cmp1.i, %do.end.i ], [ %cmp5.i, %if.end4.i ], [ false, %if.end.i.amdgpu_gfx_is_multipipe_capable.exit_crit_edge ]
  %num_pipe_per_mec = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  %6 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pipe_per_mec, align 4
  %num_queue_per_pipe = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 6
  %8 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_queue_per_pipe, align 8
  %mul = mul i32 %9, %7
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %10 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_compute_rings, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp469 = icmp sgt i32 %12, 0
  br i1 %retval.0.i64, label %for.cond.preheader, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %amdgpu_gfx_is_multipipe_capable.exit
  br i1 %cmp469, label %for.body23.lr.ph, label %for.cond21.preheader.do.body_crit_edge

for.cond21.preheader.do.body_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %queue_bitmap26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 8
  br label %for.body23

for.cond.preheader:                               ; preds = %amdgpu_gfx_is_multipipe_capable.exit
  br i1 %cmp469, label %for.body.lr.ph, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pipe_per_mec, align 4
  %i.070.frozen = freeze i32 %i.070
  %.frozen = freeze i32 %14
  %div = udiv i32 %i.070.frozen, %.frozen
  %15 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %i.070.frozen, %15
  %16 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_queue_per_pipe, align 8
  %rem14 = urem i32 %div, %17
  %mul18 = mul i32 %17, %rem.decomposed
  %add = add i32 %mul18, %rem14
  tail call void @_set_bit(i32 noundef %add, ptr noundef %queue_bitmap) #16
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond72.not = icmp eq i32 %inc, %12
  br i1 %exitcond72.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.lr.ph
  %i.168 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc29, %for.body23.for.body23_crit_edge ]
  tail call void @_set_bit(i32 noundef %i.168, ptr noundef %queue_bitmap26) #16
  %inc29 = add nuw nsw i32 %i.168, 1
  %exitcond.not = icmp eq i32 %inc29, %12
  br i1 %exitcond.not, label %for.body23.do.body_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body23

for.body23.do.body_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %for.body23.do.body_crit_edge, %for.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge, %for.cond21.preheader.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_gfx_compute_queue_acquire.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_gfx_compute_queue_acquire, %if.then37)) #16
          to label %do.end [label %if.then37], !srcloc !131

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev, align 8
  %queue_bitmap40 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %queue_bitmap40, i32 noundef 128) #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_gfx_compute_queue_acquire.__UNIQUE_ID_ddebug345, ptr noundef %19, ptr noundef nonnull @.str.8, i32 noundef %call4.i) #16
  br label %do.end

do.end:                                           ; preds = %if.then37, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_graphics_queue_acquire(ptr noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queue_per_pipe = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 5
  %num_pipe_per_me = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 4
  %num_me = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 3
  %queue_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_queue_per_pipe, align 4
  %i.033.frozen = freeze i32 %i.033
  %.frozen = freeze i32 %1
  %div = udiv i32 %i.033.frozen, %.frozen
  %2 = ptrtoint ptr %num_pipe_per_me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pipe_per_me, align 8
  %div7 = udiv i32 %div, %3
  %4 = ptrtoint ptr %num_me to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_me, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %5)
  %cmp10.not = icmp ult i32 %div7, %5
  br i1 %cmp10.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %for.body
  %6 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %i.033.frozen, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp11 = icmp ugt i32 %3, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.decomposed)
  %cmp12 = icmp slt i32 %rem.decomposed, 1
  %or.cond = and i1 %cmp11, %cmp12
  br i1 %or.cond, label %if.then13, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef %i.033, ptr noundef %queue_bitmap) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %queue_bitmap, i32 noundef 128) #16
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 37
  %7 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4.i, ptr %num_gfx_rings, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_kiq_init_ring(ptr noundef %adev, ptr noundef %ring, ptr noundef %irq) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %ring_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @amdgpu_gfx_kiq_init_ring.__key, i16 noundef signext 3) #16
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ring, align 8
  %ring_obj = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ring_obj, align 8
  %use_doorbell = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 24
  %2 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %use_doorbell, align 4
  %doorbell_index = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144
  %3 = ptrtoint ptr %doorbell_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %doorbell_index, align 4
  %doorbell_index4 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 23
  %5 = ptrtoint ptr %doorbell_index4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %doorbell_index4, align 8
  %num_mec.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 4
  %6 = ptrtoint ptr %num_mec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_mec.i, align 8
  %num_pipe_per_mec.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  %8 = ptrtoint ptr %num_pipe_per_mec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pipe_per_mec.i, align 4
  %mul.i = mul i32 %9, %7
  %num_queue_per_pipe.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 6
  %10 = ptrtoint ptr %num_queue_per_pipe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_queue_per_pipe.i, align 8
  %mul6.i = mul i32 %mul.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul6.i)
  %cmp33.i = icmp sgt i32 %mul6.i, -1
  br i1 %cmp33.i, label %while.body.lr.ph.i, label %entry.amdgpu_gfx_kiq_acquire.exit_crit_edge

entry.amdgpu_gfx_kiq_acquire.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_gfx_kiq_acquire.exit

while.body.lr.ph.i:                               ; preds = %entry
  %queue_bitmap.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec34.in.i = phi i32 [ %mul6.i, %while.body.lr.ph.i ], [ %dec34.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %dec34.i = add nsw i32 %dec34.in.i, -1
  %div3.i.i = lshr i32 %dec34.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %queue_bitmap.i, i32 %div3.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %dec34.i, 31
  %14 = shl nuw i32 1, %and.i.i
  %15 = and i32 %14, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.while.cond.backedge.i_crit_edge

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %cmp.not.i = icmp eq i32 %dec34.in.i, 0
  br i1 %cmp.not.i, label %while.cond.backedge.i.amdgpu_gfx_kiq_acquire.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.cond.backedge.i.amdgpu_gfx_kiq_acquire.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_gfx_kiq_acquire.exit

if.end.i:                                         ; preds = %while.body.i
  %dec34.i.frozen = freeze i32 %dec34.i
  %.frozen = freeze i32 %11
  %div.i.i = udiv i32 %dec34.i.frozen, %.frozen
  %16 = mul i32 %div.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %dec34.i.frozen, %16
  %.frozen38 = freeze i32 %9
  %div15.i.i = udiv i32 %div.i.i, %.frozen38
  %17 = mul i32 %div15.i.i, %.frozen38
  %rem7.i.i.decomposed = sub i32 %div.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div15.i.i)
  %cmp9.i = icmp ne i32 %div15.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem7.i.i.decomposed)
  %cmp10.i = icmp slt i32 %rem7.i.i.decomposed, 2
  %or.cond.not.i = or i1 %cmp10.i, %cmp9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.decomposed)
  %cmp11.not.i = icmp eq i32 %rem.i.i.decomposed, 0
  %or.cond31.i = select i1 %or.cond.not.i, i1 %cmp11.not.i, i1 false
  br i1 %or.cond31.i, label %if.end, label %if.end.i.while.cond.backedge.i_crit_edge

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

amdgpu_gfx_kiq_acquire.exit:                      ; preds = %while.cond.backedge.i.amdgpu_gfx_kiq_acquire.exit_crit_edge, %entry.amdgpu_gfx_kiq_acquire.exit_crit_edge
  %18 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.55) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %add.i = add i32 %div15.i.i, 1
  %me.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %20 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %me.i, align 8
  %pipe14.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 17
  %21 = ptrtoint ptr %pipe14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rem7.i.i.decomposed, ptr %pipe14.i, align 4
  %queue15.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 18
  %22 = ptrtoint ptr %queue15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %queue15.i, align 8
  %kiq1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7
  %23 = ptrtoint ptr %kiq1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %kiq1, align 8
  %eop_gpu_addr6 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 22
  %25 = ptrtoint ptr %eop_gpu_addr6 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %eop_gpu_addr6, align 8
  %no_scheduler = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 40
  %26 = ptrtoint ptr %no_scheduler to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %no_scheduler, align 1
  %name = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 29
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.10, i32 noundef %add.i, i32 noundef %rem7.i.i.decomposed, i32 noundef 0)
  %call8 = tail call i32 @amdgpu_ring_init(ptr noundef %adev, ptr noundef %ring, i32 noundef 1024, ptr noundef %irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %call8) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.cleanup_crit_edge, %amdgpu_gfx_kiq_acquire.exit
  %retval.0 = phi i32 [ -22, %amdgpu_gfx_kiq_acquire.exit ], [ %call8, %do.end13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_kiq_free_ring(ptr noundef %ring) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_ring_fini(ptr noundef %ring) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_kiq_fini(ptr noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %kiq1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7
  %eop_obj = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 1
  tail call void @amdgpu_bo_free_kernel(ptr noundef %eop_obj, ptr noundef %kiq1, ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_kiq_init(ptr noundef %adev, i32 noundef %hpd_size) local_unnamed_addr #6 align 64 {
entry:
  %hpd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpd) #16
  %0 = ptrtoint ptr %hpd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hpd, align 4, !annotation !130
  %kiq1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7
  %eop_obj = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 1
  %call = call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %hpd_size, i32 noundef 4096, i32 noundef 2, ptr noundef %eop_obj, ptr noundef %kiq1, ptr noundef nonnull %hpd) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %call) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hpd, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 %hpd_size)
  %6 = ptrtoint ptr %eop_obj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eop_obj, align 8
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %7, i32 0, i32 4, i32 0, i32 9
  %10 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock(ptr noundef %11, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %12 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end.if.end11_crit_edge
    i32 -512, label %if.end.do.end9_crit_edge
  ], !prof !132

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -17736
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.57, ptr noundef %7) #19
  br label %do.end9

do.end9:                                          ; preds = %do.end.i, %if.end.do.end9_crit_edge
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef %retval.1.i.i) #19
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end.if.end11_crit_edge
  %17 = ptrtoint ptr %eop_obj to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eop_obj, align 8
  call void @amdgpu_bo_kunmap(ptr noundef %18) #16
  %19 = ptrtoint ptr %eop_obj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eop_obj, align 8
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #16
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %24, ptr noundef null) #16
  %25 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #16
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4, i32 0, i32 9
  %27 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %28) #16
  call void @ww_mutex_unlock(ptr noundef %28) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpd) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_kunmap(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_mqd_sw_init(ptr noundef %adev, i32 noundef %mqd_size) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mqd_obj = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 19
  %0 = ptrtoint ptr %mqd_obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mqd_obj, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then:                                          ; preds = %entry
  %mqd_gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 20
  %mqd_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 21
  %call = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %mqd_size, i32 noundef 4096, i32 noundef 4, ptr noundef %mqd_obj, ptr noundef %mqd_gpu_addr, ptr noundef %mqd_ptr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end8.i, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %call) #19
  br label %cleanup

if.end8.i:                                        ; preds = %if.then
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mqd_size, i32 noundef 3264) #20
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 7, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %do.end15, label %if.end8.i.if.end18_crit_edge

if.end8.i.if.end18_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

do.end15:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 8
  %name = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 29
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.23, ptr noundef %name) #19
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end8.i.if.end18_crit_edge, %entry.if.end18_crit_edge
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %7 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %8)
  %cmp = icmp ugt i32 %8, 25
  br i1 %cmp, label %land.lhs.true, label %if.end18.if.end57_crit_edge

if.end18.if.end57_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_async_gfx_ring to i32))
  %9 = load i32, ptr @amdgpu_async_gfx_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end57_crit_edge, label %for.cond.preheader

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

for.cond.preheader:                               ; preds = %land.lhs.true
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 37
  %10 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22225.not = icmp eq i32 %11, 0
  br i1 %cmp22225.not, label %for.cond.preheader.if.end57_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end57_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0226 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mqd_obj25 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 %i.0226, i32 19
  %12 = ptrtoint ptr %mqd_obj25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mqd_obj25, align 4
  %tobool26.not = icmp eq ptr %13, null
  br i1 %tobool26.not, label %if.then27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then27:                                        ; preds = %for.body
  %mqd_gpu_addr29 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 %i.0226, i32 20
  %mqd_ptr30 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 %i.0226, i32 21
  %call31 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %mqd_size, i32 noundef 4096, i32 noundef 2, ptr noundef %mqd_obj25, ptr noundef %mqd_gpu_addr29, ptr noundef %mqd_ptr30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end8.i184, label %do.end36

do.end36:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.26, i32 noundef %call31) #19
  br label %cleanup

if.end8.i184:                                     ; preds = %if.then27
  %call9.i183 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mqd_size, i32 noundef 3264) #20
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 6, i32 %i.0226
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i183, ptr %arrayidx42, align 4
  %tobool47.not = icmp eq ptr %call9.i183, null
  br i1 %tobool47.not, label %do.end51, label %if.end8.i184.for.inc_crit_edge

if.end8.i184.for.inc_crit_edge:                   ; preds = %if.end8.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end51:                                         ; preds = %if.end8.i184
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  %name53 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 %i.0226, i32 29
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef %name53) #19
  br label %for.inc

for.inc:                                          ; preds = %do.end51, %if.end8.i184.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0226, 1
  %19 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_gfx_rings, align 8
  %cmp22 = icmp ult i32 %inc, %20
  br i1 %cmp22, label %for.inc.for.body_crit_edge, label %for.inc.if.end57_crit_edge

for.inc.if.end57_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end57:                                         ; preds = %for.inc.if.end57_crit_edge, %for.cond.preheader.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.end18.if.end57_crit_edge
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %21 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp60229.not = icmp eq i32 %22, 0
  br i1 %cmp60229.not, label %if.end57.cleanup_crit_edge, label %if.end57.for.body61_crit_edge

if.end57.for.body61_crit_edge:                    ; preds = %if.end57
  br label %for.body61

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body61:                                       ; preds = %for.inc97.for.body61_crit_edge, %if.end57.for.body61_crit_edge
  %i.1230 = phi i32 [ %inc98, %for.inc97.for.body61_crit_edge ], [ 0, %if.end57.for.body61_crit_edge ]
  %mqd_obj64 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.1230, i32 19
  %23 = ptrtoint ptr %mqd_obj64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mqd_obj64, align 4
  %tobool65.not = icmp eq ptr %24, null
  br i1 %tobool65.not, label %if.then66, label %for.body61.for.inc97_crit_edge

for.body61.for.inc97_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc97

if.then66:                                        ; preds = %for.body61
  %mqd_gpu_addr68 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.1230, i32 20
  %mqd_ptr69 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.1230, i32 21
  %call70 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %mqd_size, i32 noundef 4096, i32 noundef 2, ptr noundef %mqd_obj64, ptr noundef %mqd_gpu_addr68, ptr noundef %mqd_ptr69) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end8.i213, label %do.end75

do.end75:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.26, i32 noundef %call70) #19
  br label %cleanup

if.end8.i213:                                     ; preds = %if.then66
  %call9.i212 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mqd_size, i32 noundef 3264) #20
  %arrayidx82 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 7, i32 %i.1230
  %27 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i212, ptr %arrayidx82, align 4
  %tobool87.not = icmp eq ptr %call9.i212, null
  br i1 %tobool87.not, label %do.end91, label %if.end8.i213.for.inc97_crit_edge

if.end8.i213.for.inc97_crit_edge:                 ; preds = %if.end8.i213
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc97

do.end91:                                         ; preds = %if.end8.i213
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adev, align 8
  %name93 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.1230, i32 29
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.23, ptr noundef %name93) #19
  br label %for.inc97

for.inc97:                                        ; preds = %do.end91, %if.end8.i213.for.inc97_crit_edge, %for.body61.for.inc97_crit_edge
  %inc98 = add nuw i32 %i.1230, 1
  %30 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_compute_rings, align 8
  %cmp60 = icmp ult i32 %inc98, %31
  br i1 %cmp60, label %for.inc97.for.body61_crit_edge, label %for.inc97.cleanup_crit_edge

for.inc97.cleanup_crit_edge:                      ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc97.for.body61_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body61

cleanup:                                          ; preds = %for.inc97.cleanup_crit_edge, %do.end75, %if.end57.cleanup_crit_edge, %do.end36, %do.end
  %retval.0 = phi i32 [ %call31, %do.end36 ], [ %call70, %do.end75 ], [ %call, %do.end ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %for.inc97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_mqd_sw_fini(ptr noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp ugt i32 %1, 25
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_async_gfx_ring to i32))
  %2 = load i32, ptr @amdgpu_async_gfx_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %for.cond.preheader

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true
  %num_gfx_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 37
  %3 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_gfx_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp152.not = icmp eq i32 %4, 0
  br i1 %cmp152.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 5, i32 6, i32 %i.053
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  tail call void @kfree(ptr noundef %6) #16
  %mqd_obj = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 %i.053, i32 19
  %mqd_gpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 %i.053, i32 20
  %mqd_ptr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 36, i32 %i.053, i32 21
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mqd_obj, ptr noundef %mqd_gpu_addr, ptr noundef %mqd_ptr) #16
  %inc = add nuw i32 %i.053, 1
  %7 = ptrtoint ptr %num_gfx_rings to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_gfx_rings, align 8
  %cmp1 = icmp ult i32 %inc, %8
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %9 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp754.not = icmp eq i32 %10, 0
  br i1 %cmp754.not, label %if.end.for.end19_crit_edge, label %if.end.for.body8_crit_edge

if.end.for.body8_crit_edge:                       ; preds = %if.end
  br label %for.body8

if.end.for.end19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end19

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %if.end.for.body8_crit_edge
  %i.155 = phi i32 [ %inc18, %for.body8.for.body8_crit_edge ], [ 0, %if.end.for.body8_crit_edge ]
  %arrayidx13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 7, i32 %i.155
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  tail call void @kfree(ptr noundef %12) #16
  %mqd_obj14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.155, i32 19
  %mqd_gpu_addr15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.155, i32 20
  %mqd_ptr16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.155, i32 21
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mqd_obj14, ptr noundef %mqd_gpu_addr15, ptr noundef %mqd_ptr16) #16
  %inc18 = add nuw i32 %i.155, 1
  %13 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_compute_rings, align 8
  %cmp7 = icmp ult i32 %inc18, %14
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.for.end19_crit_edge

for.body8.for.end19_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end19

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body8

for.end19:                                        ; preds = %for.body8.for.end19_crit_edge, %if.end.for.end19_crit_edge
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 7, i32 8
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx25, align 4
  tail call void @kfree(ptr noundef %16) #16
  %mqd_obj26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 19
  %mqd_gpu_addr27 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 20
  %mqd_ptr28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 21
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mqd_obj26, ptr noundef %mqd_gpu_addr27, ptr noundef %mqd_ptr28) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_disable_kcq(ptr noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3
  %pmf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 5
  %0 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %kiq_unmap_queues = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %kiq_unmap_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kiq_unmap_queues, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ring_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 2
  tail call void @_raw_spin_lock(ptr noundef %ring_lock) #16
  %4 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmf, align 4
  %unmap_queues_size = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %unmap_queues_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unmap_queues_size, align 4
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %8 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_compute_rings, align 8
  %mul = mul i32 %9, %7
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef %mul) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %for.cond.preheader, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end
  %10 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp40.not = icmp eq i32 %11, 0
  br i1 %cmp40.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmf, align 4
  %kiq_unmap_queues17 = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %kiq_unmap_queues17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kiq_unmap_queues17, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.041
  tail call void %15(ptr noundef %ring, ptr noundef %arrayidx, i32 noundef 1, i64 noundef 0, i64 noundef 0) #16
  %inc = add nuw i32 %i.041, 1
  %16 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_compute_rings, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call19 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call19, %for.end ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_queue_mask_bit_to_set_resource_bit(ptr nocapture noundef readonly %adev, i32 noundef %queue_bit) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queue_per_pipe.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 6
  %0 = ptrtoint ptr %num_queue_per_pipe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_queue_per_pipe.i, align 8
  %.frozen = freeze i32 %1
  %div.i = udiv i32 %queue_bit, %.frozen
  %2 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %queue_bit, %2
  %num_pipe_per_mec.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  %3 = ptrtoint ptr %num_pipe_per_mec.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pipe_per_mec.i, align 4
  %.frozen4 = freeze i32 %4
  %div15.i = udiv i32 %div.i, %.frozen4
  %5 = mul i32 %div15.i, %.frozen4
  %rem7.i.decomposed = sub i32 %div.i, %5
  %mul1 = shl i32 %div15.i, 5
  %mul2 = shl i32 %rem7.i.decomposed, 3
  %add = add i32 %mul2, %rem.i.decomposed
  %add3 = add i32 %add, %mul1
  ret i32 %add3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_enable_kcq(ptr noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3
  %pmf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 5
  %0 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %kiq_map_queues = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kiq_map_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kiq_map_queues, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false6
  %queue_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 8
  %num_queue_per_pipe.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 6
  %num_pipe_per_mec.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0119 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %queue_mask.0118 = phi i64 [ 0, %for.cond.preheader ], [ %queue_mask.1, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0119, 5
  %arrayidx.i = getelementptr i32, ptr %queue_bitmap, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0119, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.0119)
  %cmp13 = icmp ugt i32 %i.0119, 64
  br i1 %cmp13, label %do.end, label %if.end37, !prof !133

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 518, i32 noundef 9, ptr noundef null) #16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %i.0119) #16
  br label %do.end41

if.end37:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %num_queue_per_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_queue_per_pipe.i.i, align 8
  %i.0119.frozen = freeze i32 %i.0119
  %.frozen = freeze i32 %11
  %div.i.i = udiv i32 %i.0119.frozen, %.frozen
  %12 = mul i32 %div.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %i.0119.frozen, %12
  %13 = ptrtoint ptr %num_pipe_per_mec.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pipe_per_mec.i.i, align 4
  %.frozen133 = freeze i32 %14
  %div15.i.i = udiv i32 %div.i.i, %.frozen133
  %15 = mul i32 %div15.i.i, %.frozen133
  %rem7.i.i.decomposed = sub i32 %div.i.i, %15
  %mul1.i = shl nuw nsw i32 %div15.i.i, 5
  %mul2.i = shl nuw nsw i32 %rem7.i.i.decomposed, 3
  %add.i = add nuw nsw i32 %mul2.i, %rem.i.i.decomposed
  %add3.i = add nuw nsw i32 %add.i, %mul1.i
  %sh_prom = zext i32 %add3.i to i64
  %shl = shl nuw i64 1, %sh_prom
  %or = or i64 %shl, %queue_mask.0118
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %for.body.for.inc_crit_edge
  %queue_mask.1 = phi i64 [ %or, %if.end37 ], [ %queue_mask.0118, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.do.end41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.do.end41_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end41

do.end41:                                         ; preds = %for.inc.do.end41_crit_edge, %do.end
  %queue_mask.0117 = phi i64 [ %queue_mask.0118, %do.end ], [ %queue_mask.1, %for.inc.do.end41_crit_edge ]
  %me = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 16
  %16 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %me, align 8
  %pipe = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 17
  %18 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe, align 4
  %queue = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 18
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %queue, align 8
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %17, i32 noundef %19, i32 noundef %21) #19
  %ring_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 2
  tail call void @_raw_spin_lock(ptr noundef %ring_lock) #16
  %22 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pmf, align 4
  %map_queues_size = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %map_queues_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %map_queues_size, align 4
  %num_compute_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 39
  %26 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_compute_rings, align 8
  %mul = mul i32 %27, %25
  %set_resources_size = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %23, i32 0, i32 5
  %28 = ptrtoint ptr %set_resources_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %set_resources_size, align 4
  %add = add i32 %mul, %29
  %call49 = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef %add) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %if.then51

if.then51:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %call49) #16
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #16
  br label %cleanup

if.end55:                                         ; preds = %do.end41
  %30 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pmf, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  tail call void %33(ptr noundef %ring, i64 noundef %queue_mask.0117) #16
  %34 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_compute_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp61121.not = icmp eq i32 %35, 0
  br i1 %cmp61121.not, label %if.end55.for.end68_crit_edge, label %if.end55.for.body62_crit_edge

if.end55.for.body62_crit_edge:                    ; preds = %if.end55
  br label %for.body62

if.end55.for.end68_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end68

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %if.end55.for.body62_crit_edge
  %i.1122 = phi i32 [ %inc67, %for.body62.for.body62_crit_edge ], [ 0, %if.end55.for.body62_crit_edge ]
  %36 = ptrtoint ptr %pmf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pmf, align 4
  %kiq_map_queues64 = getelementptr inbounds %struct.kiq_pm4_funcs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %kiq_map_queues64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kiq_map_queues64, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38, i32 %i.1122
  tail call void %39(ptr noundef %ring, ptr noundef %arrayidx) #16
  %inc67 = add nuw i32 %i.1122, 1
  %40 = ptrtoint ptr %num_compute_rings to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_compute_rings, align 8
  %cmp61 = icmp ult i32 %inc67, %41
  br i1 %cmp61, label %for.body62.for.body62_crit_edge, label %for.body62.for.end68_crit_edge

for.body62.for.end68_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end68

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body62

for.end68:                                        ; preds = %for.body62.for.end68_crit_edge, %if.end55.for.end68_crit_edge
  %call69 = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring) #16
  tail call void @_raw_spin_unlock(ptr noundef %ring_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool73.not = icmp eq i32 %call69, 0
  br i1 %tobool73.not, label %for.end68.cleanup_crit_edge, label %if.then74

for.end68.cleanup_crit_edge:                      ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then74:                                        ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %for.end68.cleanup_crit_edge, %if.then51, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.then51 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call69, %if.then74 ], [ 0, %for.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_off_ctrl(ptr noundef %adev, i1 noundef zeroext %enable) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pp_feature = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 24
  %0 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pp_feature, align 8
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %gfx_off_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 53
  tail call void @mutex_lock_nested(ptr noundef %gfx_off_mutex, i32 noundef 0) #16
  %gfx_off_req_count = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 54
  %2 = ptrtoint ptr %gfx_off_req_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfx_off_req_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %enable, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %cmp, label %land.rhs, label %if.end44.critedge

land.rhs:                                         ; preds = %if.then2
  %.b124 = load i1, ptr @amdgpu_gfx_off_ctrl.__already_done, align 1
  br i1 %.b124, label %land.rhs.unlock_crit_edge, label %if.then12, !prof !134

land.rhs.unlock_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @amdgpu_gfx_off_ctrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 575, i32 noundef 9, ptr noundef null) #16
  br label %unlock

if.end44.critedge:                                ; preds = %if.then2
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %gfx_off_req_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %gfx_off_req_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp49 = icmp eq i32 %dec, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end44.critedge.unlock_crit_edge

if.end44.critedge.unlock_crit_edge:               ; preds = %if.end44.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

land.lhs.true:                                    ; preds = %if.end44.critedge
  %gfx_off_state = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 52
  %5 = ptrtoint ptr %gfx_off_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gfx_off_state, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool51.not = icmp eq i8 %6, 0
  br i1 %tobool51.not, label %if.then52, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %in_s0ix = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 140
  %7 = ptrtoint ptr %in_s0ix to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_s0ix, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool53.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool53.not, i32 10, i32 0
  %gfx_off_delay_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %gfx_off_delay_work, i32 noundef %spec.select) #16
  br label %unlock

if.else:                                          ; preds = %if.end
  br i1 %cmp, label %if.then62, label %if.else.if.end98_crit_edge

if.else.if.end98_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98

if.then62:                                        ; preds = %if.else
  %gfx_off_delay_work64 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 55
  %call65 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gfx_off_delay_work64) #16
  %gfx_off_state67 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 52
  %10 = ptrtoint ptr %gfx_off_state67 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gfx_off_state67, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool68.not = icmp eq i8 %11, 0
  br i1 %tobool68.not, label %if.then62.if.end98_crit_edge, label %land.lhs.true69

if.then62.if.end98_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98

land.lhs.true69:                                  ; preds = %if.then62
  %call70 = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %adev, i32 noundef 6, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %land.lhs.true69.if.end98_crit_edge

land.lhs.true69.if.end98_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98

if.then72:                                        ; preds = %land.lhs.true69
  %12 = ptrtoint ptr %gfx_off_state67 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %gfx_off_state67, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 49
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %init_spm_golden = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %init_spm_golden to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_spm_golden, align 4
  %tobool76.not = icmp eq ptr %16, null
  br i1 %tobool76.not, label %if.then72.if.end98_crit_edge, label %do.body78

if.then72.if.end98_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98

do.body78:                                        ; preds = %if.then72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_gfx_off_ctrl.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_gfx_off_ctrl, %if.then89)) #16
          to label %do.end92 [label %if.then89], !srcloc !131

if.then89:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_gfx_off_ctrl.__UNIQUE_ID_ddebug346, ptr noundef %18, ptr noundef nonnull @.str.40) #16
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %do.body78
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs, align 4
  %init_spm_golden95 = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %init_spm_golden95 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_spm_golden95, align 4
  tail call void %22(ptr noundef %adev) #16
  br label %if.end98

if.end98:                                         ; preds = %do.end92, %if.then72.if.end98_crit_edge, %land.lhs.true69.if.end98_crit_edge, %if.then62.if.end98_crit_edge, %if.else.if.end98_crit_edge
  %23 = ptrtoint ptr %gfx_off_req_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gfx_off_req_count, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %gfx_off_req_count, align 8
  br label %unlock

unlock:                                           ; preds = %if.end98, %if.then52, %land.lhs.true.unlock_crit_edge, %if.end44.critedge.unlock_crit_edge, %if.then12, %land.rhs.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %gfx_off_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_get_gfx_off_status(ptr noundef %adev, ptr noundef %value) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %gfx_off_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 53
  tail call void @mutex_lock_nested(ptr noundef %gfx_off_mutex, i32 noundef 0) #16
  %call = tail call i32 @smu_get_status_gfxoff(ptr noundef %adev, ptr noundef %value) #16
  tail call void @mutex_unlock(ptr noundef %gfx_off_mutex) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_get_status_gfxoff(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_ras_late_init(ptr noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  %fs_info = alloca %struct.ras_fs_if, align 4
  %ih_info = alloca %struct.ras_ih_if, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %fs_info) #16
  %0 = call ptr @memcpy(ptr %fs_info, ptr @__const.amdgpu_gfx_ras_late_init.fs_info, i32 80)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_info) #16
  %1 = call ptr @memcpy(ptr %ih_info, ptr @__const.amdgpu_gfx_ras_late_init.ih_info, i32 48)
  %ras_if = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 58
  %2 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras_if, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 44) #21
  %5 = ptrtoint ptr %ras_if to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %ras_if, align 4
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %call7.i, align 8
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
  %11 = call ptr @memcpy(ptr %ih_info, ptr %10, i32 44)
  %12 = call ptr @memmove(ptr %fs_info, ptr %10, i32 44)
  %call19 = call i32 @amdgpu_ras_late_init(ptr noundef %adev, ptr noundef %10, ptr noundef nonnull %fs_info, ptr noundef nonnull %ih_info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.free_crit_edge

if.end13.free_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

if.end.i:                                         ; preds = %if.end22
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %17 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i.free_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i.free_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

if.then28:                                        ; preds = %amdgpu_ras_is_supported.exit
  %call29 = call i32 @amdgpu_persistent_edc_harvesting_supported(ptr noundef %adev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.then28.if.end33_crit_edge

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  %call32 = call i32 @amdgpu_ras_reset_error_status(ptr noundef %adev, i32 noundef 2) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then28.if.end33_crit_edge
  %cp_ecc_error_irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 43
  %call35 = call i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %cp_ecc_error_irq, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %late_fini

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

late_fini:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ras_if, align 4
  call void @amdgpu_ras_late_fini(ptr noundef %adev, ptr noundef %24, ptr noundef nonnull %ih_info) #16
  br label %free

free:                                             ; preds = %late_fini, %amdgpu_ras_is_supported.exit.free_crit_edge, %if.end.i.free_crit_edge, %if.end22.free_crit_edge, %if.end13.free_crit_edge
  %r.0 = phi i32 [ %call19, %if.end13.free_crit_edge ], [ %call35, %late_fini ], [ 0, %amdgpu_ras_is_supported.exit.free_crit_edge ], [ 0, %if.end22.free_crit_edge ], [ 0, %if.end.i.free_crit_edge ]
  %25 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ras_if, align 4
  call void @kfree(ptr noundef %26) #16
  %27 = ptrtoint ptr %ras_if to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ras_if, align 4
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end33.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %free ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_info) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %fs_info) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_process_ras_data_cb(ptr noundef %adev, ptr noundef %err_data, ptr nocapture readnone %entry1) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %amdgpu_ras_is_supported.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.then_crit_edge, label %amdgpu_ras_is_supported.exit.if.end12_crit_edge

amdgpu_ras_is_supported.exit.if.end12_crit_edge:  ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

amdgpu_ras_is_supported.exit.if.then_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %amdgpu_ras_is_supported.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 59
  %5 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ras_funcs, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %query_ras_error_count = getelementptr inbounds %struct.amdgpu_gfx_ras_funcs, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %query_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %query_ras_error_count, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then6

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call i32 %8(ptr noundef %adev, ptr noundef %err_data) #16
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ras1.i, align 8
  %in_recovery.i = getelementptr inbounds %struct.amdgpu_ras, ptr %10, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_recovery.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %in_recovery.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %in_recovery.i, ptr %in_recovery.i, i32 0, i32 1, ptr elementtype(i32) %in_recovery.i) #16, !srcloc !137
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %atomic_cmpxchg.exit.i.if.end12_crit_edge

atomic_cmpxchg.exit.i.if.end12_crit_edge:         ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then.i:                                        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %recovery_work.i = getelementptr inbounds %struct.amdgpu_ras, ptr %10, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i1.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %recovery_work.i) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %atomic_cmpxchg.exit.i.if.end12_crit_edge, %amdgpu_ras_is_supported.exit.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_late_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_persistent_edc_harvesting_supported(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_reset_error_status(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ras_late_fini(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_ras_fini(ptr noundef %adev) local_unnamed_addr #6 align 64 {
entry:
  %ih_info = alloca %struct.ras_ih_if, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %amdgpu_ras_is_supported.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

amdgpu_ras_is_supported.exit:                     ; preds = %entry
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end_crit_edge, label %land.lhs.true

amdgpu_ras_is_supported.exit.if.end_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %amdgpu_ras_is_supported.exit
  %ras_if = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 58
  %5 = ptrtoint ptr %ras_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ras_if, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_info) #16
  %7 = call ptr @memcpy(ptr %ih_info, ptr %6, i32 44)
  %cb = getelementptr inbounds %struct.ras_ih_if, ptr %ih_info, i32 0, i32 1
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @amdgpu_gfx_process_ras_data_cb, ptr %cb, align 4
  call void @amdgpu_ras_late_fini(ptr noundef %adev, ptr noundef nonnull %6, ptr noundef nonnull %ih_info) #16
  call void @kfree(ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_info) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %amdgpu_ras_is_supported.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_cp_ecc_error_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr noundef %entry1) local_unnamed_addr #6 align 64 {
entry:
  %ih_data = alloca %struct.ras_dispatch_if, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_if2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 58
  %0 = ptrtoint ptr %ras_if2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras_if2, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ih_data) #16
  %entry3 = getelementptr inbounds %struct.ras_dispatch_if, ptr %ih_data, i32 0, i32 1
  %2 = ptrtoint ptr %entry3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry1, ptr %entry3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %3 = call ptr @memcpy(ptr %ih_data, ptr %1, i32 44)
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42) #16
  %call = call i32 @amdgpu_ras_interrupt_dispatch(ptr noundef %adev, ptr noundef nonnull %ih_data) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ih_data) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_interrupt_dispatch(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_kiq_rreg(ptr noundef %adev, i32 noundef %reg) local_unnamed_addr #6 align 64 {
entry:
  %seq = alloca i32, align 4
  %reg_val_offs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #16
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %seq, align 4, !annotation !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val_offs) #16
  %1 = ptrtoint ptr %reg_val_offs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %reg_val_offs, align 4
  %ring2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3
  %call = tail call zeroext i1 @amdgpu_device_skip_hw_access(ptr noundef %adev) #16
  br i1 %call, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %emit_rreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %emit_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emit_rreg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body7, label %do.body15, !prof !133

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 736, 0\0A.popsection", ""() #16, !srcloc !139
  unreachable

do.body15:                                        ; preds = %do.body
  %ring_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 2
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #16
  %call22 = call i32 @amdgpu_device_wb_get(ptr noundef %adev, ptr noundef nonnull %reg_val_offs) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #18
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #19
  br label %failed_unlock

if.end30:                                         ; preds = %do.body15
  %call31 = call i32 @amdgpu_ring_alloc(ptr noundef %ring2, i32 noundef 32) #16
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %emit_rreg33 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %emit_rreg33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emit_rreg33, align 4
  %10 = ptrtoint ptr %reg_val_offs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_val_offs, align 4
  call void %9(ptr noundef %ring2, i32 noundef %reg, i32 noundef %11) #16
  %call34 = call i32 @amdgpu_fence_emit_polling(ptr noundef %ring2, ptr noundef nonnull %seq, i32 noundef 5000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %failed_undo

if.end37:                                         ; preds = %if.end30
  call void @amdgpu_ring_commit(ptr noundef %ring2) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call17) #16
  %12 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq, align 4
  %call39 = call i32 @amdgpu_fence_wait_polling(ptr noundef %ring2, i32 noundef %13, i32 noundef 5000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %land.lhs.true, label %do.body53

land.lhs.true:                                    ; preds = %if.end37
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #16
  %14 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool43.not = icmp eq i32 %15, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %land.lhs.true.failed_kiq_read_crit_edge

land.lhs.true.failed_kiq_read_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed_kiq_read

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = call i32 @llvm.read_register.i32(metadata !119) #16
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %19, 15728640
  %20 = call i32 @llvm.read_register.i32(metadata !119) #16
  %and.i.i109 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i109 to ptr
  %preempt_count.i110 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i110 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i110, align 4
  %and46 = and i32 %23, 983040
  %or = or i32 %and46, %and
  %24 = call i32 @llvm.read_register.i32(metadata !119) #16
  %and.i.i111 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i111 to ptr
  %preempt_count.i112 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i112 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i112, align 4
  %and48 = and i32 %27, 65280
  %or49 = or i32 %or, %and48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or49)
  %tobool50.not = icmp eq i32 %or49, 0
  br i1 %tobool50.not, label %land.rhs.preheader, label %lor.lhs.false.failed_kiq_read_crit_edge

lor.lhs.false.failed_kiq_read_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed_kiq_read

do.body53:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 765) #16
  br label %do.body68

land.rhs.preheader:                               ; preds = %lor.lhs.false
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 765) #16
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %cnt.0116 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %cnt.0116)
  %exitcond.not = icmp eq i32 %cnt.0116, 1000
  br i1 %exitcond.not, label %land.rhs.failed_kiq_read_crit_edge, label %while.body

land.rhs.failed_kiq_read_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %failed_kiq_read

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %cnt.0116, 1
  call void @msleep(i32 noundef 5) #16
  %28 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seq, align 4
  %call63 = call i32 @amdgpu_fence_wait_polling(ptr noundef %ring2, i32 noundef %29, i32 noundef 5000) #16
  %cmp59 = icmp slt i32 %call63, 1
  br i1 %cmp59, label %while.body.land.rhs_crit_edge, label %while.body.do.body68_crit_edge

while.body.do.body68_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body68

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

do.body68:                                        ; preds = %while.body.do.body68_crit_edge, %do.body53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !140
  call void @arm_heavy_mb() #16
  %wb71 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 70, i32 1
  %30 = ptrtoint ptr %wb71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wb71, align 4
  %32 = ptrtoint ptr %reg_val_offs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_val_offs, align 4
  %arrayidx = getelementptr i32, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx, align 4
  call void @amdgpu_device_wb_free(ptr noundef %adev, i32 noundef %33) #16
  br label %cleanup

failed_undo:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  call void @amdgpu_ring_undo(ptr noundef %ring2) #16
  br label %failed_unlock

failed_unlock:                                    ; preds = %failed_undo, %do.end27
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call17) #16
  br label %failed_kiq_read

failed_kiq_read:                                  ; preds = %failed_unlock, %land.rhs.failed_kiq_read_crit_edge, %lor.lhs.false.failed_kiq_read_crit_edge, %land.lhs.true.failed_kiq_read_crit_edge
  %36 = ptrtoint ptr %reg_val_offs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_val_offs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool73.not = icmp eq i32 %37, 0
  br i1 %tobool73.not, label %failed_kiq_read.do.end78_crit_edge, label %if.then74

failed_kiq_read.do.end78_crit_edge:               ; preds = %failed_kiq_read
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end78

if.then74:                                        ; preds = %failed_kiq_read
  call void @__sanitizer_cov_trace_pc() #18
  call void @amdgpu_device_wb_free(ptr noundef %adev, i32 noundef %37) #16
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %failed_kiq_read.do.end78_crit_edge
  %38 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.46, i32 noundef %reg) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %do.body68, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end78 ], [ %35, %do.body68 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val_offs) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_skip_hw_access(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_emit_polling(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_polling(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_undo(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_kiq_wreg(ptr noundef %adev, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #6 align 64 {
entry:
  %seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #16
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %seq, align 4, !annotation !130
  %ring2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 1
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %funcs, align 4
  %emit_wreg = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %emit_wreg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %emit_wreg, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body6, label %do.end11, !prof !133

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 798, 0\0A.popsection", ""() #16, !srcloc !141
  unreachable

do.end11:                                         ; preds = %entry
  %call = tail call zeroext i1 @amdgpu_device_skip_hw_access(ptr noundef %adev) #16
  br i1 %call, label %do.end11.cleanup_crit_edge, label %do.body15

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body15:                                        ; preds = %do.end11
  %ring_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 2
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #16
  %call22 = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring2, i32 noundef 32) #16
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %emit_wreg24 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %emit_wreg24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %emit_wreg24, align 4
  tail call void %8(ptr noundef %ring2, i32 noundef %reg, i32 noundef %v) #16
  %call25 = call i32 @amdgpu_fence_emit_polling(ptr noundef %ring2, ptr noundef nonnull %seq, i32 noundef 5000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %failed_undo

if.end28:                                         ; preds = %do.body15
  call void @amdgpu_ring_commit(ptr noundef %ring2) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call17) #16
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seq, align 4
  %call30 = call i32 @amdgpu_fence_wait_polling(ptr noundef %ring2, i32 noundef %10, i32 noundef 5000) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %land.lhs.true, label %do.body44

land.lhs.true:                                    ; preds = %if.end28
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool34.not = icmp eq i32 %12, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %land.lhs.true.do.end62_crit_edge

land.lhs.true.do.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end62

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = call i32 @llvm.read_register.i32(metadata !119) #16
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %16, 15728640
  %17 = call i32 @llvm.read_register.i32(metadata !119) #16
  %and.i.i87 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i87 to ptr
  %preempt_count.i88 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i88 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i88, align 4
  %and37 = and i32 %20, 983040
  %or = or i32 %and37, %and
  %21 = call i32 @llvm.read_register.i32(metadata !119) #16
  %and.i.i89 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i89 to ptr
  %preempt_count.i90 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i90, align 4
  %and39 = and i32 %24, 65280
  %or40 = or i32 %or, %and39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or40)
  %tobool41.not = icmp eq i32 %or40, 0
  br i1 %tobool41.not, label %land.rhs.preheader, label %lor.lhs.false.do.end62_crit_edge

lor.lhs.false.do.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end62

do.body44:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 826) #16
  br label %cleanup

land.rhs.preheader:                               ; preds = %lor.lhs.false
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 826) #16
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %cnt.094 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %cnt.094)
  %exitcond.not = icmp eq i32 %cnt.094, 1000
  br i1 %exitcond.not, label %land.rhs.do.end62_crit_edge, label %while.body

land.rhs.do.end62_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end62

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %cnt.094, 1
  call void @msleep(i32 noundef 5) #16
  %25 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seq, align 4
  %call54 = call i32 @amdgpu_fence_wait_polling(ptr noundef %ring2, i32 noundef %26, i32 noundef 5000) #16
  %cmp50 = icmp slt i32 %call54, 1
  br i1 %cmp50, label %while.body.land.rhs_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

failed_undo:                                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #18
  call void @amdgpu_ring_undo(ptr noundef %ring2) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call17) #16
  br label %do.end62

do.end62:                                         ; preds = %failed_undo, %land.rhs.do.end62_crit_edge, %lor.lhs.false.do.end62_crit_edge, %land.lhs.true.do.end62_crit_edge
  %27 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.49, i32 noundef %reg) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %while.body.cleanup_crit_edge, %do.body44, %do.end11.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_gfx_get_num_kcq(ptr nocapture noundef readonly %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_num_kcq to i32))
  %0 = load i32, ptr @amdgpu_num_kcq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %1 = icmp ugt i32 %0, 8
  br i1 %1, label %do.end, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.51) #19
  br label %return

return:                                           ; preds = %do.end, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 8, %do.end ], [ 8, %entry.return_crit_edge ], [ %0, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_gfx_state_change_set(ptr noundef %adev, i32 noundef %state) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #16
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gfx_state_change_set = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %gfx_state_change_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gfx_state_change_set, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %state) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #8 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !117}
!llvm.named.register.sp = !{!119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 160, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 162, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 167, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @amdgpu_gfx_parse_disable_cu._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @amdgpu_gfx_parse_disable_cu._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 170, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 234, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @amdgpu_gfx_compute_queue_acquire.__UNIQUE_ID_ddebug345, !13, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!17 = !{ptr @amdgpu_gfx_kiq_init_ring.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 301, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 314, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 318, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @amdgpu_gfx_kiq_init_ring._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @amdgpu_gfx_kiq_init_ring._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 346, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @amdgpu_gfx_kiq_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @amdgpu_gfx_kiq_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 354, i32 3}
!36 = !{ptr @amdgpu_gfx_kiq_init._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @amdgpu_gfx_kiq_init._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 380, i32 4}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @amdgpu_gfx_mqd_sw_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @amdgpu_gfx_mqd_sw_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 387, i32 5}
!45 = !{ptr @amdgpu_gfx_mqd_sw_init._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 399, i32 6}
!49 = !{ptr @amdgpu_gfx_mqd_sw_init._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @amdgpu_gfx_mqd_sw_init._entry.28, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 406, i32 6}
!53 = !{ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @amdgpu_gfx_mqd_sw_init._entry.30, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 419, i32 5}
!56 = !{ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @amdgpu_gfx_mqd_sw_init._entry.32, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 426, i32 5}
!59 = !{ptr @amdgpu_gfx_mqd_sw_init._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 519, i32 4}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 526, i32 2}
!64 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @amdgpu_gfx_enable_kcq._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @amdgpu_gfx_enable_kcq._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 533, i32 3}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 545, i32 3}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 575, i32 7}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 597, i32 6}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @amdgpu_gfx_off_ctrl.__UNIQUE_ID_ddebug346, !74, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 629, i32 17}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 720, i32 2}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 740, i32 3}
!83 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @amdgpu_kiq_rreg._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @amdgpu_kiq_rreg._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 786, i32 2}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @amdgpu_kiq_rreg._entry.45, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @amdgpu_kiq_rreg._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 842, i32 2}
!93 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @amdgpu_kiq_wreg._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @amdgpu_kiq_wreg._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 850, i32 3}
!98 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @amdgpu_gfx_get_num_kcq._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @amdgpu_gfx_get_num_kcq._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 184, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @amdgpu_gfx_is_multipipe_capable._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @amdgpu_gfx_is_multipipe_capable._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c", i32 290, i32 2}
!108 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @amdgpu_gfx_kiq_acquire._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @amdgpu_gfx_kiq_acquire._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!113 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @amdgpu_bo_reserve._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @amdgpu_bo_reserve._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!119 = !{!"sp"}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i32 0, i32 33}
!130 = !{!"auto-init"}
!131 = !{i64 2148949827, i64 2148949832, i64 2148949845, i64 2148949889, i64 2148949923, i64 2148949944}
!132 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i8 0, i8 2}
!136 = !{i64 2148476046}
!137 = !{i64 749057, i64 749081, i64 749102, i64 749119, i64 749136}
!138 = !{i64 2148476272}
!139 = !{i64 2158790199, i64 2158790703, i64 2158790236, i64 2158790292, i64 2158790326, i64 2158790350, i64 2158790391, i64 2158790412, i64 2158790440, i64 2158790474}
!140 = !{i64 2158794444}
!141 = !{i64 2158796534, i64 2158797038, i64 2158796571, i64 2158796627, i64 2158796661, i64 2158796685, i64 2158796726, i64 2158796747, i64 2158796775, i64 2158796809}
