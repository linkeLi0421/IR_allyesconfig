; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.101, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.100], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.100 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.101 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.psp_gfx_cmd_resp = type { i32, i32, i32, i32, i32, i32, i32, %union.psp_gfx_commands, [52 x i8], %struct.psp_gfx_resp, [64 x i8] }
%union.psp_gfx_commands = type { %struct.psp_gfx_cmd_invoke_cmd }
%struct.psp_gfx_cmd_invoke_cmd = type { i32, i32, %struct.psp_gfx_buf_list }
%struct.psp_gfx_buf_list = type { i32, i32, [64 x %struct.psp_gfx_buf_desc] }
%struct.psp_gfx_buf_desc = type { i32, i32, i32 }
%struct.psp_gfx_resp = type { i32, i32, i32, i32, i32, [11 x i32], %union.psp_gfx_uresp }
%union.psp_gfx_uresp = type { %struct.psp_gfx_uresp_reserved }
%struct.psp_gfx_uresp_reserved = type { [8 x i32] }
%struct.ta_xgmi_shared_memory = type { i32, i32, i32, i8, [3 x i8], %union.ta_xgmi_cmd_input, %union.ta_xgmi_cmd_output }
%union.ta_xgmi_cmd_input = type { %struct.ta_xgmi_cmd_get_topology_info_input }
%struct.ta_xgmi_cmd_get_topology_info_input = type { i32, [64 x %struct.ta_xgmi_node_info] }
%struct.ta_xgmi_node_info = type { i64, i8, i8, i32 }
%union.ta_xgmi_cmd_output = type { %struct.ta_xgmi_cmd_get_topology_info_output }
%struct.ta_xgmi_cmd_get_topology_info_output = type { i32, [64 x %struct.ta_xgmi_node_info] }
%struct.ta_xgmi_peer_link_info = type { i64, i8 }
%struct.amdgpu_hive_info = type { %struct.kobject, i64, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.atomic_t, i32, ptr, %struct.task_barrier, i32 }
%struct.task_barrier = type { i32, %struct.atomic_t, %struct.semaphore, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ta_ras_shared_memory = type { i32, i32, i32, i32, %union.ta_ras_cmd_input, %union.ta_ras_cmd_output }
%union.ta_ras_cmd_input = type { %struct.ta_ras_trigger_error_input, [992 x i8] }
%struct.ta_ras_trigger_error_input = type { i32, i32, i32, i64, i64 }
%union.ta_ras_cmd_output = type { [256 x i32] }
%struct.ta_ras_output_flags = type { i8, i8, i8 }
%struct.ta_rap_shared_memory = type { i32, i32, i32, i32, %union.ta_rap_cmd_input, %union.ta_rap_cmd_output, [64 x i8] }
%union.ta_rap_cmd_input = type { %struct.ta_rap_cmd_input_data }
%struct.ta_rap_cmd_input_data = type { [8 x i8] }
%union.ta_rap_cmd_output = type { %struct.ta_rap_cmd_output_data }
%struct.ta_rap_cmd_output_data = type { i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.psp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psp_gfx_rb_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8], [7 x i32] }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.psp_firmware_header_v1_0 = type { %struct.common_firmware_header, %struct.psp_fw_legacy_bin_desc }
%struct.psp_fw_legacy_bin_desc = type { i32, i32, i32 }
%struct.psp_firmware_header_v1_3 = type { %struct.psp_firmware_header_v1_1, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc }
%struct.psp_firmware_header_v1_1 = type { %struct.psp_firmware_header_v1_0, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc }
%struct.psp_firmware_header_v1_2 = type { %struct.psp_firmware_header_v1_0, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc }
%struct.psp_firmware_header_v2_0 = type { %struct.common_firmware_header, i32, [0 x %struct.psp_fw_bin_desc] }
%struct.psp_fw_bin_desc = type { i32, i32, i32, i32 }
%struct.ta_firmware_header_v2_0 = type { %struct.common_firmware_header, i32, [0 x %struct.psp_fw_bin_desc] }
%struct.psp_runtime_data_header = type { i16, i16 }
%struct.psp_runtime_data_directory = type { i16, [64 x %struct.psp_runtime_entry] }
%struct.psp_runtime_entry = type { i32, i16, i16 }
%struct.psp_runtime_boot_cfg_entry = type { i32, i32 }
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
%struct.ta_ras_init_flags = type { i8, i8 }
%struct.securedisplay_cmd = type { i32, i32, [2 x i32], %union.ta_securedisplay_cmd_input, %union.ta_securedisplay_cmd_output }
%union.ta_securedisplay_cmd_input = type { [4 x i32] }
%union.ta_securedisplay_cmd_output = type { [4 x i32] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PSP failed to program reg id %d\00", [32 x i8] zeroinitializer }, align 32
@psp_ras_invoke._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014[drm] RAS: Unsupported Interface\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"psp_ras_invoke\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c\00", [56 x i8] zeroinitializer }, align 32
@psp_ras_invoke._entry_ptr = internal global ptr @psp_ras_invoke._entry, section ".printk_index", align 4
@psp_ras_invoke._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1344, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: ECC switch disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@psp_ras_invoke._entry_ptr.8 = internal global ptr @psp_ras_invoke._entry.4, section ".printk_index", align 4
@psp_ras_invoke._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1350, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: RAS internal register access blocked\0A\00", [50 x i8] zeroinitializer }, align 32
@psp_ras_invoke._entry_ptr.11 = internal global ptr @psp_ras_invoke._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ring_buffer_start = %p; ring_buffer_end = %p; write_frame = %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"write_frame is pointing to address out of bounds\0A\00", [46 x i8] zeroinitializer }, align 32
@psp_init_asd_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 2816, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: invalid chip name for asd microcode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"psp_init_asd_microcode\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@psp_init_asd_microcode._entry_ptr = internal global ptr @psp_init_asd_microcode._entry, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_asd.bin\00", [46 x i8] zeroinitializer }, align 32
@psp_init_asd_microcode._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.3, i32 2837, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: fail to initialize asd microcode\0A\00", [54 x i8] zeroinitializer }, align 32
@psp_init_asd_microcode._entry_ptr.20 = internal global ptr @psp_init_asd_microcode._entry.18, section ".printk_index", align 4
@psp_init_toc_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 2852, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: invalid chip name for toc microcode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"psp_init_toc_microcode\00", [41 x i8] zeroinitializer }, align 32
@psp_init_toc_microcode._entry_ptr = internal global ptr @psp_init_toc_microcode._entry, section ".printk_index", align 4
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_toc.bin\00", [46 x i8] zeroinitializer }, align 32
@psp_init_toc_microcode._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.3, i32 2873, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: fail to request/validate toc microcode\0A\00", [48 x i8] zeroinitializer }, align 32
@psp_init_toc_microcode._entry_ptr.26 = internal global ptr @psp_init_toc_microcode._entry.24, section ".printk_index", align 4
@psp_init_sos_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 3017, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: invalid chip name for sos microcode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"psp_init_sos_microcode\00", [41 x i8] zeroinitializer }, align 32
@psp_init_sos_microcode._entry_ptr = internal global ptr @psp_init_sos_microcode._entry, section ".printk_index", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_sos.bin\00", [46 x i8] zeroinitializer }, align 32
@psp_init_sos_microcode._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 3076, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: packed SOS count exceeds maximum limit\0A\00", [48 x i8] zeroinitializer }, align 32
@psp_init_sos_microcode._entry_ptr.32 = internal global ptr @psp_init_sos_microcode._entry.30, section ".printk_index", align 4
@psp_init_sos_microcode._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.3, i32 3091, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: unsupported psp sos firmware\0A\00", [58 x i8] zeroinitializer }, align 32
@psp_init_sos_microcode._entry_ptr.35 = internal global ptr @psp_init_sos_microcode._entry.33, section ".printk_index", align 4
@psp_init_sos_microcode._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.3, i32 3099, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: failed to init sos firmware\0A\00", [59 x i8] zeroinitializer }, align 32
@psp_init_sos_microcode._entry_ptr.38 = internal global ptr @psp_init_sos_microcode._entry.36, section ".printk_index", align 4
@psp_init_ta_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 3177, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: invalid chip name for ta microcode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"psp_init_ta_microcode\00", [42 x i8] zeroinitializer }, align 32
@psp_init_ta_microcode._entry_ptr = internal global ptr @psp_init_ta_microcode._entry, section ".printk_index", align 4
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu/%s_ta.bin\00", [47 x i8] zeroinitializer }, align 32
@psp_init_ta_microcode._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.3, i32 3193, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: unsupported TA header version\0A\00", [57 x i8] zeroinitializer }, align 32
@psp_init_ta_microcode._entry_ptr.44 = internal global ptr @psp_init_ta_microcode._entry.42, section ".printk_index", align 4
@psp_init_ta_microcode._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.40, ptr @.str.3, i32 3199, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: packed TA count exceeds maximum limit\0A\00", [49 x i8] zeroinitializer }, align 32
@psp_init_ta_microcode._entry_ptr.47 = internal global ptr @psp_init_ta_microcode._entry.45, section ".printk_index", align 4
@psp_init_ta_microcode._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.3, i32 3214, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: fail to initialize ta microcode\0A\00", [55 x i8] zeroinitializer }, align 32
@psp_init_ta_microcode._entry_ptr.50 = internal global ptr @psp_init_ta_microcode._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"psp\00", [28 x i8] zeroinitializer }, align 32
@psp_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str.51, ptr @psp_early_init, ptr null, ptr @psp_sw_init, ptr @psp_sw_fini, ptr null, ptr @psp_hw_init, ptr @psp_hw_fini, ptr null, ptr @psp_suspend, ptr @psp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @psp_set_clockgating_state, ptr @psp_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@psp_v3_1_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 4, i32 3, i32 1, i32 0, ptr @psp_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@psp_v10_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 4, i32 10, i32 0, i32 0, ptr @psp_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@psp_v11_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 4, i32 11, i32 0, i32 0, ptr @psp_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@psp_v11_0_8_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 4, i32 11, i32 0, i32 8, ptr @psp_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@psp_v12_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 4, i32 12, i32 0, i32 0, ptr @psp_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@psp_v13_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 4, i32 13, i32 0, i32 0, ptr @psp_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@psp_cmd_submit_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014[drm] failed to load ucode %s(0x%X) \00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psp_cmd_submit_buf\00", [45 x i8] zeroinitializer }, align 32
@psp_cmd_submit_buf._entry_ptr = internal global ptr @psp_cmd_submit_buf._entry, section ".printk_index", align 4
@psp_cmd_submit_buf._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014[drm] psp gfx command %s(0x%X) failed and response status is (0x%X)\0A\00", [57 x i8] zeroinitializer }, align 32
@psp_cmd_submit_buf._entry_ptr.56 = internal global ptr @psp_cmd_submit_buf._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LOAD_TA\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UNLOAD_TA\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INVOKE_CMD\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOAD_ASD\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SETUP_TMR\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOAD_IP_FW\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_TMR\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SAVE_RESTORE_IP_FW\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SETUP_VMR\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_VMR\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PROG_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GET_FW_ATTESTATION\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ID_LOAD_TOC\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AUTOLOAD_RLC\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BOOT_CFG\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UNKNOWN CMD\00", [20 x i8] zeroinitializer }, align 32
@amdgpu_ras_in_intr = external dso_local global %struct.atomic_t, align 4
@psp_ras_ta_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1303, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: RAS WARNING: cmd failed due to unsupported ip\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"psp_ras_ta_check_status\00", [40 x i8] zeroinitializer }, align 32
@psp_ras_ta_check_status._entry_ptr = internal global ptr @psp_ras_ta_check_status._entry, section ".printk_index", align 4
@psp_ras_ta_check_status._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 1307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"amdgpu: RAS WARNING: cmd failed due to unsupported error injection\0A\00", [60 x i8] zeroinitializer }, align 32
@psp_ras_ta_check_status._entry_ptr.77 = internal global ptr @psp_ras_ta_check_status._entry.75, section ".printk_index", align 4
@psp_ras_ta_check_status._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.3, i32 1313, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: RAS WARNING: ras status = 0x%X\0A\00", [56 x i8] zeroinitializer }, align 32
@psp_ras_ta_check_status._entry_ptr.80 = internal global ptr @psp_ras_ta_check_status._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown firmware type\0A\00", [41 x i8] zeroinitializer }, align 32
@psp_init_sos_base_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 2995, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: PSP SOS FW not available\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"psp_init_sos_base_fw\00", [43 x i8] zeroinitializer }, align 32
@psp_init_sos_base_fw._entry_ptr = internal global ptr @psp_init_sos_base_fw._entry, section ".printk_index", align 4
@parse_sos_bin_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 2948, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Unsupported PSP FW type: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parse_sos_bin_descriptor\00", [39 x i8] zeroinitializer }, align 32
@parse_sos_bin_descriptor._entry_ptr = internal global ptr @parse_sos_bin_descriptor._entry, section ".printk_index", align 4
@parse_ta_bin_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 3160, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: Unsupported TA type: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"parse_ta_bin_descriptor\00", [40 x i8] zeroinitializer }, align 32
@parse_ta_bin_descriptor._entry_ptr = internal global ptr @parse_ta_bin_descriptor._entry, section ".printk_index", align 4
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to allocate memory to command buffer!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to load psp firmware!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aldebaran\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to initialize ta microcode!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize memory training!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to process memory training!\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@psp_get_runtime_db_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 223, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: PSP runtime database doesn't exist\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"psp_get_runtime_db_entry\00", [39 x i8] zeroinitializer }, align 32
@psp_get_runtime_db_entry._entry_ptr = internal global ptr @psp_get_runtime_db_entry._entry, section ".printk_index", align 4
@psp_get_runtime_db_entry._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 233, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: Invalid PSP runtime database entry count\0A\00", [46 x i8] zeroinitializer }, align 32
@psp_get_runtime_db_entry._entry_ptr.98 = internal global ptr @psp_get_runtime_db_entry._entry.96, section ".printk_index", align 4
@psp_get_runtime_db_entry._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 244, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: Invalid PSP runtime database entry size\0A\00", [47 x i8] zeroinitializer }, align 32
@psp_get_runtime_db_entry._entry_ptr.101 = internal global ptr @psp_get_runtime_db_entry._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"memory training is not supported!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"alloc mem_train_ctx.sys_cache failed!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"train_data_size:%llx,p2c_train_data_offset:%llx,c2p_train_data_offset:%llx.\0A\00", [51 x i8] zeroinitializer }, align 32
@dev_attr_usbc_pd_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psp_usbc_pd_fw_sysfs_read, ptr @psp_usbc_pd_fw_sysfs_write }, [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to create USBC PD FW control file!\00", [54 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbc_pd_fw\00", [21 x i8] zeroinitializer }, align 32
@psp_usbc_pd_fw_sysfs_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 3242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016[drm] PSP block is not ready yet.\00", [60 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"psp_usbc_pd_fw_sysfs_read\00", [38 x i8] zeroinitializer }, align 32
@psp_usbc_pd_fw_sysfs_read._entry_ptr = internal global ptr @psp_usbc_pd_fw_sysfs_read._entry, section ".printk_index", align 4
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read USBC PD FW, err = %d\00", [60 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@psp_usbc_pd_fw_sysfs_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.111, ptr @.str.3, i32 3273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"psp_usbc_pd_fw_sysfs_write\00", [37 x i8] zeroinitializer }, align 32
@psp_usbc_pd_fw_sysfs_write._entry_ptr = internal global ptr @psp_usbc_pd_fw_sysfs_write._entry, section ".printk_index", align 4
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"amdgpu/%s\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to load USBC PD FW, err = %d\00", [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PSP firmware loading failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PSP ring init failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PSP load asd failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PSP load RL failed!\0A\00", [43 x i8] zeroinitializer }, align 32
@psp_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 2467, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: XGMI: Failed to initialize XGMI session\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"psp_load_fw\00", [20 x i8] zeroinitializer }, align 32
@psp_load_fw._entry_ptr = internal global ptr @psp_load_fw._entry, section ".printk_index", align 4
@psp_load_fw._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.3, i32 2475, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: RAS: Failed to initialize RAS\0A\00", [57 x i8] zeroinitializer }, align 32
@psp_load_fw._entry_ptr.122 = internal global ptr @psp_load_fw._entry.120, section ".printk_index", align 4
@psp_load_fw._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.3, i32 2480, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: HDCP: Failed to initialize HDCP\0A\00", [55 x i8] zeroinitializer }, align 32
@psp_load_fw._entry_ptr.125 = internal global ptr @psp_load_fw._entry.123, section ".printk_index", align 4
@psp_load_fw._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.3, i32 2485, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: DTM: Failed to initialize DTM\0A\00", [57 x i8] zeroinitializer }, align 32
@psp_load_fw._entry_ptr.128 = internal global ptr @psp_load_fw._entry.126, section ".printk_index", align 4
@psp_load_fw._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.119, ptr @.str.3, i32 2490, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: RAP: Failed to initialize RAP\0A\00", [57 x i8] zeroinitializer }, align 32
@psp_load_fw._entry_ptr.131 = internal global ptr @psp_load_fw._entry.129, section ".printk_index", align 4
@psp_load_fw._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.119, ptr @.str.3, i32 2495, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"amdgpu: SECUREDISPLAY: Failed to initialize SECUREDISPLAY\0A\00", [37 x i8] zeroinitializer }, align 32
@psp_load_fw._entry_ptr.134 = internal global ptr @psp_load_fw._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PSP load kdb failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PSP load spl failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PSP load sys drv failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PSP load soc drv failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PSP load intf drv failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PSP load dbg drv failed!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PSP load sos failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PSP create ring failed!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PSP tmr init failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PSP load tmr failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to load toc\0A\00", [44 x i8] zeroinitializer }, align 32
@psp_load_smu_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.3, i32 2264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014[drm] Failed to set MP1 state prepare for reload\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"psp_load_smu_fw\00", [16 x i8] zeroinitializer }, align 32
@psp_load_smu_fw._entry_ptr = internal global ptr @psp_load_smu_fw._entry, section ".printk_index", align 4
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PSP load smu failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@psp_tmr_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] reserve 0x%lx from 0x%llx for PSP TMR\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"psp_tmr_load\00", [19 x i8] zeroinitializer }, align 32
@psp_tmr_load._entry_ptr = internal global ptr @psp_tmr_load._entry, section ".printk_index", align 4
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to start rlc autoload\0A\00", [34 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 1424, ptr @.str.154, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: RAS: optional ras ta ucode is not available\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psp_ras_initialize\00", [45 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr = internal global ptr @psp_ras_initialize._entry, section ".printk_index", align 4
@psp_ras_initialize._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.153, ptr @.str.3, i32 1434, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: PSP get boot config failed\0A\00", [60 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr.157 = internal global ptr @psp_ras_initialize._entry.155, section ".printk_index", align 4
@psp_ras_initialize._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.153, ptr @.str.3, i32 1438, ptr @.str.154, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: GECC is disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr.160 = internal global ptr @psp_ras_initialize._entry.158, section ".printk_index", align 4
@psp_ras_initialize._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.153, ptr @.str.3, i32 1447, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: PSP set boot config failed\0A\00", [60 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr.163 = internal global ptr @psp_ras_initialize._entry.161, section ".printk_index", align 4
@psp_ras_initialize._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.153, ptr @.str.3, i32 1450, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"amdgpu: GECC will be disabled in next boot cycle if set amdgpu_ras_enable and/or amdgpu_ras_mask to 0x0\0A\00", [55 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr.166 = internal global ptr @psp_ras_initialize._entry.164, section ".printk_index", align 4
@psp_ras_initialize._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.153, ptr @.str.3, i32 1454, ptr @.str.154, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu: GECC is enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr.169 = internal global ptr @psp_ras_initialize._entry.167, section ".printk_index", align 4
@psp_ras_initialize._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.153, ptr @.str.3, i32 1462, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr.171 = internal global ptr @psp_ras_initialize._entry.170, section ".printk_index", align 4
@psp_ras_initialize._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.153, ptr @.str.3, i32 1464, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: GECC will be enabled in next boot cycle\0A\00", [47 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr.174 = internal global ptr @psp_ras_initialize._entry.172, section ".printk_index", align 4
@psp_ras_initialize._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.153, ptr @.str.3, i32 1492, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: RAS Init Status: 0x%X\0A\00", [33 x i8] zeroinitializer }, align 32
@psp_ras_initialize._entry_ptr.177 = internal global ptr @psp_ras_initialize._entry.175, section ".printk_index", align 4
@psp_hdcp_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.3, i32 1553, ptr @.str.154, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: HDCP: optional hdcp ta ucode is not available\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"psp_hdcp_initialize\00", [44 x i8] zeroinitializer }, align 32
@psp_hdcp_initialize._entry_ptr = internal global ptr @psp_hdcp_initialize._entry, section ".printk_index", align 4
@psp_hdcp_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&psp->hdcp_context.mutex\00", [39 x i8] zeroinitializer }, align 32
@psp_dtm_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.3, i32 1645, ptr @.str.154, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: DTM: optional dtm ta ucode is not available\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psp_dtm_initialize\00", [45 x i8] zeroinitializer }, align 32
@psp_dtm_initialize._entry_ptr = internal global ptr @psp_dtm_initialize._entry, section ".printk_index", align 4
@psp_dtm_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.183 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&psp->dtm_context.mutex\00", [40 x i8] zeroinitializer }, align 32
@psp_rap_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.3, i32 1743, ptr @.str.154, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: RAP: optional rap ta ucode is not available\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psp_rap_initialize\00", [45 x i8] zeroinitializer }, align 32
@psp_rap_initialize._entry_ptr = internal global ptr @psp_rap_initialize._entry, section ".printk_index", align 4
@psp_rap_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.186 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&psp->rap_context.mutex\00", [40 x i8] zeroinitializer }, align 32
@psp_rap_initialize._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.185, ptr @.str.3, i32 1768, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: RAP TA initialize fail (%d) status %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@psp_rap_initialize._entry_ptr.189 = internal global ptr @psp_rap_initialize._entry.187, section ".printk_index", align 4
@psp_securedisplay_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.3, i32 1858, ptr @.str.154, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: SECUREDISPLAY: securedisplay ta ucode is not available\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"psp_securedisplay_initialize\00", [35 x i8] zeroinitializer }, align 32
@psp_securedisplay_initialize._entry_ptr = internal global ptr @psp_securedisplay_initialize._entry, section ".printk_index", align 4
@psp_securedisplay_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.192 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&psp->securedisplay_context.mutex\00", [62 x i8] zeroinitializer }, align 32
@psp_securedisplay_initialize._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.191, ptr @.str.3, i32 1885, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: SECUREDISPLAY TA initialize fail.\0A\00", [53 x i8] zeroinitializer }, align 32
@psp_securedisplay_initialize._entry_ptr.195 = internal global ptr @psp_securedisplay_initialize._entry.193, section ".printk_index", align 4
@psp_securedisplay_initialize._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.191, ptr @.str.3, i32 1892, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: SECUREDISPLAY: query securedisplay TA failed. ret 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@psp_securedisplay_initialize._entry_ptr.198 = internal global ptr @psp_securedisplay_initialize._entry.196, section ".printk_index", align 4
@psp_tmr_unload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.3, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016[drm] free PSP TMR buffer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"psp_tmr_unload\00", [17 x i8] zeroinitializer }, align 32
@psp_tmr_unload._entry_ptr = internal global ptr @psp_tmr_unload._entry, section ".printk_index", align 4
@.str.201 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to terminate xgmi ta\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to terminate ras ta\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to terminate hdcp ta\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to terminate dtm ta\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to terminate rap ta\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to terminate securedisplay ta\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to terminate asd\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to terminate tmr\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PSP ring stop failed\0A\00", [42 x i8] zeroinitializer }, align 32
@psp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.3, i32 2636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016[drm] PSP is resuming...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"psp_resume\00", [21 x i8] zeroinitializer }, align 32
@psp_resume._entry_ptr = internal global ptr @psp_resume._entry, section ".printk_index", align 4
@psp_resume._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.211, ptr @.str.3, i32 2664, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: PSP load RL failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@psp_resume._entry_ptr.214 = internal global ptr @psp_resume._entry.212, section ".printk_index", align 4
@psp_resume._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.211, ptr @.str.3, i32 2675, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@psp_resume._entry_ptr.216 = internal global ptr @psp_resume._entry.215, section ".printk_index", align 4
@psp_resume._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.211, ptr @.str.3, i32 2682, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@psp_resume._entry_ptr.218 = internal global ptr @psp_resume._entry.217, section ".printk_index", align 4
@psp_resume._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.211, ptr @.str.3, i32 2687, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@psp_resume._entry_ptr.220 = internal global ptr @psp_resume._entry.219, section ".printk_index", align 4
@psp_resume._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.211, ptr @.str.3, i32 2692, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@psp_resume._entry_ptr.222 = internal global ptr @psp_resume._entry.221, section ".printk_index", align 4
@psp_resume._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.211, ptr @.str.3, i32 2697, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@psp_resume._entry_ptr.224 = internal global ptr @psp_resume._entry.223, section ".printk_index", align 4
@psp_resume._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.211, ptr @.str.3, i32 2702, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@psp_resume._entry_ptr.226 = internal global ptr @psp_resume._entry.225, section ".printk_index", align 4
@.str.227 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PSP resume failed\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.psp_gfx_cmd_name = internal constant { [34 x ptr], [56 x i8] } { [34 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.68, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.69, ptr @.str.70, ptr @.str.71], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 4294901770]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 32, i64 720900, i64 851970]
@__sancov_gen_cov_switch_values.229 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 40980, i64 40985]
@__sancov_gen_cov_switch_values.230 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 22, i64 24]
@__sancov_gen_cov_switch_values.231 = internal global [36 x i64] [i64 34, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.233 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.234 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.235 = internal global [21 x i64] [i64 19, i64 32, i64 589824, i64 655360, i64 655361, i64 720896, i64 720898, i64 720899, i64 720900, i64 720901, i64 720903, i64 720904, i64 720905, i64 720907, i64 720908, i64 720909, i64 722176, i64 786433, i64 851969, i64 851970, i64 851971]
@__sancov_gen_cov_switch_values.236 = internal global [11 x i64] [i64 9, i64 32, i64 720896, i64 720900, i64 720901, i64 720903, i64 720905, i64 720907, i64 720908, i64 720909, i64 851970]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 720896, i64 720903]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 720896, i64 720903]
@__sancov_gen_cov_switch_values.239 = internal global [5 x i64] [i64 3, i64 32, i64 720903, i64 720905, i64 851970]
@__sancov_gen_cov_switch_values.240 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 17, i64 18, i64 19, i64 22, i64 24]
@__sancov_gen_cov_switch_values.241 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 17, i64 18, i64 19, i64 22, i64 24]
@__sancov_gen_cov_switch_values.242 = internal global [5 x i64] [i64 3, i64 32, i64 720903, i64 720907, i64 720908]
@__sancov_gen_cov_switch_values.243 = internal global [4 x i64] [i64 2, i64 32, i64 720898, i64 720900]
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 891, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1338, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1344, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1349, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2784, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2786, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2816, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2820, i32 37 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2837, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2852, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2856, i32 37 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2873, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3017, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3021, i32 37 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3076, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3090, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3098, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3177, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3181, i32 37 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3193, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3199, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3214, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3337, i32 10 }
@___asan_gen_.385 = private unnamed_addr constant [13 x i8] c"psp_ip_funcs\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3336, i32 27 }
@___asan_gen_.388 = private unnamed_addr constant [18 x i8] c"psp_v3_1_ip_block\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3369, i32 38 }
@___asan_gen_.391 = private unnamed_addr constant [19 x i8] c"psp_v10_0_ip_block\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3378, i32 38 }
@___asan_gen_.394 = private unnamed_addr constant [19 x i8] c"psp_v11_0_ip_block\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3387, i32 38 }
@___asan_gen_.397 = private unnamed_addr constant [21 x i8] c"psp_v11_0_8_ip_block\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3396, i32 38 }
@___asan_gen_.400 = private unnamed_addr constant [19 x i8] c"psp_v12_0_ip_block\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3404, i32 38 }
@___asan_gen_.403 = private unnamed_addr constant [19 x i8] c"psp_v13_0_ip_block\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3413, i32 38 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 489, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 491, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 396, i32 10 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 398, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 400, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 402, i32 10 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 404, i32 10 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 406, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 408, i32 10 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 410, i32 10 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 412, i32 10 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 414, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 416, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 418, i32 10 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 420, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 422, i32 10 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 424, i32 10 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 426, i32 10 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1302, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1306, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1312, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2225, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2995, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2948, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3160, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 272, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 279, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 284, i32 36 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 286, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 315, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 321, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 223, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 233, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 244, i32 6 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 171, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 177, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 182, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [20 x i8] c"dev_attr_usbc_pd_fw\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3359, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3327, i32 8 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3242, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3251, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3255, i32 25 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3273, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3280, i32 37 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 3306, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2525, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2434, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2449, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2455, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2466, i32 5 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2474, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2479, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2484, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2489, i32 4 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2494, i32 4 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1954, i32 5 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1963, i32 5 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1972, i32 5 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1981, i32 5 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1990, i32 5 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1999, i32 5 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2008, i32 5 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2016, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2025, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2043, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 602, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2264, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2271, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 641, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2379, i32 5 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1424, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1434, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1438, i32 5 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1447, i32 6 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1449, i32 6 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1454, i32 5 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1462, i32 6 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1464, i32 6 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1492, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1553, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1569, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1645, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1661, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1743, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1759, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1767, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1858, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1875, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1885, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 1891, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 667, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2576, i32 4 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2584, i32 4 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2589, i32 4 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2594, i32 4 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2599, i32 4 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2604, i32 4 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2611, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2617, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2623, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2636, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2664, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2674, i32 4 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2681, i32 4 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2686, i32 4 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2691, i32 4 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2696, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2701, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.917 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.917, i32 2710, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [30 x i8] c"switch.table.psp_gfx_cmd_name\00", align 1
@llvm.compiler.used = appending global [287 x ptr] [ptr @parse_sos_bin_descriptor._entry, ptr @parse_sos_bin_descriptor._entry_ptr, ptr @parse_ta_bin_descriptor._entry, ptr @parse_ta_bin_descriptor._entry_ptr, ptr @psp_cmd_submit_buf._entry, ptr @psp_cmd_submit_buf._entry.54, ptr @psp_cmd_submit_buf._entry_ptr, ptr @psp_cmd_submit_buf._entry_ptr.56, ptr @psp_dtm_initialize._entry, ptr @psp_dtm_initialize._entry_ptr, ptr @psp_get_runtime_db_entry._entry, ptr @psp_get_runtime_db_entry._entry.96, ptr @psp_get_runtime_db_entry._entry.99, ptr @psp_get_runtime_db_entry._entry_ptr, ptr @psp_get_runtime_db_entry._entry_ptr.101, ptr @psp_get_runtime_db_entry._entry_ptr.98, ptr @psp_hdcp_initialize._entry, ptr @psp_hdcp_initialize._entry_ptr, ptr @psp_init_asd_microcode._entry, ptr @psp_init_asd_microcode._entry.18, ptr @psp_init_asd_microcode._entry_ptr, ptr @psp_init_asd_microcode._entry_ptr.20, ptr @psp_init_sos_base_fw._entry, ptr @psp_init_sos_base_fw._entry_ptr, ptr @psp_init_sos_microcode._entry, ptr @psp_init_sos_microcode._entry.30, ptr @psp_init_sos_microcode._entry.33, ptr @psp_init_sos_microcode._entry.36, ptr @psp_init_sos_microcode._entry_ptr, ptr @psp_init_sos_microcode._entry_ptr.32, ptr @psp_init_sos_microcode._entry_ptr.35, ptr @psp_init_sos_microcode._entry_ptr.38, ptr @psp_init_ta_microcode._entry, ptr @psp_init_ta_microcode._entry.42, ptr @psp_init_ta_microcode._entry.45, ptr @psp_init_ta_microcode._entry.48, ptr @psp_init_ta_microcode._entry_ptr, ptr @psp_init_ta_microcode._entry_ptr.44, ptr @psp_init_ta_microcode._entry_ptr.47, ptr @psp_init_ta_microcode._entry_ptr.50, ptr @psp_init_toc_microcode._entry, ptr @psp_init_toc_microcode._entry.24, ptr @psp_init_toc_microcode._entry_ptr, ptr @psp_init_toc_microcode._entry_ptr.26, ptr @psp_load_fw._entry, ptr @psp_load_fw._entry.120, ptr @psp_load_fw._entry.123, ptr @psp_load_fw._entry.126, ptr @psp_load_fw._entry.129, ptr @psp_load_fw._entry.132, ptr @psp_load_fw._entry_ptr, ptr @psp_load_fw._entry_ptr.122, ptr @psp_load_fw._entry_ptr.125, ptr @psp_load_fw._entry_ptr.128, ptr @psp_load_fw._entry_ptr.131, ptr @psp_load_fw._entry_ptr.134, ptr @psp_load_smu_fw._entry, ptr @psp_load_smu_fw._entry_ptr, ptr @psp_rap_initialize._entry, ptr @psp_rap_initialize._entry.187, ptr @psp_rap_initialize._entry_ptr, ptr @psp_rap_initialize._entry_ptr.189, ptr @psp_ras_initialize._entry, ptr @psp_ras_initialize._entry.155, ptr @psp_ras_initialize._entry.158, ptr @psp_ras_initialize._entry.161, ptr @psp_ras_initialize._entry.164, ptr @psp_ras_initialize._entry.167, ptr @psp_ras_initialize._entry.170, ptr @psp_ras_initialize._entry.172, ptr @psp_ras_initialize._entry.175, ptr @psp_ras_initialize._entry_ptr, ptr @psp_ras_initialize._entry_ptr.157, ptr @psp_ras_initialize._entry_ptr.160, ptr @psp_ras_initialize._entry_ptr.163, ptr @psp_ras_initialize._entry_ptr.166, ptr @psp_ras_initialize._entry_ptr.169, ptr @psp_ras_initialize._entry_ptr.171, ptr @psp_ras_initialize._entry_ptr.174, ptr @psp_ras_initialize._entry_ptr.177, ptr @psp_ras_invoke._entry, ptr @psp_ras_invoke._entry.4, ptr @psp_ras_invoke._entry.9, ptr @psp_ras_invoke._entry_ptr, ptr @psp_ras_invoke._entry_ptr.11, ptr @psp_ras_invoke._entry_ptr.8, ptr @psp_ras_ta_check_status._entry, ptr @psp_ras_ta_check_status._entry.75, ptr @psp_ras_ta_check_status._entry.78, ptr @psp_ras_ta_check_status._entry_ptr, ptr @psp_ras_ta_check_status._entry_ptr.77, ptr @psp_ras_ta_check_status._entry_ptr.80, ptr @psp_resume._entry, ptr @psp_resume._entry.212, ptr @psp_resume._entry.215, ptr @psp_resume._entry.217, ptr @psp_resume._entry.219, ptr @psp_resume._entry.221, ptr @psp_resume._entry.223, ptr @psp_resume._entry.225, ptr @psp_resume._entry_ptr, ptr @psp_resume._entry_ptr.214, ptr @psp_resume._entry_ptr.216, ptr @psp_resume._entry_ptr.218, ptr @psp_resume._entry_ptr.220, ptr @psp_resume._entry_ptr.222, ptr @psp_resume._entry_ptr.224, ptr @psp_resume._entry_ptr.226, ptr @psp_securedisplay_initialize._entry, ptr @psp_securedisplay_initialize._entry.193, ptr @psp_securedisplay_initialize._entry.196, ptr @psp_securedisplay_initialize._entry_ptr, ptr @psp_securedisplay_initialize._entry_ptr.195, ptr @psp_securedisplay_initialize._entry_ptr.198, ptr @psp_tmr_load._entry, ptr @psp_tmr_load._entry_ptr, ptr @psp_tmr_unload._entry, ptr @psp_tmr_unload._entry_ptr, ptr @psp_usbc_pd_fw_sysfs_read._entry, ptr @psp_usbc_pd_fw_sysfs_read._entry_ptr, ptr @psp_usbc_pd_fw_sysfs_write._entry, ptr @psp_usbc_pd_fw_sysfs_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @psp_ip_funcs, ptr @psp_v3_1_ip_block, ptr @psp_v10_0_ip_block, ptr @psp_v11_0_ip_block, ptr @psp_v11_0_8_ip_block, ptr @psp_v12_0_ip_block, ptr @psp_v13_0_ip_block, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @dev_attr_usbc_pd_fw, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.173, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @psp_hdcp_initialize.__key, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @psp_dtm_initialize.__key, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @psp_rap_initialize.__key, ptr @.str.186, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @psp_securedisplay_initialize.__key, ptr @.str.192, ptr @.str.194, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.227, ptr @switch.table.psp_gfx_cmd_name], section "llvm.metadata"
@0 = internal global [226 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_invoke._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_invoke._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_invoke._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_asd_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_asd_microcode._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_toc_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_toc_microcode._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_sos_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_sos_microcode._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_sos_microcode._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_sos_microcode._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_ta_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_ta_microcode._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_ta_microcode._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_ta_microcode._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v3_1_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v10_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v11_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v11_0_8_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v12_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_v13_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_cmd_submit_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_cmd_submit_buf._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_ta_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_ta_check_status._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_ta_check_status._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_init_sos_base_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_sos_bin_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ta_bin_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_get_runtime_db_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_get_runtime_db_entry._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_get_runtime_db_entry._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usbc_pd_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_usbc_pd_fw_sysfs_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_usbc_pd_fw_sysfs_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_load_fw._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_load_fw._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_load_fw._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_load_fw._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_load_fw._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_load_smu_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_tmr_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_ras_initialize._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_hdcp_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_hdcp_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_dtm_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_dtm_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_rap_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_rap_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_rap_initialize._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_securedisplay_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_securedisplay_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_securedisplay_initialize._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_securedisplay_initialize._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_tmr_unload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_resume._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_resume._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_resume._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_resume._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_resume._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_resume._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psp_resume._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.psp_gfx_cmd_name to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_wait_for(ptr nocapture noundef readonly %psp, i32 noundef %reg_index, i32 noundef %reg_val, i32 noundef %mask, i1 noundef zeroext %check_changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %no_hw_access = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 168
  %2 = ptrtoint ptr %no_hw_access to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_hw_access, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %reg_index, i32 noundef 0) #10
  br i1 %check_changed, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %reg_val)
  %cmp5.not = icmp eq i32 %call, %reg_val
  br i1 %cmp5.not, label %if.then4.if.end11_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.else:                                          ; preds = %for.body
  %and = and i32 %call, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %reg_val)
  %cmp8 = icmp eq i32 %and, %reg_val
  br i1 %cmp8, label %if.else.cleanup_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then4.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #10
  %inc = add nuw nsw i32 %i.020, 1
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -62, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -62, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_get_fw_attestation_records_addr(ptr noundef %psp, ptr noundef writeonly %output_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %output_ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmd1.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %4 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd1.i, align 8
  %mutex.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %6 = call ptr @memset(ptr %5, i32 0, i32 1024)
  %cmd_id = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %cmd_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %cmd_id, align 4
  %fence_buf_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %8 = ptrtoint ptr %fence_buf_mc_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fence_buf_mc_addr, align 8
  %call4 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %5, i64 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %uresp = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 9, i32 6
  %10 = ptrtoint ptr %uresp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uresp, align 4
  %conv = zext i32 %11 to i64
  %fwar_db_addr_hi = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 9, i32 6, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %fwar_db_addr_hi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwar_db_addr_hi, align 4
  %conv9 = zext i32 %13 to i64
  %shl = shl nuw i64 %conv9, 32
  %add = or i64 %shl, %conv
  %14 = ptrtoint ptr %output_ptr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add, ptr %output_ptr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end3.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef %ucode, ptr nocapture noundef %cmd, i64 noundef %fence_mc_addr) unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #10
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !435
  %1 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %psp, align 8
  %no_hw_access = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 168
  %3 = ptrtoint ptr %no_hw_access to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %no_hw_access, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 2
  %call2 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #10
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmd_buf_mem = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 26
  %5 = ptrtoint ptr %cmd_buf_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_buf_mem, align 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 4096)
  %8 = load ptr, ptr %cmd_buf_mem, align 8
  %9 = call ptr @memcpy(ptr %8, ptr %cmd, i32 1024)
  %fence_value = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 27
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fence_value, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !436
  call void @llvm.prefetch.p0(ptr %fence_value, i32 1, i32 3, i32 1) #10
  %10 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fence_value, ptr %fence_value, i32 1, ptr elementtype(i32) %fence_value) #10, !srcloc !437
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !438
  %cmd_buf_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 25
  %11 = ptrtoint ptr %cmd_buf_mc_addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cmd_buf_mc_addr, align 8
  %call7 = call i32 @psp_ring_cmd_submit(ptr noundef %psp, i64 noundef %12, i64 noundef %fence_mc_addr, i32 noundef %asmresult.i.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i111 = call zeroext i1 @__kasan_check_write(ptr noundef %fence_value, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %fence_value, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fence_value, ptr %fence_value, i32 1, ptr elementtype(i32) %fence_value) #10, !srcloc !439
  br label %exit

if.end11:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %psp, align 8
  call void @amdgpu_device_invalidate_hdp(ptr noundef %15, ptr noundef null) #10
  %fence_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 23
  %16 = ptrtoint ptr %fence_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fence_buf, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %asmresult.i.i.i.i)
  %cmp.not112 = icmp eq i32 %19, %asmresult.i.i.i.i
  br i1 %cmp.not112, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %if.end11.while.body_crit_edge
  %timeout.0113 = phi i32 [ %dec, %if.end19.while.body_crit_edge ], [ 20000, %if.end11.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.0113, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp13 = icmp eq i32 %dec, 0
  br i1 %cmp13, label %while.body.while.end_crit_edge, label %if.end15

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end15:                                         ; preds = %while.body
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %20 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %if.end19, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end19:                                         ; preds = %if.end15
  call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #10
  %21 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %psp, align 8
  call void @amdgpu_device_invalidate_hdp(ptr noundef %22, ptr noundef null) #10
  %23 = ptrtoint ptr %fence_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fence_buf, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %cmp.not = icmp eq i32 %26, %asmresult.i.i.i.i
  br i1 %cmp.not, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %if.end15.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end11.while.end_crit_edge
  %tobool39.not = phi i1 [ false, %if.end11.while.end_crit_edge ], [ %cmp13, %if.end15.while.end_crit_edge ], [ %cmp13, %while.body.while.end_crit_edge ], [ %cmp13, %if.end19.while.end_crit_edge ]
  %ras_intr.1.off0 = phi i1 [ false, %if.end11.while.end_crit_edge ], [ false, %if.end19.while.end_crit_edge ], [ false, %while.body.while.end_crit_edge ], [ true, %if.end15.while.end_crit_edge ]
  %27 = ptrtoint ptr %cmd_buf_mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd_buf_mem, align 8
  %resp = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resp, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %land.lhs.true.critedge [
    i32 -65526, label %while.end.land.rhs_crit_edge
    i32 256, label %while.end.land.rhs_crit_edge119
  ]

while.end.land.rhs_crit_edge119:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.end.land.rhs_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs:                                         ; preds = %while.end.land.rhs_crit_edge, %while.end.land.rhs_crit_edge119
  %32 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %33, i32 0, i32 132
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt, align 8
  %and = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %resp30 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %cmd, i32 0, i32 9
  %36 = call ptr @memcpy(ptr %resp30, ptr %resp, i32 96)
  br i1 %tobool28.not, label %land.rhs.land.lhs.true_crit_edge, label %land.rhs.if.end64_crit_edge

land.rhs.if.end64_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

land.rhs.land.lhs.true_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true.critedge:                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %resp30.c = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %cmd, i32 0, i32 9
  %37 = call ptr @memcpy(ptr %resp30.c, ptr %resp, i32 96)
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.critedge, %land.rhs.land.lhs.true_crit_edge
  %38 = ptrtoint ptr %cmd_buf_mem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd_buf_mem, align 8
  %resp35 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %resp35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resp35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool37.not = icmp ne i32 %41, 0
  %or.cond = or i1 %tobool39.not, %tobool37.not
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = or i1 %ras_intr.1.off0, %or.cond.not
  br i1 %brmerge, label %land.lhs.true.if.end64_crit_edge, label %if.then42

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then42:                                        ; preds = %land.lhs.true
  %tobool43.not = icmp eq ptr %ucode, null
  br i1 %tobool43.not, label %if.then42.do.end51_crit_edge, label %do.end

if.then42.do.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end:                                           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ucode, align 8
  %call45 = call ptr @amdgpu_ucode_name(i32 noundef %43) #10
  %44 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ucode, align 8
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %call45, i32 noundef %45) #13
  br label %do.end51

