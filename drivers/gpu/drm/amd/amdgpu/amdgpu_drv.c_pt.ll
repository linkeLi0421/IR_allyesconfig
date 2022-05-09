; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_mgpu_info = type { [16 x %struct.amdgpu_gpu_instance], %struct.mutex, i32, i32, i32, %struct.delayed_work, i8 }
%struct.amdgpu_gpu_instance = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_watchdog_timer = type { i8, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_reset_context = type { i32, ptr, ptr, ptr, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.98, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
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
%struct.anon.90 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.97], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.97 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.94] }
%struct.anon.94 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.98 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.111, i32, i32, i32, i32 }
%union.anon.111 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm, ptr, ptr, %struct.mutex, %struct.idr, %struct.amdgpu_ctx_mgr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.95, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.anon.95 = type { %union.anon.96, [128 x i64] }
%union.anon.96 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.amdgpu_ctx_mgr = type { ptr, %struct.mutex, %struct.idr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@amdgpu_gart_size = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_gtt_size = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_moverate = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_audio = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_pcie_gen2 = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_msi = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_dpm = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_fw_load_type = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_aspm = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_runtime_pm = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_ip_block_mask = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_bapm = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_vm_size = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_vm_fragment_size = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_vm_block_size = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_vm_update_mode = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_dc = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_sched_jobs = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@amdgpu_sched_hw_submission = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@amdgpu_cg_mask = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_pg_mask = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_sdma_phase_quantum = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@amdgpu_disable_cu = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@amdgpu_virtual_display = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@amdgpu_pp_feature_mask = dso_local global { i32, [28 x i8] } { i32 -540673, [28 x i8] zeroinitializer }, align 32
@amdgpu_lbpw = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_compute_multipipe = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_gpu_recovery = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_smu_pptable_id = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_dc_feature_mask = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@amdgpu_async_gfx_ring = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@amdgpu_discovery = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_noretry = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_force_asic_type = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_tmz = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_reset_method = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_num_kcq = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mgpu_info.mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@mgpu_info = dso_local global { %struct.amdgpu_mgpu_info, [80 x i8] } { %struct.amdgpu_mgpu_info { [16 x %struct.amdgpu_gpu_instance] zeroinitializer, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mgpu_info, i64 180), ptr getelementptr (i8, ptr @mgpu_info, i64 180) }, ptr getelementptr (i8, ptr @mgpu_info, i64 128), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, i32 0, i32 0, i32 0, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @mgpu_info, i64 236), ptr getelementptr (i8, ptr @mgpu_info, i64 236) }, ptr @amdgpu_drv_delayed_reset_work_handler, %struct.lockdep_map { ptr getelementptr (i8, ptr @mgpu_info, i64 232), [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.3, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, i8 0 }, [80 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mgpu_info.mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(mgpu_info.delayed_reset_work).work\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:188\00", [52 x i8] zeroinitializer }, align 32
@amdgpu_ras_enable = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_ras_mask = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_bad_page_threshold = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@amdgpu_watchdog_timer = dso_local global { %struct.amdgpu_watchdog_timer, [24 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_vramlimit344 = internal constant [62 x i8] c"amdgpu.parm=vramlimit:Restrict VRAM for testing, in megabytes\00", section ".modinfo", align 1
@__param_str_vramlimit = internal constant [17 x i8] c"amdgpu.vramlimit\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@amdgpu_vram_limit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vramlimit = internal constant %struct.kernel_param { ptr @__param_str_vramlimit, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_vram_limit } }, section "__param", align 4
@__UNIQUE_ID_vramlimittype345 = internal constant [30 x i8] c"amdgpu.parmtype=vramlimit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vis_vramlimit346 = internal constant [74 x i8] c"amdgpu.parm=vis_vramlimit:Restrict visible VRAM for testing, in megabytes\00", section ".modinfo", align 1
@__param_str_vis_vramlimit = internal constant [21 x i8] c"amdgpu.vis_vramlimit\00", align 1
@amdgpu_vis_vram_limit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vis_vramlimit = internal constant %struct.kernel_param { ptr @__param_str_vis_vramlimit, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_vis_vram_limit } }, section "__param", align 4
@__UNIQUE_ID_vis_vramlimittype347 = internal constant [34 x i8] c"amdgpu.parmtype=vis_vramlimit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gartsize348 = internal constant [80 x i8] c"amdgpu.parm=gartsize:Size of GART to setup in megabytes (32, 64, etc., -1=auto)\00", section ".modinfo", align 1
@__param_str_gartsize = internal constant [16 x i8] c"amdgpu.gartsize\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_gartsize = internal constant %struct.kernel_param { ptr @__param_str_gartsize, ptr null, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_gart_size } }, section "__param", align 4
@__UNIQUE_ID_gartsizetype349 = internal constant [30 x i8] c"amdgpu.parmtype=gartsize:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_gttsize350 = internal constant [68 x i8] c"amdgpu.parm=gttsize:Size of the GTT domain in megabytes (-1 = auto)\00", section ".modinfo", align 1
@__param_str_gttsize = internal constant [15 x i8] c"amdgpu.gttsize\00", align 1
@__param_gttsize = internal constant %struct.kernel_param { ptr @__param_str_gttsize, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_gtt_size } }, section "__param", align 4
@__UNIQUE_ID_gttsizetype351 = internal constant [28 x i8] c"amdgpu.parmtype=gttsize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_moverate352 = internal constant [98 x i8] c"amdgpu.parm=moverate:Maximum buffer migration rate in MB/s. (32, 64, etc., -1=auto, 0=1=disabled)\00", section ".modinfo", align 1
@__param_str_moverate = internal constant [16 x i8] c"amdgpu.moverate\00", align 1
@__param_moverate = internal constant %struct.kernel_param { ptr @__param_str_moverate, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_moverate } }, section "__param", align 4
@__UNIQUE_ID_moveratetype353 = internal constant [29 x i8] c"amdgpu.parmtype=moverate:int\00", section ".modinfo", align 1
@__UNIQUE_ID_benchmark354 = internal constant [36 x i8] c"amdgpu.parm=benchmark:Run benchmark\00", section ".modinfo", align 1
@__param_str_benchmark = internal constant [17 x i8] c"amdgpu.benchmark\00", align 1
@amdgpu_benchmarking = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_benchmark = internal constant %struct.kernel_param { ptr @__param_str_benchmark, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_benchmarking } }, section "__param", align 4
@__UNIQUE_ID_benchmarktype355 = internal constant [30 x i8] c"amdgpu.parmtype=benchmark:int\00", section ".modinfo", align 1
@__UNIQUE_ID_test356 = internal constant [27 x i8] c"amdgpu.parm=test:Run tests\00", section ".modinfo", align 1
@__param_str_test = internal constant [12 x i8] c"amdgpu.test\00", align 1
@amdgpu_testing = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_test = internal constant %struct.kernel_param { ptr @__param_str_test, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_testing } }, section "__param", align 4
@__UNIQUE_ID_testtype357 = internal constant [25 x i8] c"amdgpu.parmtype=test:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio358 = internal constant [68 x i8] c"amdgpu.parm=audio:Audio enable (-1 = auto, 0 = disable, 1 = enable)\00", section ".modinfo", align 1
@__param_str_audio = internal constant [13 x i8] c"amdgpu.audio\00", align 1
@__param_audio = internal constant %struct.kernel_param { ptr @__param_str_audio, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_audio } }, section "__param", align 4
@__UNIQUE_ID_audiotype359 = internal constant [26 x i8] c"amdgpu.parmtype=audio:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disp_priority360 = internal constant [76 x i8] c"amdgpu.parm=disp_priority:Display Priority (0 = auto, 1 = normal, 2 = high)\00", section ".modinfo", align 1
@__param_str_disp_priority = internal constant [21 x i8] c"amdgpu.disp_priority\00", align 1
@amdgpu_disp_priority = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disp_priority = internal constant %struct.kernel_param { ptr @__param_str_disp_priority, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_disp_priority } }, section "__param", align 4
@__UNIQUE_ID_disp_prioritytype361 = internal constant [34 x i8] c"amdgpu.parmtype=disp_priority:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hw_i2c362 = internal constant [54 x i8] c"amdgpu.parm=hw_i2c:hw i2c engine enable (0 = disable)\00", section ".modinfo", align 1
@__param_str_hw_i2c = internal constant [14 x i8] c"amdgpu.hw_i2c\00", align 1
@amdgpu_hw_i2c = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_hw_i2c = internal constant %struct.kernel_param { ptr @__param_str_hw_i2c, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_hw_i2c } }, section "__param", align 4
@__UNIQUE_ID_hw_i2ctype363 = internal constant [27 x i8] c"amdgpu.parmtype=hw_i2c:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcie_gen2364 = internal constant [74 x i8] c"amdgpu.parm=pcie_gen2:PCIE Gen2 mode (-1 = auto, 0 = disable, 1 = enable)\00", section ".modinfo", align 1
@__param_str_pcie_gen2 = internal constant [17 x i8] c"amdgpu.pcie_gen2\00", align 1
@__param_pcie_gen2 = internal constant %struct.kernel_param { ptr @__param_str_pcie_gen2, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_pcie_gen2 } }, section "__param", align 4
@__UNIQUE_ID_pcie_gen2type365 = internal constant [30 x i8] c"amdgpu.parmtype=pcie_gen2:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi366 = internal constant [65 x i8] c"amdgpu.parm=msi:MSI support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_msi = internal constant [11 x i8] c"amdgpu.msi\00", align 1
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_msi } }, section "__param", align 4
@__UNIQUE_ID_msitype367 = internal constant [24 x i8] c"amdgpu.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lockup_timeout368 = internal constant [361 x i8] c"amdgpu.parm=lockup_timeout:GPU lockup timeout in ms (default: for bare metal 10000 for non-compute jobs and 60000 for compute jobs; for passthrough or sriov, 10000 for all jobs. 0: keep default value. negative: infinity timeout), format: for bare metal [Non-Compute] or [GFX,Compute,SDMA,Video]; for passthrough or sriov [all jobs] or [GFX,Compute,SDMA,Video].\00", section ".modinfo", align 1
@__param_str_lockup_timeout = internal constant [22 x i8] c"amdgpu.lockup_timeout\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_lockup_timeout = internal constant %struct.kparam_string { i32 256, ptr @amdgpu_lockup_timeout }, align 4
@__param_lockup_timeout = internal constant %struct.kernel_param { ptr @__param_str_lockup_timeout, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_lockup_timeout } }, section "__param", align 4
@__UNIQUE_ID_lockup_timeouttype369 = internal constant [38 x i8] c"amdgpu.parmtype=lockup_timeout:string\00", section ".modinfo", align 1
@__UNIQUE_ID_dpm370 = internal constant [65 x i8] c"amdgpu.parm=dpm:DPM support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_dpm = internal constant [11 x i8] c"amdgpu.dpm\00", align 1
@__param_dpm = internal constant %struct.kernel_param { ptr @__param_str_dpm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_dpm } }, section "__param", align 4
@__UNIQUE_ID_dpmtype371 = internal constant [24 x i8] c"amdgpu.parmtype=dpm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_load_type372 = internal constant [90 x i8] c"amdgpu.parm=fw_load_type:firmware loading type (0 = force direct if supported, -1 = auto)\00", section ".modinfo", align 1
@__param_str_fw_load_type = internal constant [20 x i8] c"amdgpu.fw_load_type\00", align 1
@__param_fw_load_type = internal constant %struct.kernel_param { ptr @__param_str_fw_load_type, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_fw_load_type } }, section "__param", align 4
@__UNIQUE_ID_fw_load_typetype373 = internal constant [33 x i8] c"amdgpu.parmtype=fw_load_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_aspm374 = internal constant [67 x i8] c"amdgpu.parm=aspm:ASPM support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_aspm = internal constant [12 x i8] c"amdgpu.aspm\00", align 1
@__param_aspm = internal constant %struct.kernel_param { ptr @__param_str_aspm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_aspm } }, section "__param", align 4
@__UNIQUE_ID_aspmtype375 = internal constant [25 x i8] c"amdgpu.parmtype=aspm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_runpm376 = internal constant [115 x i8] c"amdgpu.parm=runpm:PX runtime pm (2 = force enable with BAMACO, 1 = force enable with BACO, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_runpm = internal constant [13 x i8] c"amdgpu.runpm\00", align 1
@__param_runpm = internal constant %struct.kernel_param { ptr @__param_str_runpm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_runtime_pm } }, section "__param", align 4
@__UNIQUE_ID_runpmtype377 = internal constant [26 x i8] c"amdgpu.parmtype=runpm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ip_block_mask378 = internal constant [71 x i8] c"amdgpu.parm=ip_block_mask:IP Block Mask (all blocks enabled (default))\00", section ".modinfo", align 1
@__param_str_ip_block_mask = internal constant [21 x i8] c"amdgpu.ip_block_mask\00", align 1
@__param_ip_block_mask = internal constant %struct.kernel_param { ptr @__param_str_ip_block_mask, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_ip_block_mask } }, section "__param", align 4
@__UNIQUE_ID_ip_block_masktype379 = internal constant [35 x i8] c"amdgpu.parmtype=ip_block_mask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bapm380 = internal constant [67 x i8] c"amdgpu.parm=bapm:BAPM support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_bapm = internal constant [12 x i8] c"amdgpu.bapm\00", align 1
@__param_bapm = internal constant %struct.kernel_param { ptr @__param_str_bapm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_bapm } }, section "__param", align 4
@__UNIQUE_ID_bapmtype381 = internal constant [25 x i8] c"amdgpu.parmtype=bapm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_deep_color382 = internal constant [78 x i8] c"amdgpu.parm=deep_color:Deep Color support (1 = enable, 0 = disable (default))\00", section ".modinfo", align 1
@__param_str_deep_color = internal constant [18 x i8] c"amdgpu.deep_color\00", align 1
@amdgpu_deep_color = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_deep_color = internal constant %struct.kernel_param { ptr @__param_str_deep_color, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_deep_color } }, section "__param", align 4
@__UNIQUE_ID_deep_colortype383 = internal constant [31 x i8] c"amdgpu.parmtype=deep_color:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vm_size384 = internal constant [70 x i8] c"amdgpu.parm=vm_size:VM address space size in gigabytes (default 64GB)\00", section ".modinfo", align 1
@__param_str_vm_size = internal constant [15 x i8] c"amdgpu.vm_size\00", align 1
@__param_vm_size = internal constant %struct.kernel_param { ptr @__param_str_vm_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_vm_size } }, section "__param", align 4
@__UNIQUE_ID_vm_sizetype385 = internal constant [28 x i8] c"amdgpu.parmtype=vm_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vm_fragment_size386 = internal constant [97 x i8] c"amdgpu.parm=vm_fragment_size:VM fragment size in bits (4, 5, etc. 4 = 64K (default), Max 9 = 2M)\00", section ".modinfo", align 1
@__param_str_vm_fragment_size = internal constant [24 x i8] c"amdgpu.vm_fragment_size\00", align 1
@__param_vm_fragment_size = internal constant %struct.kernel_param { ptr @__param_str_vm_fragment_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_vm_fragment_size } }, section "__param", align 4
@__UNIQUE_ID_vm_fragment_sizetype387 = internal constant [37 x i8] c"amdgpu.parmtype=vm_fragment_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vm_block_size388 = internal constant [84 x i8] c"amdgpu.parm=vm_block_size:VM page table size in bits (default depending on vm_size)\00", section ".modinfo", align 1
@__param_str_vm_block_size = internal constant [21 x i8] c"amdgpu.vm_block_size\00", align 1
@__param_vm_block_size = internal constant %struct.kernel_param { ptr @__param_str_vm_block_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_vm_block_size } }, section "__param", align 4
@__UNIQUE_ID_vm_block_sizetype389 = internal constant [34 x i8] c"amdgpu.parmtype=vm_block_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vm_fault_stop390 = internal constant [94 x i8] c"amdgpu.parm=vm_fault_stop:Stop on VM fault (0 = never (default), 1 = print first, 2 = always)\00", section ".modinfo", align 1
@__param_str_vm_fault_stop = internal constant [21 x i8] c"amdgpu.vm_fault_stop\00", align 1
@amdgpu_vm_fault_stop = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vm_fault_stop = internal constant %struct.kernel_param { ptr @__param_str_vm_fault_stop, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_vm_fault_stop } }, section "__param", align 4
@__UNIQUE_ID_vm_fault_stoptype391 = internal constant [34 x i8] c"amdgpu.parmtype=vm_fault_stop:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vm_debug392 = internal constant [77 x i8] c"amdgpu.parm=vm_debug:Debug VM handling (0 = disabled (default), 1 = enabled)\00", section ".modinfo", align 1
@__param_str_vm_debug = internal constant [16 x i8] c"amdgpu.vm_debug\00", align 1
@amdgpu_vm_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vm_debug = internal constant %struct.kernel_param { ptr @__param_str_vm_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_vm_debug } }, section "__param", align 4
@__UNIQUE_ID_vm_debugtype393 = internal constant [29 x i8] c"amdgpu.parmtype=vm_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vm_update_mode394 = internal constant [157 x i8] c"amdgpu.parm=vm_update_mode:VM update using CPU (0 = never (default except for large BAR(LB)), 1 = Graphics only, 2 = Compute only (default for LB), 3 = Both\00", section ".modinfo", align 1
@__param_str_vm_update_mode = internal constant [22 x i8] c"amdgpu.vm_update_mode\00", align 1
@__param_vm_update_mode = internal constant %struct.kernel_param { ptr @__param_str_vm_update_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_vm_update_mode } }, section "__param", align 4
@__UNIQUE_ID_vm_update_modetype395 = internal constant [35 x i8] c"amdgpu.parmtype=vm_update_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_exp_hw_support396 = internal constant [87 x i8] c"amdgpu.parm=exp_hw_support:experimental hw support (1 = enable, 0 = disable (default))\00", section ".modinfo", align 1
@__param_str_exp_hw_support = internal constant [22 x i8] c"amdgpu.exp_hw_support\00", align 1
@amdgpu_exp_hw_support = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_exp_hw_support = internal constant %struct.kernel_param { ptr @__param_str_exp_hw_support, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_exp_hw_support } }, section "__param", align 4
@__UNIQUE_ID_exp_hw_supporttype397 = internal constant [35 x i8] c"amdgpu.parmtype=exp_hw_support:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dc398 = internal constant [82 x i8] c"amdgpu.parm=dc:Display Core driver (1 = enable, 0 = disable, -1 = auto (default))\00", section ".modinfo", align 1
@__param_str_dc = internal constant [10 x i8] c"amdgpu.dc\00", align 1
@__param_dc = internal constant %struct.kernel_param { ptr @__param_str_dc, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_dc } }, section "__param", align 4
@__UNIQUE_ID_dctype399 = internal constant [23 x i8] c"amdgpu.parmtype=dc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sched_jobs400 = internal constant [85 x i8] c"amdgpu.parm=sched_jobs:the max number of jobs supported in the sw queue (default 32)\00", section ".modinfo", align 1
@__param_str_sched_jobs = internal constant [18 x i8] c"amdgpu.sched_jobs\00", align 1
@__param_sched_jobs = internal constant %struct.kernel_param { ptr @__param_str_sched_jobs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_sched_jobs } }, section "__param", align 4
@__UNIQUE_ID_sched_jobstype401 = internal constant [31 x i8] c"amdgpu.parmtype=sched_jobs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sched_hw_submission402 = internal constant [77 x i8] c"amdgpu.parm=sched_hw_submission:the max number of HW submissions (default 2)\00", section ".modinfo", align 1
@__param_str_sched_hw_submission = internal constant [27 x i8] c"amdgpu.sched_hw_submission\00", align 1
@__param_sched_hw_submission = internal constant %struct.kernel_param { ptr @__param_str_sched_hw_submission, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_sched_hw_submission } }, section "__param", align 4
@__UNIQUE_ID_sched_hw_submissiontype403 = internal constant [40 x i8] c"amdgpu.parmtype=sched_hw_submission:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ppfeaturemask404 = internal constant [64 x i8] c"amdgpu.parm=ppfeaturemask:all power features enabled (default))\00", section ".modinfo", align 1
@__param_str_ppfeaturemask = internal constant [21 x i8] c"amdgpu.ppfeaturemask\00", align 1
@param_ops_hexint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_ppfeaturemask = internal constant %struct.kernel_param { ptr @__param_str_ppfeaturemask, ptr null, ptr @param_ops_hexint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_pp_feature_mask } }, section "__param", align 4
@__UNIQUE_ID_ppfeaturemasktype405 = internal constant [37 x i8] c"amdgpu.parmtype=ppfeaturemask:hexint\00", section ".modinfo", align 1
@__UNIQUE_ID_forcelongtraining406 = internal constant [57 x i8] c"amdgpu.parm=forcelongtraining:force memory long training\00", section ".modinfo", align 1
@__param_str_forcelongtraining = internal constant [25 x i8] c"amdgpu.forcelongtraining\00", align 1
@amdgpu_force_long_training = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_forcelongtraining = internal constant %struct.kernel_param { ptr @__param_str_forcelongtraining, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_force_long_training } }, section "__param", align 4
@__UNIQUE_ID_forcelongtrainingtype407 = internal constant [39 x i8] c"amdgpu.parmtype=forcelongtraining:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcie_gen_cap408 = internal constant [65 x i8] c"amdgpu.parm=pcie_gen_cap:PCIE Gen Caps (0: autodetect (default))\00", section ".modinfo", align 1
@__param_str_pcie_gen_cap = internal constant [20 x i8] c"amdgpu.pcie_gen_cap\00", align 1
@amdgpu_pcie_gen_cap = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pcie_gen_cap = internal constant %struct.kernel_param { ptr @__param_str_pcie_gen_cap, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_pcie_gen_cap } }, section "__param", align 4
@__UNIQUE_ID_pcie_gen_captype409 = internal constant [34 x i8] c"amdgpu.parmtype=pcie_gen_cap:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcie_lane_cap410 = internal constant [67 x i8] c"amdgpu.parm=pcie_lane_cap:PCIE Lane Caps (0: autodetect (default))\00", section ".modinfo", align 1
@__param_str_pcie_lane_cap = internal constant [21 x i8] c"amdgpu.pcie_lane_cap\00", align 1
@amdgpu_pcie_lane_cap = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pcie_lane_cap = internal constant %struct.kernel_param { ptr @__param_str_pcie_lane_cap, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_pcie_lane_cap } }, section "__param", align 4
@__UNIQUE_ID_pcie_lane_captype411 = internal constant [35 x i8] c"amdgpu.parmtype=pcie_lane_cap:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cg_mask412 = internal constant [70 x i8] c"amdgpu.parm=cg_mask:Clockgating flags mask (0 = disable clock gating)\00", section ".modinfo", align 1
@__param_str_cg_mask = internal constant [15 x i8] c"amdgpu.cg_mask\00", align 1
@__param_cg_mask = internal constant %struct.kernel_param { ptr @__param_str_cg_mask, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_cg_mask } }, section "__param", align 4
@__UNIQUE_ID_cg_masktype413 = internal constant [29 x i8] c"amdgpu.parmtype=cg_mask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pg_mask414 = internal constant [70 x i8] c"amdgpu.parm=pg_mask:Powergating flags mask (0 = disable power gating)\00", section ".modinfo", align 1
@__param_str_pg_mask = internal constant [15 x i8] c"amdgpu.pg_mask\00", align 1
@__param_pg_mask = internal constant %struct.kernel_param { ptr @__param_str_pg_mask, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_pg_mask } }, section "__param", align 4
@__UNIQUE_ID_pg_masktype415 = internal constant [29 x i8] c"amdgpu.parmtype=pg_mask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_sdma_phase_quantum416 = internal constant [117 x i8] c"amdgpu.parm=sdma_phase_quantum:SDMA context switch phase quantum (x 1K GPU clock cycles, 0 = no change (default 32))\00", section ".modinfo", align 1
@__param_str_sdma_phase_quantum = internal constant [26 x i8] c"amdgpu.sdma_phase_quantum\00", align 1
@__param_sdma_phase_quantum = internal constant %struct.kernel_param { ptr @__param_str_sdma_phase_quantum, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_sdma_phase_quantum } }, section "__param", align 4
@__UNIQUE_ID_sdma_phase_quantumtype417 = internal constant [40 x i8] c"amdgpu.parmtype=sdma_phase_quantum:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_cu418 = internal constant [50 x i8] c"amdgpu.parm=disable_cu:Disable CUs (se.sh.cu,...)\00", section ".modinfo", align 1
@__param_str_disable_cu = internal constant [18 x i8] c"amdgpu.disable_cu\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_disable_cu = internal constant %struct.kernel_param { ptr @__param_str_disable_cu, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_disable_cu } }, section "__param", align 4
@__UNIQUE_ID_disable_cutype419 = internal constant [33 x i8] c"amdgpu.parmtype=disable_cu:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_virtual_display420 = internal constant [128 x i8] c"amdgpu.parm=virtual_display:Enable virtual display feature (the virtual_display will be set like xxxx:xx:xx.x,x;xxxx:xx:xx.x,x)\00", section ".modinfo", align 1
@__param_str_virtual_display = internal constant [23 x i8] c"amdgpu.virtual_display\00", align 1
@__param_virtual_display = internal constant %struct.kernel_param { ptr @__param_str_virtual_display, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_virtual_display } }, section "__param", align 4
@__UNIQUE_ID_virtual_displaytype421 = internal constant [38 x i8] c"amdgpu.parmtype=virtual_display:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_job_hang_limit422 = internal constant [86 x i8] c"amdgpu.parm=job_hang_limit:how much time allow a job hang and not drop it (default 0)\00", section ".modinfo", align 1
@__param_str_job_hang_limit = internal constant [22 x i8] c"amdgpu.job_hang_limit\00", align 1
@amdgpu_job_hang_limit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_job_hang_limit = internal constant %struct.kernel_param { ptr @__param_str_job_hang_limit, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_job_hang_limit } }, section "__param", align 4
@__UNIQUE_ID_job_hang_limittype423 = internal constant [35 x i8] c"amdgpu.parmtype=job_hang_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lbpw424 = internal constant [93 x i8] c"amdgpu.parm=lbpw:Load Balancing Per Watt (LBPW) support (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_lbpw = internal constant [12 x i8] c"amdgpu.lbpw\00", align 1
@__param_lbpw = internal constant %struct.kernel_param { ptr @__param_str_lbpw, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_lbpw } }, section "__param", align 4
@__UNIQUE_ID_lbpwtype425 = internal constant [25 x i8] c"amdgpu.parmtype=lbpw:int\00", section ".modinfo", align 1
@__UNIQUE_ID_compute_multipipe426 = internal constant [114 x i8] c"amdgpu.parm=compute_multipipe:Force compute queues to be spread across pipes (1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_compute_multipipe = internal constant [25 x i8] c"amdgpu.compute_multipipe\00", align 1
@__param_compute_multipipe = internal constant %struct.kernel_param { ptr @__param_str_compute_multipipe, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_compute_multipipe } }, section "__param", align 4
@__UNIQUE_ID_compute_multipipetype427 = internal constant [38 x i8] c"amdgpu.parmtype=compute_multipipe:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gpu_recovery428 = internal constant [116 x i8] c"amdgpu.parm=gpu_recovery:Enable GPU recovery mechanism, (2 = advanced tdr mode, 1 = enable, 0 = disable, -1 = auto)\00", section ".modinfo", align 1
@__param_str_gpu_recovery = internal constant [20 x i8] c"amdgpu.gpu_recovery\00", align 1
@__param_gpu_recovery = internal constant %struct.kernel_param { ptr @__param_str_gpu_recovery, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_gpu_recovery } }, section "__param", align 4
@__UNIQUE_ID_gpu_recoverytype429 = internal constant [33 x i8] c"amdgpu.parmtype=gpu_recovery:int\00", section ".modinfo", align 1
@__UNIQUE_ID_emu_mode430 = internal constant [63 x i8] c"amdgpu.parm=emu_mode:Emulation mode, (1 = enable, 0 = disable)\00", section ".modinfo", align 1
@__param_str_emu_mode = internal constant [16 x i8] c"amdgpu.emu_mode\00", align 1
@amdgpu_emu_mode = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_emu_mode = internal constant %struct.kernel_param { ptr @__param_str_emu_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_emu_mode } }, section "__param", align 4
@__UNIQUE_ID_emu_modetype431 = internal constant [29 x i8] c"amdgpu.parmtype=emu_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ras_enable432 = internal constant [101 x i8] c"amdgpu.parm=ras_enable:Enable RAS features on the GPU (0 = disable, 1 = enable, -1 = auto (default))\00", section ".modinfo", align 1
@__param_str_ras_enable = internal constant [18 x i8] c"amdgpu.ras_enable\00", align 1
@__param_ras_enable = internal constant %struct.kernel_param { ptr @__param_str_ras_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_ras_enable } }, section "__param", align 4
@__UNIQUE_ID_ras_enabletype433 = internal constant [31 x i8] c"amdgpu.parmtype=ras_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ras_mask434 = internal constant [106 x i8] c"amdgpu.parm=ras_mask:Mask of RAS features to enable (default 0xffffffff), only valid when ras_enable == 1\00", section ".modinfo", align 1
@__param_str_ras_mask = internal constant [16 x i8] c"amdgpu.ras_mask\00", align 1
@__param_ras_mask = internal constant %struct.kernel_param { ptr @__param_str_ras_mask, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_ras_mask } }, section "__param", align 4
@__UNIQUE_ID_ras_masktype435 = internal constant [30 x i8] c"amdgpu.parmtype=ras_mask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout_fatal_disable436 = internal constant [89 x i8] c"amdgpu.parm=timeout_fatal_disable:disable watchdog timeout fatal error (false = default)\00", section ".modinfo", align 1
@__param_str_timeout_fatal_disable = internal constant [29 x i8] c"amdgpu.timeout_fatal_disable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_timeout_fatal_disable = internal constant %struct.kernel_param { ptr @__param_str_timeout_fatal_disable, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_watchdog_timer } }, section "__param", align 4
@__UNIQUE_ID_timeout_fatal_disabletype437 = internal constant [43 x i8] c"amdgpu.parmtype=timeout_fatal_disable:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout_period438 = internal constant [119 x i8] c"amdgpu.parm=timeout_period:watchdog timeout period (0 = timeout disabled, 1 ~ 0x23 = timeout maxcycles = (1 << period)\00", section ".modinfo", align 1
@__param_str_timeout_period = internal constant [22 x i8] c"amdgpu.timeout_period\00", align 1
@__param_timeout_period = internal constant %struct.kernel_param { ptr @__param_str_timeout_period, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @amdgpu_watchdog_timer, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_timeout_periodtype439 = internal constant [36 x i8] c"amdgpu.parmtype=timeout_period:uint\00", section ".modinfo", align 1
@amdgpu_si_support = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_si_support440 = internal constant [72 x i8] c"amdgpu.parm=si_support:SI support (1 = enabled, 0 = disabled (default))\00", section ".modinfo", align 1
@__param_str_si_support = internal constant [18 x i8] c"amdgpu.si_support\00", align 1
@__param_si_support = internal constant %struct.kernel_param { ptr @__param_str_si_support, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_si_support } }, section "__param", align 4
@__UNIQUE_ID_si_supporttype441 = internal constant [31 x i8] c"amdgpu.parmtype=si_support:int\00", section ".modinfo", align 1
@amdgpu_cik_support = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_cik_support442 = internal constant [74 x i8] c"amdgpu.parm=cik_support:CIK support (1 = enabled, 0 = disabled (default))\00", section ".modinfo", align 1
@__param_str_cik_support = internal constant [19 x i8] c"amdgpu.cik_support\00", align 1
@__param_cik_support = internal constant %struct.kernel_param { ptr @__param_str_cik_support, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_cik_support } }, section "__param", align 4
@__UNIQUE_ID_cik_supporttype443 = internal constant [32 x i8] c"amdgpu.parmtype=cik_support:int\00", section ".modinfo", align 1
@__UNIQUE_ID_smu_memory_pool_size444 = internal constant [138 x i8] c"amdgpu.parm=smu_memory_pool_size:reserve gtt for smu debug usage, 0 = disable,0x1 = 256Mbyte, 0x2 = 512Mbyte, 0x4 = 1 Gbyte, 0x8 = 2GByte\00", section ".modinfo", align 1
@__param_str_smu_memory_pool_size = internal constant [28 x i8] c"amdgpu.smu_memory_pool_size\00", align 1
@amdgpu_smu_memory_pool_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_smu_memory_pool_size = internal constant %struct.kernel_param { ptr @__param_str_smu_memory_pool_size, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_smu_memory_pool_size } }, section "__param", align 4
@__UNIQUE_ID_smu_memory_pool_sizetype445 = internal constant [42 x i8] c"amdgpu.parmtype=smu_memory_pool_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_async_gfx_ring446 = internal constant [193 x i8] c"amdgpu.parm=async_gfx_ring:Asynchronous GFX rings that could be configured with either different priorities (HP3D ring and LP3D ring), or equal priorities (0 = disabled, 1 = enabled (default))\00", section ".modinfo", align 1
@__param_str_async_gfx_ring = internal constant [22 x i8] c"amdgpu.async_gfx_ring\00", align 1
@__param_async_gfx_ring = internal constant %struct.kernel_param { ptr @__param_str_async_gfx_ring, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_async_gfx_ring } }, section "__param", align 4
@__UNIQUE_ID_async_gfx_ringtype447 = internal constant [35 x i8] c"amdgpu.parmtype=async_gfx_ring:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mcbp448 = internal constant [92 x i8] c"amdgpu.parm=mcbp:Enable Mid-command buffer preemption (0 = disabled (default), 1 = enabled)\00", section ".modinfo", align 1
@__param_str_mcbp = internal constant [12 x i8] c"amdgpu.mcbp\00", align 1
@amdgpu_mcbp = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mcbp = internal constant %struct.kernel_param { ptr @__param_str_mcbp, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_mcbp } }, section "__param", align 4
@__UNIQUE_ID_mcbptype449 = internal constant [25 x i8] c"amdgpu.parmtype=mcbp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_discovery450 = internal constant [103 x i8] c"amdgpu.parm=discovery:Allow driver to discover hardware IPs from IP Discovery table at the top of VRAM\00", section ".modinfo", align 1
@__param_str_discovery = internal constant [17 x i8] c"amdgpu.discovery\00", align 1
@__param_discovery = internal constant %struct.kernel_param { ptr @__param_str_discovery, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_discovery } }, section "__param", align 4
@__UNIQUE_ID_discoverytype451 = internal constant [30 x i8] c"amdgpu.parmtype=discovery:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mes452 = internal constant [84 x i8] c"amdgpu.parm=mes:Enable Micro Engine Scheduler (0 = disabled (default), 1 = enabled)\00", section ".modinfo", align 1
@__param_str_mes = internal constant [11 x i8] c"amdgpu.mes\00", align 1
@amdgpu_mes = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mes = internal constant %struct.kernel_param { ptr @__param_str_mes, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_mes } }, section "__param", align 4
@__UNIQUE_ID_mestype453 = internal constant [24 x i8] c"amdgpu.parmtype=mes:int\00", section ".modinfo", align 1
@__UNIQUE_ID_noretry454 = internal constant [100 x i8] c"amdgpu.parm=noretry:Disable retry faults (0 = retry enabled, 1 = retry disabled, -1 auto (default))\00", section ".modinfo", align 1
@__param_str_noretry = internal constant [15 x i8] c"amdgpu.noretry\00", align 1
@__param_noretry = internal constant %struct.kernel_param { ptr @__param_str_noretry, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_noretry } }, section "__param", align 4
@__UNIQUE_ID_noretrytype455 = internal constant [28 x i8] c"amdgpu.parmtype=noretry:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_asic_type456 = internal constant [102 x i8] c"amdgpu.parm=force_asic_type:A non negative value used to specify the asic type for all supported GPUs\00", section ".modinfo", align 1
@__param_str_force_asic_type = internal constant [23 x i8] c"amdgpu.force_asic_type\00", align 1
@__param_force_asic_type = internal constant %struct.kernel_param { ptr @__param_str_force_asic_type, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_force_asic_type } }, section "__param", align 4
@__UNIQUE_ID_force_asic_typetype457 = internal constant [36 x i8] c"amdgpu.parmtype=force_asic_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dcfeaturemask458 = internal constant [68 x i8] c"amdgpu.parm=dcfeaturemask:all stable DC features enabled (default))\00", section ".modinfo", align 1
@__param_str_dcfeaturemask = internal constant [21 x i8] c"amdgpu.dcfeaturemask\00", align 1
@__param_dcfeaturemask = internal constant %struct.kernel_param { ptr @__param_str_dcfeaturemask, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_dc_feature_mask } }, section "__param", align 4
@__UNIQUE_ID_dcfeaturemasktype459 = internal constant [35 x i8] c"amdgpu.parmtype=dcfeaturemask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dcdebugmask460 = internal constant [62 x i8] c"amdgpu.parm=dcdebugmask:all debug options disabled (default))\00", section ".modinfo", align 1
@__param_str_dcdebugmask = internal constant [19 x i8] c"amdgpu.dcdebugmask\00", align 1
@amdgpu_dc_debug_mask = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dcdebugmask = internal constant %struct.kernel_param { ptr @__param_str_dcdebugmask, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_dc_debug_mask } }, section "__param", align 4
@__UNIQUE_ID_dcdebugmasktype461 = internal constant [33 x i8] c"amdgpu.parmtype=dcdebugmask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_abmlevel462 = internal constant [85 x i8] c"amdgpu.parm=abmlevel:ABM level (0 = off (default), 1-4 = backlight reduction level) \00", section ".modinfo", align 1
@__param_str_abmlevel = internal constant [16 x i8] c"amdgpu.abmlevel\00", align 1
@amdgpu_dm_abm_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_abmlevel = internal constant %struct.kernel_param { ptr @__param_str_abmlevel, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_dm_abm_level } }, section "__param", align 4
@__UNIQUE_ID_abmleveltype463 = internal constant [30 x i8] c"amdgpu.parmtype=abmlevel:uint\00", section ".modinfo", align 1
@amdgpu_backlight = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_backlight464 = internal constant [78 x i8] c"amdgpu.parm=backlight:Backlight control (0 = pwm, 1 = aux, -1 auto (default))\00", section ".modinfo", align 1
@__param_str_backlight = internal constant [17 x i8] c"amdgpu.backlight\00", align 1
@param_ops_bint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_backlight = internal constant %struct.kernel_param { ptr @__param_str_backlight, ptr null, ptr @param_ops_bint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_backlight } }, section "__param", align 4
@__UNIQUE_ID_backlighttype465 = internal constant [31 x i8] c"amdgpu.parmtype=backlight:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_tmz466 = internal constant [74 x i8] c"amdgpu.parm=tmz:Enable TMZ feature (-1 = auto (default), 0 = off, 1 = on)\00", section ".modinfo", align 1
@__param_str_tmz = internal constant [11 x i8] c"amdgpu.tmz\00", align 1
@__param_tmz = internal constant %struct.kernel_param { ptr @__param_str_tmz, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_tmz } }, section "__param", align 4
@__UNIQUE_ID_tmztype467 = internal constant [24 x i8] c"amdgpu.parmtype=tmz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_freesync_video468 = internal constant [104 x i8] c"amdgpu.parm=freesync_video:Enable freesync modesetting optimization feature (0 = off (default), 1 = on)\00", section ".modinfo", align 1
@__param_str_freesync_video = internal constant [22 x i8] c"amdgpu.freesync_video\00", align 1
@amdgpu_freesync_vid_mode = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_freesync_video = internal constant %struct.kernel_param { ptr @__param_str_freesync_video, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_freesync_vid_mode } }, section "__param", align 4
@__UNIQUE_ID_freesync_videotype469 = internal constant [36 x i8] c"amdgpu.parmtype=freesync_video:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_method470 = internal constant [135 x i8] c"amdgpu.parm=reset_method:GPU reset method (-1 = auto (default), 0 = legacy, 1 = mode0, 2 = mode1, 3 = mode2, 4 = baco/bamaco, 5 = pci)\00", section ".modinfo", align 1
@__param_str_reset_method = internal constant [20 x i8] c"amdgpu.reset_method\00", align 1
@__param_reset_method = internal constant %struct.kernel_param { ptr @__param_str_reset_method, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_reset_method } }, section "__param", align 4
@__UNIQUE_ID_reset_methodtype471 = internal constant [33 x i8] c"amdgpu.parmtype=reset_method:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bad_page_threshold472 = internal constant [141 x i8] c"amdgpu.parm=bad_page_threshold:Bad page threshold(-1 = auto(default value), 0 = disable bad page retirement, -2 = ignore bad page threshold)\00", section ".modinfo", align 1
@__param_str_bad_page_threshold = internal constant [26 x i8] c"amdgpu.bad_page_threshold\00", align 1
@__param_bad_page_threshold = internal constant %struct.kernel_param { ptr @__param_str_bad_page_threshold, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_bad_page_threshold } }, section "__param", align 4
@__UNIQUE_ID_bad_page_thresholdtype473 = internal constant [39 x i8] c"amdgpu.parmtype=bad_page_threshold:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_kcq474 = internal constant [134 x i8] c"amdgpu.parm=num_kcq:number of kernel compute queue user want to setup (8 if set to greater than 8 or less than 0, only affect gfx 8+)\00", section ".modinfo", align 1
@__param_str_num_kcq = internal constant [15 x i8] c"amdgpu.num_kcq\00", align 1
@__param_num_kcq = internal constant %struct.kernel_param { ptr @__param_str_num_kcq, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_num_kcq } }, section "__param", align 4
@__UNIQUE_ID_num_kcqtype475 = internal constant [28 x i8] c"amdgpu.parmtype=num_kcq:int\00", section ".modinfo", align 1
@__UNIQUE_ID_smu_pptable_id476 = internal constant [135 x i8] c"amdgpu.parm=smu_pptable_id:specify pptable id to be used (-1 = auto(default) value, 0 = use pptable from vbios, > 0 = soft pptable id)\00", section ".modinfo", align 1
@__param_str_smu_pptable_id = internal constant [22 x i8] c"amdgpu.smu_pptable_id\00", align 1
@__param_smu_pptable_id = internal constant %struct.kernel_param { ptr @__param_str_smu_pptable_id, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @amdgpu_smu_pptable_id } }, section "__param", align 4
@__UNIQUE_ID_smu_pptable_idtype477 = internal constant [35 x i8] c"amdgpu.parmtype=smu_pptable_id:int\00", section ".modinfo", align 1
@amdgpu_driver_kms_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @amdgpu_drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr @amdgpu_flush, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_show_fdinfo, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AMDGPU_GEM_CREATE\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AMDGPU_GEM_MMAP\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMDGPU_CTX\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AMDGPU_BO_LIST\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AMDGPU_CS\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMDGPU_INFO\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AMDGPU_GEM_METADATA\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AMDGPU_GEM_WAIT_IDLE\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AMDGPU_GEM_VA\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AMDGPU_WAIT_CS\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AMDGPU_GEM_OP\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AMDGPU_GEM_USERPTR\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AMDGPU_WAIT_FENCES\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AMDGPU_VM\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AMDGPU_FENCE_TO_HANDLE\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AMDGPU_SCHED\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_ioctls_kms = dso_local constant { [22 x %struct.drm_ioctl_desc], [64 x i8] } { [22 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1071619008, i32 33, ptr @amdgpu_gem_create_ioctl, ptr @.str.4 }, %struct.drm_ioctl_desc { i32 -1073191871, i32 33, ptr @amdgpu_gem_mmap_ioctl, ptr @.str.5 }, %struct.drm_ioctl_desc { i32 -1072667582, i32 33, ptr @amdgpu_ctx_ioctl, ptr @.str.6 }, %struct.drm_ioctl_desc { i32 -1072143293, i32 33, ptr @amdgpu_bo_list_ioctl, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 -1072143292, i32 33, ptr @amdgpu_cs_ioctl, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 1075864645, i32 33, ptr @amdgpu_info_ioctl, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 -1054841786, i32 33, ptr @amdgpu_gem_metadata_ioctl, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 -1072667577, i32 33, ptr @amdgpu_gem_wait_idle_ioctl, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 1076388936, i32 33, ptr @amdgpu_gem_va_ioctl, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1071618999, i32 33, ptr @amdgpu_cs_wait_ioctl, ptr @.str.13 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667568, i32 33, ptr @amdgpu_gem_op_ioctl, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 -1072143279, i32 33, ptr @amdgpu_gem_userptr_ioctl, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 -1072143278, i32 33, ptr @amdgpu_cs_wait_fences_ioctl, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 -1073191853, i32 33, ptr @amdgpu_vm_ioctl, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 -1071618988, i32 33, ptr @amdgpu_cs_fence_to_handle_ioctl, ptr @.str.18 }, %struct.drm_ioctl_desc { i32 1074816085, i32 2, ptr @amdgpu_sched_ioctl, ptr @.str.19 }], [64 x i8] zeroinitializer }, align 32
@amdgpu_kms_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.26, ptr @pciidlist, ptr @amdgpu_pci_probe, ptr @amdgpu_pci_remove, ptr null, ptr null, ptr @amdgpu_pci_shutdown, ptr null, ptr null, ptr null, ptr @amdgpu_pci_err_handler, ptr null, ptr @amdgpu_sysfs_groups, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_amdgpu__478_2707_amdgpu_init6 = internal global ptr @amdgpu_init, section ".initcall6.init", align 4
@__exitcall_amdgpu_exit = internal global ptr @amdgpu_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author479 = internal constant [36 x i8] c"amdgpu.author=AMD linux driver team\00", section ".modinfo", align 1
@__UNIQUE_ID_description480 = internal constant [27 x i8] c"amdgpu.description=AMD GPU\00", section ".modinfo", align 1
@__UNIQUE_ID_file481 = internal constant [46 x i8] c"amdgpu.file=drivers/gpu/drm/amd/amdgpu/amdgpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license482 = internal constant [41 x i8] c"amdgpu.license=GPL and additional rights\00", section ".modinfo", align 1
@amdgpu_lockup_timeout = dso_local global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@amdgpu_smartshift_bias = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@amdgpu_drv_delayed_reset_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 2208, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: GPU pre asic reset failed with err, %d for drm dev, %s \00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu_drv_delayed_reset_work_handler\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_drv_delayed_reset_work_handler._entry_ptr = internal global ptr @amdgpu_drv_delayed_reset_work_handler._entry, section ".printk_index", align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reinit gpus failure\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@pciidlist = internal constant { [305 x %struct.pci_device_id], [2432 x i8] } { [305 x %struct.pci_device_id] [%struct.pci_device_id { i32 4098, i32 26496, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26500, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26504, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26506, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26512, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26513, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26514, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26520, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26521, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26522, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26523, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26526, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26527, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 26624, i32 -1, i32 -1, i32 0, i32 0, i32 65537, i32 0 }, %struct.pci_device_id { i32 4098, i32 26625, i32 -1, i32 -1, i32 0, i32 0, i32 65537, i32 0 }, %struct.pci_device_id { i32 4098, i32 26626, i32 -1, i32 -1, i32 0, i32 0, i32 65537, i32 0 }, %struct.pci_device_id { i32 4098, i32 26630, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26632, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26633, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26640, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26641, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26646, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26647, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26648, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26649, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 26112, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26113, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26114, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26115, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26116, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26117, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26118, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26119, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26120, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 26128, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 26129, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 26131, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 26135, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26144, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26145, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26147, i32 -1, i32 -1, i32 0, i32 0, i32 65539, i32 0 }, %struct.pci_device_id { i32 4098, i32 26161, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 26656, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26657, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26658, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26659, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26660, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26661, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26662, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26663, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26664, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26665, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26666, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26667, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26668, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26669, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26671, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26672, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26673, i32 -1, i32 -1, i32 0, i32 0, i32 65538, i32 0 }, %struct.pci_device_id { i32 4098, i32 26677, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26679, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26680, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26681, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26683, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26685, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26687, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4098, i32 26208, i32 -1, i32 -1, i32 0, i32 0, i32 65540, i32 0 }, %struct.pci_device_id { i32 4098, i32 26211, i32 -1, i32 -1, i32 0, i32 0, i32 65540, i32 0 }, %struct.pci_device_id { i32 4098, i32 26212, i32 -1, i32 -1, i32 0, i32 0, i32 65540, i32 0 }, %struct.pci_device_id { i32 4098, i32 26213, i32 -1, i32 -1, i32 0, i32 0, i32 65540, i32 0 }, %struct.pci_device_id { i32 4098, i32 26215, i32 -1, i32 -1, i32 0, i32 0, i32 65540, i32 0 }, %struct.pci_device_id { i32 4098, i32 26223, i32 -1, i32 -1, i32 0, i32 0, i32 65540, i32 0 }, %struct.pci_device_id { i32 4098, i32 4868, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4869, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4870, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4871, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4873, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4874, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4875, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4876, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4877, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4878, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4879, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4880, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4881, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4882, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4883, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4885, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4886, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4887, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4888, i32 -1, i32 -1, i32 0, i32 0, i32 196614, i32 0 }, %struct.pci_device_id { i32 4098, i32 4891, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4892, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 4893, i32 -1, i32 -1, i32 0, i32 0, i32 131078, i32 0 }, %struct.pci_device_id { i32 4098, i32 26176, i32 -1, i32 -1, i32 0, i32 0, i32 65541, i32 0 }, %struct.pci_device_id { i32 4098, i32 26177, i32 -1, i32 -1, i32 0, i32 0, i32 65541, i32 0 }, %struct.pci_device_id { i32 4098, i32 26182, i32 -1, i32 -1, i32 0, i32 0, i32 65541, i32 0 }, %struct.pci_device_id { i32 4098, i32 26183, i32 -1, i32 -1, i32 0, i32 0, i32 65541, i32 0 }, %struct.pci_device_id { i32 4098, i32 26185, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 26192, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 26193, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 26200, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 26204, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 26205, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 26207, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 26528, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26529, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26530, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26536, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26537, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26538, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26544, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26545, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26552, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26553, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26554, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 26558, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4098, i32 38960, i32 -1, i32 -1, i32 0, i32 0, i32 196615, i32 0 }, %struct.pci_device_id { i32 4098, i32 38961, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38962, i32 -1, i32 -1, i32 0, i32 0, i32 196615, i32 0 }, %struct.pci_device_id { i32 4098, i32 38963, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38964, i32 -1, i32 -1, i32 0, i32 0, i32 196615, i32 0 }, %struct.pci_device_id { i32 4098, i32 38965, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38966, i32 -1, i32 -1, i32 0, i32 0, i32 196615, i32 0 }, %struct.pci_device_id { i32 4098, i32 38967, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38968, i32 -1, i32 -1, i32 0, i32 0, i32 196615, i32 0 }, %struct.pci_device_id { i32 4098, i32 38969, i32 -1, i32 -1, i32 0, i32 0, i32 196615, i32 0 }, %struct.pci_device_id { i32 4098, i32 38970, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38971, i32 -1, i32 -1, i32 0, i32 0, i32 196615, i32 0 }, %struct.pci_device_id { i32 4098, i32 38972, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38973, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38974, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38975, i32 -1, i32 -1, i32 0, i32 0, i32 131079, i32 0 }, %struct.pci_device_id { i32 4098, i32 38992, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 38993, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 38994, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 38995, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 38996, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 38997, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 38998, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 38999, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 39000, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 39001, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 39002, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 39003, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 39004, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 39005, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 39006, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 39007, i32 -1, i32 -1, i32 0, i32 0, i32 196617, i32 0 }, %struct.pci_device_id { i32 4098, i32 26880, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 26881, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 26882, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 26883, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 26887, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4098, i32 26912, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 26913, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 26920, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 26921, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 26923, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 26927, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 26928, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 26936, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 26937, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4098, i32 29440, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4098, i32 29455, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4098, i32 39024, i32 -1, i32 -1, i32 0, i32 0, i32 131085, i32 0 }, %struct.pci_device_id { i32 4098, i32 39028, i32 -1, i32 -1, i32 0, i32 0, i32 131085, i32 0 }, %struct.pci_device_id { i32 4098, i32 39029, i32 -1, i32 -1, i32 0, i32 0, i32 131085, i32 0 }, %struct.pci_device_id { i32 4098, i32 39030, i32 -1, i32 -1, i32 0, i32 0, i32 131085, i32 0 }, %struct.pci_device_id { i32 4098, i32 39031, i32 -1, i32 -1, i32 0, i32 0, i32 131085, i32 0 }, %struct.pci_device_id { i32 4098, i32 39140, i32 -1, i32 -1, i32 0, i32 0, i32 131086, i32 0 }, %struct.pci_device_id { i32 4098, i32 26592, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26595, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26600, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26603, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26607, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26623, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26593, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26599, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26601, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4098, i32 26560, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26561, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26562, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26564, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26567, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26576, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26591, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26568, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26569, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26570, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26572, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 26575, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 28639, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4098, i32 27008, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 27009, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 27013, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 27014, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 27015, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 27029, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 27031, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 27039, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4098, i32 26956, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 4098, i32 26958, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 4098, i32 26959, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 4098, i32 26720, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26721, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26722, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26723, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26724, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26727, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26728, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26729, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26730, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26731, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26732, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26733, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26734, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26735, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 26751, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4098, i32 27040, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4098, i32 27041, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4098, i32 27042, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4098, i32 27043, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4098, i32 27055, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4098, i32 26272, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4098, i32 26273, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4098, i32 26274, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4098, i32 26275, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4098, i32 26276, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4098, i32 26279, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4098, i32 26287, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4098, i32 5597, i32 -1, i32 -1, i32 0, i32 0, i32 131094, i32 0 }, %struct.pci_device_id { i32 4098, i32 5592, i32 -1, i32 -1, i32 0, i32 0, i32 131094, i32 0 }, %struct.pci_device_id { i32 4098, i32 29580, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4098, i32 29576, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4098, i32 29582, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4098, i32 29584, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4098, i32 29456, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4098, i32 29458, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4098, i32 29464, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4098, i32 29465, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4098, i32 29466, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4098, i32 29467, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4098, i32 29470, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4098, i32 29471, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4098, i32 29504, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4098, i32 29505, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4098, i32 29511, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4098, i32 29519, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4098, i32 5607, i32 -1, i32 -1, i32 0, i32 0, i32 131096, i32 0 }, %struct.pci_device_id { i32 4098, i32 5686, i32 -1, i32 -1, i32 0, i32 0, i32 131096, i32 0 }, %struct.pci_device_id { i32 4098, i32 5688, i32 -1, i32 -1, i32 0, i32 0, i32 131096, i32 0 }, %struct.pci_device_id { i32 4098, i32 5708, i32 -1, i32 -1, i32 0, i32 0, i32 131096, i32 0 }, %struct.pci_device_id { i32 4098, i32 29536, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4098, i32 29538, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4098, i32 29600, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29601, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29602, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29603, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29605, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29608, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29609, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29611, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29612, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29613, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29614, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29615, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 29631, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4098, i32 5695, i32 -1, i32 -1, i32 0, i32 0, i32 131104, i32 0 }, %struct.pci_device_id { i32 4098, i32 5709, i32 -1, i32 -1, i32 0, i32 0, i32 131107, i32 0 }, %struct.pci_device_id { i32 4098, i32 5761, i32 -1, i32 -1, i32 0, i32 0, i32 131107, i32 0 }, %struct.pci_device_id { i32 4098, i32 29632, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29633, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29635, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29658, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29659, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29660, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29661, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29662, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29663, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4098, i32 29664, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29665, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29666, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29667, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29672, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29673, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29674, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29675, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29676, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29677, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29679, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29695, i32 -1, i32 -1, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 4098, i32 29704, i32 -1, i32 -1, i32 0, i32 0, i32 524313, i32 0 }, %struct.pci_device_id { i32 4098, i32 29708, i32 -1, i32 -1, i32 0, i32 0, i32 524313, i32 0 }, %struct.pci_device_id { i32 4098, i32 29711, i32 -1, i32 -1, i32 0, i32 0, i32 524313, i32 0 }, %struct.pci_device_id { i32 4098, i32 29712, i32 -1, i32 -1, i32 0, i32 0, i32 524313, i32 0 }, %struct.pci_device_id { i32 4098, i32 5118, i32 -1, i32 -1, i32 0, i32 0, i32 131099, i32 0 }, %struct.pci_device_id { i32 4098, i32 29728, i32 -1, i32 -1, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4098, i32 29729, i32 -1, i32 -1, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4098, i32 29730, i32 -1, i32 -1, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4098, i32 29731, i32 -1, i32 -1, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4098, i32 29759, i32 -1, i32 -1, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4098, i32 -1, i32 -1, i32 -1, i32 196608, i32 16777215, i32 36, i32 0 }, %struct.pci_device_id { i32 4098, i32 -1, i32 -1, i32 -1, i32 229376, i32 16777215, i32 36, i32 0 }, %struct.pci_device_id zeroinitializer], [2432 x i8] zeroinitializer }, align 32
@amdgpu_pci_err_handler = internal global { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @amdgpu_pci_error_detected, ptr @amdgpu_pci_mmio_enabled, ptr @amdgpu_pci_slot_reset, ptr null, ptr null, ptr @amdgpu_pci_resume }, [40 x i8] zeroinitializer }, align 32
@amdgpu_sysfs_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @amdgpu_vram_mgr_attr_group, ptr @amdgpu_gtt_mgr_attr_group, ptr @amdgpu_vbios_version_attr_group, ptr null], [16 x i8] zeroinitializer }, align 32
@amdgpu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @amdgpu_pmops_prepare, ptr @amdgpu_pmops_complete, ptr @amdgpu_pmops_suspend, ptr @amdgpu_pmops_resume, ptr @amdgpu_pmops_freeze, ptr @amdgpu_pmops_thaw, ptr @amdgpu_pmops_poweroff, ptr @amdgpu_pmops_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_pmops_runtime_suspend, ptr @amdgpu_pmops_runtime_resume, ptr @amdgpu_pmops_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@amdgpu_unsupported_pciidlist = internal constant { [701 x i16], [326 x i8] } { [701 x i16] [i16 17236, i16 17240, i16 17748, i16 18242, i16 18244, i16 18249, i16 18252, i16 18253, i16 18254, i16 18255, i16 18256, i16 18257, i16 18258, i16 18259, i16 18260, i16 18261, i16 18262, i16 18263, i16 18264, i16 18265, i16 18266, i16 19522, i16 19524, i16 19527, i16 19529, i16 19533, i16 19534, i16 19536, i16 19537, i16 19538, i16 19539, i16 22100, i16 22101, i16 22102, i16 19525, i16 19526, i16 19782, i16 19788, i16 20545, i16 20546, i16 20547, i16 20548, i16 20549, i16 20550, i16 20551, i16 20552, i16 20553, i16 20554, i16 20555, i16 20556, i16 20557, i16 20558, i16 20559, i16 20560, i16 20561, i16 20562, i16 20563, i16 20564, i16 20565, i16 20566, i16 20567, i16 20568, i16 21061, i16 21062, i16 21063, i16 21067, i16 21068, i16 21325, i16 21574, i16 21580, i16 21586, i16 12624, i16 12625, i16 12626, i16 12628, i16 12629, i16 15952, i16 15956, i16 16694, i16 16695, i16 16708, i16 16709, i16 16710, i16 16711, i16 16712, i16 16713, i16 16714, i16 16715, i16 16720, i16 16721, i16 16722, i16 16723, i16 16724, i16 16725, i16 16726, i16 16951, i16 16962, i16 17206, i16 17207, i16 17463, i16 18790, i16 18791, i16 19016, i16 19017, i16 19018, i16 19019, i16 19020, i16 19021, i16 19022, i16 19023, i16 19024, i16 19028, i16 19272, i16 19273, i16 19274, i16 19275, i16 19276, i16 19543, i16 19544, i16 19545, i16 19546, i16 19556, i16 19558, i16 19559, i16 20036, i16 20037, i16 20038, i16 20039, i16 20040, i16 20041, i16 20042, i16 20043, i16 20048, i16 20049, i16 20050, i16 20051, i16 20052, i16 20054, i16 20804, i16 20805, i16 20806, i16 20807, i16 20808, i16 20812, i16 20813, i16 20823, i16 20824, i16 20825, i16 20826, i16 20830, i16 21600, i16 21602, i16 21604, i16 21832, i16 21833, i16 21834, i16 21835, i16 21836, i16 21837, i16 21838, i16 21839, i16 21840, i16 21841, i16 21842, i16 21844, i16 22090, i16 22091, i16 22095, i16 22098, i16 22099, i16 22103, i16 22580, i16 22581, i16 22868, i16 22869, i16 22900, i16 22901, i16 22880, i16 22881, i16 22882, i16 22884, i16 22885, i16 22889, i16 23105, i16 23106, i16 23137, i16 23138, i16 23392, i16 23394, i16 23395, i16 23396, i16 23397, i16 23649, i16 23651, i16 23880, i16 23881, i16 23882, i16 23884, i16 23885, i16 23886, i16 23887, i16 23888, i16 23890, i16 23895, i16 24136, i16 24138, i16 24139, i16 24140, i16 24141, i16 24143, i16 26368, i16 26369, i16 26370, i16 26371, i16 26372, i16 26373, i16 26374, i16 26375, i16 26376, i16 26377, i16 26392, i16 26393, i16 26396, i16 26397, i16 26399, i16 26400, i16 26401, i16 26402, i16 26403, i16 26404, i16 26405, i16 26406, i16 26407, i16 26408, i16 26409, i16 26424, i16 26425, i16 26430, i16 26432, i16 26433, i16 26434, i16 26435, i16 26436, i16 26437, i16 26438, i16 26439, i16 26440, i16 26441, i16 26442, i16 26448, i16 26449, i16 26456, i16 26457, i16 26459, i16 26461, i16 26463, i16 26464, i16 26465, i16 26466, i16 26467, i16 26468, i16 26469, i16 26470, i16 26471, i16 26472, i16 26480, i16 26481, i16 26482, i16 26488, i16 26489, i16 26491, i16 26688, i16 26689, i16 26690, i16 26691, i16 26697, i16 26700, i16 26704, i16 26712, i16 26713, i16 26752, i16 26760, i16 26761, i16 26762, i16 26764, i16 26765, i16 26776, i16 26777, i16 26779, i16 26780, i16 26781, i16 26782, i16 26784, i16 26785, i16 26792, i16 26793, i16 26800, i16 26808, i16 26809, i16 26810, i16 26814, i16 26815, i16 26816, i16 26817, i16 26823, i16 26824, i16 26825, i16 26840, i16 26841, i16 26842, i16 26846, i16 26848, i16 26849, i16 26852, i16 26853, i16 26856, i16 26857, i16 26865, i16 26866, i16 26872, i16 26873, i16 26874, i16 26878, i16 28928, i16 28929, i16 28930, i16 28931, i16 28932, i16 28933, i16 28934, i16 28936, i16 28937, i16 28938, i16 28939, i16 28940, i16 28942, i16 28943, i16 28992, i16 28993, i16 28994, i16 28995, i16 28996, i16 28997, i16 28998, i16 28999, i16 29001, i16 29002, i16 29003, i16 29004, i16 29005, i16 29006, i16 29007, i16 29009, i16 29010, i16 29011, i16 29022, i16 29023, i16 29056, i16 29057, i16 29059, i16 29062, i16 29063, i16 29064, i16 29066, i16 29067, i16 29068, i16 29069, i16 29071, i16 29075, i16 29078, i16 29083, i16 29087, i16 29120, i16 29121, i16 29122, i16 29123, i16 29124, i16 29125, i16 29126, i16 29127, i16 29133, i16 29134, i16 29138, i16 29140, i16 29141, i16 29142, i16 29146, i16 29150, i16 29184, i16 29200, i16 29201, i16 29248, i16 29251, i16 29252, i16 29253, i16 29254, i16 29255, i16 29256, i16 29257, i16 29258, i16 29259, i16 29260, i16 29261, i16 29262, i16 29263, i16 29312, i16 29313, i16 29315, i16 29316, i16 29319, i16 29320, i16 29321, i16 29323, i16 29324, i16 29328, i16 29329, i16 29331, i16 29335, i16 30772, i16 30773, i16 31006, i16 31007, i16 31039, i16 31041, i16 31042, i16 31084, i16 31085, i16 31086, i16 31087, i16 -27648, i16 -27647, i16 -27646, i16 -27645, i16 -27643, i16 -27638, i16 -27637, i16 -27633, i16 -27488, i16 -27487, i16 -27485, i16 -27471, i16 -27469, i16 -27468, i16 -27467, i16 -27463, i16 -27584, i16 -27583, i16 -27582, i16 -27581, i16 -27580, i16 -27578, i16 -27574, i16 -27573, i16 -27572, i16 -27570, i16 -27568, i16 -27566, i16 -27562, i16 -27558, i16 -27557, i16 -27554, i16 -27552, i16 -27550, i16 -27542, i16 -27541, i16 -27526, i16 -27525, i16 -27520, i16 -27513, i16 -27512, i16 -27511, i16 -27510, i16 -27505, i16 -27504, i16 -27503, i16 -27499, i16 -27496, i16 -27492, i16 -27490, i16 -27489, i16 -27456, i16 -27455, i16 -27453, i16 -27452, i16 -27451, i16 -27450, i16 -27449, i16 -27448, i16 -27447, i16 -27445, i16 -27444, i16 -27443, i16 -27392, i16 -27391, i16 -27388, i16 -27387, i16 -27386, i16 -27385, i16 -27384, i16 -27383, i16 -27377, i16 -27375, i16 -27371, i16 -27369, i16 -27367, i16 -27328, i16 -27327, i16 -27326, i16 -27314, i16 -27313, i16 -27310, i16 -27309, i16 -27307, i16 -27305, i16 -27297, i16 -27264, i16 -27263, i16 -27261, i16 -27258, i16 -27257, i16 -27256, i16 -27255, i16 -27254, i16 -27253, i16 -27252, i16 -27251, i16 -27250, i16 -27249, i16 -27248, i16 -27247, i16 -27245, i16 -27243, i16 -27242, i16 -27241, i16 -27240, i16 -27239, i16 -27237, i16 -27200, i16 -27198, i16 -27196, i16 -27195, i16 -27194, i16 -27193, i16 -27191, i16 -27188, i16 -27187, i16 -27186, i16 -27185, i16 -27120, i16 -27119, i16 -27118, i16 -27117, i16 -27116, i16 -27115, i16 -27114, i16 -27072, i16 -27071, i16 -27070, i16 -27069, i16 -27068, i16 -27067, i16 -27065, i16 -27064, i16 -27063, i16 -27062, i16 -27061, i16 -27060, i16 -27058, i16 -27057, i16 -26864, i16 -26863, i16 -26862, i16 -26861, i16 -26860, i16 -26859, i16 -26622, i16 -26621, i16 -26620, i16 -26619, i16 -26618, i16 -26617, i16 -26616, i16 -26615, i16 -26614, i16 -26368, i16 -26367, i16 -26365, i16 -26364, i16 -26363, i16 -26362, i16 -26361, i16 -26360, i16 -26359, i16 -26358, i16 -26357, i16 -26356, i16 -26355, i16 -26354, i16 -26353, i16 -26352, i16 -26349, i16 -26345, i16 -26344, i16 -26343, i16 -26224, i16 -26223, i16 -26222, i16 -26221, i16 -26220, i16 -26219, i16 -26218, i16 -26217, i16 -26216, i16 -26215, i16 -26214, i16 -26213, i16 -26212, i16 -26211, i16 -26208, i16 -26206, i16 -26204, i16 12657, i16 15984, i16 16740, i16 16741, i16 16742, i16 16744, i16 16752, i16 16753, i16 16754, i16 16755, i16 18798, i16 19049, i16 19050, i16 19051, i16 19056, i16 19060, i16 19305, i16 19307, i16 19308, i16 19566, i16 20068, i16 20069, i16 20070, i16 20071, i16 20072, i16 20073, i16 20074, i16 20081, i16 20339, i16 21865, i16 21867, i16 21869, i16 21871, i16 21873, i16 22612, i16 22644, i16 22848, i16 22849, i16 23410, i16 23411, i16 23412, i16 23413, i16 23876, i16 23877, i16 23917, i16 23919, i16 23922, i16 23927, i16 24171, i16 24173, i16 28960, i16 28964, i16 28969, i16 28974, i16 28975, i16 29026, i16 29027, i16 29030, i16 29031, i16 29042, i16 29043, i16 29088, i16 29089, i16 29091, i16 29095, i16 29115, i16 29152, i16 29153, i16 29154, i16 29158, i16 29159, i16 29170, i16 29289, i16 29291, i16 29294, i16 29344, i16 29352, i16 29361, i16 29363, i16 31039], [326 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.22, i32 2023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016[drm] This hardware requires experimental hardware support.\0ASee modparam exp_hw_support\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry_ptr = internal global ptr @amdgpu_pci_probe._entry, section ".printk_index", align 4
@amdgpu_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.22, i32 2034, ptr @.str.31, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: SME is not compatible with RAVEN\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry_ptr.32 = internal global ptr @amdgpu_pci_probe._entry.29, section ".printk_index", align 4
@amdgpu_pci_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.22, i32 2047, ptr @.str.31, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: SI support provided by radeon.\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry_ptr.35 = internal global ptr @amdgpu_pci_probe._entry.33, section ".printk_index", align 4
@amdgpu_pci_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.22, i32 2050, ptr @.str.31, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"amdgpu: Use radeon.si_support=0 amdgpu.si_support=1 to override.\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry_ptr.38 = internal global ptr @amdgpu_pci_probe._entry.36, section ".printk_index", align 4
@amdgpu_pci_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.22, i32 2064, ptr @.str.31, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: CIK support provided by radeon.\0A\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry_ptr.41 = internal global ptr @amdgpu_pci_probe._entry.39, section ".printk_index", align 4
@amdgpu_pci_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.28, ptr @.str.22, i32 2067, ptr @.str.31, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"amdgpu: Use radeon.cik_support=0 amdgpu.cik_support=1 to override.\0A\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry_ptr.44 = internal global ptr @amdgpu_pci_probe._entry.42, section ".printk_index", align 4
@amdgpu_kms_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @amdgpu_driver_open_kms, ptr @amdgpu_driver_postclose_kms, ptr @amdgpu_driver_lastclose_kms, ptr null, ptr @amdgpu_driver_release_kms, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @amdgpu_gem_prime_import, ptr null, ptr @drm_gem_prime_mmap, ptr @amdgpu_mode_dumb_create, ptr @amdgpu_mode_dumb_mmap, ptr null, i32 3, i32 44, i32 0, ptr @.str.26, ptr @.str.49, ptr @.str.50, i32 123, ptr @amdgpu_ioctls_kms, i32 22, ptr @amdgpu_driver_kms_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.28, ptr @.str.22, i32 2107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016[drm] retry init %d\0A\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_pci_probe._entry_ptr.47 = internal global ptr @amdgpu_pci_probe._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Creating debugfs files failed (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AMD GPU\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20150101\00", [23 x i8] zeroinitializer }, align 32
@amdgpu_ras_in_intr = external dso_local global %struct.atomic_t, align 4
@amdgpu_vram_mgr_attr_group = external dso_local constant %struct.attribute_group, align 4
@amdgpu_gtt_mgr_attr_group = external dso_local constant %struct.attribute_group, align 4
@amdgpu_vbios_version_attr_group = external dso_local constant %struct.attribute_group, align 4
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failing to power off - crtc active\0A\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.22, i32 2680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016[drm] amdgpu kernel modesetting enabled.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amdgpu_init\00", [20 x i8] zeroinitializer }, align 32
@amdgpu_init._entry_ptr = internal global ptr @amdgpu_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"amdgpu_gart_size\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 109, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"amdgpu_gtt_size\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 110, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"amdgpu_moverate\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 111, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"amdgpu_audio\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 114, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"amdgpu_pcie_gen2\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 117, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"amdgpu_msi\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 118, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"amdgpu_dpm\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 120, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"amdgpu_fw_load_type\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 121, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"amdgpu_aspm\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 122, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"amdgpu_runtime_pm\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 123, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"amdgpu_ip_block_mask\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 124, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"amdgpu_bapm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 125, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"amdgpu_vm_size\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 127, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"amdgpu_vm_fragment_size\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 128, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"amdgpu_vm_block_size\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 129, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"amdgpu_vm_update_mode\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 132, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"amdgpu_dc\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 134, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"amdgpu_sched_jobs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 135, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"amdgpu_sched_hw_submission\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 136, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"amdgpu_cg_mask\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 139, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"amdgpu_pg_mask\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 140, i32 6 }
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"amdgpu_sdma_phase_quantum\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 141, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"amdgpu_disable_cu\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 142, i32 7 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"amdgpu_virtual_display\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 143, i32 7 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"amdgpu_pp_feature_mask\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 149, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"amdgpu_lbpw\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 152, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"amdgpu_compute_multipipe\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 153, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"amdgpu_gpu_recovery\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 154, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant [22 x i8] c"amdgpu_smu_pptable_id\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 157, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"amdgpu_dc_feature_mask\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 168, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"amdgpu_async_gfx_ring\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 170, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"amdgpu_discovery\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 172, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"amdgpu_noretry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 174, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"amdgpu_force_asic_type\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 175, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"amdgpu_tmz\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 176, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"amdgpu_reset_method\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 178, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"amdgpu_num_kcq\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 179, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant [10 x i8] c"mgpu_info\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 184, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 185, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 186, i32 24 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"amdgpu_ras_enable\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 190, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"amdgpu_ras_mask\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 191, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant [26 x i8] c"amdgpu_bad_page_threshold\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 192, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"amdgpu_watchdog_timer\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 193, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"amdgpu_vram_limit\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 107, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"amdgpu_vis_vram_limit\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 108, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"amdgpu_benchmarking\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 112, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant [15 x i8] c"amdgpu_testing\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 113, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant [21 x i8] c"amdgpu_disp_priority\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 115, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant [14 x i8] c"amdgpu_hw_i2c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 116, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant [18 x i8] c"amdgpu_deep_color\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 126, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"amdgpu_vm_fault_stop\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 130, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"amdgpu_vm_debug\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 131, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant [22 x i8] c"amdgpu_exp_hw_support\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 133, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant [27 x i8] c"amdgpu_force_long_training\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 150, i32 6 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"amdgpu_pcie_gen_cap\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 137, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant [21 x i8] c"amdgpu_pcie_lane_cap\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 138, i32 6 }
@___asan_gen_.234 = private unnamed_addr constant [22 x i8] c"amdgpu_job_hang_limit\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 151, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"amdgpu_emu_mode\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 155, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"amdgpu_si_support\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 579, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"amdgpu_cik_support\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 598, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant [28 x i8] c"amdgpu_smu_memory_pool_size\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 156, i32 6 }
@___asan_gen_.249 = private unnamed_addr constant [12 x i8] c"amdgpu_mcbp\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 171, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant [11 x i8] c"amdgpu_mes\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 173, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant [21 x i8] c"amdgpu_dc_debug_mask\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 169, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"amdgpu_dm_abm_level\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 828, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"amdgpu_backlight\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 832, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant [25 x i8] c"amdgpu_freesync_vid_mode\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 177, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant [23 x i8] c"amdgpu_driver_kms_fops\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2553, i32 37 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2587, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2594, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2588, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2591, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2596, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2597, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2600, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2595, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2601, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2598, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2602, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2603, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2599, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2589, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2592, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2590, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"amdgpu_ioctls_kms\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2586, i32 29 }
@___asan_gen_.321 = private unnamed_addr constant [22 x i8] c"amdgpu_kms_pci_driver\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2654, i32 26 }
@___asan_gen_.324 = private unnamed_addr constant [22 x i8] c"amdgpu_lockup_timeout\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 119, i32 6 }
@___asan_gen_.327 = private unnamed_addr constant [23 x i8] c"amdgpu_smartshift_bias\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 180, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2207, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2237, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2655, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant [10 x i8] c"pciidlist\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1611, i32 35 }
@___asan_gen_.357 = private unnamed_addr constant [23 x i8] c"amdgpu_pci_err_handler\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2635, i32 34 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c"amdgpu_sysfs_groups\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2646, i32 38 }
@___asan_gen_.363 = private unnamed_addr constant [14 x i8] c"amdgpu_pm_ops\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2527, i32 32 }
@___asan_gen_.366 = private unnamed_addr constant [29 x i8] c"amdgpu_unsupported_pciidlist\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 903, i32 18 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2022, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2033, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2046, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2048, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2063, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2065, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant [18 x i8] c"amdgpu_kms_driver\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2606, i32 32 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2107, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2130, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2628, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2629, i32 10 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2501, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.439 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 2680, i32 2 }
@llvm.compiler.used = appending global [345 x ptr] [ptr @__UNIQUE_ID_abmlevel462, ptr @__UNIQUE_ID_abmleveltype463, ptr @__UNIQUE_ID_aspm374, ptr @__UNIQUE_ID_aspmtype375, ptr @__UNIQUE_ID_async_gfx_ring446, ptr @__UNIQUE_ID_async_gfx_ringtype447, ptr @__UNIQUE_ID_audio358, ptr @__UNIQUE_ID_audiotype359, ptr @__UNIQUE_ID_author479, ptr @__UNIQUE_ID_backlight464, ptr @__UNIQUE_ID_backlighttype465, ptr @__UNIQUE_ID_bad_page_threshold472, ptr @__UNIQUE_ID_bad_page_thresholdtype473, ptr @__UNIQUE_ID_bapm380, ptr @__UNIQUE_ID_bapmtype381, ptr @__UNIQUE_ID_benchmark354, ptr @__UNIQUE_ID_benchmarktype355, ptr @__UNIQUE_ID_cg_mask412, ptr @__UNIQUE_ID_cg_masktype413, ptr @__UNIQUE_ID_cik_support442, ptr @__UNIQUE_ID_cik_supporttype443, ptr @__UNIQUE_ID_compute_multipipe426, ptr @__UNIQUE_ID_compute_multipipetype427, ptr @__UNIQUE_ID_dc398, ptr @__UNIQUE_ID_dcdebugmask460, ptr @__UNIQUE_ID_dcdebugmasktype461, ptr @__UNIQUE_ID_dcfeaturemask458, ptr @__UNIQUE_ID_dcfeaturemasktype459, ptr @__UNIQUE_ID_dctype399, ptr @__UNIQUE_ID_deep_color382, ptr @__UNIQUE_ID_deep_colortype383, ptr @__UNIQUE_ID_description480, ptr @__UNIQUE_ID_disable_cu418, ptr @__UNIQUE_ID_disable_cutype419, ptr @__UNIQUE_ID_discovery450, ptr @__UNIQUE_ID_discoverytype451, ptr @__UNIQUE_ID_disp_priority360, ptr @__UNIQUE_ID_disp_prioritytype361, ptr @__UNIQUE_ID_dpm370, ptr @__UNIQUE_ID_dpmtype371, ptr @__UNIQUE_ID_emu_mode430, ptr @__UNIQUE_ID_emu_modetype431, ptr @__UNIQUE_ID_exp_hw_support396, ptr @__UNIQUE_ID_exp_hw_supporttype397, ptr @__UNIQUE_ID_file481, ptr @__UNIQUE_ID_force_asic_type456, ptr @__UNIQUE_ID_force_asic_typetype457, ptr @__UNIQUE_ID_forcelongtraining406, ptr @__UNIQUE_ID_forcelongtrainingtype407, ptr @__UNIQUE_ID_freesync_video468, ptr @__UNIQUE_ID_freesync_videotype469, ptr @__UNIQUE_ID_fw_load_type372, ptr @__UNIQUE_ID_fw_load_typetype373, ptr @__UNIQUE_ID_gartsize348, ptr @__UNIQUE_ID_gartsizetype349, ptr @__UNIQUE_ID_gpu_recovery428, ptr @__UNIQUE_ID_gpu_recoverytype429, ptr @__UNIQUE_ID_gttsize350, ptr @__UNIQUE_ID_gttsizetype351, ptr @__UNIQUE_ID_hw_i2c362, ptr @__UNIQUE_ID_hw_i2ctype363, ptr @__UNIQUE_ID_ip_block_mask378, ptr @__UNIQUE_ID_ip_block_masktype379, ptr @__UNIQUE_ID_job_hang_limit422, ptr @__UNIQUE_ID_job_hang_limittype423, ptr @__UNIQUE_ID_lbpw424, ptr @__UNIQUE_ID_lbpwtype425, ptr @__UNIQUE_ID_license482, ptr @__UNIQUE_ID_lockup_timeout368, ptr @__UNIQUE_ID_lockup_timeouttype369, ptr @__UNIQUE_ID_mcbp448, ptr @__UNIQUE_ID_mcbptype449, ptr @__UNIQUE_ID_mes452, ptr @__UNIQUE_ID_mestype453, ptr @__UNIQUE_ID_moverate352, ptr @__UNIQUE_ID_moveratetype353, ptr @__UNIQUE_ID_msi366, ptr @__UNIQUE_ID_msitype367, ptr @__UNIQUE_ID_noretry454, ptr @__UNIQUE_ID_noretrytype455, ptr @__UNIQUE_ID_num_kcq474, ptr @__UNIQUE_ID_num_kcqtype475, ptr @__UNIQUE_ID_pcie_gen2364, ptr @__UNIQUE_ID_pcie_gen2type365, ptr @__UNIQUE_ID_pcie_gen_cap408, ptr @__UNIQUE_ID_pcie_gen_captype409, ptr @__UNIQUE_ID_pcie_lane_cap410, ptr @__UNIQUE_ID_pcie_lane_captype411, ptr @__UNIQUE_ID_pg_mask414, ptr @__UNIQUE_ID_pg_masktype415, ptr @__UNIQUE_ID_ppfeaturemask404, ptr @__UNIQUE_ID_ppfeaturemasktype405, ptr @__UNIQUE_ID_ras_enable432, ptr @__UNIQUE_ID_ras_enabletype433, ptr @__UNIQUE_ID_ras_mask434, ptr @__UNIQUE_ID_ras_masktype435, ptr @__UNIQUE_ID_reset_method470, ptr @__UNIQUE_ID_reset_methodtype471, ptr @__UNIQUE_ID_runpm376, ptr @__UNIQUE_ID_runpmtype377, ptr @__UNIQUE_ID_sched_hw_submission402, ptr @__UNIQUE_ID_sched_hw_submissiontype403, ptr @__UNIQUE_ID_sched_jobs400, ptr @__UNIQUE_ID_sched_jobstype401, ptr @__UNIQUE_ID_sdma_phase_quantum416, ptr @__UNIQUE_ID_sdma_phase_quantumtype417, ptr @__UNIQUE_ID_si_support440, ptr @__UNIQUE_ID_si_supporttype441, ptr @__UNIQUE_ID_smu_memory_pool_size444, ptr @__UNIQUE_ID_smu_memory_pool_sizetype445, ptr @__UNIQUE_ID_smu_pptable_id476, ptr @__UNIQUE_ID_smu_pptable_idtype477, ptr @__UNIQUE_ID_test356, ptr @__UNIQUE_ID_testtype357, ptr @__UNIQUE_ID_timeout_fatal_disable436, ptr @__UNIQUE_ID_timeout_fatal_disabletype437, ptr @__UNIQUE_ID_timeout_period438, ptr @__UNIQUE_ID_timeout_periodtype439, ptr @__UNIQUE_ID_tmz466, ptr @__UNIQUE_ID_tmztype467, ptr @__UNIQUE_ID_virtual_display420, ptr @__UNIQUE_ID_virtual_displaytype421, ptr @__UNIQUE_ID_vis_vramlimit346, ptr @__UNIQUE_ID_vis_vramlimittype347, ptr @__UNIQUE_ID_vm_block_size388, ptr @__UNIQUE_ID_vm_block_sizetype389, ptr @__UNIQUE_ID_vm_debug392, ptr @__UNIQUE_ID_vm_debugtype393, ptr @__UNIQUE_ID_vm_fault_stop390, ptr @__UNIQUE_ID_vm_fault_stoptype391, ptr @__UNIQUE_ID_vm_fragment_size386, ptr @__UNIQUE_ID_vm_fragment_sizetype387, ptr @__UNIQUE_ID_vm_size384, ptr @__UNIQUE_ID_vm_sizetype385, ptr @__UNIQUE_ID_vm_update_mode394, ptr @__UNIQUE_ID_vm_update_modetype395, ptr @__UNIQUE_ID_vramlimit344, ptr @__UNIQUE_ID_vramlimittype345, ptr @__exitcall_amdgpu_exit, ptr @__initcall__kmod_amdgpu__478_2707_amdgpu_init6, ptr @__param_abmlevel, ptr @__param_aspm, ptr @__param_async_gfx_ring, ptr @__param_audio, ptr @__param_backlight, ptr @__param_bad_page_threshold, ptr @__param_bapm, ptr @__param_benchmark, ptr @__param_cg_mask, ptr @__param_cik_support, ptr @__param_compute_multipipe, ptr @__param_dc, ptr @__param_dcdebugmask, ptr @__param_dcfeaturemask, ptr @__param_deep_color, ptr @__param_disable_cu, ptr @__param_discovery, ptr @__param_disp_priority, ptr @__param_dpm, ptr @__param_emu_mode, ptr @__param_exp_hw_support, ptr @__param_force_asic_type, ptr @__param_forcelongtraining, ptr @__param_freesync_video, ptr @__param_fw_load_type, ptr @__param_gartsize, ptr @__param_gpu_recovery, ptr @__param_gttsize, ptr @__param_hw_i2c, ptr @__param_ip_block_mask, ptr @__param_job_hang_limit, ptr @__param_lbpw, ptr @__param_lockup_timeout, ptr @__param_mcbp, ptr @__param_mes, ptr @__param_moverate, ptr @__param_msi, ptr @__param_noretry, ptr @__param_num_kcq, ptr @__param_pcie_gen2, ptr @__param_pcie_gen_cap, ptr @__param_pcie_lane_cap, ptr @__param_pg_mask, ptr @__param_ppfeaturemask, ptr @__param_ras_enable, ptr @__param_ras_mask, ptr @__param_reset_method, ptr @__param_runpm, ptr @__param_sched_hw_submission, ptr @__param_sched_jobs, ptr @__param_sdma_phase_quantum, ptr @__param_si_support, ptr @__param_smu_memory_pool_size, ptr @__param_smu_pptable_id, ptr @__param_test, ptr @__param_timeout_fatal_disable, ptr @__param_timeout_period, ptr @__param_tmz, ptr @__param_virtual_display, ptr @__param_vis_vramlimit, ptr @__param_vm_block_size, ptr @__param_vm_debug, ptr @__param_vm_fault_stop, ptr @__param_vm_fragment_size, ptr @__param_vm_size, ptr @__param_vm_update_mode, ptr @__param_vramlimit, ptr @amdgpu_drv_delayed_reset_work_handler._entry, ptr @amdgpu_drv_delayed_reset_work_handler._entry_ptr, ptr @amdgpu_exit, ptr @amdgpu_init._entry, ptr @amdgpu_init._entry_ptr, ptr @amdgpu_pci_probe._entry, ptr @amdgpu_pci_probe._entry.29, ptr @amdgpu_pci_probe._entry.33, ptr @amdgpu_pci_probe._entry.36, ptr @amdgpu_pci_probe._entry.39, ptr @amdgpu_pci_probe._entry.42, ptr @amdgpu_pci_probe._entry.45, ptr @amdgpu_pci_probe._entry_ptr, ptr @amdgpu_pci_probe._entry_ptr.32, ptr @amdgpu_pci_probe._entry_ptr.35, ptr @amdgpu_pci_probe._entry_ptr.38, ptr @amdgpu_pci_probe._entry_ptr.41, ptr @amdgpu_pci_probe._entry_ptr.44, ptr @amdgpu_pci_probe._entry_ptr.47, ptr @amdgpu_gart_size, ptr @amdgpu_gtt_size, ptr @amdgpu_moverate, ptr @amdgpu_audio, ptr @amdgpu_pcie_gen2, ptr @amdgpu_msi, ptr @amdgpu_dpm, ptr @amdgpu_fw_load_type, ptr @amdgpu_aspm, ptr @amdgpu_runtime_pm, ptr @amdgpu_ip_block_mask, ptr @amdgpu_bapm, ptr @amdgpu_vm_size, ptr @amdgpu_vm_fragment_size, ptr @amdgpu_vm_block_size, ptr @amdgpu_vm_update_mode, ptr @amdgpu_dc, ptr @amdgpu_sched_jobs, ptr @amdgpu_sched_hw_submission, ptr @amdgpu_cg_mask, ptr @amdgpu_pg_mask, ptr @amdgpu_sdma_phase_quantum, ptr @amdgpu_disable_cu, ptr @amdgpu_virtual_display, ptr @amdgpu_pp_feature_mask, ptr @amdgpu_lbpw, ptr @amdgpu_compute_multipipe, ptr @amdgpu_gpu_recovery, ptr @amdgpu_smu_pptable_id, ptr @amdgpu_dc_feature_mask, ptr @amdgpu_async_gfx_ring, ptr @amdgpu_discovery, ptr @amdgpu_noretry, ptr @amdgpu_force_asic_type, ptr @amdgpu_tmz, ptr @amdgpu_reset_method, ptr @amdgpu_num_kcq, ptr @.str, ptr @mgpu_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @amdgpu_ras_enable, ptr @amdgpu_ras_mask, ptr @amdgpu_bad_page_threshold, ptr @amdgpu_watchdog_timer, ptr @amdgpu_vram_limit, ptr @amdgpu_vis_vram_limit, ptr @amdgpu_benchmarking, ptr @amdgpu_testing, ptr @amdgpu_disp_priority, ptr @amdgpu_hw_i2c, ptr @amdgpu_deep_color, ptr @amdgpu_vm_fault_stop, ptr @amdgpu_vm_debug, ptr @amdgpu_exp_hw_support, ptr @amdgpu_force_long_training, ptr @amdgpu_pcie_gen_cap, ptr @amdgpu_pcie_lane_cap, ptr @amdgpu_job_hang_limit, ptr @amdgpu_emu_mode, ptr @amdgpu_si_support, ptr @amdgpu_cik_support, ptr @amdgpu_smu_memory_pool_size, ptr @amdgpu_mcbp, ptr @amdgpu_mes, ptr @amdgpu_dc_debug_mask, ptr @amdgpu_dm_abm_level, ptr @amdgpu_backlight, ptr @amdgpu_freesync_vid_mode, ptr @amdgpu_driver_kms_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @amdgpu_ioctls_kms, ptr @amdgpu_kms_pci_driver, ptr @amdgpu_lockup_timeout, ptr @amdgpu_smartshift_bias, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pciidlist, ptr @amdgpu_pci_err_handler, ptr @amdgpu_sysfs_groups, ptr @amdgpu_pm_ops, ptr @amdgpu_unsupported_pciidlist, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @amdgpu_kms_driver, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gart_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gtt_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_moverate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_audio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pcie_gen2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_fw_load_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_aspm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_runtime_pm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ip_block_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bapm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_fragment_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_block_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_update_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sched_jobs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sched_hw_submission to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_cg_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pg_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sdma_phase_quantum to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_disable_cu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_virtual_display to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pp_feature_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_lbpw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_compute_multipipe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_gpu_recovery to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_smu_pptable_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dc_feature_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_async_gfx_ring to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_discovery to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_noretry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_force_asic_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_tmz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_reset_method to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_num_kcq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgpu_info to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_watchdog_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vram_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vis_vram_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_benchmarking to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_testing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_disp_priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_hw_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_deep_color to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_fault_stop to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vm_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_exp_hw_support to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_force_long_training to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pcie_gen_cap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pcie_lane_cap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_job_hang_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_emu_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_si_support to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_cik_support to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_smu_memory_pool_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mcbp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dc_debug_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dm_abm_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_backlight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_freesync_vid_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_driver_kms_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ioctls_kms to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_kms_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_lockup_timeout to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_smartshift_bias to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_drv_delayed_reset_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciidlist to i32), i32 9760, i32 12192, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pci_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_sysfs_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_unsupported_pciidlist to i32), i32 1402, i32 1728, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pci_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pci_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pci_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pci_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_kms_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pci_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_drv_delayed_reset_work_handler(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %device_list = alloca %struct.list_head, align 4
  %reset_context = alloca %struct.amdgpu_reset_context, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %device_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %device_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %reset_context) #9
  %1 = getelementptr inbounds %struct.amdgpu_reset_context, ptr %reset_context, i32 0, i32 1
  %2 = getelementptr inbounds %struct.amdgpu_reset_context, ptr %reset_context, i32 0, i32 4
  %3 = getelementptr inbounds i8, ptr %reset_context, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1), i32 noundef 0) #9
  %5 = load i8, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 6), align 4, !range !670
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1)) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  store i8 1, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 6), align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 1)) #9
  %6 = ptrtoint ptr %reset_context to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reset_context, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %2) #9
  %7 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2104.not = icmp eq i32 %7, 0
  br i1 %cmp2104.not, label %if.end.for.end32_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.cond12.preheader:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13106.not = icmp eq i32 %16, 0
  br i1 %cmp13106.not, label %for.cond12.preheader.for.end32_crit_edge, label %for.cond12.preheader.for.body15_crit_edge

