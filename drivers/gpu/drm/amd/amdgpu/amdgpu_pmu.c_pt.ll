; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.amdgpu_pmu_config = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_pmu_attr = type { ptr, ptr }
%struct.amdgpu_pmu_type = type { i32, i32 }
%struct.amdgpu_pmu_entry = type { %struct.list_head, ptr, %struct.pmu, i32, ptr, ptr, %struct.attribute_group, ptr, %struct.attribute_group, ptr }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.117, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.99, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.109, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.99 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.109 = type { i32, ptr }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.116], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.116 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.113] }
%struct.anon.113 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.117 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.128, i32, i32, i32, i32 }
%union.anon.128 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.amdgpu_pmu_event_attribute = type { %struct.device_attribute, ptr, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.55, i64, i64, i64, %union.anon.56, i32, %union.anon.57, %union.anon.58, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.55 = type { i64 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i64 }
%union.anon.58 = type { i64 }
%struct.hw_perf_event = type { %union.anon.59, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.66, i64, i64, i64, i64 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i64, %struct.local64_t }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.amdgpu_df_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@amdgpu_pmu_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @amdgpu_pmu_list, ptr @amdgpu_pmu_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DF\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"amdgpu_df\00", [22 x i8] zeroinitializer }, align 32
@df_vega20_config = internal global { %struct.amdgpu_pmu_config, [40 x i8] } { %struct.amdgpu_pmu_config { ptr @df_vega20_formats, i32 3, ptr @df_vega20_events, i32 8, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@vega20_config = internal global { %struct.amdgpu_pmu_config, [40 x i8] } { %struct.amdgpu_pmu_config { ptr @amdgpu_pmu_formats, i32 4, ptr @vega20_events, i32 2, ptr @vega20_types, i32 1 }, [40 x i8] zeroinitializer }, align 32
@arcturus_config = internal global { %struct.amdgpu_pmu_config, [40 x i8] } { %struct.amdgpu_pmu_config { ptr @amdgpu_pmu_formats, i32 4, ptr @arcturus_events, i32 6, ptr @arcturus_types, i32 1 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%d\00", [26 x i8] zeroinitializer }, align 32
@init_pmu_entry_by_type_and_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016amdgpu: Detected AMDGPU %s Counters. # of Counters = %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"init_pmu_entry_by_type_and_add\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c\00", [56 x i8] zeroinitializer }, align 32
@init_pmu_entry_by_type_and_add._entry_ptr = internal global ptr @init_pmu_entry_by_type_and_add._entry, section ".printk_index", align 4
@init_pmu_entry_by_type_and_add._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016amdgpu: Detected AMDGPU %d Perf Events.\0A\00", [53 x i8] zeroinitializer }, align 32
@init_pmu_entry_by_type_and_add._entry_ptr.12 = internal global ptr @init_pmu_entry_by_type_and_add._entry.10, section ".printk_index", align 4
@init_pmu_entry_by_type_and_add._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014amdgpu: Error initializing AMDGPU %s PMUs.\0A\00", [50 x i8] zeroinitializer }, align 32
@init_pmu_entry_by_type_and_add._entry_ptr.15 = internal global ptr @init_pmu_entry_by_type_and_add._entry.13, section ".printk_index", align 4
@amdgpu_perf_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_perf_start.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_perf_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_pmu_create_event_attrs_by_type.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s,type=0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@df_vega20_formats = internal global { [3 x %struct.amdgpu_pmu_attr], [40 x i8] } { [3 x %struct.amdgpu_pmu_attr] [%struct.amdgpu_pmu_attr { ptr @.str.19, ptr @.str.20 }, %struct.amdgpu_pmu_attr { ptr @.str.21, ptr @.str.22 }, %struct.amdgpu_pmu_attr { ptr @.str.23, ptr @.str.24 }], [40 x i8] zeroinitializer }, align 32
@df_vega20_events = internal global { [8 x %struct.amdgpu_pmu_attr], [32 x i8] } { [8 x %struct.amdgpu_pmu_attr] [%struct.amdgpu_pmu_attr { ptr @.str.25, ptr @.str.26 }, %struct.amdgpu_pmu_attr { ptr @.str.27, ptr @.str.28 }, %struct.amdgpu_pmu_attr { ptr @.str.29, ptr @.str.30 }, %struct.amdgpu_pmu_attr { ptr @.str.31, ptr @.str.32 }, %struct.amdgpu_pmu_attr { ptr @.str.33, ptr @.str.34 }, %struct.amdgpu_pmu_attr { ptr @.str.35, ptr @.str.36 }, %struct.amdgpu_pmu_attr { ptr @.str.37, ptr @.str.38 }, %struct.amdgpu_pmu_attr { ptr @.str.39, ptr @.str.40 }], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config:0-7\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"instance\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config:8-15\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"umask\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:16-23\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cake0_pcsout_txdata\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x46,umask=0x2\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cake1_pcsout_txdata\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x47,umask=0x2\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cake0_pcsout_txmeta\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x46,umask=0x4\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cake1_pcsout_txmeta\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x47,umask=0x4\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cake0_ftiinstat_reqalloc\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0xb,instance=0x46,umask=0x4\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cake1_ftiinstat_reqalloc\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0xb,instance=0x47,umask=0x4\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cake0_ftiinstat_rspalloc\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0xb,instance=0x46,umask=0x8\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cake1_ftiinstat_rspalloc\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0xb,instance=0x47,umask=0x8\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_pmu_formats = internal global { [4 x %struct.amdgpu_pmu_attr], [32 x i8] } { [4 x %struct.amdgpu_pmu_attr] [%struct.amdgpu_pmu_attr { ptr @.str.19, ptr @.str.20 }, %struct.amdgpu_pmu_attr { ptr @.str.21, ptr @.str.22 }, %struct.amdgpu_pmu_attr { ptr @.str.23, ptr @.str.24 }, %struct.amdgpu_pmu_attr { ptr @.str.41, ptr @.str.42 }], [32 x i8] zeroinitializer }, align 32
@vega20_events = internal global { [2 x %struct.amdgpu_pmu_attr], [16 x i8] } { [2 x %struct.amdgpu_pmu_attr] [%struct.amdgpu_pmu_attr { ptr @.str.43, ptr @.str.26 }, %struct.amdgpu_pmu_attr { ptr @.str.44, ptr @.str.28 }], [16 x i8] zeroinitializer }, align 32
@vega20_types = internal global { [1 x %struct.amdgpu_pmu_type], [24 x i8] } { [1 x %struct.amdgpu_pmu_type] [%struct.amdgpu_pmu_type { i32 2, i32 2 }], [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config:56-63\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgmi_link0_data_outbound\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgmi_link1_data_outbound\00", [39 x i8] zeroinitializer }, align 32
@arcturus_events = internal global { [6 x %struct.amdgpu_pmu_attr], [48 x i8] } { [6 x %struct.amdgpu_pmu_attr] [%struct.amdgpu_pmu_attr { ptr @.str.43, ptr @.str.45 }, %struct.amdgpu_pmu_attr { ptr @.str.44, ptr @.str.46 }, %struct.amdgpu_pmu_attr { ptr @.str.47, ptr @.str.48 }, %struct.amdgpu_pmu_attr { ptr @.str.49, ptr @.str.50 }, %struct.amdgpu_pmu_attr { ptr @.str.51, ptr @.str.52 }, %struct.amdgpu_pmu_attr { ptr @.str.53, ptr @.str.54 }], [48 x i8] zeroinitializer }, align 32
@arcturus_types = internal global { [1 x %struct.amdgpu_pmu_type], [24 x i8] } { [1 x %struct.amdgpu_pmu_type] [%struct.amdgpu_pmu_type { i32 2, i32 6 }], [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x4b,umask=0x2\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x4c,umask=0x2\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgmi_link2_data_outbound\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x4d,umask=0x2\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgmi_link3_data_outbound\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x4e,umask=0x2\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgmi_link4_data_outbound\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x4f,umask=0x2\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xgmi_link5_data_outbound\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event=0x7,instance=0x50,umask=0x2\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 23]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"amdgpu_pmu_list\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 75, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 629, i32 7 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 629, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"df_vega20_config\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 169, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 643, i32 7 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 643, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"vega20_config\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 134, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"arcturus_config\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 199, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 609, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 611, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 546, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 555, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 558, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 572, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 423, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 69, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 71, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"df_vega20_formats\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 144, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"df_vega20_events\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 150, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 145, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 145, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 146, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 146, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 147, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 147, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 151, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 152, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 153, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 154, i32 14 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 155, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 156, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 157, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 158, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 159, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 160, i32 14 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 161, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 162, i32 14 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 163, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 164, i32 14 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 165, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 166, i32 14 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"amdgpu_pmu_formats\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 114, i32 31 }
@___asan_gen_.197 = private unnamed_addr constant [14 x i8] c"vega20_events\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 122, i32 31 }
@___asan_gen_.200 = private unnamed_addr constant [13 x i8] c"vega20_types\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 129, i32 31 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 118, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 118, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 123, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 125, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"arcturus_events\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 179, i32 31 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"arcturus_types\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 194, i32 31 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 181, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 183, i32 14 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 184, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 185, i32 14 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 186, i32 12 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 187, i32 14 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 188, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 189, i32 14 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 190, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 191, i32 14 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @init_pmu_entry_by_type_and_add._entry, ptr @init_pmu_entry_by_type_and_add._entry.10, ptr @init_pmu_entry_by_type_and_add._entry.13, ptr @init_pmu_entry_by_type_and_add._entry_ptr, ptr @init_pmu_entry_by_type_and_add._entry_ptr.12, ptr @init_pmu_entry_by_type_and_add._entry_ptr.15, ptr @amdgpu_pmu_list, ptr @.str, ptr @.str.1, ptr @df_vega20_config, ptr @.str.2, ptr @.str.3, ptr @vega20_config, ptr @arcturus_config, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @amdgpu_pmu_create_event_attrs_by_type.__key, ptr @.str.17, ptr @.str.18, ptr @df_vega20_formats, ptr @df_vega20_events, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @amdgpu_pmu_formats, ptr @vega20_events, ptr @vega20_types, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @arcturus_events, ptr @arcturus_types, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pmu_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @df_vega20_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmu_entry_by_type_and_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmu_entry_by_type_and_add._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pmu_entry_by_type_and_add._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pmu_create_event_attrs_by_type.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @df_vega20_formats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @df_vega20_events to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pmu_formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_events to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcturus_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_pmu_fini(ptr noundef readnone %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @amdgpu_pmu_list, align 4
  %cmp.not28 = icmp eq ptr %0, @amdgpu_pmu_list
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pe.029 = phi ptr [ %temp.031, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %pe.029 to i32
  call void @__asan_load4_noabort(i32 %1)
  %temp.031 = load ptr, ptr %pe.029, align 4
  %adev6 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pe.029, i32 0, i32 1
  %2 = ptrtoint ptr %adev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev6, align 4
  %cmp7.not = icmp eq ptr %3, %adev
  br i1 %cmp7.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pe.029) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pe.029, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %pe.029 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pe.029, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %pe.029 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %pe.029, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pe.029, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pmu = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pe.029, i32 0, i32 2
  tail call void @perf_pmu_unregister(ptr noundef %pmu) #10
  %attr_groups = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pe.029, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %attr_groups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attr_groups, align 4
  tail call void @kfree(ptr noundef %13) #10
  %attrs = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pe.029, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attrs, align 4
  tail call void @kfree(ptr noundef %15) #10
  %fmt_attr = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pe.029, i32 0, i32 7
  %16 = ptrtoint ptr %fmt_attr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt_attr, align 4
  tail call void @kfree(ptr noundef %17) #10
  %attrs10 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pe.029, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %attrs10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs10, align 4
  tail call void @kfree(ptr noundef %19) #10
  %evt_attr = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pe.029, i32 0, i32 9
  %20 = ptrtoint ptr %evt_attr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %evt_attr, align 4
  tail call void @kfree(ptr noundef %21) #10
  tail call void @kfree(ptr noundef %pe.029) #10
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %temp.031, @amdgpu_pmu_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_pmu_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_pmu_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 23, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 232) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %adev1.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %adev1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %adev, ptr %adev1.i, align 8
  %fmt_attr_group.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %fmt_attr_group.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.4, ptr %fmt_attr_group.i, align 8
  %attrs.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %attrs.i, align 4
  %evt_attr_group.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %evt_attr_group.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.5, ptr %evt_attr_group.i, align 8
  %attrs5.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %attrs5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %attrs5.i, align 4
  %pmu_perf_type.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pmu_perf_type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %pmu_perf_type.i, align 4
  %pmu_type_name6.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %pmu_type_name6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str, ptr %pmu_type_name6.i, align 8
  %pmu_file_prefix7.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %pmu_file_prefix7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.1, ptr %pmu_file_prefix7.i, align 4
  %call1 = tail call fastcc i32 @init_pmu_entry_by_type_and_add(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @df_vega20_config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 232) #13
  %tobool.not.i42 = icmp eq ptr %call7.i.i.i41, null
  br i1 %tobool.not.i42, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_pmu_fini(ptr noundef %adev)
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %adev1.i43 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i41, i32 0, i32 1
  %13 = ptrtoint ptr %adev1.i43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %adev, ptr %adev1.i43, align 8
  %fmt_attr_group.i44 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i41, i32 0, i32 6
  %14 = ptrtoint ptr %fmt_attr_group.i44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.4, ptr %fmt_attr_group.i44, align 8
  %attrs.i45 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i41, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %attrs.i45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %attrs.i45, align 4
  %evt_attr_group.i46 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i41, i32 0, i32 8
  %16 = ptrtoint ptr %evt_attr_group.i46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %evt_attr_group.i46, align 8
  %attrs5.i47 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i41, i32 0, i32 8, i32 3
  %17 = ptrtoint ptr %attrs5.i47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %attrs5.i47, align 4
  %pmu_perf_type.i48 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i41, i32 0, i32 3
  %18 = ptrtoint ptr %pmu_perf_type.i48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %pmu_perf_type.i48, align 4
  %pmu_type_name6.i49 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i41, i32 0, i32 4
  %19 = ptrtoint ptr %pmu_type_name6.i49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.2, ptr %pmu_type_name6.i49, align 8
  %pmu_file_prefix7.i50 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i41, i32 0, i32 5
  %20 = ptrtoint ptr %pmu_file_prefix7.i50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.3, ptr %pmu_file_prefix7.i50, align 4
  %call9 = tail call fastcc i32 @init_pmu_entry_by_type_and_add(ptr noundef nonnull %call7.i.i.i41, ptr noundef nonnull @vega20_config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i41) #10
  tail call void @amdgpu_pmu_fini(ptr noundef %adev)
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 232) #13
  %tobool.not.i54 = icmp eq ptr %call7.i.i.i53, null
  br i1 %tobool.not.i54, label %sw.bb13.cleanup_crit_edge, label %if.end17

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  %adev1.i55 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i53, i32 0, i32 1
  %22 = ptrtoint ptr %adev1.i55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %adev, ptr %adev1.i55, align 8
  %fmt_attr_group.i56 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i53, i32 0, i32 6
  %23 = ptrtoint ptr %fmt_attr_group.i56 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.4, ptr %fmt_attr_group.i56, align 8
  %attrs.i57 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i53, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %attrs.i57 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %attrs.i57, align 4
  %evt_attr_group.i58 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i53, i32 0, i32 8
  %25 = ptrtoint ptr %evt_attr_group.i58 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.5, ptr %evt_attr_group.i58, align 8
  %attrs5.i59 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i53, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %attrs5.i59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %attrs5.i59, align 4
  %pmu_perf_type.i60 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i53, i32 0, i32 3
  %27 = ptrtoint ptr %pmu_perf_type.i60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %pmu_perf_type.i60, align 4
  %pmu_type_name6.i61 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i53, i32 0, i32 4
  %28 = ptrtoint ptr %pmu_type_name6.i61 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.2, ptr %pmu_type_name6.i61, align 8
  %pmu_file_prefix7.i62 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %call7.i.i.i53, i32 0, i32 5
  %29 = ptrtoint ptr %pmu_file_prefix7.i62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.3, ptr %pmu_file_prefix7.i62, align 4
  %call18 = tail call fastcc i32 @init_pmu_entry_by_type_and_add(ptr noundef nonnull %call7.i.i.i53, ptr noundef nonnull @arcturus_config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i53) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.then11, %if.end8.cleanup_crit_edge, %if.then7, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then20 ], [ %call1, %if.then3 ], [ %call9, %if.then11 ], [ -12, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -12, %sw.bb.cleanup_crit_edge ], [ -12, %sw.bb13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pmu_entry_by_type_and_add(ptr noundef %pmu_entry, ptr nocapture noundef readonly %config) unnamed_addr #0 align 64 {
entry:
  %attr_groups = alloca [3 x ptr], align 4
  %pmu_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attr_groups) #10
  %0 = getelementptr inbounds [3 x ptr], ptr %attr_groups, i32 0, i32 1
  %1 = getelementptr inbounds [3 x ptr], ptr %attr_groups, i32 0, i32 2
  %fmt_attr_group = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 6
  %2 = ptrtoint ptr %attr_groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt_attr_group, ptr %attr_groups, align 4
  %evt_attr_group = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %evt_attr_group, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pmu_name) #10
  %pmu = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2
  %5 = call ptr @memset(ptr %pmu_name, i32 255, i32 32)
  %6 = call ptr @memset(ptr %pmu, i32 0, i32 48)
  %.compoundliteral.sroa.2.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 11
  %7 = ptrtoint ptr %.compoundliteral.sroa.2.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %.compoundliteral.sroa.2.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 12
  %8 = call ptr @memset(ptr %.compoundliteral.sroa.3.0.pmu.sroa_idx, i32 0, i32 16)
  %.compoundliteral.sroa.373.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 16
  %9 = ptrtoint ptr %.compoundliteral.sroa.373.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @amdgpu_perf_event_init, ptr %.compoundliteral.sroa.373.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 17
  %10 = ptrtoint ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.4.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.474.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 19
  %11 = ptrtoint ptr %.compoundliteral.sroa.474.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @amdgpu_perf_add, ptr %.compoundliteral.sroa.474.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 20
  %12 = ptrtoint ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @amdgpu_perf_del, ptr %.compoundliteral.sroa.5.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.6.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 21
  %13 = ptrtoint ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @amdgpu_perf_start, ptr %.compoundliteral.sroa.6.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 22
  %14 = ptrtoint ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @amdgpu_perf_stop, ptr %.compoundliteral.sroa.7.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 23
  %15 = ptrtoint ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @amdgpu_perf_read, ptr %.compoundliteral.sroa.8.0.pmu.sroa_idx, align 4
  %.compoundliteral.sroa.9.0.pmu.sroa_idx = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 24
  %16 = call ptr @memset(ptr %.compoundliteral.sroa.9.0.pmu.sroa_idx, i32 0, i32 60)
  %fmt_attr = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 7
  %evt_attr = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 9
  %num_formats.i = getelementptr inbounds %struct.amdgpu_pmu_config, ptr %config, i32 0, i32 1
  %17 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_formats.i, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 36) #10
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !143

kcalloc.exit.thread.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %fmt_attr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fmt_attr, align 4
  br label %do.end62

if.end7.i.i.i:                                    ; preds = %entry
  %22 = extractvalue { i32, i1 } %19, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #14
  %23 = ptrtoint ptr %fmt_attr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i.i, ptr %fmt_attr, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.do.end62_crit_edge, label %if.end.i

if.end7.i.i.i.do.end62_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

if.end.i:                                         ; preds = %if.end7.i.i.i
  %24 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_formats.i, align 4
  %add.i = add i32 %25, 1
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #10
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit62.thread.i, label %if.end7.i.i60.i, !prof !143

kcalloc.exit62.thread.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %attrs135.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %attrs135.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %attrs135.i, align 4
  br label %err_fmt_attr_grp.i

if.end7.i.i60.i:                                  ; preds = %if.end.i
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i59.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #14
  %attrs.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i59.i, ptr %attrs.i, align 4
  %tobool4.not.i = icmp eq ptr %call8.i.i59.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i60.i.err_fmt_attr_grp.i_crit_edge, label %if.end6.i

if.end7.i.i60.i.err_fmt_attr_grp.i_crit_edge:     ; preds = %if.end7.i.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_fmt_attr_grp.i

if.end6.i:                                        ; preds = %if.end7.i.i60.i
  %num_events.i = getelementptr inbounds %struct.amdgpu_pmu_config, ptr %config, i32 0, i32 3
  %31 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_events.i, align 4
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 36) #10
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %kcalloc.exit95.thread.i, label %if.end7.i.i93.i, !prof !143

kcalloc.exit95.thread.i:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %evt_attr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %evt_attr, align 4
  br label %err_evt_attr.i

if.end7.i.i93.i:                                  ; preds = %if.end6.i
  %36 = extractvalue { i32, i1 } %33, 0
  %call8.i.i92.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #14
  %37 = ptrtoint ptr %evt_attr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i92.i, ptr %evt_attr, align 4
  %tobool8.not.i = icmp eq ptr %call8.i.i92.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i93.i.err_evt_attr.i_crit_edge, label %if.end10.i

if.end7.i.i93.i.err_evt_attr.i_crit_edge:         ; preds = %if.end7.i.i93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_evt_attr.i

if.end10.i:                                       ; preds = %if.end7.i.i93.i
  %38 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_events.i, align 4
  %add12.i = add i32 %39, 1
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add12.i, i32 4) #10
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kcalloc.exit128.thread.i, label %if.end7.i.i126.i, !prof !143

kcalloc.exit128.thread.i:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %attrs14148.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 8, i32 3
  %42 = ptrtoint ptr %attrs14148.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %attrs14148.i, align 4
  br label %err_evt_attr_grp.i

if.end7.i.i126.i:                                 ; preds = %if.end10.i
  %43 = extractvalue { i32, i1 } %40, 0
  %call8.i.i125.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #14
  %attrs14.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 8, i32 3
  %44 = ptrtoint ptr %attrs14.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.i125.i, ptr %attrs14.i, align 4
  %tobool16.not.i = icmp eq ptr %call8.i.i125.i, null
  br i1 %tobool16.not.i, label %if.end7.i.i126.i.err_evt_attr_grp.i_crit_edge, label %if.end

if.end7.i.i126.i.err_evt_attr_grp.i_crit_edge:    ; preds = %if.end7.i.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_evt_attr_grp.i

err_evt_attr_grp.i:                               ; preds = %if.end7.i.i126.i.err_evt_attr_grp.i_crit_edge, %kcalloc.exit128.thread.i
  %45 = ptrtoint ptr %evt_attr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %evt_attr, align 4
  tail call void @kfree(ptr noundef %46) #10
  br label %err_evt_attr.i

err_evt_attr.i:                                   ; preds = %err_evt_attr_grp.i, %if.end7.i.i93.i.err_evt_attr.i_crit_edge, %kcalloc.exit95.thread.i
  %47 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %attrs.i, align 4
  tail call void @kfree(ptr noundef %48) #10
  br label %err_fmt_attr_grp.i

err_fmt_attr_grp.i:                               ; preds = %err_evt_attr.i, %if.end7.i.i60.i.err_fmt_attr_grp.i_crit_edge, %kcalloc.exit62.thread.i
  %49 = ptrtoint ptr %fmt_attr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fmt_attr, align 4
  tail call void @kfree(ptr noundef %50) #10
  br label %do.end62

if.end:                                           ; preds = %if.end7.i.i126.i
  %51 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config, align 4
  %53 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp27.i.i = icmp sgt i32 %54, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %if.end.amdgpu_pmu_create_attrs.exit_crit_edge

if.end.amdgpu_pmu_create_attrs.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_pmu_create_attrs.exit

for.body.lr.ph.i.i:                               ; preds = %if.end
  %55 = ptrtoint ptr %fmt_attr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fmt_attr, align 4
  %attrs.i.i = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 6, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pmu_attr.addr.028.i.i = phi ptr [ %56, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %57 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %attrs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %58, i32 %i.029.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %pmu_attr.addr.028.i.i, ptr %arrayidx.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %pmu_attr.addr.028.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @amdgpu_pmu_create_event_attrs_by_type.__key, ptr %key.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.amdgpu_pmu_attr, ptr %52, i32 %i.029.i.i
  %61 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx4.i.i, align 4
  %63 = ptrtoint ptr %pmu_attr.addr.028.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %pmu_attr.addr.028.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.attribute, ptr %pmu_attr.addr.028.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 292, ptr %mode.i.i, align 4
  %show.i.i = getelementptr inbounds %struct.device_attribute, ptr %pmu_attr.addr.028.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %show.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @amdgpu_pmu_event_show, ptr %show.i.i, align 4
  %config.i.i = getelementptr %struct.amdgpu_pmu_attr, ptr %52, i32 %i.029.i.i, i32 1
  %66 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i.i, align 4
  %event_str.i.i = getelementptr inbounds %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %event_str.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %event_str.i.i, align 4
  %type12.i.i = getelementptr inbounds %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %type12.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %type12.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %54
  br i1 %exitcond.not.i.i, label %for.body.i.i.amdgpu_pmu_create_attrs.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.amdgpu_pmu_create_attrs.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_pmu_create_attrs.exit

amdgpu_pmu_create_attrs.exit:                     ; preds = %for.body.i.i.amdgpu_pmu_create_attrs.exit_crit_edge, %if.end.amdgpu_pmu_create_attrs.exit_crit_edge
  %pmu_perf_type = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 3
  %70 = ptrtoint ptr %pmu_perf_type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pmu_perf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp = icmp eq i32 %71, 2
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %amdgpu_pmu_create_attrs.exit
  %num_types = getelementptr inbounds %struct.amdgpu_pmu_config, ptr %config, i32 0, i32 5
  %72 = ptrtoint ptr %num_types to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_types, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp9139.not = icmp eq i32 %73, 0
  br i1 %cmp9139.not, label %for.cond.preheader.if.end23_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %events = getelementptr inbounds %struct.amdgpu_pmu_config, ptr %config, i32 0, i32 2
  %types = getelementptr inbounds %struct.amdgpu_pmu_config, ptr %config, i32 0, i32 4
  %attrs.i118 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 8, i32 3
  br label %for.body

for.body:                                         ; preds = %amdgpu_pmu_create_event_attrs_by_type.exit.for.body_crit_edge, %for.body.lr.ph
  %total_num_events.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %add18, %amdgpu_pmu_create_event_attrs_by_type.exit.for.body_crit_edge ]
  %i.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %amdgpu_pmu_create_event_attrs_by_type.exit.for.body_crit_edge ]
  %74 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %events, align 4
  %76 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %types, align 4
  %arrayidx = getelementptr %struct.amdgpu_pmu_type, ptr %77, i32 %i.0140
  %num_of_type = getelementptr %struct.amdgpu_pmu_type, ptr %77, i32 %i.0140, i32 1
  %78 = ptrtoint ptr %num_of_type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_of_type, align 4
  %add12 = add i32 %79, %total_num_events.0141
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %total_num_events.0141, i32 %add12)
  %cmp27.i = icmp slt i32 %total_num_events.0141, %add12
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %for.body.amdgpu_pmu_create_event_attrs_by_type.exit_crit_edge

