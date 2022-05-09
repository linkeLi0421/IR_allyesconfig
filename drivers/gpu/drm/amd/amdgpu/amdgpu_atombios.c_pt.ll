; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct._ATOM_GPIO_I2C_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x %struct._ATOM_GPIO_I2C_ASSIGMENT] }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_GPIO_I2C_ASSIGMENT = type <{ i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_I2C_ID_CONFIG_ACCESS, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%union._ATOM_I2C_ID_CONFIG_ACCESS = type { %struct._ATOM_I2C_ID_CONFIG }
%struct._ATOM_I2C_ID_CONFIG = type { i8 }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct._ATOM_GPIO_PIN_LUT = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_GPIO_PIN_ASSIGNMENT] }
%struct._ATOM_GPIO_PIN_ASSIGNMENT = type { i16, i8, i8 }
%struct._ATOM_OBJECT_HEADER = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, i16, i16, i16 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct._ATOM_DISPLAY_OBJECT_PATH_TABLE = type { i8, i8, [2 x i8], [1 x %struct._ATOM_DISPLAY_OBJECT_PATH] }
%struct._ATOM_DISPLAY_OBJECT_PATH = type { i16, i16, i16, i16, [1 x i16] }
%struct._ATOM_OBJECT_TABLE = type { i8, [3 x i8], [1 x %struct._ATOM_OBJECT] }
%struct._ATOM_OBJECT = type { i16, i16, i16, i16 }
%struct._ATOM_COMMON_RECORD_HEADER = type { i8, i8 }
%struct._ATOM_ENCODER_CAP_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, %union.anon.113 }
%union.anon.113 = type { i16 }
%struct.amdgpu_display_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._ATOM_I2C_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, %struct._ATOM_I2C_ID_CONFIG, i8 }
%struct._ATOM_ROUTER_DDC_PATH_SELECT_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8, [2 x i8] }
%struct._ATOM_ROUTER_DATA_CLOCK_PATH_SELECT_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8, [2 x i8] }
%struct._ATOM_HPD_INT_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8 }
%struct._ATOM_FIRMWARE_INFO = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%union._ATOM_FIRMWARE_CAPABILITY_ACCESS = type { %struct._ATOM_FIRMWARE_CAPABILITY }
%struct._ATOM_FIRMWARE_CAPABILITY = type { i16 }
%struct._ATOM_FIRMWARE_INFO_V1_2 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8], [2 x i32], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%struct._ATOM_FIRMWARE_INFO_V1_4 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%struct._ATOM_FIRMWARE_INFO_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i16, i8, [3 x i8] }
%struct._ATOM_GFX_INFO_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, [19 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct._ATOM_CLK_VOLT_CAPABILITY, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i32, [4 x i32], [4 x i16], i16, i16, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%union._ATOM_TDP_CONFIG = type { %struct._ATOM_TDP_CONFIG_BITS }
%struct._ATOM_TDP_CONFIG_BITS = type { i32 }
%struct._ATOM_AVAILABLE_SCLK_LIST = type { i32, i16, i16 }
%struct._ATOM_CLK_VOLT_CAPABILITY = type { i32, i32 }
%struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x i8], [7 x %struct._EXT_DISPLAY_PATH], i8, i8, i8, i8, i8, [3 x i8] }
%struct._EXT_DISPLAY_PATH = type { i16, i16, i16, i8, i8, i16, %union.anon.115, i8, i16, i16 }
%union.anon.115 = type { i8 }
%struct._ATOM_ASIC_INTERNAL_SS_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [4 x %struct._ATOM_ASIC_SS_ASSIGNMENT] }
%struct._ATOM_ASIC_SS_ASSIGNMENT = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct.amdgpu_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct._ATOM_ASIC_INTERNAL_SS_INFO_V2 = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_ASIC_SS_ASSIGNMENT_V2] }
%struct._ATOM_ASIC_SS_ASSIGNMENT_V2 = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct._ATOM_ASIC_INTERNAL_SS_INFO_V3 = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_ASIC_SS_ASSIGNMENT_V3] }
%struct._ATOM_ASIC_SS_ASSIGNMENT_V3 = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V6 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, [10 x i32], [10 x i32], [10 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i8, i8, i16, i16, i8, i8, [15 x i32], %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, [19 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i16, i16, [4 x i32], i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, i8, i8, [9 x %struct._ATOM_I2C_REG_INFO], [2 x i32], [8 x %struct._ATOM_CLK_VOLT_CAPABILITY_V2], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [3 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i32, [4 x i32], [4 x i16], i16, i8, i8, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_I2C_REG_INFO = type { i8, i8 }
%struct._ATOM_CLK_VOLT_CAPABILITY_V2 = type <{ i16, i32 }>
%union.get_clock_dividers = type { %struct._COMPUTE_GPU_CLOCK_INPUT_PARAMETERS_V1_6 }
%struct._COMPUTE_GPU_CLOCK_INPUT_PARAMETERS_V1_6 = type { %struct._ATOM_COMPUTE_CLOCK_FREQ, [2 x i32] }
%struct._ATOM_COMPUTE_CLOCK_FREQ = type { i32 }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V3 = type { %union.anon.118, i8, i8, i8, i8 }
%union.anon.118 = type { %struct._ATOM_COMPUTE_CLOCK_FREQ }
%struct.atom_clock_dividers = type { i32, %union.anon.116, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32 }
%struct._ATOM_S_MPLL_FB_DIVIDER = type { i16, i16 }
%struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6 = type { %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4, %struct._ATOM_S_MPLL_FB_DIVIDER, i8, i8, i8, i8 }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4 = type { i32 }
%struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1 = type { %union.anon.123, i8, i8, %union.anon.124, i8 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i8 }
%struct.atom_mpll_param = type { %union.anon.121, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32 }
%struct._SET_ENGINE_CLOCK_PS_ALLOCATION = type { i32, %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS = type { i32, i8, i8, i8, i8 }
%struct._ATOM_FIRMWARE_INFO_V2_2 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i8, [3 x i8], i32, i32, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i16, i8, i8, %struct._PRODUCT_BRANDING, i8, i16, i16, [3 x i32] }
%struct._PRODUCT_BRANDING = type { i8 }
%union.set_voltage = type { %struct._SET_VOLTAGE_PS_ALLOCATION }
%struct._SET_VOLTAGE_PS_ALLOCATION = type { %struct._SET_VOLTAGE_PARAMETERS, %struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS }
%struct._SET_VOLTAGE_PARAMETERS = type { i8, i8, i8, i8 }
%struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS = type { i16, i16, i8, i8, i8, i8 }
%struct._ATOM_VOLTAGE_OBJECT_HEADER_V3 = type { i8, i8, i16 }
%struct._ATOM_SVID2_VOLTAGE_OBJECT_V3 = type { %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, i16, i8, i8, i32 }
%struct._ATOM_GPIO_VOLTAGE_OBJECT_V3 = type <{ %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, i8, i8, i8, i8, i32, [1 x %struct._VOLTAGE_LUT_ENTRY_V2] }>
%struct._VOLTAGE_LUT_ENTRY_V2 = type <{ i32, i16 }>
%struct.atom_voltage_table = type { i32, i32, i32, [32 x %struct.atom_voltage_table_entry] }
%struct.atom_voltage_table_entry = type { i16, i32 }
%struct._ATOM_VRAM_INFO_HEADER_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, [3 x i16], i8, i8, i8, i8, [16 x %struct._ATOM_VRAM_MODULE_V7] }
%struct._ATOM_VRAM_MODULE_V7 = type <{ i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, i16, i8, i8, i8, i8, [20 x i8] }>
%struct._ATOM_INIT_REG_INDEX_FORMAT = type <{ i16, i8 }>
%struct.atom_mc_reg_table = type { i8, i8, [20 x %struct.atom_mc_reg_entry], [32 x %struct.atom_mc_register_address] }
%struct.atom_mc_reg_entry = type { i32, [32 x i32] }
%struct.atom_mc_register_address = type { i16, i8 }
%struct._ATOM_INIT_REG_BLOCK = type <{ i16, i16, [1 x %struct._ATOM_INIT_REG_INDEX_FORMAT], [1 x %struct._ATOM_MEMORY_SETTING_DATA_BLOCK] }>
%struct._ATOM_MEMORY_SETTING_DATA_BLOCK = type { %union._ATOM_MEMORY_SETTING_ID_CONFIG_ACCESS, [1 x i32] }
%union._ATOM_MEMORY_SETTING_ID_CONFIG_ACCESS = type { %struct._ATOM_MEMORY_SETTING_ID_CONFIG }
%struct._ATOM_MEMORY_SETTING_ID_CONFIG = type { i32 }
%struct.card_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._ATOM_VRAM_USAGE_BY_FIRMWARE = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_FIRMWARE_VRAM_RESERVE_INFO] }
%struct._ATOM_FIRMWARE_VRAM_RESERVE_INFO = type { i32, i16, i16 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid con_obj_id %d for device tag 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@object_connector_convert = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 0, i32 2, i32 2, i32 3, i32 3, i32 1, i32 5, i32 6, i32 0, i32 0, i32 9, i32 0, i32 11, i32 12, i32 7, i32 9, i32 0, i32 0, i32 0, i32 10, i32 14, i32 0], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Changing default dispclk from %dMhz to 600Mhz\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Changing default dispclk from %dMhz to 625Mhz\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported ASIC_InternalSS_Info table: %d %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown table version %d, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown voltage object table\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"old table version %d, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_vbios_version_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_vbios_version, ptr null], [24 x i8] zeroinitializer }, align 32
@amdgpu_vbios_version_attr_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @amdgpu_vbios_version_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@amdgpu_atombios_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&adev->mode_info.atom_context->mutex\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported IGP table: %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dev_attr_vbios_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_atombios_get_vbios_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vbios_version\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atom firmware requested %08x %dkb\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 1024]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 14, i64 15]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 256, i64 65536, i64 16777216, i64 67108864, i64 268435456]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 4]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 150, i32 19 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 353, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"object_connector_convert\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 239, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 679, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 683, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 978, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1221, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1296, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1434, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"amdgpu_vbios_version_attrs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1783, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant [32 x i8] c"amdgpu_vbios_version_attr_group\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1788, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1846, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 858, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"dev_attr_vbios_version\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1780, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1777, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [48 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1639, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @object_connector_convert, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @amdgpu_vbios_version_attrs, ptr @amdgpu_vbios_version_attr_group, ptr @amdgpu_atombios_init.__key, ptr @.str.8, ptr @.str.9, ptr @dev_attr_vbios_version, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_connector_convert to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vbios_version_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vbios_version_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atombios_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vbios_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_lookup_i2c_gpio(ptr noalias nocapture writeonly sret(%struct.amdgpu_i2c_bus_rec) align 4 %agg.result, ptr nocapture noundef readonly %adev, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !43
  %4 = call ptr @memset(ptr %agg.result, i32 0, i32 76)
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %size, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %size, align 2
  %conv1 = zext i16 %6 to i32
  %sub = add nsw i32 %conv1, -4
  %div = udiv i32 %sub, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub)
  %7 = icmp ult i32 %sub, 27
  br i1 %7, label %if.then.if.end10_crit_edge, label %for.body.preheader

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.body.preheader:                               ; preds = %if.then
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %asGPIO_Info = getelementptr inbounds %struct._ATOM_GPIO_I2C_INFO, ptr %add.ptr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.023 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %gpio.022 = phi ptr [ %add.ptr9, %if.end.for.body_crit_edge ], [ %asGPIO_Info, %for.body.preheader ]
  %sucI2cId = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 8
  %12 = ptrtoint ptr %sucI2cId to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sucI2cId, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %id)
  %cmp6 = icmp eq i8 %13, %id
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  %14 = ptrtoint ptr %gpio.022 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %gpio.022, align 1, !noalias !44
  %16 = call i16 @llvm.bswap.i16(i16 %15) #9
  %conv.i = zext i16 %16 to i32
  %usDataMaskRegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 4
  %17 = ptrtoint ptr %usDataMaskRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %usDataMaskRegisterIndex.i, align 1, !noalias !44
  %19 = call i16 @llvm.bswap.i16(i16 %18) #9
  %conv1.i = zext i16 %19 to i32
  %usClkEnRegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 1
  %20 = ptrtoint ptr %usClkEnRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %usClkEnRegisterIndex.i, align 1, !noalias !44
  %22 = call i16 @llvm.bswap.i16(i16 %21) #9
  %conv2.i = zext i16 %22 to i32
  %usDataEnRegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 5
  %23 = ptrtoint ptr %usDataEnRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %usDataEnRegisterIndex.i, align 1, !noalias !44
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  %conv3.i = zext i16 %25 to i32
  %usClkY_RegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 2
  %26 = ptrtoint ptr %usClkY_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usClkY_RegisterIndex.i, align 1, !noalias !44
  %28 = call i16 @llvm.bswap.i16(i16 %27) #9
  %conv4.i = zext i16 %28 to i32
  %usDataY_RegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 6
  %29 = ptrtoint ptr %usDataY_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usDataY_RegisterIndex.i, align 1, !noalias !44
  %31 = call i16 @llvm.bswap.i16(i16 %30) #9
  %conv5.i = zext i16 %31 to i32
  %usClkA_RegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 3
  %32 = ptrtoint ptr %usClkA_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %usClkA_RegisterIndex.i, align 1, !noalias !44
  %34 = call i16 @llvm.bswap.i16(i16 %33) #9
  %conv6.i = zext i16 %34 to i32
  %usDataA_RegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 7
  %35 = ptrtoint ptr %usDataA_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %usDataA_RegisterIndex.i, align 1, !noalias !44
  %37 = call i16 @llvm.bswap.i16(i16 %36) #9
  %conv7.i = zext i16 %37 to i32
  %ucClkMaskShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 9
  %38 = ptrtoint ptr %ucClkMaskShift.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ucClkMaskShift.i, align 1, !noalias !44
  %conv8.i = zext i8 %39 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %ucDataMaskShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 13
  %40 = ptrtoint ptr %ucDataMaskShift.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ucDataMaskShift.i, align 1, !noalias !44
  %conv9.i = zext i8 %41 to i32
  %shl10.i = shl nuw i32 1, %conv9.i
  %ucClkEnShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 10
  %42 = ptrtoint ptr %ucClkEnShift.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ucClkEnShift.i, align 1, !noalias !44
  %conv11.i = zext i8 %43 to i32
  %shl12.i = shl nuw i32 1, %conv11.i
  %ucDataEnShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 14
  %44 = ptrtoint ptr %ucDataEnShift.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ucDataEnShift.i, align 1, !noalias !44
  %conv13.i = zext i8 %45 to i32
  %shl14.i = shl nuw i32 1, %conv13.i
  %ucClkY_Shift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 11
  %46 = ptrtoint ptr %ucClkY_Shift.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ucClkY_Shift.i, align 1, !noalias !44
  %conv15.i = zext i8 %47 to i32
  %shl16.i = shl nuw i32 1, %conv15.i
  %ucDataY_Shift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 15
  %48 = ptrtoint ptr %ucDataY_Shift.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ucDataY_Shift.i, align 1, !noalias !44
  %conv17.i = zext i8 %49 to i32
  %shl18.i = shl nuw i32 1, %conv17.i
  %ucClkA_Shift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 12
  %50 = ptrtoint ptr %ucClkA_Shift.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ucClkA_Shift.i, align 1, !noalias !44
  %conv19.i = zext i8 %51 to i32
  %shl20.i = shl nuw i32 1, %conv19.i
  %ucDataA_Shift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 16
  %52 = ptrtoint ptr %ucDataA_Shift.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ucDataA_Shift.i, align 1, !noalias !44
  %conv21.i = zext i8 %53 to i32
  %shl22.i = shl nuw i32 1, %conv21.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %id)
  %tobool.not.i = icmp sgt i8 %id, -1
  br i1 %tobool.not.i, label %if.then8.if.else28.i_crit_edge, label %if.end.i

if.then8.if.else28.i_crit_edge:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else28.i

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %id)
  %cmp.i = icmp eq i8 %id, -96
  br i1 %cmp.i, label %if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge, label %if.end.i.if.else28.i_crit_edge

if.end.i.if.else28.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else28.i

if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit

if.else28.i:                                      ; preds = %if.end.i.if.else28.i_crit_edge, %if.then8.if.else28.i_crit_edge
  %tmp.sroa.618.0 = phi i8 [ 0, %if.then8.if.else28.i_crit_edge ], [ 1, %if.end.i.if.else28.i_crit_edge ]
  br label %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit

amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit:    ; preds = %if.else28.i, %if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge
  %tmp.sroa.618.1 = phi i8 [ %tmp.sroa.618.0, %if.else28.i ], [ 1, %if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge ]
  %.sink.i = phi i8 [ 0, %if.else28.i ], [ 1, %if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool33.not.i = icmp ne i16 %15, 0
  %..i = zext i1 %tobool33.not.i to i8
  %54 = ptrtoint ptr %agg.result to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %..i, ptr %agg.result, align 4
  %tmp.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 1
  %55 = ptrtoint ptr %tmp.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %id, ptr %tmp.sroa.5.0.agg.result.sroa_idx, align 1
  %tmp.sroa.6.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 2
  %56 = call ptr @memset(ptr %tmp.sroa.6.0.agg.result.sroa_idx, i32 0, i32 6)
  %tmp.sroa.618.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %57 = ptrtoint ptr %tmp.sroa.618.0.agg.result.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %tmp.sroa.618.1, ptr %tmp.sroa.618.0.agg.result.sroa_idx, align 4
  %tmp.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 9
  %58 = ptrtoint ptr %tmp.sroa.7.0.agg.result.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.sink.i, ptr %tmp.sroa.7.0.agg.result.sroa_idx, align 1
  %tmp.sroa.8.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 10
  %59 = ptrtoint ptr %tmp.sroa.8.0.agg.result.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %tmp.sroa.8.0.agg.result.sroa_idx, align 2
  %tmp.sroa.819.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 12
  %60 = ptrtoint ptr %tmp.sroa.819.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i, ptr %tmp.sroa.819.0.agg.result.sroa_idx, align 4
  %tmp.sroa.9.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 16
  %61 = ptrtoint ptr %tmp.sroa.9.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv1.i, ptr %tmp.sroa.9.0.agg.result.sroa_idx, align 4
  %tmp.sroa.10.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 20
  %62 = ptrtoint ptr %tmp.sroa.10.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv6.i, ptr %tmp.sroa.10.0.agg.result.sroa_idx, align 4
  %tmp.sroa.11.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 24
  %63 = ptrtoint ptr %tmp.sroa.11.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv7.i, ptr %tmp.sroa.11.0.agg.result.sroa_idx, align 4
  %tmp.sroa.12.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 28
  %64 = ptrtoint ptr %tmp.sroa.12.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv2.i, ptr %tmp.sroa.12.0.agg.result.sroa_idx, align 4
  %tmp.sroa.13.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 32
  %65 = ptrtoint ptr %tmp.sroa.13.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv3.i, ptr %tmp.sroa.13.0.agg.result.sroa_idx, align 4
  %tmp.sroa.14.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 36
  %66 = ptrtoint ptr %tmp.sroa.14.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv4.i, ptr %tmp.sroa.14.0.agg.result.sroa_idx, align 4
  %tmp.sroa.15.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 40
  %67 = ptrtoint ptr %tmp.sroa.15.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv5.i, ptr %tmp.sroa.15.0.agg.result.sroa_idx, align 4
  %tmp.sroa.16.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 44
  %68 = ptrtoint ptr %tmp.sroa.16.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl.i, ptr %tmp.sroa.16.0.agg.result.sroa_idx, align 4
  %tmp.sroa.17.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 48
  %69 = ptrtoint ptr %tmp.sroa.17.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shl10.i, ptr %tmp.sroa.17.0.agg.result.sroa_idx, align 4
  %tmp.sroa.18.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 52
  %70 = ptrtoint ptr %tmp.sroa.18.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shl20.i, ptr %tmp.sroa.18.0.agg.result.sroa_idx, align 4
  %tmp.sroa.19.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 56
  %71 = ptrtoint ptr %tmp.sroa.19.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shl22.i, ptr %tmp.sroa.19.0.agg.result.sroa_idx, align 4
  %tmp.sroa.20.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 60
  %72 = ptrtoint ptr %tmp.sroa.20.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shl12.i, ptr %tmp.sroa.20.0.agg.result.sroa_idx, align 4
  %tmp.sroa.21.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 64
  %73 = ptrtoint ptr %tmp.sroa.21.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %shl14.i, ptr %tmp.sroa.21.0.agg.result.sroa_idx, align 4
  %tmp.sroa.22.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 68
  %74 = ptrtoint ptr %tmp.sroa.22.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shl16.i, ptr %tmp.sroa.22.0.agg.result.sroa_idx, align 4
  %tmp.sroa.23.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 72
  %75 = ptrtoint ptr %tmp.sroa.23.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shl18.i, ptr %tmp.sroa.23.0.agg.result.sroa_idx, align 4
  br label %if.end10

if.end:                                           ; preds = %for.body
  %add.ptr9 = getelementptr i8, ptr %gpio.022, i32 27
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end.if.end10_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_i2c_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %i2c = alloca %struct.amdgpu_i2c_bus_rec, align 4
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %stmp = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 8
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %i2c) #9
  %2 = call ptr @memset(ptr %i2c, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %3 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stmp) #9
  %5 = call ptr @memset(ptr %stmp, i32 255, i32 32)
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %size, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size, align 2
  %conv1 = zext i16 %7 to i32
  %sub = add nsw i32 %conv1, -4
  %div = udiv i32 %sub, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub)
  %8 = icmp ult i32 %sub, 27
  br i1 %8, label %if.then.if.end12_crit_edge, label %for.body.lr.ph

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.lr.ph:                                   ; preds = %if.then
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %asGPIO_Info = getelementptr inbounds %struct._ATOM_GPIO_I2C_INFO, ptr %add.ptr, i32 0, i32 1
  %tmp.sroa.5.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 1
  %tmp.sroa.6.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 2
  %tmp.sroa.622.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 8
  %tmp.sroa.7.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 9
  %tmp.sroa.8.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 10
  %tmp.sroa.823.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 12
  %tmp.sroa.9.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 16
  %tmp.sroa.10.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 20
  %tmp.sroa.11.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 24
  %tmp.sroa.12.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 28
  %tmp.sroa.13.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 32
  %tmp.sroa.14.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 36
  %tmp.sroa.15.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 40
  %tmp.sroa.16.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 44
  %tmp.sroa.17.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 48
  %tmp.sroa.18.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 52
  %tmp.sroa.19.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 56
  %tmp.sroa.20.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 60
  %tmp.sroa.21.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 64
  %tmp.sroa.22.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 68
  %tmp.sroa.23.0.i2c.sroa_idx = getelementptr inbounds i8, ptr %i2c, i32 72
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %gpio.025 = phi ptr [ %asGPIO_Info, %for.body.lr.ph ], [ %add.ptr11, %if.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %gpio.025 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %gpio.025, align 1, !noalias !47
  %15 = call i16 @llvm.bswap.i16(i16 %14) #9
  %conv.i = zext i16 %15 to i32
  %usDataMaskRegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 4
  %16 = ptrtoint ptr %usDataMaskRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %usDataMaskRegisterIndex.i, align 1, !noalias !47
  %18 = call i16 @llvm.bswap.i16(i16 %17) #9
  %conv1.i = zext i16 %18 to i32
  %usClkEnRegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 1
  %19 = ptrtoint ptr %usClkEnRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usClkEnRegisterIndex.i, align 1, !noalias !47
  %21 = call i16 @llvm.bswap.i16(i16 %20) #9
  %conv2.i = zext i16 %21 to i32
  %usDataEnRegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 5
  %22 = ptrtoint ptr %usDataEnRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usDataEnRegisterIndex.i, align 1, !noalias !47
  %24 = call i16 @llvm.bswap.i16(i16 %23) #9
  %conv3.i = zext i16 %24 to i32
  %usClkY_RegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 2
  %25 = ptrtoint ptr %usClkY_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %usClkY_RegisterIndex.i, align 1, !noalias !47
  %27 = call i16 @llvm.bswap.i16(i16 %26) #9
  %conv4.i = zext i16 %27 to i32
  %usDataY_RegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 6
  %28 = ptrtoint ptr %usDataY_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usDataY_RegisterIndex.i, align 1, !noalias !47
  %30 = call i16 @llvm.bswap.i16(i16 %29) #9
  %conv5.i = zext i16 %30 to i32
  %usClkA_RegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 3
  %31 = ptrtoint ptr %usClkA_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %usClkA_RegisterIndex.i, align 1, !noalias !47
  %33 = call i16 @llvm.bswap.i16(i16 %32) #9
  %conv6.i = zext i16 %33 to i32
  %usDataA_RegisterIndex.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 7
  %34 = ptrtoint ptr %usDataA_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usDataA_RegisterIndex.i, align 1, !noalias !47
  %36 = call i16 @llvm.bswap.i16(i16 %35) #9
  %conv7.i = zext i16 %36 to i32
  %ucClkMaskShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 9
  %37 = ptrtoint ptr %ucClkMaskShift.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucClkMaskShift.i, align 1, !noalias !47
  %conv8.i = zext i8 %38 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %ucDataMaskShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 13
  %39 = ptrtoint ptr %ucDataMaskShift.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ucDataMaskShift.i, align 1, !noalias !47
  %conv9.i = zext i8 %40 to i32
  %shl10.i = shl nuw i32 1, %conv9.i
  %ucClkEnShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 10
  %41 = ptrtoint ptr %ucClkEnShift.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucClkEnShift.i, align 1, !noalias !47
  %conv11.i = zext i8 %42 to i32
  %shl12.i = shl nuw i32 1, %conv11.i
  %ucDataEnShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 14
  %43 = ptrtoint ptr %ucDataEnShift.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ucDataEnShift.i, align 1, !noalias !47
  %conv13.i = zext i8 %44 to i32
  %shl14.i = shl nuw i32 1, %conv13.i
  %ucClkY_Shift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 11
  %45 = ptrtoint ptr %ucClkY_Shift.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ucClkY_Shift.i, align 1, !noalias !47
  %conv15.i = zext i8 %46 to i32
  %shl16.i = shl nuw i32 1, %conv15.i
  %ucDataY_Shift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 15
  %47 = ptrtoint ptr %ucDataY_Shift.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ucDataY_Shift.i, align 1, !noalias !47
  %conv17.i = zext i8 %48 to i32
  %shl18.i = shl nuw i32 1, %conv17.i
  %ucClkA_Shift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 12
  %49 = ptrtoint ptr %ucClkA_Shift.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ucClkA_Shift.i, align 1, !noalias !47
  %conv19.i = zext i8 %50 to i32
  %shl20.i = shl nuw i32 1, %conv19.i
  %ucDataA_Shift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 16
  %51 = ptrtoint ptr %ucDataA_Shift.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ucDataA_Shift.i, align 1, !noalias !47
  %conv21.i = zext i8 %52 to i32
  %shl22.i = shl nuw i32 1, %conv21.i
  %sucI2cId.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.025, i32 0, i32 8
  %53 = ptrtoint ptr %sucI2cId.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i = load i8, ptr %sucI2cId.i, align 1, !noalias !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %for.body.if.else28.i_crit_edge, label %if.end.i

for.body.if.else28.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else28.i

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %bf.load.i)
  %cmp.i = icmp eq i8 %bf.load.i, -96
  br i1 %cmp.i, label %if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge, label %if.end.i.if.else28.i_crit_edge

if.end.i.if.else28.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else28.i

if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit

if.else28.i:                                      ; preds = %if.end.i.if.else28.i_crit_edge, %for.body.if.else28.i_crit_edge
  %tmp.sroa.622.1 = phi i8 [ 0, %for.body.if.else28.i_crit_edge ], [ 1, %if.end.i.if.else28.i_crit_edge ]
  br label %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit

amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit:    ; preds = %if.else28.i, %if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge
  %tmp.sroa.622.2 = phi i8 [ %tmp.sroa.622.1, %if.else28.i ], [ 1, %if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge ]
  %.sink.i = phi i8 [ 0, %if.else28.i ], [ 1, %if.end.i.amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool33.not.i = icmp ne i16 %14, 0
  %..i = zext i1 %tobool33.not.i to i8
  %54 = ptrtoint ptr %i2c to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %..i, ptr %i2c, align 4
  %55 = ptrtoint ptr %tmp.sroa.5.0.i2c.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %bf.load.i, ptr %tmp.sroa.5.0.i2c.sroa_idx, align 1
  %56 = call ptr @memset(ptr %tmp.sroa.6.0.i2c.sroa_idx, i32 0, i32 6)
  %57 = ptrtoint ptr %tmp.sroa.622.0.i2c.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %tmp.sroa.622.2, ptr %tmp.sroa.622.0.i2c.sroa_idx, align 4
  %58 = ptrtoint ptr %tmp.sroa.7.0.i2c.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.sink.i, ptr %tmp.sroa.7.0.i2c.sroa_idx, align 1
  %59 = ptrtoint ptr %tmp.sroa.8.0.i2c.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %tmp.sroa.8.0.i2c.sroa_idx, align 2
  %60 = ptrtoint ptr %tmp.sroa.823.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i, ptr %tmp.sroa.823.0.i2c.sroa_idx, align 4
  %61 = ptrtoint ptr %tmp.sroa.9.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv1.i, ptr %tmp.sroa.9.0.i2c.sroa_idx, align 4
  %62 = ptrtoint ptr %tmp.sroa.10.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv6.i, ptr %tmp.sroa.10.0.i2c.sroa_idx, align 4
  %63 = ptrtoint ptr %tmp.sroa.11.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv7.i, ptr %tmp.sroa.11.0.i2c.sroa_idx, align 4
  %64 = ptrtoint ptr %tmp.sroa.12.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv2.i, ptr %tmp.sroa.12.0.i2c.sroa_idx, align 4
  %65 = ptrtoint ptr %tmp.sroa.13.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv3.i, ptr %tmp.sroa.13.0.i2c.sroa_idx, align 4
  %66 = ptrtoint ptr %tmp.sroa.14.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv4.i, ptr %tmp.sroa.14.0.i2c.sroa_idx, align 4
  %67 = ptrtoint ptr %tmp.sroa.15.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv5.i, ptr %tmp.sroa.15.0.i2c.sroa_idx, align 4
  %68 = ptrtoint ptr %tmp.sroa.16.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl.i, ptr %tmp.sroa.16.0.i2c.sroa_idx, align 4
  %69 = ptrtoint ptr %tmp.sroa.17.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shl10.i, ptr %tmp.sroa.17.0.i2c.sroa_idx, align 4
  %70 = ptrtoint ptr %tmp.sroa.18.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shl20.i, ptr %tmp.sroa.18.0.i2c.sroa_idx, align 4
  %71 = ptrtoint ptr %tmp.sroa.19.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shl22.i, ptr %tmp.sroa.19.0.i2c.sroa_idx, align 4
  %72 = ptrtoint ptr %tmp.sroa.20.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shl12.i, ptr %tmp.sroa.20.0.i2c.sroa_idx, align 4
  %73 = ptrtoint ptr %tmp.sroa.21.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %shl14.i, ptr %tmp.sroa.21.0.i2c.sroa_idx, align 4
  %74 = ptrtoint ptr %tmp.sroa.22.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shl16.i, ptr %tmp.sroa.22.0.i2c.sroa_idx, align 4
  %75 = ptrtoint ptr %tmp.sroa.23.0.i2c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shl18.i, ptr %tmp.sroa.23.0.i2c.sroa_idx, align 4
  br i1 %tobool33.not.i, label %if.then4, label %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit.if.end_crit_edge

amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit.if.end_crit_edge: ; preds = %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %tmp.sroa.5.0.i2c.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tmp.sroa.5.0.i2c.sroa_idx, align 1
  %conv5 = zext i8 %77 to i32
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %stmp, ptr noundef nonnull @.str, i32 noundef %conv5)
  %call9 = call ptr @amdgpu_i2c_create(ptr noundef %ddev.i, ptr noundef nonnull %i2c, ptr noundef nonnull %stmp) #9
  %arrayidx10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 17, i32 %i.026
  %78 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call9, ptr %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %amdgpu_atombios_get_bus_rec_for_i2c_gpio.exit.if.end_crit_edge
  %add.ptr11 = getelementptr i8, ptr %gpio.025, i32 27
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end.if.end12_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stmp) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %i2c) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_i2c_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_lookup_gpio(ptr noalias nocapture writeonly sret(%struct.amdgpu_gpio_rec) align 4 %agg.result, ptr nocapture noundef readonly %adev, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !43
  %4 = call ptr @memset(ptr %agg.result, i32 0, i32 16)
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %size, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %size, align 2
  %conv1 = zext i16 %6 to i32
  %sub = add nsw i32 %conv1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp26.not = icmp ult i32 %sub, 4
  br i1 %cmp26.not, label %if.then.if.end16_crit_edge, label %for.body.preheader

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

for.body.preheader:                               ; preds = %if.then
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %asGPIO_Pin = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, ptr %add.ptr, i32 0, i32 1
  %div24 = lshr i32 %sub, 2
  %umax = call i32 @llvm.umax.i32(i32 %div24, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pin.027 = phi ptr [ %add.ptr15, %if.end.for.body_crit_edge ], [ %asGPIO_Pin, %for.body.preheader ]
  %ucGPIO_ID = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027, i32 0, i32 2
  %11 = ptrtoint ptr %ucGPIO_ID to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ucGPIO_ID, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %id)
  %cmp5 = icmp eq i8 %12, %id
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %id9 = getelementptr inbounds %struct.amdgpu_gpio_rec, ptr %agg.result, i32 0, i32 1
  %13 = ptrtoint ptr %id9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %id, ptr %id9, align 1
  %14 = ptrtoint ptr %pin.027 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %pin.027, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv10 = zext i16 %16 to i32
  %reg = getelementptr inbounds %struct.amdgpu_gpio_rec, ptr %agg.result, i32 0, i32 2
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv10, ptr %reg, align 4
  %ucGpioPinBitShift = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027, i32 0, i32 1
  %18 = ptrtoint ptr %ucGpioPinBitShift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucGpioPinBitShift, align 1
  %conv11 = zext i8 %19 to i32
  %shift = getelementptr inbounds %struct.amdgpu_gpio_rec, ptr %agg.result, i32 0, i32 4
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv11, ptr %shift, align 4
  %shl = shl nuw i32 1, %conv11
  %mask = getelementptr inbounds %struct.amdgpu_gpio_rec, ptr %agg.result, i32 0, i32 3
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %mask, align 4
  %22 = ptrtoint ptr %agg.result to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %agg.result, align 4
  br label %if.end16

if.end:                                           ; preds = %for.body
  %add.ptr15 = getelementptr i8, ptr %pin.027, i32 4
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.if.end16_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %if.then7, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_has_dce_engine_info(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %size = alloca i16, align 2
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %0 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %3 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %4 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev, align 1, !annotation !43
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ult i8 %7, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv5 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv5
  %usDisplayPathTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 6
  %12 = ptrtoint ptr %usDisplayPathTableOffset to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %usDisplayPathTableOffset, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %conv9 = zext i16 %14 to i32
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %conv9
  %15 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp ne i8 %16, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %tobool.not, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_get_connector_info_from_object_table(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset.i = alloca i16, align 2
  %size.i = alloca i16, align 2
  %size = alloca i16, align 2
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %ddc_bus = alloca %struct.amdgpu_i2c_bus_rec, align 4
  %router = alloca %struct.amdgpu_router, align 4
  %hpd = alloca %struct.amdgpu_hpd, align 8
  %tmp = alloca %struct.amdgpu_i2c_bus_rec, align 4
  %tmp272 = alloca %struct.amdgpu_i2c_bus_rec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %0 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %size, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %3 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %4 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %ddc_bus) #9
  %6 = call ptr @memset(ptr %ddc_bus, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %router) #9
  %7 = call ptr @memset(ptr %router, i32 255, i32 92)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hpd) #9
  %8 = call ptr @memset(ptr %hpd, i32 255, i32 24)
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.end, label %entry.cleanup303_crit_edge

entry.cleanup303_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup303

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp ult i8 %10, 2
  br i1 %cmp, label %if.end.cleanup303_crit_edge, label %if.end4

if.end.cleanup303_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup303

if.end4:                                          ; preds = %if.end
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  %conv5 = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv5
  %usDisplayPathTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 6
  %15 = ptrtoint ptr %usDisplayPathTableOffset to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usDisplayPathTableOffset, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv9 = zext i16 %17 to i32
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %conv9
  %usConnectorObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 2
  %18 = ptrtoint ptr %usConnectorObjectTableOffset to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %usConnectorObjectTableOffset, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv14 = zext i16 %20 to i32
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %conv14
  %usEncoderObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 4
  %21 = ptrtoint ptr %usEncoderObjectTableOffset to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %usEncoderObjectTableOffset, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv19 = zext i16 %23 to i32
  %add.ptr20 = getelementptr i8, ptr %add.ptr, i32 %conv19
  %usRouterObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 3
  %24 = ptrtoint ptr %usRouterObjectTableOffset to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usRouterObjectTableOffset, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv24 = zext i16 %26 to i32
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %conv24
  %usDeviceSupport = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 1
  %27 = ptrtoint ptr %usDeviceSupport to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %usDeviceSupport, align 1
  %29 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp28502.not = icmp eq i8 %30, 0
  br i1 %cmp28502.not, label %if.end4.for.end301_crit_edge, label %for.body.lr.ph

if.end4.for.end301_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end301

for.body.lr.ph:                                   ; preds = %if.end4
  %asDispPath = getelementptr inbounds %struct._ATOM_DISPLAY_OBJECT_PATH_TABLE, ptr %add.ptr10, i32 0, i32 3
  %ddc_valid = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 3
  %cd_valid = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 7
  %asObjects125 = getelementptr inbounds %struct._ATOM_OBJECT_TABLE, ptr %add.ptr25, i32 0, i32 2
  %cd_mux_type = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 8
  %cd_mux_control_pin = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 9
  %cd_mux_state = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 10
  %ddc_mux_type = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 4
  %ddc_mux_control_pin = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 5
  %ddc_mux_state = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 6
  %i2c_info = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 1
  %i2c_addr = getelementptr inbounds %struct.amdgpu_router, ptr %router, i32 0, i32 2
  %asObjects = getelementptr inbounds %struct._ATOM_OBJECT_TABLE, ptr %add.ptr20, i32 0, i32 2
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 24
  %asObjects233 = getelementptr inbounds %struct._ATOM_OBJECT_TABLE, ptr %add.ptr15, i32 0, i32 2
  %tmp275.sroa.5.0.hpd.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 8
  %tmp275.sroa.5.sroa.4.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 9
  %tmp275.sroa.5.sroa.5.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 10
  %tmp275.sroa.5.sroa.6.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 12
  %tmp275.sroa.5.sroa.7.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 16
  %tmp275.sroa.5.sroa.8.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 20
  %plugged_state = getelementptr inbounds %struct.amdgpu_hpd, ptr %hpd, i32 0, i32 1
  %hpd287 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, ptr %ddc_bus, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup295.for.body_crit_edge, %for.body.lr.ph
  %path_size.0512 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup295.for.body_crit_edge ]
  %i.0511 = phi i32 [ 0, %for.body.lr.ph ], [ %inc300, %cleanup295.for.body_crit_edge ]
  %add.ptr30 = getelementptr i8, ptr %asDispPath, i32 %path_size.0512
  %usSize = getelementptr inbounds %struct._ATOM_DISPLAY_OBJECT_PATH, ptr %add.ptr30, i32 0, i32 1
  %31 = ptrtoint ptr %usSize to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %usSize, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %conv31 = zext i16 %33 to i32
  %add = add i32 %path_size.0512, %conv31
  %34 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %add.ptr30, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv32 = zext i16 %36 to i32
  %37 = and i16 %35, %28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not = icmp eq i16 %37, 0
  br i1 %tobool.not, label %for.body.cleanup295_crit_edge, label %if.then33

for.body.cleanup295_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

if.then33:                                        ; preds = %for.body
  %usConnObjectId = getelementptr inbounds %struct._ATOM_DISPLAY_OBJECT_PATH, ptr %add.ptr30, i32 0, i32 2
  %38 = ptrtoint ptr %usConnObjectId to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %usConnObjectId, align 1
  %40 = lshr i16 %39, 8
  %41 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i16 %35, label %if.end46 [
    i16 1024, label %if.then33.cleanup295_crit_edge
    i16 1, label %if.then33.cleanup295_crit_edge533
  ]