for.cond12.preheader.for.body15_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body15

for.cond12.preheader.for.end32_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %i.0105
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %call = call i32 @amdgpu_device_pre_asic_reset(ptr noundef %9, ptr noundef nonnull %reset_context) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %for.body.if.end8_crit_edge, label %do.end

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 8
  %unique = getelementptr inbounds %struct.amdgpu_device, ptr %9, i32 0, i32 2, i32 13
  %13 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unique, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %call, ptr noundef %14) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %for.body.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %15 = load ptr, ptr @system_unbound_wq, align 4
  %xgmi_reset_work = getelementptr inbounds %struct.amdgpu_device, ptr %9, i32 0, i32 147
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %xgmi_reset_work) #9
  %inc = add nuw i32 %i.0105, 1
  %16 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), align 4
  %cmp2 = icmp ult i32 %inc, %16
  br i1 %cmp2, label %if.end8.for.body_crit_edge, label %for.cond12.preheader

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond23.preheader.loopexit:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %phi.cmp = icmp eq i32 %20, 0
  br i1 %phi.cmp, label %for.cond23.preheader.loopexit.for.end32_crit_edge, label %for.cond23.preheader.loopexit.for.body26_crit_edge

for.cond23.preheader.loopexit.for.body26_crit_edge: ; preds = %for.cond23.preheader.loopexit
  br label %for.body26