do.end51:                                         ; preds = %do.end, %if.then42.do.end51_crit_edge
  %46 = ptrtoint ptr %cmd_buf_mem to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmd_buf_mem, align 8
  %cmd_id = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmd_id, align 4
  %call54 = call fastcc ptr @psp_gfx_cmd_name(i32 noundef %49)
  %resp58 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %47, i32 0, i32 9
  %50 = ptrtoint ptr %resp58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %resp58, align 4
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull %call54, i32 noundef %49, i32 noundef %51) #13
  br i1 %tobool39.not, label %do.end51.exit_crit_edge, label %do.end51.if.end64_crit_edge

do.end51.if.end64_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end51.exit_crit_edge:                          ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end64:                                         ; preds = %do.end51.if.end64_crit_edge, %land.lhs.true.if.end64_crit_edge, %land.rhs.if.end64_crit_edge
  %tobool65.not = icmp eq ptr %ucode, null
  br i1 %tobool65.not, label %if.end64.exit_crit_edge, label %if.then66

if.end64.exit_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %cmd_buf_mem to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cmd_buf_mem, align 8
  %fw_addr_lo = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %53, i32 0, i32 9, i32 2
  %54 = ptrtoint ptr %fw_addr_lo to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fw_addr_lo, align 4
  %tmr_mc_addr_lo = getelementptr inbounds %struct.amdgpu_firmware_info, ptr %ucode, i32 0, i32 5
  %56 = ptrtoint ptr %tmr_mc_addr_lo to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmr_mc_addr_lo, align 8
  %57 = load ptr, ptr %cmd_buf_mem, align 8
  %fw_addr_hi = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %57, i32 0, i32 9, i32 3
  %58 = ptrtoint ptr %fw_addr_hi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fw_addr_hi, align 4
  %tmr_mc_addr_hi = getelementptr inbounds %struct.amdgpu_firmware_info, ptr %ucode, i32 0, i32 6
  %60 = ptrtoint ptr %tmr_mc_addr_hi to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tmr_mc_addr_hi, align 4
  br label %exit

exit:                                             ; preds = %if.then66, %if.end64.exit_crit_edge, %do.end51.exit_crit_edge, %if.then9
  %ret.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.then66 ], [ 0, %if.end64.exit_crit_edge ], [ -22, %do.end51.exit_crit_edge ]
  %61 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %62) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_reg_program(ptr noundef %psp, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cmp = icmp ugt i32 %reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd1.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1.i, align 8
  %mutex.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %cmd_id.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 11, ptr %cmd_id.i, align 4
  %cmd1.i12 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %cmd1.i12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %value, ptr %cmd1.i12, align 4
  %reg_id.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %reg_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %reg, ptr %reg_id.i, align 4
  %fence_buf_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %6 = ptrtoint ptr %fence_buf_mc_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fence_buf_mc_addr, align 8
  %call1 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %1, i64 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %reg) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_xgmi_invoke(ptr noundef %psp, i32 noundef %ta_cmd_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %session_id.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 1
  %3 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %session_id.i, align 4
  %cmd_id.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %cmd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %cmd_id.i.i, align 4
  %cmd1.i6.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %cmd1.i6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %cmd1.i6.i, align 4
  %ta_cmd_id4.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %ta_cmd_id4.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ta_cmd_id, ptr %ta_cmd_id4.i.i, align 4
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %8 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call1.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %1, i64 noundef %9) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_xgmi_terminate(ptr noundef %psp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 14
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 720900, label %entry.cleanup_crit_edge
    i32 851970, label %land.lhs.true
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 39, i32 8
  %5 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %connected_to_cpu, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %xgmi_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33
  %7 = ptrtoint ptr %xgmi_context to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %xgmi_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %9 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %11 = call ptr @memset(ptr %10, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 1
  %12 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %10, i32 0, i32 7
  %15 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %cmd1.i6.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %16 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %10, i64 noundef %17) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool10.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %xgmi_context to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %xgmi_context, align 8
  %mem_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2
  %shared_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 1
  %shared_buf.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context, ptr noundef %shared_mc_addr.i, ptr noundef %shared_buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i.i, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_xgmi_initialize(ptr noundef %psp, i1 noundef zeroext %set_extended_data, i1 noundef zeroext %load_ta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %set_extended_data to i8
  %ta_fw = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 30
  %0 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ta_fw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %xgmi_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33
  %size_bytes = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %start_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_addr, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  br i1 %load_ta, label %if.end10, label %if.end.invoke_crit_edge

if.end.invoke_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %invoke

if.end10:                                         ; preds = %if.end
  %shared_mem_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %shared_mem_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %shared_mem_size, align 4
  %ta_load_type = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 4
  %7 = ptrtoint ptr %ta_load_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ta_load_type, align 8
  %8 = ptrtoint ptr %xgmi_context to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %xgmi_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %if.then18, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then18:                                        ; preds = %if.end10
  %mem_context.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2
  %10 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %psp, align 8
  %shared_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 1
  %shared_buf.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 2
  %call.i.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %11, i32 noundef 16384, i32 noundef 4096, i32 noundef 4, ptr noundef %mem_context.i, ptr noundef %shared_mc_addr.i.i, ptr noundef %shared_buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not, label %if.then18.if.end22_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then18.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %call.i = tail call fastcc i32 @psp_ta_load(ptr noundef %psp, ptr noundef %xgmi_context) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %xgmi_context to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %xgmi_context, align 8
  br label %invoke

invoke:                                           ; preds = %if.then25, %if.end.invoke_crit_edge
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shared_buf, align 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 2080)
  %flag_extend_link_record = getelementptr inbounds %struct.ta_xgmi_shared_memory, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %flag_extend_link_record to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %flag_extend_link_record, align 4
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %17 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %19 = call ptr @memset(ptr %18, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 1
  %20 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %18, i32 0, i32 7
  %23 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %cmd1.i6.i.i, align 4
  %ta_cmd_id4.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %18, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %ta_cmd_id4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ta_cmd_id4.i.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %25 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %18, i64 noundef %26) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %invoke, %if.end22.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i.i, %invoke ], [ -2, %lor.lhs.false3.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then18.cleanup_crit_edge ], [ %call.i, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_xgmi_get_hive_id(ptr noundef %psp, ptr nocapture noundef writeonly %hive_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared_buf, align 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 2080)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %1, align 8
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %4 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %6 = call ptr @memset(ptr %5, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 1
  %7 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %cmd1.i6.i.i, align 4
  %ta_cmd_id4.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 7, i32 0, i32 1
  %11 = ptrtoint ptr %ta_cmd_id4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %ta_cmd_id4.i.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %12 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %5, i64 noundef %13) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xgmi_out_message = getelementptr inbounds %struct.ta_xgmi_shared_memory, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %xgmi_out_message to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %xgmi_out_message, align 8
  %16 = ptrtoint ptr %hive_id to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %hive_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_xgmi_get_node_id(ptr noundef %psp, ptr nocapture noundef writeonly %node_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared_buf, align 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 2080)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %1, align 8
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %4 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %6 = call ptr @memset(ptr %5, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 1
  %7 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %cmd1.i6.i.i, align 4
  %ta_cmd_id4.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 7, i32 0, i32 1
  %11 = ptrtoint ptr %ta_cmd_id4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ta_cmd_id4.i.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %12 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %5, i64 noundef %13) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xgmi_out_message = getelementptr inbounds %struct.ta_xgmi_shared_memory, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %xgmi_out_message to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %xgmi_out_message, align 8
  %16 = ptrtoint ptr %node_id to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %node_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_xgmi_get_topology_info(ptr noundef %psp, i32 noundef %number_devices, ptr noundef %topology, i1 noundef zeroext %get_extended_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %get_extended_data to i8
  %tobool.not = icmp eq ptr %topology, null
  br i1 %tobool.not, label %entry.cleanup120_crit_edge, label %lor.lhs.false

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %topology, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ugt i32 %1, 64
  br i1 %cmp, label %lor.lhs.false.cleanup120_crit_edge, label %if.end

lor.lhs.false.cleanup120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

if.end:                                           ; preds = %lor.lhs.false
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 2080)
  %flag_extend_link_record = getelementptr inbounds %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %flag_extend_link_record to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %flag_extend_link_record, align 4
  %xgmi_in_message = getelementptr inbounds %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %3, align 8
  %7 = ptrtoint ptr %xgmi_in_message to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %number_devices, ptr %xgmi_in_message, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number_devices)
  %cmp4214.not = icmp eq i32 %number_devices, 0
  br i1 %cmp4214.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0215 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.0215
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %arrayidx7 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 %i.0215
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx7, align 8
  %num_hops = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.0215, i32 1
  %11 = ptrtoint ptr %num_hops to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_hops, align 8
  %num_hops13 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 %i.0215, i32 1
  %13 = ptrtoint ptr %num_hops13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %num_hops13, align 8
  %is_sharing_enabled = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.0215, i32 2
  %14 = ptrtoint ptr %is_sharing_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_sharing_enabled, align 1
  %is_sharing_enabled18 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 %i.0215, i32 2
  %16 = ptrtoint ptr %is_sharing_enabled18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %is_sharing_enabled18, align 1
  %sdma_engine = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.0215, i32 3
  %17 = ptrtoint ptr %sdma_engine to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdma_engine, align 4
  %sdma_engine23 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 %i.0215, i32 3
  %19 = ptrtoint ptr %sdma_engine23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sdma_engine23, align 4
  %inc = add nuw i32 %i.0215, 1
  %20 = ptrtoint ptr %xgmi_in_message to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xgmi_in_message, align 8
  %cmp4 = icmp ult i32 %inc, %21
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %22 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %24 = call ptr @memset(ptr %23, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 1
  %25 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %23, i32 0, i32 2
  %27 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %23, i32 0, i32 7
  %28 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %cmd1.i6.i.i, align 4
  %ta_cmd_id4.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %23, i32 0, i32 7, i32 0, i32 1
  %29 = ptrtoint ptr %ta_cmd_id4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %ta_cmd_id4.i.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %30 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %23, i64 noundef %31) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool24.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool24.not, label %if.end26, label %for.end.cleanup120_crit_edge

for.end.cleanup120_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

if.end26:                                         ; preds = %for.end
  %xgmi_out_message = getelementptr inbounds %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %xgmi_out_message to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xgmi_out_message, align 8
  %34 = ptrtoint ptr %topology to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %topology, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp32216.not = icmp eq i32 %33, 0
  br i1 %cmp32216.not, label %if.end26.for.end70_crit_edge, label %if.end26.for.body34_crit_edge

if.end26.for.body34_crit_edge:                    ; preds = %if.end26
  br label %for.body34

if.end26.for.end70_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

for.body34:                                       ; preds = %for.inc68.for.body34_crit_edge, %if.end26.for.body34_crit_edge
  %i.1217 = phi i32 [ %inc69, %for.inc68.for.body34_crit_edge ], [ 0, %if.end26.for.body34_crit_edge ]
  %arrayidx36 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 6, i32 0, i32 1, i32 %i.1217
  %num_hops37 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 6, i32 0, i32 1, i32 %i.1217, i32 1
  %35 = ptrtoint ptr %num_hops37 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_hops37, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool38.not = icmp eq i8 %36, 0
  br i1 %tobool38.not, label %for.body34.if.end46_crit_edge, label %if.then39

for.body34.if.end46_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then39:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #12
  %num_hops45 = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.1217, i32 1
  %37 = ptrtoint ptr %num_hops45 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %num_hops45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %for.body34.if.end46_crit_edge
  br i1 %get_extended_data, label %if.end46.for.inc68_crit_edge, label %if.then48

if.end46.for.inc68_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc68

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx36, align 8
  %arrayidx53 = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.1217
  %40 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx53, align 8
  %is_sharing_enabled57 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 6, i32 0, i32 1, i32 %i.1217, i32 2
  %41 = ptrtoint ptr %is_sharing_enabled57 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_sharing_enabled57, align 1
  %is_sharing_enabled60 = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.1217, i32 2
  %43 = ptrtoint ptr %is_sharing_enabled60 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %is_sharing_enabled60, align 1
  %sdma_engine63 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 6, i32 0, i32 1, i32 %i.1217, i32 3
  %44 = ptrtoint ptr %sdma_engine63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sdma_engine63, align 4
  %sdma_engine66 = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.1217, i32 3
  %46 = ptrtoint ptr %sdma_engine66 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sdma_engine66, align 4
  br label %for.inc68

for.inc68:                                        ; preds = %if.then48, %if.end46.for.inc68_crit_edge
  %inc69 = add nuw i32 %i.1217, 1
  %47 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %topology, align 8
  %cmp32 = icmp ult i32 %inc69, %48
  br i1 %cmp32, label %for.inc68.for.body34_crit_edge, label %for.inc68.for.end70_crit_edge

for.inc68.for.end70_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

for.inc68.for.body34_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34

for.end70:                                        ; preds = %for.inc68.for.end70_crit_edge, %if.end26.for.end70_crit_edge
  %49 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %psp, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %50, i32 0, i32 172, i32 14
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %52)
  %cmp.i = icmp eq i32 %52, 851970
  br i1 %cmp.i, label %psp_xgmi_peer_link_info_supported.exit, label %for.end70.cleanup120_crit_edge

for.end70.cleanup120_crit_edge:                   ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

psp_xgmi_peer_link_info_supported.exit:           ; preds = %for.end70
  %bin_desc.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 3
  %53 = ptrtoint ptr %bin_desc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bin_desc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870922, i32 %54)
  %cmp2.i = icmp ugt i32 %54, 536870922
  br i1 %cmp2.i, label %if.then72, label %psp_xgmi_peer_link_info_supported.exit.cleanup120_crit_edge

psp_xgmi_peer_link_info_supported.exit.cleanup120_crit_edge: ; preds = %psp_xgmi_peer_link_info_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

if.then72:                                        ; preds = %psp_xgmi_peer_link_info_supported.exit
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 11, ptr %3, align 8
  %56 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmd1.i.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %58 = call ptr @memset(ptr %57, i32 0, i32 1024)
  %59 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i205 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %57, i32 0, i32 2
  %61 = ptrtoint ptr %cmd_id.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %cmd_id.i.i.i205, align 4
  %cmd1.i6.i.i206 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %57, i32 0, i32 7
  %62 = ptrtoint ptr %cmd1.i6.i.i206 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %cmd1.i6.i.i206, align 4
  %ta_cmd_id4.i.i.i207 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %57, i32 0, i32 7, i32 0, i32 1
  %63 = ptrtoint ptr %ta_cmd_id4.i.i.i207 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 11, ptr %ta_cmd_id4.i.i.i207, align 4
  %64 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i209 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %57, i64 noundef %65) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i209)
  %tobool75.not = icmp eq i32 %call1.i.i209, 0
  br i1 %tobool75.not, label %for.cond79.preheader, label %if.then72.cleanup120_crit_edge

if.then72.cleanup120_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

for.cond79.preheader:                             ; preds = %if.then72
  %66 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %topology, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp81220.not = icmp eq i32 %67, 0
  br i1 %cmp81220.not, label %for.cond79.preheader.cleanup120_crit_edge, label %for.body83.lr.ph

for.cond79.preheader.cleanup120_crit_edge:        ; preds = %for.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

for.body83.lr.ph:                                 ; preds = %for.cond79.preheader
  %nodes93 = getelementptr inbounds %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 6, i32 0, i32 1
  %supports_extended_data = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 2
  br label %for.body83

for.body83:                                       ; preds = %for.inc116.for.body83_crit_edge, %for.body83.lr.ph
  %i.2221 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc117, %for.inc116.for.body83_crit_edge ]
  br i1 %get_extended_data, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #12
  %num_links95 = getelementptr [64 x %struct.ta_xgmi_peer_link_info], ptr %nodes93, i32 0, i32 %i.2221, i32 1
  %68 = ptrtoint ptr %num_links95 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_links95, align 8
  %num_links100229 = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.2221, i32 4
  %70 = ptrtoint ptr %num_links100229 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %num_links100229, align 8
  br label %for.inc116

cond.end:                                         ; preds = %for.body83
  %num_links = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.2221, i32 4
  %71 = ptrtoint ptr %num_links to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_links, align 8
  %num_links91 = getelementptr [64 x %struct.ta_xgmi_peer_link_info], ptr %nodes93, i32 0, i32 %i.2221, i32 1
  %73 = ptrtoint ptr %num_links91 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_links91, align 8
  %add = add i8 %74, %72
  %arrayidx99 = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.2221
  %num_links100 = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.2221, i32 4
  %75 = ptrtoint ptr %num_links100 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %add, ptr %num_links100, align 8
  %76 = ptrtoint ptr %supports_extended_data to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %supports_extended_data, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool102.not = icmp ne i8 %77, 0
  %78 = and i1 %tobool102.not, %get_extended_data
  br i1 %78, label %land.lhs.true106, label %cond.end.for.inc116_crit_edge

cond.end.for.inc116_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

land.lhs.true106:                                 ; preds = %cond.end
  %num_hops109 = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.2221, i32 1
  %79 = ptrtoint ptr %num_hops109 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_hops109, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool111.not = icmp eq i8 %80, 0
  br i1 %tobool111.not, label %land.lhs.true106.for.inc116_crit_edge, label %if.then112

land.lhs.true106.for.inc116_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

if.then112:                                       ; preds = %land.lhs.true106
  %81 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load8_noabort(i32 %81)
  %.unpack = load i64, ptr %arrayidx99, align 8
  %.elt198 = getelementptr inbounds [3 x i64], ptr %arrayidx99, i32 0, i32 1
  %82 = ptrtoint ptr %.elt198 to i32
  call void @__asan_load8_noabort(i32 %82)
  %.unpack199 = load i64, ptr %.elt198, align 8
  %.elt200 = getelementptr inbounds [3 x i64], ptr %arrayidx99, i32 0, i32 2
  %83 = ptrtoint ptr %.elt200 to i32
  call void @__asan_load8_noabort(i32 %83)
  %.unpack201 = load i64, ptr %.elt200, align 8
  %node_info.sroa.2.8.extract.shift.i = lshr i64 %.unpack199, 56
  %node_info.sroa.2.8.extract.trunc.i = trunc i64 %node_info.sroa.2.8.extract.shift.i to i8
  %node_info.sroa.449.16.extract.shift.i = lshr i64 %.unpack201, 56
  %node_info.sroa.449.16.extract.trunc.i = trunc i64 %node_info.sroa.449.16.extract.shift.i to i8
  %84 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %psp, align 8
  %xgmi.i = getelementptr inbounds %struct.amdgpu_device, ptr %85, i32 0, i32 62, i32 39
  %86 = ptrtoint ptr %xgmi.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %xgmi.i, align 8
  %call.i = tail call ptr @amdgpu_get_xgmi_hive(ptr noundef %85) #10
  %device_list.i = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call.i, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then112
  %.pn.in.i = phi ptr [ %device_list.i, %if.then112 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %88 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %device_list.i
  br i1 %cmp.not.i, label %for.cond.i.for.inc116_crit_edge, label %for.body.i

for.cond.i.for.inc116_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

for.body.i:                                       ; preds = %for.cond.i
  %xgmi4.i = getelementptr i8, ptr %.pn.i, i32 -32
  %89 = ptrtoint ptr %xgmi4.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %xgmi4.i, align 8
  %cmp9.not.i = icmp eq i64 %90, %.unpack
  br i1 %cmp9.not.i, label %if.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  %top_info.i = getelementptr i8, ptr %.pn.i, i32 70192
  %91 = ptrtoint ptr %top_info.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %top_info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp1255.not.i = icmp eq i32 %92, 0
  br i1 %cmp1255.not.i, label %if.end.i.for.inc116_crit_edge, label %for.body13.lr.ph.i

if.end.i.for.inc116_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

for.body13.lr.ph.i:                               ; preds = %if.end.i
  %nodes.i = getelementptr i8, ptr %.pn.i, i32 70200
  br label %for.body13.i

for.cond11.i:                                     ; preds = %for.body13.i
  %inc.i = add nuw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %92
  br i1 %exitcond.not.i, label %for.cond11.i.for.inc116_crit_edge, label %for.cond11.i.for.body13.i_crit_edge

for.cond11.i.for.body13.i_crit_edge:              ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

for.cond11.i.for.inc116_crit_edge:                ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

for.body13.i:                                     ; preds = %for.cond11.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %j.056.i = phi i32 [ 0, %for.body13.lr.ph.i ], [ %inc.i, %for.cond11.i.for.body13.i_crit_edge ]
  %arrayidx.i210 = getelementptr [64 x %struct.psp_xgmi_node_info], ptr %nodes.i, i32 0, i32 %j.056.i
  %93 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx.i210, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %87)
  %cmp15.not.i = icmp eq i64 %94, %87
  br i1 %cmp15.not.i, label %if.end17.i, label %for.cond11.i

if.end17.i:                                       ; preds = %for.body13.i
  %num_hops20.i = getelementptr inbounds %struct.psp_xgmi_node_info, ptr %arrayidx.i210, i32 0, i32 1
  %95 = ptrtoint ptr %num_hops20.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %node_info.sroa.2.8.extract.trunc.i, ptr %num_hops20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %node_info.sroa.449.16.extract.trunc.i)
  %tobool.not.i = icmp eq i8 %node_info.sroa.449.16.extract.trunc.i, 0
  br i1 %tobool.not.i, label %if.end17.i.for.inc116_crit_edge, label %if.then21.i

if.end17.i.for.inc116_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc116

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_links24.i = getelementptr inbounds %struct.psp_xgmi_node_info, ptr %arrayidx.i210, i32 0, i32 4
  %96 = ptrtoint ptr %num_links24.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %node_info.sroa.449.16.extract.trunc.i, ptr %num_links24.i, align 8
  br label %for.inc116

for.inc116:                                       ; preds = %if.then21.i, %if.end17.i.for.inc116_crit_edge, %for.cond11.i.for.inc116_crit_edge, %if.end.i.for.inc116_crit_edge, %for.cond.i.for.inc116_crit_edge, %land.lhs.true106.for.inc116_crit_edge, %cond.end.for.inc116_crit_edge, %cond.end.thread
  %inc117 = add nuw i32 %i.2221, 1
  %97 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %topology, align 8
  %cmp81 = icmp ult i32 %inc117, %98
  br i1 %cmp81, label %for.inc116.for.body83_crit_edge, label %for.inc116.cleanup120_crit_edge

