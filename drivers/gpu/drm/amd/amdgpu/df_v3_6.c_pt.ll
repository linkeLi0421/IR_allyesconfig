; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/df_v3_6.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/df_v3_6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_df_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_nbio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@df_v3_6_funcs = dso_local constant { %struct.amdgpu_df_funcs, [40 x i8] } { %struct.amdgpu_df_funcs { ptr @df_v3_6_sw_init, ptr @df_v3_6_sw_fini, ptr @df_v3_6_enable_broadcast_mode, ptr @df_v3_6_get_fb_channel_number, ptr @df_v3_6_get_hbm_channel_number, ptr @df_v3_6_update_medium_grain_clock_gating, ptr @df_v3_6_get_clockgating_state, ptr null, ptr @df_v3_6_pmc_start, ptr @df_v3_6_pmc_stop, ptr @df_v3_6_pmc_get_count, ptr @df_v3_6_get_fica, ptr @df_v3_6_set_fica, ptr @df_v3_6_query_ras_poison_mode }, [40 x i8] zeroinitializer }, align 32
@dev_attr_df_cntr_avail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @df_v3_6_get_df_cntr_avail, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to create file for available df counters\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"df_cntr_avail\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@df_v3_6_channel_number = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 2, i32 0, i32 4, i32 0, i32 8, i32 0, i32 16, i32 32, i32 0, i32 0, i32 0, i32 2, i32 4, i32 8], [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"config=%llx addr=%08x:%08x val=%08x:%08x\00", [55 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@df_v3_6_query_ras_poison_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 665, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: DF poison setting is inconsistent(%d:%d:%d:%d)!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"df_v3_6_query_ras_poison_mode\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/amd/amdgpu/df_v3_6.c\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@df_v3_6_query_ras_poison_mode._entry_ptr = internal global ptr @df_v3_6_query_ras_poison_mode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 23]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 23]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 23]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"df_v3_6_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 670, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"dev_attr_df_cntr_avail\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 247, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 212, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 208, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"df_v3_6_channel_number\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 42, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 436, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [40 x i8] c"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 664, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @df_v3_6_query_ras_poison_mode._entry, ptr @df_v3_6_query_ras_poison_mode._entry_ptr, ptr @df_v3_6_funcs, ptr @dev_attr_df_cntr_avail, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @df_v3_6_channel_number, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @df_v3_6_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_df_cntr_avail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @df_v3_6_channel_number to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @df_v3_6_query_ras_poison_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @df_v3_6_sw_init(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %call = tail call i32 @device_create_file(ptr noundef %1, ptr noundef nonnull @dev_attr_df_cntr_avail) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %uglygep = getelementptr i8, ptr %adev, i32 91448
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 32)
  %df.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120
  %3 = ptrtoint ptr %df.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %df.i, align 8
  %hash_2m.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120, i32 0, i32 1
  %4 = ptrtoint ptr %hash_2m.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hash_2m.i, align 1
  %hash_1g.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120, i32 0, i32 2
  %5 = ptrtoint ptr %hash_1g.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %hash_1g.i, align 2
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %7)
  %cmp.i = icmp eq i32 %7, 23
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.lor.lhs.false.i_crit_edge

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120, i32 1
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %get_fb_channel_number.i = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %get_fb_channel_number.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_fb_channel_number.i, align 4
  %call.i = tail call i32 %11(ptr noundef %adev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call.i)
  %cmp6.i = icmp eq i32 %call.i, 14
  br i1 %cmp6.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.falsethread-pre-split.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.falsethread-pre-split.i:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load i32, ptr %asic_type.i, align 8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.falsethread-pre-split.i, %if.end.lor.lhs.false.i_crit_edge
  %13 = phi i32 [ %.pr.i, %lor.lhs.falsethread-pre-split.i ], [ %7, %if.end.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %13)
  %cmp8.i = icmp eq i32 %13, 25
  br i1 %cmp8.i, label %land.lhs.true9.i, label %lor.lhs.false.i.df_v3_6_query_hashes.exit_crit_edge

lor.lhs.false.i.df_v3_6_query_hashes.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %df_v3_6_query_hashes.exit