for.cond23.preheader.loopexit.for.end32_crit_edge: ; preds = %for.cond23.preheader.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond12.preheader.for.body15_crit_edge
  %i.1107 = phi i32 [ %inc21, %for.body15.for.body15_crit_edge ], [ 0, %for.cond12.preheader.for.body15_crit_edge ]
  %arrayidx16 = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %i.1107
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx16, align 4
  %xgmi_reset_work18 = getelementptr inbounds %struct.amdgpu_device, ptr %18, i32 0, i32 147
  %call19 = call zeroext i1 @flush_work(ptr noundef %xgmi_reset_work18) #9
  %pending_reset = getelementptr inbounds %struct.amdgpu_device, ptr %18, i32 0, i32 62, i32 39, i32 9
  %19 = ptrtoint ptr %pending_reset to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %pending_reset, align 1
  %inc21 = add nuw i32 %i.1107, 1
  %20 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), align 4
  %cmp13 = icmp ult i32 %inc21, %20
  br i1 %cmp13, label %for.body15.for.body15_crit_edge, label %for.cond23.preheader.loopexit

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond23.preheader.loopexit.for.body26_crit_edge
  %i.2109 = phi i32 [ %inc31, %for.body26.for.body26_crit_edge ], [ 0, %for.cond23.preheader.loopexit.for.body26_crit_edge ]
  %arrayidx27 = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %i.2109
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx27, align 4
  %call29 = call i32 @amdgpu_xgmi_remove_device(ptr noundef %22) #9
  %inc31 = add nuw i32 %i.2109, 1
  %23 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), align 4
  %cmp24 = icmp ult i32 %inc31, %23
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.for.end32_crit_edge