for.inc116.cleanup120_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup120

for.inc116.for.body83_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body83

cleanup120:                                       ; preds = %for.inc116.cleanup120_crit_edge, %for.cond79.preheader.cleanup120_crit_edge, %if.then72.cleanup120_crit_edge, %psp_xgmi_peer_link_info_supported.exit.cleanup120_crit_edge, %for.end70.cleanup120_crit_edge, %for.end.cleanup120_crit_edge, %lor.lhs.false.cleanup120_crit_edge, %entry.cleanup120_crit_edge
  %retval.1 = phi i32 [ -22, %lor.lhs.false.cleanup120_crit_edge ], [ -22, %entry.cleanup120_crit_edge ], [ %call1.i.i, %for.end.cleanup120_crit_edge ], [ %call1.i.i209, %if.then72.cleanup120_crit_edge ], [ 0, %for.cond79.preheader.cleanup120_crit_edge ], [ 0, %for.end70.cleanup120_crit_edge ], [ 0, %psp_xgmi_peer_link_info_supported.exit.cleanup120_crit_edge ], [ 0, %for.inc116.cleanup120_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_xgmi_set_topology_info(ptr noundef %psp, i32 noundef %number_devices, ptr noundef readonly %topology) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %topology, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %topology, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ugt i32 %1, 64
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 2080)
  %xgmi_in_message = getelementptr inbounds %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %3, align 8
  %6 = ptrtoint ptr %xgmi_in_message to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %number_devices, ptr %xgmi_in_message, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number_devices)
  %cmp341.not = icmp eq i32 %number_devices, 0
  br i1 %cmp341.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.042
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx, align 8
  %arrayidx5 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 %i.042
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx5, align 8
  %num_hops = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.042, i32 1
  %10 = ptrtoint ptr %num_hops to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_hops, align 8
  %num_hops11 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 %i.042, i32 1
  %12 = ptrtoint ptr %num_hops11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %num_hops11, align 8
  %is_sharing_enabled = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 %i.042, i32 2
  %13 = ptrtoint ptr %is_sharing_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_sharing_enabled, align 1
  %sdma_engine = getelementptr %struct.psp_xgmi_topology_info, ptr %topology, i32 0, i32 1, i32 %i.042, i32 3
  %14 = ptrtoint ptr %sdma_engine to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdma_engine, align 4
  %sdma_engine18 = getelementptr %struct.ta_xgmi_shared_memory, ptr %3, i32 0, i32 5, i32 0, i32 1, i32 %i.042, i32 3
  %16 = ptrtoint ptr %sdma_engine18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sdma_engine18, align 4
  %inc = add nuw i32 %i.042, 1
  %17 = ptrtoint ptr %xgmi_in_message to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xgmi_in_message, align 8
  %cmp3 = icmp ult i32 %inc, %18
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %19 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %21 = call ptr @memset(ptr %20, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 1
  %22 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %20, i32 0, i32 7
  %25 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %cmd1.i6.i.i, align 4
  %ta_cmd_id4.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %20, i32 0, i32 7, i32 0, i32 1
  %26 = ptrtoint ptr %ta_cmd_id4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %ta_cmd_id4.i.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %27 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %20, i64 noundef %28) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i.i, %for.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_ras_invoke(ptr noundef %psp, i32 noundef %ta_cmd_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared_buf, align 8
  %2 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %6 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %8 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %session_id.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 1
  %9 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %session_id.i, align 4
  %cmd_id.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %cmd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %cmd_id.i.i, align 4
  %cmd1.i6.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %cmd1.i6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %cmd1.i6.i, align 4
  %ta_cmd_id4.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %7, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %ta_cmd_id4.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ta_cmd_id, ptr %ta_cmd_id4.i.i, align 4
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %14 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call1.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %7, i64 noundef %15) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %16 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %if_version = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %if_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %if_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool9.not = icmp eq i32 %call1.i, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  %ras_out_message = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %1, i32 0, i32 5
  %err_inject_switch_disable_flag = getelementptr inbounds %struct.ta_ras_output_flags, ptr %ras_out_message, i32 0, i32 1
  %19 = ptrtoint ptr %err_inject_switch_disable_flag to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %err_inject_switch_disable_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not = icmp eq i8 %20, 0
  br i1 %tobool11.not, label %if.else, label %do.end15

do.end15:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %psp, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.5) #13
  %ras_status = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %ras_status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 40963, ptr %ras_status, align 8
  br label %if.end26

if.else:                                          ; preds = %if.then10
  %reg_access_failure_flag = getelementptr inbounds %struct.ta_ras_output_flags, ptr %ras_out_message, i32 0, i32 2
  %26 = ptrtoint ptr %reg_access_failure_flag to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_access_failure_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool18.not = icmp eq i8 %27, 0
  br i1 %tobool18.not, label %if.else.if.end26_crit_edge, label %do.end22

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %psp, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.10) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.else.if.end26_crit_edge, %do.end15
  %32 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shared_buf, align 8
  %ras_status.i = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %ras_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ras_status.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %35, label %do.end9.i [
    i32 40980, label %do.end.i
    i32 40985, label %do.end4.i
    i32 0, label %if.end26.cleanup_crit_edge
  ]

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %psp, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.73) #13
  br label %cleanup

do.end4.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %psp, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.76) #13
  br label %cleanup

do.end9.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %psp, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.79, i32 noundef %35) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end9.i, %do.end4.i, %do.end.i, %if.end26.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %if.end.cleanup_crit_edge ], [ %call1.i, %if.end8.cleanup_crit_edge ], [ %35, %if.end26.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %do.end4.i ], [ 0, %do.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_ras_enable_features(ptr noundef %psp, ptr nocapture noundef readonly %info, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34
  %0 = ptrtoint ptr %ras_context to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ras_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 2064)
  %not.enable = xor i1 %enable, true
  %. = zext i1 %not.enable to i32
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %., ptr %3, align 8
  %ras_in_message = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %3, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %ras_in_message, ptr %info, i32 1024)
  %call = tail call i32 @psp_ras_invoke(ptr noundef %psp, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_ras_trigger_error(ptr noundef %psp, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34
  %0 = ptrtoint ptr %ras_context to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ras_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 2064)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %3, align 8
  %ras_in_message = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %3, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %ras_in_message, ptr %info, i32 32)
  %call = tail call i32 @psp_ras_invoke(ptr noundef %psp, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %7 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %ras_status = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %ras_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ras_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  %. = select i1 %tobool10.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_hdcp_invoke(ptr noundef %psp, i32 noundef %ta_cmd_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %4 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %6 = call ptr @memset(ptr %5, i32 0, i32 1024)
  %session_id.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 1
  %7 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %session_id.i, align 4
  %cmd_id.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %cmd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %cmd_id.i.i, align 4
  %cmd1.i6.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %cmd1.i6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %cmd1.i6.i, align 4
  %ta_cmd_id4.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 7, i32 0, i32 1
  %11 = ptrtoint ptr %ta_cmd_id4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ta_cmd_id, ptr %ta_cmd_id4.i.i, align 4
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %12 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call1.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %5, i64 noundef %13) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_dtm_invoke(ptr noundef %psp, i32 noundef %ta_cmd_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %4 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %6 = call ptr @memset(ptr %5, i32 0, i32 1024)
  %session_id.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 1
  %7 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %session_id.i, align 4
  %cmd_id.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %cmd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %cmd_id.i.i, align 4
  %cmd1.i6.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %cmd1.i6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %cmd1.i6.i, align 4
  %ta_cmd_id4.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %5, i32 0, i32 7, i32 0, i32 1
  %11 = ptrtoint ptr %ta_cmd_id4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ta_cmd_id, ptr %ta_cmd_id4.i.i, align 4
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %12 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call1.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %5, i64 noundef %13) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_rap_invoke(ptr noundef %psp, i32 noundef %ta_cmd_id, ptr noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rap_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37
  %0 = ptrtoint ptr %rap_context to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rap_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ta_cmd_id.off = add i32 %ta_cmd_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ta_cmd_id.off)
  %switch = icmp ult i32 %ta_cmd_id.off, 2
  br i1 %switch, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_buf, align 8
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 104)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ta_cmd_id, ptr %3, align 4
  %validation_method_id = getelementptr inbounds %struct.ta_rap_shared_memory, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %validation_method_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %validation_method_id, align 4
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %8 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %10 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %session_id.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 1
  %11 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %session_id.i, align 4
  %cmd_id.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %cmd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %cmd_id.i.i, align 4
  %cmd1.i6.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %cmd1.i6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %cmd1.i6.i, align 4
  %ta_cmd_id4.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 7, i32 0, i32 1
  %15 = ptrtoint ptr %ta_cmd_id4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ta_cmd_id, ptr %ta_cmd_id4.i.i, align 4
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %16 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call1.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %9, i64 noundef %17) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool10.not = icmp ne i32 %call1.i, 0
  %tobool13.not = icmp eq ptr %status, null
  %or.cond = or i1 %tobool13.not, %tobool10.not
  br i1 %or.cond, label %if.end3.out_unlock_crit_edge, label %if.then14

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then14:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %rap_status = getelementptr inbounds %struct.ta_rap_shared_memory, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %rap_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rap_status, align 4
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %status, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then14, %if.end3.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %out_unlock ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_securedisplay_invoke(ptr noundef %psp, i32 noundef %ta_cmd_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %securedisplay_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38
  %0 = ptrtoint ptr %securedisplay_context to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %securedisplay_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %ta_cmd_id.off = add i32 %ta_cmd_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ta_cmd_id.off)
  %switch = icmp ult i32 %ta_cmd_id.off, 2
  %or.cond = and i1 %switch, %tobool.not
  br i1 %or.cond, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %2 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %4 = call ptr @memset(ptr %3, i32 0, i32 1024)
  %session_id.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 1
  %5 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %session_id.i, align 4
  %cmd_id.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %cmd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %cmd_id.i.i, align 4
  %cmd1.i6.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %cmd1.i6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %cmd1.i6.i, align 4
  %ta_cmd_id4.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %ta_cmd_id4.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ta_cmd_id, ptr %ta_cmd_id4.i.i, align 4
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %10 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call1.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %3, i64 noundef %11) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_load_fw_list(ptr noundef %psp, ptr nocapture noundef readonly %ucode_list, i32 noundef %ucode_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ucode_count)
  %cmp9 = icmp sgt i32 %ucode_count, 0
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %ucode_count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %ucode_list, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @psp_print_fw_hdr(ptr noundef %psp, ptr noundef %1)
  %call = tail call fastcc i32 @psp_execute_non_psp_fw_load(ptr noundef %psp, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psp_print_fw_hdr(ptr nocapture noundef readonly %psp, ptr nocapture noundef readonly %ucode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %2 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ucode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge33
    i32 2, label %entry.sw.bb_crit_edge34
    i32 3, label %entry.sw.bb_crit_edge35
    i32 4, label %entry.sw.bb_crit_edge36
    i32 5, label %entry.sw.bb_crit_edge37
    i32 6, label %entry.sw.bb_crit_edge38
    i32 7, label %entry.sw.bb_crit_edge39
    i32 8, label %sw.bb3
    i32 9, label %sw.bb5
    i32 10, label %sw.bb8
    i32 11, label %sw.bb11
    i32 22, label %sw.bb14
    i32 24, label %sw.bb17
  ]

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37, %entry.sw.bb_crit_edge38, %entry.sw.bb_crit_edge39
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 107
  %arrayidx = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void @amdgpu_ucode_print_sdma_hdr(ptr noundef %8) #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ce_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 13
  %9 = ptrtoint ptr %ce_fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ce_fw, align 4
  %data4 = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data4, align 4
  tail call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %12) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pfp_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 11
  %13 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pfp_fw, align 4
  %data7 = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data7, align 4
  tail call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %16) #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %me_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 9
  %17 = ptrtoint ptr %me_fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %me_fw, align 4
  %data10 = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data10, align 4
  tail call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %20) #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mec_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 17
  %21 = ptrtoint ptr %mec_fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mec_fw, align 4
  %data13 = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data13, align 4
  tail call void @amdgpu_ucode_print_gfx_hdr(ptr noundef %24) #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rlc_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 15
  %25 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rlc_fw, align 4
  %data16 = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data16, align 4
  tail call void @amdgpu_ucode_print_rlc_hdr(ptr noundef %28) #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw18 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 16
  %29 = ptrtoint ptr %fw18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw18, align 8
  %data19 = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data19, align 4
  tail call void @amdgpu_ucode_print_smc_hdr(ptr noundef %32) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_execute_non_psp_fw_load(ptr noundef %psp, ptr noundef %ucode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1.i, align 8
  %mutex.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %mc_addr.i = getelementptr inbounds %struct.amdgpu_firmware_info, ptr %ucode, i32 0, i32 2
  %3 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mc_addr.i, align 8
  %cmd_id.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %cmd_id.i, align 4
  %conv.i = trunc i64 %4 to i32
  %cmd1.i9 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %cmd1.i9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %cmd1.i9, align 4
  %shr.i = lshr i64 %4, 32
  %conv3.i = trunc i64 %shr.i to i32
  %fw_phy_addr_hi.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 1
  %7 = ptrtoint ptr %fw_phy_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv3.i, ptr %fw_phy_addr_hi.i, align 4
  %ucode_size.i = getelementptr inbounds %struct.amdgpu_firmware_info, ptr %ucode, i32 0, i32 4
  %8 = ptrtoint ptr %ucode_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ucode_size.i, align 4
  %fw_size.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 2
  %10 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fw_size.i, align 4
  %fw_type.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ucode, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %12, label %psp_prep_load_ip_fw_cmd_buf.exit [
    i32 0, label %entry.if.then_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 4, label %sw.bb4.i.i
    i32 5, label %sw.bb5.i.i
    i32 6, label %sw.bb6.i.i
    i32 7, label %sw.bb7.i.i
    i32 15, label %sw.bb8.i.i
    i32 16, label %sw.bb9.i.i
    i32 8, label %sw.bb10.i.i
    i32 9, label %sw.bb11.i.i
    i32 10, label %sw.bb12.i.i
    i32 11, label %sw.bb13.i.i
    i32 12, label %sw.bb14.i.i
    i32 13, label %sw.bb15.i.i
    i32 14, label %sw.bb16.i.i
    i32 22, label %sw.bb17.i.i
    i32 17, label %sw.bb18.i.i
    i32 18, label %sw.bb19.i.i
    i32 19, label %sw.bb20.i.i
    i32 20, label %sw.bb21.i.i
    i32 21, label %sw.bb22.i.i
    i32 24, label %sw.bb23.i.i
    i32 25, label %sw.bb24.i.i
    i32 26, label %sw.bb25.i.i
    i32 27, label %sw.bb26.i.i
    i32 28, label %sw.bb27.i.i
    i32 29, label %sw.bb28.i.i
    i32 30, label %sw.bb29.i.i
    i32 31, label %sw.bb30.i.i
    i32 32, label %sw.bb31.i.i
    i32 33, label %sw.bb32.i.i
    i32 34, label %sw.bb33.i.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb3.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb6.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb7.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb8.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb9.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb10.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb11.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb12.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb13.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb14.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb15.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb16.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb17.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb18.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb19.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb20.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb21.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb22.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb23.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb24.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb25.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb26.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb27.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb28.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb29.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb30.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb31.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb32.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb33.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

psp_prep_load_ip_fw_cmd_buf.exit:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.81) #10
  br label %if.end

if.then:                                          ; preds = %sw.bb33.i.i, %sw.bb32.i.i, %sw.bb31.i.i, %sw.bb30.i.i, %sw.bb29.i.i, %sw.bb28.i.i, %sw.bb27.i.i, %sw.bb26.i.i, %sw.bb25.i.i, %sw.bb24.i.i, %sw.bb23.i.i, %sw.bb22.i.i, %sw.bb21.i.i, %sw.bb20.i.i, %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %entry.if.then_crit_edge
  %.sink.i.i = phi i32 [ 10, %sw.bb1.i.i ], [ 52, %sw.bb2.i.i ], [ 53, %sw.bb3.i.i ], [ 54, %sw.bb4.i.i ], [ 55, %sw.bb5.i.i ], [ 56, %sw.bb6.i.i ], [ 57, %sw.bb7.i.i ], [ 33, %sw.bb8.i.i ], [ 34, %sw.bb9.i.i ], [ 3, %sw.bb10.i.i ], [ 2, %sw.bb11.i.i ], [ 1, %sw.bb12.i.i ], [ 4, %sw.bb13.i.i ], [ 5, %sw.bb14.i.i ], [ 4, %sw.bb15.i.i ], [ 6, %sw.bb16.i.i ], [ 8, %sw.bb17.i.i ], [ 22, %sw.bb18.i.i ], [ 20, %sw.bb19.i.i ], [ 21, %sw.bb20.i.i ], [ 26, %sw.bb21.i.i ], [ 48, %sw.bb22.i.i ], [ 18, %sw.bb23.i.i ], [ 14, %sw.bb24.i.i ], [ 23, %sw.bb25.i.i ], [ 15, %sw.bb26.i.i ], [ 13, %sw.bb27.i.i ], [ 58, %sw.bb28.i.i ], [ 11, %sw.bb29.i.i ], [ 12, %sw.bb30.i.i ], [ 49, %sw.bb31.i.i ], [ 50, %sw.bb32.i.i ], [ 51, %sw.bb33.i.i ], [ 9, %entry.if.then_crit_edge ]
  %14 = ptrtoint ptr %fw_type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i.i, ptr %fw_type.i, align 4
  %fence_buf_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %15 = ptrtoint ptr %fence_buf_mc_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fence_buf_mc_addr, align 8
  %call2 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef %ucode, ptr noundef %1, i64 noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %psp_prep_load_ip_fw_cmd_buf.exit
  %ret.0 = phi i32 [ -22, %psp_prep_load_ip_fw_cmd_buf.exit ], [ %call2, %if.then ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_gpu_reset(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %0 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %mode1_reset = getelementptr inbounds %struct.psp_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %mode1_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode1_reset, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call = tail call i32 %5(ptr noundef %psp) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_rlc_autoload_start(ptr noundef %psp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1.i, align 8
  %mutex.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %cmd_id = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %cmd_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33, ptr %cmd_id, align 4
  %fence_buf_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %4 = ptrtoint ptr %fence_buf_mc_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %fence_buf_mc_addr, align 8
  %call1 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %1, i64 noundef %5)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_update_vcn_sram(ptr noundef %adev, i32 noundef %inst_idx, i64 noundef %cmd_gpu_addr, i32 noundef %cmd_size) local_unnamed_addr #0 align 64 {
entry:
  %ucode = alloca %struct.amdgpu_firmware_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ucode) #10
  %0 = call ptr @memset(ptr %ucode, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inst_idx)
  %tobool.not = icmp eq i32 %inst_idx, 0
  %cond = select i1 %tobool.not, i32 32, i32 33
  %1 = ptrtoint ptr %ucode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %ucode, align 8
  %mc_addr = getelementptr inbounds %struct.amdgpu_firmware_info, ptr %ucode, i32 0, i32 2
  %2 = ptrtoint ptr %mc_addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %cmd_gpu_addr, ptr %mc_addr, align 8
  %ucode_size = getelementptr inbounds %struct.amdgpu_firmware_info, ptr %ucode, i32 0, i32 4
  %3 = ptrtoint ptr %ucode_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cmd_size, ptr %ucode_size, align 4
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call = call fastcc i32 @psp_execute_non_psp_fw_load(ptr noundef %psp, ptr noundef nonnull %ucode)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ucode) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_ring_cmd_submit(ptr noundef %psp, i64 noundef %cmd_buf_mc_addr, i64 noundef %fence_mc_addr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_mem = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ring_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_mem, align 4
  %ring_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_size, align 4
  %div54 = lshr i32 %3, 6
  %add.ptr = getelementptr %struct.psp_gfx_rb_frame, ptr %1, i32 %div54
  %add.ptr1 = getelementptr %struct.psp_gfx_rb_frame, ptr %add.ptr, i32 -1
  %4 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psp, align 8
  %div455 = lshr i32 %3, 2
  %funcs = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %ring_get_wptr = getelementptr inbounds %struct.psp_funcs, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %ring_get_wptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring_get_wptr, align 4
  %call = tail call i32 %9(ptr noundef %psp) #10
  %rem = urem i32 %call, %div455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %div556 = lshr i32 %call, 4
  %write_frame.0.idx = select i1 %cmp, i32 0, i32 %div556
  %write_frame.0 = getelementptr %struct.psp_gfx_rb_frame, ptr %1, i32 %write_frame.0.idx
  %cmp7 = icmp ult ptr %write_frame.0, %1
  %cmp8 = icmp ult ptr %add.ptr1, %write_frame.0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef %add.ptr1, ptr noundef %write_frame.0) #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = getelementptr inbounds i8, ptr %write_frame.0, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 60)
  %shr = lshr i64 %cmd_buf_mc_addr, 32
  %conv = trunc i64 %shr to i32
  %cmd_buf_addr_hi = getelementptr %struct.psp_gfx_rb_frame, ptr %1, i32 %write_frame.0.idx, i32 1
  %12 = ptrtoint ptr %cmd_buf_addr_hi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %cmd_buf_addr_hi, align 4
  %conv12 = trunc i64 %cmd_buf_mc_addr to i32
  %13 = ptrtoint ptr %write_frame.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv12, ptr %write_frame.0, align 4
  %shr13 = lshr i64 %fence_mc_addr, 32
  %conv15 = trunc i64 %shr13 to i32
  %fence_addr_hi = getelementptr %struct.psp_gfx_rb_frame, ptr %1, i32 %write_frame.0.idx, i32 4
  %14 = ptrtoint ptr %fence_addr_hi to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15, ptr %fence_addr_hi, align 4
  %conv17 = trunc i64 %fence_mc_addr to i32
  %fence_addr_lo = getelementptr %struct.psp_gfx_rb_frame, ptr %1, i32 %write_frame.0.idx, i32 3
  %15 = ptrtoint ptr %fence_addr_lo to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv17, ptr %fence_addr_lo, align 4
  %fence_value = getelementptr %struct.psp_gfx_rb_frame, ptr %1, i32 %write_frame.0.idx, i32 5
  %16 = ptrtoint ptr %fence_value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %index, ptr %fence_value, align 4
  tail call void @amdgpu_device_flush_hdp(ptr noundef %5, ptr noundef null) #10
  %add = add i32 %call, 16
  %rem18 = urem i32 %add, %div455
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs, align 4
  %ring_set_wptr = getelementptr inbounds %struct.psp_funcs, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %ring_set_wptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring_set_wptr, align 4
  tail call void %20(ptr noundef %psp, i32 noundef %rem18) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  %retval.0 = phi i32 [ -22, %if.then9 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_flush_hdp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_init_asd_microcode(ptr nocapture noundef readonly %psp, ptr noundef %chip_name) local_unnamed_addr #0 align 64 {
entry:
  %fw_name = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fw_name) #10
  %2 = call ptr @memset(ptr %fw_name, i32 255, i32 36)
  %tobool.not = icmp eq ptr %chip_name, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 36, ptr noundef nonnull @.str.17, ptr noundef nonnull %chip_name)
  %asd_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 19
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call5 = call i32 @request_firmware(ptr noundef %asd_fw, ptr noundef nonnull %fw_name, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.do.end32_crit_edge

if.end.do.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %asd_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asd_fw, align 8
  %call11 = call i32 @amdgpu_ucode_validate(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.do.end32_crit_edge

if.end8.do.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %asd_fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asd_fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucode_version, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %bin_desc = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 32, i32 3
  %16 = ptrtoint ptr %bin_desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bin_desc, align 8
  %sos = getelementptr inbounds %struct.psp_firmware_header_v1_0, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %sos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sos, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 32, i32 3, i32 1
  %20 = ptrtoint ptr %feature_version to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %feature_version, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 7
  %21 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ucode_size_bytes, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %size_bytes = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 32, i32 3, i32 2
  %24 = ptrtoint ptr %size_bytes to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %size_bytes, align 8
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 8
  %25 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ucode_array_offset_bytes, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %add.ptr = getelementptr i8, ptr %12, i32 %27
  %start_addr = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 32, i32 3, i32 3
  %28 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %start_addr, align 4
  br label %cleanup

do.end32:                                         ; preds = %if.end8.do.end32_crit_edge, %if.end.do.end32_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.do.end32_crit_edge ], [ %call11, %if.end8.do.end32_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.19) #13
  %31 = ptrtoint ptr %asd_fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asd_fw, align 8
  call void @release_firmware(ptr noundef %32) #10
  %33 = ptrtoint ptr %asd_fw to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %asd_fw, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.end14, %do.end
  %retval.0 = phi i32 [ %err.0, %do.end32 ], [ 0, %if.end14 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_init_toc_microcode(ptr nocapture noundef readonly %psp, ptr noundef %chip_name) local_unnamed_addr #0 align 64 {
entry:
  %fw_name = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fw_name) #10
  %2 = call ptr @memset(ptr %fw_name, i32 255, i32 36)
  %tobool.not = icmp eq ptr %chip_name, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 36, ptr noundef nonnull @.str.23, ptr noundef nonnull %chip_name)
  %toc_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 20
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call5 = call i32 @request_firmware(ptr noundef %toc_fw, ptr noundef nonnull %fw_name, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.do.end29_crit_edge

if.end.do.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %toc_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %toc_fw, align 4
  %call11 = call i32 @amdgpu_ucode_validate(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.do.end29_crit_edge

if.end8.do.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %toc_fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %toc_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucode_version, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %toc = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 10
  %16 = ptrtoint ptr %toc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %toc, align 8
  %sos = getelementptr inbounds %struct.psp_firmware_header_v1_0, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %sos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sos, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %feature_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 10, i32 1
  %20 = ptrtoint ptr %feature_version to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %feature_version, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 7
  %21 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ucode_size_bytes, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %size_bytes = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 10, i32 2
  %24 = ptrtoint ptr %size_bytes to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %size_bytes, align 8
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 8
  %25 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ucode_array_offset_bytes, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %add.ptr = getelementptr i8, ptr %12, i32 %27
  %start_addr = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 10, i32 3
  %28 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %start_addr, align 4
  br label %cleanup

do.end29:                                         ; preds = %if.end8.do.end29_crit_edge, %if.end.do.end29_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.do.end29_crit_edge ], [ %call11, %if.end8.do.end29_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.25) #13
  %31 = ptrtoint ptr %toc_fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %toc_fw, align 4
  call void @release_firmware(ptr noundef %32) #10
  %33 = ptrtoint ptr %toc_fw to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %toc_fw, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end14, %do.end
  %retval.0 = phi i32 [ %err.0, %do.end29 ], [ 0, %if.end14 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_init_sos_microcode(ptr noundef %psp, ptr noundef %chip_name) local_unnamed_addr #0 align 64 {
entry:
  %fw_name = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fw_name) #10
  %2 = call ptr @memset(ptr %fw_name, i32 255, i32 36)
  %tobool.not = icmp eq ptr %chip_name, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 36, ptr noundef nonnull @.str.29, ptr noundef nonnull %chip_name)
  %sos_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call5 = call i32 @request_firmware(ptr noundef %sos_fw, ptr noundef nonnull %fw_name, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.do.end157_crit_edge

if.end.do.end157_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end157

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sos_fw, align 4
  %call11 = call i32 @amdgpu_ucode_validate(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.do.end157_crit_edge

if.end8.do.end157_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end157

if.end14:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sos_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ucode_array_offset_bytes, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %add.ptr = getelementptr i8, ptr %12, i32 %15
  call void @amdgpu_ucode_print_psp_hdr(ptr noundef %12) #10
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %header_version_major, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.232)
  switch i16 %17, label %do.end153 [
    i16 1, label %sw.bb
    i16 2, label %sw.bb132
  ]

sw.bb:                                            ; preds = %if.end14
  %19 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sos_fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %ucode_array_offset_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %ucode_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ucode_array_offset_bytes.i, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #10
  %add.ptr.i = getelementptr i8, ptr %22, i32 %25
  %connected_to_cpu.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 39, i32 8
  %26 = ptrtoint ptr %connected_to_cpu.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %connected_to_cpu.i, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb.if.then.i_crit_edge

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 14
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 851970
  br i1 %cmp.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %ucode_version.i = getelementptr inbounds %struct.common_firmware_header, ptr %22, i32 0, i32 6
  %30 = ptrtoint ptr %ucode_version.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ucode_version.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #10
  %sos.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 9
  %33 = ptrtoint ptr %sos.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sos.i, align 8
  %sos4.i = getelementptr inbounds %struct.psp_firmware_header_v1_0, ptr %22, i32 0, i32 1
  %34 = ptrtoint ptr %sos4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sos4.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #10
  %feature_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 9, i32 1
  %37 = ptrtoint ptr %feature_version.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %feature_version.i, align 4
  %offset_bytes.i = getelementptr inbounds %struct.psp_firmware_header_v1_0, ptr %22, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset_bytes.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #10
  %size_bytes.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 8, i32 2
  %41 = ptrtoint ptr %size_bytes.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %size_bytes.i, align 8
  %start_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 8, i32 3
  %42 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i, ptr %start_addr.i, align 4
  %size_bytes13.i = getelementptr inbounds %struct.psp_firmware_header_v1_0, ptr %22, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %size_bytes13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size_bytes13.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #10
  %size_bytes16.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 9, i32 2
  %46 = ptrtoint ptr %size_bytes16.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %size_bytes16.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %sos_aux.i = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %22, i32 0, i32 4
  %47 = ptrtoint ptr %sos_aux.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sos_aux.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #10
  %sos29.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 9
  %50 = ptrtoint ptr %sos29.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %sos29.i, align 8
  %51 = ptrtoint ptr %sos_aux.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sos_aux.i, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #10
  %feature_version35.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 9, i32 1
  %54 = ptrtoint ptr %feature_version35.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %feature_version35.i, align 4
  %size_bytes36.i = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %22, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %size_bytes36.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size_bytes36.i, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #10
  %size_bytes39.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 8, i32 2
  %58 = ptrtoint ptr %size_bytes39.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %size_bytes39.i, align 8
  %offset_bytes41.i = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %22, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %offset_bytes41.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset_bytes41.i, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60) #10
  %add.ptr42.i = getelementptr i8, ptr %add.ptr.i, i32 %61
  %start_addr45.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 8, i32 3
  %62 = ptrtoint ptr %start_addr45.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr42.i, ptr %start_addr45.i, align 4
  %size_bytes47.i = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %22, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %size_bytes47.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size_bytes47.i, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #10
  %size_bytes50.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 9, i32 2
  %66 = ptrtoint ptr %size_bytes50.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %size_bytes50.i, align 8
  %offset_bytes52.i = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %22, i32 0, i32 4, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %offset_bytes52.sink.i = phi ptr [ %offset_bytes52.i, %if.else.i ], [ %offset_bytes.i, %if.then.i ]
  %.sink.i = phi i8 [ 1, %if.else.i ], [ 0, %if.then.i ]
  %67 = ptrtoint ptr %offset_bytes52.sink.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %offset_bytes52.sink.i, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #10
  %add.ptr53.i = getelementptr i8, ptr %add.ptr.i, i32 %69
  %start_addr56.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 9, i32 3
  %70 = ptrtoint ptr %start_addr56.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr53.i, ptr %start_addr56.i, align 4
  %supports_extended_data59.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 33, i32 2
  %71 = ptrtoint ptr %supports_extended_data59.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.sink.i, ptr %supports_extended_data59.i, align 8
  %size_bytes62.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 8, i32 2
  %72 = ptrtoint ptr %size_bytes62.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size_bytes62.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp63.i = icmp eq i32 %73, 0
  br i1 %cmp63.i, label %if.end.i.psp_init_sos_base_fw.exit_crit_edge, label %lor.lhs.false64.i

if.end.i.psp_init_sos_base_fw.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_init_sos_base_fw.exit

lor.lhs.false64.i:                                ; preds = %if.end.i
  %size_bytes67.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 9, i32 2
  %74 = ptrtoint ptr %size_bytes67.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size_bytes67.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp68.i = icmp eq i32 %75, 0
  br i1 %cmp68.i, label %lor.lhs.false64.i.psp_init_sos_base_fw.exit_crit_edge, label %if.end22

lor.lhs.false64.i.psp_init_sos_base_fw.exit_crit_edge: ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_init_sos_base_fw.exit

psp_init_sos_base_fw.exit:                        ; preds = %lor.lhs.false64.i.psp_init_sos_base_fw.exit_crit_edge, %if.end.i.psp_init_sos_base_fw.exit_crit_edge
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.82) #13
  br label %do.end157

if.end22:                                         ; preds = %lor.lhs.false64.i
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 3
  %78 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %header_version_minor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %79)
  %cmp = icmp eq i16 %79, 1
  br i1 %cmp, label %if.then26, label %if.end22.if.end52_crit_edge