for.body.amdgpu_pmu_create_event_attrs_by_type.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_pmu_create_event_attrs_by_type.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %82 = ptrtoint ptr %evt_attr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %evt_attr, align 4
  %add.ptr.i = getelementptr %struct.amdgpu_pmu_event_attribute, ptr %83, i32 %total_num_events.0141
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ %total_num_events.0141, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %pmu_attr.addr.028.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %84 = ptrtoint ptr %attrs.i118 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %attrs.i118, align 4
  %arrayidx.i = getelementptr ptr, ptr %85, i32 %i.029.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %pmu_attr.addr.028.i, ptr %arrayidx.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %pmu_attr.addr.028.i, i32 0, i32 3
  %87 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @amdgpu_pmu_create_event_attrs_by_type.__key, ptr %key.i, align 4
  %arrayidx4.i = getelementptr %struct.amdgpu_pmu_attr, ptr %75, i32 %i.029.i
  %88 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx4.i, align 4
  %90 = ptrtoint ptr %pmu_attr.addr.028.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %pmu_attr.addr.028.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %pmu_attr.addr.028.i, i32 0, i32 1
  %91 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %pmu_attr.addr.028.i, i32 0, i32 1
  %92 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @amdgpu_pmu_event_show, ptr %show.i, align 4
  %config.i = getelementptr %struct.amdgpu_pmu_attr, ptr %75, i32 %i.029.i, i32 1
  %93 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %config.i, align 4
  %event_str.i = getelementptr inbounds %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i, i32 0, i32 1
  %95 = ptrtoint ptr %event_str.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %event_str.i, align 4
  %type12.i = getelementptr inbounds %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i, i32 0, i32 2
  %96 = ptrtoint ptr %type12.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %81, ptr %type12.i, align 4
  %incdec.ptr.i = getelementptr %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i, i32 1
  %inc.i = add nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add12
  br i1 %exitcond.not.i, label %for.body.i.amdgpu_pmu_create_event_attrs_by_type.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.amdgpu_pmu_create_event_attrs_by_type.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_pmu_create_event_attrs_by_type.exit

