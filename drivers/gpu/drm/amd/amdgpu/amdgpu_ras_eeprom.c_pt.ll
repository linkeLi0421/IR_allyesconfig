; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_ras_eeprom_control = type { %struct.amdgpu_ras_eeprom_table_header, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.amdgpu_ras_eeprom_table_header = type { i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.83 = type { ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_ras = type { i32, %struct.list_head, %struct.device_attribute, %struct.bin_attribute, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, ptr, %struct.mutex, i32, i8, %struct.amdgpu_ras_eeprom_control, i8, i32, i8, i8, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.umc_ecc_info }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.umc_ecc_info = type { [32 x %struct.ecc_info_per_ch] }
%struct.ecc_info_per_ch = type { i16, i16, i64, i64 }
%struct.eeprom_table_record = type <{ %union.anon.107, i64, i64, i32, %union.anon.108, i8, i8 }>
%union.anon.107 = type { i64 }
%union.anon.108 = type { i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }

@amdgpu_ras_eeprom_check_err_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: This GPU is in BAD status.\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu_ras_eeprom_check_err_threshold\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_check_err_threshold._entry_ptr = internal global ptr @amdgpu_ras_eeprom_check_err_threshold._entry, section ".printk_index", align 4
@amdgpu_ras_eeprom_check_err_threshold._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"amdgpu: Please retire it or set a larger threshold value when reloading driver.\0A\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_check_err_threshold._entry_ptr.7 = internal global ptr @amdgpu_ras_eeprom_check_err_threshold._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"will not append 0 records\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cannot append %d records than the size of table %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"will not read 0 records\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"too many records to read:%d available:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_eeprom_size_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_ras_debugfs_eeprom_size_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_eeprom_table_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_ras_debugfs_eeprom_table_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&control->ras_tbl_mutex\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to read EEPROM table header, res:%d\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Found existing EEPROM table with %d records\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RAS table incorrect checksum or error:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1086, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: RAS records:%u exceeds 90%% of threshold:%d\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_ras_eeprom_init\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init._entry_ptr = internal global ptr @amdgpu_ras_eeprom_init._entry, section ".printk_index", align 4
@amdgpu_bad_page_threshold = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RAS Table incorrect checksum or error:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 1104, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"amdgpu: records:%d threshold:%d, resetting RAS table header signature\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init._entry_ptr.22 = internal global ptr @amdgpu_ras_eeprom_init._entry.19, section ".printk_index", align 4
@amdgpu_ras_eeprom_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 1109, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: RAS records:%d exceed threshold:%d\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init._entry_ptr.26 = internal global ptr @amdgpu_ras_eeprom_init._entry.23, section ".printk_index", align 4
@amdgpu_ras_eeprom_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 1111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: GPU will be initialized due to bad_page_threshold = -2.\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init._entry_ptr.29 = internal global ptr @amdgpu_ras_eeprom_init._entry.27, section ".printk_index", align 4
@amdgpu_ras_eeprom_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.2, i32 1118, ptr @.str.25, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"amdgpu: RAS records:%d exceed threshold:%d, GPU will not be initialized. Replace this GPU or increase the threshold\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init._entry_ptr.32 = internal global ptr @amdgpu_ras_eeprom_init._entry.30, section ".printk_index", align 4
@amdgpu_ras_eeprom_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.2, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016[drm] Creating a new EEPROM table\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_init._entry_ptr.35 = internal global ptr @amdgpu_ras_eeprom_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to write EEPROM table header:%d\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Short write:%d out of %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Writing %d EEPROM table records error:%d\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wrote %d records out of %d\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_update_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 532, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: Saved bad pages %d reaches threshold value %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu_ras_eeprom_update_header\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_ras_eeprom_update_header._entry_ptr = internal global ptr @amdgpu_ras_eeprom_update_header._entry, section ".printk_index", align 4
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"allocating memory for table of size %d bytes failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"EEPROM failed reading records:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EEPROM read %d out of %d bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Reading %d EEPROM table records error:%d\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Read %d records out of %d\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Not supported\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d bytes or %d records\0A\00", [40 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c" Signature    Version  FirstOffs       Size   Checksum\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Index  Offset ErrType Bank/CU          TimeStamp      Offs/Addr MemChl MCUMCID    RetiredPage\0A\00", [33 x i8] zeroinitializer }, align 32
@record_err_type_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58], [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"0x%08X 0x%08X 0x%08X 0x%08X 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%5d 0x%05X %7s    0x%02X 0x%016llX 0x%012llX   0x%02X    0x%02X 0x%012llX\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ignore\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"re\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ue\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"D342\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Out of memory checking RAS table checksum.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Partial read for checksum, res:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 21, i64 23, i64 25, i64 30]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 21, i64 23, i64 25, i64 30]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 21, i64 23, i64 25, i64 30]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 21, i64 23, i64 25, i64 30]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 21, i64 23, i64 25, i64 30]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1095582802, i64 1111573575]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 363, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 364, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 607, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 610, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 692, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 695, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [35 x i8] c"amdgpu_ras_debugfs_eeprom_size_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 799, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant [36 x i8] c"amdgpu_ras_debugfs_eeprom_table_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 981, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1057, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1064, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1074, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1078, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1084, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1091, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1100, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1108, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1111, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1115, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1122, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 204, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 206, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 398, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 403, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 530, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 544, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 557, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 561, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 653, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 658, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 779, i32 38 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 781, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 230, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 214, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 174, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 806, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 809, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"record_err_type_str\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 813, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 807, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 810, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 814, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 815, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 816, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 105, i32 14 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1008, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [50 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1017, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @amdgpu_ras_eeprom_check_err_threshold._entry, ptr @amdgpu_ras_eeprom_check_err_threshold._entry.5, ptr @amdgpu_ras_eeprom_check_err_threshold._entry_ptr, ptr @amdgpu_ras_eeprom_check_err_threshold._entry_ptr.7, ptr @amdgpu_ras_eeprom_init._entry, ptr @amdgpu_ras_eeprom_init._entry.19, ptr @amdgpu_ras_eeprom_init._entry.23, ptr @amdgpu_ras_eeprom_init._entry.27, ptr @amdgpu_ras_eeprom_init._entry.30, ptr @amdgpu_ras_eeprom_init._entry.33, ptr @amdgpu_ras_eeprom_init._entry_ptr, ptr @amdgpu_ras_eeprom_init._entry_ptr.22, ptr @amdgpu_ras_eeprom_init._entry_ptr.26, ptr @amdgpu_ras_eeprom_init._entry_ptr.29, ptr @amdgpu_ras_eeprom_init._entry_ptr.32, ptr @amdgpu_ras_eeprom_init._entry_ptr.35, ptr @amdgpu_ras_eeprom_update_header._entry, ptr @amdgpu_ras_eeprom_update_header._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @amdgpu_ras_debugfs_eeprom_size_ops, ptr @amdgpu_ras_debugfs_eeprom_table_ops, ptr @amdgpu_ras_eeprom_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @record_err_type_str, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_check_err_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_check_err_threshold._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_debugfs_eeprom_size_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_debugfs_eeprom_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_eeprom_update_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @record_err_type_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_eeprom_reset_table(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_tbl_mutex = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ras_tbl_mutex, i32 noundef 0) #9
  %0 = ptrtoint ptr %control to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1095582802, ptr %control, align 1
  %version = getelementptr %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 1
  %1 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 65536, ptr %version, align 1
  %first_rec_offset = getelementptr %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 2
  %2 = ptrtoint ptr %first_rec_offset to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 20, ptr %first_rec_offset, align 1
  %tbl_size = getelementptr %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 3
  %3 = ptrtoint ptr %tbl_size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 20, ptr %tbl_size, align 1
  %checksum = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 4
  %4 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 179, ptr %checksum, align 1
  %call3 = tail call fastcc i32 @__write_table_header(ptr noundef %control)
  %ras_num_recs = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 4
  %5 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ras_num_recs, align 4
  %ras_fri = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 5
  %6 = ptrtoint ptr %ras_fri to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ras_fri, align 4
  %de_ras_eeprom_table.i = getelementptr i8, ptr %control, i32 -164
  %7 = ptrtoint ptr %de_ras_eeprom_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %de_ras_eeprom_table.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.amdgpu_ras_debugfs_set_ret_size.exit_crit_edge, label %if.then.i

entry.amdgpu_ras_debugfs_set_ret_size.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ras_debugfs_set_ret_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 204, ptr %i_size.i, align 8
  br label %amdgpu_ras_debugfs_set_ret_size.exit

amdgpu_ras_debugfs_set_ret_size.exit:             ; preds = %if.then.i, %entry.amdgpu_ras_debugfs_set_ret_size.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %ras_tbl_mutex) #9
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__write_table_header(ptr nocapture noundef readonly %control) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 4
  %1 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 8
  %2 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 12
  %3 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 16
  %adev1 = getelementptr i8, ptr %control, i32 -108
  %4 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev1, align 4
  %6 = ptrtoint ptr %control to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %control, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buf, align 4
  %version.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 1
  %10 = ptrtoint ptr %version.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %version.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %0, align 4
  %first_rec_offset.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 2
  %14 = ptrtoint ptr %first_rec_offset.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %first_rec_offset.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %tbl_size.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 3
  %18 = ptrtoint ptr %tbl_size.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %tbl_size.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %2, align 4
  %checksum.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 4
  %22 = ptrtoint ptr %checksum.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %checksum.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %3, align 4
  %reset_sem = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem) #9
  %smu_i2c = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 98, i32 25
  %i2c_address = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %26 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i2c_address, align 4
  %ras_header_offset = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 2
  %28 = ptrtoint ptr %ras_header_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ras_header_offset, align 4
  %add = add i32 %29, %27
  %call = call i32 @amdgpu_eeprom_write(ptr noundef %smu_i2c, i32 noundef %add, ptr noundef nonnull %buf, i16 noundef zeroext 20) #9
  call void @up_read(ptr noundef %reset_sem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, i32 noundef %call) #9
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call)
  %cmp5 = icmp ult i32 %call, 20
  br i1 %cmp5, label %if.then6, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %call, i32 noundef 20) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else.if.end8_crit_edge, %if.then
  %res.0 = phi i32 [ %call, %if.then ], [ -5, %if.then6 ], [ 0, %if.else.if.end8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_ras_debugfs_set_ret_size(ptr nocapture noundef readonly %control) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %de_ras_eeprom_table = getelementptr i8, ptr %control, i32 -164
  %0 = ptrtoint ptr %de_ras_eeprom_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %de_ras_eeprom_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ras_num_recs.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 4
  %2 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_num_recs.i, align 4
  %mul.i = mul i32 %3, 94
  %add3.i = add i32 %mul.i, 204
  %conv.i = zext i32 %add3.i to i64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %i_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_ras_eeprom_check_err_threshold(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 21, label %entry.__is_ras_eeprom_supported.exit_crit_edge
    i32 23, label %entry.__is_ras_eeprom_supported.exit_crit_edge20
    i32 30, label %entry.__is_ras_eeprom_supported.exit_crit_edge21
    i32 25, label %entry.__is_ras_eeprom_supported.exit_crit_edge22
  ]

entry.__is_ras_eeprom_supported.exit_crit_edge22: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__is_ras_eeprom_supported.exit

entry.__is_ras_eeprom_supported.exit_crit_edge21: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__is_ras_eeprom_supported.exit

entry.__is_ras_eeprom_supported.exit_crit_edge20: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__is_ras_eeprom_supported.exit

entry.__is_ras_eeprom_supported.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__is_ras_eeprom_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__is_ras_eeprom_supported.exit:                   ; preds = %entry.__is_ras_eeprom_supported.exit_crit_edge, %entry.__is_ras_eeprom_supported.exit_crit_edge20, %entry.__is_ras_eeprom_supported.exit_crit_edge21, %entry.__is_ras_eeprom_supported.exit_crit_edge22
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %__is_ras_eeprom_supported.exit.cleanup_crit_edge, label %if.else

__is_ras_eeprom_supported.exit.cleanup_crit_edge: ; preds = %__is_ras_eeprom_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %__is_ras_eeprom_supported.exit
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.end5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.else
  %eeprom_control = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %eeprom_control to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eeprom_control, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111573575, i32 %8)
  %cmp = icmp eq i32 %8, 1111573575
  br i1 %cmp, label %do.end, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str) #12
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge, %__is_ras_eeprom_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end ], [ false, %__is_ras_eeprom_supported.exit.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_eeprom_append(ptr noundef %control, ptr nocapture noundef readonly %record, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr i8, ptr %control, i32 -108
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 21, label %entry.if.end_crit_edge
    i32 23, label %entry.if.end_crit_edge91
    i32 30, label %entry.if.end_crit_edge92
    i32 25, label %entry.if.end_crit_edge93
  ]

entry.if.end_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge91, %entry.if.end_crit_edge92, %entry.if.end_crit_edge93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp eq i32 %num, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ras_max_record_count = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 6
  %5 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ras_max_record_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %num)
  %cmp3 = icmp ult i32 %6, %num
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %num, i32 noundef %6) #9
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %ras_tbl_mutex = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ras_tbl_mutex, i32 noundef 0) #9
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num, i32 24) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  br i1 %8, label %if.end7.if.end14_crit_edge, label %if.end7.i.i.i, !prof !135

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end7.i.i.i:                                    ; preds = %if.end7
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.if.end14_crit_edge, label %if.end7.i.i.i.for.body.i_crit_edge