if.then33.cleanup295_crit_edge533:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

if.then33.cleanup295_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

if.end46:                                         ; preds = %if.then33
  %conv47 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5631, i16 %39)
  %cmp48 = icmp ugt i16 %39, 5631
  br i1 %cmp48, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %conv47, i32 noundef %conv32) #9
  br label %cleanup295

if.end54:                                         ; preds = %if.end46
  %arrayidx = getelementptr [22 x i32], ptr @object_connector_convert, i32 0, i32 %conv47
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %44 = lshr i32 2558721, %conv47
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp56.not = icmp eq i32 %45, 0
  br i1 %cmp56.not, label %if.end59, label %if.end54.cleanup295_crit_edge

if.end54.cleanup295_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup295

if.end59:                                         ; preds = %if.end54
  %46 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %ddc_valid, align 1
  %47 = ptrtoint ptr %cd_valid to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %cd_valid, align 1
  %48 = ptrtoint ptr %usSize to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %usSize, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %50)
  %cmp63477 = icmp ugt i16 %50, 9
  br i1 %cmp63477, label %for.body65.lr.ph, label %if.end59.for.end217_crit_edge

if.end59.for.end217_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end217

for.body65.lr.ph:                                 ; preds = %if.end59
  %usGraphicObjIds = getelementptr inbounds %struct._ATOM_DISPLAY_OBJECT_PATH, ptr %add.ptr30, i32 0, i32 4
  br label %for.body65

for.body65:                                       ; preds = %if.end214.for.body65_crit_edge, %for.body65.lr.ph
  %j.0478 = phi i32 [ 0, %for.body65.lr.ph ], [ %inc216, %if.end214.for.body65_crit_edge ]
  %arrayidx66 = getelementptr [1 x i16], ptr %usGraphicObjIds, i32 0, i32 %j.0478
  %51 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %arrayidx66, align 1
  %53 = lshr i16 %52, 4
  %trunc = trunc i16 %53 to i3
  %54 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.13)
  switch i3 %trunc, label %for.body65.if.end214_crit_edge [
    i3 2, label %for.cond75.preheader
    i3 -4, label %for.cond119.preheader
  ]

for.body65.if.end214_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

for.cond119.preheader:                            ; preds = %for.body65
  %55 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp122461.not = icmp eq i8 %56, 0
  br i1 %cmp122461.not, label %for.cond119.preheader.if.end214_crit_edge, label %for.cond119.preheader.for.body124_crit_edge

for.cond119.preheader.for.body124_crit_edge:      ; preds = %for.cond119.preheader
  br label %for.body124

for.cond119.preheader.if.end214_crit_edge:        ; preds = %for.cond119.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

for.cond75.preheader:                             ; preds = %for.body65
  %57 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp77471.not = icmp eq i8 %58, 0
  br i1 %cmp77471.not, label %for.cond75.preheader.if.end214_crit_edge, label %for.cond75.preheader.for.body79_crit_edge

for.cond75.preheader.for.body79_crit_edge:        ; preds = %for.cond75.preheader
  br label %for.body79

for.cond75.preheader.if.end214_crit_edge:         ; preds = %for.cond75.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

for.body79:                                       ; preds = %if.end114.for.body79_crit_edge, %for.cond75.preheader.for.body79_crit_edge
  %k.0472 = phi i32 [ %inc, %if.end114.for.body79_crit_edge ], [ 0, %for.cond75.preheader.for.body79_crit_edge ]
  %arrayidx80 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects, i32 0, i32 %k.0472
  %59 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %arrayidx80, align 1
  %61 = call i16 @llvm.bswap.i16(i16 %60)
  %62 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %arrayidx66, align 1
  %conv84 = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %60)
  %cmp85 = icmp eq i16 %63, %60
  br i1 %cmp85, label %if.then87, label %for.body79.if.end114_crit_edge

for.body79.if.end114_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then87:                                        ; preds = %for.body79
  %64 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bios, align 4
  %66 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %data_offset, align 2
  %conv89 = zext i16 %67 to i32
  %add.ptr90 = getelementptr i8, ptr %65, i32 %conv89
  %usRecordOffset = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects, i32 0, i32 %k.0472, i32 2
  %68 = ptrtoint ptr %usRecordOffset to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %usRecordOffset, align 1
  %70 = call i16 @llvm.bswap.i16(i16 %69)
  %conv93 = zext i16 %70 to i32
  %add.ptr94 = getelementptr i8, ptr %add.ptr90, i32 %conv93
  %ucRecordSize464 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr94, i32 0, i32 1
  %71 = ptrtoint ptr %ucRecordSize464 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ucRecordSize464, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp96.not465 = icmp eq i8 %72, 0
  br i1 %cmp96.not465, label %if.then87.while.end_crit_edge, label %if.then87.land.lhs.true_crit_edge

if.then87.land.lhs.true_crit_edge:                ; preds = %if.then87
  br label %land.lhs.true

if.then87.while.end_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true:                                    ; preds = %sw.epilog.land.lhs.true_crit_edge, %if.then87.land.lhs.true_crit_edge
  %73 = phi i8 [ %83, %sw.epilog.land.lhs.true_crit_edge ], [ %72, %if.then87.land.lhs.true_crit_edge ]
  %caps.0467 = phi i16 [ %caps.1, %sw.epilog.land.lhs.true_crit_edge ], [ 0, %if.then87.land.lhs.true_crit_edge ]
  %record.0466 = phi ptr [ %add.ptr109, %sw.epilog.land.lhs.true_crit_edge ], [ %add.ptr94, %if.then87.land.lhs.true_crit_edge ]
  %74 = ptrtoint ptr %record.0466 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %record.0466, align 1
  %76 = add i8 %75, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %76)
  %77 = icmp ult i8 %76, 22
  br i1 %77, label %while.body, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %75)
  %cond327 = icmp eq i8 %75, 20
  br i1 %cond327, label %sw.bb, label %while.body.sw.epilog_crit_edge

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %78 = getelementptr inbounds %struct._ATOM_ENCODER_CAP_RECORD, ptr %record.0466, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %78, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %while.body.sw.epilog_crit_edge
  %caps.1 = phi i16 [ %81, %sw.bb ], [ %caps.0467, %while.body.sw.epilog_crit_edge ]
  %conv108 = zext i8 %73 to i32
  %add.ptr109 = getelementptr i8, ptr %record.0466, i32 %conv108
  %ucRecordSize = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr109, i32 0, i32 1
  %82 = ptrtoint ptr %ucRecordSize to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ucRecordSize, align 1
  %cmp96.not = icmp eq i8 %83, 0
  br i1 %cmp96.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.land.lhs.true_crit_edge

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.then87.while.end_crit_edge
  %caps.0.lcssa = phi i16 [ 0, %if.then87.while.end_crit_edge ], [ %caps.1, %sw.epilog.while.end_crit_edge ], [ %caps.0467, %land.lhs.true.while.end_crit_edge ]
  %84 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %funcs, align 8
  %add_encoder = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %add_encoder to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add_encoder, align 4
  %88 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %add.ptr30, align 1
  %90 = call i16 @llvm.bswap.i16(i16 %89)
  %conv113 = zext i16 %90 to i32
  call void %87(ptr noundef %adev, i32 noundef %conv84, i32 noundef %conv113, i16 noundef zeroext %caps.0.lcssa) #9
  br label %if.end114

if.end114:                                        ; preds = %while.end, %for.body79.if.end114_crit_edge
  %inc = add nuw nsw i32 %k.0472, 1
  %91 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr20, align 1
  %conv76 = zext i8 %92 to i32
  %cmp77 = icmp ult i32 %inc, %conv76
  br i1 %cmp77, label %if.end114.for.body79_crit_edge, label %if.end114.if.end214_crit_edge

if.end114.if.end214_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.end114.for.body79_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79

for.body124:                                      ; preds = %if.end209.for.body124_crit_edge, %for.cond119.preheader.for.body124_crit_edge
  %k.1462 = phi i32 [ %inc211, %if.end209.for.body124_crit_edge ], [ 0, %for.cond119.preheader.for.body124_crit_edge ]
  %arrayidx126 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects125, i32 0, i32 %k.1462
  %93 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %arrayidx126, align 1
  %95 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %arrayidx66, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %94)
  %cmp132 = icmp eq i16 %96, %94
  br i1 %cmp132, label %if.then134, label %for.body124.if.end209_crit_edge

for.body124.if.end209_crit_edge:                  ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then134:                                       ; preds = %for.body124
  %97 = call i16 @llvm.bswap.i16(i16 %94)
  %conv131 = zext i16 %97 to i32
  %98 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bios, align 4
  %100 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %data_offset, align 2
  %conv137 = zext i16 %101 to i32
  %add.ptr138 = getelementptr i8, ptr %99, i32 %conv137
  %usRecordOffset141 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects125, i32 0, i32 %k.1462, i32 2
  %102 = ptrtoint ptr %usRecordOffset141 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %usRecordOffset141, align 1
  %104 = call i16 @llvm.bswap.i16(i16 %103)
  %conv142 = zext i16 %104 to i32
  %add.ptr143 = getelementptr i8, ptr %add.ptr138, i32 %conv142
  %usSrcDstTableOffset = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects125, i32 0, i32 %k.1462, i32 1
  %105 = ptrtoint ptr %usSrcDstTableOffset to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %usSrcDstTableOffset, align 1
  %107 = call i16 @llvm.bswap.i16(i16 %106)
  %conv149 = zext i16 %107 to i32
  %add.ptr150 = getelementptr i8, ptr %add.ptr138, i32 %conv149
  %add.ptr151 = getelementptr i8, ptr %add.ptr150, i32 1
  %108 = ptrtoint ptr %add.ptr150 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %add.ptr150, align 1
  %conv152 = zext i8 %109 to i32
  %mul = shl nuw nsw i32 %conv152, 1
  %add.ptr153 = getelementptr i8, ptr %add.ptr151, i32 %mul
  %add.ptr154 = getelementptr i8, ptr %add.ptr153, i32 1
  %110 = ptrtoint ptr %router to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv131, ptr %router, align 4
  %111 = ptrtoint ptr %add.ptr153 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr153, align 1
  %conv157 = zext i8 %112 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp158452.not = icmp eq i8 %112, 0
  br i1 %cmp158452.not, label %if.then134.for.end171_crit_edge, label %for.body160.lr.ph

if.then134.for.end171_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end171

for.body160.lr.ph:                                ; preds = %if.then134
  %113 = ptrtoint ptr %usConnObjectId to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %usConnObjectId, align 1
  br label %for.body160

for.body160:                                      ; preds = %for.inc169.for.body160_crit_edge, %for.body160.lr.ph
  %enum_id.0453 = phi i32 [ 0, %for.body160.lr.ph ], [ %inc170, %for.inc169.for.body160_crit_edge ]
  %arrayidx163 = getelementptr i16, ptr %add.ptr154, i32 %enum_id.0453
  %115 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx163, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %114, i16 %116)
  %cmp165 = icmp eq i16 %114, %116
  br i1 %cmp165, label %for.body160.for.end171_crit_edge, label %for.inc169

for.body160.for.end171_crit_edge:                 ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end171

for.inc169:                                       ; preds = %for.body160
  %inc170 = add nuw nsw i32 %enum_id.0453, 1
  %exitcond.not = icmp eq i32 %inc170, %conv157
  br i1 %exitcond.not, label %for.inc169.for.end171_crit_edge, label %for.inc169.for.body160_crit_edge

for.inc169.for.body160_crit_edge:                 ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body160

for.inc169.for.end171_crit_edge:                  ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end171

for.end171:                                       ; preds = %for.inc169.for.end171_crit_edge, %for.body160.for.end171_crit_edge, %if.then134.for.end171_crit_edge
  %enum_id.0.lcssa = phi i32 [ 0, %if.then134.for.end171_crit_edge ], [ %enum_id.0453, %for.body160.for.end171_crit_edge ], [ %conv157, %for.inc169.for.end171_crit_edge ]
  %ucRecordSize173455 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr143, i32 0, i32 1
  %117 = ptrtoint ptr %ucRecordSize173455 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %ucRecordSize173455, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp175.not456 = icmp eq i8 %118, 0
  br i1 %cmp175.not456, label %for.end171.if.end209_crit_edge, label %for.end171.land.lhs.true177_crit_edge

for.end171.land.lhs.true177_crit_edge:            ; preds = %for.end171
  br label %land.lhs.true177

for.end171.if.end209_crit_edge:                   ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

land.lhs.true177:                                 ; preds = %sw.epilog204.land.lhs.true177_crit_edge, %for.end171.land.lhs.true177_crit_edge
  %ucRecordSize173459 = phi ptr [ %ucRecordSize173, %sw.epilog204.land.lhs.true177_crit_edge ], [ %ucRecordSize173455, %for.end171.land.lhs.true177_crit_edge ]
  %record135.0457 = phi ptr [ %add.ptr207, %sw.epilog204.land.lhs.true177_crit_edge ], [ %add.ptr143, %for.end171.land.lhs.true177_crit_edge ]
  %119 = ptrtoint ptr %record135.0457 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %record135.0457, align 1
  %121 = add i8 %120, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %121)
  %122 = icmp ult i8 %121, 22
  br i1 %122, label %while.body188, label %land.lhs.true177.if.end209_crit_edge

land.lhs.true177.if.end209_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

while.body188:                                    ; preds = %land.lhs.true177
  %123 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %120, label %while.body188.sw.epilog204_crit_edge [
    i8 1, label %sw.bb191
    i8 14, label %sw.bb195
    i8 15, label %sw.bb198
  ]

while.body188.sw.epilog204_crit_edge:             ; preds = %while.body188
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog204

sw.bb191:                                         ; preds = %while.body188
  call void @__sanitizer_cov_trace_pc() #11
  %sucI2cId = getelementptr inbounds %struct._ATOM_I2C_RECORD, ptr %record135.0457, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tmp) #9
  %124 = ptrtoint ptr %sucI2cId to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %sucI2cId, align 1
  call void @amdgpu_atombios_lookup_i2c_gpio(ptr nonnull sret(%struct.amdgpu_i2c_bus_rec) align 4 %tmp, ptr noundef %adev, i8 noundef zeroext %125)
  %126 = call ptr @memcpy(ptr %i2c_info, ptr %tmp, i32 76)
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tmp) #9
  %ucI2CAddr = getelementptr inbounds %struct._ATOM_I2C_RECORD, ptr %record135.0457, i32 0, i32 2
  %127 = ptrtoint ptr %ucI2CAddr to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ucI2CAddr, align 1
  %129 = lshr i8 %128, 1
  %130 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %i2c_addr, align 4
  br label %sw.epilog204

sw.bb195:                                         ; preds = %while.body188
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %ddc_valid, align 1
  %ucMuxType = getelementptr inbounds %struct._ATOM_ROUTER_DDC_PATH_SELECT_RECORD, ptr %record135.0457, i32 0, i32 1
  %132 = ptrtoint ptr %ucMuxType to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ucMuxType, align 1
  %134 = ptrtoint ptr %ddc_mux_type to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %ddc_mux_type, align 2
  %ucMuxControlPin = getelementptr inbounds %struct._ATOM_ROUTER_DDC_PATH_SELECT_RECORD, ptr %record135.0457, i32 0, i32 2
  %135 = ptrtoint ptr %ucMuxControlPin to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %ucMuxControlPin, align 1
  %137 = ptrtoint ptr %ddc_mux_control_pin to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %ddc_mux_control_pin, align 1
  %arrayidx197 = getelementptr %struct._ATOM_ROUTER_DDC_PATH_SELECT_RECORD, ptr %record135.0457, i32 0, i32 3, i32 %enum_id.0.lcssa
  %138 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx197, align 1
  %140 = ptrtoint ptr %ddc_mux_state to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %ddc_mux_state, align 4
  br label %sw.epilog204

sw.bb198:                                         ; preds = %while.body188
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %cd_valid to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %cd_valid, align 1
  %ucMuxType200 = getelementptr inbounds %struct._ATOM_ROUTER_DATA_CLOCK_PATH_SELECT_RECORD, ptr %record135.0457, i32 0, i32 1
  %142 = ptrtoint ptr %ucMuxType200 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ucMuxType200, align 1
  %144 = ptrtoint ptr %cd_mux_type to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %cd_mux_type, align 2
  %ucMuxControlPin201 = getelementptr inbounds %struct._ATOM_ROUTER_DATA_CLOCK_PATH_SELECT_RECORD, ptr %record135.0457, i32 0, i32 2
  %145 = ptrtoint ptr %ucMuxControlPin201 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ucMuxControlPin201, align 1
  %147 = ptrtoint ptr %cd_mux_control_pin to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %cd_mux_control_pin, align 1
  %arrayidx203 = getelementptr %struct._ATOM_ROUTER_DATA_CLOCK_PATH_SELECT_RECORD, ptr %record135.0457, i32 0, i32 3, i32 %enum_id.0.lcssa
  %148 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx203, align 1
  %150 = ptrtoint ptr %cd_mux_state to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %cd_mux_state, align 4
  br label %sw.epilog204

sw.epilog204:                                     ; preds = %sw.bb198, %sw.bb195, %sw.bb191, %while.body188.sw.epilog204_crit_edge
  %151 = ptrtoint ptr %ucRecordSize173459 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %ucRecordSize173459, align 1
  %conv206 = zext i8 %152 to i32
  %add.ptr207 = getelementptr i8, ptr %record135.0457, i32 %conv206
  %ucRecordSize173 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr207, i32 0, i32 1
  %153 = ptrtoint ptr %ucRecordSize173 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %ucRecordSize173, align 1
  %cmp175.not = icmp eq i8 %154, 0
  br i1 %cmp175.not, label %sw.epilog204.if.end209_crit_edge, label %sw.epilog204.land.lhs.true177_crit_edge

sw.epilog204.land.lhs.true177_crit_edge:          ; preds = %sw.epilog204
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true177

sw.epilog204.if.end209_crit_edge:                 ; preds = %sw.epilog204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.end209:                                        ; preds = %sw.epilog204.if.end209_crit_edge, %land.lhs.true177.if.end209_crit_edge, %for.end171.if.end209_crit_edge, %for.body124.if.end209_crit_edge
  %inc211 = add nuw nsw i32 %k.1462, 1
  %155 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %add.ptr25, align 1
  %conv121 = zext i8 %156 to i32
  %cmp122 = icmp ult i32 %inc211, %conv121
  br i1 %cmp122, label %if.end209.for.body124_crit_edge, label %if.end209.if.end214_crit_edge

if.end209.if.end214_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.end209.for.body124_crit_edge:                  ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body124

if.end214:                                        ; preds = %if.end209.if.end214_crit_edge, %if.end114.if.end214_crit_edge, %for.cond75.preheader.if.end214_crit_edge, %for.cond119.preheader.if.end214_crit_edge, %for.body65.if.end214_crit_edge
  %inc216 = add nuw nsw i32 %j.0478, 1
  %157 = ptrtoint ptr %usSize to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %usSize, align 1
  %159 = call i16 @llvm.bswap.i16(i16 %158)
  %conv62 = zext i16 %159 to i32
  %sub = add nsw i32 %conv62, -8
  %div = sdiv i32 %sub, 2
  %cmp63 = icmp slt i32 %inc216, %div
  br i1 %cmp63, label %if.end214.for.body65_crit_edge, label %if.end214.for.end217_crit_edge

if.end214.for.end217_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end217

if.end214.for.body65_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

for.end217:                                       ; preds = %if.end214.for.end217_crit_edge, %if.end59.for.end217_crit_edge
  %160 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %ddc_bus, align 4
  %161 = ptrtoint ptr %hpd to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 255, ptr %hpd, align 8
  %162 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 2)
  %163 = load i16, ptr %add.ptr30, align 1
  %164 = and i16 %163, 1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %cmp222 = icmp eq i16 %164, 0
  br i1 %cmp222, label %for.cond225.preheader, label %for.end217.if.end285_crit_edge

for.end217.if.end285_crit_edge:                   ; preds = %for.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

for.cond225.preheader:                            ; preds = %for.end217
  %165 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %add.ptr15, align 1
  %conv227 = zext i8 %166 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %cmp228479.not = icmp eq i8 %166, 0
  br i1 %cmp228479.not, label %for.cond225.preheader.if.end285_crit_edge, label %for.body230.lr.ph

