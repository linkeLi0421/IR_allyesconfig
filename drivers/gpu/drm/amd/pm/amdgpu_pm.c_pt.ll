; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/amdgpu_pm.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_device_attr = type { %struct.device_attribute, i32, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.hwmon_temp_label = type { i32, ptr }
%struct.cg_flag_name = type { i32, ptr }
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
%struct.amdgpu_device_attr_entry = type { %struct.list_head, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.amd_pm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.pp_states_info = type { i32, [16 x i32] }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.83 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BOOTUP_DEFAULT\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"3D_FULL_SCREEN\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"POWER_SAVING\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIDEO\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VR\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COMPUTE\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CUSTOM\00", [25 x i8] zeroinitializer }, align 32
@amdgpu_pp_profile_name = dso_local constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hwmon_attrgroup, ptr null], [24 x i8] zeroinitializer }, align 32
@amdgpu_pm_sysfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 3500, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Unable to register hwmon device: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu_pm_sysfs_init\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_pm_sysfs_init._entry_ptr = internal global ptr @amdgpu_pm_sysfs_init._entry, section ".printk_index", align 4
@amdgpu_device_attrs = internal global { [28 x %struct.amdgpu_device_attr], [240 x i8] } { [28 x %struct.amdgpu_device_attr] [%struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_power_dpm_state, ptr @amdgpu_set_power_dpm_state }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_power_dpm_force_performance_level, ptr @amdgpu_set_power_dpm_force_performance_level }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_num_states, ptr null }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_cur_state, ptr null }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_force_state, ptr @amdgpu_set_pp_force_state }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_table, ptr @amdgpu_set_pp_table }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_dpm_sclk, ptr @amdgpu_set_pp_dpm_sclk }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_dpm_mclk, ptr @amdgpu_set_pp_dpm_mclk }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_dpm_socclk, ptr @amdgpu_set_pp_dpm_socclk }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_dpm_fclk, ptr @amdgpu_set_pp_dpm_fclk }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_dpm_vclk, ptr @amdgpu_set_pp_dpm_vclk }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_dpm_dclk, ptr @amdgpu_set_pp_dpm_dclk }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_dpm_dcefclk, ptr @amdgpu_set_pp_dpm_dcefclk }, i32 1, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_dpm_pcie, ptr @amdgpu_set_pp_dpm_pcie }, i32 1, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_sclk_od, ptr @amdgpu_set_pp_sclk_od }, i32 1, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_mclk_od, ptr @amdgpu_set_pp_mclk_od }, i32 1, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_power_profile_mode, ptr @amdgpu_set_pp_power_profile_mode }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_od_clk_voltage, ptr @amdgpu_set_pp_od_clk_voltage }, i32 1, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_gpu_busy_percent, ptr null }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_mem_busy_percent, ptr null }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pcie_bw, ptr null }, i32 1, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_pp_features, ptr @amdgpu_set_pp_features }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_unique_id, ptr null }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_thermal_throttling_logging, ptr @amdgpu_set_thermal_throttling_logging }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_gpu_metrics, ptr null }, i32 65537, ptr null }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_smartshift_apu_power, ptr null }, i32 1, ptr @ss_power_attr_update }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_smartshift_dgpu_power, ptr null }, i32 1, ptr @ss_power_attr_update }, %struct.amdgpu_device_attr { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_get_smartshift_bias, ptr @amdgpu_set_smartshift_bias }, i32 1, ptr @ss_bias_attr_update }], [240 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_pm_info\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_pm_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_debugfs_pm_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu_pm_prv_buffer\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_pm_prv_buffer_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_pm_prv_buffer_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hwmon_attrgroup = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @hwmon_attributes_visible, ptr null, ptr @hwmon_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@hwmon_attributes = internal global { [45 x ptr], [44 x i8] } { [45 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_crit_hyst, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_crit_hyst, ptr @sensor_dev_attr_temp1_emergency, ptr @sensor_dev_attr_temp2_emergency, ptr @sensor_dev_attr_temp3_emergency, ptr @sensor_dev_attr_temp1_label, ptr @sensor_dev_attr_temp2_label, ptr @sensor_dev_attr_temp3_label, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_min, ptr @sensor_dev_attr_pwm1_max, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_max, ptr @sensor_dev_attr_fan1_target, ptr @sensor_dev_attr_fan1_enable, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_label, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_label, ptr @sensor_dev_attr_power1_average, ptr @sensor_dev_attr_power1_cap_max, ptr @sensor_dev_attr_power1_cap_min, ptr @sensor_dev_attr_power1_cap, ptr @sensor_dev_attr_power1_cap_default, ptr @sensor_dev_attr_power1_label, ptr @sensor_dev_attr_power2_average, ptr @sensor_dev_attr_power2_cap_max, ptr @sensor_dev_attr_power2_cap_min, ptr @sensor_dev_attr_power2_cap, ptr @sensor_dev_attr_power2_cap_default, ptr @sensor_dev_attr_power2_label, ptr @sensor_dev_attr_freq1_input, ptr @sensor_dev_attr_freq1_label, ptr @sensor_dev_attr_freq2_input, ptr @sensor_dev_attr_freq2_label, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_pwm1, ptr @amdgpu_hwmon_set_pwm1 }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_pwm1_enable, ptr @amdgpu_hwmon_set_pwm1_enable }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_pwm1_max, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_pwm1_min, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_fan1_input, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_fan1_min, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_fan1_max, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_fan1_target, ptr @amdgpu_hwmon_set_fan1_target }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_get_fan1_enable, ptr @amdgpu_hwmon_set_fan1_enable }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp_thresh, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp_thresh, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_cap_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_cap_max, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_cap_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_cap_min, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_cap = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_cap, ptr @amdgpu_hwmon_set_power_cap }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_cap_default = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_cap_default, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_average = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_avg, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_vddgfx, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_vddgfx_label, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_vddnb, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_vddnb_label, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_freq2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_mclk, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_freq2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_mclk_label, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_hotspot_temp_thresh, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_hotspot_temp_thresh, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_mem_temp_thresh, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_mem_temp_thresh, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_emergency = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp_emergency, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_emergency = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp_emergency, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_emergency = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp_emergency, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp_label, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp_label, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power2_average = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_avg, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power2_cap_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_cap_max, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power2_cap_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_cap_min, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power2_cap = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_cap, ptr @amdgpu_hwmon_set_power_cap }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power2_cap_default = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_cap_default, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_label, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@amdgpu_hwmon_set_pwm1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.10, i32 2487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016amdgpu: manual fan speed control should be enabled first\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu_hwmon_set_pwm1\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_hwmon_set_pwm1._entry_ptr = internal global ptr @amdgpu_hwmon_set_pwm1._entry, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_max\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_max\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_target\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power1_cap_max\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power1_cap_min\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power1_cap\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power1_cap_default\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power1_average\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_label\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddgfx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_label\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddnb\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"freq2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"freq2_label\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_emergency\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_emergency\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_emergency\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_label\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@temp_label = internal constant { [3 x %struct.hwmon_temp_label], [40 x i8] } { [3 x %struct.hwmon_temp_label] [%struct.hwmon_temp_label { i32 0, ptr @.str.57 }, %struct.hwmon_temp_label { i32 1, ptr @.str.58 }, %struct.hwmon_temp_label { i32 2, ptr @.str.59 }], [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edge\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"junction\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_label\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power2_average\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power2_cap_max\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power2_cap_min\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power2_cap\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power2_cap_default\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power2_label\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fastPPT\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slowPPT\00", [24 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_temp_label, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_power_label, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_freq1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_sclk, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_freq1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_hwmon_show_sclk_label, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_label\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power1_label\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"freq1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"freq1_label\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sclk\0A\00", [26 x i8] zeroinitializer }, align 32
@amdgpu_device_attr_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.10, i32 2169, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: failed to update device file %s, ret = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_device_attr_create\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_device_attr_create._entry_ptr = internal global ptr @amdgpu_device_attr_create._entry, section ".printk_index", align 4
@amdgpu_device_attr_create._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.10, i32 2179, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: failed to create device file %s, ret = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_device_attr_create._entry_ptr.79 = internal global ptr @amdgpu_device_attr_create._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pp_dpm_socclk\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pp_dpm_dcefclk\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_dpm_fclk\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pp_od_clk_voltage\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mem_busy_percent\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcie_bw\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unique_id\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_features\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_metrics\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_dpm_vclk\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_dpm_dclk\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pp_power_profile_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_dpm_mclk\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power_dpm_state\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"power_dpm_force_performance_level\00", [62 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pp_num_states\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pp_cur_state\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pp_force_state\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pp_table\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_dpm_sclk\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pp_dpm_pcie\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pp_sclk_od\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pp_mclk_od\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpu_busy_percent\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"thermal_throttling_logging\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smartshift_apu_power\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smartshift_dgpu_power\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smartshift_bias\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"balanced\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"performance\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile_standard\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile_min_sclk\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"profile_min_mclk\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"profile_peak\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"perf_determinism\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"profile_exit\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_set_power_dpm_force_performance_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.10, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013amdgpu: Currently not in any profile mode!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu_set_power_dpm_force_performance_level\00", [51 x i8] zeroinitializer }, align 32
@amdgpu_set_power_dpm_force_performance_level._entry_ptr = internal global ptr @amdgpu_set_power_dpm_force_performance_level._entry, section ".printk_index", align 4
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"states: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"boot\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__const.amdgpu_set_pp_od_clk_voltage.delimiter = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vc\00", [29 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vo\00", [29 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%llu %llu %i\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%016llx\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: thermal throttling logging %s, with interval %d seconds\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u%%\0A\00", [26 x i8] zeroinitializer }, align 32
@amdgpu_smartshift_bias = external dso_local local_unnamed_addr global i32, align 4
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpm not enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Debugfs support not implemented for this asic\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Clock Gating Flags Mask: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GFX Clocks and Power:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09%u MHz (MCLK)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09%u MHz (SCLK)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09%u MHz (PSTATE_SCLK)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09%u MHz (PSTATE_MCLK)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09%u mV (VDDGFX)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09%u mV (VDDNB)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09%u.%u W (average GPU)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPU Temperature: %u C\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPU Load: %u %%\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MEM Load: %u %%\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SMC Feature Mask: 0x%016llx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VCN: Disabled\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VCN: Enabled\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09%u MHz (DCLK)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09%u MHz (VCLK)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UVD: Disabled\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UVD: Enabled\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VCE: Disabled\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VCE: Enabled\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09%u MHz (ECCLK)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09%u MHz (CPU%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@clocks = internal constant { [33 x %struct.cg_flag_name], [88 x i8] } { [33 x %struct.cg_flag_name] [%struct.cg_flag_name { i32 -2147483648, ptr @.str.164 }, %struct.cg_flag_name { i32 1, ptr @.str.165 }, %struct.cg_flag_name { i32 2, ptr @.str.166 }, %struct.cg_flag_name { i32 4, ptr @.str.167 }, %struct.cg_flag_name { i32 8, ptr @.str.168 }, %struct.cg_flag_name { i32 16, ptr @.str.169 }, %struct.cg_flag_name { i32 32, ptr @.str.170 }, %struct.cg_flag_name { i32 64, ptr @.str.171 }, %struct.cg_flag_name { i32 128, ptr @.str.172 }, %struct.cg_flag_name { i32 1048576, ptr @.str.173 }, %struct.cg_flag_name { i32 2097152, ptr @.str.174 }, %struct.cg_flag_name { i32 256, ptr @.str.175 }, %struct.cg_flag_name { i32 512, ptr @.str.176 }, %struct.cg_flag_name { i32 1024, ptr @.str.177 }, %struct.cg_flag_name { i32 2048, ptr @.str.178 }, %struct.cg_flag_name { i32 524288, ptr @.str.179 }, %struct.cg_flag_name { i32 4096, ptr @.str.180 }, %struct.cg_flag_name { i32 8192, ptr @.str.181 }, %struct.cg_flag_name { i32 16384, ptr @.str.182 }, %struct.cg_flag_name { i32 32768, ptr @.str.183 }, %struct.cg_flag_name { i32 65536, ptr @.str.184 }, %struct.cg_flag_name { i32 4194304, ptr @.str.185 }, %struct.cg_flag_name { i32 262144, ptr @.str.186 }, %struct.cg_flag_name { i32 131072, ptr @.str.187 }, %struct.cg_flag_name { i32 8388608, ptr @.str.188 }, %struct.cg_flag_name { i32 16777216, ptr @.str.189 }, %struct.cg_flag_name { i32 33554432, ptr @.str.190 }, %struct.cg_flag_name { i32 67108864, ptr @.str.191 }, %struct.cg_flag_name { i32 134217728, ptr @.str.192 }, %struct.cg_flag_name { i32 1073741824, ptr @.str.193 }, %struct.cg_flag_name { i32 536870912, ptr @.str.194 }, %struct.cg_flag_name { i32 268435456, ptr @.str.195 }, %struct.cg_flag_name zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09%s: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Graphics Fine Grain Clock Gating\00", [63 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Graphics Medium Grain Clock Gating\00", [61 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Graphics Medium Grain memory Light Sleep\00", [55 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Graphics Coarse Grain Clock Gating\00", [61 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Graphics Coarse Grain memory Light Sleep\00", [55 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Graphics Coarse Grain Tree Shader Clock Gating\00", [49 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Graphics Coarse Grain Tree Shader Light Sleep\00", [50 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Graphics Command Processor Light Sleep\00", [57 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Graphics Run List Controller Light Sleep\00", [55 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Graphics 3D Coarse Grain Clock Gating\00", [58 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Graphics 3D Coarse Grain memory Light Sleep\00", [52 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Memory Controller Light Sleep\00", [34 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Memory Controller Medium Grain Clock Gating\00", [52 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"System Direct Memory Access Light Sleep\00", [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"System Direct Memory Access Medium Grain Clock Gating\00", [42 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Bus Interface Medium Grain Clock Gating\00", [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bus Interface Light Sleep\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unified Video Decoder Medium Grain Clock Gating\00", [48 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Video Compression Engine Medium Grain Clock Gating\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Host Data Path Light Sleep\00", [37 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Host Data Path Medium Grain Clock Gating\00", [55 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Digital Right Management Medium Grain Clock Gating\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Right Management Light Sleep\00", [59 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Rom Medium Grain Clock Gating\00", [34 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Data Fabric Medium Grain Clock Gating\00", [58 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VCN Medium Grain Clock Gating\00", [34 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Host Data Path Deep Sleep\00", [38 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Host Data Path Shutdown\00", [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Interrupt Handler Clock Gating\00", [33 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"JPEG Medium Grain Clock Gating\00", [33 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Address Translation Hub Medium Grain Clock Gating\00", [46 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Address Translation Hub Light Sleep\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 110, i64 125]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 23, i64 25]
@__sancov_gen_cov_switch_values.199 = internal global [6 x i64] [i64 4, i64 32, i64 19, i64 21, i64 23, i64 25]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 23, i64 25]
@__sancov_gen_cov_switch_values.203 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.204 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 10]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.206 = internal global [7 x i64] [i64 5, i64 8, i64 99, i64 109, i64 112, i64 114, i64 115]
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 86, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 87, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 88, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 89, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 90, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 91, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 92, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [23 x i8] c"amdgpu_pp_profile_name\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 85, i32 20 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3495, i32 12 }
@___asan_gen_.234 = private unnamed_addr constant [13 x i8] c"hwmon_groups\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3476, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3499, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"amdgpu_device_attrs\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2017, i32 34 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3770, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant [28 x i8] c"amdgpu_debugfs_pm_info_fops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3721, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3774, i32 28 }
@___asan_gen_.267 = private unnamed_addr constant [34 x i8] c"amdgpu_debugfs_pm_prv_buffer_fops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3755, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"hwmon_attrgroup\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3471, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"hwmon_attributes\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3259, i32 26 }
@___asan_gen_.276 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_pwm1_max\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_pwm1_min\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_max\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan1_target\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan1_enable\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_crit_hyst\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_power1_cap_max\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_power1_cap_min\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_power1_cap\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_power1_cap_default\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_power1_average\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_label\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_label\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_freq2_input\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_freq2_label\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_crit_hyst\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_crit_hyst\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_emergency\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_emergency\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_emergency\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_label\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_label\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_power2_average\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_power2_cap_max\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_power2_cap_min\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_power2_cap\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_power2_cap_default\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_power2_label\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3229, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2544, i32 25 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2487, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3230, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2410, i32 25 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3232, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3231, i32 8 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3233, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3234, i32 8 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2609, i32 25 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3235, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3236, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3237, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3215, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3216, i32 8 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3243, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2962, i32 26 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3244, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3245, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3246, i32 8 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3242, i32 8 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3238, i32 8 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3239, i32 8 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2840, i32 25 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3240, i32 8 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3241, i32 8 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2883, i32 25 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3256, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3257, i32 8 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3126, i32 25 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3219, i32 8 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3220, i32 8 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3223, i32 8 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3224, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3217, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3221, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3225, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3218, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3222, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3227, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2351, i32 25 }
@___asan_gen_.522 = private unnamed_addr constant [11 x i8] c"temp_label\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 79, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 80, i32 17 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 81, i32 21 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 82, i32 16 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3228, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3248, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3249, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3250, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3251, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3252, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3253, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3002, i32 38 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3002, i32 50 }
@___asan_gen_.561 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_label\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_power1_label\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_freq1_input\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_freq1_label\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3214, i32 8 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3226, i32 8 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3247, i32 8 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3254, i32 8 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3255, i32 8 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3087, i32 25 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2168, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2178, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2066, i32 6 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2069, i32 13 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2074, i32 13 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2077, i32 13 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2083, i32 13 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2086, i32 13 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2090, i32 13 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2096, i32 13 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2099, i32 13 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2102, i32 13 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2105, i32 13 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2108, i32 13 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2118, i32 7 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2018, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2019, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2020, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2021, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2022, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2023, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2024, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2031, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2032, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2033, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2036, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2041, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2043, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2045, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 2047, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 160, i32 41 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 161, i32 42 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 161, i32 55 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 302, i32 45 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 303, i32 44 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 304, i32 45 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 305, i32 47 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 306, i32 57 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 307, i32 57 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 308, i32 57 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 309, i32 53 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 310, i32 57 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 311, i32 6 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 339, i32 21 }
@___asan_gen_.735 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 387, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 449, i32 28 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 451, i32 42 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 452, i32 58 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 455, i32 72 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 835, i32 25 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 837, i32 25 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 1683, i32 25 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 1710, i32 26 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 1737, i32 25 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 1739, i32 55 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 1739, i32 67 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 1867, i32 22 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3687, i32 17 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3699, i32 18 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3710, i32 16 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3576, i32 16 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3581, i32 17 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3583, i32 17 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3585, i32 17 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3587, i32 17 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3589, i32 17 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3591, i32 17 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3594, i32 17 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3600, i32 17 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3604, i32 17 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3607, i32 17 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3613, i32 17 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3619, i32 19 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3621, i32 19 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3623, i32 20 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3625, i32 20 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3633, i32 19 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3635, i32 19 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3647, i32 19 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3649, i32 19 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3651, i32 20 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3559, i32 19 }
@___asan_gen_.855 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 39, i32 34 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3664, i32 17 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3665, i32 34 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 3665, i32 41 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 40, i32 28 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 41, i32 28 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 42, i32 28 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 43, i32 28 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 44, i32 28 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 45, i32 28 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 46, i32 31 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 47, i32 29 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 48, i32 30 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 49, i32 31 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 50, i32 31 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 51, i32 25 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 52, i32 27 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 53, i32 27 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 54, i32 29 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 55, i32 28 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 56, i32 26 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 57, i32 28 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 58, i32 28 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 59, i32 26 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 60, i32 28 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 61, i32 28 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 62, i32 26 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 63, i32 28 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 64, i32 27 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 65, i32 28 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 66, i32 26 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 67, i32 26 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 68, i32 25 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 69, i32 29 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 71, i32 30 }
@___asan_gen_.960 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.961 = private constant [48 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.961, i32 72, i32 28 }
@llvm.compiler.used = appending global [257 x ptr] [ptr @amdgpu_device_attr_create._entry, ptr @amdgpu_device_attr_create._entry.77, ptr @amdgpu_device_attr_create._entry_ptr, ptr @amdgpu_device_attr_create._entry_ptr.79, ptr @amdgpu_hwmon_set_pwm1._entry, ptr @amdgpu_hwmon_set_pwm1._entry_ptr, ptr @amdgpu_pm_sysfs_init._entry, ptr @amdgpu_pm_sysfs_init._entry_ptr, ptr @amdgpu_set_power_dpm_force_performance_level._entry, ptr @amdgpu_set_power_dpm_force_performance_level._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @amdgpu_pp_profile_name, ptr @.str.7, ptr @hwmon_groups, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @amdgpu_device_attrs, ptr @.str.13, ptr @amdgpu_debugfs_pm_info_fops, ptr @.str.14, ptr @amdgpu_debugfs_pm_prv_buffer_fops, ptr @hwmon_attrgroup, ptr @hwmon_attributes, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_max, ptr @sensor_dev_attr_pwm1_min, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_max, ptr @sensor_dev_attr_fan1_target, ptr @sensor_dev_attr_fan1_enable, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_power1_cap_max, ptr @sensor_dev_attr_power1_cap_min, ptr @sensor_dev_attr_power1_cap, ptr @sensor_dev_attr_power1_cap_default, ptr @sensor_dev_attr_power1_average, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_label, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_label, ptr @sensor_dev_attr_freq2_input, ptr @sensor_dev_attr_freq2_label, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_crit_hyst, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_crit_hyst, ptr @sensor_dev_attr_temp1_emergency, ptr @sensor_dev_attr_temp2_emergency, ptr @sensor_dev_attr_temp3_emergency, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp2_label, ptr @sensor_dev_attr_temp3_label, ptr @sensor_dev_attr_power2_average, ptr @sensor_dev_attr_power2_cap_max, ptr @sensor_dev_attr_power2_cap_min, ptr @sensor_dev_attr_power2_cap, ptr @sensor_dev_attr_power2_cap_default, ptr @sensor_dev_attr_power2_label, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @temp_label, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_label, ptr @sensor_dev_attr_power1_label, ptr @sensor_dev_attr_freq1_input, ptr @sensor_dev_attr_freq1_label, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @clocks, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195], section "llvm.metadata"
@0 = internal global [252 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pp_profile_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pm_sysfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_device_attrs to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_pm_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_pm_prv_buffer_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmon_attrgroup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmon_attributes to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_cap_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_cap_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_cap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_cap_default to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_average to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_freq2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_freq2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_emergency to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_emergency to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_emergency to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power2_average to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power2_cap_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power2_cap_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power2_cap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power2_cap_default to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_hwmon_set_pwm1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_label to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_freq1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_freq1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_device_attr_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_device_attr_create._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_set_power_dpm_force_performance_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocks to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_pm_sysfs_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %attr_states.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysfs_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 14
  %0 = ptrtoint ptr %sysfs_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sysfs_initialized, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 13
  %2 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpm_enabled, align 8, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pm_attr_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 27
  %4 = ptrtoint ptr %pm_attr_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %pm_attr_list, ptr %pm_attr_list, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 27, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pm_attr_list, ptr %prev.i, align 4
  %6 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev, align 8
  %call = tail call ptr @hwmon_device_register_with_groups(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef %adev, ptr noundef nonnull @hwmon_groups) #9
  %int_hwmon_dev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 8
  %8 = ptrtoint ptr %int_hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %int_hwmon_dev, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call to i32
  %10 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef %9) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %call17 = tail call i32 @amdgpu_virt_get_sriov_vf_mode(ptr noundef %adev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17)
  %switch.selectcmp = icmp ne i32 %call17, 2
  %switch.select = sext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %switch.selectcmp44 = icmp eq i32 %call17, 1
  %switch.select45 = select i1 %switch.selectcmp44, i32 65536, i32 %switch.select
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16
  %i.017.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_device_attr, ptr @amdgpu_device_attrs, i32 %i.017.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_states.i.i) #9
  %14 = ptrtoint ptr %attr_states.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %attr_states.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.017.i, i32 lshr (i32 mul (i32 ptrtoint (ptr @amdgpu_device_attrs to i32), i32 -954437177), i32 2))
  %exitcond.i = icmp eq i32 %i.017.i, lshr (i32 mul (i32 ptrtoint (ptr @amdgpu_device_attrs to i32), i32 -954437177), i32 2)
  br i1 %exitcond.i, label %do.body7.i.i, label %do.end12.i.i, !prof !463

do.body7.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2162, 0\0A.popsection", ""() #9, !srcloc !464
  unreachable

do.end12.i.i:                                     ; preds = %for.body.i
  %attr_update13.i.i = getelementptr %struct.amdgpu_device_attr, ptr @amdgpu_device_attrs, i32 %i.017.i, i32 2
  %15 = ptrtoint ptr %attr_update13.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attr_update13.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %16, null
  %spec.select.i.i = select i1 %tobool14.not.i.i, ptr @default_attr_update, ptr %16
  %call.i.i = call i32 %spec.select.i.i(ptr noundef %adev, ptr noundef nonnull %arrayidx.i, i32 noundef %switch.select45, ptr noundef nonnull %attr_states.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end21.i.i, label %do.end20.i.i

do.end20.i.i:                                     ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.75, ptr noundef %13, i32 noundef %call.i.i) #12
  br label %amdgpu_device_attr_create.exit.thread.i

if.end21.i.i:                                     ; preds = %do.end12.i.i
  %19 = ptrtoint ptr %attr_states.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attr_states.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i, label %amdgpu_device_attr_create.exit.thread7.i, label %if.end23.i.i

amdgpu_device_attr_create.exit.thread7.i:         ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_states.i.i) #9
  br label %for.inc.i

if.end23.i.i:                                     ; preds = %if.end21.i.i
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 8
  %call25.i.i = call i32 @device_create_file(ptr noundef %22, ptr noundef nonnull %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end23.i.i.if.end32.i.i_crit_edge, label %do.end30.i.i

if.end23.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

do.end30.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.78, ptr noundef %13, i32 noundef %call25.i.i) #12
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %do.end30.i.i, %if.end23.i.i.if.end32.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 12) #13
  %tobool34.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool34.not.i.i, label %if.end32.i.i.amdgpu_device_attr_create.exit.thread.i_crit_edge, label %if.end36.i.i

if.end32.i.i.amdgpu_device_attr_create.exit.thread.i_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_device_attr_create.exit.thread.i

if.end36.i.i:                                     ; preds = %if.end32.i.i
  %attr37.i.i = getelementptr inbounds %struct.amdgpu_device_attr_entry, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %attr37.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i, ptr %attr37.i.i, align 8
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %30, ptr noundef %pm_attr_list) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end36.i.i.amdgpu_device_attr_create.exit.i_crit_edge

if.end36.i.i.amdgpu_device_attr_create.exit.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_device_attr_create.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pm_attr_list, ptr %call7.i.i.i, align 8
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i.i, ptr %30, align 4
  br label %amdgpu_device_attr_create.exit.i

amdgpu_device_attr_create.exit.thread.i:          ; preds = %if.end32.i.i.amdgpu_device_attr_create.exit.thread.i_crit_edge, %do.end20.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %do.end20.i.i ], [ -12, %if.end32.i.i.amdgpu_device_attr_create.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_states.i.i) #9
  br label %failed.i

amdgpu_device_attr_create.exit.i:                 ; preds = %if.end.i.i.i.i, %if.end36.i.i.amdgpu_device_attr_create.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_states.i.i) #9
  br i1 %tobool26.not.i.i, label %amdgpu_device_attr_create.exit.i.for.inc.i_crit_edge, label %amdgpu_device_attr_create.exit.i.failed.i_crit_edge

amdgpu_device_attr_create.exit.i.failed.i_crit_edge: ; preds = %amdgpu_device_attr_create.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

amdgpu_device_attr_create.exit.i.for.inc.i_crit_edge: ; preds = %amdgpu_device_attr_create.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %amdgpu_device_attr_create.exit.i.for.inc.i_crit_edge, %amdgpu_device_attr_create.exit.thread7.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond27.not.i = icmp eq i32 %inc.i, 28
  br i1 %exitcond27.not.i, label %if.end25, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

failed.i:                                         ; preds = %amdgpu_device_attr_create.exit.i.failed.i_crit_edge, %amdgpu_device_attr_create.exit.thread.i
  %retval.0.i6.i = phi i32 [ %retval.0.i.ph.i, %amdgpu_device_attr_create.exit.thread.i ], [ %call25.i.i, %amdgpu_device_attr_create.exit.i.failed.i_crit_edge ]
  %35 = ptrtoint ptr %pm_attr_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %pm_attr_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %36, %pm_attr_list
  br i1 %cmp.i.not.i.i, label %failed.i.cleanup_crit_edge, label %failed.i.for.body.i.i_crit_edge

failed.i.for.body.i.i_crit_edge:                  ; preds = %failed.i
  br label %for.body.i.i

failed.i.cleanup_crit_edge:                       ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %failed.i.for.body.i.i_crit_edge
  %entry1.023.i.i = phi ptr [ %entry_tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %36, %failed.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %entry1.023.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %entry_tmp.0.i.i = load ptr, ptr %entry1.023.i.i, align 4
  %attr.i.i = getelementptr inbounds %struct.amdgpu_device_attr_entry, ptr %entry1.023.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %attr.i.i, align 4
  %40 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adev, align 8
  call void @device_remove_file(ptr noundef %41, ptr noundef %39) #9
  %call.i.i.i1.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.023.i.i) #9
  br i1 %call.i.i.i1.i, label %if.end.i.i.i2.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i2.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.023.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i.i, align 4
  %44 = ptrtoint ptr %entry1.023.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %entry1.023.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i2.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %48 = ptrtoint ptr %entry1.023.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.023.i.i, align 4
  %prev.i.i3.i = getelementptr inbounds %struct.list_head, ptr %entry1.023.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i3.i, align 4
  call void @kfree(ptr noundef %entry1.023.i.i) #9
  %cmp.not.i.i = icmp eq ptr %entry_tmp.0.i.i, %pm_attr_list
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.cleanup_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

list_del.exit.i.i.cleanup_crit_edge:              ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %sysfs_initialized to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %sysfs_initialized, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %list_del.exit.i.i.cleanup_crit_edge, %failed.i.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then11 ], [ 0, %if.end25 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i6.i, %failed.i.cleanup_crit_edge ], [ %retval.0.i6.i, %list_del.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_virt_get_sriov_vf_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_pm_sysfs_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %int_hwmon_dev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 8
  %2 = ptrtoint ptr %int_hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_hwmon_dev, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hwmon_device_unregister(ptr noundef nonnull %3) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %pm_attr_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 27
  %4 = ptrtoint ptr %pm_attr_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pm_attr_list, align 4
  %cmp.i.not.i = icmp eq ptr %5, %pm_attr_list
  br i1 %cmp.i.not.i, label %if.end7.return_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %entry1.023.i = phi ptr [ %entry_tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %5, %if.end7.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %entry1.023.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %entry_tmp.0.i = load ptr, ptr %entry1.023.i, align 4
  %attr.i = getelementptr inbounds %struct.amdgpu_device_attr_entry, ptr %entry1.023.i, i32 0, i32 1
  %7 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attr.i, align 4
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void @device_remove_file(ptr noundef %10, ptr noundef %8) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.023.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.023.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %entry1.023.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry1.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %entry1.023.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.023.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.023.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %entry1.023.i) #9
  %cmp.not.i = icmp eq ptr %entry_tmp.0.i, %pm_attr_list
  br i1 %cmp.not.i, label %list_del.exit.i.return_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.return_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %list_del.exit.i.return_crit_edge, %if.end7.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_debugfs_pm_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_debugfs_pm_info_fops) #9
  %smu_prv_buffer_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 21
  %4 = ptrtoint ptr %smu_prv_buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smu_prv_buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %5 to i64
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_debugfs_pm_prv_buffer_fops, i64 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @amdgpu_smu_stb_debug_fs_init(ptr noundef %adev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_file_size(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_smu_stb_debug_fs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @hwmon_attributes_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132, i32 12
  %6 = ptrtoint ptr %gim_feature to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gim_feature, align 4
  %and3 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gim_feature6 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132, i32 12
  %8 = ptrtoint ptr %gim_feature6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gim_feature6, align 4
  %and7 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end26_crit_edge, label %land.lhs.true9

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true9:                                   ; preds = %if.end
  %cmp = icmp eq ptr %attr, @sensor_dev_attr_pwm1
  %cmp10 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond = or i1 %cmp, %cmp10
  %cmp12 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_max
  %or.cond440 = or i1 %cmp12, %or.cond
  %cmp14 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_min
  %or.cond441 = or i1 %cmp14, %or.cond440
  %cmp16 = icmp eq ptr %attr, @sensor_dev_attr_fan1_input
  %or.cond442 = or i1 %cmp16, %or.cond441
  %cmp18 = icmp eq ptr %attr, @sensor_dev_attr_fan1_min
  %or.cond443 = or i1 %cmp18, %or.cond442
  %cmp20 = icmp eq ptr %attr, @sensor_dev_attr_fan1_max
  %or.cond444 = or i1 %cmp20, %or.cond443
  %cmp22 = icmp eq ptr %attr, @sensor_dev_attr_fan1_target
  %or.cond445 = or i1 %cmp22, %or.cond444
  %cmp24 = icmp eq ptr %attr, @sensor_dev_attr_fan1_enable
  %or.cond446 = or i1 %cmp24, %or.cond445
  br i1 %or.cond446, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end26_crit_edge

land.lhs.true9.if.end26_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true9.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %no_fan = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 9
  %10 = ptrtoint ptr %no_fan to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %no_fan, align 4, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool27.not = icmp eq i8 %11, 0
  br i1 %tobool27.not, label %if.end26.if.end47_crit_edge, label %land.lhs.true28

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true28:                                  ; preds = %if.end26
  %cmp29 = icmp eq ptr %attr, @sensor_dev_attr_pwm1
  %cmp31 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond447 = or i1 %cmp29, %cmp31
  %cmp33 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_max
  %or.cond448 = or i1 %cmp33, %or.cond447
  %cmp35 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_min
  %or.cond449 = or i1 %cmp35, %or.cond448
  %cmp37 = icmp eq ptr %attr, @sensor_dev_attr_fan1_input
  %or.cond450 = or i1 %cmp37, %or.cond449
  %cmp39 = icmp eq ptr %attr, @sensor_dev_attr_fan1_min
  %or.cond451 = or i1 %cmp39, %or.cond450
  %cmp41 = icmp eq ptr %attr, @sensor_dev_attr_fan1_max
  %or.cond452 = or i1 %cmp41, %or.cond451
  %cmp43 = icmp eq ptr %attr, @sensor_dev_attr_fan1_target
  %or.cond453 = or i1 %cmp43, %or.cond452
  %cmp45 = icmp eq ptr %attr, @sensor_dev_attr_fan1_enable
  %or.cond454 = or i1 %cmp45, %or.cond453
  br i1 %or.cond454, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end47_crit_edge

land.lhs.true28.if.end47_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true28.if.end47_crit_edge, %if.end26.if.end47_crit_edge
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and48 = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end80_crit_edge, label %land.lhs.true50

if.end47.if.end80_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.lhs.true50:                                  ; preds = %if.end47
  %cmp51 = icmp eq ptr %attr, @sensor_dev_attr_pwm1
  %cmp53 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond455 = or i1 %cmp51, %cmp53
  %cmp55 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_max
  %or.cond456 = or i1 %cmp55, %or.cond455
  %cmp57 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_min
  %or.cond457 = or i1 %cmp57, %or.cond456
  %cmp59 = icmp eq ptr %attr, @sensor_dev_attr_fan1_input
  %or.cond458 = or i1 %cmp59, %or.cond457
  %cmp61 = icmp eq ptr %attr, @sensor_dev_attr_fan1_min
  %or.cond459 = or i1 %cmp61, %or.cond458
  %cmp63 = icmp eq ptr %attr, @sensor_dev_attr_fan1_max
  %or.cond460 = or i1 %cmp63, %or.cond459
  %cmp65 = icmp eq ptr %attr, @sensor_dev_attr_fan1_target
  %or.cond461 = or i1 %cmp65, %or.cond460
  %cmp67 = icmp eq ptr %attr, @sensor_dev_attr_fan1_enable
  %or.cond462 = or i1 %cmp67, %or.cond461
  br i1 %or.cond462, label %land.lhs.true50.cleanup_crit_edge, label %land.lhs.true73

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true73:                                  ; preds = %land.lhs.true50
  %family = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134, i32 %15)
  %cmp74 = icmp ugt i32 %15, 134
  br i1 %cmp74, label %land.lhs.true75, label %land.lhs.true73.if.end80_crit_edge

land.lhs.true73.if.end80_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.lhs.true75:                                  ; preds = %land.lhs.true73
  %cmp76 = icmp eq ptr %attr, @sensor_dev_attr_temp1_crit
  %cmp78 = icmp eq ptr %attr, @sensor_dev_attr_temp1_crit_hyst
  %or.cond463 = or i1 %cmp76, %cmp78
  br i1 %or.cond463, label %land.lhs.true75.cleanup_crit_edge, label %land.lhs.true75.if.end80_crit_edge

land.lhs.true75.if.end80_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.lhs.true75.cleanup_crit_edge:                ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80:                                         ; preds = %land.lhs.true75.if.end80_crit_edge, %land.lhs.true73.if.end80_crit_edge, %if.end47.if.end80_crit_edge
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 13
  %16 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dpm_enabled, align 8, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool82.not = icmp eq i8 %17, 0
  br i1 %tobool82.not, label %land.lhs.true83, label %if.end80.if.end106_crit_edge

if.end80.if.end106_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

land.lhs.true83:                                  ; preds = %if.end80
  %cmp84 = icmp eq ptr %attr, @sensor_dev_attr_temp1_crit
  %cmp86 = icmp eq ptr %attr, @sensor_dev_attr_temp1_crit_hyst
  %or.cond464 = or i1 %cmp84, %cmp86
  %cmp88 = icmp eq ptr %attr, @sensor_dev_attr_pwm1
  %or.cond465 = or i1 %cmp88, %or.cond464
  %cmp90 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond466 = or i1 %cmp90, %or.cond465
  %cmp92 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_max
  %or.cond467 = or i1 %cmp92, %or.cond466
  %cmp94 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_min
  %or.cond468 = or i1 %cmp94, %or.cond467
  %cmp96 = icmp eq ptr %attr, @sensor_dev_attr_fan1_input
  %or.cond469 = or i1 %cmp96, %or.cond468
  %cmp98 = icmp eq ptr %attr, @sensor_dev_attr_fan1_min
  %or.cond470 = or i1 %cmp98, %or.cond469
  %cmp100 = icmp eq ptr %attr, @sensor_dev_attr_fan1_max
  %or.cond471 = or i1 %cmp100, %or.cond470
  %cmp102 = icmp eq ptr %attr, @sensor_dev_attr_fan1_target
  %or.cond472 = or i1 %cmp102, %or.cond471
  %cmp104 = icmp eq ptr %attr, @sensor_dev_attr_fan1_enable
  %or.cond473 = or i1 %cmp104, %or.cond472
  br i1 %or.cond473, label %land.lhs.true83.cleanup_crit_edge, label %land.lhs.true83.if.end106_crit_edge

land.lhs.true83.if.end106_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

land.lhs.true83.cleanup_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end106:                                        ; preds = %land.lhs.true83.if.end106_crit_edge, %if.end80.if.end106_crit_edge
  %call107 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %1) #9
  br i1 %call107, label %if.end106.if.end140_crit_edge, label %if.then108

if.end106.if.end140_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then108:                                       ; preds = %if.end106
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %18 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pp_funcs, align 4
  %get_fan_speed_pwm = getelementptr inbounds %struct.amd_pm_funcs, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %get_fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_fan_speed_pwm, align 4
  %tobool109.not = icmp eq ptr %21, null
  %cmp111 = icmp eq ptr %attr, @sensor_dev_attr_pwm1
  %or.cond474 = and i1 %cmp111, %tobool109.not
  br i1 %or.cond474, label %if.then108.if.then118_crit_edge, label %lor.lhs.false112

if.then108.if.then118_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then118

lor.lhs.false112:                                 ; preds = %if.then108
  %get_fan_control_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %get_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_fan_control_mode, align 4
  %tobool115.not = icmp eq ptr %23, null
  %cmp117 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond475 = and i1 %cmp117, %tobool115.not
  br i1 %or.cond475, label %lor.lhs.false112.if.then118_crit_edge, label %lor.lhs.false112.if.end121_crit_edge

lor.lhs.false112.if.end121_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

lor.lhs.false112.if.then118_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then118

if.then118:                                       ; preds = %lor.lhs.false112.if.then118_crit_edge, %if.then108.if.then118_crit_edge
  %24 = and i16 %3, -293
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %lor.lhs.false112.if.end121_crit_edge
  %effective_mode.0 = phi i16 [ %3, %lor.lhs.false112.if.end121_crit_edge ], [ %24, %if.then118 ]
  %set_fan_speed_pwm = getelementptr inbounds %struct.amd_pm_funcs, ptr %19, i32 0, i32 10
  %25 = ptrtoint ptr %set_fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_fan_speed_pwm, align 4
  %tobool124.not = icmp eq ptr %26, null
  %or.cond476 = and i1 %cmp111, %tobool124.not
  br i1 %or.cond476, label %if.end121.if.then135_crit_edge, label %lor.lhs.false128

if.end121.if.then135_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135

lor.lhs.false128:                                 ; preds = %if.end121
  %set_fan_control_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %19, i32 0, i32 8
  %27 = ptrtoint ptr %set_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_fan_control_mode, align 4
  %tobool131.not = icmp eq ptr %28, null
  %cmp133 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond477 = and i1 %cmp133, %tobool131.not
  br i1 %or.cond477, label %lor.lhs.false128.if.then135_crit_edge, label %lor.lhs.false128.if.end140_crit_edge

lor.lhs.false128.if.end140_crit_edge:             ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

lor.lhs.false128.if.then135_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135

if.then135:                                       ; preds = %lor.lhs.false128.if.then135_crit_edge, %if.end121.if.then135_crit_edge
  %29 = and i16 %effective_mode.0, -129
  br label %if.end140

if.end140:                                        ; preds = %if.then135, %lor.lhs.false128.if.end140_crit_edge, %if.end106.if.end140_crit_edge
  %effective_mode.1 = phi i16 [ %3, %if.end106.if.end140_crit_edge ], [ %effective_mode.0, %lor.lhs.false128.if.end140_crit_edge ], [ %29, %if.then135 ]
  %family141 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %family141 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %family141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %31)
  %cmp142 = icmp eq i32 %31, 110
  br i1 %cmp142, label %if.end140.land.lhs.true151_crit_edge, label %lor.lhs.false144

if.end140.land.lhs.true151_crit_edge:             ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true151

lor.lhs.false144:                                 ; preds = %if.end140
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %and146 = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %lor.lhs.false144.lor.lhs.false168_crit_edge, label %land.lhs.true148

lor.lhs.false144.lor.lhs.false168_crit_edge:      ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false168

land.lhs.true148:                                 ; preds = %lor.lhs.false144
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %35)
  %cmp149.not = icmp eq i32 %35, 32
  br i1 %cmp149.not, label %land.lhs.true148.lor.lhs.false168_crit_edge, label %land.lhs.true148.land.lhs.true151_crit_edge

land.lhs.true148.land.lhs.true151_crit_edge:      ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true151

land.lhs.true148.lor.lhs.false168_crit_edge:      ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false168

land.lhs.true151:                                 ; preds = %land.lhs.true148.land.lhs.true151_crit_edge, %if.end140.land.lhs.true151_crit_edge
  %cmp152 = icmp eq ptr %attr, @sensor_dev_attr_power1_cap_max
  %cmp155 = icmp eq ptr %attr, @sensor_dev_attr_power1_cap_min
  %or.cond478 = or i1 %cmp152, %cmp155
  %cmp158 = icmp eq ptr %attr, @sensor_dev_attr_power1_cap
  %or.cond479 = or i1 %cmp158, %or.cond478
  %cmp161 = icmp eq ptr %attr, @sensor_dev_attr_power1_cap_default
  %or.cond480 = or i1 %cmp161, %or.cond479
  br i1 %or.cond480, label %land.lhs.true151.cleanup_crit_edge, label %if.end164

land.lhs.true151.cleanup_crit_edge:               ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end164:                                        ; preds = %land.lhs.true151
  br i1 %cmp142, label %land.lhs.true176, label %if.end164.lor.lhs.false168_crit_edge

if.end164.lor.lhs.false168_crit_edge:             ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %if.end164.lor.lhs.false168_crit_edge, %land.lhs.true148.lor.lhs.false168_crit_edge, %lor.lhs.false144.lor.lhs.false168_crit_edge
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 8
  %and170 = and i32 %37, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %lor.lhs.false168.if.end180_crit_edge, label %land.lhs.true172

lor.lhs.false168.if.end180_crit_edge:             ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

land.lhs.true172:                                 ; preds = %lor.lhs.false168
  %asic_type173 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %asic_type173 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %asic_type173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %39)
  %cmp174 = icmp ult i32 %39, 24
  %cmp177 = icmp eq ptr %attr, @sensor_dev_attr_power1_average
  %or.cond481 = and i1 %cmp177, %cmp174
  br i1 %or.cond481, label %land.lhs.true172.cleanup_crit_edge, label %land.lhs.true172.if.end180_crit_edge

land.lhs.true172.if.end180_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

land.lhs.true172.cleanup_crit_edge:               ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true176:                                 ; preds = %if.end164
  %cmp177.old = icmp eq ptr %attr, @sensor_dev_attr_power1_average
  br i1 %cmp177.old, label %land.lhs.true176.cleanup_crit_edge, label %land.lhs.true176.if.end180_crit_edge

land.lhs.true176.if.end180_crit_edge:             ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

land.lhs.true176.cleanup_crit_edge:               ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end180:                                        ; preds = %land.lhs.true176.if.end180_crit_edge, %land.lhs.true172.if.end180_crit_edge, %lor.lhs.false168.if.end180_crit_edge
  %call181 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %1) #9
  br i1 %call181, label %if.end180.if.end225_crit_edge, label %if.then182

if.end180.if.end225_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

if.then182:                                       ; preds = %if.end180
  %pp_funcs184 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %40 = ptrtoint ptr %pp_funcs184 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pp_funcs184, align 4
  %set_fan_speed_pwm185 = getelementptr inbounds %struct.amd_pm_funcs, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %set_fan_speed_pwm185 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_fan_speed_pwm185, align 4
  %tobool186.not = icmp eq ptr %43, null
  br i1 %tobool186.not, label %land.lhs.true187, label %if.then182.if.end207_crit_edge

if.then182.if.end207_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

land.lhs.true187:                                 ; preds = %if.then182
  %get_fan_speed_pwm190 = getelementptr inbounds %struct.amd_pm_funcs, ptr %41, i32 0, i32 11
  %44 = ptrtoint ptr %get_fan_speed_pwm190 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_fan_speed_pwm190, align 4
  %tobool191.not = icmp eq ptr %45, null
  br i1 %tobool191.not, label %land.lhs.true192, label %land.lhs.true187.if.end207_crit_edge

land.lhs.true187.if.end207_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

land.lhs.true192:                                 ; preds = %land.lhs.true187
  %set_fan_speed_rpm = getelementptr inbounds %struct.amd_pm_funcs, ptr %41, i32 0, i32 23
  %46 = ptrtoint ptr %set_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_fan_speed_rpm, align 4
  %tobool195.not = icmp eq ptr %47, null
  br i1 %tobool195.not, label %land.lhs.true196, label %land.lhs.true192.if.end207_crit_edge

land.lhs.true192.if.end207_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

land.lhs.true196:                                 ; preds = %land.lhs.true192
  %get_fan_speed_rpm = getelementptr inbounds %struct.amd_pm_funcs, ptr %41, i32 0, i32 22
  %48 = ptrtoint ptr %get_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_fan_speed_rpm, align 4
  %tobool199.not = icmp eq ptr %49, null
  br i1 %tobool199.not, label %land.lhs.true200, label %land.lhs.true196.if.end207_crit_edge

land.lhs.true196.if.end207_crit_edge:             ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

land.lhs.true200:                                 ; preds = %land.lhs.true196
  %cmp201 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_max
  %cmp204 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_min
  %or.cond482 = or i1 %cmp201, %cmp204
  br i1 %or.cond482, label %land.lhs.true200.cleanup_crit_edge, label %land.lhs.true200.if.end207_crit_edge

land.lhs.true200.if.end207_crit_edge:             ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

land.lhs.true200.cleanup_crit_edge:               ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end207:                                        ; preds = %land.lhs.true200.if.end207_crit_edge, %land.lhs.true196.if.end207_crit_edge, %land.lhs.true192.if.end207_crit_edge, %land.lhs.true187.if.end207_crit_edge, %if.then182.if.end207_crit_edge
  %set_fan_speed_rpm210 = getelementptr inbounds %struct.amd_pm_funcs, ptr %41, i32 0, i32 23
  %50 = ptrtoint ptr %set_fan_speed_rpm210 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_fan_speed_rpm210, align 4
  %tobool211.not = icmp eq ptr %51, null
  br i1 %tobool211.not, label %land.lhs.true212, label %if.end207.if.end225_crit_edge

if.end207.if.end225_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

land.lhs.true212:                                 ; preds = %if.end207
  %get_fan_speed_rpm215 = getelementptr inbounds %struct.amd_pm_funcs, ptr %41, i32 0, i32 22
  %52 = ptrtoint ptr %get_fan_speed_rpm215 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_fan_speed_rpm215, align 4
  %tobool216.not = icmp eq ptr %53, null
  br i1 %tobool216.not, label %land.lhs.true217, label %land.lhs.true212.if.end225_crit_edge

land.lhs.true212.if.end225_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

land.lhs.true217:                                 ; preds = %land.lhs.true212
  %cmp218 = icmp eq ptr %attr, @sensor_dev_attr_fan1_max
  %cmp221 = icmp eq ptr %attr, @sensor_dev_attr_fan1_min
  %or.cond483 = or i1 %cmp218, %cmp221
  br i1 %or.cond483, label %land.lhs.true217.cleanup_crit_edge, label %land.lhs.true217.if.end225_crit_edge

land.lhs.true217.if.end225_crit_edge:             ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

land.lhs.true217.cleanup_crit_edge:               ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end225:                                        ; preds = %land.lhs.true217.if.end225_crit_edge, %land.lhs.true212.if.end225_crit_edge, %if.end207.if.end225_crit_edge, %if.end180.if.end225_crit_edge
  %54 = ptrtoint ptr %family141 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %family141, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %55, label %if.end225.if.end240_crit_edge [
    i32 110, label %if.end225.land.lhs.true233_crit_edge
    i32 125, label %if.end225.land.lhs.true233_crit_edge502
  ]

if.end225.land.lhs.true233_crit_edge502:          ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true233

if.end225.land.lhs.true233_crit_edge:             ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true233

if.end225.if.end240_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end240

land.lhs.true233:                                 ; preds = %if.end225.land.lhs.true233_crit_edge, %if.end225.land.lhs.true233_crit_edge502
  %cmp234 = icmp eq ptr %attr, @sensor_dev_attr_in0_input
  %cmp237 = icmp eq ptr %attr, @sensor_dev_attr_in0_label
  %or.cond484 = or i1 %cmp234, %cmp237
  br i1 %or.cond484, label %land.lhs.true233.cleanup_crit_edge, label %land.lhs.true233.if.end240_crit_edge

land.lhs.true233.if.end240_crit_edge:             ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end240

land.lhs.true233.cleanup_crit_edge:               ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end240:                                        ; preds = %land.lhs.true233.if.end240_crit_edge, %if.end225.if.end240_crit_edge
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 8
  %and242 = and i32 %58, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %land.lhs.true244, label %land.lhs.true255

land.lhs.true244:                                 ; preds = %if.end240
  %cmp245 = icmp eq ptr %attr, @sensor_dev_attr_in1_input
  %cmp248 = icmp eq ptr %attr, @sensor_dev_attr_in1_label
  %or.cond485 = or i1 %cmp245, %cmp248
  br i1 %or.cond485, label %land.lhs.true244.cleanup_crit_edge, label %lor.lhs.false266

land.lhs.true244.cleanup_crit_edge:               ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true255:                                 ; preds = %if.end240
  %cmp256 = icmp eq ptr %attr, @sensor_dev_attr_freq2_input
  %cmp259 = icmp eq ptr %attr, @sensor_dev_attr_freq2_label
  %or.cond486 = or i1 %cmp256, %cmp259
  br i1 %or.cond486, label %land.lhs.true255.cleanup_crit_edge, label %land.lhs.true255.land.lhs.true270_crit_edge

land.lhs.true255.land.lhs.true270_crit_edge:      ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true270

land.lhs.true255.cleanup_crit_edge:               ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false266:                                 ; preds = %land.lhs.true244
  %asic_type267 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %asic_type267 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %asic_type267, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %60)
  %cmp268 = icmp ult i32 %60, 19
  br i1 %cmp268, label %lor.lhs.false266.land.lhs.true270_crit_edge, label %lor.lhs.false266.if.end304_crit_edge

lor.lhs.false266.if.end304_crit_edge:             ; preds = %lor.lhs.false266
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end304

lor.lhs.false266.land.lhs.true270_crit_edge:      ; preds = %lor.lhs.false266
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true270

land.lhs.true270:                                 ; preds = %lor.lhs.false266.land.lhs.true270_crit_edge, %land.lhs.true255.land.lhs.true270_crit_edge
  %cmp271 = icmp eq ptr %attr, @sensor_dev_attr_temp2_crit
  %cmp274 = icmp eq ptr %attr, @sensor_dev_attr_temp2_crit_hyst
  %or.cond487 = or i1 %cmp271, %cmp274
  %cmp277 = icmp eq ptr %attr, @sensor_dev_attr_temp3_crit
  %or.cond488 = or i1 %cmp277, %or.cond487
  %cmp280 = icmp eq ptr %attr, @sensor_dev_attr_temp3_crit_hyst
  %or.cond489 = or i1 %cmp280, %or.cond488
  %cmp283 = icmp eq ptr %attr, @sensor_dev_attr_temp1_emergency
  %or.cond490 = or i1 %cmp283, %or.cond489
  %cmp286 = icmp eq ptr %attr, @sensor_dev_attr_temp2_emergency
  %or.cond491 = or i1 %cmp286, %or.cond490
  %cmp289 = icmp eq ptr %attr, @sensor_dev_attr_temp3_emergency
  %or.cond492 = or i1 %cmp289, %or.cond491
  %cmp292 = icmp eq ptr %attr, @sensor_dev_attr_temp2_input
  %or.cond493 = or i1 %cmp292, %or.cond492
  %cmp295 = icmp eq ptr %attr, @sensor_dev_attr_temp3_input
  %or.cond494 = or i1 %cmp295, %or.cond493
  %cmp298 = icmp eq ptr %attr, @sensor_dev_attr_temp2_label
  %or.cond495 = or i1 %cmp298, %or.cond494
  %cmp301 = icmp eq ptr %attr, @sensor_dev_attr_temp3_label
  %or.cond496 = or i1 %cmp301, %or.cond495
  br i1 %or.cond496, label %land.lhs.true270.cleanup_crit_edge, label %land.lhs.true270.if.end304_crit_edge

land.lhs.true270.if.end304_crit_edge:             ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end304

land.lhs.true270.cleanup_crit_edge:               ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end304:                                        ; preds = %land.lhs.true270.if.end304_crit_edge, %lor.lhs.false266.if.end304_crit_edge
  %asic_type305 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %asic_type305 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %asic_type305, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %62)
  %cmp306 = icmp eq i32 %62, 32
  br i1 %cmp306, label %if.end304.if.end327_crit_edge, label %land.lhs.true308