if.end7.i.i.i.for.body.i_crit_edge:               ; preds = %if.end7.i.i.i
  br label %for.body.i

if.end7.i.i.i.if.end14_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.i.i.i.for.body.i_crit_edge
  %pp.0273.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call8.i.i.i, %if.end7.i.i.i.for.body.i_crit_edge ]
  %i.0272.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.i.i.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0272.i
  %err_type.i.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0272.i, i32 3
  %10 = ptrtoint ptr %err_type.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %err_type.i.i, align 1
  %conv.i.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %pp.0273.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.i, ptr %pp.0273.i, align 1
  %13 = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0272.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %pp.0273.i, i32 1
  %16 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx2.i.i, align 1
  %ts.i.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0272.i, i32 2
  %17 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %ts.i.i, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #9
  %add.ptr.i.i = getelementptr i8, ptr %pp.0273.i, i32 2
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %add.ptr.i.i, align 1
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx.i, align 1
  %and.i.i = and i64 %22, 281474976710655
  %23 = tail call i64 @llvm.bswap.i64(i64 %and.i.i) #9
  %add.ptr3.i.i = getelementptr i8, ptr %pp.0273.i, i32 10
  %tmp.0.extract.shift.i.i = lshr exact i64 %23, 16
  %tmp.0.extract.trunc.i.i = trunc i64 %tmp.0.extract.shift.i.i to i48
  %24 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 6)
  store i48 %tmp.0.extract.trunc.i.i, ptr %add.ptr3.i.i, align 1
  %mem_channel.i.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0272.i, i32 5
  %25 = ptrtoint ptr %mem_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mem_channel.i.i, align 1
  %arrayidx6.i.i = getelementptr i8, ptr %pp.0273.i, i32 16
  %27 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx6.i.i, align 1
  %mcumc_id.i.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0272.i, i32 6
  %28 = ptrtoint ptr %mcumc_id.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mcumc_id.i.i, align 1
  %arrayidx8.i.i = getelementptr i8, ptr %pp.0273.i, i32 17
  %30 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx8.i.i, align 1
  %retired_page.i.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0272.i, i32 1
  %31 = ptrtoint ptr %retired_page.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %retired_page.i.i, align 1
  %and9.i.i = and i64 %32, 281474976710655
  %33 = tail call i64 @llvm.bswap.i64(i64 %and9.i.i) #9
  %add.ptr10.i.i = getelementptr i8, ptr %pp.0273.i, i32 18
  %tmp.0.extract.shift20.i.i = lshr exact i64 %33, 16
  %tmp.0.extract.trunc21.i.i = trunc i64 %tmp.0.extract.shift20.i.i to i48
  %34 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 6)
  store i48 %tmp.0.extract.trunc21.i.i, ptr %add.ptr10.i.i, align 1
  %inc.i = add nuw i32 %i.0272.i, 1
  %add.ptr.i = getelementptr i8, ptr %pp.0273.i, i32 24
  %exitcond.not.i = icmp eq i32 %inc.i, %num
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %ras_fri.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 5
  %35 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ras_fri.i, align 4
  %ras_num_recs.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 4
  %37 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ras_num_recs.i, align 4
  %add.i = add i32 %38, %36
  %add1.i = add i32 %num, -1
  %sub.i = add i32 %add1.i, %add.i
  %39 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ras_max_record_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %40)
  %cmp2.i = icmp ult i32 %sub.i, %40
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %for.end.i
  %41 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adev1, align 4
  %reset_sem.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %42, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i.i) #9
  %smu_i2c.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %42, i32 0, i32 98, i32 25
  %i2c_address.i.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %43 = ptrtoint ptr %i2c_address.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i2c_address.i.i, align 4
  %ras_record_offset.i.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 3
  %45 = ptrtoint ptr %ras_record_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ras_record_offset.i.i, align 4
  %mul2.i.i = mul i32 %add.i, 24
  %add.i.i = add i32 %44, %mul2.i.i
  %add3.i.i = add i32 %add.i.i, %46
  %conv.i157.i = trunc i32 %9 to i16
  %call.i.i = tail call i32 @amdgpu_eeprom_write(ptr noundef %smu_i2c.i.i, i32 noundef %add3.i.i, ptr noundef nonnull %call8.i.i.i, i16 noundef zeroext %conv.i157.i) #9
  tail call void @up_read(ptr noundef %reset_sem.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %num, i32 noundef %call.i.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit

if.else.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %9)
  %cmp6.i.i = icmp ult i32 %call.i.i, %9
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else.i.i.amdgpu_ras_eeprom_append_table.exit_crit_edge

if.else.i.i.amdgpu_ras_eeprom_append_table.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ras_eeprom_append_table.exit

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i.i = udiv i32 %call.i.i, 24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %div22.i.i, i32 noundef %num) #9
  br label %amdgpu_ras_eeprom_append_table.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add.i)
  %cmp6.i = icmp ugt i32 %40, %add.i
  br i1 %cmp6.i, label %if.then7.i, label %if.else29.i

if.then7.i:                                       ; preds = %if.else.i
  %sub9.i = sub i32 %40, %add.i
  %rem.i = urem i32 %sub.i, %40
  %add11.i = add nuw i32 %rem.i, 1
  %47 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adev1, align 4
  %reset_sem.i159.i = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i159.i) #9
  %mul.i160.i = mul i32 %sub9.i, 24
  %smu_i2c.i161.i = getelementptr inbounds %struct.amdgpu_device, ptr %48, i32 0, i32 98, i32 25
  %i2c_address.i162.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %49 = ptrtoint ptr %i2c_address.i162.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i2c_address.i162.i, align 4
  %ras_record_offset.i163.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 3
  %51 = ptrtoint ptr %ras_record_offset.i163.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ras_record_offset.i163.i, align 4
  %mul2.i164.i = mul i32 %add.i, 24
  %add.i165.i = add i32 %50, %mul2.i164.i
  %add3.i166.i = add i32 %add.i165.i, %52
  %conv.i167.i = trunc i32 %mul.i160.i to i16
  %call.i168.i = tail call i32 @amdgpu_eeprom_write(ptr noundef %smu_i2c.i161.i, i32 noundef %add3.i166.i, ptr noundef nonnull %call8.i.i.i, i16 noundef zeroext %conv.i167.i) #9
  tail call void @up_read(ptr noundef %reset_sem.i159.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168.i)
  %cmp.i169.i = icmp slt i32 %call.i168.i, 0
  br i1 %cmp.i169.i, label %if.then.i170.i, label %if.else.i172.i

if.then.i170.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %sub9.i, i32 noundef %call.i168.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.else.i172.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i168.i, i32 %mul.i160.i)
  %cmp6.i171.i = icmp ult i32 %call.i168.i, %mul.i160.i
  br i1 %cmp6.i171.i, label %if.then8.i174.i, label %if.end15.i

if.then8.i174.i:                                  ; preds = %if.else.i172.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i173.i = udiv i32 %call.i168.i, 24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %div22.i173.i, i32 noundef %sub9.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.end15.i:                                       ; preds = %if.else.i172.i
  %add.ptr16.i = getelementptr i8, ptr %call8.i.i.i, i32 %mul.i160.i
  %53 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adev1, align 4
  %reset_sem.i178.i = getelementptr inbounds %struct.amdgpu_device, ptr %54, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i178.i) #9
  %mul.i179.i = mul i32 %add11.i, 24
  %smu_i2c.i180.i = getelementptr inbounds %struct.amdgpu_device, ptr %54, i32 0, i32 98, i32 25
  %55 = ptrtoint ptr %i2c_address.i162.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i2c_address.i162.i, align 4
  %57 = ptrtoint ptr %ras_record_offset.i163.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ras_record_offset.i163.i, align 4
  %add3.i183.i = add i32 %58, %56
  %conv.i184.i = trunc i32 %mul.i179.i to i16
  %call.i185.i = tail call i32 @amdgpu_eeprom_write(ptr noundef %smu_i2c.i180.i, i32 noundef %add3.i183.i, ptr noundef %add.ptr16.i, i16 noundef zeroext %conv.i184.i) #9
  tail call void @up_read(ptr noundef %reset_sem.i178.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185.i)
  %cmp.i186.i = icmp slt i32 %call.i185.i, 0
  br i1 %cmp.i186.i, label %if.then.i187.i, label %if.else.i189.i

if.then.i187.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %add11.i, i32 noundef %call.i185.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.else.i189.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i185.i, i32 %mul.i179.i)
  %cmp6.i188.i = icmp ult i32 %call.i185.i, %mul.i179.i
  br i1 %cmp6.i188.i, label %if.then8.i191.i, label %if.end20.i

if.then8.i191.i:                                  ; preds = %if.else.i189.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i190.i = udiv i32 %call.i185.i, 24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %div22.i190.i, i32 noundef %add11.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.end20.i:                                       ; preds = %if.else.i189.i
  %59 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ras_fri.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %60)
  %cmp22.not.i = icmp ult i32 %rem.i, %60
  br i1 %cmp22.not.i, label %if.end20.i.amdgpu_ras_eeprom_append_table.exit_crit_edge, label %if.then23.i

if.end20.i.amdgpu_ras_eeprom_append_table.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ras_eeprom_append_table.exit

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ras_max_record_count, align 4
  %rem25.i = urem i32 %add11.i, %62
  %63 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %rem25.i, ptr %ras_fri.i, align 4
  br label %amdgpu_ras_eeprom_append_table.exit

if.else29.i:                                      ; preds = %if.else.i
  %rem31.i = urem i32 %add.i, %40
  %rem33.i = urem i32 %sub.i, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %rem31.i, i32 %rem33.i)
  %cmp34.not.i = icmp ugt i32 %rem31.i, %rem33.i
  br i1 %cmp34.not.i, label %if.else48.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.else29.i
  %64 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adev1, align 4
  %reset_sem.i195.i = getelementptr inbounds %struct.amdgpu_device, ptr %65, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i195.i) #9
  %smu_i2c.i197.i = getelementptr inbounds %struct.amdgpu_device, ptr %65, i32 0, i32 98, i32 25
  %i2c_address.i198.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %66 = ptrtoint ptr %i2c_address.i198.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i2c_address.i198.i, align 4
  %ras_record_offset.i199.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 3
  %68 = ptrtoint ptr %ras_record_offset.i199.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ras_record_offset.i199.i, align 4
  %mul2.i200.i = mul i32 %rem31.i, 24
  %add.i201.i = add i32 %67, %mul2.i200.i
  %add3.i202.i = add i32 %add.i201.i, %69
  %conv.i203.i = trunc i32 %9 to i16
  %call.i204.i = tail call i32 @amdgpu_eeprom_write(ptr noundef %smu_i2c.i197.i, i32 noundef %add3.i202.i, ptr noundef nonnull %call8.i.i.i, i16 noundef zeroext %conv.i203.i) #9
  tail call void @up_read(ptr noundef %reset_sem.i195.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204.i)
  %cmp.i205.i = icmp slt i32 %call.i204.i, 0
  br i1 %cmp.i205.i, label %if.then.i206.i, label %if.else.i208.i