if.end22.if.end52_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sos_fw, align 4
  %data29 = getelementptr inbounds %struct.firmware, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data29, align 4
  %size_bytes = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %83, i32 0, i32 1, i32 2
  %84 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size_bytes, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %size_bytes32 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 10, i32 2
  %87 = ptrtoint ptr %size_bytes32 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %size_bytes32, align 8
  %start_addr = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 8, i32 3
  %88 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %start_addr, align 4
  %offset_bytes = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %83, i32 0, i32 1, i32 1
  %90 = ptrtoint ptr %offset_bytes to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset_bytes, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %add.ptr35 = getelementptr i8, ptr %89, i32 %92
  %start_addr38 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 10, i32 3
  %93 = ptrtoint ptr %start_addr38 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr35, ptr %start_addr38, align 4
  %size_bytes39 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %83, i32 0, i32 2, i32 2
  %94 = ptrtoint ptr %size_bytes39 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %size_bytes39, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %size_bytes42 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 11, i32 2
  %97 = ptrtoint ptr %size_bytes42 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %size_bytes42, align 8
  %offset_bytes47 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %83, i32 0, i32 2, i32 1
  %98 = ptrtoint ptr %offset_bytes47 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset_bytes47, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  %add.ptr48 = getelementptr i8, ptr %89, i32 %100
  %start_addr51 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 11, i32 3
  %101 = ptrtoint ptr %start_addr51 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr48, ptr %start_addr51, align 4
  %102 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %102)
  %.pr = load i16, ptr %header_version_minor, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then26, %if.end22.if.end52_crit_edge
  %103 = phi i16 [ %.pr, %if.then26 ], [ %79, %if.end22.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %103)
  %cmp56 = icmp eq i16 %103, 2
  br i1 %cmp56, label %if.then58, label %if.end52.if.end76_crit_edge

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sos_fw, align 4
  %data61 = getelementptr inbounds %struct.firmware, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %data61 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data61, align 4
  %size_bytes63 = getelementptr inbounds %struct.psp_firmware_header_v1_2, ptr %107, i32 0, i32 2, i32 2
  %108 = ptrtoint ptr %size_bytes63 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size_bytes63, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %size_bytes66 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 11, i32 2
  %111 = ptrtoint ptr %size_bytes66 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %size_bytes66, align 8
  %start_addr69 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 8, i32 3
  %112 = ptrtoint ptr %start_addr69 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %start_addr69, align 4
  %offset_bytes71 = getelementptr inbounds %struct.psp_firmware_header_v1_2, ptr %107, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %offset_bytes71 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %offset_bytes71, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115)
  %add.ptr72 = getelementptr i8, ptr %113, i32 %116
  %start_addr75 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 11, i32 3
  %117 = ptrtoint ptr %start_addr75 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %add.ptr72, ptr %start_addr75, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then58, %if.end52.if.end76_crit_edge
  %118 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %header_version_minor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %119)
  %cmp80 = icmp eq i16 %119, 3
  br i1 %cmp80, label %if.then82, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then82:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sos_fw, align 4
  %data85 = getelementptr inbounds %struct.firmware, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %data85 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data85, align 4
  %size_bytes87 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %123, i32 0, i32 1, i32 2
  %124 = ptrtoint ptr %size_bytes87 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %size_bytes87, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  %size_bytes90 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 10, i32 2
  %127 = ptrtoint ptr %size_bytes90 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %size_bytes90, align 8
  %offset_bytes93 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %123, i32 0, i32 1, i32 1
  %128 = ptrtoint ptr %offset_bytes93 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %offset_bytes93, align 4
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  %add.ptr94 = getelementptr i8, ptr %add.ptr, i32 %130
  %start_addr97 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 10, i32 3
  %131 = ptrtoint ptr %start_addr97 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %add.ptr94, ptr %start_addr97, align 4
  %size_bytes100 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %123, i32 0, i32 2, i32 2
  %132 = ptrtoint ptr %size_bytes100 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %size_bytes100, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %133)
  %size_bytes103 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 11, i32 2
  %135 = ptrtoint ptr %size_bytes103 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %size_bytes103, align 8
  %offset_bytes106 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %123, i32 0, i32 2, i32 1
  %136 = ptrtoint ptr %offset_bytes106 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offset_bytes106, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137)
  %add.ptr107 = getelementptr i8, ptr %add.ptr, i32 %138
  %start_addr110 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 11, i32 3
  %139 = ptrtoint ptr %start_addr110 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %add.ptr107, ptr %start_addr110, align 4
  %size_bytes111 = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %123, i32 0, i32 1, i32 2
  %140 = ptrtoint ptr %size_bytes111 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %size_bytes111, align 4
  %142 = call i32 @llvm.bswap.i32(i32 %141)
  %size_bytes114 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 12, i32 2
  %143 = ptrtoint ptr %size_bytes114 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %size_bytes114, align 8
  %offset_bytes116 = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %123, i32 0, i32 1, i32 1
  %144 = ptrtoint ptr %offset_bytes116 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %offset_bytes116, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145)
  %add.ptr117 = getelementptr i8, ptr %add.ptr, i32 %146
  %start_addr120 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 12, i32 3
  %147 = ptrtoint ptr %start_addr120 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %add.ptr117, ptr %start_addr120, align 4
  %size_bytes121 = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %123, i32 0, i32 2, i32 2
  %148 = ptrtoint ptr %size_bytes121 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %size_bytes121, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %149)
  %size_bytes124 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 13, i32 2
  %151 = ptrtoint ptr %size_bytes124 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %size_bytes124, align 8
  %offset_bytes126 = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %123, i32 0, i32 2, i32 1
  %152 = ptrtoint ptr %offset_bytes126 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %offset_bytes126, align 4
  %154 = call i32 @llvm.bswap.i32(i32 %153)
  %add.ptr127 = getelementptr i8, ptr %add.ptr, i32 %154
  %start_addr130 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 13, i32 3
  %155 = ptrtoint ptr %start_addr130 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %add.ptr127, ptr %start_addr130, align 4
  br label %cleanup

sw.bb132:                                         ; preds = %if.end14
  %156 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sos_fw, align 4
  %data135 = getelementptr inbounds %struct.firmware, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %data135 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data135, align 4
  %psp_fw_bin_count = getelementptr inbounds %struct.psp_firmware_header_v2_0, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %psp_fw_bin_count to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %psp_fw_bin_count, align 4
  %162 = call i32 @llvm.bswap.i32(i32 %161)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %162)
  %cmp136 = icmp ugt i32 %162, 12
  br i1 %cmp136, label %do.end141, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb132
  %163 = ptrtoint ptr %psp_fw_bin_count to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %psp_fw_bin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp145251.not = icmp eq i32 %164, 0
  br i1 %cmp145251.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not.i234 = icmp eq ptr %psp, null
  %.fr = freeze ptr %159
  %tobool3.not.i = icmp eq ptr %.fr, null
  %ucode_array_offset_bytes.i237 = getelementptr inbounds %struct.common_firmware_header, ptr %.fr, i32 0, i32 8
  %dbg_drv.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 16
  %feature_version93.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 16, i32 1
  %size_bytes96.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 16, i32 2
  %start_addr98.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 16, i32 3
  %intf_drv.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 15
  %feature_version82.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 15, i32 1
  %size_bytes85.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 15, i32 2
  %start_addr87.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 15, i32 3
  %soc_drv.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 14
  %feature_version71.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 14, i32 1
  %size_bytes74.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 14, i32 2
  %start_addr76.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 14, i32 3
  %rl.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 13
  %feature_version60.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 13, i32 1
  %size_bytes63.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 13, i32 2
  %start_addr65.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 13, i32 3
  %spl.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 12
  %feature_version49.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 12, i32 1
  %size_bytes52.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 12, i32 2
  %start_addr54.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 12, i32 3
  %toc.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 10
  %feature_version38.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 10, i32 1
  %size_bytes41.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 10, i32 2
  %start_addr43.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 10, i32 3
  %kdb.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 11
  %feature_version27.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 11, i32 1
  %size_bytes30.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 11, i32 2
  %start_addr32.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 11, i32 3
  %sys.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 8
  %feature_version16.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 8, i32 1
  %size_bytes19.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 8, i32 2
  %start_addr21.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 8, i32 3
  %sos.i239 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9
  %feature_version.i240 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9, i32 1
  %size_bytes9.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9, i32 2
  %start_addr.i242 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9, i32 3
  %165 = or i1 %tobool3.not.i, %tobool.not.i234
  br i1 %165, label %for.body.lr.ph.do.end157_crit_edge, label %for.body.lr.ph.for.body_crit_edge

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body.lr.ph.do.end157_crit_edge:               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end157

do.end141:                                        ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.31) #13
  br label %do.end157

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %fw_index.0252 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.lr.ph.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252
  %tobool1.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool1.not.i, label %for.body.do.end157_crit_edge, label %if.end.i238

for.body.do.end157_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end157

if.end.i238:                                      ; preds = %for.body
  %offset_bytes.i235 = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 2
  %168 = ptrtoint ptr %offset_bytes.i235 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %offset_bytes.i235, align 4
  %170 = call i32 @llvm.bswap.i32(i32 %169) #10
  %add.ptr.i236 = getelementptr i8, ptr %.fr, i32 %170
  %171 = ptrtoint ptr %ucode_array_offset_bytes.i237 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ucode_array_offset_bytes.i237, align 4
  %173 = call i32 @llvm.bswap.i32(i32 %172) #10
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i236, i32 %173
  %174 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx, align 4
  %176 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %175, label %do.end.i245 [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb11.i
    i32 3, label %sw.bb22.i
    i32 4, label %sw.bb33.i
    i32 5, label %sw.bb44.i
    i32 6, label %sw.bb55.i
    i32 7, label %sw.bb66.i
    i32 8, label %sw.bb77.i
    i32 9, label %sw.bb88.i
  ]

sw.bb.i:                                          ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %177 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %fw_version.i, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178) #10
  %180 = ptrtoint ptr %sos.i239 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %sos.i239, align 8
  %181 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %fw_version.i, align 4
  %183 = call i32 @llvm.bswap.i32(i32 %182) #10
  %184 = ptrtoint ptr %feature_version.i240 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %feature_version.i240, align 4
  %size_bytes.i241 = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %185 = ptrtoint ptr %size_bytes.i241 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %size_bytes.i241, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #10
  %188 = ptrtoint ptr %size_bytes9.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %size_bytes9.i, align 8
  %189 = ptrtoint ptr %start_addr.i242 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %add.ptr4.i, ptr %start_addr.i242, align 4
  br label %for.inc

sw.bb11.i:                                        ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version12.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %190 = ptrtoint ptr %fw_version12.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %fw_version12.i, align 4
  %192 = call i32 @llvm.bswap.i32(i32 %191) #10
  %193 = ptrtoint ptr %sys.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %sys.i, align 8
  %194 = ptrtoint ptr %fw_version12.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %fw_version12.i, align 4
  %196 = call i32 @llvm.bswap.i32(i32 %195) #10
  %197 = ptrtoint ptr %feature_version16.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %feature_version16.i, align 4
  %size_bytes17.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %198 = ptrtoint ptr %size_bytes17.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %size_bytes17.i, align 4
  %200 = call i32 @llvm.bswap.i32(i32 %199) #10
  %201 = ptrtoint ptr %size_bytes19.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %size_bytes19.i, align 8
  %202 = ptrtoint ptr %start_addr21.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %add.ptr4.i, ptr %start_addr21.i, align 4
  br label %for.inc

sw.bb22.i:                                        ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version23.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %203 = ptrtoint ptr %fw_version23.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %fw_version23.i, align 4
  %205 = call i32 @llvm.bswap.i32(i32 %204) #10
  %206 = ptrtoint ptr %kdb.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %kdb.i, align 8
  %207 = ptrtoint ptr %fw_version23.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %fw_version23.i, align 4
  %209 = call i32 @llvm.bswap.i32(i32 %208) #10
  %210 = ptrtoint ptr %feature_version27.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %feature_version27.i, align 4
  %size_bytes28.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %211 = ptrtoint ptr %size_bytes28.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %size_bytes28.i, align 4
  %213 = call i32 @llvm.bswap.i32(i32 %212) #10
  %214 = ptrtoint ptr %size_bytes30.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %size_bytes30.i, align 8
  %215 = ptrtoint ptr %start_addr32.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %add.ptr4.i, ptr %start_addr32.i, align 4
  br label %for.inc

sw.bb33.i:                                        ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version34.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %216 = ptrtoint ptr %fw_version34.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %fw_version34.i, align 4
  %218 = call i32 @llvm.bswap.i32(i32 %217) #10
  %219 = ptrtoint ptr %toc.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %toc.i, align 8
  %220 = ptrtoint ptr %fw_version34.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %fw_version34.i, align 4
  %222 = call i32 @llvm.bswap.i32(i32 %221) #10
  %223 = ptrtoint ptr %feature_version38.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %feature_version38.i, align 4
  %size_bytes39.i243 = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %224 = ptrtoint ptr %size_bytes39.i243 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %size_bytes39.i243, align 4
  %226 = call i32 @llvm.bswap.i32(i32 %225) #10
  %227 = ptrtoint ptr %size_bytes41.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %size_bytes41.i, align 8
  %228 = ptrtoint ptr %start_addr43.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %add.ptr4.i, ptr %start_addr43.i, align 4
  br label %for.inc

sw.bb44.i:                                        ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version45.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %229 = ptrtoint ptr %fw_version45.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %fw_version45.i, align 4
  %231 = call i32 @llvm.bswap.i32(i32 %230) #10
  %232 = ptrtoint ptr %spl.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %spl.i, align 8
  %233 = ptrtoint ptr %fw_version45.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %fw_version45.i, align 4
  %235 = call i32 @llvm.bswap.i32(i32 %234) #10
  %236 = ptrtoint ptr %feature_version49.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %feature_version49.i, align 4
  %size_bytes50.i244 = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %237 = ptrtoint ptr %size_bytes50.i244 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %size_bytes50.i244, align 4
  %239 = call i32 @llvm.bswap.i32(i32 %238) #10
  %240 = ptrtoint ptr %size_bytes52.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %size_bytes52.i, align 8
  %241 = ptrtoint ptr %start_addr54.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %add.ptr4.i, ptr %start_addr54.i, align 4
  br label %for.inc

sw.bb55.i:                                        ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version56.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %242 = ptrtoint ptr %fw_version56.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %fw_version56.i, align 4
  %244 = call i32 @llvm.bswap.i32(i32 %243) #10
  %245 = ptrtoint ptr %rl.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %244, ptr %rl.i, align 8
  %246 = ptrtoint ptr %fw_version56.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %fw_version56.i, align 4
  %248 = call i32 @llvm.bswap.i32(i32 %247) #10
  %249 = ptrtoint ptr %feature_version60.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %feature_version60.i, align 4
  %size_bytes61.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %250 = ptrtoint ptr %size_bytes61.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %size_bytes61.i, align 4
  %252 = call i32 @llvm.bswap.i32(i32 %251) #10
  %253 = ptrtoint ptr %size_bytes63.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %size_bytes63.i, align 8
  %254 = ptrtoint ptr %start_addr65.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %add.ptr4.i, ptr %start_addr65.i, align 4
  br label %for.inc

sw.bb66.i:                                        ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version67.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %255 = ptrtoint ptr %fw_version67.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %fw_version67.i, align 4
  %257 = call i32 @llvm.bswap.i32(i32 %256) #10
  %258 = ptrtoint ptr %soc_drv.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %soc_drv.i, align 8
  %259 = ptrtoint ptr %fw_version67.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %fw_version67.i, align 4
  %261 = call i32 @llvm.bswap.i32(i32 %260) #10
  %262 = ptrtoint ptr %feature_version71.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %feature_version71.i, align 4
  %size_bytes72.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %263 = ptrtoint ptr %size_bytes72.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %size_bytes72.i, align 4
  %265 = call i32 @llvm.bswap.i32(i32 %264) #10
  %266 = ptrtoint ptr %size_bytes74.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %size_bytes74.i, align 8
  %267 = ptrtoint ptr %start_addr76.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %add.ptr4.i, ptr %start_addr76.i, align 4
  br label %for.inc

sw.bb77.i:                                        ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version78.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %268 = ptrtoint ptr %fw_version78.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %fw_version78.i, align 4
  %270 = call i32 @llvm.bswap.i32(i32 %269) #10
  %271 = ptrtoint ptr %intf_drv.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %intf_drv.i, align 8
  %272 = ptrtoint ptr %fw_version78.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %fw_version78.i, align 4
  %274 = call i32 @llvm.bswap.i32(i32 %273) #10
  %275 = ptrtoint ptr %feature_version82.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %feature_version82.i, align 4
  %size_bytes83.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %276 = ptrtoint ptr %size_bytes83.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %size_bytes83.i, align 4
  %278 = call i32 @llvm.bswap.i32(i32 %277) #10
  %279 = ptrtoint ptr %size_bytes85.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %size_bytes85.i, align 8
  %280 = ptrtoint ptr %start_addr87.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %add.ptr4.i, ptr %start_addr87.i, align 4
  br label %for.inc

sw.bb88.i:                                        ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version89.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 1
  %281 = ptrtoint ptr %fw_version89.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %fw_version89.i, align 4
  %283 = call i32 @llvm.bswap.i32(i32 %282) #10
  %284 = ptrtoint ptr %dbg_drv.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %dbg_drv.i, align 8
  %285 = ptrtoint ptr %fw_version89.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %fw_version89.i, align 4
  %287 = call i32 @llvm.bswap.i32(i32 %286) #10
  %288 = ptrtoint ptr %feature_version93.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %feature_version93.i, align 4
  %size_bytes94.i = getelementptr %struct.psp_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %fw_index.0252, i32 3
  %289 = ptrtoint ptr %size_bytes94.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %size_bytes94.i, align 4
  %291 = call i32 @llvm.bswap.i32(i32 %290) #10
  %292 = ptrtoint ptr %size_bytes96.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %size_bytes96.i, align 8
  %293 = ptrtoint ptr %start_addr98.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %add.ptr4.i, ptr %start_addr98.i, align 4
  br label %for.inc

do.end.i245:                                      ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %294 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %psp, align 8
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %297, ptr noundef nonnull @.str.84, i32 noundef %175) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end.i245, %sw.bb88.i, %sw.bb77.i, %sw.bb66.i, %sw.bb55.i, %sw.bb44.i, %sw.bb33.i, %sw.bb22.i, %sw.bb11.i, %sw.bb.i
  %inc = add nuw i32 %fw_index.0252, 1
  %298 = ptrtoint ptr %psp_fw_bin_count to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %psp_fw_bin_count, align 4
  %300 = call i32 @llvm.bswap.i32(i32 %299)
  %cmp145 = icmp ult i32 %inc, %300
  br i1 %cmp145, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end153:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %301 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %302, ptr noundef nonnull @.str.34) #13
  br label %do.end157

do.end157:                                        ; preds = %do.end153, %for.body.do.end157_crit_edge, %do.end141, %for.body.lr.ph.do.end157_crit_edge, %psp_init_sos_base_fw.exit, %if.end8.do.end157_crit_edge, %if.end.do.end157_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.do.end157_crit_edge ], [ %call11, %if.end8.do.end157_crit_edge ], [ -22, %do.end153 ], [ -22, %do.end141 ], [ -22, %psp_init_sos_base_fw.exit ], [ -22, %for.body.lr.ph.do.end157_crit_edge ], [ -22, %for.body.do.end157_crit_edge ]
  %303 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %304, ptr noundef nonnull @.str.37) #13
  %305 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %sos_fw, align 4
  call void @release_firmware(ptr noundef %306) #10
  %307 = ptrtoint ptr %sos_fw to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr null, ptr %sos_fw, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end157, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then82, %if.end76.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %do.end157 ], [ -22, %do.end ], [ 0, %if.end76.cleanup_crit_edge ], [ 0, %if.then82 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_psp_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psp_init_ta_microcode(ptr noundef %psp, ptr noundef %chip_name) local_unnamed_addr #0 align 64 {
entry:
  %fw_name = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fw_name) #10
  %2 = call ptr @memset(ptr %fw_name, i32 255, i32 36)
  %tobool.not = icmp eq ptr %chip_name, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.39) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 36, ptr noundef nonnull @.str.41, ptr noundef nonnull %chip_name)
  %ta_fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 30
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call5 = call i32 @request_firmware(ptr noundef %ta_fw, ptr noundef nonnull %fw_name, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.do.end41_crit_edge

if.end.do.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ta_fw, align 4
  %call11 = call i32 @amdgpu_ucode_validate(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.do.end41_crit_edge

if.end8.do.end41_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

if.end14:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ta_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %header_version_major, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %14)
  %cmp.not = icmp eq i16 %14, 512
  br i1 %cmp.not, label %if.end23, label %if.end14.do.end41.sink.split_crit_edge

if.end14.do.end41.sink.split_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.sink.split

if.end23:                                         ; preds = %if.end14
  %ta_fw_bin_count = getelementptr inbounds %struct.ta_firmware_header_v2_0, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %ta_fw_bin_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ta_fw_bin_count, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %17)
  %cmp24 = icmp ugt i32 %17, 12
  br i1 %cmp24, label %if.end23.do.end41.sink.split_crit_edge, label %for.cond.preheader

if.end23.do.end41.sink.split_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.sink.split

for.cond.preheader:                               ; preds = %if.end23
  %18 = ptrtoint ptr %ta_fw_bin_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ta_fw_bin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp3373.not = icmp eq i32 %19, 0
  br i1 %cmp3373.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool.not.i = icmp eq ptr %psp, null
  %.fr = freeze ptr %12
  %tobool3.not.i = icmp eq ptr %.fr, null
  %ucode_array_offset_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %.fr, i32 0, i32 8
  %bin_desc86.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 3
  %size_bytes92.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 3, i32 2
  %start_addr96.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 3, i32 3
  %bin_desc72.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 3
  %size_bytes78.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 3, i32 2
  %start_addr82.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 3, i32 3
  %bin_desc58.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 3
  %size_bytes64.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 3, i32 2
  %start_addr68.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 3, i32 3
  %bin_desc44.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 3
  %size_bytes50.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 3, i32 2
  %start_addr54.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 3, i32 3
  %bin_desc30.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 3
  %size_bytes36.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 3, i32 2
  %start_addr40.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 3, i32 3
  %bin_desc16.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 3
  %size_bytes22.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 3, i32 2
  %start_addr26.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 33, i32 0, i32 3, i32 3
  %bin_desc.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 32, i32 3
  %feature_version.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 32, i32 3, i32 1
  %size_bytes11.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 32, i32 3, i32 2
  %start_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 32, i32 3, i32 3
  %20 = or i1 %tobool3.not.i, %tobool.not.i
  br i1 %20, label %for.body.lr.ph.do.end41_crit_edge, label %for.body.lr.ph.for.body_crit_edge

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body.lr.ph.do.end41_crit_edge:                ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %ta_index.074 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.lr.ph.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074
  %tobool1.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool1.not.i, label %for.body.do.end41_crit_edge, label %if.end.i

for.body.do.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

if.end.i:                                         ; preds = %for.body
  %offset_bytes.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 2
  %21 = ptrtoint ptr %offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset_bytes.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #10
  %add.ptr.i = getelementptr i8, ptr %.fr, i32 %23
  %24 = ptrtoint ptr %ucode_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ucode_array_offset_bytes.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %28, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb14.i
    i32 3, label %sw.bb27.i
    i32 4, label %sw.bb41.i
    i32 5, label %sw.bb55.i
    i32 6, label %sw.bb69.i
    i32 7, label %sw.bb83.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 1
  %30 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw_version.i, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #10
  %33 = ptrtoint ptr %bin_desc.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %bin_desc.i, align 8
  %34 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_version.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #10
  %37 = ptrtoint ptr %feature_version.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %feature_version.i, align 4
  %size_bytes.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 3
  %38 = ptrtoint ptr %size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size_bytes.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #10
  %41 = ptrtoint ptr %size_bytes11.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %size_bytes11.i, align 8
  %42 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr4.i, ptr %start_addr.i, align 4
  br label %for.inc

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version15.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 1
  %43 = ptrtoint ptr %fw_version15.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fw_version15.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #10
  %46 = ptrtoint ptr %bin_desc16.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %bin_desc16.i, align 8
  %size_bytes18.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 3
  %47 = ptrtoint ptr %size_bytes18.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size_bytes18.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #10
  %50 = ptrtoint ptr %size_bytes22.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %size_bytes22.i, align 8
  %51 = ptrtoint ptr %start_addr26.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr4.i, ptr %start_addr26.i, align 4
  br label %for.inc

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version28.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 1
  %52 = ptrtoint ptr %fw_version28.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fw_version28.i, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #10
  %55 = ptrtoint ptr %bin_desc30.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %bin_desc30.i, align 8
  %size_bytes32.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 3
  %56 = ptrtoint ptr %size_bytes32.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size_bytes32.i, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = ptrtoint ptr %size_bytes36.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %size_bytes36.i, align 8
  %60 = ptrtoint ptr %start_addr40.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr4.i, ptr %start_addr40.i, align 4
  br label %for.inc

sw.bb41.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version42.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 1
  %61 = ptrtoint ptr %fw_version42.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fw_version42.i, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #10
  %64 = ptrtoint ptr %bin_desc44.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %bin_desc44.i, align 8
  %size_bytes46.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 3
  %65 = ptrtoint ptr %size_bytes46.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size_bytes46.i, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #10
  %68 = ptrtoint ptr %size_bytes50.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %size_bytes50.i, align 8
  %69 = ptrtoint ptr %start_addr54.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr4.i, ptr %start_addr54.i, align 4
  br label %for.inc

sw.bb55.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version56.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 1
  %70 = ptrtoint ptr %fw_version56.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fw_version56.i, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71) #10
  %73 = ptrtoint ptr %bin_desc58.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %bin_desc58.i, align 8
  %size_bytes60.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 3
  %74 = ptrtoint ptr %size_bytes60.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size_bytes60.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #10
  %77 = ptrtoint ptr %size_bytes64.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %size_bytes64.i, align 8
  %78 = ptrtoint ptr %start_addr68.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr4.i, ptr %start_addr68.i, align 4
  br label %for.inc

sw.bb69.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version70.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 1
  %79 = ptrtoint ptr %fw_version70.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fw_version70.i, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %80) #10
  %82 = ptrtoint ptr %bin_desc72.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %bin_desc72.i, align 8
  %size_bytes74.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 3
  %83 = ptrtoint ptr %size_bytes74.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size_bytes74.i, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #10
  %86 = ptrtoint ptr %size_bytes78.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %size_bytes78.i, align 8
  %87 = ptrtoint ptr %start_addr82.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr4.i, ptr %start_addr82.i, align 4
  br label %for.inc

sw.bb83.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version84.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 1
  %88 = ptrtoint ptr %fw_version84.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fw_version84.i, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #10
  %91 = ptrtoint ptr %bin_desc86.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %bin_desc86.i, align 8
  %size_bytes88.i = getelementptr %struct.ta_firmware_header_v2_0, ptr %.fr, i32 0, i32 2, i32 %ta_index.074, i32 3
  %92 = ptrtoint ptr %size_bytes88.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size_bytes88.i, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #10
  %95 = ptrtoint ptr %size_bytes92.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %size_bytes92.i, align 8
  %96 = ptrtoint ptr %start_addr96.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr4.i, ptr %start_addr96.i, align 4
  br label %for.inc

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %psp, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.86, i32 noundef %28) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end.i, %sw.bb83.i, %sw.bb69.i, %sw.bb55.i, %sw.bb41.i, %sw.bb27.i, %sw.bb14.i, %sw.bb.i
  %inc = add nuw i32 %ta_index.074, 1
  %101 = ptrtoint ptr %ta_fw_bin_count to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ta_fw_bin_count, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %cmp33 = icmp ult i32 %inc, %103
  br i1 %cmp33, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end41.sink.split:                              ; preds = %if.end23.do.end41.sink.split_crit_edge, %if.end14.do.end41.sink.split_crit_edge
  %.str.43.sink = phi ptr [ @.str.43, %if.end14.do.end41.sink.split_crit_edge ], [ @.str.46, %if.end23.do.end41.sink.split_crit_edge ]
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull %.str.43.sink) #13
  br label %do.end41

do.end41:                                         ; preds = %do.end41.sink.split, %for.body.do.end41_crit_edge, %for.body.lr.ph.do.end41_crit_edge, %if.end8.do.end41_crit_edge, %if.end.do.end41_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.do.end41_crit_edge ], [ %call11, %if.end8.do.end41_crit_edge ], [ -22, %for.body.lr.ph.do.end41_crit_edge ], [ -22, %do.end41.sink.split ], [ -22, %for.body.do.end41_crit_edge ]
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.49) #13
  %108 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ta_fw, align 4
  call void @release_firmware(ptr noundef %109) #10
  %110 = ptrtoint ptr %ta_fw to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %ta_fw, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %do.end41 ], [ -22, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psp_copy_fw(ptr nocapture noundef readonly %psp, ptr nocapture noundef readonly %start_addr, i32 noundef %bin_size) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #10
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !435
  %1 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %psp, align 8
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 2
  %call1 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #10
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_pri_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 6
  %3 = ptrtoint ptr %fw_pri_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_pri_buf, align 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 1048576)
  %6 = load ptr, ptr %fw_pri_buf, align 8
  %7 = call ptr @memcpy(ptr %6, ptr %start_addr, i32 %bin_size)
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @is_psp_fw_valid([4 x i32] %bin.coerce) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bin.coerce.fca.2.extract = extractvalue [4 x i32] %bin.coerce, 2
  ret i32 %bin.coerce.fca.2.extract
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %psp1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 14
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 589824, label %sw.bb
    i32 655360, label %entry.sw.bb3_crit_edge
    i32 655361, label %entry.sw.bb3_crit_edge35
    i32 720898, label %entry.sw.bb5_crit_edge
    i32 720900, label %entry.sw.bb5_crit_edge36
    i32 720896, label %entry.sw.bb7_crit_edge
    i32 720901, label %entry.sw.bb7_crit_edge37
    i32 720905, label %entry.sw.bb7_crit_edge38
    i32 720903, label %entry.sw.bb7_crit_edge39
    i32 720907, label %entry.sw.bb7_crit_edge40
    i32 722176, label %entry.sw.bb7_crit_edge41
    i32 720908, label %entry.sw.bb7_crit_edge42
    i32 720909, label %entry.sw.bb7_crit_edge43
    i32 720899, label %entry.sw.bb9_crit_edge
    i32 786433, label %entry.sw.bb9_crit_edge44
    i32 851970, label %sw.bb10
    i32 851969, label %entry.sw.bb11_crit_edge
    i32 851971, label %entry.sw.bb11_crit_edge45
    i32 720904, label %sw.bb13
  ]

entry.sw.bb11_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

entry.sw.bb9_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

entry.sw.bb7_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb5_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb3_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @psp_v3_1_set_psp_funcs(ptr noundef %psp1) #10
  %autoload_supported = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 28
  %3 = ptrtoint ptr %autoload_supported to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %autoload_supported, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge35
  tail call void @psp_v10_0_set_psp_funcs(ptr noundef %psp1) #10
  %autoload_supported4 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 28
  %4 = ptrtoint ptr %autoload_supported4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %autoload_supported4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge36
  tail call void @psp_v11_0_set_psp_funcs(ptr noundef %psp1) #10
  %autoload_supported6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 28
  %5 = ptrtoint ptr %autoload_supported6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %autoload_supported6, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge37, %entry.sw.bb7_crit_edge38, %entry.sw.bb7_crit_edge39, %entry.sw.bb7_crit_edge40, %entry.sw.bb7_crit_edge41, %entry.sw.bb7_crit_edge42, %entry.sw.bb7_crit_edge43
  tail call void @psp_v11_0_set_psp_funcs(ptr noundef %psp1) #10
  %autoload_supported8 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 28
  %6 = ptrtoint ptr %autoload_supported8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %autoload_supported8, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge44
  tail call void @psp_v12_0_set_psp_funcs(ptr noundef %psp1) #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @psp_v13_0_set_psp_funcs(ptr noundef %psp1) #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge45
  tail call void @psp_v13_0_set_psp_funcs(ptr noundef %psp1) #10
  %autoload_supported12 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 28
  %7 = ptrtoint ptr %autoload_supported12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %autoload_supported12, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 10
  %8 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %apu_flags, align 4
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb13.sw.epilog_crit_edge, label %if.then

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @psp_v11_0_8_set_psp_funcs(ptr noundef %psp1) #10
  %autoload_supported14 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 28
  %10 = ptrtoint ptr %autoload_supported14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %autoload_supported14, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb13.sw.epilog_crit_edge, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %11 = ptrtoint ptr %psp1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %handle, ptr %psp1, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %12 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.psp_check_pmfw_centralized_cstate_management.exit_crit_edge

sw.epilog.psp_check_pmfw_centralized_cstate_management.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i:                                         ; preds = %sw.epilog
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %15, label %sw.default.i [
    i32 720896, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge
    i32 720900, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge46
    i32 720901, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge47
    i32 720903, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge48
    i32 720905, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge49
    i32 720907, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge50
    i32 720908, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge51
    i32 720909, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge52
    i32 851970, label %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge53
  ]

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge53: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge52: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge51: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge50: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge49: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge48: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge47: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge46: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_check_pmfw_centralized_cstate_management.exit