if.end304.if.end327_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end327

land.lhs.true308:                                 ; preds = %if.end304
  %cmp309 = icmp eq ptr %attr, @sensor_dev_attr_power2_average
  %cmp312 = icmp eq ptr %attr, @sensor_dev_attr_power2_cap_max
  %or.cond497 = or i1 %cmp309, %cmp312
  %cmp315 = icmp eq ptr %attr, @sensor_dev_attr_power2_cap_min
  %or.cond498 = or i1 %cmp315, %or.cond497
  %cmp318 = icmp eq ptr %attr, @sensor_dev_attr_power2_cap
  %or.cond499 = or i1 %cmp318, %or.cond498
  %cmp321 = icmp eq ptr %attr, @sensor_dev_attr_power2_cap_default
  %or.cond500 = or i1 %cmp321, %or.cond499
  %cmp324 = icmp eq ptr %attr, @sensor_dev_attr_power2_label
  %or.cond501 = or i1 %cmp324, %or.cond500
  br i1 %or.cond501, label %land.lhs.true308.cleanup_crit_edge, label %land.lhs.true308.if.end327_crit_edge

land.lhs.true308.if.end327_crit_edge:             ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end327

land.lhs.true308.cleanup_crit_edge:               ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end327:                                        ; preds = %land.lhs.true308.if.end327_crit_edge, %if.end304.if.end327_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end327, %land.lhs.true308.cleanup_crit_edge, %land.lhs.true270.cleanup_crit_edge, %land.lhs.true255.cleanup_crit_edge, %land.lhs.true244.cleanup_crit_edge, %land.lhs.true233.cleanup_crit_edge, %land.lhs.true217.cleanup_crit_edge, %land.lhs.true200.cleanup_crit_edge, %land.lhs.true176.cleanup_crit_edge, %land.lhs.true172.cleanup_crit_edge, %land.lhs.true151.cleanup_crit_edge, %land.lhs.true83.cleanup_crit_edge, %land.lhs.true75.cleanup_crit_edge, %land.lhs.true50.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %effective_mode.1, %if.end327 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true9.cleanup_crit_edge ], [ 0, %land.lhs.true28.cleanup_crit_edge ], [ 0, %land.lhs.true50.cleanup_crit_edge ], [ 0, %land.lhs.true75.cleanup_crit_edge ], [ 0, %land.lhs.true83.cleanup_crit_edge ], [ 0, %land.lhs.true151.cleanup_crit_edge ], [ 0, %land.lhs.true172.cleanup_crit_edge ], [ 0, %land.lhs.true176.cleanup_crit_edge ], [ 0, %land.lhs.true200.cleanup_crit_edge ], [ 0, %land.lhs.true217.cleanup_crit_edge ], [ 0, %land.lhs.true233.cleanup_crit_edge ], [ 0, %land.lhs.true244.cleanup_crit_edge ], [ 0, %land.lhs.true255.cleanup_crit_edge ], [ 0, %land.lhs.true270.cleanup_crit_edge ], [ 0, %land.lhs.true308.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_support_sw_smu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_pwm1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #9
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %speed, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %call.i46 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %13 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp_funcs, align 4
  %get_fan_speed_pwm = getelementptr inbounds %struct.amd_pm_funcs, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %get_fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_fan_speed_pwm, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %17 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %powerplay, align 8
  %call20 = call i32 %16(ptr noundef %18, ptr noundef nonnull %speed) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13.if.end21_crit_edge
  %err.0 = phi i32 [ %call20, %if.then15 ], [ -22, %if.end13.if.end21_crit_edge ]
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i48 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i48, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  %call.i50 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool27.not = icmp eq i32 %err.0, 0
  br i1 %tobool27.not, label %if.end29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed, align 4
  %call30 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end21.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call30, %if.end29 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %err.0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_set_pwm1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %call.i77 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %13 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp_funcs, align 4
  %get_fan_control_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %get_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_fan_control_mode, align 4
  %17 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %powerplay, align 8
  %call15 = tail call i32 %16(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 1
  br i1 %cmp16.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i79 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i79, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  %call.i81 = tail call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %call.i82 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool26.not = icmp eq i32 %call.i82, 0
  br i1 %tobool26.not, label %if.end33, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev7, align 4
  %call.i84 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i85 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i85 to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i84, ptr %last_busy.i85, align 8
  %27 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev7, align 4
  %call.i87 = call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %29 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pp_funcs, align 4
  %set_fan_speed_pwm = getelementptr inbounds %struct.amd_pm_funcs, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %set_fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_fan_speed_pwm, align 4
  %tobool36.not = icmp eq ptr %32, null
  br i1 %tobool36.not, label %if.end33.if.end44_crit_edge, label %if.then37

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %powerplay, align 8
  %35 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value, align 4
  %call43 = call i32 %32(ptr noundef %34, i32 noundef %36) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end33.if.end44_crit_edge
  %err.0 = phi i32 [ %call43, %if.then37 ], [ -22, %if.end33.if.end44_crit_edge ]
  %37 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev7, align 4
  %call.i89 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i90 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 12, i32 22
  %39 = ptrtoint ptr %last_busy.i90 to i32
  call void @__asan_store8_noabort(i32 %39)
  store volatile i64 %call.i89, ptr %last_busy.i90, align 8
  %40 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev7, align 4
  %call.i92 = call i32 @__pm_runtime_suspend(ptr noundef %41, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool50.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool50.not, i32 %count, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then27, %do.end, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ -22, %do.end ], [ %call.i82, %if.then27 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %spec.select, %if.end44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_pwm1_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i48 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %get_fan_control_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %get_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_fan_control_mode, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %call.i50 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i50, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i52 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %21 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %powerplay, align 8
  %call26 = tail call i32 %15(ptr noundef %22) #9
  %23 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7, align 4
  %call.i54 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i55 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i55 to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i54, ptr %last_busy.i55, align 8
  %26 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev7, align 4
  %call.i57 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #9
  %call32 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %call26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call32, %if.end21 ], [ -22, %if.then15 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_set_pwm1_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %dev11 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end9.cleanup.sink.split_crit_edge, label %if.end17

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end9
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %11 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pp_funcs, align 4
  %set_fan_control_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %set_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_fan_control_mode, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %if.end17.cleanup.sink.split.sink.split_crit_edge, label %if.end25

if.end17.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %15 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %powerplay, align 8
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  call void %14(ptr noundef %16, i32 noundef %18) #9
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end25, %if.end17.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %count, %if.end25 ], [ -22, %if.end17.cleanup.sink.split.sink.split_crit_edge ]
  %19 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev11, align 4
  %call.i54 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i54, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.end9.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %22 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11, align 4
  %call.i61 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_pwm1_max(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef 255) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_pwm1_min(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_fan1_input(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #9
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %speed, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %call.i46 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %13 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp_funcs, align 4
  %get_fan_speed_rpm = getelementptr inbounds %struct.amd_pm_funcs, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %get_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_fan_speed_rpm, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %17 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %powerplay, align 8
  %call20 = call i32 %16(ptr noundef %18, ptr noundef nonnull %speed) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13.if.end21_crit_edge
  %err.0 = phi i32 [ %call20, %if.then15 ], [ -22, %if.end13.if.end21_crit_edge ]
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i48 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i48, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  %call.i50 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool27.not = icmp eq i32 %err.0, 0
  br i1 %tobool27.not, label %if.end29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed, align 4
  %call30 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end21.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call30, %if.end29 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %err.0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_fan1_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %min_rpm = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_rpm) #9
  %2 = ptrtoint ptr %min_rpm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %min_rpm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 21, ptr noundef nonnull %min_rpm, ptr noundef nonnull %size) #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call.i40 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %call.i42 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool20.not = icmp eq i32 %call14, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %min_rpm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %min_rpm, align 4
  %call23 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end13.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call23, %if.end22 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_rpm) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_read_sensor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_fan1_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %max_rpm = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_rpm) #9
  %2 = ptrtoint ptr %max_rpm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_rpm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %max_rpm, ptr noundef nonnull %size) #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call.i40 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %call.i42 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool20.not = icmp eq i32 %call14, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %max_rpm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_rpm, align 4
  %call23 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end13.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call23, %if.end22 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_rpm) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_fan1_target(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %rpm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rpm) #9
  %2 = ptrtoint ptr %rpm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rpm, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %call.i46 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %13 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp_funcs, align 4
  %get_fan_speed_rpm = getelementptr inbounds %struct.amd_pm_funcs, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %get_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_fan_speed_rpm, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %17 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %powerplay, align 8
  %call20 = call i32 %16(ptr noundef %18, ptr noundef nonnull %rpm) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13.if.end21_crit_edge
  %err.0 = phi i32 [ %call20, %if.then15 ], [ -22, %if.end13.if.end21_crit_edge ]
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i48 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i48, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  %call.i50 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool27.not = icmp eq i32 %err.0, 0
  br i1 %tobool27.not, label %if.end29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %rpm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rpm, align 4
  %call30 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end21.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call30, %if.end29 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %err.0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rpm) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_set_fan1_target(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %call.i76 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %13 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp_funcs, align 4
  %get_fan_control_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %get_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_fan_control_mode, align 4
  %17 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %powerplay, align 8
  %call15 = tail call i32 %16(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 1
  br i1 %cmp16.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i78 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i78, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  %call.i80 = tail call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %call.i81 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool25.not = icmp eq i32 %call.i81, 0
  br i1 %tobool25.not, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev7, align 4
  %call.i83 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i84 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i84 to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i83, ptr %last_busy.i84, align 8
  %27 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev7, align 4
  %call.i86 = call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pp_funcs, align 4
  %set_fan_speed_rpm = getelementptr inbounds %struct.amd_pm_funcs, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %set_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_fan_speed_rpm, align 4
  %tobool35.not = icmp eq ptr %32, null
  br i1 %tobool35.not, label %if.end32.if.end43_crit_edge, label %if.then36

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %powerplay, align 8
  %35 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value, align 4
  %call42 = call i32 %32(ptr noundef %34, i32 noundef %36) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.end32.if.end43_crit_edge
  %err.0 = phi i32 [ %call42, %if.then36 ], [ -22, %if.end32.if.end43_crit_edge ]
  %37 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev7, align 4
  %call.i88 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i89 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 12, i32 22
  %39 = ptrtoint ptr %last_busy.i89 to i32
  call void @__asan_store8_noabort(i32 %39)
  store volatile i64 %call.i88, ptr %last_busy.i89, align 8
  %40 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev7, align 4
  %call.i91 = call i32 @__pm_runtime_suspend(ptr noundef %41, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool49.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool49.not, i32 %count, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then26, %if.then17, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ -61, %if.then17 ], [ %call.i81, %if.then26 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %spec.select, %if.end43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_get_fan1_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i49 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %get_fan_control_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %get_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_fan_control_mode, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %call.i51 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i51, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i53 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %21 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %powerplay, align 8
  %call26 = tail call i32 %15(ptr noundef %22) #9
  %23 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7, align 4
  %call.i55 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i56 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i56 to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i55, ptr %last_busy.i56, align 8
  %26 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev7, align 4
  %call.i58 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call26)
  %cmp32 = icmp ne i32 %call26, 2
  %cond = zext i1 %cmp32 to i32
  %call33 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call33, %if.end21 ], [ -22, %if.then15 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_set_fan1_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %10, label %if.end9.cleanup_crit_edge [
    i32 0, label %if.end9.if.end15_crit_edge
    i32 1, label %if.then12
  ]

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %pwm_mode.0 = phi i32 [ 1, %if.then12 ], [ 2, %if.end9.if.end15_crit_edge ]
  %dev17 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %if.end15.cleanup.sink.split_crit_edge, label %if.end24

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end15
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %14 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pp_funcs, align 4
  %set_fan_control_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %set_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_fan_control_mode, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %if.end24.cleanup.sink.split.sink.split_crit_edge, label %if.end32

if.end24.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %18 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %powerplay, align 8
  call void %17(ptr noundef %19, i32 noundef %pwm_mode.0) #9
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end32, %if.end24.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %count, %if.end32 ], [ -22, %if.end24.cleanup.sink.split.sink.split_crit_edge ]
  %20 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev17, align 4
  %call.i63 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i63, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end15.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.end15.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %23 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev17, align 4
  %call.i70 = call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_temp_thresh(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %min_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 1
  %max_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 2
  %temp.0.in = select i1 %tobool.not, ptr %max_temp, ptr %min_temp
  %4 = ptrtoint ptr %temp.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %temp.0 = load i32, ptr %temp.0.in, align 4
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %temp.0) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_power_cap_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_hwmon_show_power_cap_generic(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_hwmon_show_power_cap_generic(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %pp_limit_level) unnamed_addr #0 align 64 {
entry:
  %limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %2 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit) #9
  %6 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %limit, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %9 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %11 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %land.lhs.true8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true8:                                   ; preds = %if.end6
  %get_power_limit = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 36
  %13 = ptrtoint ptr %get_power_limit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_power_limit, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true8.cleanup_crit_edge, label %if.end11

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true8
  %dev13 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev13, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13, align 4
  %call.i52 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %get_power_limit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_power_limit, align 4
  %21 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %powerplay, align 8
  %call22 = call i32 %20(ptr noundef %22, ptr noundef nonnull %limit, i32 noundef %pp_limit_level, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %limit, align 4
  %mul = mul i32 %24, 1000000
  %call25 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %mul) #9
  br label %if.end27

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32) #9
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then24
  %size.0 = phi i32 [ %call26, %if.else ], [ %call25, %if.then24 ]
  %25 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev13, align 4
  %call.i54 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i54, ptr %last_busy.i, align 8
  %28 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev13, align 4
  %call.i56 = call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then15, %land.lhs.true8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then15 ], [ %size.0, %if.end27 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -61, %land.lhs.true8.cleanup_crit_edge ], [ -61, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_power_cap_min(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_power_cap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_hwmon_show_power_cap_generic(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_set_power_cap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %2 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %9 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %11 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %13 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %virt, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %div = udiv i32 %16, 1000000
  %shl = shl i32 %5, 24
  %or = or i32 %div, %shl
  store i32 %or, ptr %value, align 4
  %dev15 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev15, align 4
  %call.i59 = call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp = icmp slt i32 %call.i59, 0
  br i1 %cmp, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev15, align 4
  %call.i61 = call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %tobool22.not = icmp eq ptr %3, null
  br i1 %tobool22.not, label %if.end21.if.end29_crit_edge, label %land.lhs.true23

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true23:                                  ; preds = %if.end21
  %set_power_limit = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 35
  %21 = ptrtoint ptr %set_power_limit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_power_limit, align 4
  %tobool24.not = icmp eq ptr %22, null
  br i1 %tobool24.not, label %land.lhs.true23.if.end29_crit_edge, label %if.then25

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %powerplay, align 8
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value, align 4
  %call28 = call i32 %22(ptr noundef %24, i32 noundef %26) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %land.lhs.true23.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  %err.0 = phi i32 [ %call28, %if.then25 ], [ -22, %land.lhs.true23.if.end29_crit_edge ], [ -22, %if.end21.if.end29_crit_edge ]
  %27 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev15, align 4
  %call.i63 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i63, ptr %last_busy.i, align 8
  %30 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev15, align 4
  %call.i65 = call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool35.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool35.not, i32 %count, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then17, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i59, %if.then17 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call.i, %if.end9.cleanup_crit_edge ], [ %spec.select, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_power_cap_default(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_hwmon_show_power_cap_generic(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_power_avg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %query = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %query) #9
  %2 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %query, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i40 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 15, ptr noundef nonnull %query, ptr noundef nonnull %size) #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call.i42 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i42, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %call.i44 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool20.not = icmp eq i32 %call14, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %query, align 4
  %shr = lshr i32 %20, 8
  %mul = mul i32 %shr, 1000000
  %and = and i32 %20, 255
  %mul23 = mul nuw nsw i32 %and, 1000
  %add = add i32 %mul, %mul23
  %call24 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end13.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call24, %if.end22 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %query) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_vddgfx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %vddgfx = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vddgfx) #9
  %2 = ptrtoint ptr %vddgfx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vddgfx, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %vddgfx, ptr noundef nonnull %size) #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call.i40 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %call.i42 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool20.not = icmp eq i32 %call14, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %vddgfx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vddgfx, align 4
  %call23 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end13.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call23, %if.end22 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vddgfx) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_vddgfx_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.39) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_vddnb(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %vddnb = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vddnb) #9
  %2 = ptrtoint ptr %vddnb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vddnb, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %flags = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %dev10 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10, align 4
  %call.i42 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %vddnb, ptr noundef nonnull %size) #9
  %16 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10, align 4
  %call.i44 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i44, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev10, align 4
  %call.i46 = call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool23.not = icmp eq i32 %call17, 0
  br i1 %tobool23.not, label %if.end25, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %vddnb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vddnb, align 4
  %call26 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end16.cleanup_crit_edge, %if.then12, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then12 ], [ %call26, %if.end25 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vddnb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_vddnb_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.42) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_mclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %mclk = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mclk) #9
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mclk, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i39 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 9, ptr noundef nonnull %mclk, ptr noundef nonnull %size) #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call.i41 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i41, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %call.i43 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool20.not = icmp eq i32 %call14, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk, align 4
  %mul23 = mul i32 %20, 10000
  %call24 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %mul23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end13.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call24, %if.end22 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_mclk_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.45) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_hotspot_temp_thresh(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %min_hotspot_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 4
  %max_hotspot_crit_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 5
  %temp.0.in = select i1 %tobool.not, ptr %max_hotspot_crit_temp, ptr %min_hotspot_temp
  %4 = ptrtoint ptr %temp.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %temp.0 = load i32, ptr %temp.0.in, align 4
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %temp.0) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_mem_temp_thresh(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %min_mem_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 7
  %max_mem_crit_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 8
  %temp.0.in = select i1 %tobool.not, ptr %max_mem_crit_temp, ptr %min_mem_temp
  %4 = ptrtoint ptr %temp.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %temp.0 = load i32, ptr %temp.0.in, align 4
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %temp.0) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_temp_emergency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %max_hotspot_emergency_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 6
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %max_edge_emergency_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 3
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %max_mem_emergency_temp = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 15, i32 35, i32 9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %sw.bb1, %sw.bb
  %max_mem_emergency_temp.sink = phi ptr [ %max_mem_emergency_temp, %sw.bb5 ], [ %max_edge_emergency_temp, %sw.bb1 ], [ %max_hotspot_emergency_temp, %sw.bb ]
  %5 = ptrtoint ptr %max_mem_emergency_temp.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_mem_emergency_temp.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %temp.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %6, %sw.epilog.sink.split ]
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %temp.0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %8 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %10 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %dev9 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp slt i32 %call.i, 0
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev9, align 4
  %call.i49 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %16 = icmp ult i32 %3, 3
  br i1 %16, label %switch.lookup, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %switch.offset = add i32 %3, 10
  %call21 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef %switch.offset, ptr noundef nonnull %temp, ptr noundef nonnull %size) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end16.sw.epilog_crit_edge
  %r.0 = phi i32 [ -22, %if.end16.sw.epilog_crit_edge ], [ %call21, %switch.lookup ]
  %17 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev9, align 4
  %call.i51 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i51, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9, align 4
  %call.i53 = call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool27.not = icmp eq i32 %r.0, 0
  br i1 %tobool27.not, label %if.end29, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp, align 4
  %call30 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %sw.epilog.cleanup_crit_edge, %if.then12, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then12 ], [ %call30, %if.end29 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %r.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_temp_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %label = getelementptr [3 x %struct.hwmon_temp_label], ptr @temp_label, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %label, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_power_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, ptr @.str.67, ptr @.str.68
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, ptr noundef nonnull %cond) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_sclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %sclk = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclk) #9
  %2 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sclk, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev7 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i39 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %sclk, ptr noundef nonnull %size) #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call.i41 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i41, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %call.i43 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool20.not = icmp eq i32 %call14, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sclk, align 4
  %mul23 = mul i32 %20, 10000
  %call24 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %mul23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end13.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call24, %if.end22 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclk) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_hwmon_show_sclk_label(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.74) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_attr_update(ptr noundef %adev, ptr nocapture noundef %attr, i32 noundef %mask, ptr nocapture noundef writeonly %states) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  %asic_type3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type3, align 8
  %flags = getelementptr inbounds %struct.amdgpu_device_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %states, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(14) @.str.80) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp = icmp ult i32 %5, 19
  br i1 %cmp, label %if.then5.if.end138.sink.split_crit_edge, label %if.then5.if.end138_crit_edge