for.body26.for.end32_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.end32:                                        ; preds = %for.body26.for.end32_crit_edge, %for.cond23.preheader.loopexit.for.end32_crit_edge, %for.cond12.preheader.for.end32_crit_edge, %if.end.for.end32_crit_edge
  %24 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %device_list, ptr %device_list, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %device_list, ptr %0, align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp34110.not = icmp eq i32 %26, 0
  br i1 %cmp34110.not, label %for.end32.for.cond42.preheader_crit_edge, label %for.end32.for.body36_crit_edge

for.end32.for.body36_crit_edge:                   ; preds = %for.end32
  br label %for.body36

for.end32.for.cond42.preheader_crit_edge:         ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %list_add_tail.exit.for.cond42.preheader_crit_edge, %for.end32.for.cond42.preheader_crit_edge
  %27 = ptrtoint ptr %device_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn112 = load ptr, ptr %device_list, align 4
  %cmp44.not113 = icmp eq ptr %.pn112, %device_list
  br i1 %cmp44.not113, label %for.cond42.preheader.for.end53_crit_edge, label %for.cond42.preheader.for.body46_crit_edge

for.cond42.preheader.for.body46_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body46

for.cond42.preheader.for.end53_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.body36:                                       ; preds = %list_add_tail.exit.for.body36_crit_edge, %for.end32.for.body36_crit_edge
  %i.3111 = phi i32 [ %inc40, %list_add_tail.exit.for.body36_crit_edge ], [ 0, %for.end32.for.body36_crit_edge ]
  %arrayidx37 = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %i.3111
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx37, align 4
  %reset_list = getelementptr inbounds %struct.amdgpu_device, ptr %29, i32 0, i32 148
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %reset_list, ptr noundef %31, ptr noundef nonnull %device_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body36.list_add_tail.exit_crit_edge