psp_check_pmfw_centralized_cstate_management.exit: ; preds = %sw.default.i, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge46, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge47, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge48, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge49, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge50, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge51, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge52, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge53, %sw.epilog.psp_check_pmfw_centralized_cstate_management.exit_crit_edge
  %.sink.i = phi i8 [ 0, %sw.default.i ], [ 0, %sw.epilog.psp_check_pmfw_centralized_cstate_management.exit_crit_edge ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge46 ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge47 ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge48 ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge49 ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge50 ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge51 ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge52 ], [ 1, %if.end.i.psp_check_pmfw_centralized_cstate_management.exit_crit_edge53 ]
  %pmfw_centralized_cstate_management3.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 29
  %17 = ptrtoint ptr %pmfw_centralized_cstate_management3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink.i, ptr %pmfw_centralized_cstate_management3.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %psp_check_pmfw_centralized_cstate_management.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %psp_check_pmfw_centralized_cstate_management.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  %db_header.i = alloca %struct.psp_runtime_data_header, align 4
  %db_dir.i = alloca %struct.psp_runtime_data_directory, align 4
  %boot_cfg_entry = alloca %struct.psp_runtime_boot_cfg_entry, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %psp1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %boot_cfg_entry) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1024) #14
  %cmd = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %cmd, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.88) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true

if.then4:                                         ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 3
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then4.if.end23_crit_edge, label %cond.end

if.then4.if.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

cond.end:                                         ; preds = %if.then4
  %call8 = tail call i32 %7(ptr noundef %psp1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cond.end.if.end23_crit_edge, label %if.then10

cond.end.if.end23_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then10:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.89) #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %9)
  %cmp = icmp eq i32 %9, 851970
  br i1 %cmp, label %if.then17, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then17:                                        ; preds = %land.lhs.true
  %call18 = tail call i32 @psp_init_ta_microcode(ptr noundef %psp1, ptr noundef nonnull @.str.90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end23_crit_edge, label %if.then20

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.91) #10
  br label %cleanup

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %cond.end.if.end23_crit_edge, %if.then4.if.end23_crit_edge
  %10 = ptrtoint ptr %boot_cfg_entry to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %boot_cfg_entry, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %db_header.i) #10
  %11 = ptrtoint ptr %db_header.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %db_header.i, align 4
  call void @llvm.lifetime.start.p0(i64 516, ptr nonnull %db_dir.i) #10
  %12 = call ptr @memset(ptr %db_dir.i, i32 0, i32 516)
  %mc_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 2
  %13 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mc_vram_size.i, align 8
  %sub.i = add i64 %14, -1048576
  call void @amdgpu_device_vram_access(ptr noundef %handle, i64 noundef %sub.i, ptr noundef nonnull %db_header.i, i32 noundef 4, i1 noundef zeroext false) #10
  %15 = ptrtoint ptr %db_header.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %db_header.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3797, i16 %16)
  %cmp.not.i = icmp eq i16 %16, 3797
  br i1 %cmp.not.i, label %if.end.i, label %if.end23.if.else32.sink.split_crit_edge

if.end23.if.else32.sink.split_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32.sink.split

if.end.i:                                         ; preds = %if.end23
  %add.i = add i64 %14, -1048572
  call void @amdgpu_device_vram_access(ptr noundef %handle, i64 noundef %add.i, ptr noundef nonnull %db_dir.i, i32 noundef 516, i1 noundef zeroext false) #10
  %17 = ptrtoint ptr %db_dir.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %db_dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %18)
  %cmp3.i = icmp ugt i16 %18, 63
  br i1 %cmp3.i, label %if.end.i.if.else32.sink.split_crit_edge, label %for.cond.preheader.i

if.end.i.if.else32.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32.sink.split

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp134.i = icmp eq i16 %18, 0
  br i1 %cmp134.i, label %for.cond.preheader.i.if.else32_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.if.else32_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %conv12.i = zext i16 %18 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.06.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.psp_runtime_data_directory, ptr %db_dir.i, i32 0, i32 1, i32 %i.06.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp16.i = icmp eq i32 %20, 5
  br i1 %cmp16.i, label %sw.bb.i, label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  %size.i = getelementptr %struct.psp_runtime_data_directory, ptr %db_dir.i, i32 0, i32 1, i32 %i.06.i, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %22)
  %cmp22.i = icmp ult i16 %22, 8
  br i1 %cmp22.i, label %sw.bb.i.if.else32.sink.split_crit_edge, label %if.then25

sw.bb.i.if.else32.sink.split_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32.sink.split

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %conv12.i
  br i1 %exitcond.not, label %for.inc.i.if.else32_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.else32_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32

if.then25:                                        ; preds = %sw.bb.i
  %offset.i = getelementptr %struct.psp_runtime_data_directory, ptr %db_dir.i, i32 0, i32 1, i32 %i.06.i, i32 1
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %offset.i, align 4
  %conv32.i = zext i16 %24 to i64
  %add33.i = add i64 %sub.i, %conv32.i
  call void @amdgpu_device_vram_access(ptr noundef %handle, i64 noundef %add33.i, ptr noundef nonnull %boot_cfg_entry, i32 noundef 8, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 516, ptr nonnull %db_dir.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %db_header.i) #10
  %25 = ptrtoint ptr %boot_cfg_entry to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %boot_cfg_entry, align 8
  %boot_cfg_bitmask26 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 41
  %27 = ptrtoint ptr %boot_cfg_bitmask26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %boot_cfg_bitmask26, align 8
  %and28 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then25.if.end34_crit_edge, label %if.then25.if.end34.sink.split_crit_edge

if.then25.if.end34.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else32.sink.split:                             ; preds = %sw.bb.i.if.else32.sink.split_crit_edge, %if.end.i.if.else32.sink.split_crit_edge, %if.end23.if.else32.sink.split_crit_edge
  %.str.94.sink = phi ptr [ @.str.94, %if.end23.if.else32.sink.split_crit_edge ], [ @.str.97, %if.end.i.if.else32.sink.split_crit_edge ], [ @.str.100, %sw.bb.i.if.else32.sink.split_crit_edge ]
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull %.str.94.sink) #13
  br label %if.else32

if.else32:                                        ; preds = %if.else32.sink.split, %for.inc.i.if.else32_crit_edge, %for.cond.preheader.i.if.else32_crit_edge
  call void @llvm.lifetime.end.p0(i64 516, ptr nonnull %db_dir.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %db_header.i) #10
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.else32, %if.then25.if.end34.sink.split_crit_edge
  %enable_mem_training = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 7
  %30 = ptrtoint ptr %enable_mem_training to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %enable_mem_training, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.then25.if.end34_crit_edge
  %enable_mem_training35 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 7
  %31 = ptrtoint ptr %enable_mem_training35 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enable_mem_training35, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool36.not = icmp eq i8 %32, 0
  br i1 %tobool36.not, label %if.end34.if.end54_crit_edge, label %if.then37

if.end34.if.end54_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then37:                                        ; preds = %if.end34
  %mem_train_ctx.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40
  %init.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 5
  %33 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %init.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp.not.i105 = icmp eq i32 %34, 4
  br i1 %cmp.not.i105, label %if.end8.i.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.102) #10
  br label %if.end41

if.end8.i.i.i:                                    ; preds = %if.then37
  %35 = ptrtoint ptr %mem_train_ctx.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %mem_train_ctx.i, align 8
  %conv.i = trunc i64 %36 to i32
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i, i32 noundef 3520) #15
  %sys_cache.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 1
  %37 = ptrtoint ptr %sys_cache.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i.i.i, ptr %sys_cache.i, align 8
  %cmp2.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp2.i, label %if.then40, label %if.end5.i

if.end5.i:                                        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %mem_train_ctx.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %mem_train_ctx.i, align 8
  %p2c_train_data_offset.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 2
  %40 = ptrtoint ptr %p2c_train_data_offset.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %p2c_train_data_offset.i, align 8
  %c2p_train_data_offset.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 3
  %42 = ptrtoint ptr %c2p_train_data_offset.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %c2p_train_data_offset.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.104, i64 noundef %39, i64 noundef %41, i64 noundef %43) #10
  %44 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %init.i, align 4
  br label %if.end41

if.then40:                                        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.103) #10
  %45 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %init.i, align 4
  %46 = ptrtoint ptr %sys_cache.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sys_cache.i, align 8
  call void @kfree(ptr noundef %47) #10
  %48 = ptrtoint ptr %sys_cache.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %sys_cache.i, align 8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.92) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end5.i, %if.then.i
  %funcs42 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 3
  %49 = ptrtoint ptr %funcs42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs42, align 4
  %mem_training = getelementptr inbounds %struct.psp_funcs, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %mem_training to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem_training, align 4
  %tobool43.not = icmp eq ptr %52, null
  br i1 %tobool43.not, label %if.end41.if.end54_crit_edge, label %cond.end49

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

cond.end49:                                       ; preds = %if.end41
  %call47 = call i32 %52(ptr noundef %psp1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool51.not = icmp eq i32 %call47, 0
  br i1 %tobool51.not, label %cond.end49.if.end54_crit_edge, label %if.then52

cond.end49.if.end54_crit_edge:                    ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then52:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.93) #10
  br label %cleanup

if.end54:                                         ; preds = %cond.end49.if.end54_crit_edge, %if.end41.if.end54_crit_edge, %if.end34.if.end54_crit_edge
  %arrayidx56 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 14
  %53 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx56, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %54, label %if.end54.cleanup_crit_edge [
    i32 720896, label %if.end54.if.then63_crit_edge
    i32 720903, label %if.end54.if.then63_crit_edge123
  ]

if.end54.if.then63_crit_edge123:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

if.end54.if.then63_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then63:                                        ; preds = %if.end54.if.then63_crit_edge, %if.end54.if.then63_crit_edge123
  %56 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle, align 8
  %call.i = call i32 @device_create_file(ptr noundef %57, ptr noundef nonnull @dev_attr_usbc_pd_fw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then63.cleanup_crit_edge, label %psp_sysfs_init.exit

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

psp_sysfs_init.exit:                              ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.105) #10
  br label %cleanup

cleanup:                                          ; preds = %psp_sysfs_init.exit, %if.then63.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.then52, %if.then40, %if.then20, %if.then10
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ -12, %if.then40 ], [ %call47, %if.then52 ], [ %call8, %if.then10 ], [ %call.i, %psp_sysfs_init.exit ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %if.then63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %boot_cfg_entry) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_sw_fini(ptr nocapture noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd2 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %0 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd2, align 8
  %init.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 5
  %2 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %init.i, align 4
  %sys_cache.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 1
  %3 = ptrtoint ptr %sys_cache.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sys_cache.i, align 8
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %sys_cache.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sys_cache.i, align 8
  %sos_fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 7
  %6 = ptrtoint ptr %sos_fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sos_fw, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_firmware(ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %sos_fw to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sos_fw, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %asd_fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 19
  %9 = ptrtoint ptr %asd_fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asd_fw, align 8
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_firmware(ptr noundef nonnull %10) #10
  %11 = ptrtoint ptr %asd_fw to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %asd_fw, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %ta_fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 30
  %12 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ta_fw, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @release_firmware(ptr noundef nonnull %13) #10
  %14 = ptrtoint ptr %ta_fw to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ta_fw, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %16, label %if.end14.if.end21_crit_edge [
    i32 720896, label %if.end14.if.then20_crit_edge
    i32 720903, label %if.end14.if.then20_crit_edge38
  ]

if.end14.if.then20_crit_edge38:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end14.if.then20_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.end14.if.then20_crit_edge, %if.end14.if.then20_crit_edge38
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle, align 8
  tail call void @device_remove_file(ptr noundef %19, ptr noundef nonnull @dev_attr_usbc_pd_fw) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end14.if.end21_crit_edge
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = tail call i32 @amdgpu_ucode_init_bo(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.failed_crit_edge

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end:                                           ; preds = %entry
  %psp1.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %in_gpu_reset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 141
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %in_gpu_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 3
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %ring_stop.i = getelementptr inbounds %struct.psp_funcs, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ring_stop.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_stop.i, align 4
  %call3.i = tail call i32 %7(ptr noundef %psp1.i, i32 noundef 2) #10
  br label %skip_memalloc.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt.i, align 8
  %and6.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %fw_pri_bo10.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 4
  %fw_pri_mc_addr11.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 5
  %fw_pri_buf12.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 6
  %..i = select i1 %tobool7.not.i, i32 2, i32 4
  %call13.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %handle, i32 noundef 1048576, i32 noundef 1048576, i32 noundef %..i, ptr noundef %fw_pri_bo10.i, ptr noundef %fw_pri_mc_addr11.i, ptr noundef %fw_pri_buf12.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool15.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end.i.if.then3_crit_edge

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end17.i:                                       ; preds = %if.end.i
  %fence_buf_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 21
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %fence_buf.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 23
  %call18.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %handle, i32 noundef 4096, i32 noundef 4096, i32 noundef 4, ptr noundef %fence_buf_bo.i, ptr noundef %fence_buf_mc_addr.i, ptr noundef %fence_buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.if.then3_crit_edge

if.end17.i.if.then3_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end21.i:                                       ; preds = %if.end17.i
  %cmd_buf_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 24
  %cmd_buf_mc_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 25
  %cmd_buf_mem.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 26
  %call22.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %handle, i32 noundef 4096, i32 noundef 4096, i32 noundef 4, ptr noundef %cmd_buf_bo.i, ptr noundef %cmd_buf_mc_addr.i, ptr noundef %cmd_buf_mem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.if.then3_crit_edge

if.end21.i.if.then3_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end25.i:                                       ; preds = %if.end21.i
  %10 = ptrtoint ptr %fence_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fence_buf.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 4096)
  %funcs27.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 3
  %13 = ptrtoint ptr %funcs27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs27.i, align 4
  %ring_init.i = getelementptr inbounds %struct.psp_funcs, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %ring_init.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_init.i, align 4
  %call28.i = tail call i32 %16(ptr noundef %psp1.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end25.i.skip_memalloc.i_crit_edge, label %if.end25.i.if.then3.sink.split_crit_edge

if.end25.i.if.then3.sink.split_crit_edge:         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.sink.split

if.end25.i.skip_memalloc.i_crit_edge:             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_memalloc.i

skip_memalloc.i:                                  ; preds = %if.end25.i.skip_memalloc.i_crit_edge, %if.then.i
  %call32.i = tail call fastcc i32 @psp_hw_start(ptr noundef %psp1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %skip_memalloc.i.if.then3_crit_edge

skip_memalloc.i.if.then3_crit_edge:               ; preds = %skip_memalloc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end35.i:                                       ; preds = %skip_memalloc.i
  %call36.i = tail call fastcc i32 @psp_load_non_psp_fw(ptr noundef %psp1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end35.i.if.then3_crit_edge

if.end35.i.if.then3_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end39.i:                                       ; preds = %if.end35.i
  %17 = ptrtoint ptr %psp1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %psp1.i, align 8
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %18, i32 0, i32 132
  %19 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virt.i.i, align 8
  %and.i.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end39.i.if.end43.i_crit_edge

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

lor.lhs.false.i.i:                                ; preds = %if.end39.i
  %asd_context.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32
  %size_bytes.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 3, i32 2
  %21 = ptrtoint ptr %size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.end43.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end43.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %shared_mc_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 2, i32 1
  %23 = ptrtoint ptr %shared_mc_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %shared_mc_addr.i.i, align 8
  %shared_mem_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 2, i32 3
  %24 = ptrtoint ptr %shared_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %shared_mem_size.i.i, align 4
  %ta_load_type.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 4
  %25 = ptrtoint ptr %ta_load_type.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %ta_load_type.i.i, align 8
  %call.i.i.i = tail call fastcc i32 @psp_ta_load(ptr noundef %psp1.i, ptr noundef %asd_context.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end.i.i.if.then3.sink.split_crit_edge

if.end.i.i.if.then3.sink.split_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.sink.split

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %asd_context.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %asd_context.i.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then7.i.i, %lor.lhs.false.i.i.if.end43.i_crit_edge, %if.end39.i.if.end43.i_crit_edge
  %call44.i = tail call fastcc i32 @psp_rl_load(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end43.i.if.then3.sink.split_crit_edge

if.end43.i.if.then3.sink.split_crit_edge:         ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.sink.split

if.end47.i:                                       ; preds = %if.end43.i
  %27 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %virt.i, align 8
  %and50.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end47.i.if.end63.i_crit_edge, label %land.lhs.true52.i

if.end47.i.if.end63.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.lhs.true52.i:                                ; preds = %if.end47.i
  %in_gpu_reset.i172.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 141
  %call.i.i.i173.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i172.i, i32 noundef 4) #10
  %29 = ptrtoint ptr %in_gpu_reset.i172.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %in_gpu_reset.i172.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool54.not.i = icmp eq i32 %30, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.if.end63.i_crit_edge, label %if.then55.i

land.lhs.true52.i.if.end63.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then55.i:                                      ; preds = %land.lhs.true52.i
  %num_physical_nodes.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 4
  %31 = ptrtoint ptr %num_physical_nodes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_physical_nodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i = icmp ugt i32 %32, 1
  br i1 %cmp.i, label %if.then56.i, label %if.then55.i.if.end63.i_crit_edge

if.then55.i.if.end63.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then56.i:                                      ; preds = %if.then55.i
  %call57.i = tail call i32 @psp_xgmi_initialize(ptr noundef %psp1.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then56.i.if.end63.i_crit_edge, label %do.end.i

if.then56.i.if.end63.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

do.end.i:                                         ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %psp1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %psp1.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.118) #13
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end.i, %if.then56.i.if.end63.i_crit_edge, %if.then55.i.if.end63.i_crit_edge, %land.lhs.true52.i.if.end63.i_crit_edge, %if.end47.i.if.end63.i_crit_edge
  %ta_fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 30
  %37 = ptrtoint ptr %ta_fw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ta_fw.i, align 4
  %tobool64.not.i = icmp eq ptr %38, null
  br i1 %tobool64.not.i, label %if.end63.i.cleanup_crit_edge, label %if.then65.i

if.end63.i.cleanup_crit_edge:                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then65.i:                                      ; preds = %if.end63.i
  %call66.i = tail call fastcc i32 @psp_ras_initialize(ptr noundef %psp1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.then65.i.if.end74.i_crit_edge, label %do.end71.i

if.then65.i.if.end74.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

do.end71.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %psp1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %psp1.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.121) #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end71.i, %if.then65.i.if.end74.i_crit_edge
  %call75.i = tail call fastcc i32 @psp_hdcp_initialize(ptr noundef %psp1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end74.i.if.end83.i_crit_edge, label %do.end80.i

if.end74.i.if.end83.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

do.end80.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %psp1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %psp1.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.124) #13
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end80.i, %if.end74.i.if.end83.i_crit_edge
  %call84.i = tail call fastcc i32 @psp_dtm_initialize(ptr noundef %psp1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %if.end83.i.if.end92.i_crit_edge, label %do.end89.i

if.end83.i.if.end92.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

do.end89.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %psp1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %psp1.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.127) #13
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end89.i, %if.end83.i.if.end92.i_crit_edge
  %call93.i = tail call fastcc i32 @psp_rap_initialize(ptr noundef %psp1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %if.end92.i.if.end101.i_crit_edge, label %do.end98.i

if.end92.i.if.end101.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101.i

do.end98.i:                                       ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %psp1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %psp1.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.130) #13
  br label %if.end101.i

if.end101.i:                                      ; preds = %do.end98.i, %if.end92.i.if.end101.i_crit_edge
  %call102.i = tail call fastcc i32 @psp_securedisplay_initialize(ptr noundef %psp1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.end101.i.cleanup_crit_edge, label %do.end107.i

if.end101.i.cleanup_crit_edge:                    ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end107.i:                                      ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %psp1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %psp1.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.133) #13
  br label %cleanup

if.then3.sink.split:                              ; preds = %if.end43.i.if.then3.sink.split_crit_edge, %if.end.i.i.if.then3.sink.split_crit_edge, %if.end25.i.if.then3.sink.split_crit_edge
  %.str.116.sink = phi ptr [ @.str.115, %if.end25.i.if.then3.sink.split_crit_edge ], [ @.str.116, %if.end.i.i.if.then3.sink.split_crit_edge ], [ @.str.117, %if.end43.i.if.then3.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.116.sink) #10
  br label %if.then3

if.then3:                                         ; preds = %if.then3.sink.split, %if.end35.i.if.then3_crit_edge, %skip_memalloc.i.if.then3_crit_edge, %if.end21.i.if.then3_crit_edge, %if.end17.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.114) #10
  br label %failed

failed:                                           ; preds = %if.then3, %entry.failed_crit_edge
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 1
  %59 = ptrtoint ptr %load_type to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %load_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %failed, %do.end107.i, %if.end101.i.cleanup_crit_edge, %if.end63.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %failed ], [ 0, %do.end107.i ], [ 0, %if.end101.i.cleanup_crit_edge ], [ 0, %if.end63.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %psp1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113
  %ta_fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 30
  %0 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ta_fw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psp1, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 132
  %4 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.psp_ras_terminate.exit_crit_edge

if.then.psp_ras_terminate.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_ras_terminate.exit

if.end.i:                                         ; preds = %if.then
  %ras_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34
  %6 = ptrtoint ptr %ras_context.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ras_context.i, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.psp_ras_terminate.exit_crit_edge, label %if.end3.i

if.end.i.psp_ras_terminate.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_ras_terminate.exit

if.end3.i:                                        ; preds = %if.end.i
  %cmd1.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %8 = ptrtoint ptr %cmd1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd1.i.i.i.i, align 8
  %mutex.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i.i, i32 noundef 0) #10
  %10 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %session_id.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 0, i32 1
  %11 = ptrtoint ptr %session_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %session_id.i.i.i, align 4
  %cmd_id.i.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %cmd_id.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %cmd_id.i.i.i.i, align 4
  %cmd1.i6.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %cmd1.i6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %cmd1.i6.i.i.i, align 4
  %fence_buf_mc_addr.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %15 = ptrtoint ptr %fence_buf_mc_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fence_buf_mc_addr.i.i.i, align 8
  %call1.i.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %9, i64 noundef %16) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.psp_ras_terminate.exit_crit_edge

if.end3.i.psp_ras_terminate.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_ras_terminate.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %ras_context.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ras_context.i, align 8
  %mem_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 0, i32 2
  %shared_mc_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 0, i32 2, i32 1
  %shared_buf.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context.i, ptr noundef %shared_mc_addr.i.i, ptr noundef %shared_buf.i.i) #10
  br label %psp_ras_terminate.exit

psp_ras_terminate.exit:                           ; preds = %if.end6.i, %if.end3.i.psp_ras_terminate.exit_crit_edge, %if.end.i.psp_ras_terminate.exit_crit_edge, %if.then.psp_ras_terminate.exit_crit_edge
  %18 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %psp1, align 8
  %virt.i27 = getelementptr inbounds %struct.amdgpu_device, ptr %19, i32 0, i32 132
  %20 = ptrtoint ptr %virt.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i27, align 8
  %and.i28 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %if.end.i31, label %psp_ras_terminate.exit.psp_securedisplay_terminate.exit_crit_edge

psp_ras_terminate.exit.psp_securedisplay_terminate.exit_crit_edge: ; preds = %psp_ras_terminate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_securedisplay_terminate.exit

if.end.i31:                                       ; preds = %psp_ras_terminate.exit
  %securedisplay_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 38
  %22 = ptrtoint ptr %securedisplay_context.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %securedisplay_context.i, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i30 = icmp eq i8 %23, 0
  br i1 %tobool1.not.i30, label %if.end.i31.psp_securedisplay_terminate.exit_crit_edge, label %if.end3.i40

if.end.i31.psp_securedisplay_terminate.exit_crit_edge: ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_securedisplay_terminate.exit

if.end3.i40:                                      ; preds = %if.end.i31
  %cmd1.i.i.i.i32 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %24 = ptrtoint ptr %cmd1.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd1.i.i.i.i32, align 8
  %mutex.i.i.i.i33 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i.i33, i32 noundef 0) #10
  %26 = call ptr @memset(ptr %25, i32 0, i32 1024)
  %session_id.i.i.i34 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 38, i32 0, i32 1
  %27 = ptrtoint ptr %session_id.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %session_id.i.i.i34, align 4
  %cmd_id.i.i.i.i35 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %25, i32 0, i32 2
  %29 = ptrtoint ptr %cmd_id.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %cmd_id.i.i.i.i35, align 4
  %cmd1.i6.i.i.i36 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %25, i32 0, i32 7
  %30 = ptrtoint ptr %cmd1.i6.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %cmd1.i6.i.i.i36, align 4
  %fence_buf_mc_addr.i.i.i37 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %31 = ptrtoint ptr %fence_buf_mc_addr.i.i.i37 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %fence_buf_mc_addr.i.i.i37, align 8
  %call1.i.i.i38 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %25, i64 noundef %32) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i.i33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i38)
  %tobool4.not.i39 = icmp eq i32 %call1.i.i.i38, 0
  br i1 %tobool4.not.i39, label %if.end6.i44, label %if.end3.i40.psp_securedisplay_terminate.exit_crit_edge

if.end3.i40.psp_securedisplay_terminate.exit_crit_edge: ; preds = %if.end3.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_securedisplay_terminate.exit

if.end6.i44:                                      ; preds = %if.end3.i40
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %securedisplay_context.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %securedisplay_context.i, align 8
  %mem_context.i41 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 38, i32 0, i32 2
  %shared_mc_addr.i.i42 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 38, i32 0, i32 2, i32 1
  %shared_buf.i.i43 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 38, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context.i41, ptr noundef %shared_mc_addr.i.i42, ptr noundef %shared_buf.i.i43) #10
  br label %psp_securedisplay_terminate.exit

psp_securedisplay_terminate.exit:                 ; preds = %if.end6.i44, %if.end3.i40.psp_securedisplay_terminate.exit_crit_edge, %if.end.i31.psp_securedisplay_terminate.exit_crit_edge, %psp_ras_terminate.exit.psp_securedisplay_terminate.exit_crit_edge
  %rap_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37
  %34 = ptrtoint ptr %rap_context.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rap_context.i, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i46 = icmp eq i8 %35, 0
  br i1 %tobool.not.i46, label %psp_securedisplay_terminate.exit.psp_rap_terminate.exit_crit_edge, label %if.end.i57

psp_securedisplay_terminate.exit.psp_rap_terminate.exit_crit_edge: ; preds = %psp_securedisplay_terminate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_rap_terminate.exit

if.end.i57:                                       ; preds = %psp_securedisplay_terminate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cmd1.i.i.i.i47 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %36 = ptrtoint ptr %cmd1.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd1.i.i.i.i47, align 8
  %mutex.i.i.i.i48 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i.i48, i32 noundef 0) #10
  %38 = call ptr @memset(ptr %37, i32 0, i32 1024)
  %session_id.i.i.i49 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37, i32 0, i32 1
  %39 = ptrtoint ptr %session_id.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %session_id.i.i.i49, align 4
  %cmd_id.i.i.i.i50 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %37, i32 0, i32 2
  %41 = ptrtoint ptr %cmd_id.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %cmd_id.i.i.i.i50, align 4
  %cmd1.i6.i.i.i51 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %37, i32 0, i32 7
  %42 = ptrtoint ptr %cmd1.i6.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %cmd1.i6.i.i.i51, align 4
  %fence_buf_mc_addr.i.i.i52 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %43 = ptrtoint ptr %fence_buf_mc_addr.i.i.i52 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %fence_buf_mc_addr.i.i.i52, align 8
  %call1.i.i.i53 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %37, i64 noundef %44) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i.i48) #10
  %45 = ptrtoint ptr %rap_context.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %rap_context.i, align 8
  %mem_context.i54 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37, i32 0, i32 2
  %shared_mc_addr.i.i55 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37, i32 0, i32 2, i32 1
  %shared_buf.i.i56 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context.i54, ptr noundef %shared_mc_addr.i.i55, ptr noundef %shared_buf.i.i56) #10
  br label %psp_rap_terminate.exit

psp_rap_terminate.exit:                           ; preds = %if.end.i57, %psp_securedisplay_terminate.exit.psp_rap_terminate.exit_crit_edge
  %call4 = tail call fastcc i32 @psp_dtm_terminate(ptr noundef %psp1)
  %call5 = tail call fastcc i32 @psp_hdcp_terminate(ptr noundef %psp1)
  br label %if.end

if.end:                                           ; preds = %psp_rap_terminate.exit, %entry.if.end_crit_edge
  %46 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %psp1, align 8
  %virt.i59 = getelementptr inbounds %struct.amdgpu_device, ptr %47, i32 0, i32 132
  %48 = ptrtoint ptr %virt.i59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %virt.i59, align 8
  %and.i60 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61, label %if.end.i63, label %if.end.psp_asd_terminate.exit_crit_edge

if.end.psp_asd_terminate.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_asd_terminate.exit

if.end.i63:                                       ; preds = %if.end
  %asd_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32
  %50 = ptrtoint ptr %asd_context.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %asd_context.i, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.i62 = icmp eq i8 %51, 0
  br i1 %tobool1.not.i62, label %if.end.i63.psp_asd_terminate.exit_crit_edge, label %if.end3.i72

if.end.i63.psp_asd_terminate.exit_crit_edge:      ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_asd_terminate.exit

if.end3.i72:                                      ; preds = %if.end.i63
  %cmd1.i.i.i.i64 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %52 = ptrtoint ptr %cmd1.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cmd1.i.i.i.i64, align 8
  %mutex.i.i.i.i65 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i.i65, i32 noundef 0) #10
  %54 = call ptr @memset(ptr %53, i32 0, i32 1024)
  %session_id.i.i.i66 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 1
  %55 = ptrtoint ptr %session_id.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %session_id.i.i.i66, align 4
  %cmd_id.i.i.i.i67 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %53, i32 0, i32 2
  %57 = ptrtoint ptr %cmd_id.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %cmd_id.i.i.i.i67, align 4
  %cmd1.i6.i.i.i68 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %53, i32 0, i32 7
  %58 = ptrtoint ptr %cmd1.i6.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %56, ptr %cmd1.i6.i.i.i68, align 4
  %fence_buf_mc_addr.i.i.i69 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %59 = ptrtoint ptr %fence_buf_mc_addr.i.i.i69 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %fence_buf_mc_addr.i.i.i69, align 8
  %call1.i.i.i70 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %53, i64 noundef %60) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i.i65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i70)
  %tobool4.not.i71 = icmp eq i32 %call1.i.i.i70, 0
  br i1 %tobool4.not.i71, label %if.then5.i, label %if.end3.i72.psp_asd_terminate.exit_crit_edge

if.end3.i72.psp_asd_terminate.exit_crit_edge:     ; preds = %if.end3.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_asd_terminate.exit

if.then5.i:                                       ; preds = %if.end3.i72
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %asd_context.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %asd_context.i, align 8
  br label %psp_asd_terminate.exit

psp_asd_terminate.exit:                           ; preds = %if.then5.i, %if.end3.i72.psp_asd_terminate.exit_crit_edge, %if.end.i63.psp_asd_terminate.exit_crit_edge, %if.end.psp_asd_terminate.exit_crit_edge
  %call7 = tail call fastcc i32 @psp_tmr_terminate(ptr noundef %psp1)
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 3
  %62 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs, align 4
  %ring_destroy = getelementptr inbounds %struct.psp_funcs, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %ring_destroy to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring_destroy, align 4
  %call8 = tail call i32 %65(ptr noundef %psp1, i32 noundef 2) #10
  %fw_pri_bo = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 4
  %fw_pri_mc_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 5
  %fw_pri_buf = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 6
  tail call void @amdgpu_bo_free_kernel(ptr noundef %fw_pri_bo, ptr noundef %fw_pri_mc_addr, ptr noundef %fw_pri_buf) #10
  %fence_buf_bo = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 21
  %fence_buf_mc_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %fence_buf = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 23
  tail call void @amdgpu_bo_free_kernel(ptr noundef %fence_buf_bo, ptr noundef %fence_buf_mc_addr, ptr noundef %fence_buf) #10
  %cmd_buf_bo = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 24
  %cmd_buf_mc_addr = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 25
  %cmd_buf_mem = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 26
  tail call void @amdgpu_bo_free_kernel(ptr noundef %cmd_buf_bo, ptr noundef %cmd_buf_mc_addr, ptr noundef %cmd_buf_mem) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %psp1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 4
  %0 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %xgmi_context = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 33
  %2 = ptrtoint ptr %xgmi_context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xgmi_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end4_crit_edge, label %if.then

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @psp_xgmi_terminate(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ta_fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 30
  %4 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ta_fw, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.if.end27_crit_edge, label %if.then6

if.end4.if.end27_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then6:                                         ; preds = %if.end4
  %6 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psp1, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 132
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end.i:                                         ; preds = %if.then6
  %ras_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34
  %10 = ptrtoint ptr %ras_context.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ras_context.i, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end10_crit_edge, label %if.end3.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end3.i:                                        ; preds = %if.end.i
  %cmd1.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %12 = ptrtoint ptr %cmd1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd1.i.i.i.i, align 8
  %mutex.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i.i, i32 noundef 0) #10
  %14 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %session_id.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 0, i32 1
  %15 = ptrtoint ptr %session_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %session_id.i.i.i, align 4
  %cmd_id.i.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %cmd_id.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %cmd_id.i.i.i.i, align 4
  %cmd1.i6.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %cmd1.i6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %cmd1.i6.i.i.i, align 4
  %fence_buf_mc_addr.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %19 = ptrtoint ptr %fence_buf_mc_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %fence_buf_mc_addr.i.i.i, align 8
  %call1.i.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %13, i64 noundef %20) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.cleanup.sink.split_crit_edge