if.then5.if.end138_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then5.if.end138.sink.split_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else:                                          ; preds = %if.end
  %call8 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(15) @.str.81) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else17

if.then10:                                        ; preds = %if.else
  %.fr = freeze i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %.fr)
  %cmp11 = icmp ult i32 %.fr, 19
  br i1 %cmp11, label %if.then10.if.end138.sink.split_crit_edge, label %switch.early.test

if.then10.if.end138.sink.split_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

switch.early.test:                                ; preds = %if.then10
  %9 = zext i32 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %.fr, label %switch.early.test.sw.epilog_crit_edge [
    i32 25, label %switch.early.test.if.end138.sink.split_crit_edge
    i32 23, label %switch.early.test.if.end138.sink.split_crit_edge249
  ]

switch.early.test.if.end138.sink.split_crit_edge249: ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

switch.early.test.if.end138.sink.split_crit_edge: ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

switch.early.test.sw.epilog_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else17:                                        ; preds = %if.else
  %call18 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp21 = icmp ult i32 %5, 21
  br i1 %cmp21, label %if.then20.if.end138.sink.split_crit_edge, label %if.then20.if.end138_crit_edge

if.then20.if.end138_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then20.if.end138.sink.split_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else24:                                        ; preds = %if.else17
  %call25 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(18) @.str.83) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else42