for.cond225.preheader.if.end285_crit_edge:        ; preds = %for.cond225.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

for.body230.lr.ph:                                ; preds = %for.cond225.preheader
  %167 = ptrtoint ptr %usConnObjectId to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %usConnObjectId, align 1
  br label %for.body230

for.body230:                                      ; preds = %for.inc282.for.body230_crit_edge, %for.body230.lr.ph
  %j.1480 = phi i32 [ 0, %for.body230.lr.ph ], [ %inc283, %for.inc282.for.body230_crit_edge ]
  %arrayidx234 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects233, i32 0, i32 %j.1480
  %169 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %arrayidx234, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %168, i16 %170)
  %cmp237 = icmp eq i16 %168, %170
  br i1 %cmp237, label %if.then239, label %for.inc282

if.then239:                                       ; preds = %for.body230
  %171 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bios, align 4
  %173 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %data_offset, align 2
  %conv242 = zext i16 %174 to i32
  %add.ptr243 = getelementptr i8, ptr %172, i32 %conv242
  %usRecordOffset246 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects233, i32 0, i32 %j.1480, i32 2
  %175 = ptrtoint ptr %usRecordOffset246 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %176 = load i16, ptr %usRecordOffset246, align 1
  %177 = call i16 @llvm.bswap.i16(i16 %176)
  %conv247 = zext i16 %177 to i32
  %add.ptr248 = getelementptr i8, ptr %add.ptr243, i32 %conv247
  %ucRecordSize252481 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr248, i32 0, i32 1
  %178 = ptrtoint ptr %ucRecordSize252481 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %ucRecordSize252481, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %cmp254.not482 = icmp eq i8 %179, 0
  br i1 %cmp254.not482, label %if.then239.if.end285_crit_edge, label %if.then239.land.lhs.true256_crit_edge

if.then239.land.lhs.true256_crit_edge:            ; preds = %if.then239
  br label %land.lhs.true256

if.then239.if.end285_crit_edge:                   ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

land.lhs.true256:                                 ; preds = %sw.epilog276.land.lhs.true256_crit_edge, %if.then239.land.lhs.true256_crit_edge
  %ucRecordSize252488 = phi ptr [ %ucRecordSize252, %sw.epilog276.land.lhs.true256_crit_edge ], [ %ucRecordSize252481, %if.then239.land.lhs.true256_crit_edge ]
  %record240.0486 = phi ptr [ %add.ptr279, %sw.epilog276.land.lhs.true256_crit_edge ], [ %add.ptr248, %if.then239.land.lhs.true256_crit_edge ]
  %180 = ptrtoint ptr %record240.0486 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %record240.0486, align 1
  %182 = add i8 %181, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %182)
  %183 = icmp ult i8 %182, 22
  br i1 %183, label %while.body267, label %land.lhs.true256.if.end285_crit_edge

land.lhs.true256.if.end285_crit_edge:             ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

while.body267:                                    ; preds = %land.lhs.true256
  %184 = zext i8 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %181, label %while.body267.sw.epilog276_crit_edge [
    i8 1, label %sw.bb270
    i8 2, label %sw.bb273
  ]

while.body267.sw.epilog276_crit_edge:             ; preds = %while.body267
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog276

sw.bb270:                                         ; preds = %while.body267
  call void @__sanitizer_cov_trace_pc() #11
  %sucI2cId271 = getelementptr inbounds %struct._ATOM_I2C_RECORD, ptr %record240.0486, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tmp272) #9
  %185 = ptrtoint ptr %sucI2cId271 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %sucI2cId271, align 1
  call void @amdgpu_atombios_lookup_i2c_gpio(ptr nonnull sret(%struct.amdgpu_i2c_bus_rec) align 4 %tmp272, ptr noundef %adev, i8 noundef zeroext %186)
  %187 = call ptr @memcpy(ptr %ddc_bus, ptr %tmp272, i32 76)
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tmp272) #9
  br label %sw.epilog276

sw.bb273:                                         ; preds = %while.body267
  %ucHPDIntGPIOID = getelementptr inbounds %struct._ATOM_HPD_INT_RECORD, ptr %record240.0486, i32 0, i32 1
  %188 = ptrtoint ptr %ucHPDIntGPIOID to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %ucHPDIntGPIOID, align 1
  %190 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mode_info1, align 8, !noalias !50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #9, !noalias !50
  %192 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 -1, ptr %data_offset.i, align 2, !noalias !50, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #9, !noalias !50
  %193 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 -1, ptr %size.i, align 2, !noalias !50, !annotation !43
  %call.i = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %191, i32 noundef 12, ptr noundef nonnull %size.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset.i) #9, !noalias !50
  br i1 %call.i, label %if.then.i, label %sw.bb273.amdgpu_atombios_lookup_gpio.exit_crit_edge

sw.bb273.amdgpu_atombios_lookup_gpio.exit_crit_edge: ; preds = %sw.bb273
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_lookup_gpio.exit

if.then.i:                                        ; preds = %sw.bb273
  %194 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %size.i, align 2, !noalias !50
  %conv1.i = zext i16 %195 to i32
  %sub.i = add nsw i32 %conv1.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp26.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp26.not.i, label %if.then.i.amdgpu_atombios_lookup_gpio.exit_crit_edge, label %for.body.preheader.i

if.then.i.amdgpu_atombios_lookup_gpio.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_lookup_gpio.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %191, i32 0, i32 2
  %196 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bios.i, align 4, !noalias !50
  %198 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %data_offset.i, align 2, !noalias !50
  %conv.i = zext i16 %199 to i32
  %add.ptr.i = getelementptr i8, ptr %197, i32 %conv.i
  %asGPIO_Pin.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, ptr %add.ptr.i, i32 0, i32 1
  %div24.i = lshr i32 %sub.i, 2
  %umax.i = call i32 @llvm.umax.i32(i32 %div24.i, i32 1) #9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.028.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %pin.027.i = phi ptr [ %add.ptr15.i, %if.end.i.for.body.i_crit_edge ], [ %asGPIO_Pin.i, %for.body.preheader.i ]
  %ucGPIO_ID.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i, i32 0, i32 2
  %200 = ptrtoint ptr %ucGPIO_ID.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %ucGPIO_ID.i, align 1, !noalias !50
  call void @__sanitizer_cov_trace_cmp1(i8 %201, i8 %189)
  %cmp5.i = icmp eq i8 %201, %189
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %202 = ptrtoint ptr %pin.027.i to i32
  call void @__asan_loadN_noabort(i32 %202, i32 2)
  %203 = load i16, ptr %pin.027.i, align 1, !noalias !50
  %204 = call i16 @llvm.bswap.i16(i16 %203) #9
  %conv10.i = zext i16 %204 to i32
  %ucGpioPinBitShift.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i, i32 0, i32 1
  %205 = ptrtoint ptr %ucGpioPinBitShift.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %ucGpioPinBitShift.i, align 1, !noalias !50
  %conv11.i = zext i8 %206 to i32
  %shl.i = shl nuw i32 1, %conv11.i
  br label %amdgpu_atombios_lookup_gpio.exit

if.end.i:                                         ; preds = %for.body.i
  %add.ptr15.i = getelementptr i8, ptr %pin.027.i, i32 4
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end.i.amdgpu_atombios_lookup_gpio.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.amdgpu_atombios_lookup_gpio.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_lookup_gpio.exit

amdgpu_atombios_lookup_gpio.exit:                 ; preds = %if.end.i.amdgpu_atombios_lookup_gpio.exit_crit_edge, %if.then7.i, %if.then.i.amdgpu_atombios_lookup_gpio.exit_crit_edge, %sw.bb273.amdgpu_atombios_lookup_gpio.exit_crit_edge
  %tmp274.sroa.0.2 = phi i8 [ 0, %if.then.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ 1, %if.then7.i ], [ 0, %sw.bb273.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ 0, %if.end.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ]
  %tmp274.sroa.5.2 = phi i8 [ 0, %if.then.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ %189, %if.then7.i ], [ 0, %sw.bb273.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ 0, %if.end.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ]
  %tmp274.sroa.6442.2 = phi i32 [ 0, %if.then.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ %conv10.i, %if.then7.i ], [ 0, %sw.bb273.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ 0, %if.end.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ]
  %tmp274.sroa.7.2 = phi i32 [ 0, %if.then.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ %shl.i, %if.then7.i ], [ 0, %sw.bb273.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ 0, %if.end.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ]
  %tmp274.sroa.8.2 = phi i32 [ 0, %if.then.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ %conv11.i, %if.then7.i ], [ 0, %sw.bb273.amdgpu_atombios_lookup_gpio.exit_crit_edge ], [ 0, %if.end.i.amdgpu_atombios_lookup_gpio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #9, !noalias !50
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9, !noalias !50
  %207 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %funcs, align 8, !noalias !53
  %hpd_get_gpio_reg.i = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %208, i32 0, i32 6
  %209 = ptrtoint ptr %hpd_get_gpio_reg.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hpd_get_gpio_reg.i, align 4, !noalias !53
  %call.i438 = call i32 %210(ptr noundef %adev) #9, !noalias !53
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp274.sroa.6442.2, i32 %call.i438)
  %cmp.i = icmp eq i32 %tmp274.sroa.6442.2, %call.i438
  br i1 %cmp.i, label %if.then.i440, label %amdgpu_atombios_lookup_gpio.exit.amdgpu_atombios_get_hpd_info_from_gpio.exit_crit_edge

amdgpu_atombios_lookup_gpio.exit.amdgpu_atombios_get_hpd_info_from_gpio.exit_crit_edge: ; preds = %amdgpu_atombios_lookup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_hpd_info_from_gpio.exit

if.then.i440:                                     ; preds = %amdgpu_atombios_lookup_gpio.exit
  %211 = zext i32 %tmp274.sroa.7.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %tmp274.sroa.7.2, label %sw.default.i [
    i32 1, label %if.then.i440.amdgpu_atombios_get_hpd_info_from_gpio.exit_crit_edge
    i32 256, label %sw.bb3.i
    i32 65536, label %sw.bb5.i
    i32 16777216, label %sw.bb7.i
    i32 67108864, label %sw.bb9.i
    i32 268435456, label %sw.bb11.i
  ]

if.then.i440.amdgpu_atombios_get_hpd_info_from_gpio.exit_crit_edge: ; preds = %if.then.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_hpd_info_from_gpio.exit

sw.bb3.i:                                         ; preds = %if.then.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_hpd_info_from_gpio.exit

sw.bb5.i:                                         ; preds = %if.then.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_hpd_info_from_gpio.exit

sw.bb7.i:                                         ; preds = %if.then.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_hpd_info_from_gpio.exit

sw.bb9.i:                                         ; preds = %if.then.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_hpd_info_from_gpio.exit

sw.bb11.i:                                        ; preds = %if.then.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_hpd_info_from_gpio.exit

sw.default.i:                                     ; preds = %if.then.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_get_hpd_info_from_gpio.exit

amdgpu_atombios_get_hpd_info_from_gpio.exit:      ; preds = %sw.default.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %if.then.i440.amdgpu_atombios_get_hpd_info_from_gpio.exit_crit_edge, %amdgpu_atombios_lookup_gpio.exit.amdgpu_atombios_get_hpd_info_from_gpio.exit_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb3.i ], [ 2, %sw.bb5.i ], [ 3, %sw.bb7.i ], [ 4, %sw.bb9.i ], [ 5, %sw.bb11.i ], [ 255, %sw.default.i ], [ 0, %if.then.i440.amdgpu_atombios_get_hpd_info_from_gpio.exit_crit_edge ], [ 255, %amdgpu_atombios_lookup_gpio.exit.amdgpu_atombios_get_hpd_info_from_gpio.exit_crit_edge ]
  %tmp275.sroa.0.sroa.0.0.insert.ext = zext i32 %.sink.i to i64
  %tmp275.sroa.0.sroa.0.0.insert.shift = shl nuw nsw i64 %tmp275.sroa.0.sroa.0.0.insert.ext, 32
  %212 = ptrtoint ptr %hpd to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %tmp275.sroa.0.sroa.0.0.insert.shift, ptr %hpd, align 8
  %213 = ptrtoint ptr %tmp275.sroa.5.0.hpd.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %tmp274.sroa.0.2, ptr %tmp275.sroa.5.0.hpd.sroa_idx, align 8
  %214 = ptrtoint ptr %tmp275.sroa.5.sroa.4.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %tmp274.sroa.5.2, ptr %tmp275.sroa.5.sroa.4.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx, align 1
  %215 = ptrtoint ptr %tmp275.sroa.5.sroa.5.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %tmp275.sroa.5.sroa.5.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx, align 2
  %216 = ptrtoint ptr %tmp275.sroa.5.sroa.6.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %tmp274.sroa.6442.2, ptr %tmp275.sroa.5.sroa.6.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx, align 4
  %217 = ptrtoint ptr %tmp275.sroa.5.sroa.7.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %tmp274.sroa.7.2, ptr %tmp275.sroa.5.sroa.7.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx, align 8
  %218 = ptrtoint ptr %tmp275.sroa.5.sroa.8.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %tmp274.sroa.8.2, ptr %tmp275.sroa.5.sroa.8.0.tmp275.sroa.5.0.hpd.sroa_idx.sroa_idx, align 4
  %ucPlugged_PinState = getelementptr inbounds %struct._ATOM_HPD_INT_RECORD, ptr %record240.0486, i32 0, i32 2
  %219 = ptrtoint ptr %ucPlugged_PinState to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %ucPlugged_PinState, align 1
  %221 = ptrtoint ptr %plugged_state to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %plugged_state, align 4
  br label %sw.epilog276

sw.epilog276:                                     ; preds = %amdgpu_atombios_get_hpd_info_from_gpio.exit, %sw.bb270, %while.body267.sw.epilog276_crit_edge
  %222 = ptrtoint ptr %ucRecordSize252488 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %ucRecordSize252488, align 1
  %conv278 = zext i8 %223 to i32
  %add.ptr279 = getelementptr i8, ptr %record240.0486, i32 %conv278
  %ucRecordSize252 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr279, i32 0, i32 1
  %224 = ptrtoint ptr %ucRecordSize252 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %ucRecordSize252, align 1
  %cmp254.not = icmp eq i8 %225, 0
  br i1 %cmp254.not, label %sw.epilog276.if.end285_crit_edge, label %sw.epilog276.land.lhs.true256_crit_edge

sw.epilog276.land.lhs.true256_crit_edge:          ; preds = %sw.epilog276
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true256

sw.epilog276.if.end285_crit_edge:                 ; preds = %sw.epilog276
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

for.inc282:                                       ; preds = %for.body230
  %inc283 = add nuw nsw i32 %j.1480, 1
  %exitcond518.not = icmp eq i32 %inc283, %conv227
  br i1 %exitcond518.not, label %for.inc282.if.end285_crit_edge, label %for.inc282.for.body230_crit_edge

for.inc282.for.body230_crit_edge:                 ; preds = %for.inc282
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body230

for.inc282.if.end285_crit_edge:                   ; preds = %for.inc282
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285

if.end285:                                        ; preds = %for.inc282.if.end285_crit_edge, %sw.epilog276.if.end285_crit_edge, %land.lhs.true256.if.end285_crit_edge, %if.then239.if.end285_crit_edge, %for.cond225.preheader.if.end285_crit_edge, %for.end217.if.end285_crit_edge
  %226 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %hpd, align 8
  %228 = ptrtoint ptr %hpd287 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %hpd287, align 4
  %229 = ptrtoint ptr %usConnObjectId to i32
  call void @__asan_loadN_noabort(i32 %229, i32 2)
  %230 = load i16, ptr %usConnObjectId, align 1
  %231 = call i16 @llvm.bswap.i16(i16 %230)
  %232 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %funcs, align 8
  %add_connector = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %233, i32 0, i32 10
  %234 = ptrtoint ptr %add_connector to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %add_connector, align 4
  %conv291 = zext i16 %231 to i32
  %236 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 2)
  %237 = load i16, ptr %add.ptr30, align 1
  %238 = call i16 @llvm.bswap.i16(i16 %237)
  %conv293 = zext i16 %238 to i32
  call void %235(ptr noundef %adev, i32 noundef %conv291, i32 noundef %conv293, i32 noundef %43, ptr noundef nonnull %ddc_bus, i16 noundef zeroext %40, ptr noundef nonnull %hpd, ptr noundef nonnull %router) #9
  br label %cleanup295

cleanup295:                                       ; preds = %if.end285, %if.end54.cleanup295_crit_edge, %if.then50, %if.then33.cleanup295_crit_edge, %if.then33.cleanup295_crit_edge533, %for.body.cleanup295_crit_edge
  %inc300 = add nuw nsw i32 %i.0511, 1
  %239 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %add.ptr10, align 1
  %conv27 = zext i8 %240 to i32
  %cmp28 = icmp ult i32 %inc300, %conv27
  br i1 %cmp28, label %cleanup295.for.body_crit_edge, label %cleanup295.for.end301_crit_edge

cleanup295.for.end301_crit_edge:                  ; preds = %cleanup295
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end301

cleanup295.for.body_crit_edge:                    ; preds = %cleanup295
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end301:                                       ; preds = %cleanup295.for.end301_crit_edge, %if.end4.for.end301_crit_edge
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  call void @amdgpu_link_encoder_connector(ptr noundef %ddev.i) #9
  br label %cleanup303