land.lhs.true9.i:                                 ; preds = %lor.lhs.false.i
  %funcs11.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120, i32 1
  %14 = ptrtoint ptr %funcs11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs11.i, align 4
  %get_fb_channel_number12.i = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %get_fb_channel_number12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_fb_channel_number12.i, align 4
  %call13.i = tail call i32 %17(ptr noundef %adev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, 30
  br i1 %cmp14.i, label %land.lhs.true9.i.if.then.i_crit_edge, label %land.lhs.true9.i.df_v3_6_query_hashes.exit_crit_edge

land.lhs.true9.i.df_v3_6_query_hashes.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %df_v3_6_query_hashes.exit

land.lhs.true9.i.if.then.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true9.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %18 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.cond.false.i_crit_edge, label %land.lhs.true15.i

if.then.i.cond.false.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

land.lhs.true15.i:                                ; preds = %if.then.i
  %funcs16.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs16.i, align 4
  %tobool17.not.i = icmp eq ptr %21, null
  br i1 %tobool17.not.i, label %land.lhs.true15.i.cond.false.i_crit_edge, label %land.lhs.true18.i

land.lhs.true15.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

land.lhs.true18.i:                                ; preds = %land.lhs.true15.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool22.not.i = icmp eq ptr %23, null
  br i1 %tobool22.not.i, label %land.lhs.true18.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true18.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add.i = add i32 %27, 254
  %call29.i = tail call i32 %23(ptr noundef %adev, i32 noundef %add.i, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true18.i.cond.false.i_crit_edge, %land.lhs.true15.i.cond.false.i_crit_edge, %if.then.i.cond.false.i_crit_edge
  %arrayidx31.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %28 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx31.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add34.i = add i32 %31, 254
  %call35.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add34.i, i32 noundef 0) #3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call29.i, %cond.true.i ], [ %call35.i, %cond.false.i ]
  %32 = lshr i32 %cond.i, 20
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = ptrtoint ptr %df.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %df.i, align 8
  %36 = lshr i32 %cond.i, 21
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %hash_2m.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %hash_2m.i, align 1
  %40 = lshr i32 %cond.i, 22
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = ptrtoint ptr %hash_1g.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %hash_1g.i, align 2
  br label %df_v3_6_query_hashes.exit

df_v3_6_query_hashes.exit:                        ; preds = %cond.end.i, %land.lhs.true9.i.df_v3_6_query_hashes.exit_crit_edge, %lor.lhs.false.i.df_v3_6_query_hashes.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @df_v3_6_sw_fini(ptr nocapture noundef readonly %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void @device_remove_file(ptr noundef %1, ptr noundef nonnull @dev_attr_df_cntr_avail) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @df_v3_6_enable_broadcast_mode(ptr noundef %adev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 1040
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add18 = add i32 %13, 1040
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add18, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %and20 = and i32 %cond, -2
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and23 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.end.cond.false45_crit_edge, label %land.lhs.true25

cond.end.cond.false45_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

land.lhs.true25:                                  ; preds = %cond.end
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false45_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false45_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool34.not = icmp eq ptr %19, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false45_crit_edge, label %cond.true35

land.lhs.true30.cond.false45_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

cond.true35:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx41 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx41, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add44 = add i32 %23, 1040
  tail call void %19(ptr noundef %adev, i32 noundef %add44, i32 noundef %and20, i32 noundef 0, i32 noundef 19) #3
  br label %if.end

cond.false45:                                     ; preds = %land.lhs.true30.cond.false45_crit_edge, %land.lhs.true25.cond.false45_crit_edge, %cond.end.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 1040
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add50, i32 noundef %and20, i32 noundef 0) #3
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.cond.false77_crit_edge, label %land.lhs.true56

if.else.cond.false77_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false77

land.lhs.true56:                                  ; preds = %if.else
  %funcs59 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %28 = ptrtoint ptr %funcs59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs59, align 4
  %tobool60.not = icmp eq ptr %29, null
  br i1 %tobool60.not, label %land.lhs.true56.cond.false77_crit_edge, label %land.lhs.true61

land.lhs.true56.cond.false77_crit_edge:           ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false77

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %sriov_wreg65 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %sriov_wreg65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sriov_wreg65, align 4
  %tobool66.not = icmp eq ptr %31, null
  br i1 %tobool66.not, label %land.lhs.true61.cond.false77_crit_edge, label %cond.true67

land.lhs.true61.cond.false77_crit_edge:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false77

cond.true67:                                      ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx73 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %32 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx73, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add76 = add i32 %35, 1040
  tail call void %31(ptr noundef %adev, i32 noundef %add76, i32 noundef 0, i32 noundef 0, i32 noundef 19) #3
  br label %if.end

cond.false77:                                     ; preds = %land.lhs.true61.cond.false77_crit_edge, %land.lhs.true56.cond.false77_crit_edge, %if.else.cond.false77_crit_edge
  %arrayidx79 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx79, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add82 = add i32 %39, 1040
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add82, i32 noundef 0, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %cond.false77, %cond.true67, %cond.false45, %cond.true35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @df_v3_6_get_fb_channel_number(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp eq i32 %1, 25
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 100
  %call = tail call i32 %7(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add17 = add i32 %15, 100
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, 124
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cond.false46_crit_edge, label %land.lhs.true24

if.else.cond.false46_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false46

land.lhs.true24:                                  ; preds = %if.else
  %funcs27 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs27, align 4
  %tobool28.not = icmp eq ptr %17, null
  br i1 %tobool28.not, label %land.lhs.true24.cond.false46_crit_edge, label %land.lhs.true29

land.lhs.true24.cond.false46_crit_edge:           ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false46

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %sriov_rreg33 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg33, align 4
  %tobool34.not = icmp eq ptr %19, null
  br i1 %tobool34.not, label %land.lhs.true29.cond.false46_crit_edge, label %cond.true35

land.lhs.true29.cond.false46_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false46

cond.true35:                                      ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx41 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx41, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add44 = add i32 %23, 68
  %call45 = tail call i32 %19(ptr noundef %adev, i32 noundef %add44, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end53

cond.false46:                                     ; preds = %land.lhs.true29.cond.false46_crit_edge, %land.lhs.true24.cond.false46_crit_edge, %if.else.cond.false46_crit_edge
  %arrayidx48 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx48, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add51 = add i32 %27, 68
  %call52 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add51, i32 noundef 0) #3
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false46, %cond.true35
  %cond54 = phi i32 [ %call45, %cond.true35 ], [ %call52, %cond.false46 ]
  %and55 = and i32 %cond54, 60
  br label %if.end

if.end:                                           ; preds = %cond.end53, %cond.end
  %tmp.0 = phi i32 [ %and19, %cond.end ], [ %and55, %cond.end53 ]
  %shr = lshr exact i32 %tmp.0, 2
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @df_v3_6_get_hbm_channel_number(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %get_fb_channel_number = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_fb_channel_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_fb_channel_number, align 4
  %call = tail call i32 %3(ptr noundef %adev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call)
  %cmp = icmp ugt i32 %call, 14
  %spec.store.select = select i1 %cmp, i32 0, i32 %call
  %arrayidx = getelementptr [15 x i32], ptr @df_v3_6_channel_number, i32 0, i32 %spec.store.select
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @df_v3_6_update_medium_grain_clock_gating(ptr noundef %adev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end128_crit_edge, label %if.then

entry.if.end128_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128

if.then:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %enable_broadcast_mode = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %enable_broadcast_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_broadcast_mode, align 4
  tail call void %5(ptr noundef %adev, i1 noundef zeroext true) #3
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and3 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %enable, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  br i1 %tobool4.not, label %if.then2.cond.false_crit_edge, label %land.lhs.true

if.then2.cond.false_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then2
  %funcs5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs5, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add = add i32 %15, 252
  %call = tail call i32 %11(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then2.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx19, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add22 = add i32 %19, 252
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add22, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call23, %cond.false ]
  %and24 = and i32 %cond, -16
  %or = or i32 %and24, 13
  %20 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt, align 8
  %and27 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %cond.end.cond.false49_crit_edge, label %land.lhs.true29

cond.end.cond.false49_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false49

land.lhs.true29:                                  ; preds = %cond.end
  %funcs32 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs32, align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %land.lhs.true29.cond.false49_crit_edge, label %land.lhs.true34

land.lhs.true29.cond.false49_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false49

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg, align 4
  %tobool38.not = icmp eq ptr %25, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false49_crit_edge, label %cond.true39

land.lhs.true34.cond.false49_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false49

cond.true39:                                      ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx45 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx45, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add48 = add i32 %29, 252
  tail call void %25(ptr noundef %adev, i32 noundef %add48, i32 noundef %or, i32 noundef 0, i32 noundef 19) #3
  br label %if.end

cond.false49:                                     ; preds = %land.lhs.true34.cond.false49_crit_edge, %land.lhs.true29.cond.false49_crit_edge, %cond.end.cond.false49_crit_edge
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %30 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx51, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add54 = add i32 %33, 252
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add54, i32 noundef %or, i32 noundef 0) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  br i1 %tobool4.not, label %if.else.cond.false82_crit_edge, label %land.lhs.true60

if.else.cond.false82_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false82

land.lhs.true60:                                  ; preds = %if.else
  %funcs63 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %34 = ptrtoint ptr %funcs63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs63, align 4
  %tobool64.not = icmp eq ptr %35, null
  br i1 %tobool64.not, label %land.lhs.true60.cond.false82_crit_edge, label %land.lhs.true65

land.lhs.true60.cond.false82_crit_edge:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false82

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %sriov_rreg69 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %sriov_rreg69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_rreg69, align 4
  %tobool70.not = icmp eq ptr %37, null
  br i1 %tobool70.not, label %land.lhs.true65.cond.false82_crit_edge, label %cond.true71

land.lhs.true65.cond.false82_crit_edge:           ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false82

cond.true71:                                      ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx77 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %38 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx77, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add80 = add i32 %41, 252
  %call81 = tail call i32 %37(ptr noundef %adev, i32 noundef %add80, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end89

cond.false82:                                     ; preds = %land.lhs.true65.cond.false82_crit_edge, %land.lhs.true60.cond.false82_crit_edge, %if.else.cond.false82_crit_edge
  %arrayidx84 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %42 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx84, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add87 = add i32 %45, 252
  %call88 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add87, i32 noundef 0) #3
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false82, %cond.true71
  %cond90 = phi i32 [ %call81, %cond.true71 ], [ %call88, %cond.false82 ]
  %and91 = and i32 %cond90, -16
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and95 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %cond.end89.cond.false118_crit_edge, label %land.lhs.true97

cond.end89.cond.false118_crit_edge:               ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false118

land.lhs.true97:                                  ; preds = %cond.end89
  %funcs100 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %48 = ptrtoint ptr %funcs100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs100, align 4
  %tobool101.not = icmp eq ptr %49, null
  br i1 %tobool101.not, label %land.lhs.true97.cond.false118_crit_edge, label %land.lhs.true102

land.lhs.true97.cond.false118_crit_edge:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false118

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %sriov_wreg106 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %sriov_wreg106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sriov_wreg106, align 4
  %tobool107.not = icmp eq ptr %51, null
  br i1 %tobool107.not, label %land.lhs.true102.cond.false118_crit_edge, label %cond.true108

land.lhs.true102.cond.false118_crit_edge:         ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false118

cond.true108:                                     ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx114 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %52 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx114, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add117 = add i32 %55, 252
  tail call void %51(ptr noundef %adev, i32 noundef %add117, i32 noundef %and91, i32 noundef 0, i32 noundef 19) #3
  br label %if.end

cond.false118:                                    ; preds = %land.lhs.true102.cond.false118_crit_edge, %land.lhs.true97.cond.false118_crit_edge, %cond.end89.cond.false118_crit_edge
  %arrayidx120 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %56 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx120, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add123 = add i32 %59, 252
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add123, i32 noundef %and91, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %cond.false118, %cond.true108, %cond.false49, %cond.true39
  %60 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %funcs, align 4
  %enable_broadcast_mode127 = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %enable_broadcast_mode127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %enable_broadcast_mode127, align 4
  tail call void %63(ptr noundef %adev, i1 noundef zeroext false) #3
  br label %if.end128

if.end128:                                        ; preds = %if.end, %entry.if.end128_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @df_v3_6_get_clockgating_state(ptr noundef %adev, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 252
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 252
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 8388608
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @df_v3_6_pmc_start(ptr noundef %adev, i64 noundef %config, i32 noundef %counter_idx, i32 noundef %is_add) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 21, label %entry.sw.bb_crit_edge
    i32 23, label %entry.sw.bb_crit_edge49
  ]

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_add)
  %tobool.not = icmp eq i32 %is_add, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 154, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp1.i = icmp eq i64 %4, 0
  br i1 %cmp1.i, label %if.then.if.then.i_crit_edge, label %for.inc.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %if.then.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %if.then.if.then.i_crit_edge ], [ %arrayidx.1.i, %for.inc.i.if.then.i_crit_edge ], [ %arrayidx.2.i, %for.inc.1.i.if.then.i_crit_edge ], [ %arrayidx.3.i, %for.inc.2.i.if.then.i_crit_edge ]
  %and.i = and i64 %config, 16777215
  %5 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %and.i, ptr %arrayidx.lcssa.i, align 8
  br label %cleanup

for.inc.i:                                        ; preds = %if.then
  %arrayidx.1.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 154, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp1.1.i = icmp eq i64 %7, 0
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 154, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp1.2.i = icmp eq i64 %9, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 154, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp1.3.i = icmp eq i64 %11, 0
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.2.i.cleanup_crit_edge

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.end:                                           ; preds = %sw.bb
  %and.i.i.i = and i64 %config, 16777215
  %arrayidx.i.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 154, i32 %counter_idx
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %13)
  %cmp.i.i.i = icmp eq i64 %and.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %counter_idx)
  %14 = icmp ult i32 %counter_idx, 4
  %or.cond = and i1 %cmp.i.i.i, %14
  %switch.idx.mult = shl i32 %counter_idx, 3
  %switch.offset = add i32 %switch.idx.mult, 120960
  %switch.idx.mult45 = shl i32 %counter_idx, 3
  %switch.offset46 = add i32 %switch.idx.mult45, 120964
  %lo_base_addr.0 = select i1 %or.cond, i32 %switch.offset, i32 -1
  %hi_base_addr.0 = select i1 %or.cond, i32 %switch.offset46, i32 -1
  %15 = trunc i64 %config to i32
  %conv.i = and i32 %15, 63
  %shr10.i = lshr i32 %15, 10
  %and11.i = and i32 %shr10.i, 15
  %16 = lshr i32 %15, 8
  %shl.i = and i32 %16, 3840
  %17 = lshr i32 %15, 2
  %shl14.i = and i32 %17, 192
  %or.i = or i32 %conv.i, %shl14.i
  %or15.i = or i32 %or.i, %shl.i
  %or17.i = or i32 %or15.i, 4194304
  %18 = shl i32 %15, 15
  %shl19.i = and i32 %18, 1610612736
  %or20.i = or i32 %shl19.i, %and11.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i64 noundef %config, i32 noundef %lo_base_addr.0, i32 noundef %hi_base_addr.0, i32 noundef %or17.i, i32 noundef %or20.i) #3
  %funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %pcie_idx_lock.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i28.while.body.i_crit_edge, %if.end
  %countdown.04.i = phi i32 [ 1000, %if.end ], [ %sub.i, %if.end.i28.while.body.i_crit_edge ]
  %19 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs.i.i, align 8
  %get_pcie_index_offset.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %get_pcie_index_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_pcie_index_offset.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %adev) #3
  %23 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs.i.i, align 8
  %get_pcie_data_offset.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %get_pcie_data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_pcie_data_offset.i.i, align 4
  %call3.i.i = tail call i32 %26(ptr noundef %adev) #3
  %call6.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i.i) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i.i, i32 noundef %lo_base_addr.0, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3.i.i, i32 noundef %or17.i, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i.i, i32 noundef %hi_base_addr.0, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3.i.i, i32 noundef %or20.i, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i.i, i32 noundef %lo_base_addr.0, i32 noundef 0) #3
  %call9.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call3.i.i, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i.i, i32 noundef %hi_base_addr.0, i32 noundef 0) #3
  %call10.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call3.i.i, i32 noundef 0) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i.i, i32 noundef %call6.i.i) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i.i, i32 %or17.i)
  %cmp12.i.i = icmp eq i32 %call9.i.i, %or17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i.i, i32 %or20.i)
  %cmp14.i.i = icmp eq i32 %call10.i.i, %or20.i
  %or.cond.i.i = select i1 %cmp12.i.i, i1 %cmp14.i.i, i1 false
  br i1 %or.cond.i.i, label %while.end.i, label %if.end.i28