amdgpu_pmu_create_event_attrs_by_type.exit:       ; preds = %for.body.i.amdgpu_pmu_create_event_attrs_by_type.exit_crit_edge, %for.body.amdgpu_pmu_create_event_attrs_by_type.exit_crit_edge
  %97 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %types, align 4
  %num_of_type17 = getelementptr %struct.amdgpu_pmu_type, ptr %98, i32 %i.0140, i32 1
  %99 = ptrtoint ptr %num_of_type17 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_of_type17, align 4
  %add18 = add i32 %100, %total_num_events.0141
  %inc = add nuw i32 %i.0140, 1
  %101 = ptrtoint ptr %num_types to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_types, align 4
  %cmp9 = icmp ult i32 %inc, %102
  br i1 %cmp9, label %amdgpu_pmu_create_event_attrs_by_type.exit.for.body_crit_edge, label %amdgpu_pmu_create_event_attrs_by_type.exit.if.end23_crit_edge

amdgpu_pmu_create_event_attrs_by_type.exit.if.end23_crit_edge: ; preds = %amdgpu_pmu_create_event_attrs_by_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

amdgpu_pmu_create_event_attrs_by_type.exit.for.body_crit_edge: ; preds = %amdgpu_pmu_create_event_attrs_by_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else:                                          ; preds = %amdgpu_pmu_create_attrs.exit
  %events21 = getelementptr inbounds %struct.amdgpu_pmu_config, ptr %config, i32 0, i32 2
  %103 = ptrtoint ptr %events21 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %events21, align 4
  %105 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp27.i.i119 = icmp sgt i32 %106, 0
  br i1 %cmp27.i.i119, label %for.body.lr.ph.i.i121, label %if.else.amdgpu_pmu_create_attrs.exit136_crit_edge