if.then27:                                        ; preds = %if.else24
  %10 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %states, align 4
  %call28 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %adev) #9
  br i1 %call28, label %land.lhs.true, label %if.then27.lor.lhs.false30_crit_edge

if.then27.lor.lhs.false30_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false30

land.lhs.true:                                    ; preds = %if.then27
  %od_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 25
  %11 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %od_enabled, align 4, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool29.not = icmp eq i8 %12, 0
  br i1 %tobool29.not, label %land.lhs.true.lor.lhs.false30_crit_edge, label %land.lhs.true.if.end138.sink.split_crit_edge

land.lhs.true.if.end138.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

land.lhs.true.lor.lhs.false30_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true.lor.lhs.false30_crit_edge, %if.then27.lor.lhs.false30_crit_edge
  %call31 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %adev) #9
  br i1 %call31, label %land.lhs.true32, label %lor.lhs.false30.lor.lhs.false35_crit_edge

lor.lhs.false30.lor.lhs.false35_crit_edge:        ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false35

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  %is_apu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 43
  %13 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_apu, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool34.not = icmp eq i8 %14, 0
  br i1 %tobool34.not, label %land.lhs.true32.lor.lhs.false35_crit_edge, label %land.lhs.true32.if.end138.sink.split_crit_edge

land.lhs.true32.if.end138.sink.split_crit_edge:   ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

land.lhs.true32.lor.lhs.false35_crit_edge:        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %land.lhs.true32.lor.lhs.false35_crit_edge, %lor.lhs.false30.lor.lhs.false35_crit_edge
  %call36 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %adev) #9
  br i1 %call36, label %lor.lhs.false35.if.end138_crit_edge, label %land.lhs.true37

lor.lhs.false35.if.end138_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

land.lhs.true37:                                  ; preds = %lor.lhs.false35
  %od_enabled38 = getelementptr inbounds %struct.pp_hwmgr, ptr %3, i32 0, i32 53
  %15 = ptrtoint ptr %od_enabled38 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %od_enabled38, align 4, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool39.not = icmp eq i8 %16, 0
  br i1 %tobool39.not, label %land.lhs.true37.if.end138_crit_edge, label %land.lhs.true37.if.end138.sink.split_crit_edge

land.lhs.true37.if.end138.sink.split_crit_edge:   ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

land.lhs.true37.if.end138_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.else42:                                        ; preds = %if.else24
  %call43 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(17) @.str.84) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.else53

if.then45:                                        ; preds = %if.else42
  %flags46 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %17 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags46, align 8
  %and47 = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp ne i32 %and47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp50 = icmp eq i32 %5, 19
  %or.cond246 = select i1 %tobool48.not, i1 true, i1 %cmp50
  br i1 %or.cond246, label %if.then45.if.end138.sink.split_crit_edge, label %if.then45.if.end138_crit_edge

if.then45.if.end138_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then45.if.end138.sink.split_crit_edge:         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else53:                                        ; preds = %if.else42
  %call54 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.85) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.else62

if.then56:                                        ; preds = %if.else53
  %flags57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %19 = ptrtoint ptr %flags57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags57, align 8
  %and58 = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then56.if.end138_crit_edge, label %if.then56.if.end138.sink.split_crit_edge

if.then56.if.end138.sink.split_crit_edge:         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.then56.if.end138_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.else62:                                        ; preds = %if.else53
  %call63 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.86) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.else75

if.then65:                                        ; preds = %if.else62
  %21 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %5, label %if.then65.if.end138.sink.split_crit_edge [
    i32 23, label %if.then65.sw.bb_crit_edge
    i32 25, label %if.then65.sw.bb_crit_edge250
    i32 19, label %if.then65.sw.epilog_crit_edge
    i32 21, label %if.then65.sw.epilog_crit_edge251
  ]

if.then65.sw.epilog_crit_edge251:                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then65.sw.epilog_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then65.sw.bb_crit_edge250:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then65.sw.bb_crit_edge:                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then65.if.end138.sink.split_crit_edge:         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else75:                                        ; preds = %if.else62
  %call76 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.87) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.else86

if.then78:                                        ; preds = %if.else75
  %flags79 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 9
  %22 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags79, align 8
  %and80 = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp ne i32 %and80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp83 = icmp ult i32 %5, 19
  %or.cond247 = select i1 %tobool81.not, i1 true, i1 %cmp83
  br i1 %or.cond247, label %if.then78.if.end138.sink.split_crit_edge, label %if.then78.if.end138_crit_edge

if.then78.if.end138_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then78.if.end138.sink.split_crit_edge:         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else86:                                        ; preds = %if.else75
  %call87 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.88) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %if.else93

if.then89:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %5)
  %cmp90 = icmp ult i32 %5, 20
  br i1 %cmp90, label %if.then89.if.end138.sink.split_crit_edge, label %if.then89.if.end138_crit_edge

if.then89.if.end138_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then89.if.end138.sink.split_crit_edge:         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else93:                                        ; preds = %if.else86
  %call94 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.89) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then96, label %if.else102

if.then96:                                        ; preds = %if.else93
  %24 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %5, label %if.then96.if.end138.sink.split_crit_edge [
    i32 30, label %if.then96.sw.epilog_crit_edge
    i32 32, label %if.then96.sw.epilog_crit_edge252
  ]

if.then96.sw.epilog_crit_edge252:                 ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then96.sw.epilog_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then96.if.end138.sink.split_crit_edge:         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else102:                                       ; preds = %if.else93
  %call103 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.90) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then105, label %if.else111

if.then105:                                       ; preds = %if.else102
  %25 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %5, label %if.then105.if.end138.sink.split_crit_edge [
    i32 30, label %if.then105.sw.epilog_crit_edge
    i32 32, label %if.then105.sw.epilog_crit_edge253
  ]

if.then105.sw.epilog_crit_edge253:                ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then105.sw.epilog_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then105.if.end138.sink.split_crit_edge:        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.else111:                                       ; preds = %if.else102
  %call112 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(22) @.str.91) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then114, label %if.else111.if.end138_crit_edge

if.else111.if.end138_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then114:                                       ; preds = %if.else111
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %26 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pp_funcs, align 4
  %get_power_profile_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %27, i32 0, i32 37
  %28 = ptrtoint ptr %get_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_power_profile_mode, align 4
  %tobool116.not = icmp eq ptr %29, null
  br i1 %tobool116.not, label %if.then114.if.end138.sink.split_crit_edge, label %lor.lhs.false117

if.then114.if.end138.sink.split_crit_edge:        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

lor.lhs.false117:                                 ; preds = %if.then114
  %call123 = tail call i32 %29(ptr noundef %3, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call123)
  %cmp124 = icmp eq i32 %call123, -95
  br i1 %cmp124, label %lor.lhs.false117.if.end138.sink.split_crit_edge, label %lor.lhs.false117.if.end138_crit_edge

lor.lhs.false117.if.end138_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

lor.lhs.false117.if.end138.sink.split_crit_edge:  ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138.sink.split

if.end138.sink.split:                             ; preds = %lor.lhs.false117.if.end138.sink.split_crit_edge, %if.then114.if.end138.sink.split_crit_edge, %if.then105.if.end138.sink.split_crit_edge, %if.then96.if.end138.sink.split_crit_edge, %if.then89.if.end138.sink.split_crit_edge, %if.then78.if.end138.sink.split_crit_edge, %if.then65.if.end138.sink.split_crit_edge, %if.then56.if.end138.sink.split_crit_edge, %if.then45.if.end138.sink.split_crit_edge, %land.lhs.true37.if.end138.sink.split_crit_edge, %land.lhs.true32.if.end138.sink.split_crit_edge, %land.lhs.true.if.end138.sink.split_crit_edge, %if.then20.if.end138.sink.split_crit_edge, %switch.early.test.if.end138.sink.split_crit_edge, %switch.early.test.if.end138.sink.split_crit_edge249, %if.then10.if.end138.sink.split_crit_edge, %if.then5.if.end138.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then5.if.end138.sink.split_crit_edge ], [ 0, %switch.early.test.if.end138.sink.split_crit_edge ], [ 0, %switch.early.test.if.end138.sink.split_crit_edge249 ], [ 0, %if.then10.if.end138.sink.split_crit_edge ], [ 0, %if.then20.if.end138.sink.split_crit_edge ], [ 1, %land.lhs.true37.if.end138.sink.split_crit_edge ], [ 1, %land.lhs.true32.if.end138.sink.split_crit_edge ], [ 1, %land.lhs.true.if.end138.sink.split_crit_edge ], [ 0, %if.then45.if.end138.sink.split_crit_edge ], [ 0, %if.then56.if.end138.sink.split_crit_edge ], [ 0, %if.then65.if.end138.sink.split_crit_edge ], [ 0, %if.then78.if.end138.sink.split_crit_edge ], [ 0, %if.then89.if.end138.sink.split_crit_edge ], [ 0, %if.then96.if.end138.sink.split_crit_edge ], [ 0, %if.then105.if.end138.sink.split_crit_edge ], [ 0, %lor.lhs.false117.if.end138.sink.split_crit_edge ], [ 0, %if.then114.if.end138.sink.split_crit_edge ]
  %30 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %states, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.end138.sink.split, %lor.lhs.false117.if.end138_crit_edge, %if.else111.if.end138_crit_edge, %if.then89.if.end138_crit_edge, %if.then78.if.end138_crit_edge, %if.then56.if.end138_crit_edge, %if.then45.if.end138_crit_edge, %land.lhs.true37.if.end138_crit_edge, %lor.lhs.false35.if.end138_crit_edge, %if.then20.if.end138_crit_edge, %if.then5.if.end138_crit_edge
  %31 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %5, label %if.end138.sw.epilog_crit_edge [
    i32 23, label %if.end138.sw.bb_crit_edge
    i32 25, label %if.end138.sw.bb_crit_edge254
  ]

if.end138.sw.bb_crit_edge254:                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end138.sw.bb_crit_edge:                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end138.sw.epilog_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end138.sw.bb_crit_edge, %if.end138.sw.bb_crit_edge254, %if.then65.sw.bb_crit_edge, %if.then65.sw.bb_crit_edge250
  %call139 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.92) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %sw.bb.if.then147_crit_edge, label %lor.lhs.false141

sw.bb.if.then147_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then147

lor.lhs.false141:                                 ; preds = %sw.bb
  %call142 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(14) @.str.80) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %lor.lhs.false141.if.then147_crit_edge, label %lor.lhs.false144

lor.lhs.false141.if.then147_crit_edge:            ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then147

lor.lhs.false144:                                 ; preds = %lor.lhs.false141
  %call145 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %lor.lhs.false144.if.then147_crit_edge, label %lor.lhs.false144.sw.epilog_crit_edge

lor.lhs.false144.sw.epilog_crit_edge:             ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false144.if.then147_crit_edge:            ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then147

if.then147:                                       ; preds = %lor.lhs.false144.if.then147_crit_edge, %lor.lhs.false141.if.then147_crit_edge, %sw.bb.if.then147_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mode, align 4
  %34 = and i16 %33, -147
  store i16 %34, ptr %mode, align 4
  %store = getelementptr inbounds %struct.device_attribute, ptr %attr, i32 0, i32 2
  %35 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %store, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then147, %lor.lhs.false144.sw.epilog_crit_edge, %if.end138.sw.epilog_crit_edge, %if.then105.sw.epilog_crit_edge, %if.then105.sw.epilog_crit_edge253, %if.then96.sw.epilog_crit_edge, %if.then96.sw.epilog_crit_edge252, %if.then65.sw.epilog_crit_edge, %if.then65.sw.epilog_crit_edge251, %switch.early.test.sw.epilog_crit_edge
  %call152 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(15) @.str.81) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %5)
  %cmp155 = icmp ugt i32 %5, 25
  %or.cond248 = select i1 %tobool153.not, i1 %cmp155, i1 false
  br i1 %or.cond248, label %if.then157, label %sw.epilog.if.end165_crit_edge

sw.epilog.if.end165_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.then157:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %mode159 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %36 = ptrtoint ptr %mode159 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mode159, align 4
  %38 = and i16 %37, -147
  store i16 %38, ptr %mode159, align 4
  %store163 = getelementptr inbounds %struct.device_attribute, ptr %attr, i32 0, i32 2
  %39 = ptrtoint ptr %store163 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %store163, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then157, %sw.epilog.if.end165_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %40 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %virt, align 8
  %and166 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end165.cleanup_crit_edge, label %if.then168

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then168:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  %mode170 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %42 = ptrtoint ptr %mode170 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mode170, align 4
  %44 = and i16 %43, -147
  store i16 %44, ptr %mode170, align 4
  %store174 = getelementptr inbounds %struct.device_attribute, ptr %attr, i32 0, i32 2
  %45 = ptrtoint ptr %store174 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %store174, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then168, %if.end165.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_power_dpm_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs2 = getelementptr i8, ptr %1, i32 26756
  %2 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs2, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  %call.i46 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %get_current_power_state = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %get_current_power_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_current_power_state, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pp_funcs2, align 4
  %get_current_power_state18 = getelementptr inbounds %struct.amd_pm_funcs, ptr %17, i32 0, i32 21
  %18 = ptrtoint ptr %get_current_power_state18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_current_power_state18, align 4
  %20 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %powerplay, align 8
  %call20 = tail call i32 %19(ptr noundef %21) #9
  br label %if.end22

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %user_state = getelementptr i8, ptr %1, i32 29344
  %22 = ptrtoint ptr %user_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %user_state, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %pm.0 = phi i32 [ %call20, %if.then15 ], [ %23, %if.else ]
  %24 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev8, align 4
  %call.i47 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i47, ptr %last_busy.i, align 8
  %27 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev8, align 4
  %call.i48 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pm.0)
  %cmp26 = icmp eq i32 %pm.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pm.0)
  %cmp27 = icmp eq i32 %pm.0, 3
  %cond = select i1 %cmp27, ptr @.str.109, ptr @.str.110
  %cond28 = select i1 %cmp26, ptr @.str.108, ptr %cond
  %call29 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, ptr noundef nonnull %cond28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then10 ], [ %call29, %if.end22 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_power_dpm_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #9
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.108, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %state, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end6
  %call9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.109, ptr noundef %buf, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %state, align 4
  br label %if.end19

if.else12:                                        ; preds = %if.else
  %call13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.110, ptr noundef %buf, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else12.cleanup_crit_edge

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %state, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then11, %if.then8
  %dev20 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev20, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev20, align 4
  %call.i76 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call27 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %add.ptr.i) #9
  br i1 %call27, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %pm = getelementptr i8, ptr %1, i32 29056
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #9
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  %user_state = getelementptr i8, ptr %1, i32 29344
  %17 = ptrtoint ptr %user_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %user_state, align 4
  tail call void @mutex_unlock(ptr noundef %pm) #9
  br label %if.end49

if.else32:                                        ; preds = %if.end26
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %18 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pp_funcs, align 4
  %dispatch_tasks = getelementptr inbounds %struct.amd_pm_funcs, ptr %19, i32 0, i32 30
  %20 = ptrtoint ptr %dispatch_tasks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dispatch_tasks, align 4
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %if.else40, label %if.then34

if.then34:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %22 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %powerplay, align 8
  %call39 = call i32 %21(ptr noundef %23, i32 noundef 1, ptr noundef nonnull %state) #9
  br label %if.end49

if.else40:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  %pm41 = getelementptr i8, ptr %1, i32 29056
  tail call void @mutex_lock_nested(ptr noundef %pm41, i32 noundef 0) #9
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  %user_state45 = getelementptr i8, ptr %1, i32 29344
  %26 = ptrtoint ptr %user_state45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %user_state45, align 4
  tail call void @mutex_unlock(ptr noundef %pm41) #9
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr.i) #9
  br label %if.end49

if.end49:                                         ; preds = %if.else40, %if.then34, %if.then28
  %27 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev20, align 4
  %call.i77 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i77, ptr %last_busy.i, align 8
  %30 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev20, align 4
  %call.i78 = call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then23, %if.else12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then23 ], [ %count, %if.end49 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.else12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_power_dpm_force_performance_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i91 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %get_performance_level = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %get_performance_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_performance_level, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %16 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %powerplay, align 8
  %call19 = tail call i32 %15(ptr noundef %17) #9
  br label %if.end20

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %forced_level = getelementptr i8, ptr %1, i32 29708
  %18 = ptrtoint ptr %forced_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %forced_level, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %level.0 = phi i32 [ %call19, %if.then14 ], [ %19, %if.else ]
  %20 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev7, align 4
  %call.i92 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i92, ptr %last_busy.i, align 8
  %23 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7, align 4
  %call.i93 = tail call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #9
  %25 = zext i32 %level.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %level.0, label %cond.false45 [
    i32 1, label %if.end20.cond.end60_crit_edge
    i32 4, label %cond.end60.fold.split
    i32 8, label %cond.end60.fold.split85
    i32 2, label %cond.end60.fold.split86
    i32 16, label %cond.end60.fold.split87
    i32 32, label %cond.end60.fold.split88
    i32 64, label %cond.end60.fold.split89
    i32 128, label %cond.end60.fold.split90
  ]

if.end20.cond.end60_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.false45:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %level.0)
  %cmp46 = icmp eq i32 %level.0, 512
  %cond = select i1 %cmp46, ptr @.str.119, ptr @.str.120
  br label %cond.end60

cond.end60.fold.split:                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.end60.fold.split85:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.end60.fold.split86:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.end60.fold.split87:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.end60.fold.split88:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.end60.fold.split89:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.end60.fold.split90:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.end60:                                       ; preds = %cond.end60.fold.split90, %cond.end60.fold.split89, %cond.end60.fold.split88, %cond.end60.fold.split87, %cond.end60.fold.split86, %cond.end60.fold.split85, %cond.end60.fold.split, %cond.false45, %if.end20.cond.end60_crit_edge
  %cond61 = phi ptr [ @.str.111, %if.end20.cond.end60_crit_edge ], [ %cond, %cond.false45 ], [ @.str.112, %cond.end60.fold.split ], [ @.str.113, %cond.end60.fold.split85 ], [ @.str.114, %cond.end60.fold.split86 ], [ @.str.115, %cond.end60.fold.split87 ], [ @.str.116, %cond.end60.fold.split88 ], [ @.str.117, %cond.end60.fold.split89 ], [ @.str.118, %cond.end60.fold.split90 ]
  %call62 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, ptr noundef nonnull %cond61) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end60, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call62, %cond.end60 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_power_dpm_force_performance_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs2 = getelementptr i8, ptr %1, i32 26756
  %2 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs2, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.112, ptr noundef %buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.end7.if.end55_crit_edge, label %if.else

if.end7.if.end55_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else:                                          ; preds = %if.end7
  %call10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.113, ptr noundef %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.else.if.end55_crit_edge, label %if.else13

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else13:                                        ; preds = %if.else
  %call14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.111, ptr noundef %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.else13.if.end55_crit_edge, label %if.else17

if.else13.if.end55_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else17:                                        ; preds = %if.else13
  %call18 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.114, ptr noundef %buf, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.else17.if.end55_crit_edge, label %if.else21