if.end.i28:                                       ; preds = %while.body.i
  %sub.i = add nsw i32 %countdown.04.i, -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #3
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end.i28.if.then7_crit_edge, label %if.end.i28.while.body.i_crit_edge

if.end.i28.while.body.i_crit_edge:                ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i28.if.then7_crit_edge:                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %countdown.04.i)
  %cmp.i29 = icmp sgt i32 %countdown.04.i, 0
  br i1 %cmp.i29, label %while.end.i.cleanup_crit_edge, label %while.end.i.if.then7_crit_edge

while.end.i.if.then7_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %while.end.i.if.then7_crit_edge, %if.end.i28.if.then7_crit_edge
  %28 = and i32 %counter_idx, 16777215
  %and.i.i = zext i32 %28 to i64
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 154, i32 %15
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %and.i.i)
  %cmp.i.i = icmp eq i64 %30, %and.i.i
  br i1 %cmp.i.i, label %if.end.i31, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i31:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  %or.i30 = or i64 %and.i.i, -2147483648
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %or.i30, ptr %arrayidx.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i31, %if.then7.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %for.inc.2.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %i.010.lcssa.i, %if.then.i ], [ -28, %for.inc.2.i.cleanup_crit_edge ], [ 0, %while.end.i.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ 0, %if.end.i31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @df_v3_6_pmc_stop(ptr noundef %adev, i64 noundef %config, i32 noundef %counter_idx, i32 noundef %is_remove) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 21, label %entry.sw.bb_crit_edge
    i32 23, label %entry.sw.bb_crit_edge35
  ]

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge35
  %and.i.i.i = and i64 %config, 16777215
  %arrayidx.i.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 154, i32 %counter_idx
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %4)
  %cmp.i.i.i = icmp eq i64 %and.i.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %counter_idx)
  %5 = icmp ult i32 %counter_idx, 4
  %or.cond = and i1 %cmp.i.i.i, %5
  %switch.idx.mult = shl i32 %counter_idx, 3
  %switch.offset = add i32 %switch.idx.mult, 120960
  %switch.idx.mult27 = shl i32 %counter_idx, 3
  %switch.offset28 = add i32 %switch.idx.mult27, 120964
  %lo_base_addr.0 = select i1 %or.cond, i32 %switch.offset, i32 -1
  %hi_base_addr.0 = select i1 %or.cond, i32 %switch.offset28, i32 -1
  %6 = trunc i64 %config to i32
  %conv.i = and i32 %6, 63
  %shr10.i = lshr i32 %6, 10
  %and11.i = and i32 %shr10.i, 15
  %7 = lshr i32 %6, 8
  %shl.i = and i32 %7, 3840
  %8 = lshr i32 %6, 2
  %shl14.i = and i32 %8, 192
  %or.i = or i32 %shl14.i, %conv.i
  %or15.i = or i32 %or.i, %shl.i
  %9 = shl i32 %6, 15
  %shl19.i = and i32 %9, 1610612736
  %or20.i = or i32 %shl19.i, %and11.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i64 noundef %config, i32 noundef %lo_base_addr.0, i32 noundef %hi_base_addr.0, i32 noundef %or15.i, i32 noundef %or20.i) #3
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %10 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs.i, align 8
  %get_pcie_index_offset.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %get_pcie_index_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_pcie_index_offset.i, align 4
  %call.i = tail call i32 %13(ptr noundef %adev) #3
  %14 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs.i, align 8
  %get_pcie_data_offset.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %get_pcie_data_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_pcie_data_offset.i, align 4
  %call3.i = tail call i32 %17(ptr noundef %adev) #3
  %pcie_idx_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i, i32 noundef %lo_base_addr.0, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3.i, i32 noundef %or15.i, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i, i32 noundef %hi_base_addr.0, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3.i, i32 noundef %or20.i, i32 noundef 0) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call6.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_remove)
  %tobool1.not = icmp eq i32 %is_remove, 0
  br i1 %tobool1.not, label %sw.bb.cleanup_crit_edge, label %if.then2

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %sw.bb
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %19)
  %cmp.i.i.i.i = icmp eq i64 %and.i.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %counter_idx)
  %20 = icmp ult i32 %counter_idx, 4
  %or.cond34 = and i1 %cmp.i.i.i.i, %20
  br i1 %or.cond34, label %switch.lookup29, label %if.then2.df_v3_6_reset_perfmon_cntr.exit_crit_edge