if.else.amdgpu_pmu_create_attrs.exit136_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_pmu_create_attrs.exit136

for.body.lr.ph.i.i121:                            ; preds = %if.else
  %107 = ptrtoint ptr %evt_attr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %evt_attr, align 4
  %attrs.i.i120 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 8, i32 3
  br label %for.body.i.i135

for.body.i.i135:                                  ; preds = %for.body.i.i135.for.body.i.i135_crit_edge, %for.body.lr.ph.i.i121
  %i.029.i.i122 = phi i32 [ 0, %for.body.lr.ph.i.i121 ], [ %inc.i.i133, %for.body.i.i135.for.body.i.i135_crit_edge ]
  %pmu_attr.addr.028.i.i123 = phi ptr [ %108, %for.body.lr.ph.i.i121 ], [ %incdec.ptr.i.i132, %for.body.i.i135.for.body.i.i135_crit_edge ]
  %109 = ptrtoint ptr %attrs.i.i120 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %attrs.i.i120, align 4
  %arrayidx.i.i124 = getelementptr ptr, ptr %110, i32 %i.029.i.i122
  %111 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %pmu_attr.addr.028.i.i123, ptr %arrayidx.i.i124, align 4
  %key.i.i125 = getelementptr inbounds %struct.attribute, ptr %pmu_attr.addr.028.i.i123, i32 0, i32 3
  %112 = ptrtoint ptr %key.i.i125 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @amdgpu_pmu_create_event_attrs_by_type.__key, ptr %key.i.i125, align 4
  %arrayidx4.i.i126 = getelementptr %struct.amdgpu_pmu_attr, ptr %104, i32 %i.029.i.i122
  %113 = ptrtoint ptr %arrayidx4.i.i126 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx4.i.i126, align 4
  %115 = ptrtoint ptr %pmu_attr.addr.028.i.i123 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %pmu_attr.addr.028.i.i123, align 4
  %mode.i.i127 = getelementptr inbounds %struct.attribute, ptr %pmu_attr.addr.028.i.i123, i32 0, i32 1
  %116 = ptrtoint ptr %mode.i.i127 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 292, ptr %mode.i.i127, align 4
  %show.i.i128 = getelementptr inbounds %struct.device_attribute, ptr %pmu_attr.addr.028.i.i123, i32 0, i32 1
  %117 = ptrtoint ptr %show.i.i128 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @amdgpu_pmu_event_show, ptr %show.i.i128, align 4
  %config.i.i129 = getelementptr %struct.amdgpu_pmu_attr, ptr %104, i32 %i.029.i.i122, i32 1
  %118 = ptrtoint ptr %config.i.i129 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %config.i.i129, align 4
  %event_str.i.i130 = getelementptr inbounds %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i.i123, i32 0, i32 1
  %120 = ptrtoint ptr %event_str.i.i130 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %event_str.i.i130, align 4
  %type12.i.i131 = getelementptr inbounds %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i.i123, i32 0, i32 2
  %121 = ptrtoint ptr %type12.i.i131 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %type12.i.i131, align 4
  %incdec.ptr.i.i132 = getelementptr %struct.amdgpu_pmu_event_attribute, ptr %pmu_attr.addr.028.i.i123, i32 1
  %inc.i.i133 = add nuw nsw i32 %i.029.i.i122, 1
  %exitcond.not.i.i134 = icmp eq i32 %inc.i.i133, %106
  br i1 %exitcond.not.i.i134, label %for.body.i.i135.amdgpu_pmu_create_attrs.exit136_crit_edge, label %for.body.i.i135.for.body.i.i135_crit_edge