if.end3.i.cleanup.sink.split_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %ras_context.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ras_context.i, align 8
  %mem_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 0, i32 2
  %shared_mc_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 0, i32 2, i32 1
  %shared_buf.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 34, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context.i, ptr noundef %shared_mc_addr.i.i, ptr noundef %shared_buf.i.i) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end6.i, %if.end.i.if.end10_crit_edge, %if.then6.if.end10_crit_edge
  %call11 = tail call fastcc i32 @psp_hdcp_terminate(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc i32 @psp_dtm_terminate(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end14
  %rap_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37
  %22 = ptrtoint ptr %rap_context.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rap_context.i, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i71 = icmp eq i8 %23, 0
  br i1 %tobool.not.i71, label %if.end18.if.end22_crit_edge, label %psp_rap_terminate.exit

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

psp_rap_terminate.exit:                           ; preds = %if.end18
  %cmd1.i.i.i.i72 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %24 = ptrtoint ptr %cmd1.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd1.i.i.i.i72, align 8
  %mutex.i.i.i.i73 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i.i73, i32 noundef 0) #10
  %26 = call ptr @memset(ptr %25, i32 0, i32 1024)
  %session_id.i.i.i74 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37, i32 0, i32 1
  %27 = ptrtoint ptr %session_id.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %session_id.i.i.i74, align 4
  %cmd_id.i.i.i.i75 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %25, i32 0, i32 2
  %29 = ptrtoint ptr %cmd_id.i.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %cmd_id.i.i.i.i75, align 4
  %cmd1.i6.i.i.i76 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %25, i32 0, i32 7
  %30 = ptrtoint ptr %cmd1.i6.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %cmd1.i6.i.i.i76, align 4
  %fence_buf_mc_addr.i.i.i77 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %31 = ptrtoint ptr %fence_buf_mc_addr.i.i.i77 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %fence_buf_mc_addr.i.i.i77, align 8
  %call1.i.i.i78 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %25, i64 noundef %32) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i.i73) #10
  %33 = ptrtoint ptr %rap_context.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %rap_context.i, align 8
  %mem_context.i79 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37, i32 0, i32 2
  %shared_mc_addr.i.i80 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37, i32 0, i32 2, i32 1
  %shared_buf.i.i81 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 37, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context.i79, ptr noundef %shared_mc_addr.i.i80, ptr noundef %shared_buf.i.i81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i78)
  %tobool20.not = icmp eq i32 %call1.i.i.i78, 0
  br i1 %tobool20.not, label %psp_rap_terminate.exit.if.end22_crit_edge, label %psp_rap_terminate.exit.cleanup.sink.split_crit_edge

psp_rap_terminate.exit.cleanup.sink.split_crit_edge: ; preds = %psp_rap_terminate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

psp_rap_terminate.exit.if.end22_crit_edge:        ; preds = %psp_rap_terminate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %psp_rap_terminate.exit.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %call23 = tail call fastcc i32 @psp_securedisplay_terminate(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %if.end22.if.end27_crit_edge, %if.end4.if.end27_crit_edge
  %34 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %psp1, align 8
  %virt.i84 = getelementptr inbounds %struct.amdgpu_device, ptr %35, i32 0, i32 132
  %36 = ptrtoint ptr %virt.i84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt.i84, align 8
  %and.i85 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %if.end.i88, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end.i88:                                       ; preds = %if.end27
  %asd_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32
  %38 = ptrtoint ptr %asd_context.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %asd_context.i, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool1.not.i87 = icmp eq i8 %39, 0
  br i1 %tobool1.not.i87, label %if.end.i88.if.end31_crit_edge, label %if.end3.i97

if.end.i88.if.end31_crit_edge:                    ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end3.i97:                                      ; preds = %if.end.i88
  %cmd1.i.i.i.i89 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %40 = ptrtoint ptr %cmd1.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd1.i.i.i.i89, align 8
  %mutex.i.i.i.i90 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i.i90, i32 noundef 0) #10
  %42 = call ptr @memset(ptr %41, i32 0, i32 1024)
  %session_id.i.i.i91 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 1
  %43 = ptrtoint ptr %session_id.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %session_id.i.i.i91, align 4
  %cmd_id.i.i.i.i92 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %41, i32 0, i32 2
  %45 = ptrtoint ptr %cmd_id.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %cmd_id.i.i.i.i92, align 4
  %cmd1.i6.i.i.i93 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %41, i32 0, i32 7
  %46 = ptrtoint ptr %cmd1.i6.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %cmd1.i6.i.i.i93, align 4
  %fence_buf_mc_addr.i.i.i94 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %47 = ptrtoint ptr %fence_buf_mc_addr.i.i.i94 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %fence_buf_mc_addr.i.i.i94, align 8
  %call1.i.i.i95 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %41, i64 noundef %48) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i.i90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i95)
  %tobool4.not.i96 = icmp eq i32 %call1.i.i.i95, 0
  br i1 %tobool4.not.i96, label %if.then5.i, label %if.end3.i97.cleanup.sink.split_crit_edge

if.end3.i97.cleanup.sink.split_crit_edge:         ; preds = %if.end3.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then5.i:                                       ; preds = %if.end3.i97
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %asd_context.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %asd_context.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then5.i, %if.end.i88.if.end31_crit_edge, %if.end27.if.end31_crit_edge
  %call32 = tail call fastcc i32 @psp_tmr_terminate(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup.sink.split_crit_edge

if.end31.cleanup.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.end31
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 3
  %50 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %funcs, align 4
  %ring_stop = getelementptr inbounds %struct.psp_funcs, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %ring_stop to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring_stop, align 4
  %call36 = tail call i32 %53(ptr noundef %psp1, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.end35.cleanup.sink.split_crit_edge

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end35.cleanup.sink.split_crit_edge, %if.end31.cleanup.sink.split_crit_edge, %if.end3.i97.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %psp_rap_terminate.exit.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge, %if.end3.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.209.sink = phi ptr [ @.str.201, %if.then.cleanup.sink.split_crit_edge ], [ @.str.202, %if.end3.i.cleanup.sink.split_crit_edge ], [ @.str.203, %if.end10.cleanup.sink.split_crit_edge ], [ @.str.204, %if.end14.cleanup.sink.split_crit_edge ], [ @.str.205, %psp_rap_terminate.exit.cleanup.sink.split_crit_edge ], [ @.str.206, %if.end22.cleanup.sink.split_crit_edge ], [ @.str.207, %if.end3.i97.cleanup.sink.split_crit_edge ], [ @.str.208, %if.end31.cleanup.sink.split_crit_edge ], [ @.str.209, %if.end35.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then.cleanup.sink.split_crit_edge ], [ %call1.i.i.i, %if.end3.i.cleanup.sink.split_crit_edge ], [ %call11, %if.end10.cleanup.sink.split_crit_edge ], [ %call15, %if.end14.cleanup.sink.split_crit_edge ], [ %call1.i.i.i78, %psp_rap_terminate.exit.cleanup.sink.split_crit_edge ], [ %call23, %if.end22.cleanup.sink.split_crit_edge ], [ %call1.i.i.i95, %if.end3.i97.cleanup.sink.split_crit_edge ], [ %call32, %if.end31.cleanup.sink.split_crit_edge ], [ %call36, %if.end35.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.209.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %psp1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210) #13
  %enable_mem_training = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 40, i32 7
  %0 = ptrtoint ptr %enable_mem_training to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_mem_training, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %mem_training = getelementptr inbounds %struct.psp_funcs, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %mem_training to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_training, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.if.end8_crit_edge, label %cond.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cond.end:                                         ; preds = %if.then
  %call5 = tail call i32 %5(ptr noundef %psp1, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cond.end.if.end8_crit_edge, label %if.then7

cond.end.if.end8_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.93) #10
  br label %cleanup

if.end8:                                          ; preds = %cond.end.if.end8_crit_edge, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mutex = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 112, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call9 = tail call fastcc i32 @psp_hw_start(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.failed_crit_edge

if.end8.failed_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @psp_load_non_psp_fw(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.failed_crit_edge

if.end12.failed_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end16:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psp1, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 132
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

lor.lhs.false.i:                                  ; preds = %if.end16
  %asd_context.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32
  %size_bytes.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 3, i32 2
  %10 = ptrtoint ptr %size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end20_crit_edge, label %if.end.i

lor.lhs.false.i.if.end20_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.i:                                         ; preds = %lor.lhs.false.i
  %shared_mc_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 2, i32 1
  %12 = ptrtoint ptr %shared_mc_addr.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %shared_mc_addr.i, align 8
  %shared_mem_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 2, i32 3
  %13 = ptrtoint ptr %shared_mem_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %shared_mem_size.i, align 4
  %ta_load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 32, i32 4
  %14 = ptrtoint ptr %ta_load_type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %ta_load_type.i, align 8
  %call.i.i = tail call fastcc i32 @psp_ta_load(ptr noundef %psp1, ptr noundef %asd_context.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then19

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %asd_context.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %asd_context.i, align 8
  br label %if.end20

if.then19:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.116) #10
  br label %failed

if.end20:                                         ; preds = %if.then7.i, %lor.lhs.false.i.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %.elt36.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 13, i32 2
  %16 = ptrtoint ptr %.elt36.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack37.i = load i32, ptr %.elt36.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack37.i)
  %tobool.not.i130 = icmp eq i32 %.unpack37.i, 0
  br i1 %tobool.not.i130, label %if.end20.if.end27_crit_edge, label %psp_rl_load.exit

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

psp_rl_load.exit:                                 ; preds = %if.end20
  %.elt38.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 13, i32 3
  %cmd1.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 2
  %17 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %19 = call ptr @memset(ptr %18, i32 0, i32 1024)
  %fw_pri_buf.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 6
  %20 = ptrtoint ptr %fw_pri_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw_pri_buf.i, align 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 1048576)
  %23 = load ptr, ptr %fw_pri_buf.i, align 8
  %24 = ptrtoint ptr %.elt38.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.elt38.i, align 4
  %26 = ptrtoint ptr %.elt36.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %.elt36.i, align 8
  %28 = call ptr @memcpy(ptr %23, ptr %25, i32 %27)
  %cmd_id.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %18, i32 0, i32 2
  %29 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %cmd_id.i, align 4
  %fw_pri_mc_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 5
  %30 = ptrtoint ptr %fw_pri_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fw_pri_mc_addr.i, align 8
  %conv.i = trunc i64 %31 to i32
  %cmd6.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %18, i32 0, i32 7
  %32 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %cmd6.i, align 4
  %33 = load i64, ptr %fw_pri_mc_addr.i, align 8
  %shr.i = lshr i64 %33, 32
  %conv9.i = trunc i64 %shr.i to i32
  %fw_phy_addr_hi.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %18, i32 0, i32 7, i32 0, i32 1
  %34 = ptrtoint ptr %fw_phy_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv9.i, ptr %fw_phy_addr_hi.i, align 4
  %35 = load i32, ptr %.elt36.i, align 8
  %fw_size.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %18, i32 0, i32 7, i32 0, i32 2
  %36 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %fw_size.i, align 4
  %fw_type.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %18, i32 0, i32 7, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %fw_type.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 67, ptr %fw_type.i, align 4
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 22
  %38 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call15.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %18, i64 noundef %39) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool22.not = icmp eq i32 %call15.i, 0
  br i1 %tobool22.not, label %psp_rl_load.exit.if.end27_crit_edge, label %do.end26

psp_rl_load.exit.if.end27_crit_edge:              ; preds = %psp_rl_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end26:                                         ; preds = %psp_rl_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.213) #13
  br label %failed

if.end27:                                         ; preds = %psp_rl_load.exit.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 62, i32 39, i32 4
  %42 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp = icmp ugt i32 %43, 1
  br i1 %cmp, label %if.then28, label %if.end27.if.end38_crit_edge

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then28:                                        ; preds = %if.end27
  %call29 = tail call i32 @psp_xgmi_initialize(ptr noundef %psp1, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end38_crit_edge, label %do.end34

if.then28.if.end38_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %psp1, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.118) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %if.then28.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %ta_fw = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 113, i32 30
  %48 = ptrtoint ptr %ta_fw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ta_fw, align 4
  %tobool39.not = icmp eq ptr %49, null
  br i1 %tobool39.not, label %if.end38.if.end86_crit_edge, label %if.then40

if.end38.if.end86_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then40:                                        ; preds = %if.end38
  %call41 = tail call fastcc i32 @psp_ras_initialize(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.end49_crit_edge, label %do.end46

if.then40.if.end49_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end46:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %psp1, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.121) #13
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.then40.if.end49_crit_edge
  %call50 = tail call fastcc i32 @psp_hdcp_initialize(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.if.end58_crit_edge, label %do.end55

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %psp1, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.124) #13
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.end49.if.end58_crit_edge
  %call59 = tail call fastcc i32 @psp_dtm_initialize(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.if.end67_crit_edge, label %do.end64

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %psp1, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.127) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.end58.if.end67_crit_edge
  %call68 = tail call fastcc i32 @psp_rap_initialize(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.if.end76_crit_edge, label %do.end73

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %psp1, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.130) #13
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %if.end67.if.end76_crit_edge
  %call77 = tail call fastcc i32 @psp_securedisplay_initialize(ptr noundef %psp1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.if.end86_crit_edge, label %do.end82

if.end76.if.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %psp1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %psp1, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.133) #13
  br label %if.end86

if.end86:                                         ; preds = %do.end82, %if.end76.if.end86_crit_edge, %if.end38.if.end86_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

failed:                                           ; preds = %do.end26, %if.then19, %if.end12.failed_crit_edge, %if.end8.failed_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.failed_crit_edge ], [ %call13, %if.end12.failed_crit_edge ], [ %call.i.i, %if.then19 ], [ %call15.i, %do.end26 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.227) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end86, %if.then7
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %ret.0, %failed ], [ 0, %if.end86 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @psp_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @psp_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_invalidate_hdp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ucode_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @psp_gfx_cmd_name(i32 noundef %cmd_id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %cmd_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 34
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [34 x ptr], ptr @switch.table.psp_gfx_cmd_name, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.72, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_ta_load(ptr noundef %psp, ptr nocapture noundef %context) unnamed_addr #0 align 64 {
entry:
  %idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1.i, align 8
  %mutex.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %start_addr = getelementptr inbounds %struct.ta_context, ptr %context, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %start_addr, align 4
  %size_bytes = getelementptr inbounds %struct.ta_context, ptr %context, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size_bytes, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #10
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %idx.i, align 4, !annotation !435
  %8 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psp, align 8
  %ddev.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %9, i32 0, i32 2
  %call1.i = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i.i, ptr noundef nonnull %idx.i) #10
  br i1 %call1.i, label %if.end.i, label %entry.psp_copy_fw.exit_crit_edge

entry.psp_copy_fw.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_copy_fw.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_pri_buf.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 6
  %10 = ptrtoint ptr %fw_pri_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_pri_buf.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 1048576)
  %13 = load ptr, ptr %fw_pri_buf.i, align 8
  %14 = call ptr @memcpy(ptr %13, ptr %4, i32 %6)
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %16) #10
  br label %psp_copy_fw.exit

psp_copy_fw.exit:                                 ; preds = %if.end.i, %entry.psp_copy_fw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #10
  %fw_pri_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %17 = ptrtoint ptr %fw_pri_mc_addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fw_pri_mc_addr, align 8
  %ta_load_type.i = getelementptr inbounds %struct.ta_context, ptr %context, i32 0, i32 4
  %19 = ptrtoint ptr %ta_load_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ta_load_type.i, align 8
  %cmd_id.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cmd_id.i, align 4
  %conv.i = trunc i64 %18 to i32
  %cmd1.i15 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %cmd1.i15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i, ptr %cmd1.i15, align 4
  %shr.i = lshr i64 %18, 32
  %conv3.i = trunc i64 %shr.i to i32
  %app_phy_addr_hi.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 1
  %23 = ptrtoint ptr %app_phy_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv3.i, ptr %app_phy_addr_hi.i, align 4
  %24 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size_bytes, align 8
  %app_len.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 2
  %26 = ptrtoint ptr %app_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %app_len.i, align 4
  %shared_mc_addr.i = getelementptr inbounds %struct.ta_context, ptr %context, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %shared_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %shared_mc_addr.i, align 8
  %conv7.i = trunc i64 %28 to i32
  %cmd_buf_phy_addr_lo.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %cmd_buf_phy_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv7.i, ptr %cmd_buf_phy_addr_lo.i, align 4
  %30 = load i64, ptr %shared_mc_addr.i, align 8
  %shr11.i = lshr i64 %30, 32
  %conv13.i = trunc i64 %shr11.i to i32
  %cmd_buf_phy_addr_hi.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %cmd_buf_phy_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv13.i, ptr %cmd_buf_phy_addr_hi.i, align 4
  %shared_mem_size.i = getelementptr inbounds %struct.ta_context, ptr %context, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %shared_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shared_mem_size.i, align 4
  %cmd_buf_len.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 7, i32 0, i32 2, i32 2, i32 0, i32 1
  %34 = ptrtoint ptr %cmd_buf_len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %cmd_buf_len.i, align 4
  %fence_buf_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %35 = ptrtoint ptr %fence_buf_mc_addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fence_buf_mc_addr, align 8
  %call2 = call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %1, i64 noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %psp_copy_fw.exit.if.end_crit_edge

psp_copy_fw.exit.if.end_crit_edge:                ; preds = %psp_copy_fw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %psp_copy_fw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %session_id = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %1, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %session_id, align 4
  %session_id3 = getelementptr inbounds %struct.ta_context, ptr %context, i32 0, i32 1
  %39 = ptrtoint ptr %session_id3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %session_id3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %psp_copy_fw.exit.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_xgmi_hive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_sdma_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_gfx_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_rlc_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_smc_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_v3_1_set_psp_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_v10_0_set_psp_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_v11_0_set_psp_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_v12_0_set_psp_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_v13_0_set_psp_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_v11_0_8_set_psp_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_vram_access(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_usbc_pd_fw_sysfs_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %fw_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_ver) #10
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fw_ver, align 4, !annotation !435
  %late_initialized = getelementptr i8, ptr %1, i32 88151
  %3 = ptrtoint ptr %late_initialized to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %late_initialized, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %1, i32 82616
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %funcs = getelementptr i8, ptr %1, i32 80028
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %read_usbc_pd_fw = getelementptr inbounds %struct.psp_funcs, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %read_usbc_pd_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_usbc_pd_fw, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.then13

cond.end:                                         ; preds = %if.end
  %psp = getelementptr i8, ptr %1, i32 79984
  %call9 = call i32 %8(ptr noundef %psp, ptr noundef nonnull %fw_ver) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool12.not = icmp eq i32 %call9, 0
  br i1 %tobool12.not, label %if.end14, label %cond.end.if.then13_crit_edge

cond.end.if.then13_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %cond.end.if.then13_crit_edge, %cond.end.thread
  %cond28 = phi i32 [ -22, %cond.end.thread ], [ %call9, %cond.end.if.then13_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.109, i32 noundef %cond28) #10
  br label %cleanup

if.end14:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_ver, align 4
  %call15 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.110, i32 noundef %10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %do.end
  %retval.0 = phi i32 [ %cond28, %if.then13 ], [ %call15, %if.end14 ], [ -16, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_ver) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psp_usbc_pd_fw_sysfs_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  %fw_name = alloca [100 x i8], align 1
  %usbc_pd_fw = alloca ptr, align 4
  %fw_buf_bo = alloca ptr, align 4
  %fw_pri_mc_addr = alloca i64, align 8
  %fw_pri_cpu_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #10
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !435
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %fw_name) #10
  %3 = call ptr @memset(ptr %fw_name, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usbc_pd_fw) #10
  %4 = ptrtoint ptr %usbc_pd_fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %usbc_pd_fw, align 4, !annotation !435
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_buf_bo) #10
  %5 = ptrtoint ptr %fw_buf_bo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fw_buf_bo, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw_pri_mc_addr) #10
  %6 = ptrtoint ptr %fw_pri_mc_addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %fw_pri_mc_addr, align 8, !annotation !435
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_pri_cpu_addr) #10
  %7 = ptrtoint ptr %fw_pri_cpu_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_pri_cpu_addr, align 4, !annotation !435
  %late_initialized = getelementptr i8, ptr %1, i32 88151
  %8 = ptrtoint ptr %late_initialized to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %late_initialized, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #10
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 100, ptr noundef nonnull @.str.112, ptr noundef %buf)
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %call9 = call i32 @request_firmware(ptr noundef nonnull %usbc_pd_fw, ptr noundef nonnull %fw_name, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end5.if.then28_crit_edge

if.end5.if.then28_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end12:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %usbc_pd_fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usbc_pd_fw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call13 = call i32 @amdgpu_bo_create_kernel(ptr noundef %add.ptr.i, i32 noundef %15, i32 noundef 1048576, i32 noundef 4, ptr noundef nonnull %fw_buf_bo, ptr noundef nonnull %fw_pri_mc_addr, ptr noundef nonnull %fw_pri_cpu_addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %fail.thread53

fail.thread53:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %usbc_pd_fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usbc_pd_fw, align 4
  call void @release_firmware(ptr noundef %17) #10
  br label %if.then28

if.end16:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %fw_pri_cpu_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw_pri_cpu_addr, align 4
  %20 = ptrtoint ptr %usbc_pd_fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usbc_pd_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  call void @mmiocpy(ptr noundef %19, ptr noundef %23, i32 noundef %25) #10
  %mutex = getelementptr i8, ptr %1, i32 82616
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %funcs = getelementptr i8, ptr %1, i32 80028
  %26 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs, align 4
  %load_usbc_pd_fw = getelementptr inbounds %struct.psp_funcs, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %load_usbc_pd_fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %load_usbc_pd_fw, align 4
  %tobool19.not = icmp eq ptr %29, null
  br i1 %tobool19.not, label %if.end16.fail_crit_edge, label %cond.true

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %psp = getelementptr i8, ptr %1, i32 79984
  %30 = ptrtoint ptr %fw_pri_mc_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %fw_pri_mc_addr, align 8
  %call24 = call i32 %29(ptr noundef %psp, i64 noundef %31) #10
  br label %fail

fail:                                             ; preds = %cond.true, %if.end16.fail_crit_edge
  %cond = phi i32 [ %call24, %cond.true ], [ -22, %if.end16.fail_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @amdgpu_bo_free_kernel(ptr noundef nonnull %fw_buf_bo, ptr noundef nonnull %fw_pri_mc_addr, ptr noundef nonnull %fw_pri_cpu_addr) #10
  %32 = ptrtoint ptr %usbc_pd_fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usbc_pd_fw, align 4
  call void @release_firmware(ptr noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool27.not = icmp eq i32 %cond, 0
  br i1 %tobool27.not, label %fail.if.end29_crit_edge, label %fail.if.then28_crit_edge

fail.if.then28_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

fail.if.end29_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then28:                                        ; preds = %fail.if.then28_crit_edge, %fail.thread53, %if.end5.if.then28_crit_edge
  %ret.152 = phi i32 [ %cond, %fail.if.then28_crit_edge ], [ %call13, %fail.thread53 ], [ %call9, %if.end5.if.then28_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.113, i32 noundef %ret.152) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %fail.if.end29_crit_edge
  %count.addr.0 = phi i32 [ %ret.152, %if.then28 ], [ %count, %fail.if.end29_crit_edge ]
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %35) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %count.addr.0, %if.end29 ], [ -16, %do.end ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_pri_cpu_addr) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw_pri_mc_addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_buf_bo) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usbc_pd_fw) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %fw_name) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_init_bo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_hw_start(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  %idx.i.i.i = alloca i32, align 4
  %tmr_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end133_crit_edge

entry.if.end133_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then:                                          ; preds = %entry
  %.elt236 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %.elt236 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack237 = load i32, ptr %.elt236, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack237)
  %tobool2.not = icmp eq i32 %.unpack237, 0
  br i1 %tobool2.not, label %if.then.if.end12_crit_edge, label %land.lhs.true

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %bootloader_load_kdb = getelementptr inbounds %struct.psp_funcs, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bootloader_load_kdb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bootloader_load_kdb, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %cond.true

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

cond.true:                                        ; preds = %land.lhs.true
  %call9 = tail call i32 %8(ptr noundef %psp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cond.true.if.end12_crit_edge, label %if.then11

cond.true.if.end12_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.135) #10
  br label %cleanup

if.end12:                                         ; preds = %cond.true.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %.elt243 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %.elt243 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack244 = load i32, ptr %.elt243, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack244)
  %tobool14.not = icmp eq i32 %.unpack244, 0
  br i1 %tobool14.not, label %if.end12.if.end32_crit_edge, label %land.lhs.true15

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true15:                                  ; preds = %if.end12
  %funcs16 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %10 = ptrtoint ptr %funcs16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs16, align 4
  %bootloader_load_spl = getelementptr inbounds %struct.psp_funcs, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bootloader_load_spl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bootloader_load_spl, align 4
  %cmp17.not = icmp eq ptr %13, null
  br i1 %cmp17.not, label %land.lhs.true15.if.end32_crit_edge, label %cond.true22

land.lhs.true15.if.end32_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

cond.true22:                                      ; preds = %land.lhs.true15
  %call25 = tail call i32 %13(ptr noundef %psp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %cond.true22.if.end32_crit_edge, label %if.then30

cond.true22.if.end32_crit_edge:                   ; preds = %cond.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %cond.true22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.136) #10
  br label %cleanup

if.end32:                                         ; preds = %cond.true22.if.end32_crit_edge, %land.lhs.true15.if.end32_crit_edge, %if.end12.if.end32_crit_edge
  %.elt250 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %.elt250 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack251 = load i32, ptr %.elt250, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack251)
  %tobool34.not = icmp eq i32 %.unpack251, 0
  br i1 %tobool34.not, label %if.end32.if.end52_crit_edge, label %land.lhs.true35

if.end32.if.end52_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true35:                                  ; preds = %if.end32
  %funcs36 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %15 = ptrtoint ptr %funcs36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs36, align 4
  %bootloader_load_sysdrv = getelementptr inbounds %struct.psp_funcs, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bootloader_load_sysdrv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bootloader_load_sysdrv, align 4
  %cmp37.not = icmp eq ptr %18, null
  br i1 %cmp37.not, label %land.lhs.true35.if.end52_crit_edge, label %cond.true42

land.lhs.true35.if.end52_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

cond.true42:                                      ; preds = %land.lhs.true35
  %call45 = tail call i32 %18(ptr noundef %psp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool49.not = icmp eq i32 %call45, 0
  br i1 %tobool49.not, label %cond.true42.if.end52_crit_edge, label %if.then50

cond.true42.if.end52_crit_edge:                   ; preds = %cond.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then50:                                        ; preds = %cond.true42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.137) #10
  br label %cleanup

if.end52:                                         ; preds = %cond.true42.if.end52_crit_edge, %land.lhs.true35.if.end52_crit_edge, %if.end32.if.end52_crit_edge
  %.elt257 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 14, i32 2
  %19 = ptrtoint ptr %.elt257 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack258 = load i32, ptr %.elt257, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack258)
  %tobool54.not = icmp eq i32 %.unpack258, 0
  br i1 %tobool54.not, label %if.end52.if.end72_crit_edge, label %land.lhs.true55

if.end52.if.end72_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

land.lhs.true55:                                  ; preds = %if.end52
  %funcs56 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %20 = ptrtoint ptr %funcs56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs56, align 4
  %bootloader_load_soc_drv = getelementptr inbounds %struct.psp_funcs, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %bootloader_load_soc_drv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bootloader_load_soc_drv, align 4
  %cmp57.not = icmp eq ptr %23, null
  br i1 %cmp57.not, label %land.lhs.true55.if.end72_crit_edge, label %cond.true62

land.lhs.true55.if.end72_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

cond.true62:                                      ; preds = %land.lhs.true55
  %call65 = tail call i32 %23(ptr noundef %psp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool69.not = icmp eq i32 %call65, 0
  br i1 %tobool69.not, label %cond.true62.if.end72_crit_edge, label %if.then70

cond.true62.if.end72_crit_edge:                   ; preds = %cond.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then70:                                        ; preds = %cond.true62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.138) #10
  br label %cleanup

if.end72:                                         ; preds = %cond.true62.if.end72_crit_edge, %land.lhs.true55.if.end72_crit_edge, %if.end52.if.end72_crit_edge
  %.elt264 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 15, i32 2
  %24 = ptrtoint ptr %.elt264 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack265 = load i32, ptr %.elt264, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack265)
  %tobool74.not = icmp eq i32 %.unpack265, 0
  br i1 %tobool74.not, label %if.end72.if.end92_crit_edge, label %land.lhs.true75

if.end72.if.end92_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

land.lhs.true75:                                  ; preds = %if.end72
  %funcs76 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %25 = ptrtoint ptr %funcs76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs76, align 4
  %bootloader_load_intf_drv = getelementptr inbounds %struct.psp_funcs, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %bootloader_load_intf_drv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bootloader_load_intf_drv, align 4
  %cmp77.not = icmp eq ptr %28, null
  br i1 %cmp77.not, label %land.lhs.true75.if.end92_crit_edge, label %cond.true82

land.lhs.true75.if.end92_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

cond.true82:                                      ; preds = %land.lhs.true75
  %call85 = tail call i32 %28(ptr noundef %psp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool89.not = icmp eq i32 %call85, 0
  br i1 %tobool89.not, label %cond.true82.if.end92_crit_edge, label %if.then90

cond.true82.if.end92_crit_edge:                   ; preds = %cond.true82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then90:                                        ; preds = %cond.true82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.139) #10
  br label %cleanup

if.end92:                                         ; preds = %cond.true82.if.end92_crit_edge, %land.lhs.true75.if.end92_crit_edge, %if.end72.if.end92_crit_edge
  %.elt271 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 16, i32 2
  %29 = ptrtoint ptr %.elt271 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack272 = load i32, ptr %.elt271, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack272)
  %tobool94.not = icmp eq i32 %.unpack272, 0
  br i1 %tobool94.not, label %if.end92.if.end112_crit_edge, label %land.lhs.true95

if.end92.if.end112_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

land.lhs.true95:                                  ; preds = %if.end92
  %funcs96 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %30 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs96, align 4
  %bootloader_load_dbg_drv = getelementptr inbounds %struct.psp_funcs, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %bootloader_load_dbg_drv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bootloader_load_dbg_drv, align 4
  %cmp97.not = icmp eq ptr %33, null
  br i1 %cmp97.not, label %land.lhs.true95.if.end112_crit_edge, label %cond.true102

land.lhs.true95.if.end112_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

cond.true102:                                     ; preds = %land.lhs.true95
  %call105 = tail call i32 %33(ptr noundef %psp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool109.not = icmp eq i32 %call105, 0
  br i1 %tobool109.not, label %cond.true102.if.end112_crit_edge, label %if.then110

cond.true102.if.end112_crit_edge:                 ; preds = %cond.true102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then110:                                       ; preds = %cond.true102
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.140) #10
  br label %cleanup

if.end112:                                        ; preds = %cond.true102.if.end112_crit_edge, %land.lhs.true95.if.end112_crit_edge, %if.end92.if.end112_crit_edge
  %.elt278 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %.elt278 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack279 = load i32, ptr %.elt278, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack279)
  %tobool114.not = icmp eq i32 %.unpack279, 0
  br i1 %tobool114.not, label %if.end112.if.end133_crit_edge, label %land.lhs.true115

if.end112.if.end133_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

land.lhs.true115:                                 ; preds = %if.end112
  %funcs116 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %35 = ptrtoint ptr %funcs116 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs116, align 4
  %bootloader_load_sos = getelementptr inbounds %struct.psp_funcs, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %bootloader_load_sos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bootloader_load_sos, align 4
  %cmp117.not = icmp eq ptr %38, null
  br i1 %cmp117.not, label %land.lhs.true115.if.end133_crit_edge, label %cond.true122

land.lhs.true115.if.end133_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

cond.true122:                                     ; preds = %land.lhs.true115
  %call125 = tail call i32 %38(ptr noundef %psp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool129.not = icmp eq i32 %call125, 0
  br i1 %tobool129.not, label %cond.true122.if.end133_crit_edge, label %if.then130

cond.true122.if.end133_crit_edge:                 ; preds = %cond.true122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then130:                                       ; preds = %cond.true122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.141) #10
  br label %cleanup

if.end133:                                        ; preds = %cond.true122.if.end133_crit_edge, %land.lhs.true115.if.end133_crit_edge, %if.end112.if.end133_crit_edge, %entry.if.end133_crit_edge
  %funcs134 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %39 = ptrtoint ptr %funcs134 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs134, align 4
  %ring_create = getelementptr inbounds %struct.psp_funcs, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %ring_create to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring_create, align 4
  %call135 = tail call i32 %42(ptr noundef %psp, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.then137

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.142) #10
  br label %cleanup

if.end138:                                        ; preds = %if.end133
  %43 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %virt, align 8
  %and141 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end138.if.end147_crit_edge, label %land.lhs.true143

if.end138.if.end147_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

land.lhs.true143:                                 ; preds = %if.end138
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #10
  %45 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool145.not = icmp eq i32 %46, 0
  br i1 %tobool145.not, label %land.lhs.true143.if.end147_crit_edge, label %land.lhs.true143.skip_pin_bo_crit_edge

land.lhs.true143.skip_pin_bo_crit_edge:           ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_pin_bo

land.lhs.true143.if.end147_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.end147:                                        ; preds = %land.lhs.true143.if.end147_crit_edge, %if.end138.if.end147_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmr_buf.i) #10
  %47 = ptrtoint ptr %tmr_buf.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmr_buf.i, align 4, !annotation !435
  %48 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %psp, align 8
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %51)
  %cmp.i = icmp eq i32 %51, 25
  %cond.i = select i1 %cmp.i, i32 8388608, i32 4194304
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 132
  %52 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end147.psp_tmr_init.exit_crit_edge