if.then.i206.i:                                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %num, i32 noundef %call.i204.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.else.i208.i:                                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i204.i, i32 %9)
  %cmp6.i207.i = icmp ult i32 %call.i204.i, %9
  br i1 %cmp6.i207.i, label %if.then8.i210.i, label %if.end39.i

if.then8.i210.i:                                  ; preds = %if.else.i208.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i209.i = udiv i32 %call.i204.i, 24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %div22.i209.i, i32 noundef %num) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.end39.i:                                       ; preds = %if.else.i208.i
  %70 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ras_fri.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem33.i, i32 %71)
  %cmp41.not.i = icmp ult i32 %rem33.i, %71
  br i1 %cmp41.not.i, label %if.end39.i.amdgpu_ras_eeprom_append_table.exit_crit_edge, label %if.then42.i

if.end39.i.amdgpu_ras_eeprom_append_table.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %amdgpu_ras_eeprom_append_table.exit

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %add43.i = add nuw i32 %rem33.i, 1
  %72 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ras_max_record_count, align 4
  %rem45.i = urem i32 %add43.i, %73
  %74 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %rem45.i, ptr %ras_fri.i, align 4
  br label %amdgpu_ras_eeprom_append_table.exit

if.else48.i:                                      ; preds = %if.else29.i
  %sub52.i = sub i32 %40, %rem31.i
  %add53.i = add nuw i32 %rem33.i, 1
  %75 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adev1, align 4
  %reset_sem.i214.i = getelementptr inbounds %struct.amdgpu_device, ptr %76, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i214.i) #9
  %mul.i215.i = mul i32 %sub52.i, 24
  %smu_i2c.i216.i = getelementptr inbounds %struct.amdgpu_device, ptr %76, i32 0, i32 98, i32 25
  %i2c_address.i217.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %77 = ptrtoint ptr %i2c_address.i217.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i2c_address.i217.i, align 4
  %ras_record_offset.i218.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 3
  %79 = ptrtoint ptr %ras_record_offset.i218.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ras_record_offset.i218.i, align 4
  %mul2.i219.i = mul i32 %rem31.i, 24
  %add.i220.i = add i32 %78, %mul2.i219.i
  %add3.i221.i = add i32 %add.i220.i, %80
  %conv.i222.i = trunc i32 %mul.i215.i to i16
  %call.i223.i = tail call i32 @amdgpu_eeprom_write(ptr noundef %smu_i2c.i216.i, i32 noundef %add3.i221.i, ptr noundef nonnull %call8.i.i.i, i16 noundef zeroext %conv.i222.i) #9
  tail call void @up_read(ptr noundef %reset_sem.i214.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.i)
  %cmp.i224.i = icmp slt i32 %call.i223.i, 0
  br i1 %cmp.i224.i, label %if.then.i225.i, label %if.else.i227.i

if.then.i225.i:                                   ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %sub52.i, i32 noundef %call.i223.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.else.i227.i:                                   ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i223.i, i32 %mul.i215.i)
  %cmp6.i226.i = icmp ult i32 %call.i223.i, %mul.i215.i
  br i1 %cmp6.i226.i, label %if.then8.i229.i, label %if.end57.i

if.then8.i229.i:                                  ; preds = %if.else.i227.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i228.i = udiv i32 %call.i223.i, 24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %div22.i228.i, i32 noundef %sub52.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.end57.i:                                       ; preds = %if.else.i227.i
  %add.ptr59.i = getelementptr i8, ptr %call8.i.i.i, i32 %mul.i215.i
  %81 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adev1, align 4
  %reset_sem.i233.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i233.i) #9
  %mul.i234.i = mul i32 %add53.i, 24
  %smu_i2c.i235.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 25
  %83 = ptrtoint ptr %i2c_address.i217.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i2c_address.i217.i, align 4
  %85 = ptrtoint ptr %ras_record_offset.i218.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ras_record_offset.i218.i, align 4
  %add3.i238.i = add i32 %86, %84
  %conv.i239.i = trunc i32 %mul.i234.i to i16
  %call.i240.i = tail call i32 @amdgpu_eeprom_write(ptr noundef %smu_i2c.i235.i, i32 noundef %add3.i238.i, ptr noundef %add.ptr59.i, i16 noundef zeroext %conv.i239.i) #9
  tail call void @up_read(ptr noundef %reset_sem.i233.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240.i)
  %cmp.i241.i = icmp slt i32 %call.i240.i, 0
  br i1 %cmp.i241.i, label %if.then.i242.i, label %if.else.i244.i

if.then.i242.i:                                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %add53.i, i32 noundef %call.i240.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

if.else.i244.i:                                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i240.i, i32 %mul.i234.i)
  %cmp6.i243.i = icmp ult i32 %call.i240.i, %mul.i234.i
  br i1 %cmp6.i243.i, label %if.then8.i246.i, label %cleanup67.i

if.then8.i246.i:                                  ; preds = %if.else.i244.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i245.i = udiv i32 %call.i240.i, 24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %div22.i245.i, i32 noundef %add53.i) #9
  br label %amdgpu_ras_eeprom_append_table.exit.thread80

cleanup67.i:                                      ; preds = %if.else.i244.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ras_max_record_count, align 4
  %rem65.i = urem i32 %add53.i, %88
  %89 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %rem65.i, ptr %ras_fri.i, align 4
  br label %amdgpu_ras_eeprom_append_table.exit

amdgpu_ras_eeprom_append_table.exit.thread80:     ; preds = %if.then8.i246.i, %if.then.i242.i, %if.then8.i229.i, %if.then.i225.i, %if.then8.i210.i, %if.then.i206.i, %if.then8.i191.i, %if.then.i187.i, %if.then8.i174.i, %if.then.i170.i
  %res.3.i.ph = phi i32 [ %call.i240.i, %if.then.i242.i ], [ -5, %if.then8.i246.i ], [ %call.i223.i, %if.then.i225.i ], [ -5, %if.then8.i229.i ], [ %call.i204.i, %if.then.i206.i ], [ -5, %if.then8.i210.i ], [ %call.i185.i, %if.then.i187.i ], [ -5, %if.then8.i191.i ], [ %call.i168.i, %if.then.i170.i ], [ -5, %if.then8.i174.i ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  br label %if.end14

amdgpu_ras_eeprom_append_table.exit:              ; preds = %cleanup67.i, %if.then42.i, %if.end39.i.amdgpu_ras_eeprom_append_table.exit_crit_edge, %if.then23.i, %if.end20.i.amdgpu_ras_eeprom_append_table.exit_crit_edge, %if.then8.i.i, %if.else.i.i.amdgpu_ras_eeprom_append_table.exit_crit_edge, %if.then.i.i
  %b.0.i = phi i32 [ %rem33.i, %if.then42.i ], [ %rem33.i, %if.end39.i.amdgpu_ras_eeprom_append_table.exit_crit_edge ], [ %rem33.i, %cleanup67.i ], [ %sub.i, %if.then.i.i ], [ %sub.i, %if.else.i.i.amdgpu_ras_eeprom_append_table.exit_crit_edge ], [ %sub.i, %if.then8.i.i ], [ %sub.i, %if.then23.i ], [ %sub.i, %if.end20.i.amdgpu_ras_eeprom_append_table.exit_crit_edge ]
  %res.2.i = phi i32 [ 0, %if.then42.i ], [ 0, %if.end39.i.amdgpu_ras_eeprom_append_table.exit_crit_edge ], [ 0, %cleanup67.i ], [ %call.i.i, %if.then.i.i ], [ 0, %if.else.i.i.amdgpu_ras_eeprom_append_table.exit_crit_edge ], [ -5, %if.then8.i.i ], [ 0, %if.then23.i ], [ 0, %if.end20.i.amdgpu_ras_eeprom_append_table.exit_crit_edge ]
  %90 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ras_max_record_count, align 4
  %add75.i = add i32 %91, %b.0.i
  %92 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ras_fri.i, align 4
  %sub77.i = sub i32 %add75.i, %93
  %rem79.i = urem i32 %sub77.i, %91
  %add80.i = add nuw i32 %rem79.i, 1
  %94 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add80.i, ptr %ras_num_recs.i, align 4
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.2.i)
  %tobool.not = icmp eq i32 %res.2.i, 0
  br i1 %tobool.not, label %if.then9, label %amdgpu_ras_eeprom_append_table.exit.if.end14_crit_edge

amdgpu_ras_eeprom_append_table.exit.if.end14_crit_edge: ; preds = %amdgpu_ras_eeprom_append_table.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9:                                         ; preds = %amdgpu_ras_eeprom_append_table.exit
  %95 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %97 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.not.i = icmp eq i32 %97, 0
  br i1 %cmp.not.i, label %if.then9.if.end.i_crit_edge, label %land.lhs.true.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then9
  %ras2.i = getelementptr inbounds %struct.amdgpu_device, ptr %96, i32 0, i32 113, i32 34, i32 1
  %98 = ptrtoint ptr %ras2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ras2.i, align 8
  %100 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ras_num_recs.i, align 4
  %bad_page_cnt_threshold.i = getelementptr inbounds %struct.amdgpu_ras, ptr %99, i32 0, i32 15
  %102 = ptrtoint ptr %bad_page_cnt_threshold.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bad_page_cnt_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp3.not.i = icmp ult i32 %101, %103
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %96, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %105, ptr noundef nonnull @.str.40, i32 noundef %101, i32 noundef %103) #12
  %106 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1111573575, ptr %control, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then9.if.end.i_crit_edge
  %version.i = getelementptr %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 1
  %107 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 65536, ptr %version.i, align 4
  %ras_record_offset.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 3
  %108 = ptrtoint ptr %ras_record_offset.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ras_record_offset.i, align 4
  %110 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ras_fri.i, align 4
  %mul.i = mul i32 %111, 24
  %add.i31 = add i32 %mul.i, %109
  %first_rec_offset.i = getelementptr %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 2
  %112 = ptrtoint ptr %first_rec_offset.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add.i31, ptr %first_rec_offset.i, align 4
  %113 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ras_num_recs.i, align 4
  %mul9.i = mul i32 %114, 24
  %add10.i = add i32 %mul9.i, 20
  %tbl_size.i = getelementptr %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 3
  %115 = ptrtoint ptr %tbl_size.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add10.i, ptr %tbl_size.i, align 4
  %checksum.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 4
  %116 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %checksum.i, align 4
  %117 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %114, i32 24) #9
  %118 = extractvalue { i32, i1 } %117, 1
  br i1 %118, label %if.end.i.if.then16.i_crit_edge, label %if.end7.i.i.i62, !prof !135

if.end.i.if.then16.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.end7.i.i.i62:                                  ; preds = %if.end.i
  %119 = extractvalue { i32, i1 } %117, 0
  %call8.i.i.i61 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %119, i32 noundef 3520) #13
  %tobool.not.i64 = icmp eq ptr %call8.i.i.i61, null
  br i1 %tobool.not.i64, label %if.end7.i.i.i62.if.then16.i_crit_edge, label %if.end19.i

if.end7.i.i.i62.if.then16.i_crit_edge:            ; preds = %if.end7.i.i.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.end7.i.i.i62.if.then16.i_crit_edge, %if.end.i.if.then16.i_crit_edge
  %120 = ptrtoint ptr %tbl_size.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tbl_size.i, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %121) #9
  br label %if.end11.thread87

if.end19.i:                                       ; preds = %if.end7.i.i.i62
  %reset_sem.i = getelementptr inbounds %struct.amdgpu_device, ptr %96, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i) #9
  %smu_i2c.i = getelementptr inbounds %struct.amdgpu_device, ptr %96, i32 0, i32 98, i32 25
  %i2c_address.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %122 = ptrtoint ptr %i2c_address.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %i2c_address.i, align 4
  %124 = ptrtoint ptr %ras_record_offset.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ras_record_offset.i, align 4
  %add21.i = add i32 %125, %123
  %conv.i = trunc i32 %mul9.i to i16
  %call22.i = tail call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add21.i, ptr noundef nonnull %call8.i.i.i61, i16 noundef zeroext %conv.i) #9
  tail call void @up_read(ptr noundef %reset_sem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp24.i = icmp slt i32 %call22.i, 0
  br i1 %cmp24.i, label %if.then26.i, label %if.else.i66

if.then26.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef %call22.i) #9
  br label %if.end11.thread87