if.then2.df_v3_6_reset_perfmon_cntr.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %df_v3_6_reset_perfmon_cntr.exit

switch.lookup29:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %switch.idx.mult30 = shl i32 %counter_idx, 3
  %switch.offset31 = add i32 %switch.idx.mult30, 120720
  %switch.idx.mult32 = shl i32 %counter_idx, 3
  %switch.offset33 = add i32 %switch.idx.mult32, 120724
  %21 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs.i, align 8
  %get_pcie_index_offset.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %get_pcie_index_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_pcie_index_offset.i.i, align 4
  %call.i.i = tail call i32 %24(ptr noundef %adev) #3
  %25 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs.i, align 8
  %get_pcie_data_offset.i.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %get_pcie_data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_pcie_data_offset.i.i, align 4
  %call3.i.i = tail call i32 %28(ptr noundef %adev) #3
  %call6.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i.i, i32 noundef %switch.offset31, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3.i.i, i32 noundef 0, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i.i, i32 noundef %switch.offset33, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3.i.i, i32 noundef 0, i32 noundef 0) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call6.i.i) #3
  br label %df_v3_6_reset_perfmon_cntr.exit

df_v3_6_reset_perfmon_cntr.exit:                  ; preds = %switch.lookup29, %if.then2.df_v3_6_reset_perfmon_cntr.exit_crit_edge
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %30)
  %cmp.i.i = icmp eq i64 %and.i.i.i, %30
  br i1 %cmp.i.i, label %if.then.i19, label %df_v3_6_reset_perfmon_cntr.exit.cleanup_crit_edge