if.else17.if.end55_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else21:                                        ; preds = %if.else17
  %call22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.121, ptr noundef %buf, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.else21.if.end55_crit_edge, label %if.else25

if.else21.if.end55_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else25:                                        ; preds = %if.else21
  %call26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.115, ptr noundef %buf, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.else25.if.end55_crit_edge, label %if.else29

if.else25.if.end55_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else29:                                        ; preds = %if.else25
  %call30 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.116, ptr noundef %buf, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.else29.if.end55_crit_edge, label %if.else33

if.else29.if.end55_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else33:                                        ; preds = %if.else29
  %call34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.117, ptr noundef %buf, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.else33.if.end55_crit_edge, label %if.else37

if.else33.if.end55_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else37:                                        ; preds = %if.else33
  %call38 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.118, ptr noundef %buf, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.else37.if.end55_crit_edge, label %if.else41

if.else37.if.end55_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.else41:                                        ; preds = %if.else37
  %call42 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.119, ptr noundef %buf, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.else41.if.end55_crit_edge, label %if.else41.cleanup_crit_edge

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else41.if.end55_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55:                                         ; preds = %if.else41.if.end55_crit_edge, %if.else37.if.end55_crit_edge, %if.else33.if.end55_crit_edge, %if.else29.if.end55_crit_edge, %if.else25.if.end55_crit_edge, %if.else21.if.end55_crit_edge, %if.else17.if.end55_crit_edge, %if.else13.if.end55_crit_edge, %if.else.if.end55_crit_edge, %if.end7.if.end55_crit_edge
  %cmp98 = phi i1 [ true, %if.end7.if.end55_crit_edge ], [ true, %if.else.if.end55_crit_edge ], [ true, %if.else13.if.end55_crit_edge ], [ true, %if.else17.if.end55_crit_edge ], [ false, %if.else21.if.end55_crit_edge ], [ true, %if.else25.if.end55_crit_edge ], [ true, %if.else29.if.end55_crit_edge ], [ true, %if.else33.if.end55_crit_edge ], [ true, %if.else37.if.end55_crit_edge ], [ true, %if.else41.if.end55_crit_edge ]
  %cmp89.not = phi i1 [ false, %if.end7.if.end55_crit_edge ], [ false, %if.else.if.end55_crit_edge ], [ false, %if.else13.if.end55_crit_edge ], [ true, %if.else17.if.end55_crit_edge ], [ false, %if.else21.if.end55_crit_edge ], [ false, %if.else25.if.end55_crit_edge ], [ false, %if.else29.if.end55_crit_edge ], [ false, %if.else33.if.end55_crit_edge ], [ false, %if.else37.if.end55_crit_edge ], [ false, %if.else41.if.end55_crit_edge ]
  %level.0 = phi i32 [ 4, %if.end7.if.end55_crit_edge ], [ 8, %if.else.if.end55_crit_edge ], [ 1, %if.else13.if.end55_crit_edge ], [ 2, %if.else17.if.end55_crit_edge ], [ 256, %if.else21.if.end55_crit_edge ], [ 16, %if.else25.if.end55_crit_edge ], [ 32, %if.else29.if.end55_crit_edge ], [ 64, %if.else33.if.end55_crit_edge ], [ 128, %if.else37.if.end55_crit_edge ], [ 512, %if.else41.if.end55_crit_edge ]
  %dev56 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev56, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp58 = icmp slt i32 %call.i, 0
  br i1 %cmp58, label %if.end55.cleanup.sink.split_crit_edge, label %if.end62

if.end55.cleanup.sink.split_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end62:                                         ; preds = %if.end55
  %get_performance_level = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 20
  %12 = ptrtoint ptr %get_performance_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_performance_level, align 4
  %tobool63.not = icmp eq ptr %13, null
  br i1 %tobool63.not, label %if.else70, label %if.then64

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pp_funcs2, align 4
  %get_performance_level67 = getelementptr inbounds %struct.amd_pm_funcs, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %get_performance_level67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_performance_level67, align 4
  %18 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %powerplay, align 8
  %call69 = tail call i32 %17(ptr noundef %19) #9
  br label %if.end71

if.else70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %forced_level = getelementptr i8, ptr %1, i32 29708
  %20 = ptrtoint ptr %forced_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %forced_level, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then64
  %current_level.0 = phi i32 [ %call69, %if.then64 ], [ %21, %if.else70 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %current_level.0, i32 %level.0)
  %cmp72 = icmp eq i32 %current_level.0, %level.0
  br i1 %cmp72, label %if.end71.cleanup.sink.split.sink.split_crit_edge, label %if.end77

if.end71.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end77:                                         ; preds = %if.end71
  %asic_type = getelementptr i8, ptr %1, i32 2360
  %22 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %23)
  %cmp78 = icmp eq i32 %23, 22
  br i1 %cmp78, label %if.then79, label %if.end77.if.end94_crit_edge

if.end77.if.end94_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then79:                                        ; preds = %if.end77
  %apu_flags = getelementptr i8, ptr %1, i32 2380
  %24 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %apu_flags, align 4
  %and = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool80.not = icmp eq i32 %and, 0
  br i1 %tobool80.not, label %if.then81, label %if.then79.if.end94_crit_edge

if.then79.if.end94_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then81:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %current_level.0)
  %cmp82.not = icmp eq i32 %current_level.0, 2
  %26 = xor i1 %cmp82.not, %cmp89.not
  br i1 %26, label %if.end94.sink.split, label %if.then81.if.end94_crit_edge

if.then81.if.end94_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.end94.sink.split:                              ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %cmp89.not.not = xor i1 %cmp89.not, true
  %brmerge = or i1 %cmp82.not, %cmp89.not.not
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %add.ptr.i, i1 noundef zeroext %brmerge) #9
  br label %if.end94

if.end94:                                         ; preds = %if.end94.sink.split, %if.then81.if.end94_crit_edge, %if.then79.if.end94_crit_edge, %if.end77.if.end94_crit_edge
  %and95 = and i32 %current_level.0, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp ne i32 %and95, 0
  %brmerge199 = or i1 %cmp98, %tobool96.not
  br i1 %brmerge199, label %if.end104, label %do.end

do.end:                                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #12
  br label %cleanup.sink.split.sink.split

if.end104:                                        ; preds = %if.end94
  %force_performance_level = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 14
  %27 = ptrtoint ptr %force_performance_level to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %force_performance_level, align 4
  %tobool105.not = icmp eq ptr %28, null
  br i1 %tobool105.not, label %if.end104.cleanup.sink.split.sink.split_crit_edge, label %if.then106

if.end104.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.then106:                                       ; preds = %if.end104
  %pm107 = getelementptr i8, ptr %1, i32 29056
  tail call void @mutex_lock_nested(ptr noundef %pm107, i32 noundef 0) #9
  %thermal_active = getelementptr i8, ptr %1, i32 29607
  %29 = ptrtoint ptr %thermal_active to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %thermal_active, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool110.not = icmp eq i8 %30, 0
  br i1 %tobool110.not, label %if.end117, label %if.then111

if.then111:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %pm107) #9
  br label %cleanup.sink.split.sink.split

if.end117:                                        ; preds = %if.then106
  %31 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pp_funcs2, align 4
  %force_performance_level120 = getelementptr inbounds %struct.amd_pm_funcs, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %force_performance_level120 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %force_performance_level120, align 4
  %35 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %powerplay, align 8
  %call123 = tail call i32 %34(ptr noundef %36, i32 noundef %level.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.else131, label %if.then125

if.then125:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %pm107) #9
  br label %cleanup.sink.split.sink.split

if.else131:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %forced_level134 = getelementptr i8, ptr %1, i32 29708
  %37 = ptrtoint ptr %forced_level134 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %level.0, ptr %forced_level134, align 4
  tail call void @mutex_unlock(ptr noundef %pm107) #9
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.else131, %if.then125, %if.then111, %if.end104.cleanup.sink.split.sink.split_crit_edge, %do.end, %if.end71.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -22, %if.then111 ], [ -22, %if.then125 ], [ -22, %do.end ], [ %count, %if.end71.cleanup.sink.split.sink.split_crit_edge ], [ %count, %if.else131 ], [ %count, %if.end104.cleanup.sink.split.sink.split_crit_edge ]
  %38 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev56, align 4
  %call.i201 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i201, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end55.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.end55.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %41 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev56, align 4
  %call.i214 = tail call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else41.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.else41.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_num_states(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %data = alloca %struct.pp_states_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs2 = getelementptr i8, ptr %1, i32 26756
  %2 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs2, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %data) #9
  %4 = call ptr @memset(ptr %data, i32 255, i32 68)
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %7 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %9 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 4
  %call.i74 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %get_pp_num_states = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 24
  %15 = ptrtoint ptr %get_pp_num_states to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_pp_num_states, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pp_funcs2, align 4
  %get_pp_num_states18 = getelementptr inbounds %struct.amd_pm_funcs, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %get_pp_num_states18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_pp_num_states18, align 4
  %21 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %powerplay, align 8
  %call20 = call i32 %20(ptr noundef %22, ptr noundef nonnull %data) #9
  br label %if.end21

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %23 = call ptr @memset(ptr %data, i32 0, i32 68)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  %24 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev8, align 4
  %call.i75 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i75, ptr %last_busy.i, align 8
  %27 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev8, align 4
  %call.i76 = call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #9
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %call25 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %30) #9
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2777.not = icmp eq i32 %32, 0
  br i1 %cmp2777.not, label %if.end21.cleanup_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %cond.end45.for.body_crit_edge, %if.end21.for.body_crit_edge
  %buf_len.079 = phi i32 [ %add, %cond.end45.for.body_crit_edge ], [ %call25, %if.end21.for.body_crit_edge ]
  %i.078 = phi i32 [ %inc, %cond.end45.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_states_info, ptr %data, i32 0, i32 1, i32 %i.078
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %34, label %cond.false38 [
    i32 10, label %for.body.cond.end45_crit_edge
    i32 2, label %cond.end45.fold.split
    i32 3, label %cond.end45.fold.split73
  ]

for.body.cond.end45_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end45

cond.false38:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp41 = icmp eq i32 %34, 4
  %cond = select i1 %cmp41, ptr @.str.110, ptr @.str.127
  br label %cond.end45

cond.end45.fold.split:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end45

cond.end45.fold.split73:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end45

cond.end45:                                       ; preds = %cond.end45.fold.split73, %cond.end45.fold.split, %cond.false38, %for.body.cond.end45_crit_edge
  %cond46 = phi ptr [ @.str.126, %for.body.cond.end45_crit_edge ], [ %cond, %cond.false38 ], [ @.str.108, %cond.end45.fold.split ], [ @.str.109, %cond.end45.fold.split73 ]
  %call47 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %buf_len.079, ptr noundef nonnull @.str.125, i32 noundef %i.078, ptr noundef nonnull %cond46) #9
  %add = add i32 %call47, %buf_len.079
  %inc = add nuw i32 %i.078, 1
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  %cmp27 = icmp ult i32 %inc, %37
  br i1 %cmp27, label %cond.end45.for.body_crit_edge, label %cond.end45.cleanup_crit_edge

cond.end45.cleanup_crit_edge:                     ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end45.for.body_crit_edge:                    ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %cond.end45.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then10 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call25, %if.end21.cleanup_crit_edge ], [ %add, %cond.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_cur_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %data = alloca %struct.pp_states_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs2 = getelementptr i8, ptr %1, i32 26756
  %2 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs2, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %data) #9
  %4 = call ptr @memset(ptr %data, i32 0, i32 68)
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %7 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %9 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 4
  %call.i65 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %get_current_power_state = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 21
  %15 = ptrtoint ptr %get_current_power_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_current_power_state, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %if.end13.if.end29_crit_edge, label %land.lhs.true15

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true15:                                  ; preds = %if.end13
  %get_pp_num_states = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %get_pp_num_states to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_pp_num_states, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %land.lhs.true15.if.end29_crit_edge, label %if.then17

land.lhs.true15.if.end29_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pp_funcs2, align 4
  %get_current_power_state20 = getelementptr inbounds %struct.amd_pm_funcs, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %get_current_power_state20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_current_power_state20, align 4
  %23 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %powerplay, align 8
  %call22 = tail call i32 %22(ptr noundef %24) #9
  %25 = ptrtoint ptr %pp_funcs2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pp_funcs2, align 4
  %get_pp_num_states25 = getelementptr inbounds %struct.amd_pm_funcs, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %get_pp_num_states25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_pp_num_states25, align 4
  %29 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %powerplay, align 8
  %call28 = call i32 %28(ptr noundef %30, ptr noundef nonnull %data) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then17, %land.lhs.true15.if.end29_crit_edge, %if.end13.if.end29_crit_edge
  %pm.0 = phi i32 [ %call22, %if.then17 ], [ 0, %land.lhs.true15.if.end29_crit_edge ], [ 0, %if.end13.if.end29_crit_edge ]
  %31 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev8, align 4
  %call.i66 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i66, ptr %last_busy.i, align 8
  %34 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev8, align 4
  %call.i67 = call i32 @__pm_runtime_suspend(ptr noundef %35, i32 noundef 13) #9
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp3368.not = icmp eq i32 %37, 0
  br i1 %cmp3368.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pp_states_info, ptr %data, i32 0, i32 1, i32 %i.069
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pm.0, i32 %39)
  %cmp34 = icmp eq i32 %pm.0, %39
  br i1 %cmp34, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %37
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end29.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end29.for.end_crit_edge ], [ %i.069, %for.body.for.end_crit_edge ], [ %37, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %37)
  %cmp38 = icmp eq i32 %i.0.lcssa, %37
  %spec.store.select = select i1 %cmp38, i32 -22, i32 %i.0.lcssa
  %call41 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %spec.store.select) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then10 ], [ %call41, %for.end ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_force_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %pp_force_state_enabled = getelementptr i8, ptr %1, i32 26760
  %8 = ptrtoint ptr %pp_force_state_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pp_force_state_enabled, align 8, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @amdgpu_get_pp_cur_state(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf)
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ %call10, %if.else ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_force_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %state = alloca i32, align 4
  %idx = alloca i32, align 4
  %data = alloca %struct.pp_states_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup58_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @strlen(ptr noundef %buf) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp eq i32 %call7, 1
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %pp_force_state_enabled = getelementptr i8, ptr %1, i32 26760
  %9 = ptrtoint ptr %pp_force_state_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pp_force_state_enabled, align 8
  br label %cleanup58

if.else:                                          ; preds = %if.end6
  %call9 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %add.ptr.i) #9
  br i1 %call9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %pp_force_state_enabled11 = getelementptr i8, ptr %1, i32 26760
  %10 = ptrtoint ptr %pp_force_state_enabled11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pp_force_state_enabled11, align 8
  br label %cleanup58

if.else12:                                        ; preds = %if.else
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %11 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pp_funcs, align 4
  %dispatch_tasks = getelementptr inbounds %struct.amd_pm_funcs, ptr %12, i32 0, i32 30
  %13 = ptrtoint ptr %dispatch_tasks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dispatch_tasks, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.else12.cleanup58_crit_edge, label %land.lhs.true14

if.else12.cleanup58_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

land.lhs.true14:                                  ; preds = %if.else12
  %get_pp_num_states = getelementptr inbounds %struct.amd_pm_funcs, ptr %12, i32 0, i32 24
  %15 = ptrtoint ptr %get_pp_num_states to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_pp_num_states, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %land.lhs.true14.cleanup58_crit_edge, label %if.then18

land.lhs.true14.cleanup58_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

if.then18:                                        ; preds = %land.lhs.true14
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %data) #9
  %17 = call ptr @memset(ptr %data, i32 255, i32 68)
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %idx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.then18.cleanup.thread_crit_edge

if.then18.cleanup.thread_crit_edge:               ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.then18
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %19)
  %cmp21 = icmp ugt i32 %19, 15
  br i1 %cmp21, label %lor.lhs.false.cleanup.thread_crit_edge, label %if.end23

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end23:                                         ; preds = %lor.lhs.false
  %20 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %19, i32 16) #9, !srcloc !466
  %and = and i32 %20, %19
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %idx, align 4
  %22 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pp_funcs, align 4
  %get_pp_num_states30 = getelementptr inbounds %struct.amd_pm_funcs, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %get_pp_num_states30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_pp_num_states30, align 4
  %26 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %powerplay, align 8
  %call32 = call i32 %25(ptr noundef %27, ptr noundef nonnull %data) #9
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.pp_states_info, ptr %data, i32 0, i32 1, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %state, align 4
  %dev33 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev33, align 4
  %call.i84 = call i32 @__pm_runtime_resume(ptr noundef %34, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp35 = icmp slt i32 %call.i84, 0
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev33, align 4
  %call.i85 = call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #9
  br label %cleanup.thread

if.end39:                                         ; preds = %if.end23
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %38, label %if.then43 [
    i32 10, label %if.end39.cleanup_crit_edge
    i32 0, label %if.end39.cleanup_crit_edge90
  ]

if.end39.cleanup_crit_edge90:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pp_funcs, align 4
  %dispatch_tasks46 = getelementptr inbounds %struct.amd_pm_funcs, ptr %41, i32 0, i32 30
  %42 = ptrtoint ptr %dispatch_tasks46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dispatch_tasks46, align 4
  %44 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %powerplay, align 8
  %call49 = call i32 %43(ptr noundef %45, i32 noundef 1, ptr noundef nonnull %state) #9
  %pp_force_state_enabled50 = getelementptr i8, ptr %1, i32 26760
  %46 = ptrtoint ptr %pp_force_state_enabled50 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %pp_force_state_enabled50, align 8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then36, %lor.lhs.false.cleanup.thread_crit_edge, %if.then18.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.then18.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false.cleanup.thread_crit_edge ], [ %call.i84, %if.then36 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %data) #9
  br label %cleanup58

cleanup:                                          ; preds = %if.then43, %if.end39.cleanup_crit_edge, %if.end39.cleanup_crit_edge90
  %47 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev33, align 4
  %call.i86 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 12, i32 22
  %49 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store volatile i64 %call.i86, ptr %last_busy.i, align 8
  %50 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev33, align 4
  %call.i87 = call i32 @__pm_runtime_suspend(ptr noundef %51, i32 noundef 13) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %data) #9
  br label %cleanup58