if.else.i66:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call22.i, i32 %mul9.i)
  %cmp27.i = icmp ult i32 %call22.i, %mul9.i
  br i1 %cmp27.i, label %if.then29.i, label %for.cond.preheader.i67

for.cond.preheader.i67:                           ; preds = %if.else.i66
  %add.ptr32.i = getelementptr i8, ptr %call8.i.i.i61, i32 %mul9.i
  %cmp3398.i = icmp ult ptr %call8.i.i.i61, %add.ptr32.i
  br i1 %cmp3398.i, label %for.cond.preheader.i67.for.body.i69_crit_edge, label %for.cond.preheader.i67.if.end11_crit_edge

for.cond.preheader.i67.if.end11_crit_edge:        ; preds = %for.cond.preheader.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.preheader.i67.for.body.i69_crit_edge:    ; preds = %for.cond.preheader.i67
  br label %for.body.i69

if.then29.i:                                      ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %call22.i, i32 noundef %mul9.i) #9
  br label %if.end11.thread87

for.body.i69:                                     ; preds = %for.body.i69.for.body.i69_crit_edge, %for.cond.preheader.i67.for.body.i69_crit_edge
  %csum.0100.i = phi i32 [ %phi.cast.i, %for.body.i69.for.body.i69_crit_edge ], [ 0, %for.cond.preheader.i67.for.body.i69_crit_edge ]
  %pp.099.i = phi ptr [ %incdec.ptr.i, %for.body.i69.for.body.i69_crit_edge ], [ %call8.i.i.i61, %for.cond.preheader.i67.for.body.i69_crit_edge ]
  %126 = ptrtoint ptr %pp.099.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %pp.099.i, align 1
  %conv35.i = zext i8 %127 to i32
  %add37.i = add nuw nsw i32 %csum.0100.i, %conv35.i
  %incdec.ptr.i = getelementptr i8, ptr %pp.099.i, i32 1
  %phi.cast.i = and i32 %add37.i, 255
  %exitcond.not.i68 = icmp eq ptr %incdec.ptr.i, %add.ptr32.i
  br i1 %exitcond.not.i68, label %for.end.loopexit.i, label %for.body.i69.for.body.i69_crit_edge

for.body.i69.for.body.i69_crit_edge:              ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i69

for.end.loopexit.i:                               ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast101.i = trunc i32 %add37.i to i8
  br label %if.end11

if.end11.thread87:                                ; preds = %if.then29.i, %if.then26.i, %if.then16.i
  %retval.0.i.i92.i.ph = phi ptr [ null, %if.then16.i ], [ %call8.i.i.i61, %if.then29.i ], [ %call8.i.i.i61, %if.then26.i ]
  %res.0.i.ph = phi i32 [ -12, %if.then16.i ], [ -5, %if.then29.i ], [ %call22.i, %if.then26.i ]
  tail call void @kfree(ptr noundef %retval.0.i.i92.i.ph) #9
  br label %if.end14

if.end11:                                         ; preds = %for.end.loopexit.i, %for.cond.preheader.i67.if.end11_crit_edge
  %csum.0.lcssa.i = phi i8 [ 0, %for.cond.preheader.i67.if.end11_crit_edge ], [ %phi.cast101.i, %for.end.loopexit.i ]
  %128 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %control, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %control, i32 1
  %130 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %incdec.ptr.i.i, align 1
  %add.1.i.i = add i8 %129, %131
  %incdec.ptr.1.i.i = getelementptr i8, ptr %control, i32 2
  %132 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %incdec.ptr.1.i.i, align 1
  %add.2.i.i = add i8 %133, %add.1.i.i
  %incdec.ptr.2.i.i = getelementptr i8, ptr %control, i32 3
  %134 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %incdec.ptr.2.i.i, align 1
  %add.3.i.i = add i8 %135, %add.2.i.i
  %136 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %version.i, align 1
  %add.4.i.i = add i8 %137, %add.3.i.i
  %incdec.ptr.4.i.i = getelementptr i8, ptr %control, i32 5
  %138 = ptrtoint ptr %incdec.ptr.4.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %incdec.ptr.4.i.i, align 1
  %add.5.i.i = add i8 %139, %add.4.i.i
  %incdec.ptr.5.i.i = getelementptr i8, ptr %control, i32 6
  %140 = ptrtoint ptr %incdec.ptr.5.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %incdec.ptr.5.i.i, align 1
  %add.6.i.i = add i8 %141, %add.5.i.i
  %incdec.ptr.6.i.i = getelementptr i8, ptr %control, i32 7
  %142 = ptrtoint ptr %incdec.ptr.6.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %incdec.ptr.6.i.i, align 1
  %add.7.i.i = add i8 %143, %add.6.i.i
  %144 = ptrtoint ptr %first_rec_offset.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %first_rec_offset.i, align 1
  %add.8.i.i = add i8 %145, %add.7.i.i
  %incdec.ptr.8.i.i = getelementptr i8, ptr %control, i32 9
  %146 = ptrtoint ptr %incdec.ptr.8.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %incdec.ptr.8.i.i, align 1
  %add.9.i.i = add i8 %147, %add.8.i.i
  %incdec.ptr.9.i.i = getelementptr i8, ptr %control, i32 10
  %148 = ptrtoint ptr %incdec.ptr.9.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %incdec.ptr.9.i.i, align 1
  %add.10.i.i = add i8 %149, %add.9.i.i
  %incdec.ptr.10.i.i = getelementptr i8, ptr %control, i32 11
  %150 = ptrtoint ptr %incdec.ptr.10.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %incdec.ptr.10.i.i, align 1
  %add.11.i.i = add i8 %151, %add.10.i.i
  %152 = ptrtoint ptr %tbl_size.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %tbl_size.i, align 1
  %add.12.i.i = add i8 %153, %add.11.i.i
  %incdec.ptr.12.i.i = getelementptr i8, ptr %control, i32 13
  %154 = ptrtoint ptr %incdec.ptr.12.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %incdec.ptr.12.i.i, align 1
  %add.13.i.i = add i8 %155, %add.12.i.i
  %incdec.ptr.13.i.i = getelementptr i8, ptr %control, i32 14
  %156 = ptrtoint ptr %incdec.ptr.13.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %incdec.ptr.13.i.i, align 1
  %add.14.i.i = add i8 %157, %add.13.i.i
  %incdec.ptr.14.i.i = getelementptr i8, ptr %control, i32 15
  %158 = ptrtoint ptr %incdec.ptr.14.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %incdec.ptr.14.i.i, align 1
  %add.15.i.i = add i8 %159, %add.14.i.i
  %conv43.i = add i8 %csum.0.lcssa.i, %add.15.i.i
  %sub.i70 = sub i8 0, %conv43.i
  %conv46.i = zext i8 %sub.i70 to i32
  %160 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %conv46.i, ptr %checksum.i, align 4
  %call49.i = tail call fastcc i32 @__write_table_header(ptr noundef %control) #9
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool12.not = icmp eq i32 %call49.i, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  %de_ras_eeprom_table.i = getelementptr i8, ptr %control, i32 -164
  %161 = ptrtoint ptr %de_ras_eeprom_table.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %de_ras_eeprom_table.i, align 4
  %tobool.not.i73 = icmp eq ptr %162, null
  br i1 %tobool.not.i73, label %if.then13.if.end14_crit_edge, label %if.then.i

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ras_num_recs.i, align 4
  %mul.i.i = mul i32 %164, 94
  %add3.i.i74 = add i32 %mul.i.i, 204
  %conv.i.i75 = zext i32 %add3.i.i74 to i64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %162, i32 0, i32 5
  %165 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %d_inode.i.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %166, i32 0, i32 14
  %167 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv.i.i75, ptr %i_size.i, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.then13.if.end14_crit_edge, %if.end11.if.end14_crit_edge, %if.end11.thread87, %amdgpu_ras_eeprom_append_table.exit.if.end14_crit_edge, %amdgpu_ras_eeprom_append_table.exit.thread80, %if.end7.i.i.i.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %res.085 = phi i32 [ %call49.i, %if.end11.if.end14_crit_edge ], [ %res.0.i.ph, %if.end11.thread87 ], [ 0, %if.then13.if.end14_crit_edge ], [ 0, %if.then.i ], [ %res.3.i.ph, %amdgpu_ras_eeprom_append_table.exit.thread80 ], [ %res.2.i, %amdgpu_ras_eeprom_append_table.exit.if.end14_crit_edge ], [ -12, %if.end7.i.i.i.if.end14_crit_edge ], [ -12, %if.end7.if.end14_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ras_tbl_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %if.then4 ], [ %res.085, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_eeprom_read(ptr noundef %control, ptr nocapture noundef writeonly %record, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr i8, ptr %control, i32 -108
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 21, label %entry.if.end_crit_edge
    i32 23, label %entry.if.end_crit_edge108
    i32 30, label %entry.if.end_crit_edge109
    i32 25, label %entry.if.end_crit_edge110
  ]

entry.if.end_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge108, %entry.if.end_crit_edge109, %entry.if.end_crit_edge110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp eq i32 %num, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ras_num_recs = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 4
  %5 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ras_num_recs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %num)
  %cmp3 = icmp ult i32 %6, %num
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %num, i32 noundef %6) #9
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num, i32 24) #9
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  br i1 %8, label %if.end7.cleanup_crit_edge, label %if.end7.i.i, !prof !135

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end7
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end10

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i.i
  %ras_fri = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 5
  %10 = ptrtoint ptr %ras_fri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ras_fri, align 4
  %add = add nsw i32 %num, -1
  %sub = add i32 %add, %11
  %ras_max_record_count = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 6
  %12 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ras_max_record_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp12 = icmp ult i32 %sub, %13
  br i1 %cmp12, label %if.end10.if.end19_crit_edge, label %if.else14

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %rem = urem i32 %sub, %13
  %sub17 = sub i32 %13, %11
  %add18 = add nuw i32 %rem, 1
  %.pre = mul i32 %sub17, 24
  br label %if.end19

if.end19:                                         ; preds = %if.else14, %if.end10.if.end19_crit_edge
  %mul.i.pre-phi = phi i32 [ %9, %if.end10.if.end19_crit_edge ], [ %.pre, %if.else14 ]
  %g0.0 = phi i32 [ %num, %if.end10.if.end19_crit_edge ], [ %sub17, %if.else14 ]
  %g1.0 = phi i32 [ 0, %if.end10.if.end19_crit_edge ], [ %add18, %if.else14 ]
  %ras_tbl_mutex = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ras_tbl_mutex, i32 noundef 0) #9
  %14 = ptrtoint ptr %ras_fri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ras_fri, align 4
  %16 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev1, align 4
  %reset_sem.i = getelementptr inbounds %struct.amdgpu_device, ptr %17, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i) #9
  %smu_i2c.i = getelementptr inbounds %struct.amdgpu_device, ptr %17, i32 0, i32 98, i32 25
  %i2c_address.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %18 = ptrtoint ptr %i2c_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i2c_address.i, align 4
  %ras_record_offset.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 3
  %20 = ptrtoint ptr %ras_record_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ras_record_offset.i, align 4
  %mul2.i = mul i32 %15, 24
  %add.i = add i32 %19, %mul2.i
  %add3.i = add i32 %add.i, %21
  %conv.i = trunc i32 %mul.i.pre-phi to i16
  %call.i = tail call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i, i32 noundef %add3.i, ptr noundef nonnull %call8.i.i, i16 noundef zeroext %conv.i) #9
  tail call void @up_read(ptr noundef %reset_sem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %g0.0, i32 noundef %call.i) #9
  br label %Out

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul.i.pre-phi)
  %cmp6.i = icmp ult i32 %call.i, %mul.i.pre-phi
  br i1 %cmp6.i, label %if.then8.i, label %if.end24

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i = udiv i32 %call.i, 24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %div22.i, i32 noundef %g0.0) #9
  br label %Out

if.end24:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g1.0)
  %tobool25.not = icmp eq i32 %g1.0, 0
  br i1 %tobool25.not, label %if.end24.for.body.preheader_crit_edge, label %if.then26