df_v3_6_reset_perfmon_cntr.exit.cleanup_crit_edge: ; preds = %df_v3_6_reset_perfmon_cntr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i19:                                      ; preds = %df_v3_6_reset_perfmon_cntr.exit
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %arrayidx.i.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i19, %df_v3_6_reset_perfmon_cntr.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @df_v3_6_pmc_get_count(ptr noundef %adev, i64 noundef %config, i32 noundef %counter_idx, ptr nocapture noundef writeonly %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %count, align 8
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %1 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asic_type, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %2, label %entry.cleanup19_crit_edge [
    i32 21, label %entry.sw.bb_crit_edge
    i32 23, label %entry.sw.bb_crit_edge56
  ]

entry.sw.bb_crit_edge56:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge56
  %and.i.i.i = and i64 %config, 16777215
  %arrayidx.i.i.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 154, i32 %counter_idx
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %5)
  %cmp.i.i.i = icmp eq i64 %and.i.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %counter_idx)
  %6 = icmp ult i32 %counter_idx, 4
  %or.cond = and i1 %cmp.i.i.i, %6
  br i1 %or.cond, label %switch.lookup, label %sw.bb.cleanup19_crit_edge

sw.bb.cleanup19_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %switch.idx.mult = shl i32 %counter_idx, 3
  %switch.offset = add i32 %switch.idx.mult, 120720
  %switch.idx.mult54 = shl i32 %counter_idx, 3
  %switch.offset55 = add i32 %switch.idx.mult54, 120724
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 8
  %get_pcie_index_offset.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %get_pcie_index_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_pcie_index_offset.i, align 4
  %call.i = tail call i32 %10(ptr noundef %adev) #3
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %funcs.i, align 8
  %get_pcie_data_offset.i = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %get_pcie_data_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_pcie_data_offset.i, align 4
  %call3.i = tail call i32 %14(ptr noundef %adev) #3
  %pcie_idx_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i, i32 noundef %switch.offset, i32 noundef 0) #3
  %call9.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call3.i, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call.i, i32 noundef %switch.offset55, i32 noundef 0) #3
  %call10.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call3.i, i32 noundef 0) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call6.i) #3
  %conv11 = zext i32 %call10.i to i64
  %shl = shl nuw i64 %conv11, 32
  %conv12 = zext i32 %call9.i to i64
  %or14 = or i64 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710654, i64 %or14)
  %cmp15 = icmp ugt i64 %or14, 281474976710654
  %spec.select = select i1 %cmp15, i64 0, i64 %or14
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %spec.select, ptr %count, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i64 noundef %config, i32 noundef %switch.offset, i32 noundef %switch.offset55, i32 noundef %call9.i, i32 noundef %call10.i) #3
  br label %cleanup19