for.body.i.i135.for.body.i.i135_crit_edge:        ; preds = %for.body.i.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i135

for.body.i.i135.amdgpu_pmu_create_attrs.exit136_crit_edge: ; preds = %for.body.i.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_pmu_create_attrs.exit136

amdgpu_pmu_create_attrs.exit136:                  ; preds = %for.body.i.i135.amdgpu_pmu_create_attrs.exit136_crit_edge, %if.else.amdgpu_pmu_create_attrs.exit136_crit_edge
  %122 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_events.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %amdgpu_pmu_create_attrs.exit136, %amdgpu_pmu_create_event_attrs_by_type.exit.if.end23_crit_edge, %for.cond.preheader.if.end23_crit_edge
  %total_num_events.1 = phi i32 [ %123, %amdgpu_pmu_create_attrs.exit136 ], [ 0, %for.cond.preheader.if.end23_crit_edge ], [ %add18, %amdgpu_pmu_create_event_attrs_by_type.exit.if.end23_crit_edge ]
  %call24 = call ptr @kmemdup(ptr noundef nonnull %attr_groups, i32 noundef 12, i32 noundef 3264) #10
  %attr_groups26 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 2, i32 3
  %124 = ptrtoint ptr %attr_groups26 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call24, ptr %attr_groups26, align 4
  %tobool29.not = icmp eq ptr %call24, null
  br i1 %tobool29.not, label %if.end23.err_attr_group_crit_edge, label %if.end31