if.end24.for.body.preheader_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then26:                                        ; preds = %if.end24
  %add.ptr27 = getelementptr i8, ptr %call8.i.i, i32 %mul.i.pre-phi
  %22 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev1, align 4
  %reset_sem.i77 = getelementptr inbounds %struct.amdgpu_device, ptr %23, i32 0, i32 143
  tail call void @down_read(ptr noundef %reset_sem.i77) #9
  %mul.i78 = mul i32 %g1.0, 24
  %smu_i2c.i79 = getelementptr inbounds %struct.amdgpu_device, ptr %23, i32 0, i32 98, i32 25
  %24 = ptrtoint ptr %i2c_address.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i2c_address.i, align 4
  %26 = ptrtoint ptr %ras_record_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ras_record_offset.i, align 4
  %add3.i82 = add i32 %27, %25
  %conv.i83 = trunc i32 %mul.i78 to i16
  %call.i84 = tail call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i79, i32 noundef %add3.i82, ptr noundef %add.ptr27, i16 noundef zeroext %conv.i83) #9
  tail call void @up_read(ptr noundef %reset_sem.i77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp.i85 = icmp slt i32 %call.i84, 0
  br i1 %cmp.i85, label %if.then.i86, label %if.else.i88

if.then.i86:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %g1.0, i32 noundef %call.i84) #9
  br label %Out

if.else.i88:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i84, i32 %mul.i78)
  %cmp6.i87 = icmp ult i32 %call.i84, %mul.i78
  br i1 %cmp6.i87, label %if.then8.i90, label %if.else.i88.for.body.preheader_crit_edge

if.else.i88.for.body.preheader_crit_edge:         ; preds = %if.else.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else.i88.for.body.preheader_crit_edge, %if.end24.for.body.preheader_crit_edge
  br label %for.body

if.then8.i90:                                     ; preds = %if.else.i88
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i89 = udiv i32 %call.i84, 24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %div22.i89, i32 noundef %g1.0) #9
  br label %Out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pp.0107 = phi ptr [ %add.ptr34, %for.body.for.body_crit_edge ], [ %call8.i.i, %for.body.preheader ]
  %i.0106 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0106
  %28 = ptrtoint ptr %pp.0107 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pp.0107, align 1
  %conv.i93 = zext i8 %29 to i32
  %err_type.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0106, i32 3
  %30 = ptrtoint ptr %err_type.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %conv.i93, ptr %err_type.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %pp.0107, i32 1
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2.i, align 1
  %33 = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0106, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %33, align 1
  %add.ptr.i = getelementptr i8, ptr %pp.0107, i32 2
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %tmp.0.copyload.i = load i64, ptr %add.ptr.i, align 1
  %36 = tail call i64 @llvm.bswap.i64(i64 %tmp.0.copyload.i) #9
  %ts.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0106, i32 2
  %37 = ptrtoint ptr %ts.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %ts.i, align 1
  %add.ptr3.i = getelementptr i8, ptr %pp.0107, i32 10
  %38 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 6)
  %tmp.0.copyload21.i = load i48, ptr %add.ptr3.i, align 1
  %39 = tail call i48 @llvm.bswap.i48(i48 %tmp.0.copyload21.i) #9
  %40 = zext i48 %39 to i64
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %arrayidx, align 1
  %arrayidx6.i = getelementptr i8, ptr %pp.0107, i32 16
  %42 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx6.i, align 1
  %mem_channel.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0106, i32 5
  %44 = ptrtoint ptr %mem_channel.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %mem_channel.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %pp.0107, i32 17
  %45 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx8.i, align 1
  %mcumc_id.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0106, i32 6
  %47 = ptrtoint ptr %mcumc_id.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %mcumc_id.i, align 1
  %add.ptr9.i = getelementptr i8, ptr %pp.0107, i32 18
  %48 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 6)
  %tmp.0.copyload22.i = load i48, ptr %add.ptr9.i, align 1
  %49 = tail call i48 @llvm.bswap.i48(i48 %tmp.0.copyload22.i) #9
  %50 = zext i48 %49 to i64
  %retired_page.i = getelementptr %struct.eeprom_table_record, ptr %record, i32 %i.0106, i32 1
  %51 = ptrtoint ptr %retired_page.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %retired_page.i, align 1
  %inc = add nuw i32 %i.0106, 1
  %add.ptr34 = getelementptr i8, ptr %pp.0107, i32 24
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.Out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.Out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %Out

Out:                                              ; preds = %for.body.Out_crit_edge, %if.then8.i90, %if.then.i86, %if.then8.i, %if.then.i
  %res.0 = phi i32 [ -5, %if.then8.i ], [ %call.i, %if.then.i ], [ -5, %if.then8.i90 ], [ %call.i84, %if.then.i86 ], [ 0, %for.body.Out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ras_tbl_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %Out, %if.end7.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %if.then4 ], [ %res.0, %Out ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_ras_eeprom_max_record_count() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10921
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ras_debugfs_eeprom_size_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %data = alloca [50 x i8], align 1
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
  %ras1 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 113, i32 34, i32 1
  %4 = ptrtoint ptr %ras1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ras1, align 8
  %tobool.not = icmp eq ptr %5, null
  %eeprom_control = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13
  %spec.select = select i1 %tobool.not, ptr null, ptr %eeprom_control
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %data) #9
  %6 = call ptr @memset(ptr %data, i32 255, i32 50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool2.not = icmp eq i32 %size, 0
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %spec.select, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %data, ptr @.str.47, i32 15)
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ras_max_record_count = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %spec.select, i32 0, i32 6
  %8 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ras_max_record_count, align 4
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data, i32 noundef 50, ptr noundef nonnull @.str.48, i32 noundef 262144, i32 noundef %9)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %res.0 = phi i32 [ %call8, %if.else ], [ 14, %if.then5 ]
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %conv = sext i32 %res.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv)
  %cmp.not = icmp slt i64 %11, %conv
  br i1 %cmp.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %12 = trunc i64 %11 to i32
  %conv14 = sub i32 %res.0, %12
  %13 = tail call i32 @llvm.umin.i32(i32 %conv14, i32 %size)
  %arrayidx = getelementptr [50 x i8], ptr %data, i32 0, i32 %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.i.i = icmp slt i32 %13, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end12
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !136

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end12
  call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %13, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %13, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef %13) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %13) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %13, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %13, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool22.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool22.not, label %if.end24, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv2548 = zext i32 %13 to i64
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos, align 8
  %add = add i64 %16, %conv2548
  store i64 %add, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ras_debugfs_eeprom_table_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %data.i = alloca [56 x i8], align 1
  %dare.i = alloca [24 x i8], align 1
  %data100.i = alloca [95 x i8], align 1
  %data = alloca [81 x i8], align 1
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
  %ras1 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 113, i32 34, i32 1
  %4 = ptrtoint ptr %ras1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ras1, align 8
  %eeprom_control = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %data) #9
  %6 = getelementptr inbounds i8, ptr %data, i32 15
  %7 = call ptr @memset(ptr %6, i32 255, i32 66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool2.not = icmp eq i32 %size, 0
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %5, null
  %tobool4.not56 = icmp eq ptr %eeprom_control, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not56
  br i1 %or.cond, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %8 = call ptr @memcpy(ptr %data, ptr @.str.47, i32 15)
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 13, i64 %10)
  %cmp = icmp sgt i64 %10, 13
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %11 = trunc i64 %10 to i32
  %conv11 = sub i32 14, %11
  %12 = tail call i32 @llvm.umin.i32(i32 %conv11, i32 %size)
  %arrayidx = getelementptr [81 x i8], ptr %data, i32 0, i32 %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.i.i = icmp slt i32 %12, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end9
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !136

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end9
  call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %12, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %12, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef %12) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %12) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %12, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %12, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool19.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool19.not, label %if.end21, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv2255 = zext i32 %12 to i64
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %add = add i64 %15, %conv2255
  store i64 %add, ptr %pos, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ras_tbl_mutex.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ras_tbl_mutex.i, i32 noundef 0) #9
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 55, i64 %17)
  %cmp.i = icmp slt i64 %17, 55
  br i1 %cmp.i, label %if.then.i47, label %if.else.if.end12.i_crit_edge

if.else.if.end12.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then.i47:                                      ; preds = %if.else
  %18 = trunc i64 %17 to i32
  %conv5.i = sub i32 55, %18
  %19 = tail call i32 @llvm.umin.i32(i32 %conv5.i, i32 %size) #9
  %arrayidx.i = getelementptr i8, ptr @.str.52, i32 %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9.i.i.i = icmp slt i32 %19, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then.i47
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge, label %if.then27.i.i.i, !prof !136

land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_to_user.exit.thread.i

if.then.i.i.i.i:                                  ; preds = %if.then.i47
  tail call void @__check_object_size(ptr noundef %arrayidx.i, i32 noundef %19, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #9
  %call.i.i.i49 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i49, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %19, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef %19) #9
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx.i, i32 noundef %19) #9
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %19, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %19, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %copy_to_user.exit.i.copy_to_user.exit.thread.i_crit_edge

copy_to_user.exit.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread.i

if.end.i:                                         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %19
  %sub10.i = sub i32 %size, %19
  %conv11.i = zext i32 %19 to i64
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos, align 8
  %add.i = add i64 %22, %conv11.i
  store i64 %add.i, ptr %pos, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i, %if.else.if.end12.i_crit_edge
  %23 = phi i64 [ %add.i, %if.end.i ], [ %17, %if.else.if.end12.i_crit_edge ]
  %size.addr.0.i = phi i32 [ %sub10.i, %if.end.i ], [ %size, %if.else.if.end12.i_crit_edge ]
  %buf.addr.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %buf, %if.else.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 109, i64 %23)
  %cmp16.i = icmp sgt i64 %23, 109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.i)
  %cmp18.not.i = icmp eq i32 %size.addr.0.i, 0
  %or.cond.i = select i1 %cmp16.i, i1 true, i1 %cmp18.not.i
  br i1 %or.cond.i, label %if.end50thread-pre-split.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data.i) #9
  %24 = call ptr @memset(ptr %data.i, i32 255, i32 56)
  %25 = ptrtoint ptr %eeprom_control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %eeprom_control, align 4
  %version.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 0, i32 1
  %27 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version.i, align 4
  %first_rec_offset.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 0, i32 2
  %29 = ptrtoint ptr %first_rec_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %first_rec_offset.i, align 4
  %tbl_size.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 0, i32 3
  %31 = ptrtoint ptr %tbl_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tbl_size.i, align 4
  %checksum.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 0, i32 4
  %33 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %checksum.i, align 4
  %call25.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data.i, i32 noundef 56, ptr noundef nonnull @.str.54, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #9
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pos, align 8
  %37 = trunc i64 %36 to i32
  %conv28.i = sub i32 110, %37
  %38 = tail call i32 @llvm.umin.i32(i32 %conv28.i, i32 %size.addr.0.i) #9
  %idxprom39.i = add i32 %37, -55
  %arrayidx40.i = getelementptr [56 x i8], ptr %data.i, i32 0, i32 %idxprom39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp9.i.i282.i = icmp slt i32 %38, 0
  br i1 %cmp9.i.i282.i, label %land.rhs16.i.i285.i, label %if.then.i.i.i288.i

land.rhs16.i.i285.i:                              ; preds = %if.then20.i
  %.b1.i.i284.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i284.i, label %land.rhs16.i.i285.i.cleanup.thread.i_crit_edge, label %if.then27.i.i286.i, !prof !136

land.rhs16.i.i285.i.cleanup.thread.i_crit_edge:   ; preds = %land.rhs16.i.i285.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.then27.i.i286.i:                               ; preds = %land.rhs16.i.i285.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup.thread.i

if.then.i.i.i288.i:                               ; preds = %if.then20.i
  call void @__check_object_size(ptr noundef %arrayidx40.i, i32 noundef %38, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #9
  %call.i.i289.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i289.i, label %if.then.i.i.i288.i.copy_to_user.exit298.i_crit_edge, label %if.end.i.i293.i

if.then.i.i.i288.i.copy_to_user.exit298.i_crit_edge: ; preds = %if.then.i.i.i288.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit298.i

if.end.i.i293.i:                                  ; preds = %if.then.i.i.i288.i
  %39 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0.i, i32 %38, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i291.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i291.i)
  %cmp.i6.i292.i = icmp eq i32 %asmresult.i.i291.i, 0
  br i1 %cmp.i6.i292.i, label %if.then2.i.i296.i, label %if.end.i.i293.i.copy_to_user.exit298.i_crit_edge