cleanup19:                                        ; preds = %switch.lookup, %sw.bb.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @df_v3_6_get_fica(ptr noundef %adev, i32 noundef %ficaa_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #3
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #3
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef 118876, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3, i32 noundef %ficaa_val, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef 118936, i32 noundef 0) #3
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call3, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef 118940, i32 noundef 0) #3
  %call10 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %call3, i32 noundef 0) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call6) #3
  %conv12 = zext i32 %call10 to i64
  %shl = shl nuw i64 %conv12, 32
  %conv13 = zext i32 %call9 to i64
  %or = or i64 %shl, %conv13
  ret i64 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @df_v3_6_set_fica(ptr noundef %adev, i32 noundef %ficaa_val, i32 noundef %ficadl_val, i32 noundef %ficadh_val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 4
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 8
  %get_pcie_index_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_pcie_index_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pcie_index_offset, align 4
  %call = tail call i32 %3(ptr noundef %adev) #3
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %get_pcie_data_offset = getelementptr inbounds %struct.amdgpu_nbio_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %get_pcie_data_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pcie_data_offset, align 4
  %call3 = tail call i32 %7(ptr noundef %adev) #3
  %pcie_idx_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 38
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef 118876, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3, i32 noundef %ficaa_val, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef 118936, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3, i32 noundef %ficadl_val, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call, i32 noundef 118940, i32 noundef 0) #3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %call3, i32 noundef %ficadh_val, i32 noundef 0) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call6) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @df_v3_6_query_ras_poison_mode(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 1662
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 1662
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and21 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false45_crit_edge, label %land.lhs.true23