for.body36.list_add_tail.exit_crit_edge:          ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %reset_list, ptr %0, align 4
  %33 = ptrtoint ptr %reset_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %device_list, ptr %reset_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %29, i32 0, i32 148, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %reset_list, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body36.list_add_tail.exit_crit_edge
  %inc40 = add nuw i32 %i.3111, 1
  %36 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), align 4
  %cmp34 = icmp ult i32 %inc40, %36
  br i1 %cmp34, label %list_add_tail.exit.for.body36_crit_edge, label %list_add_tail.exit.for.cond42.preheader_crit_edge

list_add_tail.exit.for.cond42.preheader_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheader

list_add_tail.exit.for.body36_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.cond42.preheader.for.body46_crit_edge
  %.pn114 = phi ptr [ %.pn, %for.body46.for.body46_crit_edge ], [ %.pn112, %for.cond42.preheader.for.body46_crit_edge ]
  %adev.0 = getelementptr i8, ptr %.pn114, i32 -91412
  call void @amdgpu_unregister_gpu_instance(ptr noundef %adev.0) #9
  %37 = ptrtoint ptr %.pn114 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn114, align 4
  %cmp44.not = icmp eq ptr %.pn, %device_list
  br i1 %cmp44.not, label %for.body46.for.end53_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46

for.body46.for.end53_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.end53:                                        ; preds = %for.body46.for.end53_crit_edge, %for.cond42.preheader.for.end53_crit_edge
  call void @_set_bit(i32 noundef 1, ptr noundef %2) #9
  %call55 = call i32 @amdgpu_do_asic_reset(ptr noundef nonnull %device_list, ptr noundef nonnull %reset_context) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %for.cond59.preheader, label %if.then57

for.cond59.preheader:                             ; preds = %for.end53
  %38 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp60115.not = icmp eq i32 %38, 0
  br i1 %cmp60115.not, label %for.cond59.preheader.cleanup_crit_edge, label %for.cond59.preheader.for.body62_crit_edge

for.cond59.preheader.for.body62_crit_edge:        ; preds = %for.cond59.preheader
  br label %for.body62

for.cond59.preheader.cleanup_crit_edge:           ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #9
  br label %cleanup

for.body62:                                       ; preds = %if.end67.for.body62_crit_edge, %for.cond59.preheader.for.body62_crit_edge
  %i.4116 = phi i32 [ %inc69, %if.end67.for.body62_crit_edge ], [ 0, %for.cond59.preheader.for.body62_crit_edge ]
  %arrayidx63 = getelementptr [16 x %struct.amdgpu_gpu_instance], ptr @mgpu_info, i32 0, i32 %i.4116
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx63, align 4
  %init_complete = getelementptr inbounds %struct.amdgpu_device, ptr %40, i32 0, i32 115, i32 2
  %41 = ptrtoint ptr %init_complete to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %init_complete, align 8, !range !670
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool65.not = icmp eq i8 %42, 0
  br i1 %tobool65.not, label %if.then66, label %for.body62.if.end67_crit_edge

for.body62.if.end67_crit_edge:                    ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then66:                                        ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  call void @amdgpu_amdkfd_device_init(ptr noundef %40) #9
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %for.body62.if.end67_crit_edge
  call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %40, i1 noundef zeroext true) #9
  %inc69 = add nuw i32 %i.4116, 1
  %43 = load i32, ptr getelementptr inbounds (%struct.amdgpu_mgpu_info, ptr @mgpu_info, i32 0, i32 3), align 4
  %cmp60 = icmp ult i32 %inc69, %43
  br i1 %cmp60, label %if.end67.for.body62_crit_edge, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67.for.body62_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body62

cleanup:                                          ; preds = %if.end67.cleanup_crit_edge, %if.then57, %for.cond59.preheader.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %reset_context) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %device_list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_drm_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @drm_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #9
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call.i11 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i11, ptr %last_busy.i, align 8
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call3, %if.end ]
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  %call.i12 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #9
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_file_to_fpriv(ptr noundef readonly %filp, ptr nocapture noundef writeonly %fpriv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %filp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %1, @amdgpu_driver_kms_fops
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv, align 4
  %6 = ptrtoint ptr %fpriv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %fpriv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gem_create_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gem_mmap_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ctx_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_list_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_cs_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_info_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gem_metadata_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gem_wait_idle_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gem_va_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_cs_wait_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gem_op_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gem_userptr_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_cs_wait_fences_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_cs_fence_to_handle_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sched_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_amdkfd_fini() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @amdgpu_kms_pci_driver) #9
  tail call void @amdgpu_sync_fini() #9
  tail call void @amdgpu_fence_slab_fini() #9
  tail call void @mmu_notifier_synchronize() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_amdkfd_fini() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_sync_fini() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_fence_slab_fini() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmu_notifier_synchronize() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_firmware_drivers_only() #9
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @amdgpu_sync_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @amdgpu_fence_slab_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %error_fence

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  %call9 = tail call i32 @amdgpu_amdkfd_init() #9
  %call10 = tail call i32 @__pci_register_driver(ptr noundef nonnull @amdgpu_kms_pci_driver, ptr noundef null, ptr noundef nonnull @.str.26) #9
  br label %cleanup

error_fence:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amdgpu_sync_fini() #9
  br label %cleanup

cleanup:                                          ; preds = %error_fence, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call4, %error_fence ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_pre_asic_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_xgmi_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_unregister_gpu_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_do_asic_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_amdkfd_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_flush(ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %ctx_mgr = getelementptr inbounds %struct.amdgpu_fpriv, ptr %3, i32 0, i32 5
  %call1 = tail call i32 @amdgpu_ctx_mgr_entity_flush(ptr noundef %ctx_mgr, i32 noundef 100) #9
  %call2 = tail call i32 @amdgpu_vm_wait_idle(ptr noundef %3, i32 noundef %call1) #9
  %4 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_show_fdinfo(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ctx_mgr_entity_flush(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vm_wait_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc, 701
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0200 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [701 x i16], ptr @amdgpu_unsupported_pciidlist, i32 0, i32 %i.0200
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %3)
  %cmp2 = icmp eq i16 %5, %3
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr @amdgpu_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp4 = icmp eq i32 %6, -1
  br i1 %cmp4, label %land.lhs.true, label %for.end.if.end7_crit_edge

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %for.end
  %call = tail call zeroext i1 @pcie_aspm_enabled(ptr noundef %pdev) #9
  br i1 %call, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @amdgpu_aspm, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %for.end.if.end7_crit_edge
  %7 = load ptr, ptr @amdgpu_virtual_display, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end7.if.then10_crit_edge

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end7
  %and = and i32 %1, 65535
  %call8 = tail call zeroext i1 @amdgpu_device_asic_has_dc_support(i32 noundef %and) #9
  br i1 %call8, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false.if.end11_crit_edge
  %supports_atomic.0.off0 = phi i1 [ true, %if.then10 ], [ false, %lor.lhs.false.if.end11_crit_edge ]
  %and12 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end18_crit_edge, label %land.lhs.true14

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.end11
  %8 = load i32, ptr @amdgpu_exp_hw_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %do.end, label %land.lhs.true14.if.end18_crit_edge

land.lhs.true14.if.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true14.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %9 = load i32, ptr @amdgpu_si_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool30.not = icmp eq i32 %9, 0
  %trunc = trunc i32 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %trunc)
  %switch = icmp ult i16 %trunc, 5
  %or.cond = select i1 %tobool30.not, i1 %switch, i1 false
  br i1 %or.cond, label %do.end35, label %if.end41

do.end35:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.34) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end18
  %10 = load i32, ptr @amdgpu_cik_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool42.not = icmp eq i32 %10, 0
  %trunc193.off = add i16 %trunc, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %trunc193.off)
  %switch194 = icmp ult i16 %trunc193.off, 5
  %or.cond195 = select i1 %tobool42.not, i1 %switch194, i1 false
  br i1 %or.cond195, label %do.end48, label %if.end55

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.40) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end55:                                         ; preds = %if.end41
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 12) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end55.amdgpu_is_fw_framebuffer.exit_crit_edge, label %if.end.i

if.end55.amdgpu_is_fw_framebuffer.exit_crit_edge: ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_is_fw_framebuffer.exit

if.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp59 = icmp eq i32 %14, 0
  %sub = sub i32 1, %12
  %add = add i32 %sub, %14
  %cond = select i1 %cmp59, i32 0, i32 %add
  %16 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call7.i.i.i.i, align 8
  %ranges.i = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %ranges.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %ranges.i, align 4
  %size4.i = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i.i, i32 2
  %18 = ptrtoint ptr %size4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %size4.i, align 8
  %call5.i = tail call zeroext i1 @is_firmware_framebuffer(ptr noundef nonnull %call7.i.i.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %amdgpu_is_fw_framebuffer.exit

amdgpu_is_fw_framebuffer.exit:                    ; preds = %if.end.i, %if.end55.amdgpu_is_fw_framebuffer.exit_crit_edge
  %retval.0.i = phi i1 [ %call5.i, %if.end.i ], [ false, %if.end55.amdgpu_is_fw_framebuffer.exit_crit_edge ]
  %frombool = zext i1 %retval.0.i to i8
  %call68 = tail call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef nonnull @amdgpu_kms_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %amdgpu_is_fw_framebuffer.exit.cleanup_crit_edge

amdgpu_is_fw_framebuffer.exit.cleanup_crit_edge:  ; preds = %amdgpu_is_fw_framebuffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end71:                                         ; preds = %amdgpu_is_fw_framebuffer.exit
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call73 = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev72, ptr noundef nonnull @amdgpu_kms_driver, i32 noundef 92928, i32 noundef 8) #9
  %cmp.i = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end77:                                         ; preds = %if.end71
  %20 = ptrtoint ptr %call73 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev72, ptr %call73, align 8
  %pdev80 = getelementptr inbounds %struct.amdgpu_device, ptr %call73, i32 0, i32 1
  %21 = ptrtoint ptr %pdev80 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdev, ptr %pdev80, align 4
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %call73, i32 0, i32 2
  %is_fw_fb83 = getelementptr inbounds %struct.amdgpu_device, ptr %call73, i32 0, i32 158
  %22 = ptrtoint ptr %is_fw_fb83 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %is_fw_fb83, align 1
  br i1 %supports_atomic.0.off0, label %if.end77.if.end88_crit_edge, label %if.then86

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then86:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %driver_features = getelementptr inbounds %struct.amdgpu_device, ptr %call73, i32 0, i32 2, i32 10
  %23 = ptrtoint ptr %driver_features to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_features, align 4
  %and87 = and i32 %24, -17
  store i32 %and87, ptr %driver_features, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end77.if.end88_crit_edge
  %call89 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end92:                                         ; preds = %if.end88
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ddev.i, ptr %driver_data.i.i, align 4
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %driver_data, align 4
  %call94 = tail call i32 @amdgpu_driver_load_kms(ptr noundef %call73, i32 noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %retry_init.preheader, label %if.end92.err_pci_crit_edge

if.end92.err_pci_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci

retry_init.preheader:                             ; preds = %if.end92
  %28 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data, align 4
  %call99 = tail call i32 @drm_dev_register(ptr noundef %ddev.i, i32 noundef %29) #9
  %30 = zext i32 %call99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call99, label %retry_init.preheader.err_pci_crit_edge [
    i32 -11, label %land.lhs.true102
    i32 0, label %retry_init.preheader.if.end115_crit_edge
  ]

retry_init.preheader.if.end115_crit_edge:         ; preds = %retry_init.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

retry_init.preheader.err_pci_crit_edge:           ; preds = %retry_init.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci

land.lhs.true102:                                 ; preds = %retry_init.preheader
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef 1) #12
  tail call void @msleep(i32 noundef 5000) #9
  %31 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %driver_data, align 4
  %call99.1 = tail call i32 @drm_dev_register(ptr noundef %ddev.i, i32 noundef %32) #9
  %33 = zext i32 %call99.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call99.1, label %land.lhs.true102.err_pci_crit_edge [
    i32 -11, label %land.lhs.true102.1
    i32 0, label %land.lhs.true102.if.end115_crit_edge
  ]

land.lhs.true102.if.end115_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

land.lhs.true102.err_pci_crit_edge:               ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci

land.lhs.true102.1:                               ; preds = %land.lhs.true102
  %call111.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef 2) #12
  tail call void @msleep(i32 noundef 5000) #9
  %34 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %driver_data, align 4
  %call99.2 = tail call i32 @drm_dev_register(ptr noundef %ddev.i, i32 noundef %35) #9
  %36 = zext i32 %call99.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call99.2, label %land.lhs.true102.1.err_pci_crit_edge [
    i32 -11, label %land.lhs.true102.2
    i32 0, label %land.lhs.true102.1.if.end115_crit_edge
  ]

land.lhs.true102.1.if.end115_crit_edge:           ; preds = %land.lhs.true102.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

land.lhs.true102.1.err_pci_crit_edge:             ; preds = %land.lhs.true102.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci

land.lhs.true102.2:                               ; preds = %land.lhs.true102.1
  %call111.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef 3) #12
  tail call void @msleep(i32 noundef 5000) #9
  %37 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_data, align 4
  %call99.3 = tail call i32 @drm_dev_register(ptr noundef %ddev.i, i32 noundef %38) #9
  %39 = zext i32 %call99.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call99.3, label %land.lhs.true102.2.err_pci_crit_edge [
    i32 -11, label %land.lhs.true102.3
    i32 0, label %land.lhs.true102.2.if.end115_crit_edge
  ]

land.lhs.true102.2.if.end115_crit_edge:           ; preds = %land.lhs.true102.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

land.lhs.true102.2.err_pci_crit_edge:             ; preds = %land.lhs.true102.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci

land.lhs.true102.3:                               ; preds = %land.lhs.true102.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci

if.end115:                                        ; preds = %land.lhs.true102.2.if.end115_crit_edge, %land.lhs.true102.1.if.end115_crit_edge, %land.lhs.true102.if.end115_crit_edge, %retry_init.preheader.if.end115_crit_edge
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %call73, i32 0, i32 79, i32 2
  %40 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mode_config_initialized, align 8, !range !670
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool116.not = icmp eq i8 %41, 0
  br i1 %tobool116.not, label %if.end115.if.end130_crit_edge, label %land.lhs.true118

if.end115.if.end130_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

land.lhs.true118:                                 ; preds = %if.end115
  %connector_list = getelementptr inbounds %struct.amdgpu_device, ptr %call73, i32 0, i32 2, i32 30, i32 12
  %42 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %connector_list, align 4
  %cmp.i197.not = icmp eq ptr %43, %connector_list
  br i1 %cmp.i197.not, label %land.lhs.true118.if.end130_crit_edge, label %if.then122