cleanup58:                                        ; preds = %cleanup, %cleanup.thread, %land.lhs.true14.cleanup58_crit_edge, %if.else12.cleanup58_crit_edge, %if.then10, %if.then8, %land.lhs.true.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.1 = phi i32 [ -1, %entry.cleanup58_crit_edge ], [ -1, %land.lhs.true.cleanup58_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %count, %cleanup ], [ %count, %if.then10 ], [ %count, %land.lhs.true14.cleanup58_crit_edge ], [ %count, %if.else12.cleanup58_crit_edge ], [ %count, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_table(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %table = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table) #9
  %2 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %table, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %call.i53 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %13 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp_funcs, align 4
  %get_pp_table = getelementptr inbounds %struct.amd_pm_funcs, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %get_pp_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_pp_table, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %17 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %powerplay, align 8
  %call19 = call i32 %16(ptr noundef %18, ptr noundef nonnull %table) #9
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i54 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i54, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  %call.i55 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp23 = icmp slt i32 %call19, 0
  br i1 %cmp23, label %if.then14.cleanup_crit_edge, label %if.end29

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev7, align 4
  %call.i56 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i57 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i57 to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i56, ptr %last_busy.i57, align 8
  %27 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev7, align 4
  %call.i58 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #9
  br label %cleanup

if.end29:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %29 = call i32 @llvm.umin.i32(i32 %call19, i32 4095)
  %30 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %table, align 4
  %32 = call ptr @memcpy(ptr %buf, ptr %31, i32 %29)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.else, %if.then14.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %29, %if.end29 ], [ 0, %if.else ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call19, %if.then14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_table(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i40 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %set_pp_table = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %set_pp_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_pp_table, align 4
  %16 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %powerplay, align 8
  %call14 = tail call i32 %15(ptr noundef %17, ptr noundef %buf, i32 noundef %count) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %18 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev7, align 4
  %call.i43 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i44 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i44 to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i43, ptr %last_busy.i44, align 8
  %21 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev7, align 4
  %call.i45 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #9
  %count.call14 = select i1 %tobool15.not, i32 %count, i32 %call14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %count.call14, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_dpm_sclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_get_pp_dpm_clock(ptr noundef %dev, i32 noundef 0, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_dpm_sclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_set_pp_dpm_clock(ptr noundef %dev, i32 noundef 0, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_dpm_mclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_get_pp_dpm_clock(ptr noundef %dev, i32 noundef 1, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_dpm_mclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_set_pp_dpm_clock(ptr noundef %dev, i32 noundef 1, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_dpm_socclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_get_pp_dpm_clock(ptr noundef %dev, i32 noundef 3, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_dpm_socclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_set_pp_dpm_clock(ptr noundef %dev, i32 noundef 3, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_dpm_fclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_get_pp_dpm_clock(ptr noundef %dev, i32 noundef 4, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_dpm_fclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_set_pp_dpm_clock(ptr noundef %dev, i32 noundef 4, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_dpm_vclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_get_pp_dpm_clock(ptr noundef %dev, i32 noundef 6, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_dpm_vclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_set_pp_dpm_clock(ptr noundef %dev, i32 noundef 6, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_dpm_dclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_get_pp_dpm_clock(ptr noundef %dev, i32 noundef 7, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_dpm_dclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_set_pp_dpm_clock(ptr noundef %dev, i32 noundef 7, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_dpm_dcefclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_get_pp_dpm_clock(ptr noundef %dev, i32 noundef 5, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_dpm_dcefclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_set_pp_dpm_clock(ptr noundef %dev, i32 noundef 5, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_dpm_pcie(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_get_pp_dpm_clock(ptr noundef %dev, i32 noundef 2, ptr noundef %buf)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_dpm_pcie(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_set_pp_dpm_clock(ptr noundef %dev, i32 noundef 2, ptr noundef %buf, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_sclk_od(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i42 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %add.ptr.i) #9
  br i1 %call13, label %if.end12.if.end23_crit_edge, label %if.else

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else:                                          ; preds = %if.end12
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %get_sclk_od = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %get_sclk_od to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_sclk_od, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.else.if.end23_crit_edge, label %if.then16

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %16 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %powerplay, align 8
  %call21 = tail call i32 %15(ptr noundef %17) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.else.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %value.0 = phi i32 [ %call21, %if.then16 ], [ 0, %if.else.if.end23_crit_edge ], [ 0, %if.end12.if.end23_crit_edge ]
  %18 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev7, align 4
  %call.i43 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i43, ptr %last_busy.i, align 8
  %21 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev7, align 4
  %call.i44 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #9
  %call27 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %value.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call27, %if.end23 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_sclk_od(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %call.i67 = call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp = icmp slt i32 %call.i67, 0
  br i1 %cmp, label %if.end10.cleanup.sink.split_crit_edge, label %if.end16

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end10
  %call17 = call zeroext i1 @is_support_sw_smu(ptr noundef %add.ptr.i) #9
  br i1 %call17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %value, align 4
  br label %if.end41

if.else:                                          ; preds = %if.end16
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %set_sclk_od = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %set_sclk_od to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_sclk_od, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %if.else.if.end26_crit_edge, label %if.then20

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %powerplay, align 8
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  %call25 = call i32 %15(ptr noundef %17, i32 noundef %19) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.else.if.end26_crit_edge
  %20 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pp_funcs, align 4
  %dispatch_tasks = getelementptr inbounds %struct.amd_pm_funcs, ptr %21, i32 0, i32 30
  %22 = ptrtoint ptr %dispatch_tasks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dispatch_tasks, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %if.else37, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %powerplay, align 8
  %call36 = call i32 %23(ptr noundef %25, i32 noundef 2, ptr noundef null) #9
  br label %if.end41

if.else37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %boot_ps = getelementptr i8, ptr %1, i32 29204
  %26 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %boot_ps, align 4
  %current_ps = getelementptr i8, ptr %1, i32 29196
  %28 = ptrtoint ptr %current_ps to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %current_ps, align 4
  call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr.i) #9
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.then30, %if.then18
  %29 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev11, align 4
  %call.i69 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 12, i32 22
  %31 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store volatile i64 %call.i69, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end41, %if.end10.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end41 ], [ %call.i67, %if.end10.cleanup.sink.split_crit_edge ]
  %32 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev11, align 4
  %call.i70 = call i32 @__pm_runtime_suspend(ptr noundef %33, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_mclk_od(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i42 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %add.ptr.i) #9
  br i1 %call13, label %if.end12.if.end23_crit_edge, label %if.else

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else:                                          ; preds = %if.end12
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %get_mclk_od = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %get_mclk_od to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_mclk_od, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.else.if.end23_crit_edge, label %if.then16

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %16 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %powerplay, align 8
  %call21 = tail call i32 %15(ptr noundef %17) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.else.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %value.0 = phi i32 [ %call21, %if.then16 ], [ 0, %if.else.if.end23_crit_edge ], [ 0, %if.end12.if.end23_crit_edge ]
  %18 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev7, align 4
  %call.i43 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i43, ptr %last_busy.i, align 8
  %21 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev7, align 4
  %call.i44 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #9
  %call27 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %value.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call27, %if.end23 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_mclk_od(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %call.i67 = call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp = icmp slt i32 %call.i67, 0
  br i1 %cmp, label %if.end10.cleanup.sink.split_crit_edge, label %if.end16

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end10
  %call17 = call zeroext i1 @is_support_sw_smu(ptr noundef %add.ptr.i) #9
  br i1 %call17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %value, align 4
  br label %if.end41

if.else:                                          ; preds = %if.end16
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %set_mclk_od = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %set_mclk_od to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_mclk_od, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %if.else.if.end26_crit_edge, label %if.then20

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %powerplay, align 8
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  %call25 = call i32 %15(ptr noundef %17, i32 noundef %19) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.else.if.end26_crit_edge
  %20 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pp_funcs, align 4
  %dispatch_tasks = getelementptr inbounds %struct.amd_pm_funcs, ptr %21, i32 0, i32 30
  %22 = ptrtoint ptr %dispatch_tasks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dispatch_tasks, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %if.else37, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %powerplay, align 8
  %call36 = call i32 %23(ptr noundef %25, i32 noundef 2, ptr noundef null) #9
  br label %if.end41

if.else37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %boot_ps = getelementptr i8, ptr %1, i32 29204
  %26 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %boot_ps, align 4
  %current_ps = getelementptr i8, ptr %1, i32 29196
  %28 = ptrtoint ptr %current_ps to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %current_ps, align 4
  call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr.i) #9
  br label %if.end41

if.end41:                                         ; preds = %if.else37, %if.then30, %if.then18
  %29 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev11, align 4
  %call.i69 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 12, i32 22
  %31 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store volatile i64 %call.i69, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end41, %if.end10.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end41 ], [ %call.i67, %if.end10.cleanup.sink.split_crit_edge ]
  %32 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev11, align 4
  %call.i70 = call i32 @__pm_runtime_suspend(ptr noundef %33, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_power_profile_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end6.cleanup.sink.split_crit_edge, label %if.end12

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %10 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pp_funcs, align 4
  %get_power_profile_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %11, i32 0, i32 37
  %12 = ptrtoint ptr %get_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_power_profile_mode, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %14 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %powerplay, align 8
  %call19 = tail call i32 %13(ptr noundef %15, ptr noundef %buf) #9
  br label %if.end21

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32) #9
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then14
  %size.0 = phi i32 [ %call19, %if.then14 ], [ %call20, %if.else ]
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %call.i40 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size.0, %if.end21 ], [ %call.i, %if.end6.cleanup.sink.split_crit_edge ]
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i41 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_power_profile_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %parameter = alloca [64 x i32], align 4
  %buf_cpy = alloca [128 x i8], align 1
  %tmp_str = alloca ptr, align 4
  %tmp = alloca [2 x i8], align 1
  %profile_mode = alloca i32, align 4
  %delimiter = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %parameter) #9
  %2 = call ptr @memset(ptr %parameter, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf_cpy) #9
  %3 = call ptr @memset(ptr %buf_cpy, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_str) #9
  %4 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp_str, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #9
  %5 = getelementptr inbounds [2 x i8], ptr %tmp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %profile_mode) #9
  %6 = ptrtoint ptr %profile_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %profile_mode, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %delimiter) #9
  %7 = call ptr @memcpy(ptr %delimiter, ptr @__const.amdgpu_set_pp_od_clk_voltage.delimiter, i32 3)
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %10 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %12 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %5, align 1
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %tmp, i32 noundef 0, ptr noundef nonnull %profile_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %profile_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %profile_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp = icmp eq i32 %19, 6
  br i1 %cmp, label %if.then12, label %if.end11.if.end51_crit_edge

if.end11.if.end51_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then12:                                        ; preds = %if.end11
  %20 = add i32 %count, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %20)
  %21 = icmp ult i32 %20, -126
  br i1 %21, label %if.then12.cleanup_crit_edge, label %if.then12.while.cond_crit_edge

if.then12.while.cond_crit_edge:                   ; preds = %if.then12
  br label %while.cond

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then12.while.cond_crit_edge
  %buf.addr.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %buf, %if.then12.while.cond_crit_edge ]
  %i.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %if.then12.while.cond_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %buf.addr.0, i32 1
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr, align 1
  %conv = zext i8 %23 to i32
  %arrayidx17 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx17, align 1
  %26 = and i8 %25, 32
  %cmp19.not = icmp eq i8 %26, 0
  %inc = add i32 %i.0, 1
  br i1 %cmp19.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %sub = sub i32 %count, %i.0
  %27 = call ptr @memcpy(ptr %buf_cpy, ptr %incdec.ptr, i32 %sub)
  %28 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf_cpy, ptr %tmp_str, align 4
  br label %while.cond23.outer

while.cond23.outer:                               ; preds = %while.cond23.outer.backedge, %while.end
  %parameter_size.0.ph = phi i32 [ 0, %while.end ], [ %inc39, %while.cond23.outer.backedge ]
  br label %while.cond23

while.cond23:                                     ; preds = %while.body28.while.cond23_crit_edge, %while.cond23.outer
  %call25 = call ptr @strsep(ptr noundef nonnull %tmp_str, ptr noundef nonnull %delimiter) #9
  %cmp26.not = icmp eq ptr %call25, null
  br i1 %cmp26.not, label %while.cond23.if.end51_crit_edge, label %while.body28

while.cond23.if.end51_crit_edge:                  ; preds = %while.cond23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

while.body28:                                     ; preds = %while.cond23
  %29 = ptrtoint ptr %call25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %char0 = load i8, ptr %call25, align 1
  %cmp30 = icmp eq i8 %char0, 0
  br i1 %cmp30, label %while.body28.while.cond23_crit_edge, label %if.end33

while.body28.while.cond23_crit_edge:              ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond23

if.end33:                                         ; preds = %while.body28
  %arrayidx34 = getelementptr [64 x i32], ptr %parameter, i32 0, i32 %parameter_size.0.ph
  %call.i110 = call i32 @_kstrtol(ptr noundef nonnull %call25, i32 noundef 0, ptr noundef %arrayidx34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool36.not = icmp eq i32 %call.i110, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %inc39 = add i32 %parameter_size.0.ph, 1
  %30 = ptrtoint ptr %tmp_str to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tmp_str, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv41117 = zext i8 %33 to i32
  %arrayidx42118 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv41117
  %34 = ptrtoint ptr %arrayidx42118 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx42118, align 1
  %36 = and i8 %35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp45.not119 = icmp eq i8 %36, 0
  br i1 %cmp45.not119, label %if.end38.while.cond23.outer.backedge_crit_edge, label %if.end38.while.body47_crit_edge

if.end38.while.body47_crit_edge:                  ; preds = %if.end38
  br label %while.body47

if.end38.while.cond23.outer.backedge_crit_edge:   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond23.outer.backedge

while.cond23.outer.backedge:                      ; preds = %while.body47.while.cond23.outer.backedge_crit_edge, %if.end38.while.cond23.outer.backedge_crit_edge
  br label %while.cond23.outer

while.body47:                                     ; preds = %while.body47.while.body47_crit_edge, %if.end38.while.body47_crit_edge
  %37 = phi ptr [ %incdec.ptr48, %while.body47.while.body47_crit_edge ], [ %31, %if.end38.while.body47_crit_edge ]
  %incdec.ptr48 = getelementptr i8, ptr %37, i32 1
  %38 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %incdec.ptr48, ptr %tmp_str, align 4
  %39 = ptrtoint ptr %incdec.ptr48 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr48, align 1
  %conv41 = zext i8 %40 to i32
  %arrayidx42 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv41
  %41 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx42, align 1
  %43 = and i8 %42, 32
  %cmp45.not = icmp eq i8 %43, 0
  br i1 %cmp45.not, label %while.body47.while.cond23.outer.backedge_crit_edge, label %while.body47.while.body47_crit_edge

while.body47.while.body47_crit_edge:              ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body47

while.body47.while.cond23.outer.backedge_crit_edge: ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond23.outer.backedge

if.end51:                                         ; preds = %while.cond23.if.end51_crit_edge, %if.end11.if.end51_crit_edge
  %parameter_size.1 = phi i32 [ 0, %if.end11.if.end51_crit_edge ], [ %parameter_size.0.ph, %while.cond23.if.end51_crit_edge ]
  %44 = ptrtoint ptr %profile_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %profile_mode, align 4
  %arrayidx52 = getelementptr [64 x i32], ptr %parameter, i32 0, i32 %parameter_size.1
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx52, align 4
  %dev53 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev53, align 4
  %call.i111 = call i32 @__pm_runtime_resume(ptr noundef %48, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp55 = icmp slt i32 %call.i111, 0
  br i1 %cmp55, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev53, align 4
  %call.i112 = call i32 @__pm_runtime_suspend(ptr noundef %50, i32 noundef 13) #9
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %51 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pp_funcs, align 4
  %set_power_profile_mode = getelementptr inbounds %struct.amd_pm_funcs, ptr %52, i32 0, i32 38
  %53 = ptrtoint ptr %set_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_power_profile_mode, align 4
  %tobool61.not = icmp eq ptr %54, null
  br i1 %tobool61.not, label %if.end60.if.end69_crit_edge, label %if.then62

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %55 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %powerplay, align 8
  %call68 = call i32 %54(ptr noundef %56, ptr noundef nonnull %parameter, i32 noundef %parameter_size.1) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end60.if.end69_crit_edge
  %ret.0 = phi i32 [ %call68, %if.then62 ], [ %call.i111, %if.end60.if.end69_crit_edge ]
  %57 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev53, align 4
  %call.i113 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 12, i32 22
  %59 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store volatile i64 %call.i113, ptr %last_busy.i, align 8
  %60 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev53, align 4
  %call.i114 = call i32 @__pm_runtime_suspend(ptr noundef %61, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool73.not = icmp eq i32 %ret.0, 0
  %count. = select i1 %tobool73.not, i32 %count, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then57, %if.end33.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i111, %if.then57 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ], [ %count., %if.end69 ], [ -22, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %delimiter) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %profile_mode) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_str) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf_cpy) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %parameter) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_od_clk_voltage(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end6.cleanup.sink.split_crit_edge, label %if.end12

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %10 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pp_funcs, align 4
  %print_clock_levels = getelementptr inbounds %struct.amd_pm_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %print_clock_levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %print_clock_levels, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %14 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %powerplay, align 8
  %call19 = tail call i32 %13(ptr noundef %15, i32 noundef 8, ptr noundef %buf) #9
  %16 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pp_funcs, align 4
  %print_clock_levels22 = getelementptr inbounds %struct.amd_pm_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %print_clock_levels22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %print_clock_levels22, align 4
  %20 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %powerplay, align 8
  %add.ptr = getelementptr i8, ptr %buf, i32 %call19
  %call25 = tail call i32 %19(ptr noundef %21, i32 noundef 9, ptr noundef %add.ptr) #9
  %add = add i32 %call25, %call19
  %22 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pp_funcs, align 4
  %print_clock_levels28 = getelementptr inbounds %struct.amd_pm_funcs, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %print_clock_levels28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %print_clock_levels28, align 4
  %26 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %powerplay, align 8
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add
  %call32 = tail call i32 %25(ptr noundef %27, i32 noundef 10, ptr noundef %add.ptr31) #9
  %add33 = add i32 %call32, %add
  %28 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pp_funcs, align 4
  %print_clock_levels36 = getelementptr inbounds %struct.amd_pm_funcs, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %print_clock_levels36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %print_clock_levels36, align 4
  %32 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %powerplay, align 8
  %add.ptr39 = getelementptr i8, ptr %buf, i32 %add33
  %call40 = tail call i32 %31(ptr noundef %33, i32 noundef 12, ptr noundef %add.ptr39) #9
  %add41 = add i32 %call40, %add33
  %34 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pp_funcs, align 4
  %print_clock_levels44 = getelementptr inbounds %struct.amd_pm_funcs, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %print_clock_levels44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %print_clock_levels44, align 4
  %38 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %powerplay, align 8
  %add.ptr47 = getelementptr i8, ptr %buf, i32 %add41
  %call48 = tail call i32 %37(ptr noundef %39, i32 noundef 11, ptr noundef %add.ptr47) #9
  %add49 = add i32 %call48, %add41
  %40 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pp_funcs, align 4
  %print_clock_levels52 = getelementptr inbounds %struct.amd_pm_funcs, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %print_clock_levels52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %print_clock_levels52, align 4
  %44 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %powerplay, align 8
  %add.ptr55 = getelementptr i8, ptr %buf, i32 %add49
  %call56 = tail call i32 %43(ptr noundef %45, i32 noundef 13, ptr noundef %add.ptr55) #9
  %add57 = add i32 %call56, %add49
  br label %if.end59

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32) #9
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then14
  %size.0 = phi i32 [ %add57, %if.then14 ], [ %call58, %if.else ]
  %46 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev7, align 4
  %call.i103 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 22
  %48 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store volatile i64 %call.i103, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end59, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size.0, %if.end59 ], [ %call.i, %if.end6.cleanup.sink.split_crit_edge ]
  %49 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev7, align 4
  %call.i104 = tail call i32 @__pm_runtime_suspend(ptr noundef %50, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_od_clk_voltage(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %parameter = alloca [64 x i32], align 4
  %buf_cpy = alloca [128 x i8], align 1
  %tmp_str = alloca ptr, align 4
  %delimiter = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %parameter) #9
  %2 = call ptr @memset(ptr %parameter, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf_cpy) #9
  %3 = call ptr @memset(ptr %buf_cpy, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_str) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %delimiter) #9
  %4 = call ptr @memcpy(ptr %delimiter, ptr @__const.amdgpu_set_pp_od_clk_voltage.delimiter, i32 3)
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %7 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %9 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %count)
  %cmp = icmp ugt i32 %count, 127
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.206)
  switch i8 %12, label %if.else31 [
    i8 115, label %if.end8.if.end46_crit_edge
    i8 112, label %if.then15
    i8 109, label %if.then20
    i8 114, label %if.then25
    i8 99, label %if.then30
  ]

if.end8.if.end46_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then25:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then30:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.else31:                                        ; preds = %if.end8
  %call32 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.128, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else31.if.end46.thread_crit_edge, label %if.else35

if.else31.if.end46.thread_crit_edge:              ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.thread

if.else35:                                        ; preds = %if.else31
  %call36 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.129, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else35.if.end46.thread_crit_edge, label %if.else35.cleanup_crit_edge

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else35.if.end46.thread_crit_edge:              ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.thread

if.end46.thread:                                  ; preds = %if.else35.if.end46.thread_crit_edge, %if.else31.if.end46.thread_crit_edge
  %type.0.ph = phi i32 [ 6, %if.else35.if.end46.thread_crit_edge ], [ 3, %if.else31.if.end46.thread_crit_edge ]
  %add227 = add nuw nsw i32 %count, 1
  %14 = call ptr @memcpy(ptr %buf_cpy, ptr %buf, i32 %add227)
  %incdec.ptr = getelementptr inbounds i8, ptr %buf_cpy, i32 1
  br label %if.end53

if.end46:                                         ; preds = %if.then30, %if.then25, %if.then20, %if.then15, %if.end8.if.end46_crit_edge
  %cmp127 = phi i1 [ false, %if.then15 ], [ false, %if.then25 ], [ true, %if.then30 ], [ false, %if.then20 ], [ false, %if.end8.if.end46_crit_edge ]
  %type.0 = phi i32 [ 2, %if.then15 ], [ 4, %if.then25 ], [ 5, %if.then30 ], [ 1, %if.then20 ], [ 0, %if.end8.if.end46_crit_edge ]
  %add = add nuw nsw i32 %count, 1
  %15 = call ptr @memcpy(ptr %buf_cpy, ptr %buf, i32 %add)
  br label %if.end53

if.end53:                                         ; preds = %if.end46, %if.end46.thread
  %storemerge = phi ptr [ %incdec.ptr, %if.end46.thread ], [ %buf_cpy, %if.end46 ]
  %type.0231 = phi i32 [ %type.0.ph, %if.end46.thread ], [ %type.0, %if.end46 ]
  %cmp127229 = phi i1 [ false, %if.end46.thread ], [ %cmp127, %if.end46 ]
  %16 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %storemerge, ptr %tmp_str, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end53
  %17 = ptrtoint ptr %tmp_str to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tmp_str, align 4
  %incdec.ptr54 = getelementptr i8, ptr %18, i32 1
  store ptr %incdec.ptr54, ptr %tmp_str, align 4
  %19 = ptrtoint ptr %incdec.ptr54 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr54, align 1
  %conv55 = zext i8 %20 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv55
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %23 = and i8 %22, 32
  %cmp57.not = icmp eq i8 %23, 0
  br i1 %cmp57.not, label %while.cond.while.cond59.outer_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.cond.while.cond59.outer_crit_edge:          ; preds = %while.cond
  br label %while.cond59.outer

while.cond59.outer:                               ; preds = %while.cond59.outer.backedge, %while.cond.while.cond59.outer_crit_edge
  %parameter_size.0.ph = phi i32 [ %inc, %while.cond59.outer.backedge ], [ 0, %while.cond.while.cond59.outer_crit_edge ]
  br label %while.cond59

while.cond59:                                     ; preds = %while.body64.while.cond59_crit_edge, %while.cond59.outer
  %call61 = call ptr @strsep(ptr noundef nonnull %tmp_str, ptr noundef nonnull %delimiter) #9
  %cmp62.not = icmp eq ptr %call61, null
  br i1 %cmp62.not, label %while.end85, label %while.body64

while.body64:                                     ; preds = %while.cond59
  %24 = ptrtoint ptr %call61 to i32
  call void @__asan_load1_noabort(i32 %24)
  %char0 = load i8, ptr %call61, align 1
  %cmp66 = icmp eq i8 %char0, 0
  br i1 %cmp66, label %while.body64.while.cond59_crit_edge, label %if.end69

while.body64.while.cond59_crit_edge:              ; preds = %while.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond59

if.end69:                                         ; preds = %while.body64
  %arrayidx70 = getelementptr [64 x i32], ptr %parameter, i32 0, i32 %parameter_size.0.ph
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %call61, i32 noundef 0, ptr noundef %arrayidx70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool72.not = icmp eq i32 %call.i, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %if.end69
  %inc = add i32 %parameter_size.0.ph, 1
  %25 = ptrtoint ptr %tmp_str to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tmp_str, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv76237 = zext i8 %28 to i32
  %arrayidx77238 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv76237
  %29 = ptrtoint ptr %arrayidx77238 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx77238, align 1
  %31 = and i8 %30, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp80.not239 = icmp eq i8 %31, 0
  br i1 %cmp80.not239, label %if.end74.while.cond59.outer.backedge_crit_edge, label %if.end74.while.body82_crit_edge

if.end74.while.body82_crit_edge:                  ; preds = %if.end74
  br label %while.body82

if.end74.while.cond59.outer.backedge_crit_edge:   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond59.outer.backedge

while.cond59.outer.backedge:                      ; preds = %while.body82.while.cond59.outer.backedge_crit_edge, %if.end74.while.cond59.outer.backedge_crit_edge
  br label %while.cond59.outer

while.body82:                                     ; preds = %while.body82.while.body82_crit_edge, %if.end74.while.body82_crit_edge
  %32 = phi ptr [ %incdec.ptr83, %while.body82.while.body82_crit_edge ], [ %26, %if.end74.while.body82_crit_edge ]
  %incdec.ptr83 = getelementptr i8, ptr %32, i32 1
  %33 = ptrtoint ptr %tmp_str to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %incdec.ptr83, ptr %tmp_str, align 4
  %34 = ptrtoint ptr %incdec.ptr83 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr83, align 1
  %conv76 = zext i8 %35 to i32
  %arrayidx77 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv76
  %36 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx77, align 1
  %38 = and i8 %37, 32
  %cmp80.not = icmp eq i8 %38, 0
  br i1 %cmp80.not, label %while.body82.while.cond59.outer.backedge_crit_edge, label %while.body82.while.body82_crit_edge

while.body82.while.body82_crit_edge:              ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body82

while.body82.while.cond59.outer.backedge_crit_edge: ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond59.outer.backedge

while.end85:                                      ; preds = %while.cond59
  %dev86 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev86, align 4
  %call.i207 = call i32 @__pm_runtime_resume(ptr noundef %40, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %cmp88 = icmp slt i32 %call.i207, 0
  br i1 %cmp88, label %while.end85.cleanup.sink.split_crit_edge, label %if.end93

while.end85.cleanup.sink.split_crit_edge:         ; preds = %while.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end93:                                         ; preds = %while.end85
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %41 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pp_funcs, align 4
  %set_fine_grain_clk_vol = getelementptr inbounds %struct.amd_pm_funcs, ptr %42, i32 0, i32 39
  %43 = ptrtoint ptr %set_fine_grain_clk_vol to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_fine_grain_clk_vol, align 4
  %tobool94.not = icmp eq ptr %44, null
  br i1 %tobool94.not, label %if.end93.if.end108_crit_edge, label %if.then95

if.end93.if.end108_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then95:                                        ; preds = %if.end93
  %45 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %powerplay, align 8
  %call101 = call i32 %44(ptr noundef %46, i32 noundef %type.0231, ptr noundef nonnull %parameter, i32 noundef %parameter_size.0.ph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then95.if.end108_crit_edge, label %if.then95.cleanup.sink.split.sink.split_crit_edge

if.then95.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.then95.if.end108_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.end108:                                        ; preds = %if.then95.if.end108_crit_edge, %if.end93.if.end108_crit_edge
  %47 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pp_funcs, align 4
  %odn_edit_dpm_table = getelementptr inbounds %struct.amd_pm_funcs, ptr %48, i32 0, i32 40
  %49 = ptrtoint ptr %odn_edit_dpm_table to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %odn_edit_dpm_table, align 4
  %tobool111.not = icmp eq ptr %50, null
  br i1 %tobool111.not, label %if.end126, label %if.then112

if.then112:                                       ; preds = %if.end108
  %51 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %powerplay, align 8
  %call119 = call i32 %50(ptr noundef %52, i32 noundef %type.0231, ptr noundef nonnull %parameter, i32 noundef %parameter_size.0.ph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp ne i32 %call119, 0
  %cmp127229.not = xor i1 %cmp127229, true
  %brmerge = or i1 %tobool120.not, %cmp127229.not
  %.mux = select i1 %tobool120.not, i32 -22, i32 %count
  br i1 %brmerge, label %if.then112.cleanup.sink.split.sink.split_crit_edge, label %if.then112.if.then129_crit_edge

if.then112.if.then129_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then129

if.then112.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end126:                                        ; preds = %if.end108
  br i1 %cmp127229, label %if.end126.if.then129_crit_edge, label %if.end126.cleanup.sink.split.sink.split_crit_edge

if.end126.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end126.if.then129_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then129

if.then129:                                       ; preds = %if.end126.if.then129_crit_edge, %if.then112.if.then129_crit_edge
  %53 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pp_funcs, align 4
  %dispatch_tasks = getelementptr inbounds %struct.amd_pm_funcs, ptr %54, i32 0, i32 30
  %55 = ptrtoint ptr %dispatch_tasks to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dispatch_tasks, align 4
  %tobool132.not = icmp eq ptr %56, null
  br i1 %tobool132.not, label %if.then129.cleanup.sink.split.sink.split_crit_edge, label %if.then133

if.then129.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.then133:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %powerplay, align 8
  %call139 = call i32 %56(ptr noundef %58, i32 noundef 2, ptr noundef null) #9
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then133, %if.then129.cleanup.sink.split.sink.split_crit_edge, %if.end126.cleanup.sink.split.sink.split_crit_edge, %if.then112.cleanup.sink.split.sink.split_crit_edge, %if.then95.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %count, %if.then133 ], [ -22, %if.then95.cleanup.sink.split.sink.split_crit_edge ], [ %.mux, %if.then112.cleanup.sink.split.sink.split_crit_edge ], [ -22, %if.then129.cleanup.sink.split.sink.split_crit_edge ], [ %count, %if.end126.cleanup.sink.split.sink.split_crit_edge ]
  %59 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev86, align 4
  %call.i209 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 12, i32 22
  %61 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store volatile i64 %call.i209, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %while.end85.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i207, %while.end85.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %62 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev86, align 4
  %call.i222 = call i32 @__pm_runtime_suspend(ptr noundef %63, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end69.cleanup_crit_edge, %if.else35.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.else35.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %delimiter) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_str) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf_cpy) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %parameter) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_gpu_busy_percent(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i35 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 7, ptr noundef nonnull %value, ptr noundef nonnull %size) #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call.i36 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i36, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %call.i37 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool17.not = icmp eq i32 %call13, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %call20 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end12.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call20, %if.end19 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_mem_busy_percent(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %size, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i35 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef nonnull %value, ptr noundef nonnull %size) #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call.i36 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i36, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  %call.i37 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool17.not = icmp eq i32 %call13, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %call20 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end12.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call20, %if.end19 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pcie_bw(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %count0 = alloca i64, align 8
  %count1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count0) #9
  %2 = ptrtoint ptr %count0 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %count0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count1) #9
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %count1, align 8
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %flags = getelementptr i8, ptr %1, i32 2376
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %asic_funcs = getelementptr i8, ptr %1, i32 2388
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 4
  %get_pcie_usage = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %get_pcie_usage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_pcie_usage, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %dev13 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev13, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev13, align 4
  %call.i42 = tail call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic_funcs, align 4
  %get_pcie_usage20 = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %get_pcie_usage20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_pcie_usage20, align 4
  call void %23(ptr noundef %add.ptr.i, ptr noundef nonnull %count0, ptr noundef nonnull %count1) #9
  %24 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev13, align 4
  %call.i43 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i43, ptr %last_busy.i, align 8
  %27 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev13, align 4
  %call.i44 = call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #9
  %29 = ptrtoint ptr %count0 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %count0, align 8
  %31 = ptrtoint ptr %count1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %count1, align 8
  %pdev = getelementptr i8, ptr %1, i32 -4
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %call24 = call i32 @pcie_get_mps(ptr noundef %34) #9
  %call25 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.130, i64 noundef %30, i64 noundef %32, i32 noundef %call24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then15 ], [ %call25, %if.end18 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end6.cleanup_crit_edge ], [ -61, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count0) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_pp_features(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end6.cleanup.sink.split_crit_edge, label %if.end12

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %10 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pp_funcs, align 4
  %get_ppfeature_status = getelementptr inbounds %struct.amd_pm_funcs, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %get_ppfeature_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_ppfeature_status, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %14 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %powerplay, align 8
  %call19 = tail call i32 %13(ptr noundef %15, ptr noundef %buf) #9
  br label %if.end21

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32) #9
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then14
  %size.0 = phi i32 [ %call19, %if.then14 ], [ %call20, %if.else ]
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %call.i40 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size.0, %if.end21 ], [ %call.i, %if.end6.cleanup.sink.split_crit_edge ]
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i41 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_pp_features(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %featuremask = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %featuremask) #9
  %2 = ptrtoint ptr %featuremask to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %featuremask, align 8, !annotation !465
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %featuremask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %call.i51 = call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp = icmp slt i32 %call.i51, 0
  br i1 %cmp, label %if.end10.cleanup.sink.split_crit_edge, label %if.end16

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end10
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %11 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pp_funcs, align 4
  %set_ppfeature_status = getelementptr inbounds %struct.amd_pm_funcs, ptr %12, i32 0, i32 65
  %13 = ptrtoint ptr %set_ppfeature_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_ppfeature_status, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.end16.if.end30_crit_edge, label %if.then18

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then18:                                        ; preds = %if.end16
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %15 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %powerplay, align 8
  %17 = ptrtoint ptr %featuremask to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %featuremask, align 8
  %call23 = call i32 %14(ptr noundef %16, i64 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then18.if.end30_crit_edge, label %if.then18.cleanup.sink.split.sink.split_crit_edge

if.then18.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %if.then18.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end30, %if.then18.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %count, %if.end30 ], [ -22, %if.then18.cleanup.sink.split.sink.split_crit_edge ]
  %19 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev11, align 4
  %call.i53 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i53, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end10.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i51, %if.end10.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %22 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11, align 4
  %call.i57 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %featuremask) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_unique_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %unique_id = getelementptr i8, ptr %1, i32 91432
  %8 = ptrtoint ptr %unique_id to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %unique_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool7.not = icmp eq i64 %9, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.131, i64 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then8 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_thermal_throttling_logging(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %unique = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unique, align 4
  %throttling_logging_enabled = getelementptr i8, ptr %1, i32 91580
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %throttling_logging_enabled, i32 noundef 4) #9
  %4 = ptrtoint ptr %throttling_logging_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %throttling_logging_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.134, ptr @.str.133
  %interval = getelementptr i8, ptr %1, i32 91628
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interval, align 4
  %div = sdiv i32 %7, 100
  %add = add nsw i32 %div, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.132, ptr noundef %3, ptr noundef nonnull %cond, i32 noundef %add) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_thermal_throttling_logging(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %throttling_logging_interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %throttling_logging_interval) #9
  %2 = ptrtoint ptr %throttling_logging_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %throttling_logging_interval, align 4, !annotation !465
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %throttling_logging_interval) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %throttling_logging_interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %throttling_logging_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600, i32 %4)
  %cmp = icmp sgt i32 %4, 3600
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp sgt i32 %4, 0
  br i1 %cmp5, label %do.body, label %if.else

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %throttling_logging_rs = getelementptr i8, ptr %1, i32 91584
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %throttling_logging_rs) #9
  %5 = ptrtoint ptr %throttling_logging_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %throttling_logging_interval, align 4
  %7 = mul i32 %6, 100
  %mul = add i32 %7, -100
  %interval = getelementptr i8, ptr %1, i32 91628
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %interval, align 4
  %begin = getelementptr i8, ptr %1, i32 91644
  %9 = ptrtoint ptr %begin to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %begin, align 4
  %printed = getelementptr i8, ptr %1, i32 91636
  %10 = ptrtoint ptr %printed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %printed, align 4
  %missed = getelementptr i8, ptr %1, i32 91640
  %11 = ptrtoint ptr %missed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %missed, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %throttling_logging_rs, i32 noundef %call8) #9
  %throttling_logging_enabled = getelementptr i8, ptr %1, i32 91580
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %throttling_logging_enabled, i32 noundef 4) #9
  %12 = ptrtoint ptr %throttling_logging_enabled to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %throttling_logging_enabled, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %throttling_logging_enabled23 = getelementptr i8, ptr %1, i32 91580
  %call.i.i37 = call zeroext i1 @__kasan_check_write(ptr noundef %throttling_logging_enabled23, i32 noundef 4) #9
  %13 = ptrtoint ptr %throttling_logging_enabled23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %throttling_logging_enabled23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %throttling_logging_interval) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_gpu_metrics(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %gpu_metrics = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpu_metrics) #9
  %2 = ptrtoint ptr %gpu_metrics to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %gpu_metrics, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %call.i47 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %13 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp_funcs, align 4
  %get_gpu_metrics = getelementptr inbounds %struct.amd_pm_funcs, ptr %14, i32 0, i32 69
  %15 = ptrtoint ptr %get_gpu_metrics to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_gpu_metrics, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.end12.out_crit_edge, label %if.end20

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end20:                                         ; preds = %if.end12
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %17 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %powerplay, align 8
  %call19 = call i32 %16(ptr noundef %18, ptr noundef nonnull %gpu_metrics) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19)
  %cmp21 = icmp slt i32 %call19, 1
  br i1 %cmp21, label %if.end20.out_crit_edge, label %if.end23

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call i32 @llvm.umin.i32(i32 %call19, i32 4095)
  %20 = ptrtoint ptr %gpu_metrics to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpu_metrics, align 4
  %22 = call ptr @memcpy(ptr %buf, ptr %21, i32 %19)
  br label %out