cleanup303:                                       ; preds = %for.end301, %if.end.cleanup303_crit_edge, %entry.cleanup303_crit_edge
  %retval.0 = phi i1 [ true, %for.end301 ], [ false, %entry.cleanup303_crit_edge ], [ false, %if.end.cleanup303_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hpd) #9
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %router) #9
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ddc_bus) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_link_encoder_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_clock_info(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %4, i32 noundef 4, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.if.end124_crit_edge

entry.if.end124_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then:                                          ; preds = %entry
  %clock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61
  %spll4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1
  %mpll6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %usReferenceClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 25
  %11 = ptrtoint ptr %usReferenceClock to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %usReferenceClock, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %conv8 = zext i16 %13 to i32
  %14 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv8, ptr %clock, align 4
  %reference_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %reference_div to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %reference_div, align 4
  %ulMinPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_2, ptr %add.ptr, i32 0, i32 15
  %16 = ptrtoint ptr %ulMinPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ulMinPixelClockPLL_Output, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %pll_out_min = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %pll_out_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pll_out_min, align 4
  %ulMaxPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 8
  %20 = ptrtoint ptr %ulMaxPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %ulMaxPixelClockPLL_Output, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %pll_out_max = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 6
  %23 = ptrtoint ptr %pll_out_max to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pll_out_max, align 4
  %usLcdMinPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %add.ptr, i32 0, i32 14
  %24 = ptrtoint ptr %usLcdMinPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usLcdMinPixelClockPLL_Output, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv9 = zext i16 %26 to i32
  %mul = mul nuw nsw i32 %conv9, 100
  %lcd_pll_out_min = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp = icmp eq i16 %25, 0
  %spec.store.select = select i1 %cmp, i32 %18, i32 %mul
  %27 = ptrtoint ptr %lcd_pll_out_min to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select, ptr %lcd_pll_out_min, align 4
  %usLcdMaxPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %add.ptr, i32 0, i32 15
  %28 = ptrtoint ptr %usLcdMaxPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usLcdMaxPixelClockPLL_Output, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv15 = zext i16 %30 to i32
  %mul16 = mul nuw nsw i32 %conv15, 100
  %lcd_pll_out_max = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp18 = icmp eq i16 %29, 0
  %spec.store.select234 = select i1 %cmp18, i32 %22, i32 %mul16
  %31 = ptrtoint ptr %lcd_pll_out_max to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.store.select234, ptr %lcd_pll_out_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp25 = icmp eq i32 %17, 0
  br i1 %cmp25, label %if.then27, label %if.then.if.end29_crit_edge

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %pll_out_min to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 64800, ptr %pll_out_min, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then.if.end29_crit_edge
  %usMinPixelClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 21
  %33 = ptrtoint ptr %usMinPixelClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %usMinPixelClockPLL_Input, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv30 = zext i16 %35 to i32
  %pll_in_min = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %pll_in_min to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv30, ptr %pll_in_min, align 4
  %usMaxPixelClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 22
  %37 = ptrtoint ptr %usMaxPixelClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %usMaxPixelClockPLL_Input, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %conv31 = zext i16 %39 to i32
  %pll_in_max = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 4
  %40 = ptrtoint ptr %pll_in_max to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv31, ptr %pll_in_max, align 4
  %min_post_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 12
  %41 = ptrtoint ptr %min_post_div to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %min_post_div, align 4
  %max_post_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 13
  %42 = ptrtoint ptr %max_post_div to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 127, ptr %max_post_div, align 4
  %min_frac_feedback_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 16
  %43 = ptrtoint ptr %min_frac_feedback_div to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %min_frac_feedback_div, align 4
  %max_frac_feedback_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 17
  %44 = ptrtoint ptr %max_frac_feedback_div to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 9, ptr %max_frac_feedback_div, align 4
  %min_ref_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 10
  %45 = ptrtoint ptr %min_ref_div to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %min_ref_div, align 4
  %max_ref_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 11
  %46 = ptrtoint ptr %max_ref_div to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1023, ptr %max_ref_div, align 4
  %min_feedback_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 14
  %47 = ptrtoint ptr %min_feedback_div to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %min_feedback_div, align 4
  %max_feedback_div = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 15
  %48 = ptrtoint ptr %max_feedback_div to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4095, ptr %max_feedback_div, align 4
  %best_vco = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 0, i32 9
  %49 = ptrtoint ptr %best_vco to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %best_vco, align 4
  %arrayidx36 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %arrayidx36, ptr %clock, i32 80)
  %arrayidx36.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 0, i32 2
  %51 = call ptr @memcpy(ptr %arrayidx36.1, ptr %clock, i32 80)
  %52 = ptrtoint ptr %usReferenceClock to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %usReferenceClock, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %conv37 = zext i16 %54 to i32
  %55 = ptrtoint ptr %spll4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv37, ptr %spll4, align 4
  %reference_div39 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 1
  %56 = ptrtoint ptr %reference_div39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %reference_div39, align 4
  %usMinEngineClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 16
  %57 = ptrtoint ptr %usMinEngineClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %usMinEngineClockPLL_Output, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %conv40 = zext i16 %59 to i32
  %pll_out_min41 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 5
  %60 = ptrtoint ptr %pll_out_min41 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv40, ptr %pll_out_min41, align 4
  %ulMaxEngineClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 6
  %61 = ptrtoint ptr %ulMaxEngineClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %ulMaxEngineClockPLL_Output, align 1
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %pll_out_max42 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 6
  %64 = ptrtoint ptr %pll_out_max42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %pll_out_max42, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp44 = icmp eq i16 %58, 0
  br i1 %cmp44, label %if.then46, label %if.end29.if.end48_crit_edge

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %pll_out_min41 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 64800, ptr %pll_out_min41, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end29.if.end48_crit_edge
  %usMinEngineClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 14
  %66 = ptrtoint ptr %usMinEngineClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %usMinEngineClockPLL_Input, align 1
  %68 = call i16 @llvm.bswap.i16(i16 %67)
  %conv49 = zext i16 %68 to i32
  %pll_in_min50 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 3
  %69 = ptrtoint ptr %pll_in_min50 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv49, ptr %pll_in_min50, align 4
  %usMaxEngineClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 15
  %70 = ptrtoint ptr %usMaxEngineClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %usMaxEngineClockPLL_Input, align 1
  %72 = call i16 @llvm.bswap.i16(i16 %71)
  %conv51 = zext i16 %72 to i32
  %pll_in_max52 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 4
  %73 = ptrtoint ptr %pll_in_max52 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv51, ptr %pll_in_max52, align 4
  %min_post_div53 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 12
  %74 = ptrtoint ptr %min_post_div53 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %min_post_div53, align 4
  %max_post_div54 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 13
  %75 = ptrtoint ptr %max_post_div54 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %max_post_div54, align 4
  %min_ref_div55 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 10
  %76 = ptrtoint ptr %min_ref_div55 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %min_ref_div55, align 4
  %max_ref_div56 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 11
  %77 = ptrtoint ptr %max_ref_div56 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 255, ptr %max_ref_div56, align 4
  %min_feedback_div57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 14
  %78 = ptrtoint ptr %min_feedback_div57 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %min_feedback_div57, align 4
  %max_feedback_div58 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 15
  %79 = ptrtoint ptr %max_feedback_div58 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 255, ptr %max_feedback_div58, align 4
  %best_vco59 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 1, i32 9
  %80 = ptrtoint ptr %best_vco59 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %best_vco59, align 4
  %usMemoryReferenceClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %add.ptr, i32 0, i32 30
  %81 = ptrtoint ptr %usMemoryReferenceClock to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %usMemoryReferenceClock, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82)
  %conv60 = zext i16 %83 to i32
  %84 = ptrtoint ptr %mpll6 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv60, ptr %mpll6, align 4
  %reference_div62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 1
  %85 = ptrtoint ptr %reference_div62 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %reference_div62, align 4
  %usMinMemoryClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 19
  %86 = ptrtoint ptr %usMinMemoryClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %usMinMemoryClockPLL_Output, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %87)
  %conv63 = zext i16 %88 to i32
  %pll_out_min64 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 5
  %89 = ptrtoint ptr %pll_out_min64 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv63, ptr %pll_out_min64, align 4
  %ulMaxMemoryClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 7
  %90 = ptrtoint ptr %ulMaxMemoryClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %ulMaxMemoryClockPLL_Output, align 1
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %pll_out_max65 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 6
  %93 = ptrtoint ptr %pll_out_max65 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %pll_out_max65, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp67 = icmp eq i16 %87, 0
  br i1 %cmp67, label %if.then69, label %if.end48.if.end71_crit_edge

if.end48.if.end71_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then69:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %pll_out_min64 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 64800, ptr %pll_out_min64, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end48.if.end71_crit_edge
  %usMinMemoryClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 17
  %95 = ptrtoint ptr %usMinMemoryClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %usMinMemoryClockPLL_Input, align 1
  %97 = call i16 @llvm.bswap.i16(i16 %96)
  %conv72 = zext i16 %97 to i32
  %pll_in_min73 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 3
  %98 = ptrtoint ptr %pll_in_min73 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv72, ptr %pll_in_min73, align 4
  %usMaxMemoryClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 18
  %99 = ptrtoint ptr %usMaxMemoryClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %usMaxMemoryClockPLL_Input, align 1
  %101 = call i16 @llvm.bswap.i16(i16 %100)
  %conv74 = zext i16 %101 to i32
  %pll_in_max75 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 4
  %102 = ptrtoint ptr %pll_in_max75 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv74, ptr %pll_in_max75, align 4
  %ulDefaultEngineClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 2
  %103 = ptrtoint ptr %ulDefaultEngineClock to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %ulDefaultEngineClock, align 1
  %105 = call i32 @llvm.bswap.i32(i32 %104)
  %default_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 4
  %106 = ptrtoint ptr %default_sclk to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %default_sclk, align 4
  %ulDefaultMemoryClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 3
  %107 = ptrtoint ptr %ulDefaultMemoryClock to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %ulDefaultMemoryClock, align 1
  %109 = call i32 @llvm.bswap.i32(i32 %108)
  %default_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 3
  %110 = ptrtoint ptr %default_mclk to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %default_mclk, align 4
  %min_post_div78 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 12
  %111 = ptrtoint ptr %min_post_div78 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %min_post_div78, align 4
  %max_post_div79 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 13
  %112 = ptrtoint ptr %max_post_div79 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %max_post_div79, align 4
  %min_ref_div80 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 10
  %113 = ptrtoint ptr %min_ref_div80 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %min_ref_div80, align 4
  %max_ref_div81 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 11
  %114 = ptrtoint ptr %max_ref_div81 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 255, ptr %max_ref_div81, align 4
  %min_feedback_div82 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 14
  %115 = ptrtoint ptr %min_feedback_div82 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 4, ptr %min_feedback_div82, align 4
  %max_feedback_div83 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 15
  %116 = ptrtoint ptr %max_feedback_div83 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 255, ptr %max_feedback_div83, align 4
  %best_vco84 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 2, i32 9
  %117 = ptrtoint ptr %best_vco84 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %best_vco84, align 4
  %ulDefaultDispEngineClkFreq = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %add.ptr, i32 0, i32 10
  %118 = ptrtoint ptr %ulDefaultDispEngineClkFreq to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %ulDefaultDispEngineClkFreq, align 1
  %120 = call i32 @llvm.bswap.i32(i32 %119)
  %default_dispclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 5
  %121 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %default_dispclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53900, i32 %120)
  %cmp88 = icmp ult i32 %120, 53900
  br i1 %cmp88, label %if.end71.if.end106.sink.split_crit_edge, label %if.else

if.end71.if.end106.sink.split_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.sink.split

if.else:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 60001, i32 %120)
  %cmp97 = icmp ult i32 %120, 60001
  br i1 %cmp97, label %if.else.if.end106.sink.split_crit_edge, label %if.else.if.end106_crit_edge

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.else.if.end106.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.sink.split

if.end106.sink.split:                             ; preds = %if.else.if.end106.sink.split_crit_edge, %if.end71.if.end106.sink.split_crit_edge
  %.str.3.sink = phi ptr [ @.str.2, %if.end71.if.end106.sink.split_crit_edge ], [ @.str.3, %if.else.if.end106.sink.split_crit_edge ]
  %.sink = phi i32 [ 60000, %if.end71.if.end106.sink.split_crit_edge ], [ 62500, %if.else.if.end106.sink.split_crit_edge ]
  %div102.lhs.trunc = trunc i32 %120 to i16
  %div102233 = udiv i16 %div102.lhs.trunc, 100
  %div102.zext = zext i16 %div102233 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull %.str.3.sink, i32 noundef %div102.zext) #9
  %122 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %.sink, ptr %default_dispclk, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.else.if.end106_crit_edge
  %usUniphyDPModeExtClkFreq = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %add.ptr, i32 0, i32 31
  %123 = ptrtoint ptr %usUniphyDPModeExtClkFreq to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %usUniphyDPModeExtClkFreq, align 1
  %125 = call i16 @llvm.bswap.i16(i16 %124)
  %conv107 = zext i16 %125 to i32
  %dp_extclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 7
  %126 = ptrtoint ptr %dp_extclk to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv107, ptr %dp_extclk, align 4
  %127 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %default_dispclk, align 4
  %current_dispclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 6
  %129 = ptrtoint ptr %current_dispclk to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %current_dispclk, align 4
  %usMaxPixelClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 20
  %130 = ptrtoint ptr %usMaxPixelClock to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %usMaxPixelClock, align 1
  %132 = call i16 @llvm.bswap.i16(i16 %131)
  %max_pixel_clock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp116 = icmp eq i16 %131, 0
  %narrow = select i1 %cmp116, i16 -25536, i16 %132
  %spec.select = zext i16 %narrow to i32
  %133 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %spec.select, ptr %max_pixel_clock, align 4
  %usFirmwareCapability = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 24
  %134 = ptrtoint ptr %usFirmwareCapability to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %usFirmwareCapability, align 1
  %136 = call i16 @llvm.bswap.i16(i16 %135)
  %conv122 = zext i16 %136 to i32
  %firmware_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 16
  %137 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv122, ptr %firmware_flags, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.end106, %entry.if.end124_crit_edge
  %ret.0 = phi i32 [ 0, %if.end106 ], [ -22, %entry.if.end124_crit_edge ]
  %default_sclk126 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 4
  %138 = ptrtoint ptr %default_sclk126 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %default_sclk126, align 4
  %current_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 1
  %140 = ptrtoint ptr %current_sclk to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %current_sclk, align 4
  %default_mclk128 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 3
  %141 = ptrtoint ptr %default_mclk128 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %default_mclk128, align 4
  %current_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 2
  %143 = ptrtoint ptr %current_mclk to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %current_mclk, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_gfx_info(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %4, i32 noundef 14, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %max_shader_engines = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_1, ptr %add.ptr, i32 0, i32 3
  %11 = ptrtoint ptr %max_shader_engines to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_shader_engines, align 1
  %conv3 = zext i8 %12 to i32
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv3, ptr %config, align 8
  %max_tile_pipes = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_1, ptr %add.ptr, i32 0, i32 4
  %14 = ptrtoint ptr %max_tile_pipes to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_tile_pipes, align 1
  %conv5 = zext i8 %15 to i32
  %max_tile_pipes8 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 1
  %16 = ptrtoint ptr %max_tile_pipes8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv5, ptr %max_tile_pipes8, align 4
  %max_cu_per_sh = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_1, ptr %add.ptr, i32 0, i32 5
  %17 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_cu_per_sh, align 1
  %conv9 = zext i8 %18 to i32
  %max_cu_per_sh12 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %19 = ptrtoint ptr %max_cu_per_sh12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9, ptr %max_cu_per_sh12, align 8
  %max_sh_per_se = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_1, ptr %add.ptr, i32 0, i32 6
  %20 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_sh_per_se, align 1
  %conv13 = zext i8 %21 to i32
  %max_sh_per_se16 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %22 = ptrtoint ptr %max_sh_per_se16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv13, ptr %max_sh_per_se16, align 4
  %max_backends_per_se = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_1, ptr %add.ptr, i32 0, i32 7
  %23 = ptrtoint ptr %max_backends_per_se to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_backends_per_se, align 1
  %conv17 = zext i8 %24 to i32
  %max_backends_per_se20 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 4
  %25 = ptrtoint ptr %max_backends_per_se20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv17, ptr %max_backends_per_se20, align 8
  %max_texture_channel_caches = getelementptr inbounds %struct._ATOM_GFX_INFO_V2_1, ptr %add.ptr, i32 0, i32 8
  %26 = ptrtoint ptr %max_texture_channel_caches to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_texture_channel_caches, align 1
  %conv21 = zext i8 %27 to i32
  %max_texture_channel_caches24 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 5
  %28 = ptrtoint ptr %max_texture_channel_caches24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv21, ptr %max_texture_channel_caches24, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_vram_width(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !43
  %4 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 30, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %crev, align 1
  %8 = and i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %switch = icmp eq i8 %8, 8
  br i1 %switch, label %sw.bb, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  %ucUMAChannelNumber = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 20
  %15 = ptrtoint ptr %ucUMAChannelNumber to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucUMAChannelNumber, align 1
  %conv4 = zext i8 %16 to i32
  %mul = shl nuw nsw i32 %conv4, 6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %sw.bb ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_get_asic_ss_info(ptr nocapture noundef readonly %adev, ptr nocapture noundef %ss, i32 noundef %id, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !43
  %4 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %id, label %entry.if.end13_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then6
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %firmware_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 16
  %5 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %entry
  %firmware_flags8 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 16
  %7 = ptrtoint ptr %firmware_flags8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %firmware_flags8, align 8
  %and9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then6.cleanup_crit_edge, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %9 = call ptr @memset(ptr %ss, i32 0, i32 16)
  %10 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %11, i32 noundef 26, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then14, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end13
  %12 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bios, align 4
  %16 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %17 to i32
  %add.ptr = getelementptr i8, ptr %15, i32 %conv
  %18 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %frev, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %19, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb28
    i8 3, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.then14
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %size, align 2
  %conv17 = zext i16 %22 to i32
  %sub = add nsw i32 %conv17, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %23 = icmp ult i32 %sub, 12
  br i1 %23, label %sw.bb.cleanup_crit_edge, label %for.body.preheader

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb
  %asSpreadSpectrum = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO, ptr %add.ptr, i32 0, i32 1
  %div = udiv i32 %sub, 12
  %umax223 = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.preheader
  %i.0215 = phi i32 [ %inc, %if.end26.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ss_assign.0213 = phi ptr [ %add.ptr27, %if.end26.for.body_crit_edge ], [ %asSpreadSpectrum, %for.body.preheader ]
  %ucClockIndication = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ss_assign.0213, i32 0, i32 3
  %24 = ptrtoint ptr %ucClockIndication to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ucClockIndication, align 1
  %conv20 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20, i32 %id)
  %cmp21 = icmp eq i32 %conv20, %id
  br i1 %cmp21, label %land.lhs.true, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %for.body
  %26 = ptrtoint ptr %ss_assign.0213 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %ss_assign.0213, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %clock)
  %cmp23.not = icmp ult i32 %28, %clock
  br i1 %cmp23.not, label %land.lhs.true.if.end26_crit_edge, label %if.then25

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %usSpreadSpectrumPercentage = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ss_assign.0213, i32 0, i32 1
  %29 = ptrtoint ptr %usSpreadSpectrumPercentage to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usSpreadSpectrumPercentage, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %32 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %ss, align 2
  %ucSpreadSpectrumMode = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ss_assign.0213, i32 0, i32 4
  %33 = ptrtoint ptr %ucSpreadSpectrumMode to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ucSpreadSpectrumMode, align 1
  %type = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 2
  %35 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %type, align 2
  %usSpreadRateInKhz = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ss_assign.0213, i32 0, i32 2
  %36 = ptrtoint ptr %usSpreadRateInKhz to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %usSpreadRateInKhz, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %rate = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 7
  %39 = ptrtoint ptr %rate to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %rate, align 2
  %percentage_divider = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 1
  %40 = ptrtoint ptr %percentage_divider to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 100, ptr %percentage_divider, align 2
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %add.ptr27 = getelementptr i8, ptr %ss_assign.0213, i32 12
  %inc = add nuw nsw i32 %i.0215, 1
  %exitcond224.not = icmp eq i32 %inc, %umax223
  br i1 %exitcond224.not, label %if.end26.cleanup_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb28:                                          ; preds = %if.then14
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size, align 2
  %conv29 = zext i16 %42 to i32
  %sub30 = add nsw i32 %conv29, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub30)
  %43 = icmp ult i32 %sub30, 12
  br i1 %43, label %sw.bb28.cleanup_crit_edge, label %for.body37.preheader

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body37.preheader:                             ; preds = %sw.bb28
  %asSpreadSpectrum32 = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO_V2, ptr %add.ptr, i32 0, i32 1
  %div31 = udiv i32 %sub30, 12
  %umax221 = call i32 @llvm.umax.i32(i32 %div31, i32 1)
  br label %for.body37

for.body37:                                       ; preds = %if.end67.for.body37_crit_edge, %for.body37.preheader
  %i.1211 = phi i32 [ %inc70, %if.end67.for.body37_crit_edge ], [ 0, %for.body37.preheader ]
  %ss_assign.1209 = phi ptr [ %add.ptr68, %if.end67.for.body37_crit_edge ], [ %asSpreadSpectrum32, %for.body37.preheader ]
  %ucClockIndication38 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %ss_assign.1209, i32 0, i32 3
  %44 = ptrtoint ptr %ucClockIndication38 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ucClockIndication38, align 1
  %conv39 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv39, i32 %id)
  %cmp40 = icmp eq i32 %conv39, %id
  br i1 %cmp40, label %land.lhs.true42, label %for.body37.if.end67_crit_edge

for.body37.if.end67_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

land.lhs.true42:                                  ; preds = %for.body37
  %46 = ptrtoint ptr %ss_assign.1209 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %ss_assign.1209, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %clock)
  %cmp44.not = icmp ult i32 %48, %clock
  br i1 %cmp44.not, label %land.lhs.true42.if.end67_crit_edge, label %if.then46

land.lhs.true42.if.end67_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then46:                                        ; preds = %land.lhs.true42
  %usSpreadSpectrumPercentage47 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %ss_assign.1209, i32 0, i32 1
  %49 = ptrtoint ptr %usSpreadSpectrumPercentage47 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %usSpreadSpectrumPercentage47, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %52 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %ss, align 2
  %ucSpreadSpectrumMode49 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %ss_assign.1209, i32 0, i32 4
  %53 = ptrtoint ptr %ucSpreadSpectrumMode49 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ucSpreadSpectrumMode49, align 1
  %type50 = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 2
  %55 = ptrtoint ptr %type50 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %type50, align 2
  %usSpreadRateIn10Hz = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %ss_assign.1209, i32 0, i32 2
  %56 = ptrtoint ptr %usSpreadRateIn10Hz to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %usSpreadRateIn10Hz, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %rate51 = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 7
  %59 = ptrtoint ptr %rate51 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %rate51, align 2
  %percentage_divider52 = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 1
  %60 = ptrtoint ptr %percentage_divider52 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 100, ptr %percentage_divider52, align 2
  %61 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %62)
  %cmp54 = icmp eq i8 %62, 2
  %id.off = add i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off)
  %switch = icmp ult i32 %id.off, 2
  %or.cond = and i1 %switch, %cmp54
  br i1 %or.cond, label %if.then61, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then61:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %63 = udiv i16 %58, 100
  %64 = ptrtoint ptr %rate51 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %rate51, align 2
  br label %cleanup