if.end.i.i293.i.copy_to_user.exit298.i_crit_edge: ; preds = %if.end.i.i293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit298.i

if.then2.i.i296.i:                                ; preds = %if.end.i.i293.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i294.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx40.i, i32 noundef %38) #9
  %call.i12.i.i295.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0.i, ptr noundef %arrayidx40.i, i32 noundef %38) #9
  br label %copy_to_user.exit298.i

copy_to_user.exit298.i:                           ; preds = %if.then2.i.i296.i, %if.end.i.i293.i.copy_to_user.exit298.i_crit_edge, %if.then.i.i.i288.i.copy_to_user.exit298.i_crit_edge
  %n.addr.0.i297.i = phi i32 [ %38, %if.then.i.i.i288.i.copy_to_user.exit298.i_crit_edge ], [ %call.i12.i.i295.i, %if.then2.i.i296.i ], [ %38, %if.end.i.i293.i.copy_to_user.exit298.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i297.i)
  %tobool42.not.i = icmp eq i32 %n.addr.0.i297.i, 0
  br i1 %tobool42.not.i, label %cleanup.i, label %copy_to_user.exit298.i.cleanup.thread.i_crit_edge

copy_to_user.exit298.i.cleanup.thread.i_crit_edge: ; preds = %copy_to_user.exit298.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %copy_to_user.exit298.i.cleanup.thread.i_crit_edge, %if.then27.i.i286.i, %land.rhs16.i.i285.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data.i) #9
  br label %copy_to_user.exit.thread.i

cleanup.i:                                        ; preds = %copy_to_user.exit298.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr45.i = getelementptr i8, ptr %buf.addr.0.i, i32 %38
  %sub46.i = sub i32 %size.addr.0.i, %38
  %conv47.i = zext i32 %38 to i64
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pos, align 8
  %add48.i = add i64 %41, %conv47.i
  store i64 %add48.i, ptr %pos, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data.i) #9
  br label %if.end50.i

if.end50thread-pre-split.i:                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %42)
  %.pr.i = load i64, ptr %pos, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end50thread-pre-split.i, %cleanup.i
  %43 = phi i64 [ %.pr.i, %if.end50thread-pre-split.i ], [ %add48.i, %cleanup.i ]
  %size.addr.2.i = phi i32 [ %size.addr.0.i, %if.end50thread-pre-split.i ], [ %sub46.i, %cleanup.i ]
  %buf.addr.2.i = phi ptr [ %buf.addr.0.i, %if.end50thread-pre-split.i ], [ %add.ptr45.i, %cleanup.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 204, i64 %43)
  %cmp56.i = icmp slt i64 %43, 204
  br i1 %cmp56.i, label %land.lhs.true58.i, label %if.end50.i.if.end90.i_crit_edge

if.end50.i.if.end90.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

land.lhs.true58.i:                                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.2.i)
  %cmp59.not.i = icmp eq i32 %size.addr.2.i, 0
  br i1 %cmp59.not.i, label %land.lhs.true58.i.if.end90.i_crit_edge, label %if.then61.i

land.lhs.true58.i.if.end90.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.then61.i:                                      ; preds = %land.lhs.true58.i
  %44 = trunc i64 %43 to i32
  %conv65.i = sub i32 204, %44
  %45 = call i32 @llvm.umin.i32(i32 %conv65.i, i32 %size.addr.2.i) #9
  %idxprom77.i = add i32 %44, -110
  %arrayidx78.i = getelementptr i8, ptr @.str.53, i32 %idxprom77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp9.i.i305.i = icmp slt i32 %45, 0
  br i1 %cmp9.i.i305.i, label %land.rhs16.i.i308.i, label %if.then.i.i.i311.i

land.rhs16.i.i308.i:                              ; preds = %if.then61.i
  %.b1.i.i307.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i307.i, label %land.rhs16.i.i308.i.copy_to_user.exit.thread.i_crit_edge, label %if.then27.i.i309.i, !prof !136

land.rhs16.i.i308.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %land.rhs16.i.i308.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread.i

if.then27.i.i309.i:                               ; preds = %land.rhs16.i.i308.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_to_user.exit.thread.i

if.then.i.i.i311.i:                               ; preds = %if.then61.i
  call void @__check_object_size(ptr noundef %arrayidx78.i, i32 noundef %45, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #9
  %call.i.i312.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i312.i, label %if.then.i.i.i311.i.copy_to_user.exit321.i_crit_edge, label %if.end.i.i316.i

if.then.i.i.i311.i.copy_to_user.exit321.i_crit_edge: ; preds = %if.then.i.i.i311.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit321.i

if.end.i.i316.i:                                  ; preds = %if.then.i.i.i311.i
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.2.i, i32 %45, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i314.i = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i314.i)
  %cmp.i6.i315.i = icmp eq i32 %asmresult.i.i314.i, 0
  br i1 %cmp.i6.i315.i, label %if.then2.i.i319.i, label %if.end.i.i316.i.copy_to_user.exit321.i_crit_edge

if.end.i.i316.i.copy_to_user.exit321.i_crit_edge: ; preds = %if.end.i.i316.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit321.i

if.then2.i.i319.i:                                ; preds = %if.end.i.i316.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i317.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx78.i, i32 noundef %45) #9
  %call.i12.i.i318.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.2.i, ptr noundef %arrayidx78.i, i32 noundef %45) #9
  br label %copy_to_user.exit321.i

copy_to_user.exit321.i:                           ; preds = %if.then2.i.i319.i, %if.end.i.i316.i.copy_to_user.exit321.i_crit_edge, %if.then.i.i.i311.i.copy_to_user.exit321.i_crit_edge
  %n.addr.0.i320.i = phi i32 [ %45, %if.then.i.i.i311.i.copy_to_user.exit321.i_crit_edge ], [ %call.i12.i.i318.i, %if.then2.i.i319.i ], [ %45, %if.end.i.i316.i.copy_to_user.exit321.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i320.i)
  %tobool80.not.i = icmp eq i32 %n.addr.0.i320.i, 0
  br i1 %tobool80.not.i, label %cleanup87.i, label %copy_to_user.exit321.i.copy_to_user.exit.thread.i_crit_edge

copy_to_user.exit321.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit321.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread.i

cleanup87.i:                                      ; preds = %copy_to_user.exit321.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr83.i = getelementptr i8, ptr %buf.addr.2.i, i32 %45
  %sub84.i = sub i32 %size.addr.2.i, %45
  %conv85.i = zext i32 %45 to i64
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %pos, align 8
  %add86.i = add i64 %48, %conv85.i
  store i64 %add86.i, ptr %pos, align 8
  br label %if.end90.i

if.end90.i:                                       ; preds = %cleanup87.i, %land.lhs.true58.i.if.end90.i_crit_edge, %if.end50.i.if.end90.i_crit_edge
  %size.addr.4.i = phi i32 [ %sub84.i, %cleanup87.i ], [ 0, %land.lhs.true58.i.if.end90.i_crit_edge ], [ %size.addr.2.i, %if.end50.i.if.end90.i_crit_edge ]
  %buf.addr.4.i = phi ptr [ %add.ptr83.i, %cleanup87.i ], [ %buf.addr.2.i, %land.lhs.true58.i.if.end90.i_crit_edge ], [ %buf.addr.2.i, %if.end50.i.if.end90.i_crit_edge ]
  %ras_num_recs.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 4
  %49 = ptrtoint ptr %ras_num_recs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ras_num_recs.i.i, align 4
  %mul.i.i = mul i32 %50, 94
  %add3.i.i = add i32 %mul.i.i, 204
  %conv.i.i = zext i32 %add3.i.i to i64
  %51 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %conv.i.i)
  %cmp94.i = icmp slt i64 %52, %conv.i.i
  br i1 %cmp94.i, label %land.lhs.true96.i, label %if.end90.i.Out.i_crit_edge

if.end90.i.Out.i_crit_edge:                       ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %Out.i

land.lhs.true96.i:                                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.4.i)
  %cmp97.not.i = icmp eq i32 %size.addr.4.i, 0
  br i1 %cmp97.not.i, label %land.lhs.true96.i.Out.i_crit_edge, label %if.then99.i

land.lhs.true96.i.Out.i_crit_edge:                ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %Out.i

if.then99.i:                                      ; preds = %land.lhs.true96.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dare.i) #9
  %53 = getelementptr inbounds [24 x i8], ptr %dare.i, i32 0, i32 1
  %54 = getelementptr inbounds [24 x i8], ptr %dare.i, i32 0, i32 2
  %55 = getelementptr inbounds [24 x i8], ptr %dare.i, i32 0, i32 10
  %56 = getelementptr inbounds [24 x i8], ptr %dare.i, i32 0, i32 16
  %57 = getelementptr inbounds [24 x i8], ptr %dare.i, i32 0, i32 17
  %58 = getelementptr inbounds [24 x i8], ptr %dare.i, i32 0, i32 18
  %59 = call ptr @memset(ptr %dare.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 95, ptr nonnull %data100.i) #9
  %60 = call ptr @memset(ptr %data100.i, i32 255, i32 95)
  %61 = trunc i64 %52 to i32
  %conv108.i = add i32 %61, -204
  %conv108.i.frozen = freeze i32 %conv108.i
  %div.i = sdiv i32 %conv108.i.frozen, 94
  %62 = mul i32 %div.i, 94
  %rem.i.decomposed = sub i32 %conv108.i.frozen, %62
  %ras_fri.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 5
  %ras_max_record_count.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 6
  %adev1.i.i = getelementptr %struct.amdgpu_ras, ptr %5, i32 0, i32 8
  %i2c_address.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 1
  %ras_record_offset.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.then99.i
  %r.0399.i = phi i32 [ %rem.i.decomposed, %if.then99.i ], [ 0, %for.inc.i.land.rhs.i_crit_edge ]
  %s.0398.i = phi i32 [ %div.i, %if.then99.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %buf.addr.5396.i = phi ptr [ %buf.addr.4.i, %if.then99.i ], [ %add.ptr149.i, %for.inc.i.land.rhs.i_crit_edge ]
  %size.addr.5395.i = phi i32 [ %size.addr.4.i, %if.then99.i ], [ %sub150.i, %for.inc.i.land.rhs.i_crit_edge ]
  %63 = ptrtoint ptr %ras_num_recs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ras_num_recs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %s.0398.i, i32 %64)
  %cmp119.i = icmp ult i32 %s.0398.i, %64
  br i1 %cmp119.i, label %for.body.i, label %land.rhs.i.cleanup156.thread.i_crit_edge

land.rhs.i.cleanup156.thread.i_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156.thread.i

for.body.i:                                       ; preds = %land.rhs.i
  %65 = ptrtoint ptr %ras_fri.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ras_fri.i, align 4
  %add121.i = add i32 %66, %s.0398.i
  %67 = ptrtoint ptr %ras_max_record_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ras_max_record_count.i, align 4
  %rem122.i = urem i32 %add121.i, %68
  %69 = ptrtoint ptr %adev1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adev1.i.i, align 4
  %reset_sem.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %70, i32 0, i32 143
  call void @down_read(ptr noundef %reset_sem.i.i) #9
  %smu_i2c.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %70, i32 0, i32 98, i32 25
  %71 = ptrtoint ptr %i2c_address.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i2c_address.i.i, align 4
  %73 = ptrtoint ptr %ras_record_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ras_record_offset.i.i, align 4
  %mul2.i.i = mul i32 %rem122.i, 24
  %add.i.i = add i32 %72, %mul2.i.i
  %add3.i345.i = add i32 %add.i.i, %74
  %call.i.i51 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c.i.i, i32 noundef %add3.i345.i, ptr noundef nonnull %dare.i, i16 noundef zeroext 24) #9
  call void @up_read(ptr noundef %reset_sem.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i.i52 = icmp slt i32 %call.i.i51, 0
  br i1 %cmp.i.i52, label %if.then.i346.i, label %if.else.i.i

if.then.i346.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef %call.i.i51) #9
  br label %cleanup156.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i.i51)
  %cmp6.i.i = icmp ult i32 %call.i.i51, 24
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.end127.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div22.i.lhs.trunc.i = trunc i32 %call.i.i51 to i8
  %div22.i379.i = udiv i8 %div22.i.lhs.trunc.i, 24
  %div22.i.zext.i = zext i8 %div22.i379.i to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %div22.i.zext.i, i32 noundef 1) #9
  br label %cleanup156.i