land.lhs.true118.if.end130_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then122:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #11
  %real_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %call73, i32 0, i32 62, i32 15
  %44 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %real_vram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554433, i64 %45)
  %cmp123 = icmp ult i64 %45, 33554433
  %. = select i1 %cmp123, i32 8, i32 32
  tail call void @drm_fbdev_generic_setup(ptr noundef %ddev.i, i32 noundef %.) #9
  br label %if.end130

if.end130:                                        ; preds = %if.then122, %land.lhs.true118.if.end130_crit_edge, %if.end115.if.end130_crit_edge
  %call131 = tail call i32 @amdgpu_debugfs_init(ptr noundef %call73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end130.cleanup_crit_edge, label %if.then133

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %call131) #9
  br label %cleanup

err_pci:                                          ; preds = %land.lhs.true102.3, %land.lhs.true102.2.err_pci_crit_edge, %land.lhs.true102.1.err_pci_crit_edge, %land.lhs.true102.err_pci_crit_edge, %retry_init.preheader.err_pci_crit_edge, %if.end92.err_pci_crit_edge
  %ret.0 = phi i32 [ %call94, %if.end92.err_pci_crit_edge ], [ %call99, %retry_init.preheader.err_pci_crit_edge ], [ %call99.1, %land.lhs.true102.err_pci_crit_edge ], [ %call99.2, %land.lhs.true102.1.err_pci_crit_edge ], [ %call99.3, %land.lhs.true102.2.err_pci_crit_edge ], [ -11, %land.lhs.true102.3 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pci, %if.then133, %if.end130.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.then75, %amdgpu_is_fw_framebuffer.exit.cleanup_crit_edge, %do.end48, %do.end35, %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then75 ], [ %ret.0, %err_pci ], [ -19, %do.end48 ], [ -19, %do.end35 ], [ -19, %do.end ], [ %call68, %amdgpu_is_fw_framebuffer.exit.cleanup_crit_edge ], [ %call89, %if.end88.cleanup_crit_edge ], [ 0, %if.then133 ], [ 0, %if.end130.cleanup_crit_edge ], [ -19, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unplug(ptr noundef %1) #9
  tail call void @amdgpu_driver_unload_kms(ptr noundef %1) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %call1 = tail call i32 @pci_wait_for_pending_transaction(ptr noundef %pdev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_pci_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %2 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %virt = getelementptr i8, ptr %1, i32 90272
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mp1_state = getelementptr i8, ptr %1, i32 91024
  %5 = ptrtoint ptr %mp1_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %mp1_state, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @amdgpu_device_ip_suspend(ptr noundef %add.ptr.i) #9
  %mp1_state6 = getelementptr i8, ptr %1, i32 91024
  %6 = ptrtoint ptr %mp1_state6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mp1_state6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_aspm_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_asic_has_dc_support(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_driver_load_kms(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_firmware_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_driver_open_kms(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_driver_postclose_kms(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_driver_lastclose_kms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_driver_release_kms(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_gem_prime_import(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_mode_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_mode_dumb_mmap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_driver_unload_kms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wait_for_pending_transaction(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_pci_error_detected(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_pci_mmio_enabled(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_pci_slot_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pci_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_prepare(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call zeroext i1 @amdgpu_device_supports_boco(ptr noundef %1) #9
  br i1 %call2, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %land.rhs.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  %phi.cast = zext i1 %tobool.not.i to i32
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %phi.cast, %land.rhs.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amdgpu_pmops_complete(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %in_s3 = getelementptr i8, ptr %1, i32 91014
  %2 = ptrtoint ptr %in_s3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %in_s3, align 2
  %call3 = tail call i32 @amdgpu_device_suspend(ptr noundef %1, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %in_s0ix6 = getelementptr i8, ptr %1, i32 91016
  %3 = ptrtoint ptr %in_s0ix6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_s0ix6, align 8, !range !670
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %asic_funcs = getelementptr i8, ptr %1, i32 2388
  %5 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic_funcs, align 4
  %reset = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset, align 4
  %call9 = tail call i32 %8(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call9, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %call2 = tail call zeroext i1 @pci_device_is_present(ptr noundef %3) #9
  br i1 %call2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %no_hw_access = getelementptr i8, ptr %1, i32 91660
  %4 = ptrtoint ptr %no_hw_access to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %no_hw_access, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @amdgpu_device_resume(ptr noundef %1, i1 noundef zeroext true) #9
  %in_s3 = getelementptr i8, ptr %1, i32 91014
  %5 = ptrtoint ptr %in_s3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %in_s3, align 2
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_freeze(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_s4 = getelementptr i8, ptr %1, i32 91015
  %2 = ptrtoint ptr %in_s4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %in_s4, align 1
  %call2 = tail call i32 @amdgpu_device_suspend(ptr noundef %1, i1 noundef zeroext true) #9
  %3 = ptrtoint ptr %in_s4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %in_s4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %asic_funcs = getelementptr i8, ptr %1, i32 2388
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 4
  %reset = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %call4 = tail call i32 %7(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_thaw(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @amdgpu_device_resume(ptr noundef %1, i1 noundef zeroext true) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_poweroff(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @amdgpu_device_suspend(ptr noundef %1, i1 noundef zeroext true) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_restore(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @amdgpu_device_resume(ptr noundef %1, i1 noundef zeroext true) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %runpm = getelementptr i8, ptr %1, i32 91472
  %2 = ptrtoint ptr %runpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %runpm, align 8, !range !670
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pm_runtime_forbid(ptr noundef %dev) #9
  br label %cleanup43

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry.for.body_crit_edge
  %i.076 = phi i32 [ %inc, %for.inc.critedge.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %add.ptr.i, i32 0, i32 90, i32 %i.076
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.for.inc.critedge_crit_edge, label %land.lhs.true

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  %ready = getelementptr inbounds %struct.amdgpu_ring, ptr %5, i32 0, i32 3, i32 17
  %6 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ready, align 4, !range !670
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.for.inc.critedge_crit_edge, label %if.then4

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.critedge

if.then4:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @amdgpu_fence_wait_empty(ptr noundef nonnull %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.for.inc.critedge_crit_edge, label %if.then4.cleanup43_crit_edge

if.then4.cleanup43_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup43

if.then4.for.inc.critedge_crit_edge:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.critedge

for.inc.critedge:                                 ; preds = %if.then4.for.inc.critedge_crit_edge, %land.lhs.true.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.critedge
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %8 = ptrtoint ptr %in_runpm to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %in_runpm, align 1
  %call10 = tail call zeroext i1 @amdgpu_device_supports_px(ptr noundef %1) #9
  br i1 %call10, label %if.then11, label %for.end.if.end12_crit_edge

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %9 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %switch_power_state, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end.if.end12_crit_edge
  %call13 = tail call zeroext i1 @amdgpu_device_supports_boco(ptr noundef %1) #9
  br i1 %call13, label %if.then14, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %mp1_state = getelementptr i8, ptr %1, i32 91024
  %10 = ptrtoint ptr %mp1_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %mp1_state, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %call16 = tail call i32 @amdgpu_device_suspend(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.end15
  %11 = ptrtoint ptr %in_runpm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %in_runpm, align 1
  %call20 = tail call zeroext i1 @amdgpu_device_supports_boco(ptr noundef %1) #9
  br i1 %call20, label %if.then21, label %if.then18.cleanup43_crit_edge

if.then18.cleanup43_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup43

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %mp1_state22 = getelementptr i8, ptr %1, i32 91024
  %12 = ptrtoint ptr %mp1_state22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mp1_state22, align 8
  br label %cleanup43

if.end24:                                         ; preds = %if.end15
  %call25 = tail call zeroext i1 @amdgpu_device_supports_boco(ptr noundef %1) #9
  br i1 %call25, label %if.then26, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %mp1_state27 = getelementptr i8, ptr %1, i32 91024
  %13 = ptrtoint ptr %mp1_state27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mp1_state27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %call29 = tail call zeroext i1 @amdgpu_device_supports_px(ptr noundef %1) #9
  br i1 %call29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call zeroext i1 @amdgpu_device_cache_pci_state(ptr noundef %add.ptr) #9
  tail call void @pci_disable_device(ptr noundef %add.ptr) #9
  tail call void @pci_ignore_hotplug(ptr noundef %add.ptr) #9
  %call32 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 4) #9
  %switch_power_state33 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %14 = ptrtoint ptr %switch_power_state33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %switch_power_state33, align 4
  br label %cleanup43

if.else:                                          ; preds = %if.end28
  %call34 = tail call zeroext i1 @amdgpu_device_supports_boco(ptr noundef %1) #9
  br i1 %call34, label %if.else.cleanup43_crit_edge, label %if.else36

if.else.cleanup43_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup43

if.else36:                                        ; preds = %if.else
  %call37 = tail call zeroext i1 @amdgpu_device_supports_baco(ptr noundef %1) #9
  br i1 %call37, label %if.then38, label %if.else36.cleanup43_crit_edge

if.else36.cleanup43_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup43

if.then38:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 @amdgpu_device_baco_enter(ptr noundef %1) #9
  br label %cleanup43

cleanup43:                                        ; preds = %if.then38, %if.else36.cleanup43_crit_edge, %if.else.cleanup43_crit_edge, %if.then30, %if.then21, %if.then18.cleanup43_crit_edge, %if.then4.cleanup43_crit_edge, %if.then
  %retval.2 = phi i32 [ -16, %if.then ], [ %call16, %if.then21 ], [ %call16, %if.then18.cleanup43_crit_edge ], [ 0, %if.else.cleanup43_crit_edge ], [ 0, %if.then38 ], [ 0, %if.else36.cleanup43_crit_edge ], [ 0, %if.then30 ], [ -16, %if.then4.cleanup43_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %runpm = getelementptr i8, ptr %1, i32 91472
  %2 = ptrtoint ptr %runpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %runpm, align 8, !range !670
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev2, align 4
  %call3 = tail call zeroext i1 @pci_device_is_present(ptr noundef %5) #9
  br i1 %call3, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %no_hw_access = getelementptr i8, ptr %1, i32 91660
  %6 = ptrtoint ptr %no_hw_access to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %no_hw_access, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call zeroext i1 @amdgpu_device_supports_px(ptr noundef %1) #9
  br i1 %call6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %switch_power_state, align 4
  %call8 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #9
  %call9 = tail call zeroext i1 @amdgpu_device_load_pci_state(ptr noundef %add.ptr) #9
  %call10 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_set_master(ptr noundef %add.ptr) #9
  br label %if.end22

if.else:                                          ; preds = %if.end5
  %call14 = tail call zeroext i1 @amdgpu_device_supports_boco(ptr noundef %1) #9
  br i1 %call14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_set_master(ptr noundef %add.ptr) #9
  br label %if.end22

if.else16:                                        ; preds = %if.else
  %call17 = tail call zeroext i1 @amdgpu_device_supports_baco(ptr noundef %1) #9
  br i1 %call17, label %if.then18, label %if.else16.if.end22_crit_edge

if.else16.if.end22_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then18:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @amdgpu_device_baco_exit(ptr noundef %1) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.else16.if.end22_crit_edge, %if.then15, %if.end13
  %call23 = tail call i32 @amdgpu_device_resume(ptr noundef %1, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = tail call zeroext i1 @amdgpu_device_supports_px(ptr noundef %1) #9
  br i1 %call27, label %if.then28, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %switch_power_state29 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %8 = ptrtoint ptr %switch_power_state29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %switch_power_state29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %in_runpm = getelementptr i8, ptr %1, i32 91473
  %9 = ptrtoint ptr %in_runpm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %in_runpm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end22.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.then7.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_pmops_runtime_idle(ptr noundef %dev) #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runpm = getelementptr i8, ptr %1, i32 91472
  %2 = ptrtoint ptr %runpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %runpm, align 8, !range !670
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pm_runtime_forbid(ptr noundef %dev) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %add.ptr.i) #9
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then3
  %.pn.in = phi ptr [ %crtc_list, %if.then3 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.cond.if.end35_crit_edge, label %for.body

for.cond.if.end35_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

for.body:                                         ; preds = %for.cond
  %mutex = getelementptr i8, ptr %.pn, i32 12
  %call6 = tail call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef null) #9
  %state = getelementptr i8, ptr %.pn, i32 716
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %active, align 1, !range !670
  %tobool7.not = icmp eq i8 %8, 0
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #9
  br i1 %tobool7.not, label %for.body.for.cond_crit_edge, label %for.body.if.then34_crit_edge

for.body.if.then34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #9
  %9 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !671
  %10 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !671
  %mode_config19 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config19, i32 noundef 0) #9
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 1
  %call22 = tail call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #9
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %iter) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.else
  %call23 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #9
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %while.cond.if.end32_crit_edge, label %while.body

while.cond.if.end32_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.body:                                       ; preds = %while.cond
  %dpms = getelementptr inbounds %struct.drm_connector, ptr %call23, i32 0, i32 34
  %12 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dpms, align 8
  %cmp25 = icmp eq i32 %13, 0
  br i1 %cmp25, label %while.body.if.end32_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end32:                                         ; preds = %while.body.if.end32_crit_edge, %while.cond.if.end32_crit_edge
  %ret.3 = phi i32 [ 1, %while.cond.if.end32_crit_edge ], [ -16, %while.body.if.end32_crit_edge ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter) #9
  call void @drm_modeset_unlock(ptr noundef %connection_mutex) #9
  call void @mutex_unlock(ptr noundef %mode_config19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #9
  br i1 %tobool24.not, label %if.end32.if.end35_crit_edge, label %if.end32.if.then34_crit_edge

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.end32.if.then34_crit_edge, %for.body.if.then34_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge, %for.cond.if.end35_crit_edge
  %ret.459 = phi i32 [ -16, %if.then34 ], [ %ret.3, %if.end32.if.end35_crit_edge ], [ 1, %for.cond.if.end35_crit_edge ]
  %call.i = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i56 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then
  %retval.0 = phi i32 [ %ret.459, %if.end35 ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_supports_boco(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_device_is_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_supports_px(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_cache_pci_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ignore_hotplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_supports_baco(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_baco_enter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_load_pci_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_baco_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_dc_support(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_slab_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_amdkfd_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !100, !102, !104, !105, !107, !109, !110, !112, !114, !115, !117, !119, !120, !122, !124, !125, !127, !129, !130, !132, !134, !135, !137, !139, !140, !142, !144, !145, !147, !149, !150, !152, !154, !155, !157, !159, !160, !162, !164, !165, !167, !169, !170, !172, !174, !175, !177, !179, !180, !182, !184, !185, !187, !189, !190, !192, !194, !195, !197, !199, !200, !202, !204, !205, !207, !209, !210, !212, !214, !215, !217, !219, !220, !222, !224, !225, !227, !229, !230, !232, !234, !235, !237, !239, !240, !242, !244, !245, !247, !249, !250, !252, !254, !255, !257, !259, !260, !262, !264, !265, !267, !269, !270, !272, !274, !275, !277, !279, !280, !282, !284, !285, !287, !289, !290, !292, !294, !295, !297, !299, !300, !302, !304, !305, !307, !309, !310, !312, !314, !315, !317, !319, !320, !322, !324, !325, !327, !329, !330, !332, !334, !336, !337, !339, !341, !343, !344, !346, !348, !349, !351, !353, !354, !356, !358, !359, !361, !363, !364, !366, !368, !369, !371, !373, !374, !376, !378, !379, !381, !383, !384, !386, !388, !389, !391, !393, !394, !396, !398, !400, !401, !403, !405, !406, !408, !410, !411, !413, !415, !416, !418, !420, !421, !423, !425, !426, !428, !430, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !592, !593, !594, !595, !596, !597, !598, !600, !602, !604, !606, !608, !610, !611, !612, !613, !615, !616, !617, !618, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !634, !636, !637, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !659, !660}
!llvm.module.flags = !{!661, !662, !663, !664, !665, !666, !667, !668}
!llvm.ident = !{!669}

!0 = !{ptr @amdgpu_gart_size, !1, !"amdgpu_gart_size", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 109, i32 5}
!2 = !{ptr @amdgpu_gtt_size, !3, !"amdgpu_gtt_size", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 110, i32 5}
!4 = !{ptr @amdgpu_moverate, !5, !"amdgpu_moverate", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 111, i32 5}
!6 = !{ptr @amdgpu_audio, !7, !"amdgpu_audio", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 114, i32 5}
!8 = !{ptr @amdgpu_pcie_gen2, !9, !"amdgpu_pcie_gen2", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 117, i32 5}
!10 = !{ptr @amdgpu_msi, !11, !"amdgpu_msi", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 118, i32 5}
!12 = !{ptr @amdgpu_dpm, !13, !"amdgpu_dpm", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 120, i32 5}
!14 = !{ptr @amdgpu_fw_load_type, !15, !"amdgpu_fw_load_type", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 121, i32 5}
!16 = !{ptr @amdgpu_aspm, !17, !"amdgpu_aspm", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 122, i32 5}
!18 = !{ptr @amdgpu_runtime_pm, !19, !"amdgpu_runtime_pm", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 123, i32 5}
!20 = !{ptr @amdgpu_ip_block_mask, !21, !"amdgpu_ip_block_mask", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 124, i32 6}
!22 = !{ptr @amdgpu_bapm, !23, !"amdgpu_bapm", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 125, i32 5}
!24 = !{ptr @amdgpu_vm_size, !25, !"amdgpu_vm_size", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 127, i32 5}
!26 = !{ptr @amdgpu_vm_fragment_size, !27, !"amdgpu_vm_fragment_size", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 128, i32 5}
!28 = !{ptr @amdgpu_vm_block_size, !29, !"amdgpu_vm_block_size", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 129, i32 5}
!30 = !{ptr @amdgpu_vm_update_mode, !31, !"amdgpu_vm_update_mode", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 132, i32 5}
!32 = !{ptr @amdgpu_dc, !33, !"amdgpu_dc", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 134, i32 5}
!34 = !{ptr @amdgpu_sched_jobs, !35, !"amdgpu_sched_jobs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 135, i32 5}
!36 = !{ptr @amdgpu_sched_hw_submission, !37, !"amdgpu_sched_hw_submission", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 136, i32 5}
!38 = !{ptr @amdgpu_cg_mask, !39, !"amdgpu_cg_mask", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 139, i32 6}
!40 = !{ptr @amdgpu_pg_mask, !41, !"amdgpu_pg_mask", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 140, i32 6}
!42 = !{ptr @amdgpu_sdma_phase_quantum, !43, !"amdgpu_sdma_phase_quantum", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 141, i32 6}
!44 = !{ptr @amdgpu_disable_cu, !45, !"amdgpu_disable_cu", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 142, i32 7}
!46 = !{ptr @amdgpu_virtual_display, !47, !"amdgpu_virtual_display", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 143, i32 7}
!48 = !{ptr @amdgpu_pp_feature_mask, !49, !"amdgpu_pp_feature_mask", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 149, i32 6}
!50 = !{ptr @amdgpu_lbpw, !51, !"amdgpu_lbpw", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 152, i32 5}
!52 = !{ptr @amdgpu_compute_multipipe, !53, !"amdgpu_compute_multipipe", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 153, i32 5}
!54 = !{ptr @amdgpu_gpu_recovery, !55, !"amdgpu_gpu_recovery", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 154, i32 5}
!56 = !{ptr @amdgpu_smu_pptable_id, !57, !"amdgpu_smu_pptable_id", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 157, i32 5}
!58 = !{ptr @amdgpu_dc_feature_mask, !59, !"amdgpu_dc_feature_mask", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 168, i32 6}
!60 = !{ptr @amdgpu_async_gfx_ring, !61, !"amdgpu_async_gfx_ring", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 170, i32 5}
!62 = !{ptr @amdgpu_discovery, !63, !"amdgpu_discovery", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 172, i32 5}
!64 = !{ptr @amdgpu_noretry, !65, !"amdgpu_noretry", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 174, i32 5}
!66 = !{ptr @amdgpu_force_asic_type, !67, !"amdgpu_force_asic_type", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 175, i32 5}
!68 = !{ptr @amdgpu_tmz, !69, !"amdgpu_tmz", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 176, i32 5}
!70 = !{ptr @amdgpu_reset_method, !71, !"amdgpu_reset_method", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 178, i32 5}
!72 = !{ptr @amdgpu_num_kcq, !73, !"amdgpu_num_kcq", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 179, i32 5}
!74 = !{ptr @.str, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 185, i32 11}
!76 = !{ptr @.str.1, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.2, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 186, i32 24}
!79 = !{ptr @.str.3, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mgpu_info, !81, !"mgpu_info", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 184, i32 25}
!82 = !{ptr @amdgpu_ras_enable, !83, !"amdgpu_ras_enable", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 190, i32 5}
!84 = !{ptr @amdgpu_ras_mask, !85, !"amdgpu_ras_mask", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 191, i32 6}
!86 = !{ptr @amdgpu_bad_page_threshold, !87, !"amdgpu_bad_page_threshold", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 192, i32 5}
!88 = !{ptr @amdgpu_watchdog_timer, !89, !"amdgpu_watchdog_timer", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 193, i32 30}
!90 = !{ptr @__UNIQUE_ID_vramlimit344, !91, !"__UNIQUE_ID_vramlimit344", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 202, i32 1}
!92 = !{ptr @__param_vramlimit, !93, !"__param_vramlimit", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 203, i32 1}
!94 = !{ptr @__UNIQUE_ID_vramlimittype345, !93, !"__UNIQUE_ID_vramlimittype345", i1 false, i1 false}
!95 = !{ptr @__UNIQUE_ID_vis_vramlimit346, !96, !"__UNIQUE_ID_vis_vramlimit346", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 209, i32 1}
!97 = !{ptr @__param_vis_vramlimit, !98, !"__param_vis_vramlimit", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 210, i32 1}
!99 = !{ptr @__UNIQUE_ID_vis_vramlimittype347, !98, !"__UNIQUE_ID_vis_vramlimittype347", i1 false, i1 false}
!100 = !{ptr @__UNIQUE_ID_gartsize348, !101, !"__UNIQUE_ID_gartsize348", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 216, i32 1}
!102 = !{ptr @__param_gartsize, !103, !"__param_gartsize", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 217, i32 1}
!104 = !{ptr @__UNIQUE_ID_gartsizetype349, !103, !"__UNIQUE_ID_gartsizetype349", i1 false, i1 false}
!105 = !{ptr @__UNIQUE_ID_gttsize350, !106, !"__UNIQUE_ID_gttsize350", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 224, i32 1}
!107 = !{ptr @__param_gttsize, !108, !"__param_gttsize", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 225, i32 1}
!109 = !{ptr @__UNIQUE_ID_gttsizetype351, !108, !"__UNIQUE_ID_gttsizetype351", i1 false, i1 false}
!110 = !{ptr @__UNIQUE_ID_moverate352, !111, !"__UNIQUE_ID_moverate352", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 231, i32 1}
!112 = !{ptr @__param_moverate, !113, !"__param_moverate", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 232, i32 1}
!114 = !{ptr @__UNIQUE_ID_moveratetype353, !113, !"__UNIQUE_ID_moveratetype353", i1 false, i1 false}
!115 = !{ptr @__UNIQUE_ID_benchmark354, !116, !"__UNIQUE_ID_benchmark354", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 238, i32 1}
!117 = !{ptr @__param_benchmark, !118, !"__param_benchmark", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 239, i32 1}
!119 = !{ptr @__UNIQUE_ID_benchmarktype355, !118, !"__UNIQUE_ID_benchmarktype355", i1 false, i1 false}
!120 = !{ptr @__UNIQUE_ID_test356, !121, !"__UNIQUE_ID_test356", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 245, i32 1}
!122 = !{ptr @__param_test, !123, !"__param_test", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 246, i32 1}
!124 = !{ptr @__UNIQUE_ID_testtype357, !123, !"__UNIQUE_ID_testtype357", i1 false, i1 false}
!125 = !{ptr @__UNIQUE_ID_audio358, !126, !"__UNIQUE_ID_audio358", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 252, i32 1}
!127 = !{ptr @__param_audio, !128, !"__param_audio", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 253, i32 1}
!129 = !{ptr @__UNIQUE_ID_audiotype359, !128, !"__UNIQUE_ID_audiotype359", i1 false, i1 false}
!130 = !{ptr @__UNIQUE_ID_disp_priority360, !131, !"__UNIQUE_ID_disp_priority360", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 259, i32 1}
!132 = !{ptr @__param_disp_priority, !133, !"__param_disp_priority", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 260, i32 1}
!134 = !{ptr @__UNIQUE_ID_disp_prioritytype361, !133, !"__UNIQUE_ID_disp_prioritytype361", i1 false, i1 false}
!135 = !{ptr @__UNIQUE_ID_hw_i2c362, !136, !"__UNIQUE_ID_hw_i2c362", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 266, i32 1}
!137 = !{ptr @__param_hw_i2c, !138, !"__param_hw_i2c", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 267, i32 1}
!139 = !{ptr @__UNIQUE_ID_hw_i2ctype363, !138, !"__UNIQUE_ID_hw_i2ctype363", i1 false, i1 false}
!140 = !{ptr @__UNIQUE_ID_pcie_gen2364, !141, !"__UNIQUE_ID_pcie_gen2364", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 273, i32 1}
!142 = !{ptr @__param_pcie_gen2, !143, !"__param_pcie_gen2", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 274, i32 1}
!144 = !{ptr @__UNIQUE_ID_pcie_gen2type365, !143, !"__UNIQUE_ID_pcie_gen2type365", i1 false, i1 false}
!145 = !{ptr @__UNIQUE_ID_msi366, !146, !"__UNIQUE_ID_msi366", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 280, i32 1}
!147 = !{ptr @__param_msi, !148, !"__param_msi", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 281, i32 1}
!149 = !{ptr @__UNIQUE_ID_msitype367, !148, !"__UNIQUE_ID_msitype367", i1 false, i1 false}
!150 = !{ptr @__UNIQUE_ID_lockup_timeout368, !151, !"__UNIQUE_ID_lockup_timeout368", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 299, i32 1}
!152 = !{ptr @__param_lockup_timeout, !153, !"__param_lockup_timeout", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 304, i32 1}
!154 = !{ptr @__UNIQUE_ID_lockup_timeouttype369, !153, !"__UNIQUE_ID_lockup_timeouttype369", i1 false, i1 false}
!155 = !{ptr @__UNIQUE_ID_dpm370, !156, !"__UNIQUE_ID_dpm370", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 312, i32 1}
!157 = !{ptr @__param_dpm, !158, !"__param_dpm", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 313, i32 1}
!159 = !{ptr @__UNIQUE_ID_dpmtype371, !158, !"__UNIQUE_ID_dpmtype371", i1 false, i1 false}
!160 = !{ptr @__UNIQUE_ID_fw_load_type372, !161, !"__UNIQUE_ID_fw_load_type372", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 322, i32 1}
!162 = !{ptr @__param_fw_load_type, !163, !"__param_fw_load_type", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 323, i32 1}
!164 = !{ptr @__UNIQUE_ID_fw_load_typetype373, !163, !"__UNIQUE_ID_fw_load_typetype373", i1 false, i1 false}
!165 = !{ptr @__UNIQUE_ID_aspm374, !166, !"__UNIQUE_ID_aspm374", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 329, i32 1}
!167 = !{ptr @__param_aspm, !168, !"__param_aspm", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 330, i32 1}
!169 = !{ptr @__UNIQUE_ID_aspmtype375, !168, !"__UNIQUE_ID_aspmtype375", i1 false, i1 false}
!170 = !{ptr @__UNIQUE_ID_runpm376, !171, !"__UNIQUE_ID_runpm376", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 338, i32 1}
!172 = !{ptr @__param_runpm, !173, !"__param_runpm", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 339, i32 1}
!174 = !{ptr @__UNIQUE_ID_runpmtype377, !173, !"__UNIQUE_ID_runpmtype377", i1 false, i1 false}
!175 = !{ptr @__UNIQUE_ID_ip_block_mask378, !176, !"__UNIQUE_ID_ip_block_mask378", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 348, i32 1}
!177 = !{ptr @__param_ip_block_mask, !178, !"__param_ip_block_mask", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 349, i32 1}
!179 = !{ptr @__UNIQUE_ID_ip_block_masktype379, !178, !"__UNIQUE_ID_ip_block_masktype379", i1 false, i1 false}
!180 = !{ptr @__UNIQUE_ID_bapm380, !181, !"__UNIQUE_ID_bapm380", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 356, i32 1}
!182 = !{ptr @__param_bapm, !183, !"__param_bapm", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 357, i32 1}
!184 = !{ptr @__UNIQUE_ID_bapmtype381, !183, !"__UNIQUE_ID_bapmtype381", i1 false, i1 false}
!185 = !{ptr @__UNIQUE_ID_deep_color382, !186, !"__UNIQUE_ID_deep_color382", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 363, i32 1}
!187 = !{ptr @__param_deep_color, !188, !"__param_deep_color", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 364, i32 1}
!189 = !{ptr @__UNIQUE_ID_deep_colortype383, !188, !"__UNIQUE_ID_deep_colortype383", i1 false, i1 false}
!190 = !{ptr @__UNIQUE_ID_vm_size384, !191, !"__UNIQUE_ID_vm_size384", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 370, i32 1}
!192 = !{ptr @__param_vm_size, !193, !"__param_vm_size", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 371, i32 1}
!194 = !{ptr @__UNIQUE_ID_vm_sizetype385, !193, !"__UNIQUE_ID_vm_sizetype385", i1 false, i1 false}
!195 = !{ptr @__UNIQUE_ID_vm_fragment_size386, !196, !"__UNIQUE_ID_vm_fragment_size386", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 377, i32 1}
!197 = !{ptr @__param_vm_fragment_size, !198, !"__param_vm_fragment_size", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 378, i32 1}
!199 = !{ptr @__UNIQUE_ID_vm_fragment_sizetype387, !198, !"__UNIQUE_ID_vm_fragment_sizetype387", i1 false, i1 false}
!200 = !{ptr @__UNIQUE_ID_vm_block_size388, !201, !"__UNIQUE_ID_vm_block_size388", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 384, i32 1}
!202 = !{ptr @__param_vm_block_size, !203, !"__param_vm_block_size", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 385, i32 1}
!204 = !{ptr @__UNIQUE_ID_vm_block_sizetype389, !203, !"__UNIQUE_ID_vm_block_sizetype389", i1 false, i1 false}
!205 = !{ptr @__UNIQUE_ID_vm_fault_stop390, !206, !"__UNIQUE_ID_vm_fault_stop390", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 391, i32 1}
!207 = !{ptr @__param_vm_fault_stop, !208, !"__param_vm_fault_stop", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 392, i32 1}
!209 = !{ptr @__UNIQUE_ID_vm_fault_stoptype391, !208, !"__UNIQUE_ID_vm_fault_stoptype391", i1 false, i1 false}
!210 = !{ptr @__UNIQUE_ID_vm_debug392, !211, !"__UNIQUE_ID_vm_debug392", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 398, i32 1}
!212 = !{ptr @__param_vm_debug, !213, !"__param_vm_debug", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 399, i32 1}
!214 = !{ptr @__UNIQUE_ID_vm_debugtype393, !213, !"__UNIQUE_ID_vm_debugtype393", i1 false, i1 false}
!215 = !{ptr @__UNIQUE_ID_vm_update_mode394, !216, !"__UNIQUE_ID_vm_update_mode394", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 406, i32 1}
!217 = !{ptr @__param_vm_update_mode, !218, !"__param_vm_update_mode", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 407, i32 1}
!219 = !{ptr @__UNIQUE_ID_vm_update_modetype395, !218, !"__UNIQUE_ID_vm_update_modetype395", i1 false, i1 false}
!220 = !{ptr @__UNIQUE_ID_exp_hw_support396, !221, !"__UNIQUE_ID_exp_hw_support396", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 413, i32 1}
!222 = !{ptr @__param_exp_hw_support, !223, !"__param_exp_hw_support", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 414, i32 1}
!224 = !{ptr @__UNIQUE_ID_exp_hw_supporttype397, !223, !"__UNIQUE_ID_exp_hw_supporttype397", i1 false, i1 false}
!225 = !{ptr @__UNIQUE_ID_dc398, !226, !"__UNIQUE_ID_dc398", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 420, i32 1}
!227 = !{ptr @__param_dc, !228, !"__param_dc", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 421, i32 1}
!229 = !{ptr @__UNIQUE_ID_dctype399, !228, !"__UNIQUE_ID_dctype399", i1 false, i1 false}
!230 = !{ptr @__UNIQUE_ID_sched_jobs400, !231, !"__UNIQUE_ID_sched_jobs400", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 427, i32 1}
!232 = !{ptr @__param_sched_jobs, !233, !"__param_sched_jobs", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 428, i32 1}
!234 = !{ptr @__UNIQUE_ID_sched_jobstype401, !233, !"__UNIQUE_ID_sched_jobstype401", i1 false, i1 false}
!235 = !{ptr @__UNIQUE_ID_sched_hw_submission402, !236, !"__UNIQUE_ID_sched_hw_submission402", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 434, i32 1}
!237 = !{ptr @__param_sched_hw_submission, !238, !"__param_sched_hw_submission", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 435, i32 1}
!239 = !{ptr @__UNIQUE_ID_sched_hw_submissiontype403, !238, !"__UNIQUE_ID_sched_hw_submissiontype403", i1 false, i1 false}
!240 = !{ptr @__UNIQUE_ID_ppfeaturemask404, !241, !"__UNIQUE_ID_ppfeaturemask404", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 442, i32 1}
!242 = !{ptr @__param_ppfeaturemask, !243, !"__param_ppfeaturemask", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 443, i32 1}
!244 = !{ptr @__UNIQUE_ID_ppfeaturemasktype405, !243, !"__UNIQUE_ID_ppfeaturemasktype405", i1 false, i1 false}
!245 = !{ptr @__UNIQUE_ID_forcelongtraining406, !246, !"__UNIQUE_ID_forcelongtraining406", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 450, i32 1}
!247 = !{ptr @__param_forcelongtraining, !248, !"__param_forcelongtraining", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 451, i32 1}
!249 = !{ptr @__UNIQUE_ID_forcelongtrainingtype407, !248, !"__UNIQUE_ID_forcelongtrainingtype407", i1 false, i1 false}
!250 = !{ptr @__UNIQUE_ID_pcie_gen_cap408, !251, !"__UNIQUE_ID_pcie_gen_cap408", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 458, i32 1}
!252 = !{ptr @__param_pcie_gen_cap, !253, !"__param_pcie_gen_cap", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 459, i32 1}
!254 = !{ptr @__UNIQUE_ID_pcie_gen_captype409, !253, !"__UNIQUE_ID_pcie_gen_captype409", i1 false, i1 false}
!255 = !{ptr @__UNIQUE_ID_pcie_lane_cap410, !256, !"__UNIQUE_ID_pcie_lane_cap410", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 466, i32 1}
!257 = !{ptr @__param_pcie_lane_cap, !258, !"__param_pcie_lane_cap", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 467, i32 1}
!259 = !{ptr @__UNIQUE_ID_pcie_lane_captype411, !258, !"__UNIQUE_ID_pcie_lane_captype411", i1 false, i1 false}
!260 = !{ptr @__UNIQUE_ID_cg_mask412, !261, !"__UNIQUE_ID_cg_mask412", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 474, i32 1}
!262 = !{ptr @__param_cg_mask, !263, !"__param_cg_mask", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 475, i32 1}
!264 = !{ptr @__UNIQUE_ID_cg_masktype413, !263, !"__UNIQUE_ID_cg_masktype413", i1 false, i1 false}
!265 = !{ptr @__UNIQUE_ID_pg_mask414, !266, !"__UNIQUE_ID_pg_mask414", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 482, i32 1}
!267 = !{ptr @__param_pg_mask, !268, !"__param_pg_mask", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 483, i32 1}
!269 = !{ptr @__UNIQUE_ID_pg_masktype415, !268, !"__UNIQUE_ID_pg_masktype415", i1 false, i1 false}
!270 = !{ptr @__UNIQUE_ID_sdma_phase_quantum416, !271, !"__UNIQUE_ID_sdma_phase_quantum416", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 489, i32 1}
!272 = !{ptr @__param_sdma_phase_quantum, !273, !"__param_sdma_phase_quantum", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 490, i32 1}
!274 = !{ptr @__UNIQUE_ID_sdma_phase_quantumtype417, !273, !"__UNIQUE_ID_sdma_phase_quantumtype417", i1 false, i1 false}
!275 = !{ptr @__UNIQUE_ID_disable_cu418, !276, !"__UNIQUE_ID_disable_cu418", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 496, i32 1}
!277 = !{ptr @__param_disable_cu, !278, !"__param_disable_cu", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 497, i32 1}
!279 = !{ptr @__UNIQUE_ID_disable_cutype419, !278, !"__UNIQUE_ID_disable_cutype419", i1 false, i1 false}
!280 = !{ptr @__UNIQUE_ID_virtual_display420, !281, !"__UNIQUE_ID_virtual_display420", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 506, i32 1}
!282 = !{ptr @__param_virtual_display, !283, !"__param_virtual_display", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 508, i32 1}
!284 = !{ptr @__UNIQUE_ID_virtual_displaytype421, !283, !"__UNIQUE_ID_virtual_displaytype421", i1 false, i1 false}
!285 = !{ptr @__UNIQUE_ID_job_hang_limit422, !286, !"__UNIQUE_ID_job_hang_limit422", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 514, i32 1}
!287 = !{ptr @__param_job_hang_limit, !288, !"__param_job_hang_limit", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 515, i32 1}
!289 = !{ptr @__UNIQUE_ID_job_hang_limittype423, !288, !"__UNIQUE_ID_job_hang_limittype423", i1 false, i1 false}
!290 = !{ptr @__UNIQUE_ID_lbpw424, !291, !"__UNIQUE_ID_lbpw424", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 521, i32 1}
!292 = !{ptr @__param_lbpw, !293, !"__param_lbpw", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 522, i32 1}
!294 = !{ptr @__UNIQUE_ID_lbpwtype425, !293, !"__UNIQUE_ID_lbpwtype425", i1 false, i1 false}
!295 = !{ptr @__UNIQUE_ID_compute_multipipe426, !296, !"__UNIQUE_ID_compute_multipipe426", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 524, i32 1}
!297 = !{ptr @__param_compute_multipipe, !298, !"__param_compute_multipipe", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 525, i32 1}
!299 = !{ptr @__UNIQUE_ID_compute_multipipetype427, !298, !"__UNIQUE_ID_compute_multipipetype427", i1 false, i1 false}
!300 = !{ptr @__UNIQUE_ID_gpu_recovery428, !301, !"__UNIQUE_ID_gpu_recovery428", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 531, i32 1}
!302 = !{ptr @__param_gpu_recovery, !303, !"__param_gpu_recovery", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 532, i32 1}
!304 = !{ptr @__UNIQUE_ID_gpu_recoverytype429, !303, !"__UNIQUE_ID_gpu_recoverytype429", i1 false, i1 false}
!305 = !{ptr @__UNIQUE_ID_emu_mode430, !306, !"__UNIQUE_ID_emu_mode430", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 538, i32 1}
!307 = !{ptr @__param_emu_mode, !308, !"__param_emu_mode", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 539, i32 1}
!309 = !{ptr @__UNIQUE_ID_emu_modetype431, !308, !"__UNIQUE_ID_emu_modetype431", i1 false, i1 false}
!310 = !{ptr @__UNIQUE_ID_ras_enable432, !311, !"__UNIQUE_ID_ras_enable432", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 545, i32 1}
!312 = !{ptr @__param_ras_enable, !313, !"__param_ras_enable", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 546, i32 1}
!314 = !{ptr @__UNIQUE_ID_ras_enabletype433, !313, !"__UNIQUE_ID_ras_enabletype433", i1 false, i1 false}
!315 = !{ptr @__UNIQUE_ID_ras_mask434, !316, !"__UNIQUE_ID_ras_mask434", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 553, i32 1}
!317 = !{ptr @__param_ras_mask, !318, !"__param_ras_mask", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 554, i32 1}
!319 = !{ptr @__UNIQUE_ID_ras_masktype435, !318, !"__UNIQUE_ID_ras_masktype435", i1 false, i1 false}
!320 = !{ptr @__UNIQUE_ID_timeout_fatal_disable436, !321, !"__UNIQUE_ID_timeout_fatal_disable436", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 560, i32 1}
!322 = !{ptr @__param_timeout_fatal_disable, !323, !"__param_timeout_fatal_disable", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 561, i32 1}
!324 = !{ptr @__UNIQUE_ID_timeout_fatal_disabletype437, !323, !"__UNIQUE_ID_timeout_fatal_disabletype437", i1 false, i1 false}
!325 = !{ptr @__UNIQUE_ID_timeout_period438, !326, !"__UNIQUE_ID_timeout_period438", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 567, i32 1}
!327 = !{ptr @__param_timeout_period, !328, !"__param_timeout_period", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 568, i32 1}
!329 = !{ptr @__UNIQUE_ID_timeout_periodtype439, !328, !"__UNIQUE_ID_timeout_periodtype439", i1 false, i1 false}
!330 = !{ptr @amdgpu_si_support, !331, !"amdgpu_si_support", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 579, i32 5}
!332 = !{ptr @__UNIQUE_ID_si_support440, !333, !"__UNIQUE_ID_si_support440", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 580, i32 1}
!334 = !{ptr @__param_si_support, !335, !"__param_si_support", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 586, i32 1}
!336 = !{ptr @__UNIQUE_ID_si_supporttype441, !335, !"__UNIQUE_ID_si_supporttype441", i1 false, i1 false}
!337 = !{ptr @amdgpu_cik_support, !338, !"amdgpu_cik_support", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 598, i32 5}
!339 = !{ptr @__UNIQUE_ID_cik_support442, !340, !"__UNIQUE_ID_cik_support442", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 599, i32 1}
!341 = !{ptr @__param_cik_support, !342, !"__param_cik_support", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 605, i32 1}
!343 = !{ptr @__UNIQUE_ID_cik_supporttype443, !342, !"__UNIQUE_ID_cik_supporttype443", i1 false, i1 false}
!344 = !{ptr @__UNIQUE_ID_smu_memory_pool_size444, !345, !"__UNIQUE_ID_smu_memory_pool_size444", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 613, i32 1}
!346 = !{ptr @__param_smu_memory_pool_size, !347, !"__param_smu_memory_pool_size", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 616, i32 1}
!348 = !{ptr @__UNIQUE_ID_smu_memory_pool_sizetype445, !347, !"__UNIQUE_ID_smu_memory_pool_sizetype445", i1 false, i1 false}
!349 = !{ptr @__UNIQUE_ID_async_gfx_ring446, !350, !"__UNIQUE_ID_async_gfx_ring446", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 622, i32 1}
!351 = !{ptr @__param_async_gfx_ring, !352, !"__param_async_gfx_ring", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 624, i32 1}
!353 = !{ptr @__UNIQUE_ID_async_gfx_ringtype447, !352, !"__UNIQUE_ID_async_gfx_ringtype447", i1 false, i1 false}
!354 = !{ptr @__UNIQUE_ID_mcbp448, !355, !"__UNIQUE_ID_mcbp448", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 630, i32 1}
!356 = !{ptr @__param_mcbp, !357, !"__param_mcbp", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 632, i32 1}
!358 = !{ptr @__UNIQUE_ID_mcbptype449, !357, !"__UNIQUE_ID_mcbptype449", i1 false, i1 false}
!359 = !{ptr @__UNIQUE_ID_discovery450, !360, !"__UNIQUE_ID_discovery450", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 639, i32 1}
!361 = !{ptr @__param_discovery, !362, !"__param_discovery", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 641, i32 1}
!363 = !{ptr @__UNIQUE_ID_discoverytype451, !362, !"__UNIQUE_ID_discoverytype451", i1 false, i1 false}
!364 = !{ptr @__UNIQUE_ID_mes452, !365, !"__UNIQUE_ID_mes452", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 648, i32 1}
!366 = !{ptr @__param_mes, !367, !"__param_mes", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 650, i32 1}
!368 = !{ptr @__UNIQUE_ID_mestype453, !367, !"__UNIQUE_ID_mestype453", i1 false, i1 false}
!369 = !{ptr @__UNIQUE_ID_noretry454, !370, !"__UNIQUE_ID_noretry454", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 658, i32 1}
!371 = !{ptr @__param_noretry, !372, !"__param_noretry", i1 false, i1 false}
!372 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 660, i32 1}
!373 = !{ptr @__UNIQUE_ID_noretrytype455, !372, !"__UNIQUE_ID_noretrytype455", i1 false, i1 false}
!374 = !{ptr @__UNIQUE_ID_force_asic_type456, !375, !"__UNIQUE_ID_force_asic_type456", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 666, i32 1}
!376 = !{ptr @__param_force_asic_type, !377, !"__param_force_asic_type", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 668, i32 1}
!378 = !{ptr @__UNIQUE_ID_force_asic_typetype457, !377, !"__UNIQUE_ID_force_asic_typetype457", i1 false, i1 false}
!379 = !{ptr @__UNIQUE_ID_dcfeaturemask458, !380, !"__UNIQUE_ID_dcfeaturemask458", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 806, i32 1}
!381 = !{ptr @__param_dcfeaturemask, !382, !"__param_dcfeaturemask", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 807, i32 1}
!383 = !{ptr @__UNIQUE_ID_dcfeaturemasktype459, !382, !"__UNIQUE_ID_dcfeaturemasktype459", i1 false, i1 false}
!384 = !{ptr @__UNIQUE_ID_dcdebugmask460, !385, !"__UNIQUE_ID_dcdebugmask460", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 813, i32 1}
!386 = !{ptr @__param_dcdebugmask, !387, !"__param_dcdebugmask", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 814, i32 1}
!388 = !{ptr @__UNIQUE_ID_dcdebugmasktype461, !387, !"__UNIQUE_ID_dcdebugmasktype461", i1 false, i1 false}
!389 = !{ptr @__UNIQUE_ID_abmlevel462, !390, !"__UNIQUE_ID_abmlevel462", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 829, i32 1}
!391 = !{ptr @__param_abmlevel, !392, !"__param_abmlevel", i1 false, i1 false}
!392 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 830, i32 1}
!393 = !{ptr @__UNIQUE_ID_abmleveltype463, !392, !"__UNIQUE_ID_abmleveltype463", i1 false, i1 false}
!394 = !{ptr @amdgpu_backlight, !395, !"amdgpu_backlight", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 832, i32 5}
!396 = !{ptr @__UNIQUE_ID_backlight464, !397, !"__UNIQUE_ID_backlight464", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 833, i32 1}
!398 = !{ptr @__param_backlight, !399, !"__param_backlight", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 834, i32 1}
!400 = !{ptr @__UNIQUE_ID_backlighttype465, !399, !"__UNIQUE_ID_backlighttype465", i1 false, i1 false}
!401 = !{ptr @__UNIQUE_ID_tmz466, !402, !"__UNIQUE_ID_tmz466", i1 false, i1 false}
!402 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 843, i32 1}
!403 = !{ptr @__param_tmz, !404, !"__param_tmz", i1 false, i1 false}
!404 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 844, i32 1}
!405 = !{ptr @__UNIQUE_ID_tmztype467, !404, !"__UNIQUE_ID_tmztype467", i1 false, i1 false}
!406 = !{ptr @__UNIQUE_ID_freesync_video468, !407, !"__UNIQUE_ID_freesync_video468", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 867, i32 1}
!408 = !{ptr @__param_freesync_video, !409, !"__param_freesync_video", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 870, i32 1}
!410 = !{ptr @__UNIQUE_ID_freesync_videotype469, !409, !"__UNIQUE_ID_freesync_videotype469", i1 false, i1 false}
!411 = !{ptr @__UNIQUE_ID_reset_method470, !412, !"__UNIQUE_ID_reset_method470", i1 false, i1 false}
!412 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 876, i32 1}
!413 = !{ptr @__param_reset_method, !414, !"__param_reset_method", i1 false, i1 false}
!414 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 877, i32 1}
!415 = !{ptr @__UNIQUE_ID_reset_methodtype471, !414, !"__UNIQUE_ID_reset_methodtype471", i1 false, i1 false}
!416 = !{ptr @__UNIQUE_ID_bad_page_threshold472, !417, !"__UNIQUE_ID_bad_page_threshold472", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 885, i32 1}
!418 = !{ptr @__param_bad_page_threshold, !419, !"__param_bad_page_threshold", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 886, i32 1}
!420 = !{ptr @__UNIQUE_ID_bad_page_thresholdtype473, !419, !"__UNIQUE_ID_bad_page_thresholdtype473", i1 false, i1 false}
!421 = !{ptr @__UNIQUE_ID_num_kcq474, !422, !"__UNIQUE_ID_num_kcq474", i1 false, i1 false}
!422 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 888, i32 1}
!423 = !{ptr @__param_num_kcq, !424, !"__param_num_kcq", i1 false, i1 false}
!424 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 889, i32 1}
!425 = !{ptr @__UNIQUE_ID_num_kcqtype475, !424, !"__UNIQUE_ID_num_kcqtype475", i1 false, i1 false}
!426 = !{ptr @__UNIQUE_ID_smu_pptable_id476, !427, !"__UNIQUE_ID_smu_pptable_id476", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 896, i32 1}
!428 = !{ptr @__param_smu_pptable_id, !429, !"__param_smu_pptable_id", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 898, i32 1}
!430 = !{ptr @__UNIQUE_ID_smu_pptable_idtype477, !429, !"__UNIQUE_ID_smu_pptable_idtype477", i1 false, i1 false}
!431 = !{ptr @.str.4, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2587, i32 2}
!433 = !{ptr @.str.5, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2594, i32 2}
!435 = !{ptr @.str.6, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2588, i32 2}
!437 = !{ptr @.str.7, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2591, i32 2}
!439 = !{ptr @.str.8, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2596, i32 2}
!441 = !{ptr @.str.9, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2597, i32 2}
!443 = !{ptr @.str.10, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2600, i32 2}
!445 = !{ptr @.str.11, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2595, i32 2}
!447 = !{ptr @.str.12, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2601, i32 2}
!449 = !{ptr @.str.13, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2598, i32 2}
!451 = !{ptr @.str.14, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2602, i32 2}
!453 = !{ptr @.str.15, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2603, i32 2}
!455 = !{ptr @.str.16, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2599, i32 2}
!457 = !{ptr @.str.17, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2589, i32 2}
!459 = !{ptr @.str.18, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2592, i32 2}
!461 = !{ptr @.str.19, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2590, i32 2}
!463 = !{ptr @amdgpu_ioctls_kms, !464, !"amdgpu_ioctls_kms", i1 false, i1 false}
!464 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2586, i32 29}
!465 = !{ptr @__initcall__kmod_amdgpu__478_2707_amdgpu_init6, !466, !"__initcall__kmod_amdgpu__478_2707_amdgpu_init6", i1 false, i1 false}
!466 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2707, i32 1}
!467 = !{ptr @__exitcall_amdgpu_exit, !468, !"__exitcall_amdgpu_exit", i1 false, i1 false}
!468 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2708, i32 1}
!469 = !{ptr @__UNIQUE_ID_author479, !470, !"__UNIQUE_ID_author479", i1 false, i1 false}
!470 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2710, i32 1}
!471 = !{ptr @__UNIQUE_ID_description480, !472, !"__UNIQUE_ID_description480", i1 false, i1 false}
!472 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2711, i32 1}
!473 = !{ptr @__UNIQUE_ID_file481, !474, !"__UNIQUE_ID_file481", i1 false, i1 false}
!474 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2712, i32 1}
!475 = !{ptr @__UNIQUE_ID_license482, !474, !"__UNIQUE_ID_license482", i1 false, i1 false}
!476 = !{ptr @amdgpu_vram_limit, !477, !"amdgpu_vram_limit", i1 false, i1 false}
!477 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 107, i32 5}
!478 = !{ptr @amdgpu_vis_vram_limit, !479, !"amdgpu_vis_vram_limit", i1 false, i1 false}
!479 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 108, i32 5}
!480 = !{ptr @amdgpu_benchmarking, !481, !"amdgpu_benchmarking", i1 false, i1 false}
!481 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 112, i32 5}
!482 = !{ptr @amdgpu_testing, !483, !"amdgpu_testing", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 113, i32 5}
!484 = !{ptr @amdgpu_disp_priority, !485, !"amdgpu_disp_priority", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 115, i32 5}
!486 = !{ptr @amdgpu_hw_i2c, !487, !"amdgpu_hw_i2c", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 116, i32 5}
!488 = !{ptr @amdgpu_lockup_timeout, !489, !"amdgpu_lockup_timeout", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 119, i32 6}
!490 = !{ptr @amdgpu_deep_color, !491, !"amdgpu_deep_color", i1 false, i1 false}
!491 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 126, i32 5}
!492 = !{ptr @amdgpu_vm_fault_stop, !493, !"amdgpu_vm_fault_stop", i1 false, i1 false}
!493 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 130, i32 5}
!494 = !{ptr @amdgpu_vm_debug, !495, !"amdgpu_vm_debug", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 131, i32 5}
!496 = !{ptr @amdgpu_exp_hw_support, !497, !"amdgpu_exp_hw_support", i1 false, i1 false}
!497 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 133, i32 5}
!498 = !{ptr @amdgpu_pcie_gen_cap, !499, !"amdgpu_pcie_gen_cap", i1 false, i1 false}
!499 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 137, i32 6}
!500 = !{ptr @amdgpu_pcie_lane_cap, !501, !"amdgpu_pcie_lane_cap", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 138, i32 6}
!502 = !{ptr @amdgpu_force_long_training, !503, !"amdgpu_force_long_training", i1 false, i1 false}
!503 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 150, i32 6}
!504 = !{ptr @amdgpu_job_hang_limit, !505, !"amdgpu_job_hang_limit", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 151, i32 5}
!506 = !{ptr @amdgpu_emu_mode, !507, !"amdgpu_emu_mode", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 155, i32 5}
!508 = !{ptr @amdgpu_smu_memory_pool_size, !509, !"amdgpu_smu_memory_pool_size", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 156, i32 6}
!510 = !{ptr @amdgpu_dc_debug_mask, !511, !"amdgpu_dc_debug_mask", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 169, i32 6}
!512 = !{ptr @amdgpu_mcbp, !513, !"amdgpu_mcbp", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 171, i32 5}
!514 = !{ptr @amdgpu_mes, !515, !"amdgpu_mes", i1 false, i1 false}
!515 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 173, i32 5}
!516 = !{ptr @amdgpu_freesync_vid_mode, !517, !"amdgpu_freesync_vid_mode", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 177, i32 6}
!518 = !{ptr @amdgpu_smartshift_bias, !519, !"amdgpu_smartshift_bias", i1 false, i1 false}
!519 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 180, i32 5}
!520 = !{ptr @amdgpu_dm_abm_level, !521, !"amdgpu_dm_abm_level", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 828, i32 6}
!522 = !{ptr @__param_str_vramlimit, !93, !"__param_str_vramlimit", i1 false, i1 false}
!523 = !{ptr @__param_str_vis_vramlimit, !98, !"__param_str_vis_vramlimit", i1 false, i1 false}
!524 = !{ptr @__param_str_gartsize, !103, !"__param_str_gartsize", i1 false, i1 false}
!525 = !{ptr @__param_str_gttsize, !108, !"__param_str_gttsize", i1 false, i1 false}
!526 = !{ptr @__param_str_moverate, !113, !"__param_str_moverate", i1 false, i1 false}
!527 = !{ptr @__param_str_benchmark, !118, !"__param_str_benchmark", i1 false, i1 false}
!528 = !{ptr @__param_str_test, !123, !"__param_str_test", i1 false, i1 false}
!529 = !{ptr @__param_str_audio, !128, !"__param_str_audio", i1 false, i1 false}
!530 = !{ptr @__param_str_disp_priority, !133, !"__param_str_disp_priority", i1 false, i1 false}
!531 = !{ptr @__param_str_hw_i2c, !138, !"__param_str_hw_i2c", i1 false, i1 false}
!532 = !{ptr @__param_str_pcie_gen2, !143, !"__param_str_pcie_gen2", i1 false, i1 false}
!533 = !{ptr @__param_str_msi, !148, !"__param_str_msi", i1 false, i1 false}
!534 = !{ptr @__param_str_lockup_timeout, !153, !"__param_str_lockup_timeout", i1 false, i1 false}
!535 = !{ptr @__param_string_lockup_timeout, !153, !"__param_string_lockup_timeout", i1 false, i1 false}
!536 = !{ptr @__param_str_dpm, !158, !"__param_str_dpm", i1 false, i1 false}
!537 = !{ptr @__param_str_fw_load_type, !163, !"__param_str_fw_load_type", i1 false, i1 false}
!538 = !{ptr @__param_str_aspm, !168, !"__param_str_aspm", i1 false, i1 false}
!539 = !{ptr @__param_str_runpm, !173, !"__param_str_runpm", i1 false, i1 false}
!540 = !{ptr @__param_str_ip_block_mask, !178, !"__param_str_ip_block_mask", i1 false, i1 false}
!541 = !{ptr @__param_str_bapm, !183, !"__param_str_bapm", i1 false, i1 false}
!542 = !{ptr @__param_str_deep_color, !188, !"__param_str_deep_color", i1 false, i1 false}
!543 = !{ptr @__param_str_vm_size, !193, !"__param_str_vm_size", i1 false, i1 false}
!544 = !{ptr @__param_str_vm_fragment_size, !198, !"__param_str_vm_fragment_size", i1 false, i1 false}
!545 = !{ptr @__param_str_vm_block_size, !203, !"__param_str_vm_block_size", i1 false, i1 false}
!546 = !{ptr @__param_str_vm_fault_stop, !208, !"__param_str_vm_fault_stop", i1 false, i1 false}
!547 = !{ptr @__param_str_vm_debug, !213, !"__param_str_vm_debug", i1 false, i1 false}
!548 = !{ptr @__param_str_vm_update_mode, !218, !"__param_str_vm_update_mode", i1 false, i1 false}
!549 = !{ptr @__param_str_exp_hw_support, !223, !"__param_str_exp_hw_support", i1 false, i1 false}
!550 = !{ptr @__param_str_dc, !228, !"__param_str_dc", i1 false, i1 false}
!551 = !{ptr @__param_str_sched_jobs, !233, !"__param_str_sched_jobs", i1 false, i1 false}
!552 = !{ptr @__param_str_sched_hw_submission, !238, !"__param_str_sched_hw_submission", i1 false, i1 false}
!553 = !{ptr @__param_str_ppfeaturemask, !243, !"__param_str_ppfeaturemask", i1 false, i1 false}
!554 = !{ptr @__param_str_forcelongtraining, !248, !"__param_str_forcelongtraining", i1 false, i1 false}
!555 = !{ptr @__param_str_pcie_gen_cap, !253, !"__param_str_pcie_gen_cap", i1 false, i1 false}
!556 = !{ptr @__param_str_pcie_lane_cap, !258, !"__param_str_pcie_lane_cap", i1 false, i1 false}
!557 = !{ptr @__param_str_cg_mask, !263, !"__param_str_cg_mask", i1 false, i1 false}
!558 = !{ptr @__param_str_pg_mask, !268, !"__param_str_pg_mask", i1 false, i1 false}
!559 = !{ptr @__param_str_sdma_phase_quantum, !273, !"__param_str_sdma_phase_quantum", i1 false, i1 false}
!560 = !{ptr @__param_str_disable_cu, !278, !"__param_str_disable_cu", i1 false, i1 false}
!561 = !{ptr @__param_str_virtual_display, !283, !"__param_str_virtual_display", i1 false, i1 false}
!562 = !{ptr @__param_str_job_hang_limit, !288, !"__param_str_job_hang_limit", i1 false, i1 false}
!563 = !{ptr @__param_str_lbpw, !293, !"__param_str_lbpw", i1 false, i1 false}
!564 = !{ptr @__param_str_compute_multipipe, !298, !"__param_str_compute_multipipe", i1 false, i1 false}
!565 = !{ptr @__param_str_gpu_recovery, !303, !"__param_str_gpu_recovery", i1 false, i1 false}
!566 = !{ptr @__param_str_emu_mode, !308, !"__param_str_emu_mode", i1 false, i1 false}
!567 = !{ptr @__param_str_ras_enable, !313, !"__param_str_ras_enable", i1 false, i1 false}
!568 = !{ptr @__param_str_ras_mask, !318, !"__param_str_ras_mask", i1 false, i1 false}
!569 = !{ptr @__param_str_timeout_fatal_disable, !323, !"__param_str_timeout_fatal_disable", i1 false, i1 false}
!570 = !{ptr @__param_str_timeout_period, !328, !"__param_str_timeout_period", i1 false, i1 false}
!571 = !{ptr @__param_str_si_support, !335, !"__param_str_si_support", i1 false, i1 false}
!572 = !{ptr @__param_str_cik_support, !342, !"__param_str_cik_support", i1 false, i1 false}
!573 = !{ptr @__param_str_smu_memory_pool_size, !347, !"__param_str_smu_memory_pool_size", i1 false, i1 false}
!574 = !{ptr @__param_str_async_gfx_ring, !352, !"__param_str_async_gfx_ring", i1 false, i1 false}
!575 = !{ptr @__param_str_mcbp, !357, !"__param_str_mcbp", i1 false, i1 false}
!576 = !{ptr @__param_str_discovery, !362, !"__param_str_discovery", i1 false, i1 false}
!577 = !{ptr @__param_str_mes, !367, !"__param_str_mes", i1 false, i1 false}
!578 = !{ptr @__param_str_noretry, !372, !"__param_str_noretry", i1 false, i1 false}
!579 = !{ptr @__param_str_force_asic_type, !377, !"__param_str_force_asic_type", i1 false, i1 false}
!580 = !{ptr @__param_str_dcfeaturemask, !382, !"__param_str_dcfeaturemask", i1 false, i1 false}
!581 = !{ptr @__param_str_dcdebugmask, !387, !"__param_str_dcdebugmask", i1 false, i1 false}
!582 = !{ptr @__param_str_abmlevel, !392, !"__param_str_abmlevel", i1 false, i1 false}
!583 = !{ptr @__param_str_backlight, !399, !"__param_str_backlight", i1 false, i1 false}
!584 = !{ptr @__param_str_tmz, !404, !"__param_str_tmz", i1 false, i1 false}
!585 = !{ptr @__param_str_freesync_video, !409, !"__param_str_freesync_video", i1 false, i1 false}
!586 = !{ptr @__param_str_reset_method, !414, !"__param_str_reset_method", i1 false, i1 false}
!587 = !{ptr @__param_str_bad_page_threshold, !419, !"__param_str_bad_page_threshold", i1 false, i1 false}
!588 = !{ptr @__param_str_num_kcq, !424, !"__param_str_num_kcq", i1 false, i1 false}
!589 = !{ptr @__param_str_smu_pptable_id, !429, !"__param_str_smu_pptable_id", i1 false, i1 false}
!590 = !{ptr @.str.20, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2207, i32 4}
!592 = !{ptr @.str.21, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @.str.22, !591, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @.str.23, !591, !"<string literal>", i1 false, i1 false}
!595 = !{ptr @.str.24, !591, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @amdgpu_drv_delayed_reset_work_handler._entry, !591, !"_entry", i1 false, i1 false}
!597 = !{ptr @amdgpu_drv_delayed_reset_work_handler._entry_ptr, !591, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @.str.25, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2237, i32 3}
!600 = !{ptr @amdgpu_driver_kms_fops, !601, !"amdgpu_driver_kms_fops", i1 false, i1 false}
!601 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2553, i32 37}
!602 = !{ptr @.str.26, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2655, i32 10}
!604 = !{ptr @amdgpu_kms_pci_driver, !605, !"amdgpu_kms_pci_driver", i1 false, i1 false}
!605 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2654, i32 26}
!606 = !{ptr @pciidlist, !607, !"pciidlist", i1 false, i1 false}
!607 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 1611, i32 35}
!608 = !{ptr @.str.27, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2022, i32 3}
!610 = !{ptr @.str.28, !609, !"<string literal>", i1 false, i1 false}
!611 = !{ptr @amdgpu_pci_probe._entry, !609, !"_entry", i1 false, i1 false}
!612 = !{ptr @amdgpu_pci_probe._entry_ptr, !609, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @.str.30, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2033, i32 3}
!615 = !{ptr @.str.31, !614, !"<string literal>", i1 false, i1 false}
!616 = !{ptr @amdgpu_pci_probe._entry.29, !614, !"_entry", i1 false, i1 false}
!617 = !{ptr @amdgpu_pci_probe._entry_ptr.32, !614, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.34, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2046, i32 4}
!620 = !{ptr @amdgpu_pci_probe._entry.33, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @amdgpu_pci_probe._entry_ptr.35, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.37, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2048, i32 4}
!624 = !{ptr @amdgpu_pci_probe._entry.36, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @amdgpu_pci_probe._entry_ptr.38, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.40, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2063, i32 4}
!628 = !{ptr @amdgpu_pci_probe._entry.39, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @amdgpu_pci_probe._entry_ptr.41, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.43, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2065, i32 4}
!632 = !{ptr @amdgpu_pci_probe._entry.42, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @amdgpu_pci_probe._entry_ptr.44, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.46, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2107, i32 3}
!636 = !{ptr @amdgpu_pci_probe._entry.45, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @amdgpu_pci_probe._entry_ptr.47, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.48, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2130, i32 3}
!640 = !{ptr @amdgpu_unsupported_pciidlist, !641, !"amdgpu_unsupported_pciidlist", i1 false, i1 false}
!641 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 903, i32 18}
!642 = !{ptr @.str.49, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2628, i32 10}
!644 = !{ptr @.str.50, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2629, i32 10}
!646 = !{ptr @amdgpu_kms_driver, !647, !"amdgpu_kms_driver", i1 false, i1 false}
!647 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2606, i32 32}
!648 = !{ptr @amdgpu_pci_err_handler, !649, !"amdgpu_pci_err_handler", i1 false, i1 false}
!649 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2635, i32 34}
!650 = !{ptr @amdgpu_sysfs_groups, !651, !"amdgpu_sysfs_groups", i1 false, i1 false}
!651 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2646, i32 38}
!652 = !{ptr @amdgpu_pm_ops, !653, !"amdgpu_pm_ops", i1 false, i1 false}
!653 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2527, i32 32}
!654 = !{ptr @.str.51, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2501, i32 3}
!656 = !{ptr @.str.52, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c", i32 2680, i32 2}
!658 = !{ptr @.str.53, !657, !"<string literal>", i1 false, i1 false}
!659 = !{ptr @amdgpu_init._entry, !657, !"_entry", i1 false, i1 false}
!660 = !{ptr @amdgpu_init._entry_ptr, !657, !"_entry_ptr", i1 false, i1 false}
!661 = !{i32 1, !"wchar_size", i32 2}
!662 = !{i32 1, !"min_enum_size", i32 4}
!663 = !{i32 8, !"branch-target-enforcement", i32 0}
!664 = !{i32 8, !"sign-return-address", i32 0}
!665 = !{i32 8, !"sign-return-address-all", i32 0}
!666 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!667 = !{i32 7, !"uwtable", i32 1}
!668 = !{i32 7, !"frame-pointer", i32 2}
!669 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!670 = !{i8 0, i8 2}
!671 = !{!"auto-init"}