cond.end.cond.false45_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false45_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false45_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_rreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg32, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false45_crit_edge, label %cond.true34

land.lhs.true28.cond.false45_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx40, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add43 = add i32 %23, 1663
  %call44 = tail call i32 %19(ptr noundef %adev, i32 noundef %add43, i32 noundef 0, i32 noundef 19) #3
  br label %cond.end52

cond.false45:                                     ; preds = %land.lhs.true28.cond.false45_crit_edge, %land.lhs.true23.cond.false45_crit_edge, %cond.end.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 19
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 1663
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50, i32 noundef 0) #3
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false45, %cond.true34
  %cond53 = phi i32 [ %call44, %cond.true34 ], [ %call51, %cond.false45 ]
  %and54 = and i32 %cond, 1
  %and55 = lshr i32 %cond, 1
  %shr56 = and i32 %and55, 1
  %and57 = lshr i32 %cond53, 28
  %shr58 = and i32 %and57, 1
  %shr60 = lshr i32 %cond53, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool61.not = icmp eq i32 %and54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr56)
  %tobool63.not = icmp eq i32 %shr56, 0
  %or.cond = select i1 %tobool61.not, i1 true, i1 %tobool63.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr58)
  %tobool65.not = icmp eq i32 %shr58, 0
  %or.cond111 = select i1 %or.cond, i1 true, i1 %tobool65.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond53)
  %tobool67.not = icmp sgt i32 %cond53, -1
  %or.cond112 = select i1 %or.cond111, i1 true, i1 %tobool67.not
  br i1 %or.cond112, label %if.else, label %cond.end52.cleanup_crit_edge