if.end67:                                         ; preds = %land.lhs.true42.if.end67_crit_edge, %for.body37.if.end67_crit_edge
  %add.ptr68 = getelementptr i8, ptr %ss_assign.1209, i32 12
  %inc70 = add nuw nsw i32 %i.1211, 1
  %exitcond222.not = icmp eq i32 %inc70, %umax221
  br i1 %exitcond222.not, label %if.end67.cleanup_crit_edge, label %if.end67.for.body37_crit_edge

if.end67.for.body37_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb72:                                          ; preds = %if.then14
  %65 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %size, align 2
  %conv73 = zext i16 %66 to i32
  %sub74 = add nsw i32 %conv73, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub74)
  %67 = icmp ult i32 %sub74, 12
  br i1 %67, label %sw.bb72.cleanup_crit_edge, label %for.body81.preheader

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body81.preheader:                             ; preds = %sw.bb72
  %asSpreadSpectrum76 = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO_V3, ptr %add.ptr, i32 0, i32 1
  %div75 = udiv i32 %sub74, 12
  %umax = call i32 @llvm.umax.i32(i32 %div75, i32 1)
  br label %for.body81

for.body81:                                       ; preds = %if.end120.for.body81_crit_edge, %for.body81.preheader
  %i.2207 = phi i32 [ %inc123, %if.end120.for.body81_crit_edge ], [ 0, %for.body81.preheader ]
  %ss_assign.2205 = phi ptr [ %add.ptr121, %if.end120.for.body81_crit_edge ], [ %asSpreadSpectrum76, %for.body81.preheader ]
  %ucClockIndication82 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %ss_assign.2205, i32 0, i32 3
  %68 = ptrtoint ptr %ucClockIndication82 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ucClockIndication82, align 1
  %conv83 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv83, i32 %id)
  %cmp84 = icmp eq i32 %conv83, %id
  br i1 %cmp84, label %land.lhs.true86, label %for.body81.if.end120_crit_edge

for.body81.if.end120_crit_edge:                   ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true86:                                  ; preds = %for.body81
  %70 = ptrtoint ptr %ss_assign.2205 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %ss_assign.2205, align 1
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %clock)
  %cmp88.not = icmp ult i32 %72, %clock
  br i1 %cmp88.not, label %land.lhs.true86.if.end120_crit_edge, label %if.then90

land.lhs.true86.if.end120_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then90:                                        ; preds = %land.lhs.true86
  %usSpreadSpectrumPercentage91 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %ss_assign.2205, i32 0, i32 1
  %73 = ptrtoint ptr %usSpreadSpectrumPercentage91 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %usSpreadSpectrumPercentage91, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74)
  %76 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %ss, align 2
  %ucSpreadSpectrumMode93 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %ss_assign.2205, i32 0, i32 4
  %77 = ptrtoint ptr %ucSpreadSpectrumMode93 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ucSpreadSpectrumMode93, align 1
  %type94 = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 2
  %79 = ptrtoint ptr %type94 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %type94, align 2
  %usSpreadRateIn10Hz95 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %ss_assign.2205, i32 0, i32 2
  %80 = ptrtoint ptr %usSpreadRateIn10Hz95 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %usSpreadRateIn10Hz95, align 1
  %82 = call i16 @llvm.bswap.i16(i16 %81)
  %rate96 = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 7
  %83 = ptrtoint ptr %rate96 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %rate96, align 2
  %84 = ptrtoint ptr %ucSpreadSpectrumMode93 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ucSpreadSpectrumMode93, align 1
  %86 = and i8 %85, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool100.not = icmp eq i8 %86, 0
  %spec.select = select i1 %tobool100.not, i16 100, i16 1000
  %87 = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %spec.select, ptr %87, align 2
  %id.off197 = add i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off197)
  %switch198 = icmp ult i32 %id.off197, 2
  br i1 %switch198, label %if.then110, label %if.then90.if.end115_crit_edge

if.then90.if.end115_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then110:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %89 = udiv i16 %82, 100
  %90 = ptrtoint ptr %rate96 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %rate96, align 2
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.then90.if.end115_crit_edge
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %91 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags, align 8
  %and116 = and i32 %92, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.cleanup_crit_edge, label %if.then118

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @amdgpu_atombios_get_igp_ss_overrides(ptr noundef %adev, ptr noundef %ss, i32 noundef %id)
  br label %cleanup

if.end120:                                        ; preds = %land.lhs.true86.if.end120_crit_edge, %for.body81.if.end120_crit_edge
  %add.ptr121 = getelementptr i8, ptr %ss_assign.2205, i32 12
  %inc123 = add nuw nsw i32 %i.2207, 1
  %exitcond.not = icmp eq i32 %inc123, %umax
  br i1 %exitcond.not, label %if.end120.cleanup_crit_edge, label %if.end120.for.body81_crit_edge

if.end120.for.body81_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body81

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %conv16 = zext i8 %19 to i32
  %93 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %crev, align 1
  %conv126 = zext i8 %94 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %conv16, i32 noundef %conv126) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end120.cleanup_crit_edge, %if.then118, %if.end115.cleanup_crit_edge, %sw.bb72.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then61, %if.then46.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then25, %sw.bb.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then25 ], [ false, %if.then.cleanup_crit_edge ], [ false, %if.then6.cleanup_crit_edge ], [ true, %if.then61 ], [ true, %if.then46.cleanup_crit_edge ], [ true, %if.then118 ], [ true, %if.end115.cleanup_crit_edge ], [ false, %sw.default ], [ false, %if.end13.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb28.cleanup_crit_edge ], [ false, %sw.bb72.cleanup_crit_edge ], [ false, %if.end26.cleanup_crit_edge ], [ false, %if.end67.cleanup_crit_edge ], [ false, %if.end120.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_atombios_get_igp_ss_overrides(ptr nocapture noundef readonly %adev, ptr nocapture noundef writeonly %ss, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !43
  %4 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 30, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %crev, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %13, label %sw.default [
    i8 6, label %sw.bb
    i8 7, label %sw.bb7
    i8 8, label %sw.bb18
    i8 9, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.then
  %15 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %id, label %sw.bb.if.end49_crit_edge [
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
  ]

sw.bb.if.end49_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %usDVISSPercentage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 37
  %16 = ptrtoint ptr %usDVISSPercentage to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %usDVISSPercentage, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %usDVISSpreadRateIn10Hz = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 38
  br label %sw.epilog42

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %usHDMISSPercentage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 35
  %19 = ptrtoint ptr %usHDMISSPercentage to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usHDMISSPercentage, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %usHDMISSpreadRateIn10Hz = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 36
  br label %sw.epilog42

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %usLvdsSSPercentage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 33
  %22 = ptrtoint ptr %usLvdsSSPercentage to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usLvdsSSPercentage, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %usLvdsSSpreadRateIn10Hz = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 34
  br label %sw.epilog42

sw.bb7:                                           ; preds = %if.then
  %25 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %id, label %sw.bb7.if.end49_crit_edge [
    i32 4, label %sw.bb8
    i32 5, label %sw.bb11
    i32 6, label %sw.bb14
  ]

sw.bb7.if.end49_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb8:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %usDVISSPercentage9 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 37
  %26 = ptrtoint ptr %usDVISSPercentage9 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usDVISSPercentage9, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %usDVISSpreadRateIn10Hz10 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 38
  br label %sw.epilog42

sw.bb11:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %usHDMISSPercentage12 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 35
  %29 = ptrtoint ptr %usHDMISSPercentage12 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usHDMISSPercentage12, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %usHDMISSpreadRateIn10Hz13 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 36
  br label %sw.epilog42

sw.bb14:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %usLvdsSSPercentage15 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 33
  %32 = ptrtoint ptr %usLvdsSSPercentage15 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %usLvdsSSPercentage15, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %usLvdsSSpreadRateIn10Hz16 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 34
  br label %sw.epilog42

sw.bb18:                                          ; preds = %if.then
  %35 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %id, label %sw.bb18.if.end49_crit_edge [
    i32 4, label %sw.bb19
    i32 5, label %sw.bb22
    i32 6, label %sw.bb25
  ]

sw.bb18.if.end49_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb19:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %usDVISSPercentage20 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 36
  %36 = ptrtoint ptr %usDVISSPercentage20 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %usDVISSPercentage20, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %usDVISSpreadRateIn10Hz21 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 37
  br label %sw.epilog42

sw.bb22:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %usHDMISSPercentage23 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 34
  %39 = ptrtoint ptr %usHDMISSPercentage23 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %usHDMISSPercentage23, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %usHDMISSpreadRateIn10Hz24 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 35
  br label %sw.epilog42

sw.bb25:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %usLvdsSSPercentage26 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 32
  %42 = ptrtoint ptr %usLvdsSSPercentage26 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %usLvdsSSPercentage26, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %usLvdsSSpreadRateIn10Hz27 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 33
  br label %sw.epilog42

sw.bb29:                                          ; preds = %if.then
  %45 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %id, label %sw.bb29.if.end49_crit_edge [
    i32 4, label %sw.bb30
    i32 5, label %sw.bb33
    i32 6, label %sw.bb36
  ]

sw.bb29.if.end49_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb30:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  %usDVISSPercentage31 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %add.ptr, i32 0, i32 40
  %46 = ptrtoint ptr %usDVISSPercentage31 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %usDVISSPercentage31, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %usDVISSpreadRateIn10Hz32 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %add.ptr, i32 0, i32 41
  br label %sw.epilog42

sw.bb33:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  %usHDMISSPercentage34 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %add.ptr, i32 0, i32 38
  %49 = ptrtoint ptr %usHDMISSPercentage34 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %usHDMISSPercentage34, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %usHDMISSpreadRateIn10Hz35 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %add.ptr, i32 0, i32 39
  br label %sw.epilog42

sw.bb36:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  %usLvdsSSPercentage37 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %add.ptr, i32 0, i32 36
  %52 = ptrtoint ptr %usLvdsSSPercentage37 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %usLvdsSSPercentage37, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %usLvdsSSpreadRateIn10Hz38 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %add.ptr, i32 0, i32 37
  br label %sw.epilog42

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = zext i8 %13 to i32
  %55 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %frev, align 1
  %conv40 = zext i8 %56 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %conv40, i32 noundef %conv3) #9
  br label %if.end49

sw.epilog42:                                      ; preds = %sw.bb36, %sw.bb33, %sw.bb30, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb4
  %usDVISSpreadRateIn10Hz32.sink = phi ptr [ %usDVISSpreadRateIn10Hz32, %sw.bb30 ], [ %usHDMISSpreadRateIn10Hz35, %sw.bb33 ], [ %usLvdsSSpreadRateIn10Hz38, %sw.bb36 ], [ %usDVISSpreadRateIn10Hz21, %sw.bb19 ], [ %usHDMISSpreadRateIn10Hz24, %sw.bb22 ], [ %usLvdsSSpreadRateIn10Hz27, %sw.bb25 ], [ %usDVISSpreadRateIn10Hz10, %sw.bb8 ], [ %usHDMISSpreadRateIn10Hz13, %sw.bb11 ], [ %usLvdsSSpreadRateIn10Hz16, %sw.bb14 ], [ %usDVISSpreadRateIn10Hz, %sw.bb4 ], [ %usHDMISSpreadRateIn10Hz, %sw.bb5 ], [ %usLvdsSSpreadRateIn10Hz, %sw.bb6 ]
  %percentage.0 = phi i16 [ %48, %sw.bb30 ], [ %51, %sw.bb33 ], [ %54, %sw.bb36 ], [ %38, %sw.bb19 ], [ %41, %sw.bb22 ], [ %44, %sw.bb25 ], [ %28, %sw.bb8 ], [ %31, %sw.bb11 ], [ %34, %sw.bb14 ], [ %18, %sw.bb4 ], [ %21, %sw.bb5 ], [ %24, %sw.bb6 ]
  %57 = ptrtoint ptr %usDVISSpreadRateIn10Hz32.sink to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %usDVISSpreadRateIn10Hz32.sink, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %percentage.0)
  %tobool.not = icmp eq i16 %percentage.0, 0
  br i1 %tobool.not, label %sw.epilog42.if.end_crit_edge, label %if.then43

sw.epilog42.if.end_crit_edge:                     ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then43:                                        ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %percentage.0, ptr %ss, align 2
  br label %if.end

if.end:                                           ; preds = %if.then43, %sw.epilog42.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool45.not = icmp eq i16 %58, 0
  br i1 %tobool45.not, label %if.end.if.end49_crit_edge, label %if.then46

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rate47 = getelementptr inbounds %struct.amdgpu_atom_ss, ptr %ss, i32 0, i32 7
  %61 = ptrtoint ptr %rate47 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %59, ptr %rate47, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end.if.end49_crit_edge, %sw.default, %sw.bb29.if.end49_crit_edge, %sw.bb18.if.end49_crit_edge, %sw.bb7.if.end49_crit_edge, %sw.bb.if.end49_crit_edge, %entry.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_clock_dividers(ptr nocapture noundef readonly %adev, i8 noundef zeroext %clock_type, i32 noundef %clock, i1 noundef zeroext %strobe_mode, ptr nocapture noundef %dividers) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.get_clock_dividers, align 4
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #9
  %0 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_INPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_INPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !43
  %4 = call ptr @memset(ptr %args, i32 0, i32 12)
  %5 = call ptr @memset(ptr %dividers, i32 0, i32 32)
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %7, i32 noundef 60, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %9, label %if.end.cleanup_crit_edge [
    i8 2, label %if.end.sw.bb_crit_edge
    i8 3, label %if.end.sw.bb_crit_edge180
    i8 5, label %if.end.sw.bb_crit_edge181
    i8 4, label %sw.bb83
    i8 6, label %sw.bb95
  ]

if.end.sw.bb_crit_edge181:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge180:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge180, %if.end.sw.bb_crit_edge181
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %clock_type)
  %cmp = icmp eq i8 %clock_type, 2
  br i1 %cmp, label %if.then3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %clock, 33554432
  %11 = call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %args, align 4
  %13 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode_info, align 8
  %call7 = call i32 @amdgpu_atom_execute_table(ptr noundef %14, i32 noundef 60, ptr noundef nonnull %args) #9
  %ucPostDiv = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V3, ptr %args, i32 0, i32 2
  %15 = ptrtoint ptr %ucPostDiv to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucPostDiv, align 1
  %conv8 = zext i8 %16 to i32
  %17 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv8, ptr %dividers, align 4
  %ucCntlFlag = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V3, ptr %args, i32 0, i32 3
  %18 = ptrtoint ptr %ucCntlFlag to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucCntlFlag, align 2
  %20 = and i8 %19, 1
  %enable_post_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %21 = ptrtoint ptr %enable_post_div to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %enable_post_div, align 4
  %enable_dithen = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 4
  %22 = lshr i8 %19, 2
  %.lobit = and i8 %22, 1
  %23 = xor i8 %.lobit, 1
  %24 = ptrtoint ptr %enable_dithen to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %enable_dithen, align 1
  %usFbDiv = getelementptr inbounds %struct._ATOM_S_MPLL_FB_DIVIDER, ptr %args, i32 0, i32 1
  %25 = ptrtoint ptr %usFbDiv to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %usFbDiv, align 2
  %27 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load = load i32, ptr %27, align 4
  %29 = and i16 %26, -241
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %bf.value = zext i16 %30 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 14
  %bf.clear = and i32 %bf.load, -67108864
  %bf.set = or i32 %bf.shl, %bf.clear
  %31 = ptrtoint ptr %args to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %args, align 4
  %33 = and i16 %32, -193
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %bf.value22 = zext i16 %34 to i32
  %bf.set24 = or i32 %bf.set, %bf.value22
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bf.set24, ptr %27, align 4
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %0, align 4
  %conv25 = zext i8 %37 to i32
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %38 = ptrtoint ptr %ref_div to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv25, ptr %ref_div, align 4
  %39 = lshr i8 %19, 1
  %.lobit179 = and i8 %39, 1
  %40 = zext i8 %.lobit179 to i32
  %vco_mode = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 5
  %41 = ptrtoint ptr %vco_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %vco_mode, align 4
  br label %cleanup

sw.bb83:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load84 = load i32, ptr %args, align 4
  %43 = and i32 %clock, -256
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %bf.clear86 = and i32 %bf.load84, -16777216
  %bf.set87 = or i32 %bf.clear86, %44
  %45 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bf.set87, ptr %args, align 4
  %46 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mode_info, align 8
  %call90 = call i32 @amdgpu_atom_execute_table(ptr noundef %47, i32 noundef 60, ptr noundef nonnull %args) #9
  %48 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load91 = load i32, ptr %args, align 4
  %bf.lshr = lshr i32 %bf.load91, 24
  %49 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %bf.lshr, ptr %dividers, align 4
  %post_divider = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 7
  %50 = ptrtoint ptr %post_divider to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bf.lshr, ptr %post_divider, align 4
  %bf.clear94 = and i32 %bf.load91, 16777215
  %51 = call i32 @llvm.bswap.i32(i32 %bf.clear94)
  %real_clock = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 6
  %52 = ptrtoint ptr %real_clock to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %real_clock, align 4
  br label %cleanup