if.end23.err_attr_group_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_attr_group

if.end31:                                         ; preds = %if.end23
  %pmu_file_prefix = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 5
  %125 = ptrtoint ptr %pmu_file_prefix to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pmu_file_prefix, align 4
  %adev = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 1
  %127 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adev, align 4
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %128, i32 0, i32 2, i32 6
  %129 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %primary, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %call34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pmu_name, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %126, i32 noundef %132)
  %call37 = call i32 @perf_pmu_register(ptr noundef %pmu, ptr noundef nonnull %pmu_name, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %err_register

if.end40:                                         ; preds = %if.end31
  %133 = ptrtoint ptr %pmu_perf_type to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pmu_perf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %134)
  %cmp42.not = icmp eq i32 %134, 2
  br i1 %cmp42.not, label %do.end48, label %do.end

do.end:                                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %pmu_type_name = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 4
  %135 = ptrtoint ptr %pmu_type_name to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pmu_type_name, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %136, i32 noundef %total_num_events.1) #15
  br label %if.end51

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %total_num_events.1) #15
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %do.end
  %137 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @amdgpu_pmu_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %pmu_entry, ptr noundef %137, ptr noundef nonnull @amdgpu_pmu_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %pmu_entry, ptr getelementptr inbounds (%struct.list_head, ptr @amdgpu_pmu_list, i32 0, i32 1), align 4
  %138 = ptrtoint ptr %pmu_entry to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @amdgpu_pmu_list, ptr %pmu_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %pmu_entry, i32 0, i32 1
  %139 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %137, ptr %prev3.i.i, align 4
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %pmu_entry, ptr %137, align 4
  br label %cleanup