if.end147.psp_tmr_init.exit_crit_edge:            ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_tmr_init.exit

land.lhs.true.i:                                  ; preds = %if.end147
  %start_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 10, i32 3
  %54 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %start_addr.i, align 4
  %tobool2.not.i = icmp eq ptr %55, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.psp_tmr_init.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.psp_tmr_init.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_tmr_init.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %size_bytes.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 10, i32 2
  %56 = ptrtoint ptr %size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool5.not.i = icmp eq i32 %57, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.psp_tmr_init.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.psp_tmr_init.exit_crit_edge:     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_tmr_init.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %fw_pri_buf.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 6
  %58 = ptrtoint ptr %fw_pri_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fw_pri_buf.i, align 8
  %tobool7.not.i = icmp eq ptr %59, null
  br i1 %tobool7.not.i, label %land.lhs.true6.i.psp_tmr_init.exit_crit_edge, label %if.then.i

land.lhs.true6.i.psp_tmr_init.exit_crit_edge:     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_tmr_init.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %60 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %62 = call ptr @memset(ptr %61, i32 0, i32 1024)
  %63 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %start_addr.i, align 4
  %65 = ptrtoint ptr %size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size_bytes.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i.i.i) #10
  %67 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %idx.i.i.i, align 4, !annotation !435
  %68 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %psp, align 8
  %ddev.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %69, i32 0, i32 2
  %call1.i.i.i = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i.i.i.i, ptr noundef nonnull %idx.i.i.i) #10
  br i1 %call1.i.i.i, label %if.end.i.i.i, label %if.then.i.psp_copy_fw.exit.i.i_crit_edge

if.then.i.psp_copy_fw.exit.i.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_copy_fw.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %fw_pri_buf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fw_pri_buf.i, align 8
  %72 = call ptr @memset(ptr %71, i32 0, i32 1048576)
  %73 = load ptr, ptr %fw_pri_buf.i, align 8
  %74 = call ptr @memcpy(ptr %73, ptr %64, i32 %66)
  %75 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %idx.i.i.i, align 4
  call void @drm_dev_exit(i32 noundef %76) #10
  br label %psp_copy_fw.exit.i.i

psp_copy_fw.exit.i.i:                             ; preds = %if.end.i.i.i, %if.then.i.psp_copy_fw.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i.i.i) #10
  %fw_pri_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 5
  %77 = ptrtoint ptr %fw_pri_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %fw_pri_mc_addr.i.i, align 8
  %79 = ptrtoint ptr %size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size_bytes.i, align 8
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %61, i32 0, i32 2
  %81 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 32, ptr %cmd_id.i.i.i, align 4
  %conv.i.i.i = trunc i64 %78 to i32
  %cmd1.i17.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %61, i32 0, i32 7
  %82 = ptrtoint ptr %cmd1.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv.i.i.i, ptr %cmd1.i17.i.i, align 4
  %shr.i.i.i = lshr i64 %78, 32
  %conv3.i.i.i = trunc i64 %shr.i.i.i to i32
  %toc_phy_addr_hi.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %61, i32 0, i32 7, i32 0, i32 1
  %83 = ptrtoint ptr %toc_phy_addr_hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv3.i.i.i, ptr %toc_phy_addr_hi.i.i.i, align 4
  %toc_size.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %61, i32 0, i32 7, i32 0, i32 2
  %84 = ptrtoint ptr %toc_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %80, ptr %toc_size.i.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %85 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call4.i.i = call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %61, i64 noundef %86) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %psp_load_toc.exit.thread.i, label %psp_tmr_init.exit.thread

psp_load_toc.exit.thread.i:                       ; preds = %psp_copy_fw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_buf_mem.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 26
  %87 = ptrtoint ptr %cmd_buf_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmd_buf_mem.i.i, align 8
  %tmr_size5.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %88, i32 0, i32 9, i32 4
  %89 = ptrtoint ptr %tmr_size5.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tmr_size5.i.i, align 4
  call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  br label %psp_tmr_init.exit

psp_tmr_init.exit.thread:                         ; preds = %psp_copy_fw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.145) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmr_buf.i) #10
  br label %if.then150

psp_tmr_init.exit:                                ; preds = %psp_load_toc.exit.thread.i, %land.lhs.true6.i.psp_tmr_init.exit_crit_edge, %land.lhs.true3.i.psp_tmr_init.exit_crit_edge, %land.lhs.true.i.psp_tmr_init.exit_crit_edge, %if.end147.psp_tmr_init.exit_crit_edge
  %tmr_size.1.i = phi i32 [ %cond.i, %land.lhs.true.i.psp_tmr_init.exit_crit_edge ], [ %cond.i, %land.lhs.true3.i.psp_tmr_init.exit_crit_edge ], [ %cond.i, %land.lhs.true6.i.psp_tmr_init.exit_crit_edge ], [ %cond.i, %if.end147.psp_tmr_init.exit_crit_edge ], [ %90, %psp_load_toc.exit.thread.i ]
  %91 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %psp, align 8
  %virt12.i = getelementptr inbounds %struct.amdgpu_device, ptr %92, i32 0, i32 132
  %93 = ptrtoint ptr %virt12.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %virt12.i, align 8
  %and14.i = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %tmr_buf..i = select i1 %tobool15.not.i, ptr null, ptr %tmr_buf.i
  %asic_type19.i = getelementptr inbounds %struct.amdgpu_device, ptr %92, i32 0, i32 5
  %95 = ptrtoint ptr %asic_type19.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %asic_type19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %96)
  %cmp20.i = icmp eq i32 %96, 25
  %cond21.i = select i1 %cmp20.i, i32 8388608, i32 4194304
  %tmr_bo.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 17
  %tmr_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 18
  %call22.i = call i32 @amdgpu_bo_create_kernel(ptr noundef %92, i32 noundef %tmr_size.1.i, i32 noundef %cond21.i, i32 noundef 4, ptr noundef %tmr_bo.i, ptr noundef %tmr_mc_addr.i, ptr noundef %tmr_buf..i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmr_buf.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool149.not = icmp eq i32 %call22.i, 0
  br i1 %tobool149.not, label %psp_tmr_init.exit.skip_pin_bo_crit_edge, label %psp_tmr_init.exit.if.then150_crit_edge

psp_tmr_init.exit.if.then150_crit_edge:           ; preds = %psp_tmr_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then150

psp_tmr_init.exit.skip_pin_bo_crit_edge:          ; preds = %psp_tmr_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_pin_bo

if.then150:                                       ; preds = %psp_tmr_init.exit.if.then150_crit_edge, %psp_tmr_init.exit.thread
  %retval.0.i292 = phi i32 [ %call4.i.i, %psp_tmr_init.exit.thread ], [ %call22.i, %psp_tmr_init.exit.if.then150_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.143) #10
  br label %cleanup

skip_pin_bo:                                      ; preds = %psp_tmr_init.exit.skip_pin_bo_crit_edge, %land.lhs.true143.skip_pin_bo_crit_edge
  %pmfw_centralized_cstate_management = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 29
  %97 = ptrtoint ptr %pmfw_centralized_cstate_management to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pmfw_centralized_cstate_management, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool152.not = icmp eq i8 %98, 0
  br i1 %tobool152.not, label %skip_pin_bo.if.end158_crit_edge, label %if.then153

skip_pin_bo.if.end158_crit_edge:                  ; preds = %skip_pin_bo
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.then153:                                       ; preds = %skip_pin_bo
  %call154 = call fastcc i32 @psp_load_smu_fw(ptr noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then153.if.end158_crit_edge, label %if.then153.cleanup_crit_edge

if.then153.cleanup_crit_edge:                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then153.if.end158_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.end158:                                        ; preds = %if.then153.if.end158_crit_edge, %skip_pin_bo.if.end158_crit_edge
  %99 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %psp, align 8
  %virt.i282 = getelementptr inbounds %struct.amdgpu_device, ptr %100, i32 0, i32 132
  %101 = ptrtoint ptr %virt.i282 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %virt.i282, align 8
  %and.i283 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.not.i284 = icmp eq i32 %and.i283, 0
  br i1 %tobool.not.i284, label %if.end158.psp_tmr_load.exit_crit_edge, label %land.lhs.true.i285

if.end158.psp_tmr_load.exit_crit_edge:            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_tmr_load.exit

land.lhs.true.i285:                               ; preds = %if.end158
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %100, i32 0, i32 172, i32 14
  %103 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %104, label %land.lhs.true.i285.psp_tmr_load.exit_crit_edge [
    i32 720905, label %land.lhs.true.i285.cleanup_crit_edge
    i32 720903, label %land.lhs.true.i285.cleanup_crit_edge295
    i32 851970, label %land.lhs.true.i285.cleanup_crit_edge296
  ]

land.lhs.true.i285.cleanup_crit_edge296:          ; preds = %land.lhs.true.i285
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i285.cleanup_crit_edge295:          ; preds = %land.lhs.true.i285
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i285.cleanup_crit_edge:             ; preds = %land.lhs.true.i285
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i285.psp_tmr_load.exit_crit_edge:   ; preds = %land.lhs.true.i285
  call void @__sanitizer_cov_trace_pc() #12
  br label %psp_tmr_load.exit

psp_tmr_load.exit:                                ; preds = %land.lhs.true.i285.psp_tmr_load.exit_crit_edge, %if.end158.psp_tmr_load.exit_crit_edge
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %106 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %108 = call ptr @memset(ptr %107, i32 0, i32 1024)
  %tmr_mc_addr.i286 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 18
  %109 = ptrtoint ptr %tmr_mc_addr.i286 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %tmr_mc_addr.i286, align 8
  %tmr_bo.i287 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 17
  %111 = ptrtoint ptr %tmr_bo.i287 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tmr_bo.i287, align 8
  %113 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %psp, align 8
  %size.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %112, i32 0, i32 4, i32 0, i32 5
  %115 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size.i.i.i, align 8
  %call2.i.i = call i64 @amdgpu_gmc_vram_pa(ptr noundef %114, ptr noundef %112) #10
  %117 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %psp, align 8
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %118, i32 0, i32 132
  %119 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %virt.i.i, align 8
  %and.i.i = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i288 = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i288, i32 5, i32 9
  %121 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %107, i32 0, i32 2
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %spec.select.i.i, ptr %121, align 4
  %conv.i.i = trunc i64 %110 to i32
  %cmd6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %107, i32 0, i32 7
  %123 = ptrtoint ptr %cmd6.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv.i.i, ptr %cmd6.i.i, align 4
  %shr.i.i = lshr i64 %110, 32
  %conv8.i.i = trunc i64 %shr.i.i to i32
  %buf_phy_addr_hi.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %107, i32 0, i32 7, i32 0, i32 1
  %124 = ptrtoint ptr %buf_phy_addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv8.i.i, ptr %buf_phy_addr_hi.i.i, align 4
  %buf_size.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %107, i32 0, i32 7, i32 0, i32 2
  %125 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %116, ptr %buf_size.i.i, align 4
  %126 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %107, i32 0, i32 7, i32 0, i32 2, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %bf.load.i.i = load i32, ptr %126, align 4
  %bf.set.i.i = or i32 %bf.load.i.i, 1073741824
  store i32 %bf.set.i.i, ptr %126, align 4
  %conv13.i.i = trunc i64 %call2.i.i to i32
  %system_phy_addr_lo.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %107, i32 0, i32 7, i32 0, i32 2, i32 2
  %128 = ptrtoint ptr %system_phy_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv13.i.i, ptr %system_phy_addr_lo.i.i, align 4
  %shr15.i.i = lshr i64 %call2.i.i, 32
  %conv17.i.i = trunc i64 %shr15.i.i to i32
  %system_phy_addr_hi.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %107, i32 0, i32 7, i32 0, i32 2, i32 2, i32 0, i32 1
  %129 = ptrtoint ptr %system_phy_addr_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv17.i.i, ptr %system_phy_addr_hi.i.i, align 4
  %130 = ptrtoint ptr %tmr_bo.i287 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tmr_bo.i287, align 8
  %size.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %131, i32 0, i32 4, i32 0, i32 5
  %132 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %size.i.i, align 8
  %134 = ptrtoint ptr %tmr_mc_addr.i286 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %tmr_mc_addr.i286, align 8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %133, i64 noundef %135) #13
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %136 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call6.i = call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %107, i64 noundef %137) #10
  call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool160.not = icmp eq i32 %call6.i, 0
  br i1 %tobool160.not, label %psp_tmr_load.exit.cleanup_crit_edge, label %if.then161

psp_tmr_load.exit.cleanup_crit_edge:              ; preds = %psp_tmr_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then161:                                       ; preds = %psp_tmr_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.144) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then161, %psp_tmr_load.exit.cleanup_crit_edge, %land.lhs.true.i285.cleanup_crit_edge, %land.lhs.true.i285.cleanup_crit_edge295, %land.lhs.true.i285.cleanup_crit_edge296, %if.then153.cleanup_crit_edge, %if.then150, %if.then137, %if.then130, %if.then110, %if.then90, %if.then70, %if.then50, %if.then30, %if.then11
  %retval.0 = phi i32 [ %call135, %if.then137 ], [ %call6.i, %if.then161 ], [ %retval.0.i292, %if.then150 ], [ %call9, %if.then11 ], [ %call25, %if.then30 ], [ %call45, %if.then50 ], [ %call65, %if.then70 ], [ %call85, %if.then90 ], [ %call105, %if.then110 ], [ %call125, %if.then130 ], [ %call154, %if.then153.cleanup_crit_edge ], [ 0, %psp_tmr_load.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i285.cleanup_crit_edge ], [ 0, %land.lhs.true.i285.cleanup_crit_edge295 ], [ 0, %land.lhs.true.i285.cleanup_crit_edge296 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_load_non_psp_fw(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %autoload_supported = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 28
  %2 = ptrtoint ptr %autoload_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoload_supported, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %pmfw_centralized_cstate_management = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 29
  %4 = ptrtoint ptr %pmfw_centralized_cstate_management to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pmfw_centralized_cstate_management, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @psp_load_smu_fw(ptr noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %max_ucodes = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 4
  %6 = ptrtoint ptr %max_ucodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_ucodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp135.not = icmp eq i32 %7, 0
  br i1 %cmp135.not, label %if.end5.cleanup_crit_edge, label %for.body.lr.ph

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %firmware = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112
  %funcs.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 3
  %pmfw_centralized_cstate_management.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 29
  %arrayidx23 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 14
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.0136
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp8 = icmp eq i32 %9, 24
  br i1 %cmp8, label %land.lhs.true9, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true9:                                   ; preds = %for.body
  %fw.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.0136, i32 1
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %land.lhs.true9.if.end16_crit_edge, label %land.lhs.true.i

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true.i:                                  ; preds = %land.lhs.true9
  %12 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs.i, align 4
  %smu_reload_quirk.i = getelementptr inbounds %struct.psp_funcs, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %smu_reload_quirk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smu_reload_quirk.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  %call.i = tail call zeroext i1 %15(ptr noundef %psp) #10
  br i1 %call.i, label %cond.true.i.if.end16_crit_edge, label %cond.true.i.lor.lhs.false.i_crit_edge

cond.true.i.lor.lhs.false.i_crit_edge:            ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

cond.true.i.if.end16_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

lor.lhs.false.i:                                  ; preds = %cond.true.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  %16 = ptrtoint ptr %autoload_supported to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %autoload_supported, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.i = icmp eq i8 %17, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.end16_crit_edge

lor.lhs.false.i.if.end16_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %pmfw_centralized_cstate_management.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pmfw_centralized_cstate_management.i, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.i = icmp eq i8 %19, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %lor.lhs.false5.i.if.end16_crit_edge

lor.lhs.false5.i.if.end16_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end8.i:                                        ; preds = %lor.lhs.false5.i
  %20 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %psp, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %21, i32 0, i32 132
  %22 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end50.i_crit_edge, label %land.lhs.true10.i

if.end8.i.if.end50.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

land.lhs.true10.i:                                ; preds = %if.end8.i
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %25, label %land.lhs.true10.i.if.end50.i_crit_edge [
    i32 0, label %land.lhs.true10.i.if.end16_crit_edge
    i32 1, label %land.lhs.true10.i.if.end16_crit_edge142
    i32 2, label %land.lhs.true10.i.if.end16_crit_edge143
    i32 3, label %land.lhs.true10.i.if.end16_crit_edge144
    i32 4, label %land.lhs.true10.i.if.end16_crit_edge145
    i32 5, label %land.lhs.true10.i.if.end16_crit_edge146
    i32 6, label %land.lhs.true10.i.if.end16_crit_edge147
    i32 7, label %land.lhs.true10.i.if.end16_crit_edge148
    i32 22, label %land.lhs.true10.i.if.end16_crit_edge149
    i32 17, label %land.lhs.true10.i.if.end16_crit_edge150
    i32 18, label %land.lhs.true10.i.if.end16_crit_edge151
    i32 19, label %land.lhs.true10.i.if.end16_crit_edge152
    i32 24, label %land.lhs.true10.i.if.end16_crit_edge153
  ]

land.lhs.true10.i.if.end16_crit_edge153:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge152:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge151:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge150:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge149:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge148:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge147:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge146:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge145:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge144:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge143:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge142:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end16_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true10.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true10.i.if.end50.i_crit_edge, %if.end8.i.if.end50.i_crit_edge
  %27 = ptrtoint ptr %autoload_supported to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %autoload_supported, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool52.not.i = icmp eq i8 %28, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.then11_crit_edge, label %fw_load_skip_check.exit

if.end50.i.if.then11_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

fw_load_skip_check.exit:                          ; preds = %if.end50.i
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 8
  %31 = add i32 %30, -12
  %switch.and.i = and i32 %31, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %fw_load_skip_check.exit.if.end16_crit_edge, label %fw_load_skip_check.exit.if.then11_crit_edge

fw_load_skip_check.exit.if.then11_crit_edge:      ; preds = %fw_load_skip_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

fw_load_skip_check.exit.if.end16_crit_edge:       ; preds = %fw_load_skip_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %fw_load_skip_check.exit.if.then11_crit_edge, %if.end50.i.if.then11_crit_edge
  %call12 = tail call fastcc i32 @psp_load_smu_fw(ptr noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.for.inc_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %fw_load_skip_check.exit.if.end16_crit_edge, %land.lhs.true10.i.if.end16_crit_edge, %land.lhs.true10.i.if.end16_crit_edge142, %land.lhs.true10.i.if.end16_crit_edge143, %land.lhs.true10.i.if.end16_crit_edge144, %land.lhs.true10.i.if.end16_crit_edge145, %land.lhs.true10.i.if.end16_crit_edge146, %land.lhs.true10.i.if.end16_crit_edge147, %land.lhs.true10.i.if.end16_crit_edge148, %land.lhs.true10.i.if.end16_crit_edge149, %land.lhs.true10.i.if.end16_crit_edge150, %land.lhs.true10.i.if.end16_crit_edge151, %land.lhs.true10.i.if.end16_crit_edge152, %land.lhs.true10.i.if.end16_crit_edge153, %lor.lhs.false5.i.if.end16_crit_edge, %lor.lhs.false.i.if.end16_crit_edge, %cond.true.i.if.end16_crit_edge, %land.lhs.true9.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %fw.i99 = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.0136, i32 1
  %32 = ptrtoint ptr %fw.i99 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw.i99, align 4
  %tobool.not.i100 = icmp eq ptr %33, null
  br i1 %tobool.not.i100, label %if.end16.for.inc_crit_edge, label %if.end.i102

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i102:                                      ; preds = %if.end16
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %35)
  %cmp.i101 = icmp eq i32 %35, 24
  br i1 %cmp.i101, label %land.lhs.true.i106, label %if.end.i102.if.end8.i118_crit_edge

if.end.i102.if.end8.i118_crit_edge:               ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i118

land.lhs.true.i106:                               ; preds = %if.end.i102
  %36 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs.i, align 4
  %smu_reload_quirk.i104 = getelementptr inbounds %struct.psp_funcs, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %smu_reload_quirk.i104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %smu_reload_quirk.i104, align 4
  %tobool1.not.i105 = icmp eq ptr %39, null
  br i1 %tobool1.not.i105, label %land.lhs.true.i106.lor.lhs.false.i111_crit_edge, label %cond.true.i108

land.lhs.true.i106.lor.lhs.false.i111_crit_edge:  ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i111

cond.true.i108:                                   ; preds = %land.lhs.true.i106
  %call.i107 = tail call zeroext i1 %39(ptr noundef %psp) #10
  br i1 %call.i107, label %cond.true.i108.for.inc_crit_edge, label %cond.true.i108.lor.lhs.false.i111_crit_edge

cond.true.i108.lor.lhs.false.i111_crit_edge:      ; preds = %cond.true.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i111

cond.true.i108.for.inc_crit_edge:                 ; preds = %cond.true.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.i111:                               ; preds = %cond.true.i108.lor.lhs.false.i111_crit_edge, %land.lhs.true.i106.lor.lhs.false.i111_crit_edge
  %40 = ptrtoint ptr %autoload_supported to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %autoload_supported, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool4.not.i110 = icmp eq i8 %41, 0
  br i1 %tobool4.not.i110, label %lor.lhs.false5.i114, label %lor.lhs.false.i111.for.inc_crit_edge

lor.lhs.false.i111.for.inc_crit_edge:             ; preds = %lor.lhs.false.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false5.i114:                              ; preds = %lor.lhs.false.i111
  %42 = ptrtoint ptr %pmfw_centralized_cstate_management.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pmfw_centralized_cstate_management.i, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool6.not.i113 = icmp eq i8 %43, 0
  br i1 %tobool6.not.i113, label %lor.lhs.false5.i114.if.end8.i118_crit_edge, label %lor.lhs.false5.i114.for.inc_crit_edge

lor.lhs.false5.i114.for.inc_crit_edge:            ; preds = %lor.lhs.false5.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false5.i114.if.end8.i118_crit_edge:       ; preds = %lor.lhs.false5.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i118

if.end8.i118:                                     ; preds = %lor.lhs.false5.i114.if.end8.i118_crit_edge, %if.end.i102.if.end8.i118_crit_edge
  %44 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %psp, align 8
  %virt.i115 = getelementptr inbounds %struct.amdgpu_device, ptr %45, i32 0, i32 132
  %46 = ptrtoint ptr %virt.i115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt.i115, align 8
  %and.i116 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool9.not.i117 = icmp eq i32 %and.i116, 0
  br i1 %tobool9.not.i117, label %if.end8.i118.if.end50.i122_crit_edge, label %land.lhs.true10.i119

if.end8.i118.if.end50.i122_crit_edge:             ; preds = %if.end8.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i122

land.lhs.true10.i119:                             ; preds = %if.end8.i118
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %49, label %land.lhs.true10.i119.if.end50.i122_crit_edge [
    i32 0, label %land.lhs.true10.i119.for.inc_crit_edge
    i32 1, label %land.lhs.true10.i119.for.inc_crit_edge154
    i32 2, label %land.lhs.true10.i119.for.inc_crit_edge155
    i32 3, label %land.lhs.true10.i119.for.inc_crit_edge156
    i32 4, label %land.lhs.true10.i119.for.inc_crit_edge157
    i32 5, label %land.lhs.true10.i119.for.inc_crit_edge158
    i32 6, label %land.lhs.true10.i119.for.inc_crit_edge159
    i32 7, label %land.lhs.true10.i119.for.inc_crit_edge160
    i32 22, label %land.lhs.true10.i119.for.inc_crit_edge161
    i32 17, label %land.lhs.true10.i119.for.inc_crit_edge162
    i32 18, label %land.lhs.true10.i119.for.inc_crit_edge163
    i32 19, label %land.lhs.true10.i119.for.inc_crit_edge164
    i32 24, label %land.lhs.true10.i119.for.inc_crit_edge165
  ]

land.lhs.true10.i119.for.inc_crit_edge165:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge164:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge163:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge162:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge161:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge160:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge159:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge158:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge157:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge156:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge155:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge154:        ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.for.inc_crit_edge:           ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true10.i119.if.end50.i122_crit_edge:     ; preds = %land.lhs.true10.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i122

if.end50.i122:                                    ; preds = %land.lhs.true10.i119.if.end50.i122_crit_edge, %if.end8.i118.if.end50.i122_crit_edge
  %51 = ptrtoint ptr %autoload_supported to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %autoload_supported, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool52.not.i121 = icmp eq i8 %52, 0
  br i1 %tobool52.not.i121, label %if.end50.i122.if.end45_crit_edge, label %fw_load_skip_check.exit127

if.end50.i122.if.end45_crit_edge:                 ; preds = %if.end50.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

fw_load_skip_check.exit127:                       ; preds = %if.end50.i122
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 8
  %55 = add i32 %54, -12
  %switch.and.i123 = and i32 %55, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i123)
  %switch.selectcmp.i124 = icmp eq i32 %switch.and.i123, 0
  br i1 %switch.selectcmp.i124, label %fw_load_skip_check.exit127.for.inc_crit_edge, label %if.end19

fw_load_skip_check.exit127.for.inc_crit_edge:     ; preds = %fw_load_skip_check.exit127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %fw_load_skip_check.exit127
  %56 = ptrtoint ptr %autoload_supported to i32
  call void @__asan_load1_noabort(i32 %56)
  %.pr = load i8, ptr %autoload_supported, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool21.not = icmp eq i8 %.pr, 0
  br i1 %tobool21.not, label %if.end19.if.end45_crit_edge, label %land.lhs.true22

if.end19.if.end45_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true22:                                  ; preds = %if.end19
  %57 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx23, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %58, label %land.lhs.true22.if.end45_crit_edge [
    i32 720903, label %land.lhs.true22.land.lhs.true35_crit_edge
    i32 720907, label %land.lhs.true22.land.lhs.true35_crit_edge166
    i32 720908, label %land.lhs.true22.land.lhs.true35_crit_edge167
  ]

land.lhs.true22.land.lhs.true35_crit_edge167:     ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true35

land.lhs.true22.land.lhs.true35_crit_edge166:     ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true35

land.lhs.true22.land.lhs.true35_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true35

land.lhs.true22.if.end45_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true35:                                  ; preds = %land.lhs.true22.land.lhs.true35_crit_edge, %land.lhs.true22.land.lhs.true35_crit_edge166, %land.lhs.true22.land.lhs.true35_crit_edge167
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 8
  %.off = add i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %land.lhs.true35.for.inc_crit_edge, label %land.lhs.true35.if.end45_crit_edge

land.lhs.true35.if.end45_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end45:                                         ; preds = %land.lhs.true35.if.end45_crit_edge, %land.lhs.true22.if.end45_crit_edge, %if.end19.if.end45_crit_edge, %if.end50.i122.if.end45_crit_edge
  tail call fastcc void @psp_print_fw_hdr(ptr noundef %psp, ptr noundef %arrayidx)
  %call46 = tail call fastcc i32 @psp_execute_non_psp_fw_load(ptr noundef %psp, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %62 = ptrtoint ptr %autoload_supported to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %autoload_supported, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool51.not = icmp eq i8 %63, 0
  br i1 %tobool51.not, label %if.end49.for.inc_crit_edge, label %land.lhs.true52

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true52:                                  ; preds = %if.end49
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 8
  %66 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %virt, align 8
  %and = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool54.not, i32 22, i32 13
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %cond)
  %cmp55 = icmp eq i32 %65, %cond
  br i1 %cmp55, label %if.then56, label %land.lhs.true52.for.inc_crit_edge

land.lhs.true52.for.inc_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then56:                                        ; preds = %land.lhs.true52
  %68 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cmd1.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %70 = call ptr @memset(ptr %69, i32 0, i32 1024)
  %cmd_id.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %69, i32 0, i32 2
  %71 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 33, ptr %cmd_id.i, align 4
  %72 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call1.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %69, i64 noundef %73) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool58.not = icmp eq i32 %call1.i, 0
  br i1 %tobool58.not, label %if.then56.for.inc_crit_edge, label %if.then59

if.then56.for.inc_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.151) #10
  br label %cleanup

for.inc:                                          ; preds = %if.then56.for.inc_crit_edge, %land.lhs.true52.for.inc_crit_edge, %if.end49.for.inc_crit_edge, %land.lhs.true35.for.inc_crit_edge, %fw_load_skip_check.exit127.for.inc_crit_edge, %land.lhs.true10.i119.for.inc_crit_edge, %land.lhs.true10.i119.for.inc_crit_edge154, %land.lhs.true10.i119.for.inc_crit_edge155, %land.lhs.true10.i119.for.inc_crit_edge156, %land.lhs.true10.i119.for.inc_crit_edge157, %land.lhs.true10.i119.for.inc_crit_edge158, %land.lhs.true10.i119.for.inc_crit_edge159, %land.lhs.true10.i119.for.inc_crit_edge160, %land.lhs.true10.i119.for.inc_crit_edge161, %land.lhs.true10.i119.for.inc_crit_edge162, %land.lhs.true10.i119.for.inc_crit_edge163, %land.lhs.true10.i119.for.inc_crit_edge164, %land.lhs.true10.i119.for.inc_crit_edge165, %lor.lhs.false5.i114.for.inc_crit_edge, %lor.lhs.false.i111.for.inc_crit_edge, %cond.true.i108.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %if.then11.for.inc_crit_edge
  %inc = add nuw i32 %i.0136, 1
  %74 = ptrtoint ptr %max_ucodes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_ucodes, align 4
  %cmp = icmp ult i32 %inc, %75
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then59, %if.end45.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then59 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_rl_load(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.elt36 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 13, i32 2
  %0 = ptrtoint ptr %.elt36 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack37 = load i32, ptr %.elt36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack37)
  %tobool.not = icmp eq i32 %.unpack37, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %.elt38 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 13, i32 3
  %psp1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %cmd1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 2
  %1 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd1.i, align 8
  %mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %3 = call ptr @memset(ptr %2, i32 0, i32 1024)
  %fw_pri_buf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 6
  %4 = ptrtoint ptr %fw_pri_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_pri_buf, align 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 1048576)
  %7 = load ptr, ptr %fw_pri_buf, align 8
  %8 = ptrtoint ptr %.elt38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.elt38, align 4
  %10 = ptrtoint ptr %.elt36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %.elt36, align 8
  %12 = call ptr @memcpy(ptr %7, ptr %9, i32 %11)
  %cmd_id = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %cmd_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %cmd_id, align 4
  %fw_pri_mc_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 5
  %14 = ptrtoint ptr %fw_pri_mc_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fw_pri_mc_addr, align 8
  %conv = trunc i64 %15 to i32
  %cmd6 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %2, i32 0, i32 7
  %16 = ptrtoint ptr %cmd6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %cmd6, align 4
  %17 = load i64, ptr %fw_pri_mc_addr, align 8
  %shr = lshr i64 %17, 32
  %conv9 = trunc i64 %shr to i32
  %fw_phy_addr_hi = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %2, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %fw_phy_addr_hi to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv9, ptr %fw_phy_addr_hi, align 4
  %19 = load i32, ptr %.elt36, align 8
  %fw_size = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %2, i32 0, i32 7, i32 0, i32 2
  %20 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fw_size, align 4
  %fw_type = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %2, i32 0, i32 7, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %fw_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 67, ptr %fw_type, align 4
  %fence_buf_mc_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 22
  %22 = ptrtoint ptr %fence_buf_mc_addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fence_buf_mc_addr, align 8
  %call15 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %2, i64 noundef %23)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_ras_initialize(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %size_bytes = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 34, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %start_addr = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 34, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start_addr, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false.do.end_crit_edge, label %if.end10

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.152) #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @amdgpu_atomfirmware_dynamic_boot_config_supported(ptr noundef %1) #10
  br i1 %call, label %if.then11, label %if.end10.if.end66_crit_edge

if.end10.if.end66_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then11:                                        ; preds = %if.end10
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt, align 8
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i:                                         ; preds = %if.then11
  %psp1.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113
  %cmd1.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 2
  %12 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %14 = call ptr @memset(ptr %13, i32 0, i32 1024)
  %cmd_id.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %13, i32 0, i32 2
  %15 = ptrtoint ptr %cmd_id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 34, ptr %cmd_id.i, align 4
  %sub_cmd.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %13, i32 0, i32 7, i32 0, i32 1
  %16 = ptrtoint ptr %sub_cmd.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %sub_cmd.i, align 4
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 22
  %17 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call3.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1.i, ptr noundef null, ptr noundef %13, i64 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %psp_boot_config_get.exit.thread158, label %do.end17

psp_boot_config_get.exit.thread158:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %uresp.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %13, i32 0, i32 9, i32 6
  %19 = ptrtoint ptr %uresp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %uresp.i, align 4
  %and7.i = and i32 %20, 1
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  br label %if.end19

do.end17:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.156) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %psp_boot_config_get.exit.thread158, %if.then11.if.end19_crit_edge
  %boot_cfg.1157 = phi i32 [ 255, %do.end17 ], [ %and7.i, %psp_boot_config_get.exit.thread158 ], [ 255, %if.then11.if.end19_crit_edge ]
  %23 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %psp, align 8
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %24, i32 0, i32 113, i32 34, i32 1
  %25 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i151 = icmp eq ptr %26, null
  br i1 %tobool.not.i151, label %if.end19.if.then23_crit_edge, label %amdgpu_ras_is_supported.exit

if.end19.if.then23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