cond.end52.cleanup_crit_edge:                     ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else:                                          ; preds = %cond.end52
  %or.cond113 = select i1 %tobool61.not, i1 %tobool63.not, i1 false
  %or.cond114 = select i1 %or.cond113, i1 %tobool65.not, i1 false
  %or.cond115 = select i1 %or.cond114, i1 %tobool67.not, i1 false
  br i1 %or.cond115, label %if.else.cleanup_crit_edge, label %do.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %and54, i32 noundef %shr56, i32 noundef %shr58, i32 noundef %shr60) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %cond.end52.cleanup_crit_edge
  %30 = xor i1 %or.cond112, true
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @df_v3_6_get_df_cntr_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 91440
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp2 = icmp eq i64 %3, 0
  %inc = zext i1 %cmp2 to i32
  %arrayidx.1 = getelementptr i8, ptr %1, i32 91448
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp2.1 = icmp eq i64 %5, 0
  %inc.1 = zext i1 %cmp2.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %arrayidx.2 = getelementptr i8, ptr %1, i32 91456
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp2.2 = icmp eq i64 %7, 0
  %inc.2 = zext i1 %cmp2.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.2
  %arrayidx.3 = getelementptr i8, ptr %1, i32 91464
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp2.3 = icmp eq i64 %9, 0
  %inc.3 = zext i1 %cmp2.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.3
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %spec.select.3) #3
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @df_v3_6_funcs, !1, !"df_v3_6_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c", i32 670, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c", i32 247, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c", i32 212, i32 8}
!6 = !{ptr @dev_attr_df_cntr_avail, !5, !"dev_attr_df_cntr_avail", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c", i32 208, i32 25}
!9 = !{ptr @df_v3_6_channel_number, !10, !"df_v3_6_channel_number", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c", i32 42, i32 12}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c", i32 419, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c", i32 436, i32 2}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/df_v3_6.c", i32 664, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @df_v3_6_query_ras_poison_mode._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @df_v3_6_query_ras_poison_mode._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