err_register:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %attr_groups26 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %attr_groups26, align 4
  call void @kfree(ptr noundef %142) #10
  br label %err_attr_group

err_attr_group:                                   ; preds = %err_register, %if.end23.err_attr_group_crit_edge
  %ret.0 = phi i32 [ %call37, %err_register ], [ -12, %if.end23.err_attr_group_crit_edge ]
  %attrs = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 6, i32 3
  %143 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %attrs, align 4
  call void @kfree(ptr noundef %144) #10
  %145 = ptrtoint ptr %fmt_attr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fmt_attr, align 4
  call void @kfree(ptr noundef %146) #10
  %attrs58 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 8, i32 3
  %147 = ptrtoint ptr %attrs58 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %attrs58, align 4
  call void @kfree(ptr noundef %148) #10
  %149 = ptrtoint ptr %evt_attr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %evt_attr, align 4
  call void @kfree(ptr noundef %150) #10
  br label %do.end62

do.end62:                                         ; preds = %err_attr_group, %err_fmt_attr_grp.i, %if.end7.i.i.i.do.end62_crit_edge, %kcalloc.exit.thread.i
  %ret.1 = phi i32 [ %ret.0, %err_attr_group ], [ -12, %err_fmt_attr_grp.i ], [ -12, %if.end7.i.i.i.do.end62_crit_edge ], [ -12, %kcalloc.exit.thread.i ]
  %pmu_type_name64 = getelementptr inbounds %struct.amdgpu_pmu_entry, ptr %pmu_entry, i32 0, i32 4
  %151 = ptrtoint ptr %pmu_type_name64 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pmu_type_name64, align 4
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %152) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end.i.i, %if.end51.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end62 ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pmu_name) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attr_groups) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_perf_event_init(ptr nocapture noundef %event) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %type1 = getelementptr inbounds %struct.pmu, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp eq i32 %1, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %config = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %config, align 8
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %hw, align 8
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %config_base, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_perf_add(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %adev = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 120, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pmc_start = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %pmc_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmc_start, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pmu_perf_type = getelementptr i8, ptr %1, i32 160
  %8 = ptrtoint ptr %pmu_perf_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pmu_perf_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %9, label %if.end.sw.epilog_crit_edge [
    i32 1, label %if.end.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb6
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hw, align 8
  %shr = lshr i64 %12, 56
  %conv = trunc i64 %shr to i32
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6, %if.end.sw.epilog.sink.split_crit_edge
  %conv.sink = phi i32 [ %conv, %sw.bb6 ], [ %9, %if.end.sw.epilog.sink.split_crit_edge ]
  %config_base7 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %config_base7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.sink, ptr %config_base7, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %state, align 4
  %config_base9 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %config_base9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config_base9, align 8
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb10, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 4
  %funcs13 = getelementptr inbounds %struct.amdgpu_device, ptr %18, i32 0, i32 120, i32 1
  %19 = ptrtoint ptr %funcs13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs13, align 4
  %pmc_start14 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %pmc_start14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pmc_start14, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hw, align 8
  %call = tail call i32 %22(ptr noundef %18, i64 noundef %24, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb10.cleanup_crit_edge, label %if.end23

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %sw.bb10
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call, ptr %idx, align 4
  %and24 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_perf_start(ptr noundef %event, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end23.cleanup_crit_edge ], [ %call, %sw.bb10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_perf_del(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  %adev = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 120, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pmc_stop = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %pmc_stop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmc_stop, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @amdgpu_perf_stop(ptr noundef %event, i32 noundef 4)
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_base, align 8
  %.off = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev, align 4
  %funcs7 = getelementptr inbounds %struct.amdgpu_device, ptr %11, i32 0, i32 120, i32 1
  %12 = ptrtoint ptr %funcs7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs7, align 4
  %pmc_stop8 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %pmc_stop8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pmc_stop8, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hw, align 8
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  %call = tail call i32 %15(ptr noundef %11, i64 noundef %17, i32 noundef %19, i32 noundef 1) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  tail call void @perf_event_update_userpage(ptr noundef %event) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_perf_start(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b149 = load i1, ptr @amdgpu_perf_start.__already_done, align 1
  br i1 %.b149, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !144

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @amdgpu_perf_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 233, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end40:                                         ; preds = %entry
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %adev = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 120, i32 1
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool41.not = icmp eq ptr %7, null
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %lor.lhs.false

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end40
  %pmc_start = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %pmc_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmc_start, align 4
  %tobool45.not = icmp eq ptr %9, null
  br i1 %tobool45.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end47

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false
  %and50 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %land.rhs60, label %if.end47.if.end98_crit_edge

if.end47.if.end98_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.rhs60:                                       ; preds = %if.end47
  %.b147148 = load i1, ptr @amdgpu_perf_start.__already_done.16, align 1
  br i1 %.b147148, label %land.rhs60.if.end98_crit_edge, label %if.then71, !prof !144

land.rhs60.if.end98_crit_edge:                    ; preds = %land.rhs60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then71:                                        ; preds = %land.rhs60
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @amdgpu_perf_start.__already_done.16, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 240, i32 noundef 9, ptr noundef null) #10
  br label %if.end98

if.end98:                                         ; preds = %if.then71, %land.rhs60.if.end98_crit_edge, %if.end47.if.end98_crit_edge
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config_base, align 8
  %.off = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end98.sw.epilog_crit_edge

if.end98.sw.epilog_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end98
  %and107 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.then109, label %sw.bb.if.end117_crit_edge

sw.bb.if.end117_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then109:                                       ; preds = %sw.bb
  %13 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adev, align 4
  %funcs112 = getelementptr inbounds %struct.amdgpu_device, ptr %14, i32 0, i32 120, i32 1
  %15 = ptrtoint ptr %funcs112 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs112, align 4
  %pmc_start113 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %pmc_start113 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pmc_start113, align 4
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hw, align 8
  %call = tail call i32 %18(ptr noundef %14, i64 noundef %20, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then109.sw.epilog_crit_edge, label %if.end116

if.then109.sw.epilog_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end116:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call, ptr %idx, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %sw.bb.if.end117_crit_edge
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 4
  %funcs120 = getelementptr inbounds %struct.amdgpu_device, ptr %23, i32 0, i32 120, i32 1
  %24 = ptrtoint ptr %funcs120 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs120, align 4
  %pmc_start121 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %pmc_start121 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pmc_start121, align 4
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %hw, align 8
  %idx124 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %30 = ptrtoint ptr %idx124 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idx124, align 4
  %call125 = tail call i32 %27(ptr noundef %23, i64 noundef %29, i32 noundef %31, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end117, %if.then109.sw.epilog_crit_edge, %if.end98.sw.epilog_crit_edge
  tail call void @perf_event_update_userpage(ptr noundef %event) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_perf_stop(ptr noundef %event, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %state = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 8
  %adev = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 120, i32 1
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pmc_stop = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %pmc_stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmc_stop, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config_base, align 8
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end7.sw.epilog_crit_edge

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %hw, align 8
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  %call = tail call i32 %9(ptr noundef %5, i64 noundef %13, i32 noundef %15, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end7.sw.epilog_crit_edge
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %and14 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sw.epilog.if.end46_crit_edge, label %land.rhs

sw.epilog.if.end46_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.rhs:                                         ; preds = %sw.epilog
  %.b77 = load i1, ptr @amdgpu_perf_stop.__already_done, align 1
  br i1 %.b77, label %land.rhs.if.end46_crit_edge, label %if.then23, !prof !144

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @amdgpu_perf_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 322, i32 noundef 9, ptr noundef null) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then23, %land.rhs.if.end46_crit_edge, %sw.epilog.if.end46_crit_edge
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %state, align 4
  %and56 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_perf_read(ptr noundef %event)
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  %or61 = or i32 %21, 2
  store i32 %or61, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end46.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_perf_read(ptr noundef %event) #0 align 64 {
entry:
  %count = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25
  %pmu = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 12
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count) #10
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %count, align 8, !annotation !145
  %adev = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %4, i32 0, i32 120, i32 1
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pmc_get_count = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %pmc_get_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmc_get_count, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %lor.lhs.false
  %prev_count = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 5
  %config_base = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 2
  %idx = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 25, i32 0, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %prev_count, i32 noundef 8) #10
  %call.i = call i64 @generic_atomic64_read(ptr noundef %prev_count) #10
  %9 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config_base, align 8
  %.off = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 4
  %funcs7 = getelementptr inbounds %struct.amdgpu_device, ptr %12, i32 0, i32 120, i32 1
  %13 = ptrtoint ptr %funcs7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs7, align 4
  %pmc_get_count8 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %pmc_get_count8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmc_get_count8, align 4
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %hw, align 8
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx, align 4
  call void %16(ptr noundef %12, i64 noundef %18, i32 noundef %20, ptr noundef nonnull %count) #10
  br label %do.cond

sw.default:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %count, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.default, %sw.bb
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %count, align 8
  %call.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %prev_count, i32 noundef 8) #10
  %call.i30 = call i64 @generic_atomic64_cmpxchg(ptr noundef %prev_count, i64 noundef %call.i, i64 noundef %23) #10
  %cmp.not = icmp eq i64 %call.i30, %call.i
  br i1 %cmp.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %count, align 8
  %sub = sub i64 %25, %call.i
  %count13 = getelementptr inbounds %struct.perf_event, ptr %event, i32 0, i32 16
  %call.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %count13, i32 noundef 8) #10
  call void @generic_atomic64_add(i64 noundef %sub, ptr noundef %count13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_update_userpage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmu_event_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.amdgpu_pmu_event_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %event_str = getelementptr inbounds %struct.amdgpu_pmu_event_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %event_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event_str, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, ptr noundef %3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, ptr noundef %3, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 629, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 629, i32 13}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 643, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 643, i32 11}
!8 = !{ptr @amdgpu_pmu_list, !9, !"amdgpu_pmu_list", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 75, i32 8}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 609, i32 35}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 611, i32 35}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 546, i32 36}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 555, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @init_pmu_entry_by_type_and_add._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @init_pmu_entry_by_type_and_add._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 558, i32 3}
!24 = !{ptr @init_pmu_entry_by_type_and_add._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @init_pmu_entry_by_type_and_add._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 572, i32 2}
!28 = !{ptr @init_pmu_entry_by_type_and_add._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @init_pmu_entry_by_type_and_add._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 233, i32 6}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 240, i32 2}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 322, i32 2}
!36 = !{ptr @amdgpu_pmu_create_event_attrs_by_type.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 423, i32 3}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 69, i32 23}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 71, i32 22}
!42 = !{ptr @df_vega20_config, !43, !"df_vega20_config", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 169, i32 33}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 145, i32 12}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 145, i32 31}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 146, i32 12}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 146, i32 34}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 147, i32 12}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 147, i32 31}
!56 = !{ptr @df_vega20_formats, !57, !"df_vega20_formats", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 144, i32 31}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 151, i32 12}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 152, i32 14}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 153, i32 12}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 154, i32 14}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 155, i32 12}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 156, i32 14}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 157, i32 12}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 158, i32 14}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 159, i32 12}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 160, i32 14}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 161, i32 12}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 162, i32 14}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 163, i32 12}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 164, i32 14}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 165, i32 12}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 166, i32 14}
!90 = !{ptr @df_vega20_events, !91, !"df_vega20_events", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 150, i32 31}
!92 = !{ptr @vega20_config, !93, !"vega20_config", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 134, i32 33}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 118, i32 12}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 118, i32 30}
!98 = !{ptr @amdgpu_pmu_formats, !99, !"amdgpu_pmu_formats", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 114, i32 31}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 123, i32 12}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 125, i32 12}
!104 = !{ptr @vega20_events, !105, !"vega20_events", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 122, i32 31}
!106 = !{ptr @vega20_types, !107, !"vega20_types", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 129, i32 31}
!108 = !{ptr @arcturus_config, !109, !"arcturus_config", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 199, i32 33}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 181, i32 14}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 183, i32 14}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 184, i32 12}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 185, i32 14}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 186, i32 12}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 187, i32 14}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 188, i32 12}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 189, i32 14}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 190, i32 12}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 191, i32 14}
!130 = !{ptr @arcturus_events, !131, !"arcturus_events", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 179, i32 31}
!132 = !{ptr @arcturus_types, !133, !"arcturus_types", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_pmu.c", i32 194, i32 31}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{!"auto-init"}