if.end127.i:                                      ; preds = %if.else.i.i
  %75 = ptrtoint ptr %dare.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %dare.i, align 1
  %conv.i347.i = zext i8 %76 to i32
  %77 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %53, align 1
  %79 = ptrtoint ptr %54 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %tmp.0.copyload.i.i = load i64, ptr %54, align 1
  %80 = call i64 @llvm.bswap.i64(i64 %tmp.0.copyload.i.i) #9
  %81 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 6)
  %tmp.0.copyload21.i.i = load i48, ptr %55, align 1
  %82 = call i48 @llvm.bswap.i48(i48 %tmp.0.copyload21.i.i) #9
  %83 = zext i48 %82 to i64
  %84 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %56, align 1
  %86 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %57, align 1
  %88 = ptrtoint ptr %58 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 6)
  %tmp.0.copyload22.i.i = load i48, ptr %58, align 1
  %89 = call i48 @llvm.bswap.i48(i48 %tmp.0.copyload22.i.i) #9
  %90 = zext i48 %89 to i64
  %91 = ptrtoint ptr %ras_record_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ras_record_offset.i.i, align 4
  %add130.i = add i32 %92, %mul2.i.i
  %arrayidx131.i = getelementptr [3 x ptr], ptr @record_err_type_str, i32 0, i32 %conv.i347.i
  %93 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx131.i, align 4
  %conv132.i = zext i8 %78 to i32
  %conv133.i = zext i8 %85 to i32
  %conv134.i = zext i8 %87 to i32
  %call135.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %data100.i, i32 noundef 95, ptr noundef nonnull @.str.55, i32 noundef %s.0398.i, i32 noundef %add130.i, ptr noundef %94, i32 noundef %conv132.i, i64 noundef %80, i64 noundef %83, i32 noundef %conv133.i, i32 noundef %conv134.i, i64 noundef %90) #9
  %sub136.i = sub nsw i32 94, %r.0399.i
  %95 = call i32 @llvm.umin.i32(i32 %sub136.i, i32 %size.addr.5395.i) #9
  %arrayidx144.i = getelementptr [95 x i8], ptr %data100.i, i32 0, i32 %r.0399.i
  call void @__check_object_size(ptr noundef %arrayidx144.i, i32 noundef %95, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #9
  %call.i.i335.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i335.i, label %if.end127.i.cleanup156.i_crit_edge, label %if.end.i.i339.i

if.end127.i.cleanup156.i_crit_edge:               ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156.i

if.end.i.i339.i:                                  ; preds = %if.end127.i
  %96 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.5396.i, i32 %95, i32 -1226833920) #14, !srcloc !137
  %asmresult.i.i337.i = extractvalue { i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i337.i)
  %cmp.i6.i338.i = icmp eq i32 %asmresult.i.i337.i, 0
  br i1 %cmp.i6.i338.i, label %copy_to_user.exit344.i, label %if.end.i.i339.i.cleanup156.i_crit_edge

if.end.i.i339.i.cleanup156.i_crit_edge:           ; preds = %if.end.i.i339.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156.i

copy_to_user.exit344.i:                           ; preds = %if.end.i.i339.i
  %call.i.i.i340.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx144.i, i32 noundef %95) #9
  %call.i12.i.i341.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.5396.i, ptr noundef %arrayidx144.i, i32 noundef %95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i341.i)
  %tobool146.not.i = icmp eq i32 %call.i12.i.i341.i, 0
  br i1 %tobool146.not.i, label %for.inc.i, label %copy_to_user.exit344.i.cleanup156.i_crit_edge

copy_to_user.exit344.i.cleanup156.i_crit_edge:    ; preds = %copy_to_user.exit344.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156.i

for.inc.i:                                        ; preds = %copy_to_user.exit344.i
  %add.ptr149.i = getelementptr i8, ptr %buf.addr.5396.i, i32 %95
  %sub150.i = sub i32 %size.addr.5395.i, %95
  %conv151.i = zext i32 %95 to i64
  %97 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %pos, align 8
  %add152.i = add i64 %98, %conv151.i
  store i64 %add152.i, ptr %pos, align 8
  %inc.i = add nuw i32 %s.0398.i, 1
  %cmp117.not.i = icmp eq i32 %sub150.i, 0
  br i1 %cmp117.not.i, label %for.inc.i.cleanup156.thread.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.cleanup156.thread.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup156.thread.i

cleanup156.thread.i:                              ; preds = %for.inc.i.cleanup156.thread.i_crit_edge, %land.rhs.i.cleanup156.thread.i_crit_edge
  %size.addr.5.lcssa.i = phi i32 [ 0, %for.inc.i.cleanup156.thread.i_crit_edge ], [ %size.addr.5395.i, %land.rhs.i.cleanup156.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 95, ptr nonnull %data100.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dare.i) #9
  br label %Out.i

cleanup156.i:                                     ; preds = %copy_to_user.exit344.i.cleanup156.i_crit_edge, %if.end.i.i339.i.cleanup156.i_crit_edge, %if.end127.i.cleanup156.i_crit_edge, %if.then8.i.i, %if.then.i346.i
  %res.1.ph.i = phi i32 [ -5, %if.then8.i.i ], [ %call.i.i51, %if.then.i346.i ], [ -14, %if.end127.i.cleanup156.i_crit_edge ], [ -14, %if.end.i.i339.i.cleanup156.i_crit_edge ], [ -14, %copy_to_user.exit344.i.cleanup156.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 95, ptr nonnull %data100.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dare.i) #9
  br label %copy_to_user.exit.thread.i

Out.i:                                            ; preds = %cleanup156.thread.i, %land.lhs.true96.i.Out.i_crit_edge, %if.end90.i.Out.i_crit_edge
  %size.addr.9.i = phi i32 [ 0, %land.lhs.true96.i.Out.i_crit_edge ], [ %size.addr.4.i, %if.end90.i.Out.i_crit_edge ], [ %size.addr.5.lcssa.i, %cleanup156.thread.i ]
  call void @mutex_unlock(ptr noundef %ras_tbl_mutex.i) #9
  %sub169.i = sub i32 %size, %size.addr.9.i
  br label %cleanup

copy_to_user.exit.thread.i:                       ; preds = %cleanup156.i, %copy_to_user.exit321.i.copy_to_user.exit.thread.i_crit_edge, %if.then27.i.i309.i, %land.rhs16.i.i308.i.copy_to_user.exit.thread.i_crit_edge, %cleanup.thread.i, %copy_to_user.exit.i.copy_to_user.exit.thread.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge
  %res.3.ph.i = phi i32 [ -14, %cleanup.thread.i ], [ %res.1.ph.i, %cleanup156.i ], [ -14, %copy_to_user.exit.i.copy_to_user.exit.thread.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge ], [ -14, %copy_to_user.exit321.i.copy_to_user.exit.thread.i_crit_edge ], [ -14, %if.then27.i.i309.i ], [ -14, %land.rhs16.i.i308.i.copy_to_user.exit.thread.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %ras_tbl_mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit.thread.i, %Out.i, %if.end21, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ %res.3.ph.i, %copy_to_user.exit.thread.i ], [ %sub169.i, %Out.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_eeprom_init(ptr noundef %control, ptr nocapture noundef writeonly %exceed_err_limit) local_unnamed_addr #0 align 64 {
entry:
  %i2c_addr.i = alloca i8, align 1
  %buf = alloca [20 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr i8, ptr %control, i32 -108
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 20)
  %ras2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 34, i32 1
  %3 = ptrtoint ptr %ras2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ras2, align 8
  %5 = ptrtoint ptr %exceed_err_limit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %exceed_err_limit, align 1
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 21, label %entry.if.end_crit_edge
    i32 23, label %entry.if.end_crit_edge158
    i32 30, label %entry.if.end_crit_edge159
    i32 25, label %entry.if.end_crit_edge160
  ]

entry.if.end_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge158, %entry.if.end_crit_edge159, %entry.if.end_crit_edge160
  %smu_i2c = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 25
  %algo = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 25, i32 2
  %9 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %algo, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_addr.i) #9
  %11 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %i2c_addr.i, align 1, !annotation !138
  %tobool.not.i = icmp eq ptr %control, null
  br i1 %tobool.not.i, label %if.end4.__get_eeprom_i2c_addr.exit.thread152_crit_edge, label %if.end.i

if.end4.__get_eeprom_i2c_addr.exit.thread152_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_eeprom_i2c_addr.exit.thread152

if.end.i:                                         ; preds = %if.end4
  %call.i = call zeroext i1 @amdgpu_atomfirmware_ras_rom_addr(ptr noundef %1, ptr noundef nonnull %i2c_addr.i) #9
  br i1 %call.i, label %if.then1.i, label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_addr.i, align 1
  %14 = lshr i8 %13, 1
  %15 = and i8 %14, 7
  %conv3.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 16
  br label %__get_eeprom_i2c_addr.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asic_type.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %17, label %if.end4.i.__get_eeprom_i2c_addr.exit.thread152_crit_edge [
    i32 21, label %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge
    i32 23, label %sw.bb6.i
    i32 30, label %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge161
    i32 25, label %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge162
  ]

if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge162: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_eeprom_i2c_addr.exit.thread

if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge161: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_eeprom_i2c_addr.exit.thread

if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_eeprom_i2c_addr.exit.thread

if.end4.i.__get_eeprom_i2c_addr.exit.thread152_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__get_eeprom_i2c_addr.exit.thread152

sw.bb6.i:                                         ; preds = %if.end4.i
  %mode_info.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 79
  %19 = ptrtoint ptr %mode_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode_info.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i.i, label %__get_eeprom_i2c_addr.exit, label %__get_eeprom_i2c_addr.exit.thread154

__get_eeprom_i2c_addr.exit.thread154:             ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %vbios_version.i.i = getelementptr inbounds %struct.atom_context, ptr %20, i32 0, i32 17
  %call.i.i = call ptr @strnstr(ptr noundef %vbios_version.i.i, ptr noundef nonnull @.str.59, i32 noundef 20) #9
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %i2c_address4.i.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %..i.i = select i1 %tobool2.not.i.i, i32 262144, i32 0
  %21 = ptrtoint ptr %i2c_address4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %..i.i, ptr %i2c_address4.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_addr.i) #9
  br label %if.end7

__get_eeprom_i2c_addr.exit.thread:                ; preds = %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge, %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge161, %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge162, %if.then1.i
  %shl.i.sink = phi i32 [ %shl.i, %if.then1.i ], [ 0, %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge ], [ 0, %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge161 ], [ 0, %if.end4.i.__get_eeprom_i2c_addr.exit.thread_crit_edge162 ]
  %i2c_address.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %22 = ptrtoint ptr %i2c_address.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl.i.sink, ptr %i2c_address.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_addr.i) #9
  br label %if.end7

__get_eeprom_i2c_addr.exit.thread152:             ; preds = %if.end4.i.__get_eeprom_i2c_addr.exit.thread152_crit_edge, %if.end4.__get_eeprom_i2c_addr.exit.thread152_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_addr.i) #9
  br label %cleanup

__get_eeprom_i2c_addr.exit:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_addr.i) #9
  br label %cleanup