sw.bb95:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv96 = zext i8 %clock_type to i32
  %bf.shl99 = shl nuw i32 %conv96, 24
  %53 = and i32 %clock, -256
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %bf.set106 = or i32 %54, %bf.shl99
  %55 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %bf.set106, ptr %args, align 4
  %56 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mode_info, align 8
  %call109 = call i32 @amdgpu_atom_execute_table(ptr noundef %57, i32 noundef 60, ptr noundef nonnull %args) #9
  %usFbDiv110 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %usFbDiv110 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %usFbDiv110, align 2
  %60 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load112 = load i32, ptr %60, align 4
  %62 = and i16 %59, -241
  %63 = call i16 @llvm.bswap.i16(i16 %62)
  %bf.value113 = zext i16 %63 to i32
  %bf.shl114 = shl nuw nsw i32 %bf.value113, 14
  %bf.clear115 = and i32 %bf.load112, -67108864
  %bf.set116 = or i32 %bf.shl114, %bf.clear115
  %64 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %0, align 4
  %66 = and i16 %65, -193
  %67 = call i16 @llvm.bswap.i16(i16 %66)
  %bf.value121 = zext i16 %67 to i32
  %bf.set123 = or i32 %bf.set116, %bf.value121
  %68 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %bf.set123, ptr %60, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %1, align 4
  %conv124 = zext i8 %70 to i32
  %ref_div125 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %71 = ptrtoint ptr %ref_div125 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv124, ptr %ref_div125, align 4
  %ucPllPostDiv = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 3
  %72 = ptrtoint ptr %ucPllPostDiv to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ucPllPostDiv, align 1
  %conv126 = zext i8 %73 to i32
  %74 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv126, ptr %dividers, align 4
  %ucPllCntlFlag = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 4
  %75 = ptrtoint ptr %ucPllCntlFlag to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ucPllCntlFlag, align 2
  %conv128 = zext i8 %76 to i32
  %flags = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 8
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv128, ptr %flags, align 4
  %78 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load130 = load i32, ptr %args, align 4
  %bf.clear131 = and i32 %bf.load130, 16777215
  %79 = call i32 @llvm.bswap.i32(i32 %bf.clear131)
  %real_clock132 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 6
  %80 = ptrtoint ptr %real_clock132 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %real_clock132, align 4
  %bf.lshr135 = lshr i32 %bf.load130, 24
  %post_divider136 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 7
  %81 = ptrtoint ptr %post_divider136 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %bf.lshr135, ptr %post_divider136, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb95, %sw.bb83, %if.then3, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %sw.bb95 ], [ 0, %sw.bb83 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_memory_pll_dividers(ptr nocapture noundef readonly %adev, i32 noundef %clock, i1 noundef zeroext %strobe_mode, ptr nocapture noundef %mpll_param) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, align 8
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #9
  %0 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %args, i32 0, i32 3
  %3 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %args, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %4 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev, align 1, !annotation !43
  %6 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %args, align 8
  %7 = call ptr @memset(ptr %mpll_param, i32 0, i32 32)
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %9, i32 noundef 70, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cond36 = icmp eq i8 %11, 2
  br i1 %cond36, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %12 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cond37 = icmp eq i8 %13, 1
  br i1 %cond37, label %sw.bb2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %14 = call i32 @llvm.bswap.i32(i32 %clock)
  %15 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %args, align 8
  %spec.select = zext i1 %strobe_mode to i8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %2, align 2
  %17 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mode_info, align 8
  %call9 = call i32 @amdgpu_atom_execute_table(ptr noundef %18, i32 noundef 70, ptr noundef nonnull %args) #9
  %19 = ptrtoint ptr %args to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %args, align 8
  %21 = ptrtoint ptr %mpll_param to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %mpll_param, align 4
  %22 = and i16 %20, -241
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %bf.value = zext i16 %23 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 12
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set = or i32 %bf.shl, %bf.clear
  %usFbDiv = getelementptr inbounds %struct._ATOM_S_MPLL_FB_DIVIDER, ptr %args, i32 0, i32 1
  %24 = ptrtoint ptr %usFbDiv to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %usFbDiv, align 2
  %26 = and i16 %25, -241
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %bf.value13 = zext i16 %27 to i32
  %bf.set15 = or i32 %bf.set, %bf.value13
  %28 = ptrtoint ptr %mpll_param to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.set15, ptr %mpll_param, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv16 = zext i8 %30 to i32
  %post_div = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 1
  %31 = ptrtoint ptr %post_div to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv16, ptr %post_div, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %0, align 4
  %conv17 = zext i8 %33 to i32
  %dll_speed = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 3
  %34 = ptrtoint ptr %dll_speed to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv17, ptr %dll_speed, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  %conv18 = zext i8 %36 to i32
  %bwcntl = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 2
  %37 = ptrtoint ptr %bwcntl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv18, ptr %bwcntl, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %2, align 2
  %40 = and i8 %39, 3
  %and = zext i8 %40 to i32
  %vco_mode = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 4
  %41 = ptrtoint ptr %vco_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and, ptr %vco_mode, align 4
  %42 = lshr i8 %39, 2
  %.lobit = and i8 %42, 1
  %43 = zext i8 %.lobit to i32
  %yclk_sel = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 5
  %44 = ptrtoint ptr %yclk_sel to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %yclk_sel, align 4
  %45 = lshr i8 %39, 3
  %.lobit49 = and i8 %45, 1
  %46 = zext i8 %.lobit49 to i32
  %qdr = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 6
  %47 = ptrtoint ptr %qdr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %qdr, align 4
  %48 = lshr i8 %39, 4
  %.lobit50 = and i8 %48, 1
  %49 = zext i8 %.lobit50 to i32
  %half_rate = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 7
  %50 = ptrtoint ptr %half_rate to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %half_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_set_engine_dram_timings(ptr nocapture noundef readonly %adev, i32 noundef %eng_clock, i32 noundef %mem_clock) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._SET_ENGINE_CLOCK_PS_ALLOCATION, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #9
  %0 = getelementptr inbounds i8, ptr %args, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %and = and i32 %eng_clock, 16777215
  %or = or i32 %and, 33554432
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_clock)
  %tobool.not = icmp eq i32 %mem_clock, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds %struct._SET_ENGINE_CLOCK_PS_ALLOCATION, ptr %args, i32 0, i32 1
  %and1 = and i32 %mem_clock, 16777215
  %5 = tail call i32 @llvm.bswap.i32(i32 %and1)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %call = call i32 @amdgpu_atom_execute_table(ptr noundef %8, i32 noundef 63, ptr noundef nonnull %args) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_get_default_voltages(ptr nocapture noundef readonly %adev, ptr nocapture noundef writeonly %vddc, ptr nocapture noundef writeonly %vddci, ptr nocapture noundef writeonly %mvdd) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  %3 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %vddc, align 2
  %4 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %vddci, align 2
  %5 = ptrtoint ptr %mvdd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %mvdd, align 2
  %6 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %7, i32 noundef 4, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bios, align 4
  %12 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %conv
  %usBootUpVDDCVoltage = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %add.ptr, i32 0, i32 13
  %14 = ptrtoint ptr %usBootUpVDDCVoltage to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usBootUpVDDCVoltage, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vddc, align 2
  %18 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp = icmp eq i8 %19, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then
  %20 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp6 = icmp ugt i8 %21, 1
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %usBootUpVDDCIVoltage = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %add.ptr, i32 0, i32 25
  %22 = ptrtoint ptr %usBootUpVDDCIVoltage to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usBootUpVDDCIVoltage, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vddci, align 2
  %usBootUpMVDDCVoltage = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %add.ptr, i32 0, i32 34
  %26 = ptrtoint ptr %usBootUpMVDDCVoltage to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usBootUpMVDDCVoltage, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %29 = ptrtoint ptr %mvdd to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %mvdd, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_max_vddc(ptr nocapture noundef readonly %adev, i8 noundef zeroext %voltage_type, i16 noundef zeroext %voltage_id, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.set_voltage, align 1
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #9
  %0 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 2
  %2 = call ptr @memset(ptr %args, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %3 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %4 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev, align 1, !annotation !43
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %6, i32 noundef 67, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %crev, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %8, label %sw.default [
    i8 1, label %if.end.cleanup_crit_edge
    i8 2, label %sw.bb1
    i8 3, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %args, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %0, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %voltage_type, ptr %args, align 1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %0, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %voltage_id)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %8 to i32
  %15 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %frev, align 1
  %conv14 = zext i8 %16 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %conv14, i32 noundef %conv) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb1
  %.sink = phi i16 [ %14, %sw.bb6 ], [ 0, %sw.bb1 ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %.sink, ptr %1, align 1
  %18 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode_info, align 8
  %call12 = call i32 @amdgpu_atom_execute_table(ptr noundef %19, i32 noundef 67, ptr noundef nonnull %args) #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %1, align 1
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %voltage, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_leakage_vddc_based_on_leakage_idx(ptr nocapture noundef readonly %adev, ptr nocapture noundef writeonly %voltage, i16 noundef zeroext %leakage_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_atombios_get_max_vddc(ptr noundef %adev, i8 noundef zeroext 1, i16 noundef zeroext %leakage_idx, ptr noundef %voltage)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_svi2_info(ptr nocapture noundef readonly %adev, i8 noundef zeroext %voltage_type, ptr nocapture noundef writeonly %svd_gpio_id, ptr nocapture noundef writeonly %svc_gpio_id) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !43
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 8
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cond = icmp eq i8 %13, 3
  br i1 %cond, label %sw.bb, label %sw.default8

sw.bb:                                            ; preds = %if.then
  %14 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cond17 = icmp eq i8 %15, 1
  br i1 %cond17, label %sw.bb5, label %sw.default

sw.bb5:                                           ; preds = %sw.bb
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #9
  %conv.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp26.i = icmp ugt i16 %18, 4
  br i1 %cmp26.i, label %sw.bb5.while.body.i_crit_edge, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5.while.body.i_crit_edge:                    ; preds = %sw.bb5
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb5.while.body.i_crit_edge
  %offset.027.i = phi i32 [ %add.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb5.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.027.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %20, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 1
  %21 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp10.i = icmp eq i8 %22, 7
  br i1 %cmp10.i, label %amdgpu_atombios_lookup_voltage_object_v3.exit, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %usSize.i, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  %conv13.i = zext i16 %25 to i32
  %add.i = add i32 %offset.027.i, %conv13.i
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

amdgpu_atombios_lookup_voltage_object_v3.exit:    ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup_crit_edge, label %if.then7

amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup_crit_edge: ; preds = %amdgpu_atombios_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %amdgpu_atombios_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ucSVDGpioId = getelementptr inbounds %struct._ATOM_SVID2_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 2
  %26 = ptrtoint ptr %ucSVDGpioId to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucSVDGpioId, align 1
  %28 = ptrtoint ptr %svd_gpio_id to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %svd_gpio_id, align 1
  %ucSVCGpioId = getelementptr inbounds %struct._ATOM_SVID2_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 3
  %29 = ptrtoint ptr %ucSVCGpioId to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ucSVCGpioId, align 1
  %31 = ptrtoint ptr %svc_gpio_id to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %svc_gpio_id, align 1
  br label %cleanup

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup

sw.default8:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default8, %sw.default, %if.then7, %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %sw.default8 ], [ -22, %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %cleanup.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_is_voltage_gpio(ptr nocapture noundef readonly %adev, i8 noundef zeroext %voltage_type, i8 noundef zeroext %voltage_mode) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !43
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 8
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cond = icmp eq i8 %13, 3
  br i1 %cond, label %sw.bb, label %sw.default8

sw.bb:                                            ; preds = %if.then
  %14 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cond16 = icmp eq i8 %15, 1
  br i1 %cond16, label %sw.bb5, label %sw.default

sw.bb5:                                           ; preds = %sw.bb
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #9
  %conv.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp26.i = icmp ugt i16 %18, 4
  br i1 %cmp26.i, label %sw.bb5.while.body.i_crit_edge, label %sw.bb5.if.end10_crit_edge

sw.bb5.if.end10_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sw.bb5.while.body.i_crit_edge:                    ; preds = %sw.bb5
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb5.while.body.i_crit_edge
  %offset.027.i = phi i32 [ %add.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb5.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.027.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %20, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 1
  %21 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %voltage_mode)
  %cmp10.i = icmp eq i8 %22, %voltage_mode
  br i1 %cmp10.i, label %amdgpu_atombios_lookup_voltage_object_v3.exit, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %usSize.i, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  %conv13.i = zext i16 %25 to i32
  %add.i = add i32 %offset.027.i, %conv13.i
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end10_crit_edge

cleanup.i.if.end10_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

amdgpu_atombios_lookup_voltage_object_v3.exit:    ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %amdgpu_atombios_lookup_voltage_object_v3.exit.if.end10_crit_edge, label %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup_crit_edge

amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup_crit_edge: ; preds = %amdgpu_atombios_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

amdgpu_atombios_lookup_voltage_object_v3.exit.if.end10_crit_edge: ; preds = %amdgpu_atombios_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup

sw.default8:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end10:                                         ; preds = %amdgpu_atombios_lookup_voltage_object_v3.exit.if.end10_crit_edge, %cleanup.i.if.end10_crit_edge, %sw.bb5.if.end10_crit_edge, %entry.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %sw.default8, %sw.default, %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end10 ], [ false, %sw.default ], [ false, %sw.default8 ], [ true, %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_voltage_table(ptr nocapture noundef readonly %adev, i8 noundef zeroext %voltage_type, i8 noundef zeroext %voltage_mode, ptr nocapture noundef writeonly %voltage_table) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !43
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 8
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cond = icmp eq i8 %13, 3
  br i1 %cond, label %sw.bb, label %sw.default24

sw.bb:                                            ; preds = %if.then
  %14 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cond35 = icmp eq i8 %15, 1
  br i1 %cond35, label %sw.bb5, label %sw.default

sw.bb5:                                           ; preds = %sw.bb
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #9
  %conv.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp26.i = icmp ugt i16 %18, 4
  br i1 %cmp26.i, label %sw.bb5.while.body.i_crit_edge, label %sw.bb5.cleanup27_crit_edge

sw.bb5.cleanup27_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

sw.bb5.while.body.i_crit_edge:                    ; preds = %sw.bb5
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb5.while.body.i_crit_edge
  %offset.027.i = phi i32 [ %add.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb5.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.027.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %20, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 1
  %21 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %voltage_mode)
  %cmp10.i = icmp eq i8 %22, %voltage_mode
  br i1 %cmp10.i, label %amdgpu_atombios_lookup_voltage_object_v3.exit, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %usSize.i, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  %conv13.i = zext i16 %25 to i32
  %add.i = add i32 %offset.027.i, %conv13.i
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup27_crit_edge

cleanup.i.cleanup27_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

amdgpu_atombios_lookup_voltage_object_v3.exit:    ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup27_crit_edge, label %if.then7

amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup27_crit_edge: ; preds = %amdgpu_atombios_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.then7:                                         ; preds = %amdgpu_atombios_lookup_voltage_object_v3.exit
  %ucGpioEntryNum = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 2
  %26 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucGpioEntryNum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %27)
  %cmp = icmp ugt i8 %27, 32
  br i1 %cmp, label %if.then7.cleanup27_crit_edge, label %if.end

if.then7.cleanup27_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.end:                                           ; preds = %if.then7
  %28 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucGpioEntryNum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp1356.not = icmp eq i8 %29, 0
  br i1 %cmp1356.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %asVolGpioLut = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %lut.058 = phi ptr [ %add.ptr18, %for.body.for.body_crit_edge ], [ %asVolGpioLut, %for.body.preheader ]
  %i.057 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %usVoltageValue = getelementptr inbounds %struct._VOLTAGE_LUT_ENTRY_V2, ptr %lut.058, i32 0, i32 1
  %30 = ptrtoint ptr %usVoltageValue to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %usVoltageValue, align 1
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %arrayidx15 = getelementptr %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %i.057
  %33 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx15, align 4
  %34 = ptrtoint ptr %lut.058 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %lut.058, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %smio_low = getelementptr %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %i.057, i32 1
  %37 = ptrtoint ptr %smio_low to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %smio_low, align 4
  %add.ptr18 = getelementptr i8, ptr %lut.058, i32 6
  %inc = add nuw nsw i32 %i.057, 1
  %38 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ucGpioEntryNum, align 1
  %conv12 = zext i8 %39 to i32
  %cmp13 = icmp ult i32 %inc, %conv12
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %ulGpioMaskVal = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 5
  %40 = ptrtoint ptr %ulGpioMaskVal to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %ulGpioMaskVal, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %mask_low = getelementptr inbounds %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 1
  %43 = ptrtoint ptr %mask_low to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %mask_low, align 4
  %44 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ucGpioEntryNum, align 1
  %conv20 = zext i8 %45 to i32
  %46 = ptrtoint ptr %voltage_table to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv20, ptr %voltage_table, align 4
  %ucPhaseDelay = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 3
  %47 = ptrtoint ptr %ucPhaseDelay to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ucPhaseDelay, align 1
  %conv21 = zext i8 %48 to i32
  %phase_delay = getelementptr inbounds %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 2
  %49 = ptrtoint ptr %phase_delay to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv21, ptr %phase_delay, align 4
  br label %cleanup27

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup27

sw.default24:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup27

cleanup27:                                        ; preds = %sw.default24, %sw.default, %for.end, %if.then7.cleanup27_crit_edge, %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup27_crit_edge, %cleanup.i.cleanup27_crit_edge, %sw.bb5.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default ], [ -22, %sw.default24 ], [ 0, %for.end ], [ -22, %if.then7.cleanup27_crit_edge ], [ -22, %amdgpu_atombios_lookup_voltage_object_v3.exit.cleanup27_crit_edge ], [ -22, %entry.cleanup27_crit_edge ], [ -22, %sw.bb5.cleanup27_crit_edge ], [ -22, %cleanup.i.cleanup27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_init_mc_reg_table(ptr nocapture noundef readonly %adev, i8 noundef zeroext %module_index, ptr nocapture noundef %reg_table) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !43
  %4 = call ptr @memset(ptr %reg_table, i32 0, i32 2772)
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %6, i32 noundef 28, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call, label %if.then, label %entry.cleanup117_crit_edge

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 8
  %bios = getelementptr inbounds %struct.atom_context, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %13 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %frev, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %14, label %sw.default112 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %crev, align 1
  %conv5 = zext i8 %17 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %conv5) #9
  br label %cleanup117

sw.bb6:                                           ; preds = %if.then
  %18 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cond = icmp eq i8 %19, 1
  br i1 %cond, label %sw.bb8, label %sw.default

sw.bb8:                                           ; preds = %sw.bb6
  %conv9 = zext i8 %module_index to i32
  %ucNumOfVRAMModule = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_1, ptr %add.ptr, i32 0, i32 5
  %20 = ptrtoint ptr %ucNumOfVRAMModule to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ucNumOfVRAMModule, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %module_index)
  %cmp = icmp ugt i8 %21, %module_index
  br i1 %cmp, label %if.then12, label %sw.bb8.cleanup117_crit_edge

sw.bb8.cleanup117_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.then12:                                        ; preds = %sw.bb8
  %usMemClkPatchTblOffset = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_1, ptr %add.ptr, i32 0, i32 2
  %22 = ptrtoint ptr %usMemClkPatchTblOffset to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usMemClkPatchTblOffset, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv13 = zext i16 %24 to i32
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %conv13
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 4
  %25 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr14, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv16 = zext i16 %27 to i32
  %add.ptr17 = getelementptr i8, ptr %add.ptr15, i32 %conv16
  %div = udiv i16 %27, 3
  %narrow = add nuw nsw i16 %div, 255
  %28 = and i16 %narrow, 255
  %conv23 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %28)
  %cmp24 = icmp ugt i16 %28, 32
  br i1 %cmp24, label %if.then12.cleanup117_crit_edge, label %while.cond.preheader

if.then12.cleanup117_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

while.cond.preheader:                             ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp28177.not = icmp eq i16 %28, 0
  br i1 %cmp28177.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %format.0179 = phi ptr [ %add.ptr37, %if.end32.while.body_crit_edge ], [ %add.ptr15, %while.cond.preheader.while.body_crit_edge ]
  %i.0178 = phi i32 [ %inc, %if.end32.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %ucPreRegDataLength = getelementptr inbounds %struct._ATOM_INIT_REG_INDEX_FORMAT, ptr %format.0179, i32 0, i32 1
  %29 = ptrtoint ptr %ucPreRegDataLength to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ucPreRegDataLength, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool.not = icmp sgt i8 %30, -1
  br i1 %tobool.not, label %if.end32, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end32:                                         ; preds = %while.body
  %31 = ptrtoint ptr %format.0179 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %format.0179, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %arrayidx33 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 3, i32 %i.0178
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx33, align 4
  %35 = ptrtoint ptr %ucPreRegDataLength to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ucPreRegDataLength, align 1
  %pre_reg_data = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 3, i32 %i.0178, i32 1
  %37 = ptrtoint ptr %pre_reg_data to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %pre_reg_data, align 2
  %inc = add nuw nsw i32 %i.0178, 1
  %add.ptr37 = getelementptr i8, ptr %format.0179, i32 3
  %exitcond.not = icmp eq i32 %inc, %conv23
  br i1 %exitcond.not, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %i.0178, %while.body.while.end_crit_edge ], [ %conv23, %if.end32.while.end_crit_edge ]
  %conv38 = trunc i32 %i.0.lcssa to i8
  %38 = ptrtoint ptr %reg_table to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv38, ptr %reg_table, align 4
  %39 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp40.not186 = icmp eq i32 %40, 0
  br i1 %cmp40.not186, label %while.end.while.cond39._crit_edge_crit_edge, label %land.rhs.lr.ph

while.end.while.cond39._crit_edge_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond39._crit_edge

land.rhs.lr.ph:                                   ; preds = %while.end
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %usRegDataBlkSize = getelementptr inbounds %struct._ATOM_INIT_REG_BLOCK, ptr %add.ptr14, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end97.land.rhs_crit_edge, %land.rhs.lr.ph
  %42 = phi i32 [ %41, %land.rhs.lr.ph ], [ %63, %if.end97.land.rhs_crit_edge ]
  %reg_data.0188 = phi ptr [ %add.ptr17, %land.rhs.lr.ph ], [ %add.ptr99, %if.end97.land.rhs_crit_edge ]
  %num_ranges.0187 = phi i8 [ 0, %land.rhs.lr.ph ], [ %num_ranges.1, %if.end97.land.rhs_crit_edge ]
  %conv42 = zext i8 %num_ranges.0187 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %num_ranges.0187)
  %cmp43 = icmp ult i8 %num_ranges.0187, 20
  br i1 %cmp43, label %while.body45, label %land.rhs.cleanup117_crit_edge

land.rhs.cleanup117_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

while.body45:                                     ; preds = %land.rhs
  %shr = lshr i32 %42, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv9)
  %cmp50 = icmp eq i32 %shr, %conv9
  br i1 %cmp50, label %if.then52, label %while.body45.if.end97_crit_edge

while.body45.if.end97_crit_edge:                  ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then52:                                        ; preds = %while.body45
  %and53 = and i32 %42, 16777215
  %arrayidx55 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 2, i32 %conv42
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and53, ptr %arrayidx55, align 4
  %44 = ptrtoint ptr %reg_table to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reg_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp58182.not = icmp eq i8 %45, 0
  br i1 %cmp58182.not, label %if.then52.for.end_crit_edge, label %if.then52.for.body_crit_edge