out:                                              ; preds = %if.end23, %if.end20.out_crit_edge, %if.end12.out_crit_edge
  %size.1 = phi i32 [ %call19, %if.end20.out_crit_edge ], [ %19, %if.end23 ], [ 0, %if.end12.out_crit_edge ]
  %23 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7, align 4
  %call.i48 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i48, ptr %last_busy.i, align 8
  %26 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev7, align 4
  %call.i49 = call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %size.1, %out ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpu_metrics) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_smartshift_apu_power(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %ss_power = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ss_power) #9
  %2 = ptrtoint ptr %ss_power to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ss_power, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i35 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 16, ptr noundef nonnull %ss_power, ptr noundef nonnull %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ss_power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ss_power, align 4
  %call17 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.135, i32 noundef %15) #9
  br label %out

out:                                              ; preds = %if.end16, %if.end12.out_crit_edge
  %r.0 = phi i32 [ %call13, %if.end12.out_crit_edge ], [ %call17, %if.end16 ]
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %call.i36 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i36, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i37 = call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %r.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ss_power) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ss_power_attr_update(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %attr, i32 noundef %mask, ptr nocapture noundef writeonly %states) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %states, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_smartshift_dgpu_power(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %ss_power = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ss_power) #9
  %2 = ptrtoint ptr %ss_power to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ss_power, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call.i35 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %add.ptr.i, i32 noundef 17, ptr noundef nonnull %ss_power, ptr noundef nonnull %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ss_power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ss_power, align 4
  %call17 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.135, i32 noundef %15) #9
  br label %out

out:                                              ; preds = %if.end16, %if.end12.out_crit_edge
  %r.0 = phi i32 [ %call13, %if.end12.out_crit_edge ], [ %call17, %if.end16 ]
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %call.i36 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i36, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i37 = call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %r.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ss_power) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_get_smartshift_bias(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_smartshift_bias to i32))
  %0 = load i32, ptr @amdgpu_smartshift_bias, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_set_smartshift_bias(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %bias = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bias) #9
  %2 = ptrtoint ptr %bias to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bias, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %call.i38 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %bias) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %bias to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %14)
  %cmp17 = icmp sgt i32 %14, 100
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %bias to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100, ptr %bias, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %14)
  %cmp19 = icmp slt i32 %14, -100
  br i1 %cmp19, label %if.then20, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %bias to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -100, ptr %bias, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else.if.end22_crit_edge, %if.then18
  %17 = ptrtoint ptr %bias to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bias, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @amdgpu_smartshift_bias to i32))
  store i32 %18, ptr @amdgpu_smartshift_bias, align 4
  br label %out

out:                                              ; preds = %if.end22, %if.end12.out_crit_edge
  %r.0 = phi i32 [ %call13, %if.end12.out_crit_edge ], [ %count, %if.end22 ]
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i39 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i39, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev7, align 4
  %call.i40 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %r.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bias) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ss_bias_attr_update(ptr noundef %adev, ptr nocapture noundef readnone %attr, i32 noundef %mask, ptr nocapture noundef writeonly %states) #0 align 64 {
entry:
  %ss_power = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ss_power) #9
  %0 = ptrtoint ptr %ss_power to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ss_power, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %size, align 4, !annotation !465
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call1 = tail call zeroext i1 @amdgpu_device_supports_smart_shift(ptr noundef %ddev.i) #9
  br i1 %call1, label %if.else, label %entry.if.end9.sink.split_crit_edge

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  %call2 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %adev, i32 noundef 16, ptr noundef nonnull %ss_power, ptr noundef nonnull %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else4, label %if.else.if.end9.sink.split_crit_edge

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.else4:                                         ; preds = %if.else
  %call5 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %adev, i32 noundef 17, ptr noundef nonnull %ss_power, ptr noundef nonnull %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else4.if.end9_crit_edge, label %if.else4.if.end9.sink.split_crit_edge

if.else4.if.end9.sink.split_crit_edge:            ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.sink.split

if.else4.if.end9_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9.sink.split:                               ; preds = %if.else4.if.end9.sink.split_crit_edge, %if.else.if.end9.sink.split_crit_edge, %entry.if.end9.sink.split_crit_edge
  %2 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %states, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else4.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ss_power) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pm_compute_clocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_off_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_get_pp_dpm_clock(ptr nocapture noundef readonly %dev, i32 noundef %type, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end6.cleanup.sink.split_crit_edge, label %if.end12

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %10 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pp_funcs, align 4
  %print_clock_levels = getelementptr inbounds %struct.amd_pm_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %print_clock_levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %print_clock_levels, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %14 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %powerplay, align 8
  %call19 = tail call i32 %13(ptr noundef %15, i32 noundef %type, ptr noundef %buf) #9
  br label %if.end21

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32) #9
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then14
  %size.0 = phi i32 [ %call19, %if.then14 ], [ %call20, %if.else ]
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %call.i40 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size.0, %if.end21 ], [ %call.i, %if.end6.cleanup.sink.split_crit_edge ]
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i41 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_set_pp_dpm_clock(ptr nocapture noundef readonly %dev, i32 noundef %type, ptr nocapture noundef readonly %buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %level.i = alloca i32, align 4
  %tmp.i = alloca ptr, align 4
  %buf_cpy.i = alloca [417 x i8], align 1
  %delimiter.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_gpu_reset.i = getelementptr i8, ptr %1, i32 91020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr i8, ptr %1, i32 91013
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %6 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level.i) #9
  %8 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %level.i, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.start.p0(i64 417, ptr nonnull %buf_cpy.i) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %delimiter.i) #9
  %9 = call ptr @memcpy(ptr %delimiter.i, ptr @__const.amdgpu_set_pp_od_clk_voltage.delimiter, i32 3)
  %10 = tail call i32 @llvm.umin.i32(i32 %count, i32 416) #9
  %11 = sub nuw nsw i32 417, %10
  %12 = getelementptr i8, ptr %buf_cpy.i, i32 %10
  %13 = call ptr @memset(ptr %12, i32 255, i32 %11)
  %14 = call ptr @memcpy(ptr %buf_cpy.i, ptr %buf, i32 %10)
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %12, align 1
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf_cpy.i, ptr %tmp.i, align 4
  %call22.i = call ptr @strsep(ptr noundef nonnull %tmp.i, ptr noundef nonnull %delimiter.i) #9
  %cmp4.not23.i = icmp eq ptr %call22.i, null
  br i1 %cmp4.not23.i, label %if.end6.if.end10_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %mask.0 = phi i32 [ %or.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.end6.while.body.i_crit_edge ]
  %call24.i = phi ptr [ %call.i, %if.end.i.while.body.i_crit_edge ], [ %call22.i, %if.end6.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %call24.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %char0.i = load i8, ptr %call24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end10_crit_edge, label %if.then.i

while.body.i.if.end10_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then.i:                                        ; preds = %while.body.i
  %call.i.i = call i32 @_kstrtoul(ptr noundef nonnull %call24.i, i32 noundef 0, ptr noundef nonnull %level.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %if.then.i.amdgpu_read_mask.exit_crit_edge

if.then.i.amdgpu_read_mask.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_read_mask.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %18 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %19)
  %cmp8.i = icmp ugt i32 %19, 31
  br i1 %cmp8.i, label %lor.lhs.false.i.amdgpu_read_mask.exit_crit_edge, label %if.end.i

lor.lhs.false.i.amdgpu_read_mask.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_read_mask.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %shl.i = shl nuw i32 1, %19
  %or.i = or i32 %shl.i, %mask.0
  %call.i = call ptr @strsep(ptr noundef nonnull %tmp.i, ptr noundef nonnull %delimiter.i) #9
  %cmp4.not.i = icmp eq ptr %call.i, null
  br i1 %cmp4.not.i, label %if.end.i.if.end10_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

amdgpu_read_mask.exit:                            ; preds = %lor.lhs.false.i.amdgpu_read_mask.exit_crit_edge, %if.then.i.amdgpu_read_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %delimiter.i) #9
  call void @llvm.lifetime.end.p0(i64 417, ptr nonnull %buf_cpy.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.if.end10_crit_edge, %while.body.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %mask.1.ph = phi i32 [ 0, %if.end6.if.end10_crit_edge ], [ %mask.0, %while.body.i.if.end10_crit_edge ], [ %or.i, %if.end.i.if.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %delimiter.i) #9
  call void @llvm.lifetime.end.p0(i64 417, ptr nonnull %buf_cpy.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level.i) #9
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11, align 4
  %call.i48 = call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp = icmp slt i32 %call.i48, 0
  br i1 %cmp, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11, align 4
  %call.i49 = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %pp_funcs = getelementptr i8, ptr %1, i32 26756
  %24 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pp_funcs, align 4
  %force_clock_level = getelementptr inbounds %struct.amd_pm_funcs, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %force_clock_level to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %force_clock_level, align 4
  %tobool17.not = icmp eq ptr %27, null
  br i1 %tobool17.not, label %if.end16.if.end24_crit_edge, label %if.then18

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %powerplay = getelementptr i8, ptr %1, i32 26752
  %28 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %powerplay, align 8
  %call23 = call i32 %27(ptr noundef %29, i32 noundef %type, i32 noundef %mask.1.ph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %phi.cmp = icmp eq i32 %call23, 0
  %phi.sel = select i1 %phi.cmp, i32 %count, i32 -22
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end16.if.end24_crit_edge
  %ret.0 = phi i32 [ %phi.sel, %if.then18 ], [ %count, %if.end16.if.end24_crit_edge ]
  %30 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev11, align 4
  %call.i50 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 12, i32 22
  %32 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %call.i50, ptr %last_busy.i, align 8
  %33 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev11, align 4
  %call.i51 = call i32 @__pm_runtime_suspend(ptr noundef %34, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then13, %amdgpu_read_mask.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i48, %if.then13 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %amdgpu_read_mask.exit ], [ %ret.0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_mps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_supports_smart_shift(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_pm_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_debugfs_pm_info_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_pm_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %size.i.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  %value64.i = alloca i64, align 8
  %query.i = alloca i32, align 4
  %size.i = alloca i32, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %5 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 156
  %7 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev6 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  %call.i74 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 13
  %13 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dpm_enabled, align 8, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.136) #9
  %15 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev6, align 4
  %call.i75 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i75, ptr %last_busy.i, align 8
  %18 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev6, align 4
  %call.i76 = tail call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %1) #9
  br i1 %call18, label %if.end17.if.else34_crit_edge, label %land.lhs.true19

if.end17.if.else34_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else34

land.lhs.true19:                                  ; preds = %if.end17
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 95, i32 1
  %20 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pp_funcs, align 4
  %debugfs_print_current_performance_level = getelementptr inbounds %struct.amd_pm_funcs, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %debugfs_print_current_performance_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %debugfs_print_current_performance_level, align 4
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %land.lhs.true19.if.else34_crit_edge, label %if.then21

land.lhs.true19.if.else34_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else34

if.then21:                                        ; preds = %land.lhs.true19
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #9
  %24 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pp_funcs, align 4
  %debugfs_print_current_performance_level25 = getelementptr inbounds %struct.amd_pm_funcs, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %debugfs_print_current_performance_level25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %debugfs_print_current_performance_level25, align 4
  %tobool26.not = icmp eq ptr %27, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %27(ptr noundef %1, ptr noundef %m) #9
  br label %if.end31

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.137) #9
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  tail call void @mutex_unlock(ptr noundef %pm) #9
  br label %if.end39

if.else34:                                        ; preds = %land.lhs.true19.if.else34_crit_edge, %if.end17.if.else34_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #9
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %value.i, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value64.i) #9
  %29 = ptrtoint ptr %value64.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %value64.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %query.i) #9
  %30 = ptrtoint ptr %query.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %query.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #9
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %size.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.139) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i.i) #9
  %32 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %size.i.i, align 4, !annotation !465
  %call.i.i = tail call zeroext i1 @is_support_cclk_dpm(ptr noundef %1) #9
  br i1 %call.i.i, label %if.then.i.i, label %if.else34.amdgpu_debugfs_prints_cpu_info.exit.i_crit_edge

if.else34.amdgpu_debugfs_prints_cpu_info.exit.i_crit_edge: ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_debugfs_prints_cpu_info.exit.i

if.then.i.i:                                      ; preds = %if.else34
  %cpu_core_num.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 97, i32 63
  %33 = ptrtoint ptr %cpu_core_num.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cpu_core_num.i.i, align 8
  %conv.i.i = zext i16 %34 to i32
  %35 = shl nuw nsw i32 %conv.i.i, 1
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %35, i32 noundef 3520) #15
  %call2.i.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 1, ptr noundef %call8.i.i.i.i, ptr noundef nonnull %size.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.cond.preheader.i.i:                           ; preds = %if.then.i.i
  %36 = ptrtoint ptr %cpu_core_num.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cpu_core_num.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp19.not.i.i = icmp eq i16 %37, 0
  br i1 %cmp19.not.i.i, label %for.cond.preheader.i.i.if.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end.i.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i16, ptr %call8.i.i.i.i, i32 %i.020.i.i
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i, align 2
  %conv8.i.i = zext i16 %39 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.160, i32 noundef %conv8.i.i, i32 noundef %i.020.i.i) #9
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %40 = ptrtoint ptr %cpu_core_num.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cpu_core_num.i.i, align 8
  %conv6.i.i = zext i16 %41 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv6.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %for.cond.preheader.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  call void @kfree(ptr noundef %call8.i.i.i.i) #9
  br label %amdgpu_debugfs_prints_cpu_info.exit.i

amdgpu_debugfs_prints_cpu_info.exit.i:            ; preds = %if.end.i.i, %if.else34.amdgpu_debugfs_prints_cpu_info.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i.i) #9
  %call.i77 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 9, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i, label %if.then.i, label %amdgpu_debugfs_prints_cpu_info.exit.i.if.end.i_crit_edge

amdgpu_debugfs_prints_cpu_info.exit.i.if.end.i_crit_edge: ; preds = %amdgpu_debugfs_prints_cpu_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %amdgpu_debugfs_prints_cpu_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %value.i, align 4
  %div.i = udiv i32 %43, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.140, i32 noundef %div.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %amdgpu_debugfs_prints_cpu_info.exit.i.if.end.i_crit_edge
  %call1.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value.i, align 4
  %div4.i = udiv i32 %45, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.141, i32 noundef %div4.i) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %call6.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 18, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.if.end10.i_crit_edge

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %value.i, align 4
  %div9.i = udiv i32 %47, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.142, i32 noundef %div9.i) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end10.i_crit_edge
  %call11.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 19, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end10.i.if.end15.i_crit_edge

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %value.i, align 4
  %div14.i = udiv i32 %49, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.143, i32 noundef %div14.i) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end15.i_crit_edge
  %call16.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end15.i.if.end19.i_crit_edge

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.144, i32 noundef %51) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end19.i_crit_edge
  %call20.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end19.i.if.end23.i_crit_edge

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.145, i32 noundef %53) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end23.i_crit_edge
  %54 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %size.i, align 4
  %call24.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 15, ptr noundef nonnull %query.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end23.i.if.end27.i_crit_edge

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %query.i, align 4
  %shr.i = lshr i32 %56, 8
  %and.i = and i32 %56, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.146, i32 noundef %shr.i, i32 noundef %and.i) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end27.i_crit_edge
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %size.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32) #9
  %call28.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end27.i.if.end32.i_crit_edge

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %value.i, align 4
  %div31.i = udiv i32 %59, 1000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.147, i32 noundef %div31.i) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end32.i_crit_edge
  %call33.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 7, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end32.i.if.end36.i_crit_edge

if.end32.i.if.end36.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %value.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.148, i32 noundef %61) #9
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end36.i_crit_edge
  %call37.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.end36.i.if.end40.i_crit_edge