if.end7:                                          ; preds = %__get_eeprom_i2c_addr.exit.thread, %__get_eeprom_i2c_addr.exit.thread154
  %ras_header_offset = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 2
  %23 = ptrtoint ptr %ras_header_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ras_header_offset, align 4
  %ras_record_offset = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 3
  %24 = ptrtoint ptr %ras_record_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 20, ptr %ras_record_offset, align 4
  %ras_max_record_count = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 6
  %25 = ptrtoint ptr %ras_max_record_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10921, ptr %ras_max_record_count, align 4
  %ras_tbl_mutex = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 7
  call void @__mutex_init(ptr noundef %ras_tbl_mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @amdgpu_ras_eeprom_init.__key) #9
  %i2c_address = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %26 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i2c_address, align 4
  %28 = ptrtoint ptr %ras_header_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ras_header_offset, align 4
  %add = add i32 %29, %27
  %call11 = call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c, i32 noundef %add, ptr noundef nonnull %buf, i16 noundef zeroext 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call11)
  %cmp = icmp slt i32 %call11, 20
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %call11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp13 = icmp sgt i32 %call11, -1
  %spec.select = select i1 %cmp13, i32 -5, i32 %call11
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #9
  %33 = ptrtoint ptr %control to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %control, align 1
  %arrayidx1.i = getelementptr inbounds i32, ptr %buf, i32 1
  %34 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #9
  %version.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 1
  %37 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %version.i, align 1
  %arrayidx2.i = getelementptr inbounds i32, ptr %buf, i32 2
  %38 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #9
  %first_rec_offset.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 2
  %41 = ptrtoint ptr %first_rec_offset.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %first_rec_offset.i, align 1
  %arrayidx3.i = getelementptr inbounds i32, ptr %buf, i32 3
  %42 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx3.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #9
  %tbl_size.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 3
  %45 = ptrtoint ptr %tbl_size.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %tbl_size.i, align 1
  %arrayidx4.i = getelementptr inbounds i32, ptr %buf, i32 4
  %46 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx4.i, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #9
  %checksum.i = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 4
  %49 = ptrtoint ptr %checksum.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %checksum.i, align 1
  %sub = add i32 %44, -20
  %div = udiv i32 %sub, 24
  %ras_num_recs = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 4
  %50 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div, ptr %ras_num_recs, align 4
  %51 = ptrtoint ptr %ras_record_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ras_record_offset, align 4
  %sub17 = sub i32 %40, %52
  %div18 = udiv i32 %sub17, 24
  %ras_fri = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 5
  %53 = ptrtoint ptr %ras_fri to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div18, ptr %ras_fri, align 4
  %54 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %32, label %if.end14.do.end80_crit_edge [
    i32 1095582802, label %if.then20
    i32 1111573575, label %land.lhs.true
  ]

if.end14.do.end80_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80

if.then20:                                        ; preds = %if.end14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %div) #9
  %call22 = call fastcc i32 @__verify_ras_table_checksum(ptr noundef nonnull %control)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.if.end25_crit_edge, label %if.then24

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call22) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then20.if.end25_crit_edge
  %55 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ras_num_recs, align 4
  %mul = mul i32 %56, 10
  %bad_page_cnt_threshold = getelementptr inbounds %struct.amdgpu_ras, ptr %4, i32 0, i32 15
  %57 = ptrtoint ptr %bad_page_cnt_threshold to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bad_page_cnt_threshold, align 4
  %mul27 = mul i32 %58, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul27)
  %cmp28.not = icmp ult i32 %mul, %mul27
  br i1 %cmp28.not, label %if.end25.if.end85_crit_edge, label %do.end32

if.end25.if.end85_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.16, i32 noundef %56, i32 noundef %58) #12
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %61 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp38.not = icmp eq i32 %61, 0
  br i1 %cmp38.not, label %land.lhs.true.do.end80_crit_edge, label %if.then39

land.lhs.true.do.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80

if.then39:                                        ; preds = %land.lhs.true
  %call40 = call fastcc i32 @__verify_ras_table_checksum(ptr noundef nonnull %control)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.if.end43_crit_edge, label %if.then42

if.then39.if.end43_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %call40) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then39.if.end43_crit_edge
  %bad_page_cnt_threshold44 = getelementptr inbounds %struct.amdgpu_ras, ptr %4, i32 0, i32 15
  %62 = ptrtoint ptr %bad_page_cnt_threshold44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bad_page_cnt_threshold44, align 4
  %64 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ras_num_recs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp46 = icmp ugt i32 %63, %65
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  br i1 %cmp46, label %do.end50, label %do.end58

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.20, i32 noundef %65, i32 noundef %63) #12
  %call54 = call fastcc i32 @amdgpu_ras_eeprom_correct_header_tag(ptr noundef nonnull %control)
  br label %if.end85

do.end58:                                         ; preds = %if.end43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.24, i32 noundef %65, i32 noundef %63) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %68 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %68)
  %cmp62 = icmp eq i32 %68, -2
  br i1 %cmp62, label %if.end85.thread, label %if.else68

if.end85.thread:                                  ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.else68:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %exceed_err_limit to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %exceed_err_limit, align 1
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %74 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ras_num_recs, align 4
  %76 = ptrtoint ptr %bad_page_cnt_threshold44 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bad_page_cnt_threshold44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.31, i32 noundef %75, i32 noundef %77) #12
  br label %if.end85

do.end80:                                         ; preds = %land.lhs.true.do.end80_crit_edge, %if.end14.do.end80_crit_edge
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #12
  %call83 = call i32 @amdgpu_ras_eeprom_reset_table(ptr noundef nonnull %control)
  br label %if.end85

if.end85:                                         ; preds = %do.end80, %if.else68, %do.end50, %do.end32, %if.end25.if.end85_crit_edge
  %res.0 = phi i32 [ %call22, %do.end32 ], [ %call22, %if.end25.if.end85_crit_edge ], [ %call54, %do.end50 ], [ %call40, %if.else68 ], [ %call83, %do.end80 ]
  %78 = call i32 @llvm.smin.i32(i32 %res.0, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.end85.thread, %if.then12, %__get_eeprom_i2c_addr.exit, %__get_eeprom_i2c_addr.exit.thread152, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then12 ], [ -2, %if.end.cleanup_crit_edge ], [ -22, %__get_eeprom_i2c_addr.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %__get_eeprom_i2c_addr.exit.thread152 ], [ 0, %if.end85.thread ], [ %78, %if.end85 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_eeprom_read(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__verify_ras_table_checksum(ptr nocapture noundef readonly %control) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr i8, ptr %control, i32 -108
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %ras_num_recs = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 4
  %2 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_num_recs, align 4
  %mul = mul i32 %3, 24
  %add = add i32 %mul, 20
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.60) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu_i2c = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 25
  %i2c_address = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_address, align 4
  %ras_header_offset = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 2
  %6 = ptrtoint ptr %ras_header_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ras_header_offset, align 4
  %add2 = add i32 %7, %5
  %conv = trunc i32 %add to i16
  %call3 = tail call i32 @amdgpu_eeprom_read(ptr noundef %smu_i2c, i32 noundef %add2, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %add)
  %cmp = icmp slt i32 %call3, %add
  br i1 %cmp, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %add.ptr11 = getelementptr i8, ptr %call9.i.i, i32 %add
  %cmp1243 = icmp ult ptr %call9.i.i, %add.ptr11
  br i1 %cmp1243, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.Out_crit_edge

for.cond.preheader.Out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %Out

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.61, i32 noundef %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp6 = icmp sgt i32 %call3, -1
  %spec.store.select = select i1 %cmp6, i32 -5, i32 %call3
  br label %Out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pp.045 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call9.i.i, %for.cond.preheader.for.body_crit_edge ]
  %csum.044 = phi i8 [ %add16, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %pp.045 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pp.045, align 1
  %add16 = add i8 %9, %csum.044
  %incdec.ptr = getelementptr i8, ptr %pp.045, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %add.ptr11
  br i1 %exitcond.not, label %Out.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

Out.loopexit:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = zext i8 %add16 to i32
  br label %Out

Out:                                              ; preds = %Out.loopexit, %if.then5, %for.cond.preheader.Out_crit_edge
  %res.0 = phi i32 [ %spec.store.select, %if.then5 ], [ %call3, %for.cond.preheader.Out_crit_edge ], [ %call3, %Out.loopexit ]
  %csum.1 = phi i32 [ 255, %if.then5 ], [ 0, %for.cond.preheader.Out_crit_edge ], [ %phi.cast, %Out.loopexit ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %cmp18 = icmp slt i32 %res.0, 0
  %cond = select i1 %cmp18, i32 %res.0, i32 %csum.1
  br label %cleanup

cleanup:                                          ; preds = %Out, %if.then
  %retval.0 = phi i32 [ %cond, %Out ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_ras_eeprom_correct_header_tag(ptr noundef %control) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %checksum = getelementptr inbounds %struct.amdgpu_ras_eeprom_table_header, ptr %control, i32 0, i32 4
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %checksum, align 1
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %control, align 1
  %conv2 = zext i8 %3 to i32
  %arrayidx3 = getelementptr i8, ptr %control, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %arrayidx5 = getelementptr i8, ptr %control, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %arrayidx8 = getelementptr i8, ptr %control, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %add = add i32 %1, 220
  %add7 = add i32 %add, %conv2
  %add10 = add i32 %add7, %conv4
  %10 = add i32 %add10, %conv6
  %conv30 = add i32 %10, %conv9
  %ras_tbl_mutex = getelementptr inbounds %struct.amdgpu_ras_eeprom_control, ptr %control, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ras_tbl_mutex, i32 noundef 0) #9
  %11 = ptrtoint ptr %control to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 1095582802, ptr %control, align 1
  %conv32 = and i32 %conv30, 255
  %12 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %conv32, ptr %checksum, align 1
  %call = tail call fastcc i32 @__write_table_header(ptr noundef %control)
  tail call void @mutex_unlock(ptr noundef %ras_tbl_mutex) #9
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_eeprom_write(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atomfirmware_ras_rom_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i48 @llvm.bswap.i48(i48) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 363, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @amdgpu_ras_eeprom_check_err_threshold._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @amdgpu_ras_eeprom_check_err_threshold._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 364, i32 3}
!10 = !{ptr @amdgpu_ras_eeprom_check_err_threshold._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @amdgpu_ras_eeprom_check_err_threshold._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 607, i32 3}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 610, i32 3}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 692, i32 3}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 695, i32 3}
!20 = !{ptr @amdgpu_ras_debugfs_eeprom_size_ops, !21, !"amdgpu_ras_debugfs_eeprom_size_ops", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 799, i32 30}
!22 = !{ptr @amdgpu_ras_debugfs_eeprom_table_ops, !23, !"amdgpu_ras_debugfs_eeprom_table_ops", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 981, i32 30}
!24 = !{ptr @amdgpu_ras_eeprom_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1057, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1064, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1074, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1078, i32 4}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1084, i32 4}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @amdgpu_ras_eeprom_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @amdgpu_ras_eeprom_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1091, i32 4}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1100, i32 4}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @amdgpu_ras_eeprom_init._entry.19, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @amdgpu_ras_eeprom_init._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1108, i32 4}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @amdgpu_ras_eeprom_init._entry.23, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @amdgpu_ras_eeprom_init._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1111, i32 5}
!52 = !{ptr @amdgpu_ras_eeprom_init._entry.27, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @amdgpu_ras_eeprom_init._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1115, i32 5}
!56 = !{ptr @amdgpu_ras_eeprom_init._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @amdgpu_ras_eeprom_init._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1122, i32 3}
!60 = !{ptr @amdgpu_ras_eeprom_init._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @amdgpu_ras_eeprom_init._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 204, i32 3}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 206, i32 3}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 398, i32 3}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 403, i32 3}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 530, i32 3}
!72 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @amdgpu_ras_eeprom_update_header._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @amdgpu_ras_eeprom_update_header._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 544, i32 3}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 557, i32 3}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 561, i32 3}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 653, i32 3}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 658, i32 3}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 779, i32 38}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 781, i32 38}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!91 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 806, i32 34}
!98 = distinct !{null, !99, !"tbl_hdr_str", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 806, i32 20}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 809, i32 34}
!102 = distinct !{null, !103, !"rec_hdr_str", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 809, i32 20}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 807, i32 34}
!106 = distinct !{null, !107, !"tbl_hdr_fmt", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 807, i32 20}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 810, i32 34}
!110 = distinct !{null, !111, !"rec_hdr_fmt", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 810, i32 20}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 814, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 815, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 816, i32 2}
!118 = !{ptr @record_err_type_str, !119, !"record_err_type_str", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 813, i32 20}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 105, i32 14}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1008, i32 3}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c", i32 1017, i32 3}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2153879300, i64 2153879325}
!138 = !{!"auto-init"}