amdgpu_ras_is_supported.exit:                     ; preds = %if.end19
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %24, i32 0, i32 167
  %27 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ras_enabled.i, align 8
  %and.i152 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152)
  %tobool22.not = icmp eq i32 %and.i152, 0
  br i1 %tobool22.not, label %amdgpu_ras_is_supported.exit.if.then23_crit_edge, label %if.else44

amdgpu_ras_is_supported.exit.if.then23_crit_edge: ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then23:                                        ; preds = %amdgpu_ras_is_supported.exit.if.then23_crit_edge, %if.end19.if.then23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot_cfg.1157)
  %tobool24.not = icmp eq i32 %boot_cfg.1157, 0
  br i1 %tobool24.not, label %do.end28, label %if.else

do.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.159) #13
  br label %if.end66

if.else:                                          ; preds = %if.then23
  %call30 = tail call fastcc i32 @psp_boot_config_set(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  br i1 %tobool31.not, label %do.end40, label %do.end35

do.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.162) #13
  br label %if.end66

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.165) #13
  br label %if.end66

if.else44:                                        ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boot_cfg.1157)
  %cmp = icmp eq i32 %boot_cfg.1157, 1
  br i1 %cmp, label %do.end48, label %if.else50

do.end48:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.168) #13
  br label %if.end66

if.else50:                                        ; preds = %if.else44
  %call51 = tail call fastcc i32 @psp_boot_config_set(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  br i1 %tobool52.not, label %do.end61, label %do.end56

do.end56:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.162) #13
  br label %if.end66

do.end61:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.173) #13
  br label %if.end66

if.end66:                                         ; preds = %do.end61, %do.end56, %do.end48, %do.end40, %do.end35, %do.end28, %if.end10.if.end66_crit_edge
  %ras_context67 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34
  %shared_mem_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %shared_mem_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16384, ptr %shared_mem_size, align 4
  %ta_load_type = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 4
  %38 = ptrtoint ptr %ta_load_type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %ta_load_type, align 8
  %39 = ptrtoint ptr %ras_context67 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ras_context67, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool73.not = icmp eq i8 %40, 0
  br i1 %tobool73.not, label %if.then74, label %if.end66.if.end79_crit_edge

if.end66.if.end79_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then74:                                        ; preds = %if.end66
  %mem_context.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 2
  %41 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %psp, align 8
  %shared_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 2, i32 1
  %shared_buf.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 2, i32 2
  %call.i.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %42, i32 noundef 16384, i32 noundef 4096, i32 noundef 4, ptr noundef %mem_context.i, ptr noundef %shared_mc_addr.i.i, ptr noundef %shared_buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool76.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool76.not, label %if.then74.if.end79_crit_edge, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then74.if.end79_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.end79:                                         ; preds = %if.then74.if.end79_crit_edge, %if.end66.if.end79_crit_edge
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %shared_buf, align 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 2064)
  %call83 = tail call zeroext i1 @amdgpu_ras_is_poison_mode_supported(ptr noundef %1) #10
  br i1 %call83, label %if.then84, label %if.end79.if.end85_crit_edge

if.end79.if.end85_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %ras_in_message = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %44, i32 0, i32 4
  %46 = ptrtoint ptr %ras_in_message to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %ras_in_message, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end79.if.end85_crit_edge
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 39, i32 8
  %47 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %connected_to_cpu, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool86.not = icmp eq i8 %48, 0
  br i1 %tobool86.not, label %if.then87, label %if.end85.if.end89_crit_edge

if.end85.if.end89_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %ras_in_message88 = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %44, i32 0, i32 4
  %dgpu_mode = getelementptr inbounds %struct.ta_ras_init_flags, ptr %ras_in_message88, i32 0, i32 1
  %49 = ptrtoint ptr %dgpu_mode to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %dgpu_mode, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end85.if.end89_crit_edge
  %call.i = tail call fastcc i32 @psp_ta_load(ptr noundef %psp, ptr noundef %ras_context67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool91.not = icmp eq i32 %call.i, 0
  br i1 %tobool91.not, label %land.lhs.true, label %if.end89.if.else97_crit_edge

if.end89.if.else97_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else97

land.lhs.true:                                    ; preds = %if.end89
  %ras_status = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %44, i32 0, i32 2
  %50 = ptrtoint ptr %ras_status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ras_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool92.not = icmp eq i32 %51, 0
  br i1 %tobool92.not, label %if.then93, label %land.lhs.true.if.else97_crit_edge

land.lhs.true.if.else97_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else97

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %ras_context67 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %ras_context67, align 8
  br label %cleanup

if.else97:                                        ; preds = %land.lhs.true.if.else97_crit_edge, %if.end89.if.else97_crit_edge
  %ras_status98 = getelementptr inbounds %struct.ta_ras_shared_memory, ptr %44, i32 0, i32 2
  %53 = ptrtoint ptr %ras_status98 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ras_status98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool99.not = icmp eq i32 %54, 0
  br i1 %tobool99.not, label %if.else97.if.end107_crit_edge, label %do.end103

if.else97.if.end107_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

do.end103:                                        ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %psp, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.176, i32 noundef %54) #13
  br label %if.end107

if.end107:                                        ; preds = %do.end103, %if.else97.if.end107_crit_edge
  %59 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %psp, align 8
  %call109 = tail call i32 @amdgpu_ras_fini(ptr noundef %60) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.then93, %if.then74.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then74.cleanup_crit_edge ], [ %call.i, %if.end107 ], [ 0, %if.then93 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_hdcp_initialize(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdcp_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35
  %size_bytes = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %start_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start_addr, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.178) #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %shared_mem_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %shared_mem_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16384, ptr %shared_mem_size, align 4
  %ta_load_type = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 4
  %11 = ptrtoint ptr %ta_load_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ta_load_type, align 8
  %12 = ptrtoint ptr %hdcp_context to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdcp_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.then16, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end8
  %mem_context.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 2
  %shared_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 2, i32 1
  %shared_buf.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 2, i32 2
  %call.i.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %1, i32 noundef 16384, i32 noundef 4096, i32 noundef 4, ptr noundef %mem_context.i, ptr noundef %shared_mc_addr.i.i, ptr noundef %shared_buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then16.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %call.i = tail call fastcc i32 @psp_ta_load(ptr noundef %psp, ptr noundef %hdcp_context) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %hdcp_context to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %hdcp_context, align 8
  %mutex = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.180, ptr noundef nonnull @psp_hdcp_initialize.__key) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end20.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then16.cleanup_crit_edge ], [ 0, %if.then23 ], [ %call.i, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_dtm_initialize(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtm_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36
  %size_bytes = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %start_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start_addr, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.181) #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %shared_mem_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %shared_mem_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16384, ptr %shared_mem_size, align 4
  %ta_load_type = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 4
  %11 = ptrtoint ptr %ta_load_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ta_load_type, align 8
  %12 = ptrtoint ptr %dtm_context to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dtm_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.then16, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end8
  %mem_context.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 2
  %shared_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 2, i32 1
  %shared_buf.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 2, i32 2
  %call.i.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %1, i32 noundef 16384, i32 noundef 4096, i32 noundef 4, ptr noundef %mem_context.i, ptr noundef %shared_mc_addr.i.i, ptr noundef %shared_buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then16.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %call.i = tail call fastcc i32 @psp_ta_load(ptr noundef %psp, ptr noundef %dtm_context) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dtm_context to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dtm_context, align 8
  %mutex = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.183, ptr noundef nonnull @psp_dtm_initialize.__key) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end20.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then16.cleanup_crit_edge ], [ 0, %if.then23 ], [ %call.i, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_rap_initialize(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %status, align 4
  %1 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 132
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rap_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37
  %size_bytes = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %start_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %start_addr, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.184) #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %shared_mem_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %shared_mem_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16384, ptr %shared_mem_size, align 4
  %ta_load_type = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 4
  %12 = ptrtoint ptr %ta_load_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %ta_load_type, align 8
  %13 = ptrtoint ptr %rap_context to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rap_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end8
  %mem_context.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 2
  %shared_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 2, i32 1
  %shared_buf.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 2, i32 2
  %call.i.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %2, i32 noundef 16384, i32 noundef 4096, i32 noundef 4, ptr noundef %mem_context.i, ptr noundef %shared_mc_addr.i.i, ptr noundef %shared_buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then16.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %call.i = tail call fastcc i32 @psp_ta_load(ptr noundef %psp, ptr noundef %rap_context) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  %15 = ptrtoint ptr %rap_context to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rap_context, align 8
  %mutex = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.186, ptr noundef nonnull @psp_rap_initialize.__key) #10
  %call32 = call i32 @psp_rap_invoke(ptr noundef %psp, i32 noundef 1, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %if.then23.if.then35_crit_edge

if.then23.if.then35_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

lor.lhs.false34:                                  ; preds = %if.then23
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not = icmp eq i32 %17, 1
  br i1 %cmp.not, label %lor.lhs.false34.cleanup_crit_edge, label %lor.lhs.false34.if.then35_crit_edge

lor.lhs.false34.if.then35_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %lor.lhs.false34.if.then35_crit_edge, %if.then23.if.then35_crit_edge
  %call36 = call fastcc i32 @psp_rap_terminate(ptr noundef %psp)
  %18 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %psp, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.188, i32 noundef %call32, i32 noundef %23) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %lor.lhs.false34.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.then35 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then16.cleanup_crit_edge ], [ %call.i, %if.end20.cleanup_crit_edge ], [ 0, %lor.lhs.false34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_securedisplay_initialize(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  %securedisplay_cmd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %securedisplay_cmd) #10
  %0 = ptrtoint ptr %securedisplay_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %securedisplay_cmd, align 4, !annotation !435
  %1 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 132
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %securedisplay_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38
  %size_bytes = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %start_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %start_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %start_addr, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %lor.lhs.false.do.end_crit_edge, label %if.end8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.190) #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %shared_mem_size = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %shared_mem_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16384, ptr %shared_mem_size, align 4
  %ta_load_type = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 4
  %12 = ptrtoint ptr %ta_load_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %ta_load_type, align 8
  %13 = ptrtoint ptr %securedisplay_context to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %securedisplay_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end8
  %mem_context.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 2
  %shared_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 2, i32 1
  %shared_buf.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 2, i32 2
  %call.i.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %2, i32 noundef 16384, i32 noundef 4096, i32 noundef 4, ptr noundef %mem_context.i, ptr noundef %shared_mc_addr.i.i, ptr noundef %shared_buf.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then16.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %call.i = tail call fastcc i32 @psp_ta_load(ptr noundef %psp, ptr noundef %securedisplay_context) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  %15 = ptrtoint ptr %securedisplay_context to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %securedisplay_context, align 8
  %mutex = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.192, ptr noundef nonnull @psp_securedisplay_initialize.__key) #10
  call void @psp_prep_securedisplay_cmd_buf(ptr noundef %psp, ptr noundef nonnull %securedisplay_cmd, i32 noundef 1) #10
  %16 = ptrtoint ptr %securedisplay_context to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %securedisplay_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.not = icmp eq i8 %17, 0
  br i1 %tobool.not.i.not, label %if.then23.if.then34_crit_edge, label %psp_securedisplay_invoke.exit

if.then23.if.then34_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

psp_securedisplay_invoke.exit:                    ; preds = %if.then23
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %18 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %20 = call ptr @memset(ptr %19, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 1
  %21 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %19, i32 0, i32 7
  %24 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %cmd1.i6.i.i, align 4
  %ta_cmd_id4.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %19, i32 0, i32 7, i32 0, i32 1
  %25 = ptrtoint ptr %ta_cmd_id4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %ta_cmd_id4.i.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %26 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %19, i64 noundef %27) #10
  call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool33.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool33.not, label %if.end41, label %psp_securedisplay_invoke.exit.if.then34_crit_edge

psp_securedisplay_invoke.exit.if.then34_crit_edge: ; preds = %psp_securedisplay_invoke.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.then34:                                        ; preds = %psp_securedisplay_invoke.exit.if.then34_crit_edge, %if.then23.if.then34_crit_edge
  %call35 = call fastcc i32 @psp_securedisplay_terminate(ptr noundef %psp)
  %28 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %psp, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.194) #13
  br label %cleanup

if.end41:                                         ; preds = %psp_securedisplay_invoke.exit
  %32 = ptrtoint ptr %securedisplay_cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %securedisplay_cmd, align 4
  %status = getelementptr inbounds %struct.securedisplay_cmd, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not = icmp eq i32 %35, 0
  br i1 %cmp.not, label %if.end41.cleanup_crit_edge, label %if.then42

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  call void @psp_securedisplay_parse_resp_status(ptr noundef %psp, i32 noundef %35) #10
  %36 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %psp, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %40 = ptrtoint ptr %securedisplay_cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %securedisplay_cmd, align 4
  %securedisplay_out_message = getelementptr inbounds %struct.securedisplay_cmd, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %securedisplay_out_message to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %securedisplay_out_message, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.197, i32 noundef %43) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end41.cleanup_crit_edge, %if.then34, %if.end20.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then34 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then16.cleanup_crit_edge ], [ %call.i, %if.end20.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %securedisplay_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_load_smu_fw(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 0, i32 24
  %ras3 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 34, i32 1
  %2 = ptrtoint ptr %ras3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras3, align 8
  %fw = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 0, i32 24, i32 1
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  %tobool7.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.end.if.end24_crit_edge, label %land.lhs.true8

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true8:                                   ; preds = %if.end
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 167
  %10 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end24_crit_edge, label %land.lhs.true10

land.lhs.true8.if.end24_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 14
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx11, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %13, label %land.lhs.true10.if.end24_crit_edge [
    i32 720900, label %land.lhs.true10.if.then18_crit_edge
    i32 720898, label %land.lhs.true10.if.then18_crit_edge43
  ]

land.lhs.true10.if.then18_crit_edge43:            ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

land.lhs.true10.if.then18_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

land.lhs.true10.if.end24_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then18:                                        ; preds = %land.lhs.true10.if.then18_crit_edge, %land.lhs.true10.if.then18_crit_edge43
  %call19 = tail call i32 @amdgpu_dpm_set_mp1_state(ptr noundef %1, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end24_crit_edge, label %do.end

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.then18.if.end24_crit_edge, %land.lhs.true10.if.end24_crit_edge, %land.lhs.true8.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %call25 = tail call fastcc i32 @psp_execute_non_psp_fw_load(ptr noundef %psp, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.then27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.148) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end24.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call25, %if.then27 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_set_mp1_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_vram_pa(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atomfirmware_dynamic_boot_config_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_boot_config_set(ptr noundef %adev, i32 noundef %boot_cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
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
  call void @__sanitizer_cov_trace_pc() #12
  %psp1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %cmd1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 2
  %2 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1.i, align 8
  %mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %4 = call ptr @memset(ptr %3, i32 0, i32 1024)
  %cmd_id = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %cmd_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 34, ptr %cmd_id, align 4
  %sub_cmd = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %sub_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %sub_cmd, align 4
  %boot_config = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 7, i32 0, i32 2
  %7 = ptrtoint ptr %boot_config to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %boot_cfg, ptr %boot_config, align 4
  %boot_config_valid = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 7, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %boot_config_valid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %boot_cfg, ptr %boot_config_valid, align 4
  %fence_buf_mc_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 22
  %9 = ptrtoint ptr %fence_buf_mc_addr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fence_buf_mc_addr, align 8
  %call5 = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp1, ptr noundef null, ptr noundef %3, i64 noundef %10)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_ras_is_poison_mode_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_rap_terminate(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rap_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37
  %0 = ptrtoint ptr %rap_context to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rap_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %2 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %4 = call ptr @memset(ptr %3, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 1
  %5 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %cmd1.i6.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %9 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %3, i64 noundef %10) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  %11 = ptrtoint ptr %rap_context to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rap_context, align 8
  %mem_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 2
  %shared_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 2, i32 1
  %shared_buf.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 37, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context, ptr noundef %shared_mc_addr.i, ptr noundef %shared_buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_prep_securedisplay_cmd_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_securedisplay_terminate(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %securedisplay_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38
  %4 = ptrtoint ptr %securedisplay_context to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %securedisplay_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %6 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %8 = call ptr @memset(ptr %7, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 1
  %9 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %cmd1.i6.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %13 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %7, i64 noundef %14) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool4.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %securedisplay_context to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %securedisplay_context, align 8
  %mem_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 2
  %shared_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 2, i32 1
  %shared_buf.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 38, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context, ptr noundef %shared_mc_addr.i, ptr noundef %shared_buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i.i, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psp_securedisplay_parse_resp_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_dtm_terminate(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtm_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36
  %4 = ptrtoint ptr %dtm_context to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dtm_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared_buf, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %8 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %10 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 1
  %11 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %cmd1.i6.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %15 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %9, i64 noundef %16) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool8.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dtm_context to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %dtm_context, align 8
  br label %out

out:                                              ; preds = %if.end10, %if.then2.out_crit_edge
  %mem_context16 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 2
  %shared_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 2, i32 1
  %shared_buf.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 36, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context16, ptr noundef %shared_mc_addr.i, ptr noundef %shared_buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %call1.i.i, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_hdcp_terminate(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdcp_context = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35
  %4 = ptrtoint ptr %hdcp_context to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdcp_context, align 8, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %shared_buf = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %shared_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared_buf, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmd1.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %8 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd1.i.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #10
  %10 = call ptr @memset(ptr %9, i32 0, i32 1024)
  %session_id.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 1
  %11 = ptrtoint ptr %session_id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %session_id.i.i, align 4
  %cmd_id.i.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %cmd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %cmd_id.i.i.i, align 4
  %cmd1.i6.i.i = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %cmd1.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %cmd1.i6.i.i, align 4
  %fence_buf_mc_addr.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %15 = ptrtoint ptr %fence_buf_mc_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fence_buf_mc_addr.i.i, align 8
  %call1.i.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %9, i64 noundef %16) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool8.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %hdcp_context to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %hdcp_context, align 8
  br label %out

out:                                              ; preds = %if.end10, %if.then2.out_crit_edge
  %mem_context16 = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 2
  %shared_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 2, i32 1
  %shared_buf.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 35, i32 0, i32 2, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mem_context16, ptr noundef %shared_mc_addr.i, ptr noundef %shared_buf.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %call1.i.i, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psp_tmr_terminate(ptr noundef %psp) unnamed_addr #0 align 64 {
entry:
  %tmr_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmr_buf) #10
  %0 = ptrtoint ptr %tmr_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmr_buf, align 4, !annotation !435
  %cmd1.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 2
  %1 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %3 = call ptr @memset(ptr %2, i32 0, i32 1024)
  %4 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psp, align 8
  %virt.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 132
  %6 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i.i, align 8
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 7, i32 10
  %8 = getelementptr inbounds %struct.psp_gfx_cmd_resp, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.i.i, ptr %8, align 4
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199) #13
  %fence_buf_mc_addr.i = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 22
  %10 = ptrtoint ptr %fence_buf_mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fence_buf_mc_addr.i, align 8
  %call2.i = tail call fastcc i32 @psp_cmd_submit_buf(ptr noundef %psp, ptr noundef null, ptr noundef %2, i64 noundef %11) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psp, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %13, i32 0, i32 132
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %tmr_buf. = select i1 %tobool1.not, ptr null, ptr %tmr_buf
  %tmr_bo = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 17
  %tmr_mc_addr = getelementptr inbounds %struct.psp_context, ptr %psp, i32 0, i32 18
  call void @amdgpu_bo_free_kernel(ptr noundef %tmr_bo, ptr noundef %tmr_mc_addr, ptr noundef %tmr_buf.) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmr_buf) #10
  ret i32 %call2.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 226)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 226)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !174, !176, !178, !180, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !199, !201, !203, !205, !206, !208, !209, !210, !211, !213, !215, !217, !218, !219, !221, !223, !225, !227, !229, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !281, !282, !283, !285, !287, !288, !289, !290, !292, !294, !295, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !334, !336, !337, !339, !340, !341, !342, !344, !345, !347, !348, !349, !350, !352, !353, !355, !356, !357, !359, !360, !361, !362, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !399, !400, !401, !403, !404, !405, !407, !408, !410, !411, !413, !414, !416, !417, !419, !420, !422, !423}
!llvm.module.flags = !{!425, !426, !427, !428, !429, !430, !431, !432}
!llvm.ident = !{!433}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 891, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1338, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @psp_ras_invoke._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @psp_ras_invoke._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1344, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @psp_ras_invoke._entry.4, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @psp_ras_invoke._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1349, i32 4}
!16 = !{ptr @psp_ras_invoke._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @psp_ras_invoke._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2784, i32 3}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2786, i32 3}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2816, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @psp_init_asd_microcode._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @psp_init_asd_microcode._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2820, i32 37}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2837, i32 2}
!32 = !{ptr @psp_init_asd_microcode._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @psp_init_asd_microcode._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2852, i32 3}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @psp_init_toc_microcode._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @psp_init_toc_microcode._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2856, i32 37}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2873, i32 2}
!43 = !{ptr @psp_init_toc_microcode._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @psp_init_toc_microcode._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3017, i32 3}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @psp_init_sos_microcode._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @psp_init_sos_microcode._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3021, i32 37}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3076, i32 4}
!54 = !{ptr @psp_init_sos_microcode._entry.30, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @psp_init_sos_microcode._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3090, i32 3}
!58 = !{ptr @psp_init_sos_microcode._entry.33, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @psp_init_sos_microcode._entry_ptr.35, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3098, i32 2}
!62 = !{ptr @psp_init_sos_microcode._entry.36, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @psp_init_sos_microcode._entry_ptr.38, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3177, i32 3}
!66 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @psp_init_ta_microcode._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @psp_init_ta_microcode._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3181, i32 37}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3193, i32 3}
!73 = !{ptr @psp_init_ta_microcode._entry.42, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @psp_init_ta_microcode._entry_ptr.44, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3199, i32 3}
!77 = !{ptr @psp_init_ta_microcode._entry.45, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @psp_init_ta_microcode._entry_ptr.47, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3214, i32 2}
!81 = !{ptr @psp_init_ta_microcode._entry.48, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @psp_init_ta_microcode._entry_ptr.50, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3337, i32 10}
!85 = !{ptr @psp_ip_funcs, !86, !"psp_ip_funcs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3336, i32 27}
!87 = !{ptr @psp_v3_1_ip_block, !88, !"psp_v3_1_ip_block", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3369, i32 38}
!89 = !{ptr @psp_v10_0_ip_block, !90, !"psp_v10_0_ip_block", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3378, i32 38}
!91 = !{ptr @psp_v11_0_ip_block, !92, !"psp_v11_0_ip_block", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3387, i32 38}
!93 = !{ptr @psp_v11_0_8_ip_block, !94, !"psp_v11_0_8_ip_block", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3396, i32 38}
!95 = !{ptr @psp_v12_0_ip_block, !96, !"psp_v12_0_ip_block", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3404, i32 38}
!97 = !{ptr @psp_v13_0_ip_block, !98, !"psp_v13_0_ip_block", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3413, i32 38}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 489, i32 4}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @psp_cmd_submit_buf._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @psp_cmd_submit_buf._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 491, i32 3}
!106 = !{ptr @psp_cmd_submit_buf._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @psp_cmd_submit_buf._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 396, i32 10}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 398, i32 10}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 400, i32 10}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 402, i32 10}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 404, i32 10}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 406, i32 10}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 408, i32 10}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 410, i32 10}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 412, i32 10}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 414, i32 10}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 416, i32 10}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 418, i32 10}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 420, i32 10}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 422, i32 10}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 424, i32 10}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 426, i32 10}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1302, i32 3}
!142 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @psp_ras_ta_check_status._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @psp_ras_ta_check_status._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1306, i32 3}
!147 = !{ptr @psp_ras_ta_check_status._entry.75, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @psp_ras_ta_check_status._entry_ptr.77, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1312, i32 3}
!151 = !{ptr @psp_ras_ta_check_status._entry.78, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @psp_ras_ta_check_status._entry_ptr.80, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2225, i32 3}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2995, i32 3}
!157 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @psp_init_sos_base_fw._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @psp_init_sos_base_fw._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2948, i32 3}
!162 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @parse_sos_bin_descriptor._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @parse_sos_bin_descriptor._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3160, i32 3}
!167 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @parse_ta_bin_descriptor._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @parse_ta_bin_descriptor._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 272, i32 3}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 279, i32 4}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 284, i32 36}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 286, i32 4}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 315, i32 4}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 321, i32 4}
!182 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 223, i32 3}
!184 = !{ptr @.str.95, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @psp_get_runtime_db_entry._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @psp_get_runtime_db_entry._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 233, i32 3}
!189 = !{ptr @psp_get_runtime_db_entry._entry.96, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @psp_get_runtime_db_entry._entry_ptr.98, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 244, i32 6}
!193 = !{ptr @psp_get_runtime_db_entry._entry.99, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @psp_get_runtime_db_entry._entry_ptr.101, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 171, i32 3}
!197 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 177, i32 3}
!199 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 182, i32 2}
!201 = !{ptr @.str.105, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3359, i32 3}
!203 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3327, i32 8}
!205 = !{ptr @dev_attr_usbc_pd_fw, !204, !"dev_attr_usbc_pd_fw", i1 false, i1 false}
!206 = !{ptr @.str.107, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3242, i32 3}
!208 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @psp_usbc_pd_fw_sysfs_read._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @psp_usbc_pd_fw_sysfs_read._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.109, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3251, i32 3}
!213 = !{ptr @.str.110, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3255, i32 25}
!215 = !{ptr @.str.111, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3273, i32 3}
!217 = !{ptr @psp_usbc_pd_fw_sysfs_write._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @psp_usbc_pd_fw_sysfs_write._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3280, i32 37}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 3306, i32 3}
!223 = !{ptr @.str.114, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2525, i32 3}
!225 = !{ptr @.str.115, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2434, i32 3}
!227 = !{ptr @.str.116, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2449, i32 3}
!229 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2455, i32 3}
!231 = !{ptr @.str.118, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2466, i32 5}
!233 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @psp_load_fw._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @psp_load_fw._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.121, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2474, i32 4}
!238 = !{ptr @psp_load_fw._entry.120, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @psp_load_fw._entry_ptr.122, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2479, i32 4}
!242 = !{ptr @psp_load_fw._entry.123, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @psp_load_fw._entry_ptr.125, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.127, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2484, i32 4}
!246 = !{ptr @psp_load_fw._entry.126, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @psp_load_fw._entry_ptr.128, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.130, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2489, i32 4}
!250 = !{ptr @psp_load_fw._entry.129, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @psp_load_fw._entry_ptr.131, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.133, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2494, i32 4}
!254 = !{ptr @psp_load_fw._entry.132, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @psp_load_fw._entry_ptr.134, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.135, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1954, i32 5}
!258 = !{ptr @.str.136, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1963, i32 5}
!260 = !{ptr @.str.137, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1972, i32 5}
!262 = !{ptr @.str.138, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1981, i32 5}
!264 = !{ptr @.str.139, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1990, i32 5}
!266 = !{ptr @.str.140, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1999, i32 5}
!268 = !{ptr @.str.141, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2008, i32 5}
!270 = !{ptr @.str.142, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2016, i32 3}
!272 = !{ptr @.str.143, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2025, i32 3}
!274 = !{ptr @.str.144, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2043, i32 3}
!276 = !{ptr @.str.145, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 602, i32 4}
!278 = !{ptr @.str.146, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2264, i32 4}
!280 = !{ptr @.str.147, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @psp_load_smu_fw._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @psp_load_smu_fw._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.148, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2271, i32 3}
!285 = !{ptr @.str.149, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 641, i32 2}
!287 = !{ptr @.str.150, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @psp_tmr_load._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @psp_tmr_load._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.151, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2379, i32 5}
!292 = !{ptr @.str.152, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1424, i32 3}
!294 = !{ptr @.str.153, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.154, !293, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @psp_ras_initialize._entry, !293, !"_entry", i1 false, i1 false}
!297 = !{ptr @psp_ras_initialize._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.156, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1434, i32 4}
!300 = !{ptr @psp_ras_initialize._entry.155, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @psp_ras_initialize._entry_ptr.157, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.159, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1438, i32 5}
!304 = !{ptr @psp_ras_initialize._entry.158, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @psp_ras_initialize._entry_ptr.160, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.162, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1447, i32 6}
!308 = !{ptr @psp_ras_initialize._entry.161, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @psp_ras_initialize._entry_ptr.163, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.165, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1449, i32 6}
!312 = !{ptr @psp_ras_initialize._entry.164, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @psp_ras_initialize._entry_ptr.166, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.168, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1454, i32 5}
!316 = !{ptr @psp_ras_initialize._entry.167, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @psp_ras_initialize._entry_ptr.169, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @psp_ras_initialize._entry.170, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1462, i32 6}
!320 = !{ptr @psp_ras_initialize._entry_ptr.171, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.173, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1464, i32 6}
!323 = !{ptr @psp_ras_initialize._entry.172, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @psp_ras_initialize._entry_ptr.174, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.176, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1492, i32 4}
!327 = !{ptr @psp_ras_initialize._entry.175, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @psp_ras_initialize._entry_ptr.177, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.178, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1553, i32 3}
!331 = !{ptr @.str.179, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @psp_hdcp_initialize._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @psp_hdcp_initialize._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @psp_hdcp_initialize.__key, !335, !"__key", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1569, i32 3}
!336 = !{ptr @.str.180, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @.str.181, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1645, i32 3}
!339 = !{ptr @.str.182, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @psp_dtm_initialize._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @psp_dtm_initialize._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @psp_dtm_initialize.__key, !343, !"__key", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1661, i32 3}
!344 = !{ptr @.str.183, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.184, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1743, i32 3}
!347 = !{ptr @.str.185, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @psp_rap_initialize._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @psp_rap_initialize._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @psp_rap_initialize.__key, !351, !"__key", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1759, i32 3}
!352 = !{ptr @.str.186, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.188, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1767, i32 3}
!355 = !{ptr @psp_rap_initialize._entry.187, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @psp_rap_initialize._entry_ptr.189, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.190, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1858, i32 3}
!359 = !{ptr @.str.191, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @psp_securedisplay_initialize._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @psp_securedisplay_initialize._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @psp_securedisplay_initialize.__key, !363, !"__key", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1875, i32 3}
!364 = !{ptr @.str.192, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.194, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1885, i32 3}
!367 = !{ptr @psp_securedisplay_initialize._entry.193, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @psp_securedisplay_initialize._entry_ptr.195, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.197, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 1891, i32 3}
!371 = !{ptr @psp_securedisplay_initialize._entry.196, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @psp_securedisplay_initialize._entry_ptr.198, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.199, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 667, i32 2}
!375 = !{ptr @.str.200, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @psp_tmr_unload._entry, !374, !"_entry", i1 false, i1 false}
!377 = !{ptr @psp_tmr_unload._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.201, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2576, i32 4}
!380 = !{ptr @.str.202, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2584, i32 4}
!382 = !{ptr @.str.203, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2589, i32 4}
!384 = !{ptr @.str.204, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2594, i32 4}
!386 = !{ptr @.str.205, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2599, i32 4}
!388 = !{ptr @.str.206, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2604, i32 4}
!390 = !{ptr @.str.207, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2611, i32 3}
!392 = !{ptr @.str.208, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2617, i32 3}
!394 = !{ptr @.str.209, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2623, i32 3}
!396 = !{ptr @.str.210, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2636, i32 2}
!398 = !{ptr @.str.211, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @psp_resume._entry, !397, !"_entry", i1 false, i1 false}
!400 = !{ptr @psp_resume._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.213, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2664, i32 3}
!403 = !{ptr @psp_resume._entry.212, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @psp_resume._entry_ptr.214, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @psp_resume._entry.215, !406, !"_entry", i1 false, i1 false}
!406 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2674, i32 4}
!407 = !{ptr @psp_resume._entry_ptr.216, !406, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @psp_resume._entry.217, !409, !"_entry", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2681, i32 4}
!410 = !{ptr @psp_resume._entry_ptr.218, !409, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @psp_resume._entry.219, !412, !"_entry", i1 false, i1 false}
!412 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2686, i32 4}
!413 = !{ptr @psp_resume._entry_ptr.220, !412, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @psp_resume._entry.221, !415, !"_entry", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2691, i32 4}
!416 = !{ptr @psp_resume._entry_ptr.222, !415, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @psp_resume._entry.223, !418, !"_entry", i1 false, i1 false}
!418 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2696, i32 4}
!419 = !{ptr @psp_resume._entry_ptr.224, !418, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @psp_resume._entry.225, !421, !"_entry", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2701, i32 4}
!422 = !{ptr @psp_resume._entry_ptr.226, !421, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.227, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c", i32 2710, i32 2}
!425 = !{i32 1, !"wchar_size", i32 2}
!426 = !{i32 1, !"min_enum_size", i32 4}
!427 = !{i32 8, !"branch-target-enforcement", i32 0}
!428 = !{i32 8, !"sign-return-address", i32 0}
!429 = !{i32 8, !"sign-return-address-all", i32 0}
!430 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!431 = !{i32 7, !"uwtable", i32 1}
!432 = !{i32 7, !"frame-pointer", i32 2}
!433 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!434 = !{i8 0, i8 2}
!435 = !{!"auto-init"}
!436 = !{i64 2148734463}
!437 = !{i64 2148649748, i64 2148649780, i64 2148649809, i64 2148649843, i64 2148649874, i64 2148649897}
!438 = !{i64 2148734692}
!439 = !{i64 2148651493, i64 2148651519, i64 2148651548, i64 2148651582, i64 2148651613, i64 2148651636}