if.end36.i.if.end40.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.149, i32 noundef %63) #9
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.end36.i.if.end40.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32) #9
  %call41.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 20, ptr noundef nonnull %value64.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.end40.i.if.end44.i_crit_edge

if.end40.i.if.end44.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %value64.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %value64.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.150, i64 noundef %65) #9
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then43.i, %if.end40.i.if.end44.i_crit_edge
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %66 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %67)
  %cmp.i = icmp ugt i32 %67, 21
  br i1 %cmp.i, label %if.then45.i, label %if.else63.i

if.then45.i:                                      ; preds = %if.end44.i
  %call46.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 23, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.then45.i.if.end62.i_crit_edge

if.then45.i.if.end62.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then48.i:                                      ; preds = %if.then45.i
  %68 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool49.not.i = icmp eq i32 %69, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %if.else.i

if.then50.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.151) #9
  br label %if.end62.i

if.else.i:                                        ; preds = %if.then48.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.152) #9
  %call51.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.else.i.if.end55.i_crit_edge

if.else.i.if.end55.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then53.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %value.i, align 4
  %div54.i = udiv i32 %71, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.153, i32 noundef %div54.i) #9
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %if.else.i.if.end55.i_crit_edge
  %call56.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end55.i.if.end62.i_crit_edge

if.end55.i.if.end62.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %value.i, align 4
  %div59.i = udiv i32 %73, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.154, i32 noundef %div59.i) #9
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then58.i, %if.end55.i.if.end62.i_crit_edge, %if.then50.i, %if.then45.i.if.end62.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32) #9
  br label %amdgpu_debugfs_pm_info_pp.exit

if.else63.i:                                      ; preds = %if.end44.i
  %call64.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 14, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.then66.i, label %if.else63.i.if.end81.i_crit_edge

if.else63.i.if.end81.i_crit_edge:                 ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.then66.i:                                      ; preds = %if.else63.i
  %74 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool67.not.i = icmp eq i32 %75, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %if.else69.i

if.then68.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.155) #9
  br label %if.end81.i

if.else69.i:                                      ; preds = %if.then66.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156) #9
  %call70.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.else69.i.if.end74.i_crit_edge

if.else69.i.if.end74.i_crit_edge:                 ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

if.then72.i:                                      ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %value.i, align 4
  %div73.i = udiv i32 %77, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.153, i32 noundef %div73.i) #9
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then72.i, %if.else69.i.if.end74.i_crit_edge
  %call75.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.then77.i, label %if.end74.i.if.end81.i_crit_edge

if.end74.i.if.end81.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.then77.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %value.i, align 4
  %div78.i = udiv i32 %79, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.154, i32 noundef %div78.i) #9
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then77.i, %if.end74.i.if.end81.i_crit_edge, %if.then68.i, %if.else63.i.if.end81.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32) #9
  %call82.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 13, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.then84.i, label %if.end81.i.amdgpu_debugfs_pm_info_pp.exit_crit_edge

if.end81.i.amdgpu_debugfs_pm_info_pp.exit_crit_edge: ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_debugfs_pm_info_pp.exit

if.then84.i:                                      ; preds = %if.end81.i
  %80 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool85.not.i = icmp eq i32 %81, 0
  br i1 %tobool85.not.i, label %if.then86.i, label %if.else87.i

if.then86.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157) #9
  br label %amdgpu_debugfs_pm_info_pp.exit

if.else87.i:                                      ; preds = %if.then84.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.158) #9
  %call88.i = call i32 @amdgpu_dpm_read_sensor(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %value.i, ptr noundef nonnull %size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.then90.i, label %if.else87.i.amdgpu_debugfs_pm_info_pp.exit_crit_edge

if.else87.i.amdgpu_debugfs_pm_info_pp.exit_crit_edge: ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_debugfs_pm_info_pp.exit

if.then90.i:                                      ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %value.i, align 4
  %div91.i = udiv i32 %83, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.159, i32 noundef %div91.i) #9
  br label %amdgpu_debugfs_pm_info_pp.exit

amdgpu_debugfs_pm_info_pp.exit:                   ; preds = %if.then90.i, %if.else87.i.amdgpu_debugfs_pm_info_pp.exit_crit_edge, %if.then86.i, %if.end81.i.amdgpu_debugfs_pm_info_pp.exit_crit_edge, %if.end62.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %query.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value64.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %if.end39

if.end39:                                         ; preds = %amdgpu_debugfs_pm_info_pp.exit, %if.end31
  call void @amdgpu_device_ip_get_clockgating_state(ptr noundef %1, ptr noundef nonnull %flags) #9
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.138, i32 noundef %85) #9
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end39
  %88 = phi i32 [ -2147483648, %if.end39 ], [ %92, %for.body.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ 0, %if.end39 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %name.i = getelementptr [33 x %struct.cg_flag_name], ptr @clocks, i32 0, i32 %i.08.i, i32 1
  %89 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name.i, align 4
  %and.i78 = and i32 %88, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool4.not.i = icmp eq i32 %and.i78, 0
  %cond.i = select i1 %tobool4.not.i, ptr @.str.163, ptr @.str.162
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161, ptr noundef %90, ptr noundef nonnull %cond.i) #9
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %arrayidx.i = getelementptr [33 x %struct.cg_flag_name], ptr @clocks, i32 0, i32 %inc.i
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i, align 4
  %exitcond.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.i, label %amdgpu_parse_cg_state.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

amdgpu_parse_cg_state.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32) #9
  %93 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev6, align 4
  %call.i79 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i80 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 12, i32 22
  %95 = ptrtoint ptr %last_busy.i80 to i32
  call void @__asan_store8_noabort(i32 %95)
  store volatile i64 %call.i79, ptr %last_busy.i80, align 8
  %96 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev6, align 4
  %call.i81 = call i32 @__pm_runtime_suspend(ptr noundef %97, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_parse_cg_state.exit, %if.then13, %if.then8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then8 ], [ 0, %amdgpu_parse_cg_state.exit ], [ 0, %if.then13 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_ip_get_clockgating_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_support_cclk_dpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pm_prv_buffer_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr noundef %pos) #0 align 64 {
entry:
  %smu_prv_buf_size = alloca i32, align 4
  %smu_prv_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 95, i32 1
  %4 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp_funcs1, align 4
  %6 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %powerplay, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_prv_buf_size) #9
  %8 = ptrtoint ptr %smu_prv_buf_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %smu_prv_buf_size, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_prv_buf) #9
  %9 = ptrtoint ptr %smu_prv_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %smu_prv_buf, align 4, !annotation !465
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 137
  %12 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %in_suspend, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %in_runpm = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 156
  %14 = ptrtoint ptr %in_runpm to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %in_runpm, align 1, !range !462
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true10:                                  ; preds = %if.end8
  %get_smu_prv_buf_details = getelementptr inbounds %struct.amd_pm_funcs, ptr %5, i32 0, i32 75
  %16 = ptrtoint ptr %get_smu_prv_buf_details to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_smu_prv_buf_details, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %land.lhs.true10.cleanup_crit_edge, label %if.then12

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true10
  %call14 = call i32 %17(ptr noundef %7, ptr noundef nonnull %smu_prv_buf, ptr noundef nonnull %smu_prv_buf_size) #9
  %18 = ptrtoint ptr %smu_prv_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smu_prv_buf, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.then12.cleanup_crit_edge, label %lor.lhs.false

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then12
  %20 = ptrtoint ptr %smu_prv_buf_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smu_prv_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  br i1 %tobool17.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %size, ptr noundef %pos, ptr noundef nonnull %19, i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %lor.lhs.false.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true10.cleanup_crit_edge ], [ -38, %if.end8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_prv_buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_prv_buf_size) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 252)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 252)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !105, !106, !108, !109, !111, !113, !114, !116, !117, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !184, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !205, !206, !207, !208, !210, !211, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !301, !302, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451}
!llvm.module.flags = !{!453, !454, !455, !456, !457, !458, !459, !460}
!llvm.ident = !{!461}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 86, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 87, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 88, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 89, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 90, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 91, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 92, i32 2}
!14 = !{ptr @amdgpu_pp_profile_name, !15, !"amdgpu_pp_profile_name", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 85, i32 20}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3495, i32 12}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3499, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @amdgpu_pm_sysfs_init._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @amdgpu_pm_sysfs_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3770, i32 22}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3774, i32 28}
!30 = !{ptr @hwmon_groups, !31, !"hwmon_groups", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3476, i32 38}
!32 = !{ptr @hwmon_attrgroup, !33, !"hwmon_attrgroup", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3471, i32 37}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3229, i32 8}
!36 = !{ptr @sensor_dev_attr_pwm1, !35, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2544, i32 25}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2487, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @amdgpu_hwmon_set_pwm1._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @amdgpu_hwmon_set_pwm1._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3230, i32 8}
!46 = !{ptr @sensor_dev_attr_pwm1_enable, !45, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2410, i32 25}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3232, i32 8}
!51 = !{ptr @sensor_dev_attr_pwm1_max, !50, !"sensor_dev_attr_pwm1_max", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3231, i32 8}
!54 = !{ptr @sensor_dev_attr_pwm1_min, !53, !"sensor_dev_attr_pwm1_min", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3233, i32 8}
!57 = !{ptr @sensor_dev_attr_fan1_input, !56, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3234, i32 8}
!60 = !{ptr @sensor_dev_attr_fan1_min, !59, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2609, i32 25}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3235, i32 8}
!65 = !{ptr @sensor_dev_attr_fan1_max, !64, !"sensor_dev_attr_fan1_max", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3236, i32 8}
!68 = !{ptr @sensor_dev_attr_fan1_target, !67, !"sensor_dev_attr_fan1_target", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3237, i32 8}
!71 = !{ptr @sensor_dev_attr_fan1_enable, !70, !"sensor_dev_attr_fan1_enable", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3215, i32 8}
!74 = !{ptr @sensor_dev_attr_temp1_crit, !73, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3216, i32 8}
!77 = !{ptr @sensor_dev_attr_temp1_crit_hyst, !76, !"sensor_dev_attr_temp1_crit_hyst", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3243, i32 8}
!80 = !{ptr @sensor_dev_attr_power1_cap_max, !79, !"sensor_dev_attr_power1_cap_max", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2962, i32 26}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3244, i32 8}
!85 = !{ptr @sensor_dev_attr_power1_cap_min, !84, !"sensor_dev_attr_power1_cap_min", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3245, i32 8}
!88 = !{ptr @sensor_dev_attr_power1_cap, !87, !"sensor_dev_attr_power1_cap", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3246, i32 8}
!91 = !{ptr @sensor_dev_attr_power1_cap_default, !90, !"sensor_dev_attr_power1_cap_default", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3242, i32 8}
!94 = !{ptr @sensor_dev_attr_power1_average, !93, !"sensor_dev_attr_power1_average", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3238, i32 8}
!97 = !{ptr @sensor_dev_attr_in0_input, !96, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3239, i32 8}
!100 = !{ptr @sensor_dev_attr_in0_label, !99, !"sensor_dev_attr_in0_label", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2840, i32 25}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3240, i32 8}
!105 = !{ptr @sensor_dev_attr_in1_input, !104, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3241, i32 8}
!108 = !{ptr @sensor_dev_attr_in1_label, !107, !"sensor_dev_attr_in1_label", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2883, i32 25}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3256, i32 8}
!113 = !{ptr @sensor_dev_attr_freq2_input, !112, !"sensor_dev_attr_freq2_input", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3257, i32 8}
!116 = !{ptr @sensor_dev_attr_freq2_label, !115, !"sensor_dev_attr_freq2_label", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3126, i32 25}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3219, i32 8}
!121 = !{ptr @sensor_dev_attr_temp2_crit, !120, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3220, i32 8}
!124 = !{ptr @sensor_dev_attr_temp2_crit_hyst, !123, !"sensor_dev_attr_temp2_crit_hyst", i1 false, i1 false}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3223, i32 8}
!127 = !{ptr @sensor_dev_attr_temp3_crit, !126, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3224, i32 8}
!130 = !{ptr @sensor_dev_attr_temp3_crit_hyst, !129, !"sensor_dev_attr_temp3_crit_hyst", i1 false, i1 false}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3217, i32 8}
!133 = !{ptr @sensor_dev_attr_temp1_emergency, !132, !"sensor_dev_attr_temp1_emergency", i1 false, i1 false}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3221, i32 8}
!136 = !{ptr @sensor_dev_attr_temp2_emergency, !135, !"sensor_dev_attr_temp2_emergency", i1 false, i1 false}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3225, i32 8}
!139 = !{ptr @sensor_dev_attr_temp3_emergency, !138, !"sensor_dev_attr_temp3_emergency", i1 false, i1 false}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3218, i32 8}
!142 = !{ptr @sensor_dev_attr_temp2_input, !141, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3222, i32 8}
!145 = !{ptr @sensor_dev_attr_temp3_input, !144, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3227, i32 8}
!148 = !{ptr @sensor_dev_attr_temp2_label, !147, !"sensor_dev_attr_temp2_label", i1 false, i1 false}
!149 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2351, i32 25}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 80, i32 17}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 81, i32 21}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 82, i32 16}
!157 = !{ptr @temp_label, !158, !"temp_label", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 79, i32 3}
!159 = !{ptr @.str.60, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3228, i32 8}
!161 = !{ptr @sensor_dev_attr_temp3_label, !160, !"sensor_dev_attr_temp3_label", i1 false, i1 false}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3248, i32 8}
!164 = !{ptr @sensor_dev_attr_power2_average, !163, !"sensor_dev_attr_power2_average", i1 false, i1 false}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3249, i32 8}
!167 = !{ptr @sensor_dev_attr_power2_cap_max, !166, !"sensor_dev_attr_power2_cap_max", i1 false, i1 false}
!168 = !{ptr @.str.63, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3250, i32 8}
!170 = !{ptr @sensor_dev_attr_power2_cap_min, !169, !"sensor_dev_attr_power2_cap_min", i1 false, i1 false}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3251, i32 8}
!173 = !{ptr @sensor_dev_attr_power2_cap, !172, !"sensor_dev_attr_power2_cap", i1 false, i1 false}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3252, i32 8}
!176 = !{ptr @sensor_dev_attr_power2_cap_default, !175, !"sensor_dev_attr_power2_cap_default", i1 false, i1 false}
!177 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3253, i32 8}
!179 = !{ptr @sensor_dev_attr_power2_label, !178, !"sensor_dev_attr_power2_label", i1 false, i1 false}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3002, i32 38}
!182 = !{ptr @.str.68, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3002, i32 50}
!184 = !{ptr @hwmon_attributes, !185, !"hwmon_attributes", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3259, i32 26}
!186 = !{ptr @.str.69, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3214, i32 8}
!188 = !{ptr @sensor_dev_attr_temp1_input, !187, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3226, i32 8}
!191 = !{ptr @sensor_dev_attr_temp1_label, !190, !"sensor_dev_attr_temp1_label", i1 false, i1 false}
!192 = !{ptr @.str.71, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3247, i32 8}
!194 = !{ptr @sensor_dev_attr_power1_label, !193, !"sensor_dev_attr_power1_label", i1 false, i1 false}
!195 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3254, i32 8}
!197 = !{ptr @sensor_dev_attr_freq1_input, !196, !"sensor_dev_attr_freq1_input", i1 false, i1 false}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3255, i32 8}
!200 = !{ptr @sensor_dev_attr_freq1_label, !199, !"sensor_dev_attr_freq1_label", i1 false, i1 false}
!201 = !{ptr @.str.74, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3087, i32 25}
!203 = !{ptr @.str.75, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2168, i32 3}
!205 = !{ptr @.str.76, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @amdgpu_device_attr_create._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @amdgpu_device_attr_create._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2178, i32 3}
!210 = !{ptr @amdgpu_device_attr_create._entry.77, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @amdgpu_device_attr_create._entry_ptr.79, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.80, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2066, i32 6}
!214 = !{ptr @.str.81, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2069, i32 13}
!216 = !{ptr @.str.82, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2074, i32 13}
!218 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2077, i32 13}
!220 = !{ptr @.str.84, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2083, i32 13}
!222 = !{ptr @.str.85, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2086, i32 13}
!224 = !{ptr @.str.86, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2090, i32 13}
!226 = !{ptr @.str.87, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2096, i32 13}
!228 = !{ptr @.str.88, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2099, i32 13}
!230 = !{ptr @.str.89, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2102, i32 13}
!232 = !{ptr @.str.90, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2105, i32 13}
!234 = !{ptr @.str.91, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2108, i32 13}
!236 = !{ptr @.str.92, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2118, i32 7}
!238 = !{ptr @.str.93, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2018, i32 2}
!240 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2019, i32 2}
!242 = !{ptr @.str.95, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2020, i32 2}
!244 = !{ptr @.str.96, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2021, i32 2}
!246 = !{ptr @.str.97, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2022, i32 2}
!248 = !{ptr @.str.98, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2023, i32 2}
!250 = !{ptr @.str.99, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2024, i32 2}
!252 = !{ptr @.str.100, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2031, i32 2}
!254 = !{ptr @.str.101, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2032, i32 2}
!256 = !{ptr @.str.102, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2033, i32 2}
!258 = !{ptr @.str.103, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2036, i32 2}
!260 = !{ptr @.str.104, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2041, i32 2}
!262 = !{ptr @.str.105, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2043, i32 2}
!264 = !{ptr @.str.106, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2045, i32 2}
!266 = !{ptr @.str.107, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2047, i32 2}
!268 = !{ptr @amdgpu_device_attrs, !269, !"amdgpu_device_attrs", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 2017, i32 34}
!270 = !{ptr @.str.108, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 160, i32 41}
!272 = !{ptr @.str.109, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 161, i32 42}
!274 = !{ptr @.str.110, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 161, i32 55}
!276 = !{ptr @.str.111, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 302, i32 45}
!278 = !{ptr @.str.112, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 303, i32 44}
!280 = !{ptr @.str.113, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 304, i32 45}
!282 = !{ptr @.str.114, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 305, i32 47}
!284 = !{ptr @.str.115, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 306, i32 57}
!286 = !{ptr @.str.116, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 307, i32 57}
!288 = !{ptr @.str.117, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 308, i32 57}
!290 = !{ptr @.str.118, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 309, i32 53}
!292 = !{ptr @.str.119, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 310, i32 57}
!294 = !{ptr @.str.120, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 311, i32 6}
!296 = !{ptr @.str.121, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 339, i32 21}
!298 = !{ptr @.str.122, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 387, i32 3}
!300 = !{ptr @.str.123, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @amdgpu_set_power_dpm_force_performance_level._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @amdgpu_set_power_dpm_force_performance_level._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.124, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 449, i32 28}
!305 = !{ptr @.str.125, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 451, i32 42}
!307 = !{ptr @.str.126, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 452, i32 58}
!309 = !{ptr @.str.127, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 455, i32 72}
!311 = !{ptr @.str.128, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 835, i32 25}
!313 = !{ptr @.str.129, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 837, i32 25}
!315 = !{ptr @.str.130, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 1683, i32 25}
!317 = !{ptr @.str.131, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 1710, i32 26}
!319 = !{ptr @.str.132, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 1737, i32 25}
!321 = !{ptr @.str.133, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 1739, i32 55}
!323 = !{ptr @.str.134, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 1739, i32 67}
!325 = !{ptr @.str.135, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 1867, i32 22}
!327 = !{ptr @amdgpu_debugfs_pm_info_fops, !328, !"amdgpu_debugfs_pm_info_fops", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3721, i32 1}
!329 = !{ptr @.str.136, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3687, i32 17}
!331 = !{ptr @.str.137, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3699, i32 18}
!333 = !{ptr @.str.138, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3710, i32 16}
!335 = !{ptr @.str.139, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3576, i32 16}
!337 = !{ptr @.str.140, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3581, i32 17}
!339 = !{ptr @.str.141, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3583, i32 17}
!341 = !{ptr @.str.142, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3585, i32 17}
!343 = !{ptr @.str.143, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3587, i32 17}
!345 = !{ptr @.str.144, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3589, i32 17}
!347 = !{ptr @.str.145, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3591, i32 17}
!349 = !{ptr @.str.146, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3594, i32 17}
!351 = !{ptr @.str.147, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3600, i32 17}
!353 = !{ptr @.str.148, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3604, i32 17}
!355 = !{ptr @.str.149, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3607, i32 17}
!357 = !{ptr @.str.150, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3613, i32 17}
!359 = !{ptr @.str.151, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3619, i32 19}
!361 = !{ptr @.str.152, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3621, i32 19}
!363 = !{ptr @.str.153, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3623, i32 20}
!365 = !{ptr @.str.154, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3625, i32 20}
!367 = !{ptr @.str.155, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3633, i32 19}
!369 = !{ptr @.str.156, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3635, i32 19}
!371 = !{ptr @.str.157, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3647, i32 19}
!373 = !{ptr @.str.158, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3649, i32 19}
!375 = !{ptr @.str.159, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3651, i32 20}
!377 = !{ptr @.str.160, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3559, i32 19}
!379 = !{ptr @.str.161, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3664, i32 17}
!381 = !{ptr @.str.162, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3665, i32 34}
!383 = !{ptr @.str.163, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3665, i32 41}
!385 = !{ptr @.str.164, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 40, i32 28}
!387 = !{ptr @.str.165, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 41, i32 28}
!389 = !{ptr @.str.166, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 42, i32 28}
!391 = !{ptr @.str.167, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 43, i32 28}
!393 = !{ptr @.str.168, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 44, i32 28}
!395 = !{ptr @.str.169, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 45, i32 28}
!397 = !{ptr @.str.170, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 46, i32 31}
!399 = !{ptr @.str.171, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 47, i32 29}
!401 = !{ptr @.str.172, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 48, i32 30}
!403 = !{ptr @.str.173, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 49, i32 31}
!405 = !{ptr @.str.174, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 50, i32 31}
!407 = !{ptr @.str.175, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 51, i32 25}
!409 = !{ptr @.str.176, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 52, i32 27}
!411 = !{ptr @.str.177, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 53, i32 27}
!413 = !{ptr @.str.178, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 54, i32 29}
!415 = !{ptr @.str.179, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 55, i32 28}
!417 = !{ptr @.str.180, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 56, i32 26}
!419 = !{ptr @.str.181, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 57, i32 28}
!421 = !{ptr @.str.182, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 58, i32 28}
!423 = !{ptr @.str.183, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 59, i32 26}
!425 = !{ptr @.str.184, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 60, i32 28}
!427 = !{ptr @.str.185, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 61, i32 28}
!429 = !{ptr @.str.186, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 62, i32 26}
!431 = !{ptr @.str.187, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 63, i32 28}
!433 = !{ptr @.str.188, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 64, i32 27}
!435 = !{ptr @.str.189, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 65, i32 28}
!437 = !{ptr @.str.190, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 66, i32 26}
!439 = !{ptr @.str.191, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 67, i32 26}
!441 = !{ptr @.str.192, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 68, i32 25}
!443 = !{ptr @.str.193, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 69, i32 29}
!445 = !{ptr @.str.194, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 71, i32 30}
!447 = !{ptr @.str.195, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 72, i32 28}
!449 = !{ptr @clocks, !450, !"clocks", i1 false, i1 false}
!450 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 39, i32 34}
!451 = !{ptr @amdgpu_debugfs_pm_prv_buffer_fops, !452, !"amdgpu_debugfs_pm_prv_buffer_fops", i1 false, i1 false}
!452 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_pm.c", i32 3755, i32 37}
!453 = !{i32 1, !"wchar_size", i32 2}
!454 = !{i32 1, !"min_enum_size", i32 4}
!455 = !{i32 8, !"branch-target-enforcement", i32 0}
!456 = !{i32 8, !"sign-return-address", i32 0}
!457 = !{i32 8, !"sign-return-address-all", i32 0}
!458 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!459 = !{i32 7, !"uwtable", i32 1}
!460 = !{i32 7, !"frame-pointer", i32 2}
!461 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!462 = !{i8 0, i8 2}
!463 = !{!"branch_weights", i32 1, i32 2000}
!464 = !{i64 2159652725, i64 2159653235, i64 2159652762, i64 2159652818, i64 2159652852, i64 2159652876, i64 2159652917, i64 2159652938, i64 2159652966, i64 2159653000}
!465 = !{!"auto-init"}
!466 = !{i64 956755, i64 956772}