if.then52.for.body_crit_edge:                     ; preds = %if.then52
  br label %for.body

if.then52.for.end_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then52.for.body_crit_edge
  %j.0185 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 1, %if.then52.for.body_crit_edge ]
  %i.1183 = phi i32 [ %inc95, %for.inc.for.body_crit_edge ], [ 0, %if.then52.for.body_crit_edge ]
  %pre_reg_data62 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 3, i32 %i.1183, i32 1
  %46 = ptrtoint ptr %pre_reg_data62 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pre_reg_data62, align 2
  %trunc = trunc i8 %47 to i4
  %48 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.27)
  switch i4 %trunc, label %for.body.for.inc_crit_edge [
    i4 4, label %if.then67
    i4 0, label %if.then81
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then67:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr68 = getelementptr i32, ptr %reg_data.0188, i32 %j.0185
  %49 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr68, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %arrayidx72 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 2, i32 %conv42, i32 1, i32 %i.1183
  %52 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx72, align 4
  %inc73 = add i32 %j.0185, 1
  br label %for.inc

if.then81:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub86 = add nsw i32 %i.1183, -1
  %arrayidx87 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 2, i32 %conv42, i32 1, i32 %sub86
  %53 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx87, align 4
  %arrayidx92 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 2, i32 %conv42, i32 1, i32 %i.1183
  %55 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx92, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.then67, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc73, %if.then67 ], [ %j.0185, %if.then81 ], [ %j.0185, %for.body.for.inc_crit_edge ]
  %inc95 = add nuw nsw i32 %i.1183, 1
  %56 = ptrtoint ptr %reg_table to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %reg_table, align 4
  %conv57 = zext i8 %57 to i32
  %cmp58 = icmp ult i32 %inc95, %conv57
  br i1 %cmp58, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then52.for.end_crit_edge
  %inc96 = add i8 %num_ranges.0187, 1
  br label %if.end97

if.end97:                                         ; preds = %for.end, %while.body45.if.end97_crit_edge
  %num_ranges.1 = phi i8 [ %inc96, %for.end ], [ %num_ranges.0187, %while.body45.if.end97_crit_edge ]
  %58 = ptrtoint ptr %usRegDataBlkSize to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %usRegDataBlkSize, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %conv98 = zext i16 %60 to i32
  %add.ptr99 = getelementptr i8, ptr %reg_data.0188, i32 %conv98
  %61 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr99, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %cmp40.not = icmp eq i32 %62, 0
  br i1 %cmp40.not, label %if.end97.while.cond39._crit_edge_crit_edge, label %if.end97.land.rhs_crit_edge

if.end97.land.rhs_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end97.while.cond39._crit_edge_crit_edge:       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond39._crit_edge

while.cond39._crit_edge:                          ; preds = %if.end97.while.cond39._crit_edge_crit_edge, %while.end.while.cond39._crit_edge_crit_edge
  %num_ranges.0.lcssa = phi i8 [ 0, %while.end.while.cond39._crit_edge_crit_edge ], [ %num_ranges.1, %if.end97.while.cond39._crit_edge_crit_edge ]
  %num_entries105 = getelementptr inbounds %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 1
  %64 = ptrtoint ptr %num_entries105 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %num_ranges.0.lcssa, ptr %num_entries105, align 1
  br label %cleanup117

sw.default:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %conv7 = zext i8 %19 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef %conv7) #9
  br label %cleanup117

sw.default112:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = zext i8 %14 to i32
  %65 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %crev, align 1
  %conv114 = zext i8 %66 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %conv3, i32 noundef %conv114) #9
  br label %cleanup117

cleanup117:                                       ; preds = %sw.default112, %sw.default, %while.cond39._crit_edge, %land.rhs.cleanup117_crit_edge, %if.then12.cleanup117_crit_edge, %sw.bb8.cleanup117_crit_edge, %sw.bb, %entry.cleanup117_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default112 ], [ -22, %sw.default ], [ -22, %sw.bb ], [ -22, %sw.bb8.cleanup117_crit_edge ], [ -22, %entry.cleanup117_crit_edge ], [ 0, %while.cond39._crit_edge ], [ -22, %if.then12.cleanup117_crit_edge ], [ -22, %land.rhs.cleanup117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_has_gpu_virtualization_table(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !43
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_scratch_regs_lock(ptr noundef %adev, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bios_scratch_reg_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 28
  %0 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bios_scratch_reg_offset, align 4
  %add = add i32 %1, 6
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #9
  %or = and i32 %call, -273
  %bios_6_scratch.0.v = select i1 %lock, i32 256, i32 16
  %bios_6_scratch.0 = or i32 %or, %bios_6_scratch.0.v
  %2 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bios_scratch_reg_offset, align 4
  %add4 = add i32 %3, 6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add4, i32 noundef %bios_6_scratch.0, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_scratch_regs_engine_hung(ptr noundef %adev, i1 noundef zeroext %hung) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bios_scratch_reg_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 28
  %0 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bios_scratch_reg_offset, align 4
  %add = add i32 %1, 3
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #9
  %and = and i32 %call, -536870913
  %masksel = select i1 %hung, i32 536870912, i32 0
  %tmp.0 = or i32 %and, %masksel
  %2 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bios_scratch_reg_offset, align 4
  %add2 = add i32 %3, 3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add2, i32 noundef %tmp.0, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_scratch_regs_set_backlight_level(ptr noundef %adev, i32 noundef %backlight_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bios_scratch_reg_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 28
  %0 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bios_scratch_reg_offset, align 4
  %add = add i32 %1, 2
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #9
  %and = and i32 %call, -65281
  %shl = shl i32 %backlight_level, 8
  %and1 = and i32 %shl, 65280
  %or = or i32 %and, %and1
  %2 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bios_scratch_reg_offset, align 4
  %add3 = add i32 %3, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add3, i32 noundef %or, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_scratch_need_asic_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bios_scratch_reg_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 28
  %0 = ptrtoint ptr %bios_scratch_reg_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bios_scratch_reg_offset, align 4
  %add = add i32 %1, 7
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add, i32 noundef 0) #9
  %and = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_copy_swap(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i8 noundef zeroext %num_bytes, i1 noundef zeroext %to_le) local_unnamed_addr #5 align 64 {
entry:
  %src_tmp = alloca [5 x i32], align 4
  %dst_tmp = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_tmp) #9
  %0 = call ptr @memset(ptr %src_tmp, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_tmp) #9
  %conv = zext i8 %num_bytes to i32
  %add = add i8 %num_bytes, 3
  %and = and i8 %add, -4
  %1 = call ptr @memset(ptr %dst_tmp, i32 255, i32 20)
  br i1 %to_le, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = call ptr @memcpy(ptr %src_tmp, ptr %src, i32 %conv)
  %conv3 = zext i8 %and to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp41.not = icmp eq i8 %and, 0
  br i1 %cmp41.not, label %if.then.if.end_crit_edge, label %for.body.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.preheader:                               ; preds = %if.then
  %div38 = lshr exact i32 %conv3, 2
  %umax43 = call i32 @llvm.umax.i32(i32 %div38, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [5 x i32], ptr %src_tmp, i32 0, i32 %i.042
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %arrayidx5 = getelementptr [5 x i32], ptr %dst_tmp, i32 0, i32 %i.042
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond44.not = icmp eq i32 %inc, %umax43
  br i1 %exitcond44.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  %conv9 = zext i8 %and to i32
  %7 = call ptr @memcpy(ptr %src_tmp, ptr %src, i32 %conv9)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp1339.not = icmp eq i8 %and, 0
  br i1 %cmp1339.not, label %if.else.if.end_crit_edge, label %for.body15.preheader

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body15.preheader:                             ; preds = %if.else
  %div1237 = lshr exact i32 %conv9, 2
  %umax = call i32 @llvm.umax.i32(i32 %div1237, i32 1)
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body15.preheader
  %i.140 = phi i32 [ %inc19, %for.body15.for.body15_crit_edge ], [ 0, %for.body15.preheader ]
  %arrayidx16 = getelementptr [5 x i32], ptr %src_tmp, i32 0, i32 %i.140
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx16, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx17 = getelementptr [5 x i32], ptr %dst_tmp, i32 0, i32 %i.140
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx17, align 4
  %inc19 = add nuw nsw i32 %i.140, 1
  %exitcond.not = icmp eq i32 %inc19, %umax
  br i1 %exitcond.not, label %for.body15.if.end_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.body15.if.end_crit_edge:                      ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body15.if.end_crit_edge, %if.else.if.end_crit_edge, %for.body.if.end_crit_edge, %if.then.if.end_crit_edge
  %conv.sink = phi i32 [ %conv3, %if.then.if.end_crit_edge ], [ %conv, %if.else.if.end_crit_edge ], [ %conv3, %for.body.if.end_crit_edge ], [ %conv, %for.body15.if.end_crit_edge ]
  %12 = call ptr @memcpy(ptr %dst, ptr %dst_tmp, i32 %conv.sink)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_tmp) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_tmp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_fini(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %scratch = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scratch, align 4
  tail call void @kfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 8
  %iio = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %iio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iio, align 4
  tail call void @kfree(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 8
  tail call void @kfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %mode_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mode_info, align 8
  %atom_card_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 1
  %11 = ptrtoint ptr %atom_card_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %atom_card_info, align 4
  tail call void @kfree(ptr noundef %12) #9
  %13 = ptrtoint ptr %atom_card_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %atom_card_info, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %atom_card_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 1
  %1 = ptrtoint ptr %atom_card_info1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %atom_card_info1, align 4
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ddev.i, ptr %call7.i.i, align 8
  %reg_read = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cail_reg_read, ptr %reg_read, align 8
  %reg_write = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cail_reg_write, ptr %reg_write, align 4
  %mc_read = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %mc_read to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cail_mc_read, ptr %mc_read, align 8
  %mc_write = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %mc_write to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cail_mc_write, ptr %mc_write, align 4
  %pll_read = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %pll_read to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cail_pll_read, ptr %pll_read, align 8
  %pll_write = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %pll_write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cail_pll_write, ptr %pll_write, align 4
  %bios = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 26
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %call3 = tail call ptr @amdgpu_atom_parse(ptr noundef nonnull %call7.i.i, ptr noundef %10) #9
  %11 = ptrtoint ptr %mode_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %mode_info, align 8
  %tobool7.not = icmp eq ptr %call3, null
  br i1 %tobool7.not, label %amdgpu_atombios_fini.exit, label %do.body

amdgpu_atombios_fini.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_info, align 8
  tail call void @kfree(ptr noundef %13) #9
  %14 = ptrtoint ptr %mode_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mode_info, align 8
  %15 = ptrtoint ptr %atom_card_info1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %atom_card_info1, align 4
  tail call void @kfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %atom_card_info1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %atom_card_info1, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.atom_context, ptr %call3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @amdgpu_atombios_init.__key) #9
  %is_atom_fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 25
  %18 = ptrtoint ptr %is_atom_fw to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_atom_fw, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_atomfirmware_scratch_regs_init(ptr noundef %adev) #9
  %call14 = tail call i32 @amdgpu_atomfirmware_allocate_fb_scratch(ptr noundef %adev) #9
  %call15 = tail call i32 @amdgpu_atomfirmware_query_firmware_capability(ptr noundef %adev) #9
  %firmware_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 16
  %20 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call15, ptr %firmware_flags, align 8
  br label %cleanup

if.else:                                          ; preds = %do.body
  %bios_scratch_reg_offset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 28
  %21 = ptrtoint ptr %bios_scratch_reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1481, ptr %bios_scratch_reg_offset.i, align 4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1483, i32 noundef 0) #9
  %22 = ptrtoint ptr %bios_scratch_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bios_scratch_reg_offset.i, align 4
  %add3.i = add i32 %23, 6
  %call4.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add3.i, i32 noundef 0) #9
  %or.i = or i32 %call4.i, 536870912
  %and5.i = and i32 %call.i, -536936449
  %24 = ptrtoint ptr %bios_scratch_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bios_scratch_reg_offset.i, align 4
  %add7.i = add i32 %25, 2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add7.i, i32 noundef %and5.i, i32 noundef 0) #9
  %26 = ptrtoint ptr %bios_scratch_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bios_scratch_reg_offset.i, align 4
  %add9.i = add i32 %27, 6
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add9.i, i32 noundef %or.i, i32 noundef 0) #9
  %28 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mode_info, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #9
  %30 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !43
  %call.i42 = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %29, i32 noundef 11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset.i) #9
  br i1 %call.i42, label %if.then.i43, label %if.else.if.end22.thread.i_crit_edge

if.else.if.end22.thread.i_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.thread.i

if.then.i43:                                      ; preds = %if.else
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %29, i32 0, i32 2
  %31 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bios.i, align 4
  %33 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %34 to i32
  %add.ptr.i = getelementptr i8, ptr %32, i32 %conv.i
  %asFirmwareVramReserveInfo.i = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, ptr %add.ptr.i, i32 0, i32 1
  %35 = ptrtoint ptr %asFirmwareVramReserveInfo.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %asFirmwareVramReserveInfo.i, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  %usFirmwareUseInKb.i = getelementptr inbounds %struct._ATOM_FIRMWARE_VRAM_RESERVE_INFO, ptr %asFirmwareVramReserveInfo.i, i32 0, i32 1
  %38 = ptrtoint ptr %usFirmwareUseInKb.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %usFirmwareUseInKb.i, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39) #9
  %conv3.i = zext i16 %40 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %37, i32 noundef %conv3.i) #9
  %41 = ptrtoint ptr %asFirmwareVramReserveInfo.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %asFirmwareVramReserveInfo.i, align 1
  %43 = ptrtoint ptr %usFirmwareUseInKb.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %usFirmwareUseInKb.i, align 1
  %and.i = and i32 %42, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -2147483648
  br i1 %cmp.i, label %if.then14.i, label %if.end22.i

if.then14.i:                                      ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #11
  %conv11.i = zext i16 %44 to i64
  %45 = and i32 %42, 1073741823
  %and15.i = zext i32 %45 to i64
  %shl.i = shl nuw nsw i64 %and15.i, 10
  %fw_vram_usage_start_offset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 22
  %46 = ptrtoint ptr %fw_vram_usage_start_offset.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %shl.i, ptr %fw_vram_usage_start_offset.i, align 8
  %shl16.i = shl nuw nsw i64 %conv11.i, 10
  %fw_vram_usage_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 23
  %47 = ptrtoint ptr %fw_vram_usage_size.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %shl16.i, ptr %fw_vram_usage_size.i, align 8
  br label %if.end22.thread.i

if.end22.thread.i:                                ; preds = %if.then14.i, %if.else.if.end22.thread.i_crit_edge
  %scratch_size_bytes2.i = getelementptr inbounds %struct.atom_context, ptr %29, i32 0, i32 16
  %48 = ptrtoint ptr %scratch_size_bytes2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %scratch_size_bytes2.i, align 4
  br label %51

if.end22.i:                                       ; preds = %if.then.i43
  %49 = call i16 @llvm.bswap.i16(i16 %44) #9
  %conv21.i = zext i16 %49 to i32
  %mul.i = shl nuw nsw i32 %conv21.i, 10
  %scratch_size_bytes.i = getelementptr inbounds %struct.atom_context, ptr %29, i32 0, i32 16
  %50 = ptrtoint ptr %scratch_size_bytes.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %scratch_size_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp23.i = icmp eq i16 %44, 0
  br i1 %cmp23.i, label %if.end22.i._crit_edge, label %if.end22.i.if.end8.i.i.i_crit_edge

if.end22.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

if.end22.i._crit_edge:                            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %51

51:                                               ; preds = %if.end22.i._crit_edge, %if.end22.thread.i
  %scratch_size_bytes5.i = phi ptr [ %scratch_size_bytes2.i, %if.end22.thread.i ], [ %scratch_size_bytes.i, %if.end22.i._crit_edge ]
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %51, %if.end22.i.if.end8.i.i.i_crit_edge
  %scratch_size_bytes4.i = phi ptr [ %scratch_size_bytes5.i, %51 ], [ %scratch_size_bytes.i, %if.end22.i.if.end8.i.i.i_crit_edge ]
  %52 = phi i32 [ 20480, %51 ], [ %mul.i, %if.end22.i.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #13
  %scratch.i44 = getelementptr inbounds %struct.atom_context, ptr %29, i32 0, i32 15
  %53 = ptrtoint ptr %scratch.i44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call9.i.i.i, ptr %scratch.i44, align 4
  %tobool.not.i45 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i45, label %if.end8.i.i.i.amdgpu_atombios_allocate_fb_scratch.exit_crit_edge, label %if.end30.i

if.end8.i.i.i.amdgpu_atombios_allocate_fb_scratch.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_atombios_allocate_fb_scratch.exit

if.end30.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %scratch_size_bytes4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %scratch_size_bytes4.i, align 4
  br label %amdgpu_atombios_allocate_fb_scratch.exit

amdgpu_atombios_allocate_fb_scratch.exit:         ; preds = %if.end30.i, %if.end8.i.i.i.amdgpu_atombios_allocate_fb_scratch.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_atombios_allocate_fb_scratch.exit, %if.then13, %amdgpu_atombios_fini.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %amdgpu_atombios_fini.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %amdgpu_atombios_allocate_fb_scratch.exit ], [ 0, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cail_reg_read(ptr nocapture noundef readonly %info, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef %reg, i32 noundef 0) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cail_reg_write(ptr nocapture noundef readonly %info, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef %reg, i32 noundef %val, i32 noundef 0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cail_mc_read(ptr nocapture noundef readnone %info, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cail_mc_write(ptr nocapture noundef %info, i32 noundef %reg, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cail_pll_read(ptr nocapture noundef readnone %info, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cail_pll_write(ptr nocapture noundef %info, i32 noundef %reg, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_atom_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atomfirmware_scratch_regs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atomfirmware_allocate_fb_scratch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atomfirmware_query_firmware_capability(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_get_data_table(ptr nocapture noundef readonly %adev, i32 noundef %table, ptr noundef %size, ptr noundef %frev, ptr noundef %crev, ptr nocapture noundef writeonly %addr) local_unnamed_addr #0 align 64 {
entry:
  %data_start = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_start) #9
  %0 = ptrtoint ptr %data_start to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_start, align 2, !annotation !43
  %mode_info = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %1 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode_info, align 8
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %2, i32 noundef %table, ptr noundef %size, ptr noundef %frev, ptr noundef %crev, ptr noundef nonnull %data_start) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info, align 8
  %bios = getelementptr inbounds %struct.atom_context, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bios, align 4
  %7 = ptrtoint ptr %data_start to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data_start, align 2
  %conv = zext i16 %8 to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_start) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_atombios_get_vbios_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %2 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_info, align 8
  %vbios_version = getelementptr inbounds %struct.atom_context, ptr %3, i32 0, i32 17
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, ptr noundef %vbios_version) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 150, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 353, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 679, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 683, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 978, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1221, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1296, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1434, i32 4}
!16 = !{ptr @amdgpu_vbios_version_attr_group, !17, !"amdgpu_vbios_version_attr_group", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1788, i32 30}
!18 = !{ptr @amdgpu_atombios_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1846, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @object_connector_convert, !22, !"object_connector_convert", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 239, i32 18}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 858, i32 4}
!25 = !{ptr @amdgpu_vbios_version_attrs, !26, !"amdgpu_vbios_version_attrs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1783, i32 26}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1780, i32 8}
!29 = !{ptr @dev_attr_vbios_version, !28, !"dev_attr_vbios_version", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1777, i32 25}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c", i32 1639, i32 3}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"amdgpu_atombios_get_bus_rec_for_i2c_gpio: %agg.result"}
!46 = distinct !{!46, !"amdgpu_atombios_get_bus_rec_for_i2c_gpio"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"amdgpu_atombios_get_bus_rec_for_i2c_gpio: %agg.result"}
!49 = distinct !{!49, !"amdgpu_atombios_get_bus_rec_for_i2c_gpio"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"amdgpu_atombios_lookup_gpio: %agg.result"}
!52 = distinct !{!52, !"amdgpu_atombios_lookup_gpio"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"amdgpu_atombios_get_hpd_info_from_gpio: %agg.result"}
!55 = distinct !{!55, !"amdgpu_atombios_get_hpd_info_from_gpio"}
!56 = !{i8 0, i8 2}
