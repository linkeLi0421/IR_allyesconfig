; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amdgpu_nbio_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ras_common_if = type { i32, i32, i32, [32 x i8] }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.121, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.103, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.113, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.103 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.113 = type { i32, ptr }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.120], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.120 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.117] }
%struct.anon.117 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.121 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.134, i32, i32, i32, i32 }
%union.anon.134 = type { %struct.anon.136 }
%struct.anon.136 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_ras = type { i32, %struct.list_head, %struct.device_attribute, %struct.bin_attribute, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, ptr, %struct.mutex, i32, i8, %struct.amdgpu_ras_eeprom_control, i8, i32, i8, i8, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.umc_ecc_info }
%struct.amdgpu_ras_eeprom_control = type { %struct.amdgpu_ras_eeprom_table_header, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.amdgpu_ras_eeprom_table_header = type { i32, i32, i32, i32, i32 }
%struct.umc_ecc_info = type { [32 x %struct.ecc_info_per_ch] }
%struct.ecc_info_per_ch = type { i16, i16, i64, i64 }
%struct.ras_manager = type { %struct.ras_common_if, i32, %struct.list_head, ptr, %struct.device_attribute, i32, %struct.ras_fs_data, %struct.ras_ih_data, %struct.ras_err_data }
%struct.ras_fs_data = type { [32 x i8], [32 x i8] }
%struct.ras_ih_data = type { %struct.work_struct, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.ras_err_data = type { i32, i32, i32, ptr }
%struct.amdgpu_umc_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_sdma_ras_funcs = type { ptr, ptr, ptr, ptr }
%struct.amdgpu_gfx_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmhub_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_xgmi_ras_funcs = type { ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_ras_funcs = type { ptr, ptr, ptr, ptr }
%struct.amdgpu_mca_ras_funcs = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.ras_query_if = type { %struct.ras_common_if, i32, i32 }
%struct.amdgpu_smuio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ta_ras_trigger_error_input = type { i32, i32, i32, i64, i64 }
%struct.ras_inject_if = type { %struct.ras_common_if, i64, i64 }
%struct.ras_fs_if = type { %struct.ras_common_if, ptr, [32 x i8] }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.ras_dispatch_if = type { %struct.ras_common_if, ptr }
%struct.ras_ih_if = type { %struct.ras_common_if, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }
%struct.ras_err_handler_data = type { ptr, i32, i32 }
%struct.eeprom_table_record = type <{ %union.anon.131, i64, i64, i32, %union.anon.132, i8, i8 }>
%union.anon.131 = type { i64 }
%union.anon.132 = type { i8 }
%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hive_info = type { %struct.kobject, i64, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.atomic_t, i32, ptr, %struct.task_barrier, i32 }
%struct.task_barrier = type { i32, %struct.atomic_t, %struct.semaphore, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.amdgpu_df_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ras_debug_if = type { %union.anon.139, i32 }
%union.anon.139 = type { %struct.ras_inject_if }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.104, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.105, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.106, ptr, %struct.address_space, %struct.list_head, %union.anon.107, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.104 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.105 = type { %struct.callback_head }
%union.anon.106 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.107 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ras_badpage = type { i32, i32, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parity\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"single_correctable\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"multi_uncorrectable\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"poison\00", [25 x i8] zeroinitializer }, align 32
@ras_error_string = dso_local global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"umc\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdma\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gfx\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmhub\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"athub\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_bif\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hdp\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xgmi_wafl\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"df\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smn\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sem\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mp0\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mp1\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fuse\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mca\00", [28 x i8] zeroinitializer }, align 32
@ras_block_string = dso_local global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mca_mp0\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mca_mp1\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mca_mpio\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mca_iohc\00", [23 x i8] zeroinitializer }, align 32
@ras_mca_block_string = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OUT OF RANGE\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_ras_in_intr = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_ras_feature_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.26, i32 728, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: ras %s %s failed poison:%d ret:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_ras_feature_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_ras_feature_enable._entry_ptr = internal global ptr @amdgpu_ras_feature_enable._entry, section ".printk_index", align 4
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@amdgpu_ras_feature_enable_on_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.26, i32 769, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: RAS INFO: %s setup object\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu_ras_feature_enable_on_boot\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_ras_feature_enable_on_boot._entry_ptr = internal global ptr @amdgpu_ras_feature_enable_on_boot._entry, section ".printk_index", align 4
@amdgpu_ras_query_error_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.26, i32 1006, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"amdgpu: socket: %d, die: %d %ld correctable hardware errors detected in %s block, no user action is needed.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu_ras_query_error_status\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_ras_query_error_status._entry_ptr = internal global ptr @amdgpu_ras_query_error_status._entry, section ".printk_index", align 4
@amdgpu_ras_query_error_status._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.26, i32 1012, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"amdgpu: %ld correctable hardware errors detected in %s block, no user action is needed.\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_ras_query_error_status._entry_ptr.40 = internal global ptr @amdgpu_ras_query_error_status._entry.38, section ".printk_index", align 4
@amdgpu_ras_query_error_status._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.26, i32 1025, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"amdgpu: socket: %d, die: %d %ld uncorrectable hardware errors detected in %s block\0A\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_ras_query_error_status._entry_ptr.43 = internal global ptr @amdgpu_ras_query_error_status._entry.41, section ".printk_index", align 4
@amdgpu_ras_query_error_status._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.26, i32 1030, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: %ld uncorrectable hardware errors detected in %s block\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_ras_query_error_status._entry_ptr.46 = internal global ptr @amdgpu_ras_query_error_status._entry.44, section ".printk_index", align 4
@amdgpu_ras_error_inject._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.26, i32 1151, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: %s error injection is not supported yet\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu_ras_error_inject\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_inject._entry_ptr = internal global ptr @amdgpu_ras_error_inject._entry, section ".printk_index", align 4
@amdgpu_ras_error_inject._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.26, i32 1157, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: ras inject %s failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_inject._entry_ptr.51 = internal global ptr @amdgpu_ras_error_inject._entry.49, section ".printk_index", align 4
@amdgpu_ras_sysfs_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s_err_inject\00", [18 x i8] zeroinitializer }, align 32
@amdgpu_ras_interrupt_add_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&data->ih_work)\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_ras_save_bad_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.26, i32 1981, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: Failed to save EEPROM table data!\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_ras_save_bad_pages\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_ras_save_bad_pages._entry_ptr = internal global ptr @amdgpu_ras_save_bad_pages._entry, section ".printk_index", align 4
@amdgpu_ras_save_bad_pages._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.26, i32 1985, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Saved %d pages to EEPROM table.\0A\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_ras_save_bad_pages._entry_ptr.58 = internal global ptr @amdgpu_ras_save_bad_pages._entry.56, section ".printk_index", align 4
@amdgpu_ras_recovery_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&con->recovery_lock\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_ras_recovery_init.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&con->recovery_work)\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_ras_recovery_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.26, i32 2160, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: Failed to initialize ras recovery! (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu_ras_recovery_init\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amdgpu_ras_recovery_init._entry_ptr = internal global ptr @amdgpu_ras_recovery_init._entry, section ".printk_index", align 4
@amdgpu_ras_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&con->ras_counte_delay_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_ras_init.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&con->ras_counte_delay_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@nbio_v7_4_ras_funcs = external dso_local constant %struct.amdgpu_nbio_ras_funcs, align 4
@amdgpu_ras_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.26, i32 2391, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: Poison setting is inconsistent in DF/UMC(%d:%d)!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_ras_init\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_ras_init._entry_ptr = internal global ptr @amdgpu_ras_init._entry, section ".printk_index", align 4
@amdgpu_ras_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.26, i32 2401, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"amdgpu: RAS INFO: ras initialized successfully, hardware ability[%x] ras_mask[%x]\0A\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_ras_init._entry_ptr.72 = internal global ptr @amdgpu_ras_init._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Feature mask is not cleared\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_ras_global_ras_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.26, i32 2617, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"amdgpu: uncorrectable hardware error(ERREVENT_ATHUB_INTERRUPT) detected!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_ras_global_ras_isr\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_ras_global_ras_isr._entry_ptr = internal global ptr @amdgpu_ras_global_ras_isr._entry, section ".printk_index", align 4
@amdgpu_ras_block_to_ta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RAS ERROR: unexpected block id %d\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_to_ta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RAS ERROR: unexpected error type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_inject_xgmi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.26, i32 1088, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Failed to disallow df cstate\00", [59 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu_ras_error_inject_xgmi\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_inject_xgmi._entry_ptr = internal global ptr @amdgpu_ras_error_inject_xgmi._entry, section ".printk_index", align 4
@amdgpu_ras_error_inject_xgmi._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.26, i32 1091, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: Failed to disallow XGMI power down\00", [53 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_inject_xgmi._entry_ptr.83 = internal global ptr @amdgpu_ras_error_inject_xgmi._entry.81, section ".printk_index", align 4
@amdgpu_ras_error_inject_xgmi._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.26, i32 1099, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to allow XGMI power down\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_inject_xgmi._entry_ptr.86 = internal global ptr @amdgpu_ras_error_inject_xgmi._entry.84, section ".printk_index", align 4
@amdgpu_ras_error_inject_xgmi._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.26, i32 1102, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to allow df cstate\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_ras_error_inject_xgmi._entry_ptr.89 = internal global ptr @amdgpu_ras_error_inject_xgmi._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Query currently inaccessible\0A\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_ras_sysfs_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.26, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014[drm] Failed to reset error counter and error status\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu_ras_sysfs_read\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_ras_sysfs_read._entry_ptr = internal global ptr @amdgpu_ras_sysfs_read._entry, section ".printk_index", align 4
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %lu\0A%s: %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ue\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ce\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ras\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RAS ERROR: Unbalance obj(%s) use\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ras_ctrl\00", [23 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_ctrl_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @amdgpu_ras_debugfs_ctrl_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ras_eeprom_reset\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_eeprom_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @amdgpu_ras_debugfs_eeprom_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad_page_cnt_threshold\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ras_hw_enabled\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ras_enabled\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ras_eeprom_size\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_eeprom_size_ops = external dso_local constant %struct.file_operations, align 4
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ras_eeprom_table\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_eeprom_table_ops = external dso_local constant %struct.file_operations, align 4
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"auto_reboot\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disable_ras_err_cnt_harvest\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_ctrl_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.26, i32 401, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"amdgpu: RAS WARN: error injection currently inaccessible\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu_ras_debugfs_ctrl_write\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_ctrl_write._entry_ptr = internal global ptr @amdgpu_ras_debugfs_ctrl_write._entry, section ".printk_index", align 4
@amdgpu_ras_debugfs_ctrl_write._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.26, i32 432, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: RAS WARN: input address 0x%llx is invalid.\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_ctrl_write._entry_ptr.111 = internal global ptr @amdgpu_ras_debugfs_ctrl_write._entry.109, section ".printk_index", align 4
@amdgpu_ras_debugfs_ctrl_write._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.26, i32 442, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"amdgpu: RAS WARN: inject: 0x%llx has already been marked as bad!\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_ras_debugfs_ctrl_write._entry_ptr.114 = internal global ptr @amdgpu_ras_debugfs_ctrl_write._entry.112, section ".printk_index", align 4
@__const.amdgpu_ras_debugfs_ctrl_parse_data.err = private unnamed_addr constant [9 x i8] c"ue\00\00\00\00\00\00\00", align 1
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable %32s\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable %32s %8s\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"inject %32s %8s\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"retire_page\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%*s 0x%llx\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%*s %llu\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%*s %*s %*s 0x%x 0x%llx 0x%llx\00", [33 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%*s %*s %*s %u %llu %llu\00", [39 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_reserve_page_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.26, i32 146, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: RAS WARN: input address 0x%llx is invalid.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu_reserve_page_direct\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_reserve_page_direct._entry_ptr = internal global ptr @amdgpu_reserve_page_direct._entry, section ".printk_index", align 4
@amdgpu_reserve_page_direct._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.26, i32 153, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: RAS WARN: 0x%llx has already been marked as bad page!\0A\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_reserve_page_direct._entry_ptr.130 = internal global ptr @amdgpu_reserve_page_direct._entry.128, section ".printk_index", align 4
@amdgpu_bad_page_threshold = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_reserve_page_direct._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.26, i32 173, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"amdgpu: WARNING: THIS IS ONLY FOR TEST PURPOSES AND WILL CORRUPT RAS EEPROM\0A\00", [51 x i8] zeroinitializer }, align 32
@amdgpu_reserve_page_direct._entry_ptr.133 = internal global ptr @amdgpu_reserve_page_direct._entry.131, section ".printk_index", align 4
@amdgpu_reserve_page_direct._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.127, ptr @.str.26, i32 174, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu: Clear EEPROM:\0A\00", [41 x i8] zeroinitializer }, align 32
@amdgpu_reserve_page_direct._entry_ptr.136 = internal global ptr @amdgpu_reserve_page_direct._entry.134, section ".printk_index", align 4
@amdgpu_reserve_page_direct._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.127, ptr @.str.26, i32 175, ptr @.str.64, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu:     echo 1 > /sys/kernel/debug/dri/0/ras/ras_eeprom_reset\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_reserve_page_direct._entry_ptr.139 = internal global ptr @amdgpu_reserve_page_direct._entry.137, section ".printk_index", align 4
@amdgpu_ras_debugfs_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_ras_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@amdgpu_ras_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.26, i32 1590, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: Poison is created, no user action is needed.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu_ras_interrupt_handler\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_ras_interrupt_handler._entry_ptr = internal global ptr @amdgpu_ras_interrupt_handler._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@amdgpu_ras_load_bad_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.26, i32 2012, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Failed to load EEPROM table records!\00", [51 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_ras_load_bad_pages\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_ras_load_bad_pages._entry_ptr = internal global ptr @amdgpu_ras_load_bad_pages._entry, section ".printk_index", align 4
@amdgpu_ras_check_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.26, i32 2242, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: MEM ECC is active.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu_ras_check_supported\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_ras_check_supported._entry_ptr = internal global ptr @amdgpu_ras_check_supported._entry, section ".printk_index", align 4
@amdgpu_ras_check_supported._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.26, i32 2246, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: MEM ECC is not presented.\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_ras_check_supported._entry_ptr.148 = internal global ptr @amdgpu_ras_check_supported._entry.146, section ".printk_index", align 4
@amdgpu_ras_check_supported._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.26, i32 2250, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: SRAM ECC is active.\0A\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_ras_check_supported._entry_ptr.151 = internal global ptr @amdgpu_ras_check_supported._entry.149, section ".printk_index", align 4
@amdgpu_ras_check_supported._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.26, i32 2254, ptr @.str.35, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: SRAM ECC is not presented.\0A\00", [60 x i8] zeroinitializer }, align 32
@amdgpu_ras_check_supported._entry_ptr.154 = internal global ptr @amdgpu_ras_check_supported._entry.152, section ".printk_index", align 4
@amdgpu_ras_enable = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_ras_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D16406\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D36002\00", [25 x i8] zeroinitializer }, align 32
@dev_attr_features = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amdgpu_ras_sysfs_features_read, ptr null }, [36 x i8] zeroinitializer }, align 32
@amdgpu_ras_fs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bin_attr_gpu_vram_bad_pages = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.162, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @amdgpu_ras_sysfs_badpages_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@amdgpu_ras_fs_init.__key.157 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@amdgpu_ras_fs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.26, i32 1546, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: Failed to create RAS sysfs group!\00", [54 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu_ras_fs_init\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_ras_fs_init._entry_ptr = internal global ptr @amdgpu_ras_fs_init._entry, section ".printk_index", align 4
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"feature mask: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpu_vram_bad_pages\00", [45 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%08x : 0x%08x : %1s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@amdgpu_persistent_edc_harvesting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.26, i32 2429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014[drm] RAS init harvest failure\00", [63 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu_persistent_edc_harvesting\00", [63 x i8] zeroinitializer }, align 32
@amdgpu_persistent_edc_harvesting._entry_ptr = internal global ptr @amdgpu_persistent_edc_harvesting._entry, section ".printk_index", align 4
@amdgpu_persistent_edc_harvesting._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.26, i32 2432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014[drm] RAS init harvest reset failure\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_persistent_edc_harvesting._entry_ptr.171 = internal global ptr @amdgpu_persistent_edc_harvesting._entry.169, section ".printk_index", align 4
@switch.table.amdgpu_ras_feature_enable = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [60 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_ras_feature_enable.172 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [60 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_ras_error_inject = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 8], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 14]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.175 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.176 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 14]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 21, i64 23, i64 25]
@__sancov_gen_cov_switch_values.180 = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 21, i64 23, i64 25, i64 30]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 4294967280, i64 4294967294]
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 46, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 47, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 48, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 49, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 50, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"ras_error_string\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 45, i32 13 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 54, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 55, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 56, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 57, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 58, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 59, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 60, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 61, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 62, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 63, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 64, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 65, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 66, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 67, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 68, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"ras_block_string\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 53, i32 13 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 72, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 73, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 74, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 75, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [21 x i8] c"ras_mca_block_string\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 71, i32 13 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 81, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 84, i32 10 }
@___asan_gen_.270 = private unnamed_addr constant [19 x i8] c"amdgpu_ras_in_intr\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 108, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 720, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 725, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 767, i32 6 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 999, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1008, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1019, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1027, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1150, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1156, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1352, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1499, i32 34 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1695, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1981, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1985, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2118, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2119, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2160, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2315, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2390, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2399, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2596, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2616, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 573, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 592, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1088, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1091, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1099, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1102, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 541, i32 26 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 548, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 551, i32 25 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 551, i32 47 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 552, i32 6 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 43, i32 34 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 565, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1427, i32 22 }
@___asan_gen_.507 = private unnamed_addr constant [28 x i8] c"amdgpu_ras_debugfs_ctrl_ops\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 497, i32 37 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1429, i32 22 }
@___asan_gen_.513 = private unnamed_addr constant [30 x i8] c"amdgpu_ras_debugfs_eeprom_ops\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 504, i32 37 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1431, i32 21 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1433, i32 21 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1434, i32 21 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1435, i32 22 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1437, i32 49 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1450, i32 22 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1456, i32 22 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 400, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 430, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 440, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 253, i32 18 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 255, i32 23 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 257, i32 23 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 259, i32 23 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 267, i32 20 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 268, i32 20 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 292, i32 20 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 294, i32 20 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 230, i32 6 }
@___asan_gen_.586 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 214, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 156, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 144, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 151, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 173, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 174, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 175, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [23 x i8] c"amdgpu_ras_debugfs_ops\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 211, i32 37 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1589, i32 5 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2012, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2242, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2246, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2250, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2254, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2216, i32 34 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2218, i32 31 }
@___asan_gen_.678 = private unnamed_addr constant [18 x i8] c"dev_attr_features\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1533, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant [28 x i8] c"bin_attr_gpu_vram_bad_pages\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1541, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1546, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1512, i32 8 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1302, i32 35 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1510, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1286, i32 5 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1225, i32 10 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1227, i32 10 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 1230, i32 10 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2429, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.733 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.733, i32 2432, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant [39 x i8] c"switch.table.amdgpu_ras_feature_enable\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [43 x i8] c"switch.table.amdgpu_ras_feature_enable.172\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [37 x i8] c"switch.table.amdgpu_ras_error_inject\00", align 1
@llvm.compiler.used = appending global [223 x ptr] [ptr @amdgpu_persistent_edc_harvesting._entry, ptr @amdgpu_persistent_edc_harvesting._entry.169, ptr @amdgpu_persistent_edc_harvesting._entry_ptr, ptr @amdgpu_persistent_edc_harvesting._entry_ptr.171, ptr @amdgpu_ras_check_supported._entry, ptr @amdgpu_ras_check_supported._entry.146, ptr @amdgpu_ras_check_supported._entry.149, ptr @amdgpu_ras_check_supported._entry.152, ptr @amdgpu_ras_check_supported._entry_ptr, ptr @amdgpu_ras_check_supported._entry_ptr.148, ptr @amdgpu_ras_check_supported._entry_ptr.151, ptr @amdgpu_ras_check_supported._entry_ptr.154, ptr @amdgpu_ras_debugfs_ctrl_write._entry, ptr @amdgpu_ras_debugfs_ctrl_write._entry.109, ptr @amdgpu_ras_debugfs_ctrl_write._entry.112, ptr @amdgpu_ras_debugfs_ctrl_write._entry_ptr, ptr @amdgpu_ras_debugfs_ctrl_write._entry_ptr.111, ptr @amdgpu_ras_debugfs_ctrl_write._entry_ptr.114, ptr @amdgpu_ras_error_inject._entry, ptr @amdgpu_ras_error_inject._entry.49, ptr @amdgpu_ras_error_inject._entry_ptr, ptr @amdgpu_ras_error_inject._entry_ptr.51, ptr @amdgpu_ras_error_inject_xgmi._entry, ptr @amdgpu_ras_error_inject_xgmi._entry.81, ptr @amdgpu_ras_error_inject_xgmi._entry.84, ptr @amdgpu_ras_error_inject_xgmi._entry.87, ptr @amdgpu_ras_error_inject_xgmi._entry_ptr, ptr @amdgpu_ras_error_inject_xgmi._entry_ptr.83, ptr @amdgpu_ras_error_inject_xgmi._entry_ptr.86, ptr @amdgpu_ras_error_inject_xgmi._entry_ptr.89, ptr @amdgpu_ras_feature_enable._entry, ptr @amdgpu_ras_feature_enable._entry_ptr, ptr @amdgpu_ras_feature_enable_on_boot._entry, ptr @amdgpu_ras_feature_enable_on_boot._entry_ptr, ptr @amdgpu_ras_fs_init._entry, ptr @amdgpu_ras_fs_init._entry_ptr, ptr @amdgpu_ras_global_ras_isr._entry, ptr @amdgpu_ras_global_ras_isr._entry_ptr, ptr @amdgpu_ras_init._entry, ptr @amdgpu_ras_init._entry.70, ptr @amdgpu_ras_init._entry_ptr, ptr @amdgpu_ras_init._entry_ptr.72, ptr @amdgpu_ras_interrupt_handler._entry, ptr @amdgpu_ras_interrupt_handler._entry_ptr, ptr @amdgpu_ras_load_bad_pages._entry, ptr @amdgpu_ras_load_bad_pages._entry_ptr, ptr @amdgpu_ras_query_error_status._entry, ptr @amdgpu_ras_query_error_status._entry.38, ptr @amdgpu_ras_query_error_status._entry.41, ptr @amdgpu_ras_query_error_status._entry.44, ptr @amdgpu_ras_query_error_status._entry_ptr, ptr @amdgpu_ras_query_error_status._entry_ptr.40, ptr @amdgpu_ras_query_error_status._entry_ptr.43, ptr @amdgpu_ras_query_error_status._entry_ptr.46, ptr @amdgpu_ras_recovery_init._entry, ptr @amdgpu_ras_recovery_init._entry_ptr, ptr @amdgpu_ras_save_bad_pages._entry, ptr @amdgpu_ras_save_bad_pages._entry.56, ptr @amdgpu_ras_save_bad_pages._entry_ptr, ptr @amdgpu_ras_save_bad_pages._entry_ptr.58, ptr @amdgpu_ras_sysfs_read._entry, ptr @amdgpu_ras_sysfs_read._entry_ptr, ptr @amdgpu_reserve_page_direct._entry, ptr @amdgpu_reserve_page_direct._entry.128, ptr @amdgpu_reserve_page_direct._entry.131, ptr @amdgpu_reserve_page_direct._entry.134, ptr @amdgpu_reserve_page_direct._entry.137, ptr @amdgpu_reserve_page_direct._entry_ptr, ptr @amdgpu_reserve_page_direct._entry_ptr.130, ptr @amdgpu_reserve_page_direct._entry_ptr.133, ptr @amdgpu_reserve_page_direct._entry_ptr.136, ptr @amdgpu_reserve_page_direct._entry_ptr.139, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ras_error_string, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ras_block_string, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ras_mca_block_string, ptr @.str.24, ptr @.str.25, ptr @amdgpu_ras_in_intr, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @amdgpu_ras_sysfs_create.__key, ptr @.str.52, ptr @amdgpu_ras_interrupt_add_handler.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @amdgpu_ras_recovery_init.__key, ptr @.str.59, ptr @amdgpu_ras_recovery_init.__key.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @amdgpu_ras_init.__key, ptr @.str.65, ptr @amdgpu_ras_init.__key.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @amdgpu_ras_debugfs_ctrl_ops, ptr @.str.99, ptr @amdgpu_ras_debugfs_eeprom_ops, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @amdgpu_ras_debugfs_ops, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @dev_attr_features, ptr @amdgpu_ras_fs_init.__key, ptr @bin_attr_gpu_vram_bad_pages, ptr @amdgpu_ras_fs_init.__key.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @switch.table.amdgpu_ras_feature_enable, ptr @switch.table.amdgpu_ras_feature_enable.172, ptr @switch.table.amdgpu_ras_error_inject], section "llvm.metadata"
@0 = internal global [187 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ras_error_string to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ras_block_string to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ras_mca_block_string to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_feature_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_feature_enable_on_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_query_error_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_query_error_status._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_query_error_status._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_query_error_status._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_error_inject._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_error_inject._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_sysfs_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_interrupt_add_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_save_bad_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_save_bad_pages._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_recovery_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_recovery_init.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_recovery_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_init.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_global_ras_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_error_inject_xgmi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_error_inject_xgmi._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_error_inject_xgmi._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_error_inject_xgmi._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_sysfs_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_debugfs_ctrl_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_debugfs_eeprom_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_debugfs_ctrl_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_debugfs_ctrl_write._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_debugfs_ctrl_write._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_reserve_page_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_reserve_page_direct._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_reserve_page_direct._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_reserve_page_direct._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_reserve_page_direct._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_debugfs_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_load_bad_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_check_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_check_supported._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_check_supported._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_check_supported._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_features to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_fs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_gpu_vram_bad_pages to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_fs_init.__key.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ras_fs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_persistent_edc_harvesting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_persistent_edc_harvesting._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_ras_feature_enable to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_ras_feature_enable.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_ras_error_inject to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_ras_block_str(ptr noundef readonly %ras_block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ras_block, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ras_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ras_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp = icmp ugt i32 %1, 14
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp4 = icmp eq i32 %1, 14
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index = getelementptr inbounds %struct.ras_common_if, ptr %ras_block, i32 0, i32 2
  %2 = ptrtoint ptr %sub_block_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sub_block_index, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %3
  br label %return.sink.split

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8 = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end6, %if.then5
  %arrayidx8.sink = phi ptr [ %arrayidx8, %if.end6 ], [ %arrayidx, %if.then5 ]
  %4 = ptrtoint ptr %arrayidx8.sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.24, %entry.return_crit_edge ], [ @.str.25, %if.end.return_crit_edge ], [ %5, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_ras_set_error_query_ready(ptr noundef readonly %adev, i1 noundef zeroext %ready) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ready to i8
  %tobool.not = icmp eq ptr %adev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %error_query_ready = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %error_query_ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %error_query_ready, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_ras_find_obj(ptr nocapture noundef readonly %adev, ptr noundef readonly %head) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %head, null
  br i1 %tobool2.not, label %for.cond.preheader, label %if.then3

for.cond.preheader:                               ; preds = %if.end
  %objs22 = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %objs22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %objs22, align 8
  %use24 = getelementptr %struct.ras_manager, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %use24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool25.not = icmp eq i32 %7, 0
  br i1 %tobool25.not, label %for.inc, label %for.cond.preheader.if.then26_crit_edge

for.cond.preheader.if.then26_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp = icmp ugt i32 %9, 14
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.end5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp7 = icmp eq i32 %9, 14
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %sub_block_index = getelementptr inbounds %struct.ras_common_if, ptr %head, i32 0, i32 2
  %10 = ptrtoint ptr %sub_block_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sub_block_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp9 = icmp ugt i32 %11, 3
  br i1 %cmp9, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %objs = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %objs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %objs, align 8
  %add = add nuw nsw i32 %11, 15
  %arrayidx = getelementptr %struct.ras_manager, ptr %13, i32 %add
  br label %if.end16

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %objs13 = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %objs13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %objs13, align 8
  %arrayidx15 = getelementptr %struct.ras_manager, ptr %15, i32 %9
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end11
  %obj.0 = phi ptr [ %arrayidx, %if.end11 ], [ %arrayidx15, %if.else ]
  %use = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 1
  %16 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %if.end16.if.end28_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then26:                                        ; preds = %for.inc.17.if.then26_crit_edge, %for.inc.16.if.then26_crit_edge, %for.inc.15.if.then26_crit_edge, %for.inc.14.if.then26_crit_edge, %for.inc.13.if.then26_crit_edge, %for.inc.12.if.then26_crit_edge, %for.inc.11.if.then26_crit_edge, %for.inc.10.if.then26_crit_edge, %for.inc.9.if.then26_crit_edge, %for.inc.8.if.then26_crit_edge, %for.inc.7.if.then26_crit_edge, %for.inc.6.if.then26_crit_edge, %for.inc.5.if.then26_crit_edge, %for.inc.4.if.then26_crit_edge, %for.inc.3.if.then26_crit_edge, %for.inc.2.if.then26_crit_edge, %for.inc.1.if.then26_crit_edge, %for.inc.if.then26_crit_edge, %for.cond.preheader.if.then26_crit_edge
  %i.048.lcssa = phi i32 [ 0, %for.cond.preheader.if.then26_crit_edge ], [ 1, %for.inc.if.then26_crit_edge ], [ 2, %for.inc.1.if.then26_crit_edge ], [ 3, %for.inc.2.if.then26_crit_edge ], [ 4, %for.inc.3.if.then26_crit_edge ], [ 5, %for.inc.4.if.then26_crit_edge ], [ 6, %for.inc.5.if.then26_crit_edge ], [ 7, %for.inc.6.if.then26_crit_edge ], [ 8, %for.inc.7.if.then26_crit_edge ], [ 9, %for.inc.8.if.then26_crit_edge ], [ 10, %for.inc.9.if.then26_crit_edge ], [ 11, %for.inc.10.if.then26_crit_edge ], [ 12, %for.inc.11.if.then26_crit_edge ], [ 13, %for.inc.12.if.then26_crit_edge ], [ 14, %for.inc.13.if.then26_crit_edge ], [ 15, %for.inc.14.if.then26_crit_edge ], [ 16, %for.inc.15.if.then26_crit_edge ], [ 17, %for.inc.16.if.then26_crit_edge ], [ 18, %for.inc.17.if.then26_crit_edge ]
  %arrayidx23 = getelementptr %struct.ras_manager, ptr %5, i32 %i.048.lcssa
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %use24.1 = getelementptr %struct.ras_manager, ptr %5, i32 1, i32 1
  %18 = ptrtoint ptr %use24.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %use24.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not.1 = icmp eq i32 %19, 0
  br i1 %tobool25.not.1, label %for.inc.1, label %for.inc.if.then26_crit_edge

for.inc.if.then26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.1:                                        ; preds = %for.inc
  %use24.2 = getelementptr %struct.ras_manager, ptr %5, i32 2, i32 1
  %20 = ptrtoint ptr %use24.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %use24.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not.2 = icmp eq i32 %21, 0
  br i1 %tobool25.not.2, label %for.inc.2, label %for.inc.1.if.then26_crit_edge

for.inc.1.if.then26_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.2:                                        ; preds = %for.inc.1
  %use24.3 = getelementptr %struct.ras_manager, ptr %5, i32 3, i32 1
  %22 = ptrtoint ptr %use24.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %use24.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool25.not.3 = icmp eq i32 %23, 0
  br i1 %tobool25.not.3, label %for.inc.3, label %for.inc.2.if.then26_crit_edge

for.inc.2.if.then26_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.3:                                        ; preds = %for.inc.2
  %use24.4 = getelementptr %struct.ras_manager, ptr %5, i32 4, i32 1
  %24 = ptrtoint ptr %use24.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %use24.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not.4 = icmp eq i32 %25, 0
  br i1 %tobool25.not.4, label %for.inc.4, label %for.inc.3.if.then26_crit_edge

for.inc.3.if.then26_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.4:                                        ; preds = %for.inc.3
  %use24.5 = getelementptr %struct.ras_manager, ptr %5, i32 5, i32 1
  %26 = ptrtoint ptr %use24.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %use24.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not.5 = icmp eq i32 %27, 0
  br i1 %tobool25.not.5, label %for.inc.5, label %for.inc.4.if.then26_crit_edge

for.inc.4.if.then26_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.5:                                        ; preds = %for.inc.4
  %use24.6 = getelementptr %struct.ras_manager, ptr %5, i32 6, i32 1
  %28 = ptrtoint ptr %use24.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %use24.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not.6 = icmp eq i32 %29, 0
  br i1 %tobool25.not.6, label %for.inc.6, label %for.inc.5.if.then26_crit_edge

for.inc.5.if.then26_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.6:                                        ; preds = %for.inc.5
  %use24.7 = getelementptr %struct.ras_manager, ptr %5, i32 7, i32 1
  %30 = ptrtoint ptr %use24.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %use24.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool25.not.7 = icmp eq i32 %31, 0
  br i1 %tobool25.not.7, label %for.inc.7, label %for.inc.6.if.then26_crit_edge

for.inc.6.if.then26_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.7:                                        ; preds = %for.inc.6
  %use24.8 = getelementptr %struct.ras_manager, ptr %5, i32 8, i32 1
  %32 = ptrtoint ptr %use24.8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %use24.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool25.not.8 = icmp eq i32 %33, 0
  br i1 %tobool25.not.8, label %for.inc.8, label %for.inc.7.if.then26_crit_edge

for.inc.7.if.then26_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.8:                                        ; preds = %for.inc.7
  %use24.9 = getelementptr %struct.ras_manager, ptr %5, i32 9, i32 1
  %34 = ptrtoint ptr %use24.9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %use24.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool25.not.9 = icmp eq i32 %35, 0
  br i1 %tobool25.not.9, label %for.inc.9, label %for.inc.8.if.then26_crit_edge

for.inc.8.if.then26_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.9:                                        ; preds = %for.inc.8
  %use24.10 = getelementptr %struct.ras_manager, ptr %5, i32 10, i32 1
  %36 = ptrtoint ptr %use24.10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %use24.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool25.not.10 = icmp eq i32 %37, 0
  br i1 %tobool25.not.10, label %for.inc.10, label %for.inc.9.if.then26_crit_edge

for.inc.9.if.then26_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.10:                                       ; preds = %for.inc.9
  %use24.11 = getelementptr %struct.ras_manager, ptr %5, i32 11, i32 1
  %38 = ptrtoint ptr %use24.11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %use24.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool25.not.11 = icmp eq i32 %39, 0
  br i1 %tobool25.not.11, label %for.inc.11, label %for.inc.10.if.then26_crit_edge

for.inc.10.if.then26_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.11:                                       ; preds = %for.inc.10
  %use24.12 = getelementptr %struct.ras_manager, ptr %5, i32 12, i32 1
  %40 = ptrtoint ptr %use24.12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %use24.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool25.not.12 = icmp eq i32 %41, 0
  br i1 %tobool25.not.12, label %for.inc.12, label %for.inc.11.if.then26_crit_edge

for.inc.11.if.then26_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.12:                                       ; preds = %for.inc.11
  %use24.13 = getelementptr %struct.ras_manager, ptr %5, i32 13, i32 1
  %42 = ptrtoint ptr %use24.13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %use24.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool25.not.13 = icmp eq i32 %43, 0
  br i1 %tobool25.not.13, label %for.inc.13, label %for.inc.12.if.then26_crit_edge

for.inc.12.if.then26_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.13:                                       ; preds = %for.inc.12
  %use24.14 = getelementptr %struct.ras_manager, ptr %5, i32 14, i32 1
  %44 = ptrtoint ptr %use24.14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %use24.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool25.not.14 = icmp eq i32 %45, 0
  br i1 %tobool25.not.14, label %for.inc.14, label %for.inc.13.if.then26_crit_edge

for.inc.13.if.then26_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.14:                                       ; preds = %for.inc.13
  %use24.15 = getelementptr %struct.ras_manager, ptr %5, i32 15, i32 1
  %46 = ptrtoint ptr %use24.15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %use24.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool25.not.15 = icmp eq i32 %47, 0
  br i1 %tobool25.not.15, label %for.inc.15, label %for.inc.14.if.then26_crit_edge

for.inc.14.if.then26_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.15:                                       ; preds = %for.inc.14
  %use24.16 = getelementptr %struct.ras_manager, ptr %5, i32 16, i32 1
  %48 = ptrtoint ptr %use24.16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %use24.16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool25.not.16 = icmp eq i32 %49, 0
  br i1 %tobool25.not.16, label %for.inc.16, label %for.inc.15.if.then26_crit_edge

for.inc.15.if.then26_crit_edge:                   ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.16:                                       ; preds = %for.inc.15
  %use24.17 = getelementptr %struct.ras_manager, ptr %5, i32 17, i32 1
  %50 = ptrtoint ptr %use24.17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %use24.17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool25.not.17 = icmp eq i32 %51, 0
  br i1 %tobool25.not.17, label %for.inc.17, label %for.inc.16.if.then26_crit_edge

for.inc.16.if.then26_crit_edge:                   ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.17:                                       ; preds = %for.inc.16
  %use24.18 = getelementptr %struct.ras_manager, ptr %5, i32 18, i32 1
  %52 = ptrtoint ptr %use24.18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %use24.18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool25.not.18 = icmp eq i32 %53, 0
  br i1 %tobool25.not.18, label %for.inc.17.if.end28_crit_edge, label %for.inc.17.if.then26_crit_edge

for.inc.17.if.then26_crit_edge:                   ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

for.inc.17.if.end28_crit_edge:                    ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.end28:                                         ; preds = %for.inc.17.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %if.end16.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end28 ], [ %arrayidx23, %if.then26 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then3.cleanup_crit_edge ], [ null, %if.then8.cleanup_crit_edge ], [ %obj.0, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %head, i1 noundef zeroext %enable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1024) #19
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %5 = icmp ult i32 %4, 15
  br i1 %enable, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  br i1 %5, label %if.then5.amdgpu_ras_block_to_ta.exit_crit_edge, label %land.end.i

if.then5.amdgpu_ras_block_to_ta.exit_crit_edge:   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_block_to_ta.exit

land.end.i:                                       ; preds = %if.then5
  %.b50.i = load i1, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  br i1 %.b50.i, label %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge, label %if.then.i, !prof !351

land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_block_to_ta.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 573, i32 noundef 9, ptr noundef nonnull @.str.77, i32 noundef %4) #16
  br label %amdgpu_ras_block_to_ta.exit

amdgpu_ras_block_to_ta.exit:                      ; preds = %if.then.i, %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge, %if.then5.amdgpu_ras_block_to_ta.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge ], [ %4, %if.then5.amdgpu_ras_block_to_ta.exit_crit_edge ]
  %type = getelementptr inbounds %struct.ras_common_if, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %8 = icmp ult i32 %7, 9
  br i1 %8, label %switch.hole_check, label %amdgpu_ras_block_to_ta.exit.land.end.i87_crit_edge

amdgpu_ras_block_to_ta.exit.land.end.i87_crit_edge: ; preds = %amdgpu_ras_block_to_ta.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i87

land.end.i87:                                     ; preds = %switch.hole_check.land.end.i87_crit_edge, %amdgpu_ras_block_to_ta.exit.land.end.i87_crit_edge
  %.b40.i = load i1, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  br i1 %.b40.i, label %land.end.i87.amdgpu_ras_error_to_ta.exit_crit_edge, label %if.then.i88, !prof !351

land.end.i87.amdgpu_ras_error_to_ta.exit_crit_edge: ; preds = %land.end.i87
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_error_to_ta.exit

if.then.i88:                                      ; preds = %land.end.i87
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 592, i32 noundef 9, ptr noundef nonnull @.str.78, i32 noundef %7) #16
  br label %amdgpu_ras_error_to_ta.exit

switch.hole_check:                                ; preds = %amdgpu_ras_block_to_ta.exit
  %switch.maskindex = trunc i32 %7 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i87_crit_edge, label %switch.lookup

switch.hole_check.land.end.i87_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i87

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.amdgpu_ras_feature_enable, i32 0, i32 %7
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %amdgpu_ras_error_to_ta.exit

amdgpu_ras_error_to_ta.exit:                      ; preds = %switch.lookup, %if.then.i88, %land.end.i87.amdgpu_ras_error_to_ta.exit_crit_edge
  %retval.0.i89 = phi i32 [ 0, %if.then.i88 ], [ 0, %land.end.i87.amdgpu_ras_error_to_ta.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %call7.i.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 4
  %12 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i89, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end3
  br i1 %5, label %if.else.amdgpu_ras_block_to_ta.exit108_crit_edge, label %land.end.i105

if.else.amdgpu_ras_block_to_ta.exit108_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_block_to_ta.exit108

land.end.i105:                                    ; preds = %if.else
  %.b50.i104 = load i1, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  br i1 %.b50.i104, label %land.end.i105.amdgpu_ras_block_to_ta.exit108_crit_edge, label %if.then.i106, !prof !351

land.end.i105.amdgpu_ras_block_to_ta.exit108_crit_edge: ; preds = %land.end.i105
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_block_to_ta.exit108

if.then.i106:                                     ; preds = %land.end.i105
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 573, i32 noundef 9, ptr noundef nonnull @.str.77, i32 noundef %4) #16
  br label %amdgpu_ras_block_to_ta.exit108

amdgpu_ras_block_to_ta.exit108:                   ; preds = %if.then.i106, %land.end.i105.amdgpu_ras_block_to_ta.exit108_crit_edge, %if.else.amdgpu_ras_block_to_ta.exit108_crit_edge
  %retval.0.i107 = phi i32 [ 0, %if.then.i106 ], [ 0, %land.end.i105.amdgpu_ras_block_to_ta.exit108_crit_edge ], [ %4, %if.else.amdgpu_ras_block_to_ta.exit108_crit_edge ]
  %type13 = getelementptr inbounds %struct.ras_common_if, ptr %head, i32 0, i32 1
  %13 = ptrtoint ptr %type13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %15 = icmp ult i32 %14, 9
  br i1 %15, label %switch.hole_check124, label %amdgpu_ras_block_to_ta.exit108.land.end.i114_crit_edge

amdgpu_ras_block_to_ta.exit108.land.end.i114_crit_edge: ; preds = %amdgpu_ras_block_to_ta.exit108
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i114

land.end.i114:                                    ; preds = %switch.hole_check124.land.end.i114_crit_edge, %amdgpu_ras_block_to_ta.exit108.land.end.i114_crit_edge
  %.b40.i113 = load i1, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  br i1 %.b40.i113, label %land.end.i114.amdgpu_ras_error_to_ta.exit117_crit_edge, label %if.then.i115, !prof !351

land.end.i114.amdgpu_ras_error_to_ta.exit117_crit_edge: ; preds = %land.end.i114
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_error_to_ta.exit117

if.then.i115:                                     ; preds = %land.end.i114
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 592, i32 noundef 9, ptr noundef nonnull @.str.78, i32 noundef %14) #16
  br label %amdgpu_ras_error_to_ta.exit117

switch.hole_check124:                             ; preds = %amdgpu_ras_block_to_ta.exit108
  %switch.maskindex126 = trunc i32 %14 to i16
  %switch.shifted127 = lshr i16 279, %switch.maskindex126
  %16 = and i16 %switch.shifted127, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit128.not = icmp eq i16 %16, 0
  br i1 %switch.lobit128.not, label %switch.hole_check124.land.end.i114_crit_edge, label %switch.lookup125

switch.hole_check124.land.end.i114_crit_edge:     ; preds = %switch.hole_check124
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i114

switch.lookup125:                                 ; preds = %switch.hole_check124
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep129 = getelementptr inbounds [9 x i32], ptr @switch.table.amdgpu_ras_feature_enable.172, i32 0, i32 %14
  %17 = ptrtoint ptr %switch.gep129 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load130 = load i32, ptr %switch.gep129, align 4
  br label %amdgpu_ras_error_to_ta.exit117

amdgpu_ras_error_to_ta.exit117:                   ; preds = %switch.lookup125, %if.then.i115, %land.end.i114.amdgpu_ras_error_to_ta.exit117_crit_edge
  %retval.0.i116 = phi i32 [ 0, %if.then.i115 ], [ 0, %land.end.i114.amdgpu_ras_error_to_ta.exit117_crit_edge ], [ %switch.load130, %switch.lookup125 ]
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i107, ptr %call7.i.i, align 8
  %.compoundliteral8.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 4
  %19 = ptrtoint ptr %.compoundliteral8.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i116, ptr %.compoundliteral8.sroa.2.0..sroa_idx, align 4
  %ras_hw_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 166
  %20 = ptrtoint ptr %ras_hw_enabled.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ras_hw_enabled.i, align 4
  %22 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %head, align 4
  %shl.i = shl nuw i32 1, %23
  %and.i = and i32 %shl.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not = icmp eq i32 %and.i, 0
  br i1 %tobool18.not, label %do.end, label %amdgpu_ras_error_to_ta.exit117.if.end34_crit_edge, !prof !352

amdgpu_ras_error_to_ta.exit117.if.end34_crit_edge: ; preds = %amdgpu_ras_error_to_ta.exit117
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

do.end:                                           ; preds = %amdgpu_ras_error_to_ta.exit117
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 720, i32 noundef 9, ptr noundef null) #16
  br label %if.end34

if.end34:                                         ; preds = %do.end, %amdgpu_ras_error_to_ta.exit117.if.end34_crit_edge, %amdgpu_ras_error_to_ta.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #16
  %24 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %if.then42, label %if.end34.if.end55_crit_edge

if.end34.if.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then42:                                        ; preds = %if.end34
  %call45 = tail call i32 @psp_ras_enable_features(ptr noundef %psp, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %enable) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then42.if.end55_crit_edge, label %do.end50

if.then42.if.end55_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

do.end50:                                         ; preds = %if.then42
  %25 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adev, align 8
  %cond = select i1 %enable, ptr @.str.31, ptr @.str.32
  %tobool.not.i = icmp eq ptr %head, null
  br i1 %tobool.not.i, label %do.end50.get_ras_block_str.exit_crit_edge, label %if.end.i

do.end50.get_ras_block_str.exit_crit_edge:        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end.i:                                         ; preds = %do.end50
  %27 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %28)
  %cmp.i = icmp ugt i32 %28, 14
  br i1 %cmp.i, label %if.end.i.get_ras_block_str.exit_crit_edge, label %if.end2.i

if.end.i.get_ras_block_str.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %28)
  %cmp4.i = icmp eq i32 %28, 14
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i = getelementptr inbounds %struct.ras_common_if, ptr %head, i32 0, i32 2
  %29 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sub_block_index.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %30
  br label %return.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %28
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end6.i, %if.then5.i
  %arrayidx8.sink.i = phi ptr [ %arrayidx8.i, %if.end6.i ], [ %arrayidx.i, %if.then5.i ]
  %31 = ptrtoint ptr %arrayidx8.sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx8.sink.i, align 4
  br label %get_ras_block_str.exit

get_ras_block_str.exit:                           ; preds = %return.sink.split.i, %if.end.i.get_ras_block_str.exit_crit_edge, %do.end50.get_ras_block_str.exit_crit_edge
  %retval.0.i118 = phi ptr [ @.str.24, %do.end50.get_ras_block_str.exit_crit_edge ], [ @.str.25, %if.end.i.get_ras_block_str.exit_crit_edge ], [ %32, %return.sink.split.i ]
  %33 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ras, align 8
  %tobool.not.i119 = icmp eq ptr %34, null
  br i1 %tobool.not.i119, label %get_ras_block_str.exit.amdgpu_ras_is_poison_mode_supported.exit_crit_edge, label %if.end.i120

get_ras_block_str.exit.amdgpu_ras_is_poison_mode_supported.exit_crit_edge: ; preds = %get_ras_block_str.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_is_poison_mode_supported.exit

if.end.i120:                                      ; preds = %get_ras_block_str.exit
  call void @__sanitizer_cov_trace_pc() #18
  %poison_supported.i = getelementptr inbounds %struct.amdgpu_ras, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %poison_supported.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %poison_supported.i, align 1, !range !353
  %37 = zext i8 %36 to i32
  br label %amdgpu_ras_is_poison_mode_supported.exit

amdgpu_ras_is_poison_mode_supported.exit:         ; preds = %if.end.i120, %get_ras_block_str.exit.amdgpu_ras_is_poison_mode_supported.exit_crit_edge
  %retval.0.i121 = phi i32 [ %37, %if.end.i120 ], [ 0, %get_ras_block_str.exit.amdgpu_ras_is_poison_mode_supported.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond, ptr noundef %retval.0.i118, i32 noundef %retval.0.i121, i32 noundef %call45) #20
  br label %out

if.end55:                                         ; preds = %if.then42.if.end55_crit_edge, %if.end34.if.end55_crit_edge
  %conv57 = zext i1 %enable to i32
  %call58 = tail call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %head, i32 noundef %conv57)
  br label %out

out:                                              ; preds = %if.end55, %amdgpu_ras_is_poison_mode_supported.exit
  %ret.0 = phi i32 [ 0, %if.end55 ], [ %call45, %amdgpu_ras_is_poison_mode_supported.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_ras_enable_features(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_ras_is_poison_mode_supported(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %poison_supported = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %poison_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %poison_supported, align 1, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1 = icmp ne i8 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %head, i32 noundef %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %head)
  %ras_hw_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 166
  %2 = ptrtoint ptr %ras_hw_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_hw_enabled.i, align 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %shl.i = shl nuw i32 1, %5
  %and.i = and i32 %shl.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.else11, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool12.not, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.then3
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %6 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ras_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp.i = icmp ugt i32 %5, 14
  %or.cond = select i1 %or.cond.i, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.then5.cleanup_crit_edge, label %if.end3.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp5.i = icmp eq i32 %5, 14
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end3.i
  %sub_block_index.i = getelementptr inbounds %struct.ras_common_if, ptr %head, i32 0, i32 2
  %8 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sub_block_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp7.i = icmp ugt i32 %9, 3
  br i1 %cmp7.i, label %if.then6.i.cleanup_crit_edge, label %if.end9.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  %objs.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %objs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %objs.i, align 8
  %add.i = add nuw nsw i32 %9, 15
  %arrayidx.i = getelementptr %struct.ras_manager, ptr %11, i32 %add.i
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  %objs11.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %objs11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %objs11.i, align 8
  %arrayidx13.i = getelementptr %struct.ras_manager, ptr %13, i32 %5
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.end9.i
  %obj.0.i = phi ptr [ %arrayidx.i, %if.end9.i ], [ %arrayidx13.i, %if.else.i ]
  %use.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %use.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not.i = icmp eq i32 %15, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17.i:                                       ; preds = %if.end14.i
  %16 = call ptr @memcpy(ptr %obj.0.i, ptr %head, i32 44)
  %adev19.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %adev19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %adev, ptr %adev19.i, align 4
  %node.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 2
  %head20.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %head20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head20.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %head20.i, ptr noundef %19) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.i.amdgpu_ras_create_obj.exit_crit_edge

if.end17.i.amdgpu_ras_create_obj.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_create_obj.exit

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %head20.i, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %head20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node.i, ptr %head20.i, align 4
  br label %amdgpu_ras_create_obj.exit

amdgpu_ras_create_obj.exit:                       ; preds = %if.end.i.i.i, %if.end17.i.amdgpu_ras_create_obj.exit_crit_edge
  %24 = ptrtoint ptr %use.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %use.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %use.i, align 4
  %tobool7.not = icmp eq ptr %obj.0.i, null
  br i1 %tobool7.not, label %amdgpu_ras_create_obj.exit.cleanup_crit_edge, label %amdgpu_ras_create_obj.exit.if.end10_crit_edge

amdgpu_ras_create_obj.exit.if.end10_crit_edge:    ; preds = %amdgpu_ras_create_obj.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

amdgpu_ras_create_obj.exit.cleanup_crit_edge:     ; preds = %amdgpu_ras_create_obj.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %use = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %use, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %use, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.body, %amdgpu_ras_create_obj.exit.if.end10_crit_edge
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head, align 4
  %shl = shl nuw i32 1, %29
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 8
  %or = or i32 %31, %shl
  store i32 %or, ptr %1, align 8
  br label %cleanup

if.else11:                                        ; preds = %if.end
  br i1 %tobool12.not, label %if.else11.cleanup_crit_edge, label %land.lhs.true

if.else11.cleanup_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else11
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 8
  %and.i38 = and i32 %33, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool14.not = icmp eq i32 %and.i38, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %neg = xor i32 %shl.i, -1
  %and = and i32 %33, %neg
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and, ptr %1, align 8
  %use.i40 = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 1
  %35 = ptrtoint ptr %use.i40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %use.i40, align 4
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %use.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i41 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i41, label %if.then.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true2.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %node.i42 = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2
  %call.i.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i42) #16
  br i1 %call.i.i.i43, label %if.end.i.i.i44, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i44:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %node.i42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %node.i42, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i44, %if.then.i.list_del.exit.i_crit_edge
  %43 = ptrtoint ptr %node.i42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i42, align 4
  %prev.i.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %use.i40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i = load i32, ptr %use.i40, align 4
  br label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %list_del.exit.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %46 = phi i32 [ %dec.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge ], [ %.pr.i, %list_del.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp4.i = icmp slt i32 %46, 0
  br i1 %cmp4.i, label %if.end.i.i, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true2.i
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %48)
  %cmp.i.i = icmp ugt i32 %48, 14
  br i1 %cmp.i.i, label %if.end.i.i.get_ras_block_str.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.get_ras_block_str.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %48)
  %cmp4.i.i = icmp eq i32 %48, 14
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i.i = getelementptr inbounds %struct.ras_common_if, ptr %call, i32 0, i32 2
  %49 = ptrtoint ptr %sub_block_index.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sub_block_index.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %50
  br label %return.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %48
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.end6.i.i, %if.then5.i.i
  %arrayidx8.sink.i.i = phi ptr [ %arrayidx8.i.i, %if.end6.i.i ], [ %arrayidx.i.i, %if.then5.i.i ]
  %51 = ptrtoint ptr %arrayidx8.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx8.sink.i.i, align 4
  br label %get_ras_block_str.exit.i

get_ras_block_str.exit.i:                         ; preds = %return.sink.split.i.i, %if.end.i.i.get_ras_block_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.25, %if.end.i.i.get_ras_block_str.exit.i_crit_edge ], [ %52, %return.sink.split.i.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %get_ras_block_str.exit.i, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else11.cleanup_crit_edge, %if.end10, %amdgpu_ras_create_obj.exit.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %amdgpu_ras_create_obj.exit.cleanup_crit_edge ], [ 0, %if.else11.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end10 ], [ 0, %land.lhs.true2.i.cleanup_crit_edge ], [ 0, %get_ras_block_str.exit.i ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.then6.i.cleanup_crit_edge ], [ -22, %if.end14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_feature_enable_on_boot(ptr noundef %adev, ptr noundef %head, i1 noundef zeroext %enable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else31, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %enable, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %call = tail call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %head, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp = icmp eq i32 %call, -22
  br i1 %cmp, label %if.then5, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %if.then4
  %call6 = tail call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %head, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %if.then5
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  %tobool.not.i = icmp eq ptr %head, null
  br i1 %tobool.not.i, label %do.end.get_ras_block_str.exit_crit_edge, label %if.end.i

do.end.get_ras_block_str.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end.i:                                         ; preds = %do.end
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cmp.i = icmp ugt i32 %7, 14
  br i1 %cmp.i, label %if.end.i.get_ras_block_str.exit_crit_edge, label %if.end2.i

if.end.i.get_ras_block_str.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cmp4.i = icmp eq i32 %7, 14
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i = getelementptr inbounds %struct.ras_common_if, ptr %head, i32 0, i32 2
  %8 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sub_block_index.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %9
  br label %return.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %7
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end6.i, %if.then5.i
  %arrayidx8.sink.i = phi ptr [ %arrayidx8.i, %if.end6.i ], [ %arrayidx.i, %if.then5.i ]
  %10 = ptrtoint ptr %arrayidx8.sink.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8.sink.i, align 4
  br label %get_ras_block_str.exit

get_ras_block_str.exit:                           ; preds = %return.sink.split.i, %if.end.i.get_ras_block_str.exit_crit_edge, %do.end.get_ras_block_str.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.24, %do.end.get_ras_block_str.exit_crit_edge ], [ @.str.25, %if.end.i.get_ras_block_str.exit_crit_edge ], [ %11, %return.sink.split.i ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i) #20
  br label %cleanup

if.else:                                          ; preds = %if.then2
  %call12 = tail call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %head, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16 = icmp eq i32 %13, 2
  br i1 %cmp16, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %or = or i32 %15, 4
  store i32 %or, ptr %1, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %call20 = tail call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %head, i1 noundef zeroext false)
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %16 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %land.lhs.true

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end19
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp23 = icmp eq i32 %19, 2
  br i1 %cmp23, label %if.then24, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 8
  %and28 = and i32 %21, -5
  store i32 %and28, ptr %1, align 8
  br label %cleanup

if.else31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call33 = tail call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %head, i1 noundef zeroext %enable)
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %if.then24, %land.lhs.true.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.else.cleanup_crit_edge, %get_ras_block_str.exit, %if.then5.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call12, %if.else.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ 0, %get_ras_block_str.exit ], [ %call, %if.then4.cleanup_crit_edge ], [ %call20, %if.then24 ], [ %call20, %land.lhs.true.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call33, %if.else31 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_query_error_status(ptr noundef %adev, ptr noundef %info) local_unnamed_addr #4 align 64 {
entry:
  %err_data.addr.i = alloca ptr, align 4
  %err_data = alloca %struct.ras_err_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %info)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %err_data) #16
  %0 = call ptr @memset(ptr %err_data, i32 0, i32 16)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %info, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb11
    i32 3, label %sw.bb35
    i32 5, label %sw.bb61
    i32 7, label %sw.bb74
    i32 6, label %sw.bb90
    i32 14, label %sw.bb103
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %4 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ras1.i, align 8
  %smu.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %umc_ecc.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 21
  %call.i = tail call i32 @smu_get_ecc_info(ptr noundef %smu.i, ptr noundef %umc_ecc.i) #16
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call.i, label %sw.bb.sw.epilog_crit_edge [
    i32 -95, label %if.then.i
    i32 0, label %if.then22.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %ras_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 7
  %7 = ptrtoint ptr %ras_funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ras_funcs.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i.sw.epilog_crit_edge, label %land.lhs.true.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %if.then.i
  %query_ras_error_count.i = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %query_ras_error_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %query_ras_error_count.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %10(ptr noundef %adev, ptr noundef nonnull %err_data) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %land.lhs.true.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %ras_funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr.i = load ptr, ptr %ras_funcs.i, align 4
  %tobool11.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool11.not.i, label %if.end.i.sw.epilog_crit_edge, label %land.lhs.true12.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true12.i:                                ; preds = %if.end.i
  %query_ras_error_address.i = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %.pr.i, i32 0, i32 4
  %12 = ptrtoint ptr %query_ras_error_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %query_ras_error_address.i, align 4
  %tobool15.not.i = icmp eq ptr %13, null
  br i1 %tobool15.not.i, label %land.lhs.true12.i.sw.epilog_crit_edge, label %land.lhs.true12.i.if.end48.sink.split.i_crit_edge

land.lhs.true12.i.if.end48.sink.split.i_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.sink.split.i

land.lhs.true12.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then22.i:                                      ; preds = %sw.bb
  %ras_funcs24.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 7
  %14 = ptrtoint ptr %ras_funcs24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ras_funcs24.i, align 4
  %tobool25.not.i = icmp eq ptr %15, null
  br i1 %tobool25.not.i, label %if.then22.i.sw.epilog_crit_edge, label %land.lhs.true26.i

if.then22.i.sw.epilog_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true26.i:                                ; preds = %if.then22.i
  %ecc_info_query_ras_error_count.i = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %ecc_info_query_ras_error_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ecc_info_query_ras_error_count.i, align 4
  %tobool29.not.i = icmp eq ptr %17, null
  br i1 %tobool29.not.i, label %land.lhs.true26.i.if.end34.i_crit_edge, label %if.then30.i

land.lhs.true26.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then30.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #18
  call void %17(ptr noundef %adev, ptr noundef nonnull %err_data) #16
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %land.lhs.true26.i.if.end34.i_crit_edge
  %18 = ptrtoint ptr %ras_funcs24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr78.i = load ptr, ptr %ras_funcs24.i, align 4
  %tobool37.not.i = icmp eq ptr %.pr78.i, null
  br i1 %tobool37.not.i, label %if.end34.i.sw.epilog_crit_edge, label %land.lhs.true38.i

if.end34.i.sw.epilog_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true38.i:                                ; preds = %if.end34.i
  %ecc_info_query_ras_error_address.i = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %.pr78.i, i32 0, i32 7
  %19 = ptrtoint ptr %ecc_info_query_ras_error_address.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ecc_info_query_ras_error_address.i, align 4
  %tobool41.not.i = icmp eq ptr %20, null
  br i1 %tobool41.not.i, label %land.lhs.true38.i.sw.epilog_crit_edge, label %land.lhs.true38.i.if.end48.sink.split.i_crit_edge

land.lhs.true38.i.if.end48.sink.split.i_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.sink.split.i

land.lhs.true38.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end48.sink.split.i:                            ; preds = %land.lhs.true38.i.if.end48.sink.split.i_crit_edge, %land.lhs.true12.i.if.end48.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %13, %land.lhs.true12.i.if.end48.sink.split.i_crit_edge ], [ %20, %land.lhs.true38.i.if.end48.sink.split.i_crit_edge ]
  call void %.sink.i(ptr noundef %adev, ptr noundef nonnull %err_data) #16
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 12
  %21 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs, align 4
  %query_ras_error_count = getelementptr inbounds %struct.amdgpu_sdma_ras_funcs, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %query_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %query_ras_error_count, align 4
  %tobool3.not = icmp eq ptr %24, null
  br i1 %tobool3.not, label %sw.bb2.sw.epilog_crit_edge, label %for.cond.preheader

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.cond.preheader:                               ; preds = %sw.bb2
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 8
  %25 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp350 = icmp sgt i32 %26, 0
  br i1 %cmp350, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.sw.epilog_crit_edge

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0351 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %27 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs, align 4
  %query_ras_error_count8 = getelementptr inbounds %struct.amdgpu_sdma_ras_funcs, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %query_ras_error_count8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %query_ras_error_count8, align 4
  %call9 = call i32 %30(ptr noundef %adev, i32 noundef %i.0351, ptr noundef nonnull %err_data) #16
  %inc = add nuw nsw i32 %i.0351, 1
  %31 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

sw.bb11:                                          ; preds = %if.end
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 59
  %33 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ras_funcs, align 8
  %tobool12.not = icmp eq ptr %34, null
  br i1 %tobool12.not, label %sw.bb11.sw.epilog_crit_edge, label %land.lhs.true

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb11
  %query_ras_error_count15 = getelementptr inbounds %struct.amdgpu_gfx_ras_funcs, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %query_ras_error_count15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %query_ras_error_count15, align 4
  %tobool16.not = icmp eq ptr %36, null
  br i1 %tobool16.not, label %land.lhs.true.if.end22_crit_edge, label %if.then17

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call21 = call i32 %36(ptr noundef %adev, ptr noundef nonnull %err_data) #16
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true.if.end22_crit_edge
  %37 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load ptr, ptr %ras_funcs, align 8
  %tobool25.not = icmp eq ptr %.pr, null
  br i1 %tobool25.not, label %if.end22.sw.epilog_crit_edge, label %land.lhs.true26

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %if.end22
  %query_ras_error_status = getelementptr inbounds %struct.amdgpu_gfx_ras_funcs, ptr %.pr, i32 0, i32 5
  %38 = ptrtoint ptr %query_ras_error_status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %query_ras_error_status, align 4
  %tobool29.not = icmp eq ptr %39, null
  br i1 %tobool29.not, label %land.lhs.true26.sw.epilog_crit_edge, label %if.then30

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #18
  call void %39(ptr noundef %adev) #16
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %ras_funcs36 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 104, i32 2
  %40 = ptrtoint ptr %ras_funcs36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ras_funcs36, align 8
  %tobool37.not = icmp eq ptr %41, null
  br i1 %tobool37.not, label %sw.bb35.sw.epilog_crit_edge, label %land.lhs.true38

sw.bb35.sw.epilog_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true38:                                  ; preds = %sw.bb35
  %query_ras_error_count41 = getelementptr inbounds %struct.amdgpu_mmhub_ras_funcs, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %query_ras_error_count41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %query_ras_error_count41, align 4
  %tobool42.not = icmp eq ptr %43, null
  br i1 %tobool42.not, label %land.lhs.true38.if.end47_crit_edge, label %if.then43

land.lhs.true38.if.end47_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.then43:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  call void %43(ptr noundef %adev, ptr noundef nonnull %err_data) #16
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %land.lhs.true38.if.end47_crit_edge
  %44 = ptrtoint ptr %ras_funcs36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr348 = load ptr, ptr %ras_funcs36, align 8
  %tobool50.not = icmp eq ptr %.pr348, null
  br i1 %tobool50.not, label %if.end47.sw.epilog_crit_edge, label %land.lhs.true51

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true51:                                  ; preds = %if.end47
  %query_ras_error_status54 = getelementptr inbounds %struct.amdgpu_mmhub_ras_funcs, ptr %.pr348, i32 0, i32 3
  %45 = ptrtoint ptr %query_ras_error_status54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %query_ras_error_status54, align 4
  %tobool55.not = icmp eq ptr %46, null
  br i1 %tobool55.not, label %land.lhs.true51.sw.epilog_crit_edge, label %if.then56

land.lhs.true51.sw.epilog_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then56:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  call void %46(ptr noundef %adev) #16
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end
  %ras_funcs62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 5
  %47 = ptrtoint ptr %ras_funcs62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ras_funcs62, align 4
  %tobool63.not = icmp eq ptr %48, null
  br i1 %tobool63.not, label %sw.bb61.sw.epilog_crit_edge, label %land.lhs.true64

sw.bb61.sw.epilog_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true64:                                  ; preds = %sw.bb61
  %query_ras_error_count67 = getelementptr inbounds %struct.amdgpu_nbio_ras_funcs, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %query_ras_error_count67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %query_ras_error_count67, align 4
  %tobool68.not = icmp eq ptr %50, null
  br i1 %tobool68.not, label %land.lhs.true64.sw.epilog_crit_edge, label %if.then69

land.lhs.true64.sw.epilog_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then69:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #18
  call void %50(ptr noundef %adev, ptr noundef nonnull %err_data) #16
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end
  %ras_funcs75 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 10
  %51 = ptrtoint ptr %ras_funcs75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ras_funcs75, align 4
  %tobool76.not = icmp eq ptr %52, null
  br i1 %tobool76.not, label %sw.bb74.sw.epilog_crit_edge, label %land.lhs.true77

sw.bb74.sw.epilog_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true77:                                  ; preds = %sw.bb74
  %query_ras_error_count81 = getelementptr inbounds %struct.amdgpu_xgmi_ras_funcs, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %query_ras_error_count81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %query_ras_error_count81, align 4
  %tobool82.not = icmp eq ptr %54, null
  br i1 %tobool82.not, label %land.lhs.true77.sw.epilog_crit_edge, label %if.then83

land.lhs.true77.sw.epilog_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then83:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  %call88 = call i32 %54(ptr noundef %adev, ptr noundef nonnull %err_data) #16
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end
  %ras_funcs91 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 102, i32 2
  %55 = ptrtoint ptr %ras_funcs91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ras_funcs91, align 8
  %tobool92.not = icmp eq ptr %56, null
  br i1 %tobool92.not, label %sw.bb90.sw.epilog_crit_edge, label %land.lhs.true93

sw.bb90.sw.epilog_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true93:                                  ; preds = %sw.bb90
  %query_ras_error_count96 = getelementptr inbounds %struct.amdgpu_hdp_ras_funcs, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %query_ras_error_count96 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %query_ras_error_count96, align 4
  %tobool97.not = icmp eq ptr %58, null
  br i1 %tobool97.not, label %land.lhs.true93.sw.epilog_crit_edge, label %if.then98

land.lhs.true93.sw.epilog_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then98:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #18
  call void %58(ptr noundef %adev, ptr noundef nonnull %err_data) #16
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_data.addr.i)
  %59 = ptrtoint ptr %err_data.addr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %err_data, ptr %err_data.addr.i, align 4
  %sub_block_index.i = getelementptr inbounds %struct.ras_common_if, ptr %info, i32 0, i32 2
  %60 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sub_block_index.i, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %61, label %sw.bb103.amdgpu_ras_mca_query_error_status.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
    i32 2, label %sw.bb25.i
  ]

sw.bb103.amdgpu_ras_mca_query_error_status.exit_crit_edge: ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_mca_query_error_status.exit

sw.bb.i:                                          ; preds = %sw.bb103
  %ras_funcs.i295 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 121, i32 1, i32 1
  %63 = ptrtoint ptr %ras_funcs.i295 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ras_funcs.i295, align 4
  %tobool.not.i296 = icmp eq ptr %64, null
  br i1 %tobool.not.i296, label %sw.bb.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, label %land.lhs.true.i299

sw.bb.i.amdgpu_ras_mca_query_error_status.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_mca_query_error_status.exit

land.lhs.true.i299:                               ; preds = %sw.bb.i
  %query_ras_error_count.i297 = getelementptr inbounds %struct.amdgpu_mca_ras_funcs, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %query_ras_error_count.i297 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %query_ras_error_count.i297, align 4
  %tobool4.not.i298 = icmp eq ptr %66, null
  br i1 %tobool4.not.i298, label %land.lhs.true.i299.amdgpu_ras_mca_query_error_status.exit_crit_edge, label %land.lhs.true.i299.sw.epilog.sink.split.i_crit_edge

land.lhs.true.i299.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true.i299
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

land.lhs.true.i299.amdgpu_ras_mca_query_error_status.exit_crit_edge: ; preds = %land.lhs.true.i299
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_mca_query_error_status.exit

sw.bb9.i:                                         ; preds = %sw.bb103
  %ras_funcs11.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 121, i32 2, i32 1
  %67 = ptrtoint ptr %ras_funcs11.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ras_funcs11.i, align 4
  %tobool12.not.i = icmp eq ptr %68, null
  br i1 %tobool12.not.i, label %sw.bb9.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, label %land.lhs.true13.i

sw.bb9.i.amdgpu_ras_mca_query_error_status.exit_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_mca_query_error_status.exit

land.lhs.true13.i:                                ; preds = %sw.bb9.i
  %query_ras_error_count17.i = getelementptr inbounds %struct.amdgpu_mca_ras_funcs, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %query_ras_error_count17.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %query_ras_error_count17.i, align 4
  %tobool18.not.i = icmp eq ptr %70, null
  br i1 %tobool18.not.i, label %land.lhs.true13.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, label %land.lhs.true13.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true13.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

land.lhs.true13.i.amdgpu_ras_mca_query_error_status.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_mca_query_error_status.exit

sw.bb25.i:                                        ; preds = %sw.bb103
  %ras_funcs27.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 121, i32 3, i32 1
  %71 = ptrtoint ptr %ras_funcs27.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ras_funcs27.i, align 4
  %tobool28.not.i = icmp eq ptr %72, null
  br i1 %tobool28.not.i, label %sw.bb25.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, label %land.lhs.true29.i

sw.bb25.i.amdgpu_ras_mca_query_error_status.exit_crit_edge: ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_mca_query_error_status.exit

land.lhs.true29.i:                                ; preds = %sw.bb25.i
  %query_ras_error_count33.i = getelementptr inbounds %struct.amdgpu_mca_ras_funcs, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %query_ras_error_count33.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %query_ras_error_count33.i, align 4
  %tobool34.not.i = icmp eq ptr %74, null
  br i1 %tobool34.not.i, label %land.lhs.true29.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, label %land.lhs.true29.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true29.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

land.lhs.true29.i.amdgpu_ras_mca_query_error_status.exit_crit_edge: ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_mca_query_error_status.exit

sw.epilog.sink.split.i:                           ; preds = %land.lhs.true29.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true13.i.sw.epilog.sink.split.i_crit_edge, %land.lhs.true.i299.sw.epilog.sink.split.i_crit_edge
  %.sink.i300 = phi ptr [ %66, %land.lhs.true.i299.sw.epilog.sink.split.i_crit_edge ], [ %70, %land.lhs.true13.i.sw.epilog.sink.split.i_crit_edge ], [ %74, %land.lhs.true29.i.sw.epilog.sink.split.i_crit_edge ]
  call void %.sink.i300(ptr noundef %adev, ptr noundef nonnull %err_data.addr.i) #16
  br label %amdgpu_ras_mca_query_error_status.exit

amdgpu_ras_mca_query_error_status.exit:           ; preds = %sw.epilog.sink.split.i, %land.lhs.true29.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, %sw.bb25.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, %land.lhs.true13.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, %sw.bb9.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, %land.lhs.true.i299.amdgpu_ras_mca_query_error_status.exit_crit_edge, %sw.bb.i.amdgpu_ras_mca_query_error_status.exit_crit_edge, %sw.bb103.amdgpu_ras_mca_query_error_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_data.addr.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %amdgpu_ras_mca_query_error_status.exit, %if.then98, %land.lhs.true93.sw.epilog_crit_edge, %sw.bb90.sw.epilog_crit_edge, %if.then83, %land.lhs.true77.sw.epilog_crit_edge, %sw.bb74.sw.epilog_crit_edge, %if.then69, %land.lhs.true64.sw.epilog_crit_edge, %sw.bb61.sw.epilog_crit_edge, %if.then56, %land.lhs.true51.sw.epilog_crit_edge, %if.end47.sw.epilog_crit_edge, %sw.bb35.sw.epilog_crit_edge, %if.then30, %land.lhs.true26.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %if.end48.sink.split.i, %land.lhs.true38.i.sw.epilog_crit_edge, %if.end34.i.sw.epilog_crit_edge, %if.then22.i.sw.epilog_crit_edge, %land.lhs.true12.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.then.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %75 = ptrtoint ptr %err_data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %err_data, align 4
  %err_data105 = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 8
  %77 = ptrtoint ptr %err_data105 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %err_data105, align 4
  %add = add i32 %78, %76
  store i32 %add, ptr %err_data105, align 4
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %err_data, i32 0, i32 1
  %79 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ce_count, align 4
  %ce_count108 = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 8, i32 1
  %81 = ptrtoint ptr %ce_count108 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ce_count108, align 4
  %add109 = add i32 %82, %80
  store i32 %add109, ptr %ce_count108, align 4
  %ue_count112 = getelementptr inbounds %struct.ras_query_if, ptr %info, i32 0, i32 1
  %83 = ptrtoint ptr %ue_count112 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add, ptr %ue_count112, align 4
  %84 = load i32, ptr %ce_count108, align 4
  %ce_count115 = getelementptr inbounds %struct.ras_query_if, ptr %info, i32 0, i32 2
  %85 = ptrtoint ptr %ce_count115 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %ce_count115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool117.not = icmp eq i32 %80, 0
  br i1 %tobool117.not, label %sw.epilog.if.end151_crit_edge, label %if.then118

sw.epilog.if.end151_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151

if.then118:                                       ; preds = %sw.epilog
  %smuio = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 103
  %86 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %smuio, align 4
  %tobool120.not = icmp eq ptr %87, null
  br i1 %tobool120.not, label %if.then118.do.end144_crit_edge, label %land.lhs.true121

if.then118.do.end144_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end144

land.lhs.true121:                                 ; preds = %if.then118
  %get_socket_id = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %get_socket_id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_socket_id, align 4
  %tobool124.not = icmp eq ptr %89, null
  br i1 %tobool124.not, label %land.lhs.true121.do.end144_crit_edge, label %land.lhs.true125

land.lhs.true121.do.end144_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end144

land.lhs.true125:                                 ; preds = %land.lhs.true121
  %get_die_id = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %87, i32 0, i32 4
  %90 = ptrtoint ptr %get_die_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %get_die_id, align 4
  %tobool128.not = icmp eq ptr %91, null
  br i1 %tobool128.not, label %land.lhs.true125.do.end144_crit_edge, label %do.end

land.lhs.true125.do.end144_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end144

do.end:                                           ; preds = %land.lhs.true125
  %92 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adev, align 8
  %call133 = call i32 %89(ptr noundef %adev) #16
  %94 = ptrtoint ptr %smuio to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %smuio, align 4
  %get_die_id136 = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %get_die_id136 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %get_die_id136, align 4
  %call137 = call i32 %97(ptr noundef %adev) #16
  %98 = ptrtoint ptr %ce_count108 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ce_count108, align 4
  %tobool.not.i301 = icmp eq ptr %info, null
  br i1 %tobool.not.i301, label %do.end.get_ras_block_str.exit_crit_edge, label %if.end.i302

do.end.get_ras_block_str.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end.i302:                                      ; preds = %do.end
  %100 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %101)
  %cmp.i = icmp ugt i32 %101, 14
  br i1 %cmp.i, label %if.end.i302.get_ras_block_str.exit_crit_edge, label %if.end2.i

if.end.i302.get_ras_block_str.exit_crit_edge:     ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end2.i:                                        ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %101)
  %cmp4.i = icmp eq i32 %101, 14
  br i1 %cmp4.i, label %if.then5.i304, label %if.end6.i

if.then5.i304:                                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i303 = getelementptr inbounds %struct.ras_common_if, ptr %info, i32 0, i32 2
  %102 = ptrtoint ptr %sub_block_index.i303 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sub_block_index.i303, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %103
  br label %return.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %101
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end6.i, %if.then5.i304
  %arrayidx8.sink.i = phi ptr [ %arrayidx8.i, %if.end6.i ], [ %arrayidx.i, %if.then5.i304 ]
  %104 = ptrtoint ptr %arrayidx8.sink.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx8.sink.i, align 4
  br label %get_ras_block_str.exit

get_ras_block_str.exit:                           ; preds = %return.sink.split.i, %if.end.i302.get_ras_block_str.exit_crit_edge, %do.end.get_ras_block_str.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.24, %do.end.get_ras_block_str.exit_crit_edge ], [ @.str.25, %if.end.i302.get_ras_block_str.exit_crit_edge ], [ %105, %return.sink.split.i ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.36, i32 noundef %call133, i32 noundef %call137, i32 noundef %99, ptr noundef %retval.0.i) #20
  br label %if.end151

do.end144:                                        ; preds = %land.lhs.true125.do.end144_crit_edge, %land.lhs.true121.do.end144_crit_edge, %if.then118.do.end144_crit_edge
  %106 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %adev, align 8
  %108 = ptrtoint ptr %ce_count108 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ce_count108, align 4
  %tobool.not.i305 = icmp eq ptr %info, null
  br i1 %tobool.not.i305, label %do.end144.get_ras_block_str.exit318_crit_edge, label %if.end.i307

do.end144.get_ras_block_str.exit318_crit_edge:    ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit318

if.end.i307:                                      ; preds = %do.end144
  %110 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %111)
  %cmp.i306 = icmp ugt i32 %111, 14
  br i1 %cmp.i306, label %if.end.i307.get_ras_block_str.exit318_crit_edge, label %if.end2.i309

if.end.i307.get_ras_block_str.exit318_crit_edge:  ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit318

if.end2.i309:                                     ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %111)
  %cmp4.i308 = icmp eq i32 %111, 14
  br i1 %cmp4.i308, label %if.then5.i312, label %if.end6.i314

if.then5.i312:                                    ; preds = %if.end2.i309
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i310 = getelementptr inbounds %struct.ras_common_if, ptr %info, i32 0, i32 2
  %112 = ptrtoint ptr %sub_block_index.i310 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sub_block_index.i310, align 4
  %arrayidx.i311 = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %113
  br label %return.sink.split.i316

if.end6.i314:                                     ; preds = %if.end2.i309
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i313 = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %111
  br label %return.sink.split.i316

return.sink.split.i316:                           ; preds = %if.end6.i314, %if.then5.i312
  %arrayidx8.sink.i315 = phi ptr [ %arrayidx8.i313, %if.end6.i314 ], [ %arrayidx.i311, %if.then5.i312 ]
  %114 = ptrtoint ptr %arrayidx8.sink.i315 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx8.sink.i315, align 4
  br label %get_ras_block_str.exit318

get_ras_block_str.exit318:                        ; preds = %return.sink.split.i316, %if.end.i307.get_ras_block_str.exit318_crit_edge, %do.end144.get_ras_block_str.exit318_crit_edge
  %retval.0.i317 = phi ptr [ @.str.24, %do.end144.get_ras_block_str.exit318_crit_edge ], [ @.str.25, %if.end.i307.get_ras_block_str.exit318_crit_edge ], [ %115, %return.sink.split.i316 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %107, ptr noundef nonnull @.str.39, i32 noundef %109, ptr noundef %retval.0.i317) #20
  br label %if.end151

if.end151:                                        ; preds = %get_ras_block_str.exit318, %get_ras_block_str.exit, %sw.epilog.if.end151_crit_edge
  %116 = ptrtoint ptr %err_data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %err_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool153.not = icmp eq i32 %117, 0
  br i1 %tobool153.not, label %if.end151.if.end195_crit_edge, label %if.then154

if.end151.if.end195_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end195

if.then154:                                       ; preds = %if.end151
  %smuio155 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 103
  %118 = ptrtoint ptr %smuio155 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %smuio155, align 4
  %tobool157.not = icmp eq ptr %119, null
  br i1 %tobool157.not, label %if.then154.do.end188_crit_edge, label %land.lhs.true158

if.then154.do.end188_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end188

land.lhs.true158:                                 ; preds = %if.then154
  %get_socket_id161 = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %get_socket_id161 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %get_socket_id161, align 4
  %tobool162.not = icmp eq ptr %121, null
  br i1 %tobool162.not, label %land.lhs.true158.do.end188_crit_edge, label %land.lhs.true163

land.lhs.true158.do.end188_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end188

land.lhs.true163:                                 ; preds = %land.lhs.true158
  %get_die_id166 = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %119, i32 0, i32 4
  %122 = ptrtoint ptr %get_die_id166 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %get_die_id166, align 4
  %tobool167.not = icmp eq ptr %123, null
  br i1 %tobool167.not, label %land.lhs.true163.do.end188_crit_edge, label %do.end171

land.lhs.true163.do.end188_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end188

do.end171:                                        ; preds = %land.lhs.true163
  %124 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %adev, align 8
  %call176 = call i32 %121(ptr noundef %adev) #16
  %126 = ptrtoint ptr %smuio155 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %smuio155, align 4
  %get_die_id179 = getelementptr inbounds %struct.amdgpu_smuio_funcs, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %get_die_id179 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %get_die_id179, align 4
  %call180 = call i32 %129(ptr noundef %adev) #16
  %130 = ptrtoint ptr %err_data105 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %err_data105, align 4
  %tobool.not.i319 = icmp eq ptr %info, null
  br i1 %tobool.not.i319, label %do.end171.get_ras_block_str.exit332_crit_edge, label %if.end.i321

do.end171.get_ras_block_str.exit332_crit_edge:    ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit332

if.end.i321:                                      ; preds = %do.end171
  %132 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %133)
  %cmp.i320 = icmp ugt i32 %133, 14
  br i1 %cmp.i320, label %if.end.i321.get_ras_block_str.exit332_crit_edge, label %if.end2.i323

if.end.i321.get_ras_block_str.exit332_crit_edge:  ; preds = %if.end.i321
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit332

if.end2.i323:                                     ; preds = %if.end.i321
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %133)
  %cmp4.i322 = icmp eq i32 %133, 14
  br i1 %cmp4.i322, label %if.then5.i326, label %if.end6.i328

if.then5.i326:                                    ; preds = %if.end2.i323
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i324 = getelementptr inbounds %struct.ras_common_if, ptr %info, i32 0, i32 2
  %134 = ptrtoint ptr %sub_block_index.i324 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sub_block_index.i324, align 4
  %arrayidx.i325 = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %135
  br label %return.sink.split.i330

if.end6.i328:                                     ; preds = %if.end2.i323
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i327 = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %133
  br label %return.sink.split.i330

return.sink.split.i330:                           ; preds = %if.end6.i328, %if.then5.i326
  %arrayidx8.sink.i329 = phi ptr [ %arrayidx8.i327, %if.end6.i328 ], [ %arrayidx.i325, %if.then5.i326 ]
  %136 = ptrtoint ptr %arrayidx8.sink.i329 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx8.sink.i329, align 4
  br label %get_ras_block_str.exit332

get_ras_block_str.exit332:                        ; preds = %return.sink.split.i330, %if.end.i321.get_ras_block_str.exit332_crit_edge, %do.end171.get_ras_block_str.exit332_crit_edge
  %retval.0.i331 = phi ptr [ @.str.24, %do.end171.get_ras_block_str.exit332_crit_edge ], [ @.str.25, %if.end.i321.get_ras_block_str.exit332_crit_edge ], [ %137, %return.sink.split.i330 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %125, ptr noundef nonnull @.str.42, i32 noundef %call176, i32 noundef %call180, i32 noundef %131, ptr noundef %retval.0.i331) #20
  br label %if.end195

do.end188:                                        ; preds = %land.lhs.true163.do.end188_crit_edge, %land.lhs.true158.do.end188_crit_edge, %if.then154.do.end188_crit_edge
  %138 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %adev, align 8
  %140 = ptrtoint ptr %err_data105 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %err_data105, align 4
  %tobool.not.i333 = icmp eq ptr %info, null
  br i1 %tobool.not.i333, label %do.end188.get_ras_block_str.exit346_crit_edge, label %if.end.i335

do.end188.get_ras_block_str.exit346_crit_edge:    ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit346

if.end.i335:                                      ; preds = %do.end188
  %142 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %143)
  %cmp.i334 = icmp ugt i32 %143, 14
  br i1 %cmp.i334, label %if.end.i335.get_ras_block_str.exit346_crit_edge, label %if.end2.i337

if.end.i335.get_ras_block_str.exit346_crit_edge:  ; preds = %if.end.i335
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit346

if.end2.i337:                                     ; preds = %if.end.i335
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %143)
  %cmp4.i336 = icmp eq i32 %143, 14
  br i1 %cmp4.i336, label %if.then5.i340, label %if.end6.i342

if.then5.i340:                                    ; preds = %if.end2.i337
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i338 = getelementptr inbounds %struct.ras_common_if, ptr %info, i32 0, i32 2
  %144 = ptrtoint ptr %sub_block_index.i338 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sub_block_index.i338, align 4
  %arrayidx.i339 = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %145
  br label %return.sink.split.i344

if.end6.i342:                                     ; preds = %if.end2.i337
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i341 = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %143
  br label %return.sink.split.i344

return.sink.split.i344:                           ; preds = %if.end6.i342, %if.then5.i340
  %arrayidx8.sink.i343 = phi ptr [ %arrayidx8.i341, %if.end6.i342 ], [ %arrayidx.i339, %if.then5.i340 ]
  %146 = ptrtoint ptr %arrayidx8.sink.i343 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx8.sink.i343, align 4
  br label %get_ras_block_str.exit346

get_ras_block_str.exit346:                        ; preds = %return.sink.split.i344, %if.end.i335.get_ras_block_str.exit346_crit_edge, %do.end188.get_ras_block_str.exit346_crit_edge
  %retval.0.i345 = phi ptr [ @.str.24, %do.end188.get_ras_block_str.exit346_crit_edge ], [ @.str.25, %if.end.i335.get_ras_block_str.exit346_crit_edge ], [ %147, %return.sink.split.i344 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %139, ptr noundef nonnull @.str.45, i32 noundef %141, ptr noundef %retval.0.i345) #20
  br label %if.end195

if.end195:                                        ; preds = %get_ras_block_str.exit346, %get_ras_block_str.exit332, %if.end151.if.end195_crit_edge
  %connected_to_cpu.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %148 = ptrtoint ptr %connected_to_cpu.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %connected_to_cpu.i, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool197.not = icmp eq i8 %149, 0
  br i1 %tobool197.not, label %if.then198, label %if.end195.cleanup_crit_edge

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #18
  %150 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %info, align 4
  %call201 = call i32 @amdgpu_ras_reset_error_status(ptr noundef %adev, i32 noundef %151)
  br label %cleanup

cleanup:                                          ; preds = %if.then198, %if.end195.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then198 ], [ 0, %if.end195.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %err_data) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_persistent_edc_harvesting_supported(ptr nocapture noundef readonly %adev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %0 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %connected_to_cpu, align 8, !range !353
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_reset_error_status(ptr noundef %adev, i32 noundef %block) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %block)
  %cmp.i = icmp ugt i32 %block, 14
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i:                                         ; preds = %entry
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i.return_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

amdgpu_ras_is_supported.exit:                     ; preds = %if.end.i
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  %4 = shl nuw nsw i32 1, %block
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.return_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.return_crit_edge:    ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %6 = zext i32 %block to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %block, label %if.end.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb22
    i32 1, label %sw.bb48
    i32 6, label %sw.bb56
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb:                                            ; preds = %if.end
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 59
  %7 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ras_funcs, align 8
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %sw.bb.return_crit_edge, label %land.lhs.true

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true:                                    ; preds = %sw.bb
  %reset_ras_error_count = getelementptr inbounds %struct.amdgpu_gfx_ras_funcs, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %reset_ras_error_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_ras_error_count, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %10(ptr noundef %adev) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %land.lhs.true.if.end9_crit_edge
  %11 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load ptr, ptr %ras_funcs, align 8
  %tobool12.not = icmp eq ptr %.pr, null
  br i1 %tobool12.not, label %if.end9.return_crit_edge, label %land.lhs.true13

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true13:                                  ; preds = %if.end9
  %reset_ras_error_status = getelementptr inbounds %struct.amdgpu_gfx_ras_funcs, ptr %.pr, i32 0, i32 6
  %12 = ptrtoint ptr %reset_ras_error_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_ras_error_status, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %land.lhs.true13.return_crit_edge, label %land.lhs.true13.return.sink.split_crit_edge

land.lhs.true13.return.sink.split_crit_edge:      ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

land.lhs.true13.return_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb22:                                          ; preds = %if.end
  %ras_funcs23 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 104, i32 2
  %14 = ptrtoint ptr %ras_funcs23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ras_funcs23, align 8
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %sw.bb22.return_crit_edge, label %land.lhs.true25

sw.bb22.return_crit_edge:                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true25:                                  ; preds = %sw.bb22
  %reset_ras_error_count28 = getelementptr inbounds %struct.amdgpu_mmhub_ras_funcs, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %reset_ras_error_count28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_ras_error_count28, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %land.lhs.true25.if.end34_crit_edge, label %if.then30

land.lhs.true25.if.end34_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then30:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %17(ptr noundef %adev) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true25.if.end34_crit_edge
  %18 = ptrtoint ptr %ras_funcs23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr106 = load ptr, ptr %ras_funcs23, align 8
  %tobool37.not = icmp eq ptr %.pr106, null
  br i1 %tobool37.not, label %if.end34.return_crit_edge, label %land.lhs.true38

if.end34.return_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true38:                                  ; preds = %if.end34
  %reset_ras_error_status41 = getelementptr inbounds %struct.amdgpu_mmhub_ras_funcs, ptr %.pr106, i32 0, i32 5
  %19 = ptrtoint ptr %reset_ras_error_status41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset_ras_error_status41, align 4
  %tobool42.not = icmp eq ptr %20, null
  br i1 %tobool42.not, label %land.lhs.true38.return_crit_edge, label %land.lhs.true38.return.sink.split_crit_edge

land.lhs.true38.return.sink.split_crit_edge:      ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

land.lhs.true38.return_crit_edge:                 ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb48:                                          ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 12
  %21 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs, align 4
  %reset_ras_error_count49 = getelementptr inbounds %struct.amdgpu_sdma_ras_funcs, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %reset_ras_error_count49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset_ras_error_count49, align 4
  %tobool50.not = icmp eq ptr %24, null
  br i1 %tobool50.not, label %sw.bb48.return_crit_edge, label %sw.bb48.return.sink.split_crit_edge

sw.bb48.return.sink.split_crit_edge:              ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

sw.bb48.return_crit_edge:                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb56:                                          ; preds = %if.end
  %ras_funcs57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 102, i32 2
  %25 = ptrtoint ptr %ras_funcs57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ras_funcs57, align 8
  %tobool58.not = icmp eq ptr %26, null
  br i1 %tobool58.not, label %sw.bb56.return_crit_edge, label %land.lhs.true59

sw.bb56.return_crit_edge:                         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true59:                                  ; preds = %sw.bb56
  %reset_ras_error_count62 = getelementptr inbounds %struct.amdgpu_hdp_ras_funcs, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %reset_ras_error_count62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset_ras_error_count62, align 4
  %tobool63.not = icmp eq ptr %28, null
  br i1 %tobool63.not, label %land.lhs.true59.return_crit_edge, label %land.lhs.true59.return.sink.split_crit_edge

land.lhs.true59.return.sink.split_crit_edge:      ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

land.lhs.true59.return_crit_edge:                 ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return.sink.split:                                ; preds = %land.lhs.true59.return.sink.split_crit_edge, %sw.bb48.return.sink.split_crit_edge, %land.lhs.true38.return.sink.split_crit_edge, %land.lhs.true13.return.sink.split_crit_edge
  %.sink = phi ptr [ %13, %land.lhs.true13.return.sink.split_crit_edge ], [ %20, %land.lhs.true38.return.sink.split_crit_edge ], [ %24, %sw.bb48.return.sink.split_crit_edge ], [ %28, %land.lhs.true59.return.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %adev) #16
  br label %return

return:                                           ; preds = %return.sink.split, %land.lhs.true59.return_crit_edge, %sw.bb56.return_crit_edge, %sw.bb48.return_crit_edge, %land.lhs.true38.return_crit_edge, %if.end34.return_crit_edge, %sw.bb22.return_crit_edge, %land.lhs.true13.return_crit_edge, %if.end9.return_crit_edge, %sw.bb.return_crit_edge, %if.end.return_crit_edge, %amdgpu_ras_is_supported.exit.return_crit_edge, %if.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %amdgpu_ras_is_supported.exit.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %sw.bb56.return_crit_edge ], [ 0, %land.lhs.true59.return_crit_edge ], [ 0, %sw.bb48.return_crit_edge ], [ 0, %if.end34.return_crit_edge ], [ 0, %land.lhs.true38.return_crit_edge ], [ 0, %if.end9.return_crit_edge ], [ 0, %land.lhs.true13.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb22.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_error_inject(ptr noundef %adev, ptr noundef %info) local_unnamed_addr #4 align 64 {
entry:
  %block_info = alloca %struct.ta_ras_trigger_error_input, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %info)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_info) #16
  %0 = getelementptr inbounds i8, ptr %block_info, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %4 = icmp ult i32 %3, 15
  br i1 %4, label %entry.amdgpu_ras_block_to_ta.exit_crit_edge, label %land.end.i

entry.amdgpu_ras_block_to_ta.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_block_to_ta.exit

land.end.i:                                       ; preds = %entry
  %.b50.i = load i1, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  br i1 %.b50.i, label %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge, label %if.then.i, !prof !351

land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_block_to_ta.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @amdgpu_ras_block_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 573, i32 noundef 9, ptr noundef nonnull @.str.77, i32 noundef %3) #16
  br label %amdgpu_ras_block_to_ta.exit

amdgpu_ras_block_to_ta.exit:                      ; preds = %if.then.i, %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge, %entry.amdgpu_ras_block_to_ta.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %land.end.i.amdgpu_ras_block_to_ta.exit_crit_edge ], [ %3, %entry.amdgpu_ras_block_to_ta.exit_crit_edge ]
  %5 = ptrtoint ptr %block_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %block_info, align 8
  %inject_error_type = getelementptr inbounds %struct.ta_ras_trigger_error_input, ptr %block_info, i32 0, i32 1
  %type = getelementptr inbounds %struct.ras_common_if, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %8 = icmp ult i32 %7, 9
  br i1 %8, label %switch.hole_check, label %amdgpu_ras_block_to_ta.exit.land.end.i69_crit_edge

amdgpu_ras_block_to_ta.exit.land.end.i69_crit_edge: ; preds = %amdgpu_ras_block_to_ta.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i69

land.end.i69:                                     ; preds = %switch.hole_check.land.end.i69_crit_edge, %amdgpu_ras_block_to_ta.exit.land.end.i69_crit_edge
  %.b40.i = load i1, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  br i1 %.b40.i, label %land.end.i69.amdgpu_ras_error_to_ta.exit_crit_edge, label %if.then.i70, !prof !351

land.end.i69.amdgpu_ras_error_to_ta.exit_crit_edge: ; preds = %land.end.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_error_to_ta.exit

if.then.i70:                                      ; preds = %land.end.i69
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @amdgpu_ras_error_to_ta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 592, i32 noundef 9, ptr noundef nonnull @.str.78, i32 noundef %7) #16
  br label %amdgpu_ras_error_to_ta.exit

switch.hole_check:                                ; preds = %amdgpu_ras_block_to_ta.exit
  %switch.maskindex = trunc i32 %7 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i69_crit_edge, label %switch.lookup

switch.hole_check.land.end.i69_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i69

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.amdgpu_ras_error_inject, i32 0, i32 %7
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %amdgpu_ras_error_to_ta.exit

amdgpu_ras_error_to_ta.exit:                      ; preds = %switch.lookup, %if.then.i70, %land.end.i69.amdgpu_ras_error_to_ta.exit_crit_edge
  %retval.0.i71 = phi i32 [ 0, %if.then.i70 ], [ 0, %land.end.i69.amdgpu_ras_error_to_ta.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %11 = ptrtoint ptr %inject_error_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i71, ptr %inject_error_type, align 4
  %sub_block_index = getelementptr inbounds %struct.ta_ras_trigger_error_input, ptr %block_info, i32 0, i32 2
  %sub_block_index6 = getelementptr inbounds %struct.ras_common_if, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %sub_block_index6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sub_block_index6, align 8
  %14 = ptrtoint ptr %sub_block_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sub_block_index, align 8
  %address = getelementptr inbounds %struct.ta_ras_trigger_error_input, ptr %block_info, i32 0, i32 3
  %address7 = getelementptr inbounds %struct.ras_inject_if, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %address7 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %address7, align 8
  %17 = ptrtoint ptr %address to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %address, align 8
  %value = getelementptr inbounds %struct.ta_ras_trigger_error_input, ptr %block_info, i32 0, i32 4
  %value8 = getelementptr inbounds %struct.ras_inject_if, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %value8 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %value8, align 8
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %value, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %amdgpu_ras_error_to_ta.exit.cleanup_crit_edge, label %if.end

amdgpu_ras_error_to_ta.exit.cleanup_crit_edge:    ; preds = %amdgpu_ras_error_to_ta.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_error_to_ta.exit
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 4
  %21 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp ugt i32 %22, 1
  br i1 %cmp, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i64 @amdgpu_xgmi_get_relative_phy_addr(ptr noundef %adev, i64 noundef %16) #16
  %23 = ptrtoint ptr %address to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call11, ptr %address, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %info, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %25, label %do.end [
    i32 2, label %sw.bb
    i32 0, label %if.end13.sw.bb26_crit_edge
    i32 1, label %if.end13.sw.bb26_crit_edge92
    i32 3, label %if.end13.sw.bb26_crit_edge93
    i32 5, label %if.end13.sw.bb26_crit_edge94
    i32 14, label %if.end13.sw.bb26_crit_edge95
    i32 7, label %sw.bb28
  ]

if.end13.sw.bb26_crit_edge95:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb26

if.end13.sw.bb26_crit_edge94:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb26

if.end13.sw.bb26_crit_edge93:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb26

if.end13.sw.bb26_crit_edge92:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb26

if.end13.sw.bb26_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb26

sw.bb:                                            ; preds = %if.end13
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 59
  %27 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ras_funcs, align 8
  %tobool16.not = icmp eq ptr %28, null
  br i1 %tobool16.not, label %sw.bb.do.end36_crit_edge, label %land.lhs.true

sw.bb.do.end36_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

land.lhs.true:                                    ; preds = %sw.bb
  %ras_error_inject = getelementptr inbounds %struct.amdgpu_gfx_ras_funcs, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ras_error_inject to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ras_error_inject, align 4
  %tobool19.not = icmp eq ptr %30, null
  br i1 %tobool19.not, label %land.lhs.true.do.end36_crit_edge, label %if.then20

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call24 = tail call i32 %30(ptr noundef %adev, ptr noundef %info) #16
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end13.sw.bb26_crit_edge, %if.end13.sw.bb26_crit_edge92, %if.end13.sw.bb26_crit_edge93, %if.end13.sw.bb26_crit_edge94, %if.end13.sw.bb26_crit_edge95
  %psp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call27 = call i32 @psp_ras_trigger_error(ptr noundef %psp, ptr noundef nonnull %block_info) #16
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end13
  %call.i = tail call i32 @amdgpu_dpm_set_df_cstate(ptr noundef %adev, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb28.if.end.i_crit_edge, label %do.end.i

sw.bb28.if.end.i_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.79) #20
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb28.if.end.i_crit_edge
  %call1.i = tail call i32 @amdgpu_dpm_allow_xgmi_power_down(ptr noundef %adev, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %do.end6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.82) #20
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end6.i, %if.end.i.if.end8.i_crit_edge
  %psp.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113
  %call9.i = call i32 @psp_ras_trigger_error(ptr noundef %psp.i, ptr noundef nonnull %block_info) #16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #16
  %35 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i, label %if.end12.i, label %if.end8.i.sw.epilog_crit_edge

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = call i32 @amdgpu_dpm_allow_xgmi_power_down(ptr noundef %adev, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end20.i_crit_edge, label %do.end18.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.85) #20
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end18.i, %if.end12.i.if.end20.i_crit_edge
  %call21.i = call i32 @amdgpu_dpm_set_df_cstate(ptr noundef %adev, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.sw.epilog_crit_edge, label %do.end26.i

if.end20.i.sw.epilog_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.88) #20
  br label %sw.epilog

do.end:                                           ; preds = %if.end13
  %40 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adev, align 8
  %tobool.not.i72 = icmp eq ptr %info, null
  br i1 %tobool.not.i72, label %do.end.get_ras_block_str.exit_crit_edge, label %if.end.i73

do.end.get_ras_block_str.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end.i73:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %25)
  %cmp.i = icmp ugt i32 %25, 14
  br i1 %cmp.i, label %if.end.i73.get_ras_block_str.exit_crit_edge, label %if.end2.i

if.end.i73.get_ras_block_str.exit_crit_edge:      ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end2.i:                                        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %25)
  %cmp4.i = icmp eq i32 %25, 14
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %sub_block_index6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sub_block_index6, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %43
  br label %return.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %25
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end6.i, %if.then5.i
  %arrayidx8.sink.i = phi ptr [ %arrayidx8.i, %if.end6.i ], [ %arrayidx.i, %if.then5.i ]
  %44 = ptrtoint ptr %arrayidx8.sink.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx8.sink.i, align 4
  br label %get_ras_block_str.exit

get_ras_block_str.exit:                           ; preds = %return.sink.split.i, %if.end.i73.get_ras_block_str.exit_crit_edge, %do.end.get_ras_block_str.exit_crit_edge
  %retval.0.i74 = phi ptr [ @.str.24, %do.end.get_ras_block_str.exit_crit_edge ], [ @.str.25, %if.end.i73.get_ras_block_str.exit_crit_edge ], [ %45, %return.sink.split.i ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.47, ptr noundef %retval.0.i74) #20
  br label %do.end36

sw.epilog:                                        ; preds = %do.end26.i, %if.end20.i.sw.epilog_crit_edge, %if.end8.i.sw.epilog_crit_edge, %sw.bb26, %if.then20
  %ret.0 = phi i32 [ %call27, %sw.bb26 ], [ %call24, %if.then20 ], [ %call9.i, %if.end8.i.sw.epilog_crit_edge ], [ %call9.i, %if.end20.i.sw.epilog_crit_edge ], [ %call9.i, %do.end26.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool32.not = icmp eq i32 %ret.0, 0
  br i1 %tobool32.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.end36_crit_edge

sw.epilog.do.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end36:                                         ; preds = %sw.epilog.do.end36_crit_edge, %get_ras_block_str.exit, %land.lhs.true.do.end36_crit_edge, %sw.bb.do.end36_crit_edge
  %ret.091 = phi i32 [ %ret.0, %sw.epilog.do.end36_crit_edge ], [ -22, %get_ras_block_str.exit ], [ -22, %land.lhs.true.do.end36_crit_edge ], [ -22, %sw.bb.do.end36_crit_edge ]
  %46 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adev, align 8
  %tobool.not.i75 = icmp eq ptr %info, null
  br i1 %tobool.not.i75, label %do.end36.get_ras_block_str.exit88_crit_edge, label %if.end.i77

do.end36.get_ras_block_str.exit88_crit_edge:      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit88

if.end.i77:                                       ; preds = %do.end36
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %49)
  %cmp.i76 = icmp ugt i32 %49, 14
  br i1 %cmp.i76, label %if.end.i77.get_ras_block_str.exit88_crit_edge, label %if.end2.i79

if.end.i77.get_ras_block_str.exit88_crit_edge:    ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit88

if.end2.i79:                                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %49)
  %cmp4.i78 = icmp eq i32 %49, 14
  br i1 %cmp4.i78, label %if.then5.i82, label %if.end6.i84

if.then5.i82:                                     ; preds = %if.end2.i79
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %sub_block_index6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sub_block_index6, align 4
  %arrayidx.i81 = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %51
  br label %return.sink.split.i86

if.end6.i84:                                      ; preds = %if.end2.i79
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i83 = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %49
  br label %return.sink.split.i86

return.sink.split.i86:                            ; preds = %if.end6.i84, %if.then5.i82
  %arrayidx8.sink.i85 = phi ptr [ %arrayidx8.i83, %if.end6.i84 ], [ %arrayidx.i81, %if.then5.i82 ]
  %52 = ptrtoint ptr %arrayidx8.sink.i85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx8.sink.i85, align 4
  br label %get_ras_block_str.exit88

get_ras_block_str.exit88:                         ; preds = %return.sink.split.i86, %if.end.i77.get_ras_block_str.exit88_crit_edge, %do.end36.get_ras_block_str.exit88_crit_edge
  %retval.0.i87 = phi ptr [ @.str.24, %do.end36.get_ras_block_str.exit88_crit_edge ], [ @.str.25, %if.end.i77.get_ras_block_str.exit88_crit_edge ], [ %53, %return.sink.split.i86 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.50, ptr noundef %retval.0.i87, i32 noundef %ret.091) #20
  br label %cleanup

cleanup:                                          ; preds = %get_ras_block_str.exit88, %sw.epilog.cleanup_crit_edge, %amdgpu_ras_error_to_ta.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %amdgpu_ras_error_to_ta.exit.cleanup_crit_edge ], [ %ret.091, %get_ras_block_str.exit88 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_info) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_xgmi_get_relative_phy_addr(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psp_ras_trigger_error(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_query_error_count(ptr noundef %adev, ptr noundef writeonly %ce_count, ptr noundef writeonly %ue_count) local_unnamed_addr #4 align 64 {
entry:
  %info = alloca %struct.ras_query_if, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup29_crit_edge, label %if.end

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup29

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %ce_count, null
  %tobool3.not = icmp eq ptr %ue_count, null
  %or.cond46 = and i1 %tobool2.not, %tobool3.not
  br i1 %or.cond46, label %if.end.cleanup29_crit_edge, label %if.end5

if.end.cleanup29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup29

if.end5:                                          ; preds = %if.end
  %head = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn52 = load ptr, ptr %head, align 4
  %cmp.not53 = icmp eq ptr %.pn52, %head
  br i1 %cmp.not53, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %ue_count9 = getelementptr inbounds %struct.ras_query_if, ptr %info, i32 0, i32 1
  %ce_count10 = getelementptr inbounds %struct.ras_query_if, ptr %info, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn56 = phi ptr [ %.pn52, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %ce.055 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  %ue.054 = phi i32 [ 0, %for.body.lr.ph ], [ %add16, %cleanup.for.body_crit_edge ]
  %obj.0 = getelementptr i8, ptr %.pn56, i32 -48
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %info) #16
  %5 = call ptr @memset(ptr %info, i32 255, i32 52)
  %6 = call ptr @memcpy(ptr %info, ptr %obj.0, i32 44)
  %7 = ptrtoint ptr %ue_count9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ue_count9, align 4
  %8 = ptrtoint ptr %ce_count10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ce_count10, align 4
  %call = call i32 @amdgpu_ras_query_error_status(ptr noundef %adev, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info) #16
  br label %cleanup29

cleanup:                                          ; preds = %for.body
  %9 = ptrtoint ptr %ce_count10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ce_count10, align 4
  %add = add i32 %10, %ce.055
  %11 = ptrtoint ptr %ue_count9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ue_count9, align 4
  %add16 = add i32 %12, %ue.054
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info) #16
  %13 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn56, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end5.for.end_crit_edge
  %ue.0.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %add16, %cleanup.for.end_crit_edge ]
  %ce.0.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %add, %cleanup.for.end_crit_edge ]
  br i1 %tobool2.not, label %for.end.if.end25_crit_edge, label %if.then24

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ce.0.lcssa, ptr %ce_count, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.end.if.end25_crit_edge
  br i1 %tobool3.not, label %if.end25.cleanup29_crit_edge, label %if.then27

if.end25.cleanup29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %ue_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ue.0.lcssa, ptr %ue_count, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.then27, %if.end25.cleanup29_crit_edge, %cleanup.thread, %if.end.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.2 = phi i32 [ -95, %entry.cleanup29_crit_edge ], [ 0, %if.end.cleanup29_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup29_crit_edge ], [ %call, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_sysfs_create(ptr nocapture noundef readonly %adev, ptr noundef %head) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %head)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attr_inuse = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %attr_inuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %use = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %use, align 4
  %fs_data = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 6
  %sysfs_name3 = getelementptr inbounds %struct.ras_fs_if, ptr %head, i32 0, i32 1
  %4 = ptrtoint ptr %sysfs_name3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysfs_name3, align 4
  %6 = call ptr @memcpy(ptr %fs_data, ptr %5, i32 32)
  %sysfs_attr = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %sysfs_attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fs_data, ptr %sysfs_attr, align 4
  %.compoundliteral.sroa.2.0.sysfs_attr.sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %.compoundliteral.sroa.2.0.sysfs_attr.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 292, ptr %.compoundliteral.sroa.2.0.sysfs_attr.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.sysfs_attr.sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %.compoundliteral.sroa.3.0.sysfs_attr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %.compoundliteral.sroa.3.0.sysfs_attr.sroa_idx, align 2
  %.compoundliteral.sroa.520.0.sysfs_attr.sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 4, i32 0, i32 3
  %.compoundliteral.sroa.6.0.sysfs_attr.sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 4, i32 0, i32 4
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0.sysfs_attr.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.6.0.sysfs_attr.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.sysfs_attr.sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %.compoundliteral.sroa.7.0.sysfs_attr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @amdgpu_ras_sysfs_read, ptr %.compoundliteral.sroa.7.0.sysfs_attr.sroa_idx, align 4
  %.compoundliteral.sroa.8.0.sysfs_attr.sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %.compoundliteral.sroa.8.0.sysfs_attr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %.compoundliteral.sroa.8.0.sysfs_attr.sroa_idx, align 4
  %13 = ptrtoint ptr %.compoundliteral.sroa.520.0.sysfs_attr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @amdgpu_ras_sysfs_create.__key, ptr %.compoundliteral.sroa.520.0.sysfs_attr.sroa_idx, align 4
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  %call15 = tail call i32 @sysfs_add_file_to_group(ptr noundef %15, ptr noundef %sysfs_attr, ptr noundef nonnull @.str.96) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.body
  %16 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %use, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true2.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %node.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %use, align 4
  br label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %list_del.exit.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %27 = phi i32 [ %dec.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge ], [ %.pr.i, %list_del.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.i = icmp slt i32 %27, 0
  br i1 %cmp4.i, label %if.end.i.i, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true2.i
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %29)
  %cmp.i.i = icmp ugt i32 %29, 14
  br i1 %cmp.i.i, label %if.end.i.i.get_ras_block_str.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.get_ras_block_str.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %29)
  %cmp4.i.i = icmp eq i32 %29, 14
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i.i = getelementptr inbounds %struct.ras_common_if, ptr %call, i32 0, i32 2
  %30 = ptrtoint ptr %sub_block_index.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sub_block_index.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %31
  br label %return.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %29
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.end6.i.i, %if.then5.i.i
  %arrayidx8.sink.i.i = phi ptr [ %arrayidx8.i.i, %if.end6.i.i ], [ %arrayidx.i.i, %if.then5.i.i ]
  %32 = ptrtoint ptr %arrayidx8.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx8.sink.i.i, align 4
  br label %get_ras_block_str.exit.i

get_ras_block_str.exit.i:                         ; preds = %return.sink.split.i.i, %if.end.i.i.get_ras_block_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.25, %if.end.i.i.get_ras_block_str.exit.i_crit_edge ], [ %33, %return.sink.split.i.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i) #16
  br label %cleanup

if.end18:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %attr_inuse to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %attr_inuse, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %get_ras_block_str.exit.i, %land.lhs.true2.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.cleanup_crit_edge ], [ -22, %get_ras_block_str.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ras_sysfs_read(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #4 align 64 {
entry:
  %info = alloca %struct.ras_query_if, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -60
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %info) #16
  %0 = call ptr @memcpy(ptr %info, ptr %add.ptr, i32 44)
  %ue_count = getelementptr inbounds %struct.ras_query_if, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %ue_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ue_count, align 4
  %ce_count = getelementptr inbounds %struct.ras_query_if, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ce_count, align 4
  %adev = getelementptr i8, ptr %attr, i32 -4
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %ras.i = getelementptr inbounds %struct.amdgpu_device, ptr %4, i32 0, i32 113, i32 34, i32 1
  %5 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ras.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then_crit_edge, label %amdgpu_ras_get_error_query_ready.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

amdgpu_ras_get_error_query_ready.exit:            ; preds = %land.lhs.true.i
  %error_query_ready.i = getelementptr inbounds %struct.amdgpu_ras, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %error_query_ready.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %error_query_ready.i, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.i.not = icmp eq i8 %8, 0
  br i1 %tobool5.i.not, label %amdgpu_ras_get_error_query_ready.exit.if.then_crit_edge, label %if.end

amdgpu_ras_get_error_query_ready.exit.if.then_crit_edge: ; preds = %amdgpu_ras_get_error_query_ready.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %amdgpu_ras_get_error_query_ready.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.90) #16
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_get_error_query_ready.exit
  %call4 = call i32 @amdgpu_ras_query_error_status(ptr noundef nonnull %4, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 4
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %12)
  %cmp = icmp eq i32 %12, 25
  br i1 %cmp, label %if.then8, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 4
  %call11 = call i32 @amdgpu_ras_reset_error_status(ptr noundef %10, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then8.if.end17_crit_edge, label %do.end

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #20
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then8.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %15 = ptrtoint ptr %ue_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ue_count, align 4
  %17 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ce_count, align 4
  %call20 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef %16, ptr noundef nonnull @.str.95, i32 noundef %18) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call20, %if.end17 ], [ %call2, %if.then ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_sysfs_remove(ptr nocapture noundef readonly %adev, ptr noundef %head) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %head)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attr_inuse = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %attr_inuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  %sysfs_attr = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 4
  tail call void @sysfs_remove_file_from_group(ptr noundef %3, ptr noundef %sysfs_attr, ptr noundef nonnull @.str.96) #16
  %4 = ptrtoint ptr %attr_inuse to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %attr_inuse, align 4
  %use.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %use.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true2.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %node.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %use.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %use.i, align 4
  br label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %list_del.exit.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %16 = phi i32 [ %dec.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge ], [ %.pr.i, %list_del.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.i = icmp slt i32 %16, 0
  br i1 %cmp4.i, label %if.end.i.i, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true2.i
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cmp.i.i = icmp ugt i32 %18, 14
  br i1 %cmp.i.i, label %if.end.i.i.get_ras_block_str.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.get_ras_block_str.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cmp4.i.i = icmp eq i32 %18, 14
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i.i = getelementptr inbounds %struct.ras_common_if, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %sub_block_index.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sub_block_index.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %20
  br label %return.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %18
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.end6.i.i, %if.then5.i.i
  %arrayidx8.sink.i.i = phi ptr [ %arrayidx8.i.i, %if.end6.i.i ], [ %arrayidx.i.i, %if.then5.i.i ]
  %21 = ptrtoint ptr %arrayidx8.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx8.sink.i.i, align 4
  br label %get_ras_block_str.exit.i

get_ras_block_str.exit.i:                         ; preds = %return.sink.split.i.i, %if.end.i.i.get_ras_block_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.25, %if.end.i.i.get_ras_block_str.exit.i_crit_edge ], [ %22, %return.sink.split.i.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %get_ras_block_str.exit.i, %land.lhs.true2.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true2.i.cleanup_crit_edge ], [ 0, %get_ras_block_str.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ras_debugfs_create_all(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  %fs_info = alloca %struct.ras_fs_if, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %fs_info) #16
  %2 = getelementptr inbounds i8, ptr %fs_info, i32 44
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %primary.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_root.i, align 4
  %call1.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.96, ptr noundef %7) #16
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.98, i16 noundef zeroext 438, ptr noundef %call1.i, ptr noundef %adev, ptr noundef nonnull @amdgpu_ras_debugfs_ctrl_ops) #16
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.99, i16 noundef zeroext 438, ptr noundef %call1.i, ptr noundef %adev, ptr noundef nonnull @amdgpu_ras_debugfs_eeprom_ops) #16
  %bad_page_cnt_threshold.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 15
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.100, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef %bad_page_cnt_threshold.i) #16
  %ras_hw_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 166
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.101, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef %ras_hw_enabled.i) #16
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.102, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef %ras_enabled.i) #16
  %call4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.103, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef %adev, ptr noundef nonnull @amdgpu_ras_debugfs_eeprom_size_ops) #16
  %call5.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.104, i16 noundef zeroext 292, ptr noundef %call1.i, ptr noundef %adev, ptr noundef nonnull @amdgpu_ras_debugfs_eeprom_table_ops) #16
  %de_ras_eeprom_table.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %de_ras_eeprom_table.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i, ptr %de_ras_eeprom_table.i, align 4
  %eeprom_control.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 13
  tail call void @amdgpu_ras_debugfs_set_ret_size(ptr noundef %eeprom_control.i) #16
  %reboot.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 12
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.105, i16 noundef zeroext 438, ptr noundef %call1.i, ptr noundef %reboot.i) #16
  %disable_ras_err_cnt_harvest.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 16
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.106, i16 noundef zeroext 420, ptr noundef %call1.i, ptr noundef %disable_ras_err_cnt_harvest.i) #16
  %head = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn53 = load ptr, ptr %head, align 4
  %cmp.not55 = icmp eq ptr %.pn53, %head
  br i1 %cmp.not55, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %debugfs_name = getelementptr inbounds %struct.ras_fs_if, ptr %fs_info, i32 0, i32 2
  %sub_block_index.i43 = getelementptr inbounds %struct.ras_common_if, ptr %fs_info, i32 0, i32 2
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn56 = phi ptr [ %.pn53, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %obj.057 = getelementptr i8, ptr %.pn56, i32 -48
  %10 = ptrtoint ptr %obj.057 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obj.057, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %cmp.i = icmp ugt i32 %11, 14
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %12 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ras, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.for.inc_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

amdgpu_ras_is_supported.exit:                     ; preds = %if.end.i
  %14 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ras_enabled.i, align 8
  %16 = shl nuw nsw i32 1, %11
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not = icmp eq i32 %17, 0
  br i1 %tobool4.not, label %amdgpu_ras_is_supported.exit.for.inc_crit_edge, label %land.lhs.true

amdgpu_ras_is_supported.exit.for.inc_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %amdgpu_ras_is_supported.exit
  %attr_inuse = getelementptr i8, ptr %.pn56, i32 40
  %18 = ptrtoint ptr %attr_inuse to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attr_inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp5 = icmp eq i32 %19, 1
  br i1 %cmp5, label %if.then6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  %tobool.not.i32 = icmp eq ptr %obj.057, null
  br i1 %tobool.not.i32, label %if.then6.get_ras_block_str.exit_crit_edge, label %if.end2.i

if.then6.get_ras_block_str.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit

if.end2.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %cmp4.i = icmp eq i32 %11, 14
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i = getelementptr i8, ptr %.pn56, i32 -40
  %20 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sub_block_index.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %21
  br label %return.sink.split.i

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %11
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end6.i, %if.then5.i
  %arrayidx8.sink.i = phi ptr [ %arrayidx8.i, %if.end6.i ], [ %arrayidx.i, %if.then5.i ]
  %22 = ptrtoint ptr %arrayidx8.sink.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8.sink.i, align 4
  br label %get_ras_block_str.exit

get_ras_block_str.exit:                           ; preds = %return.sink.split.i, %if.then6.get_ras_block_str.exit_crit_edge
  %retval.0.i35 = phi ptr [ @.str.24, %if.then6.get_ras_block_str.exit_crit_edge ], [ %23, %return.sink.split.i ]
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %debugfs_name, ptr noundef nonnull @.str.52, ptr noundef %retval.0.i35)
  %24 = call ptr @memcpy(ptr %fs_info, ptr %obj.057, i32 44)
  %25 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ras, align 8
  %27 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ras_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i39 = icmp eq i32 %28, 0
  %tobool1.not.i = icmp eq ptr %26, null
  %or.cond.i40 = select i1 %tobool.not.i39, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i40, label %get_ras_block_str.exit.for.inc_crit_edge, label %if.end.i41

get_ras_block_str.exit.for.inc_crit_edge:         ; preds = %get_ras_block_str.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i41:                                       ; preds = %get_ras_block_str.exit
  %29 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fs_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %30)
  %cmp.i42 = icmp ugt i32 %30, 14
  br i1 %cmp.i42, label %if.end.i41.for.inc_crit_edge, label %if.end5.i

if.end.i41.for.inc_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end5.i:                                        ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %30)
  %cmp7.i = icmp eq i32 %30, 14
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end5.i
  %31 = ptrtoint ptr %sub_block_index.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sub_block_index.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp9.i = icmp ugt i32 %32, 3
  br i1 %cmp9.i, label %if.then8.i.for.inc_crit_edge, label %if.end11.i

if.then8.i.for.inc_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end11.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  %objs.i = getelementptr inbounds %struct.amdgpu_ras, ptr %26, i32 0, i32 5
  %33 = ptrtoint ptr %objs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %objs.i, align 8
  %add.i = add nuw nsw i32 %32, 15
  %arrayidx.i44 = getelementptr %struct.ras_manager, ptr %34, i32 %add.i
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %objs13.i = getelementptr inbounds %struct.amdgpu_ras, ptr %26, i32 0, i32 5
  %35 = ptrtoint ptr %objs13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %objs13.i, align 8
  %arrayidx15.i = getelementptr %struct.ras_manager, ptr %36, i32 %30
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.end11.i
  %obj.0.i = phi ptr [ %arrayidx.i44, %if.end11.i ], [ %arrayidx15.i, %if.else.i ]
  %use.i45 = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 1
  %37 = ptrtoint ptr %use.i45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %use.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool17.not.i = icmp eq i32 %38, 0
  %tobool.not.i36 = icmp eq ptr %obj.0.i, null
  %or.cond.i = or i1 %tobool2.not.i, %tobool.not.i36
  %or.cond = select i1 %tobool17.not.i, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %if.end16.i.for.inc_crit_edge, label %do.body.i

if.end16.i.for.inc_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.body.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %use.i45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %use.i45, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %use.i45, align 4
  %debugfs_name.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 6, i32 1
  %41 = call ptr @memcpy(ptr %debugfs_name.i, ptr %debugfs_name, i32 32)
  %call8.i = tail call ptr @debugfs_create_file(ptr noundef %debugfs_name.i, i16 noundef zeroext 438, ptr noundef nonnull %call1.i, ptr noundef nonnull %obj.0.i, ptr noundef nonnull @amdgpu_ras_debugfs_ops) #16
  br label %for.inc

for.inc:                                          ; preds = %do.body.i, %if.end16.i.for.inc_crit_edge, %if.then8.i.for.inc_crit_edge, %if.end.i41.for.inc_crit_edge, %get_ras_block_str.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %amdgpu_ras_is_supported.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %42 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn56, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %fs_info) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_interrupt_dispatch(ptr nocapture noundef readonly %adev, ptr noundef %info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %info)
  %ih_data = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %inuse = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %ring = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %wptr = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 %5
  %entry3 = getelementptr inbounds %struct.ras_dispatch_if, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %entry3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry3, align 4
  %element_size = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %element_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %element_size, align 4
  %10 = call ptr @memcpy(ptr %arrayidx, ptr %7, i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !354
  tail call void @arm_heavy_mb() #16
  %aligned_element_size = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7, i32 6
  %11 = ptrtoint ptr %aligned_element_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aligned_element_size, align 4
  %13 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wptr, align 4
  %add = add i32 %14, %12
  %ring_size = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ring_size, align 4
  %rem = urem i32 %add, %16
  store i32 %rem, ptr %wptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %ih_data) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_interrupt_remove_handler(ptr nocapture noundef readonly %adev, ptr noundef %info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %info)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %inuse = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %land.lhs.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %ih_data = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ih_data) #16
  %ring = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  tail call void @kfree(ptr noundef %3) #16
  %4 = call ptr @memset(ptr %ih_data, i32 0, i32 76)
  %use.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %use.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true2.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %node.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %use.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %use.i, align 4
  br label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %list_del.exit.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %16 = phi i32 [ %dec.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge ], [ %.pr.i, %list_del.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.i = icmp slt i32 %16, 0
  br i1 %cmp4.i, label %if.end.i.i, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true2.i
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cmp.i.i = icmp ugt i32 %18, 14
  br i1 %cmp.i.i, label %if.end.i.i.get_ras_block_str.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.get_ras_block_str.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cmp4.i.i = icmp eq i32 %18, 14
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i.i = getelementptr inbounds %struct.ras_common_if, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %sub_block_index.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sub_block_index.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %20
  br label %return.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %18
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.end6.i.i, %if.then5.i.i
  %arrayidx8.sink.i.i = phi ptr [ %arrayidx8.i.i, %if.end6.i.i ], [ %arrayidx.i.i, %if.then5.i.i ]
  %21 = ptrtoint ptr %arrayidx8.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx8.sink.i.i, align 4
  br label %get_ras_block_str.exit.i

get_ras_block_str.exit.i:                         ; preds = %return.sink.split.i.i, %if.end.i.i.get_ras_block_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.25, %if.end.i.i.get_ras_block_str.exit.i_crit_edge ], [ %22, %return.sink.split.i.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %get_ras_block_str.exit.i, %land.lhs.true2.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true2.i.cleanup_crit_edge ], [ 0, %get_ras_block_str.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_interrupt_add_handler(ptr noundef %adev, ptr noundef %info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %info)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %ras.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras.i, align 8
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.then.cleanup_crit_edge, label %if.end.i48

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i48:                                       ; preds = %if.then
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp.i47 = icmp ugt i32 %5, 14
  br i1 %cmp.i47, label %if.end.i48.cleanup_crit_edge, label %if.end3.i

if.end.i48.cleanup_crit_edge:                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp5.i = icmp eq i32 %5, 14
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end3.i
  %sub_block_index.i = getelementptr inbounds %struct.ras_common_if, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sub_block_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp7.i = icmp ugt i32 %7, 3
  br i1 %cmp7.i, label %if.then6.i.cleanup_crit_edge, label %if.end9.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  %objs.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %objs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %objs.i, align 8
  %add.i = add nuw nsw i32 %7, 15
  %arrayidx.i = getelementptr %struct.ras_manager, ptr %9, i32 %add.i
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  %objs11.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %objs11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %objs11.i, align 8
  %arrayidx13.i = getelementptr %struct.ras_manager, ptr %11, i32 %5
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.end9.i
  %obj.0.i = phi ptr [ %arrayidx.i, %if.end9.i ], [ %arrayidx13.i, %if.else.i ]
  %use.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %use.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not.i = icmp eq i32 %13, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17.i:                                       ; preds = %if.end14.i
  %14 = call ptr @memcpy(ptr %obj.0.i, ptr %info, i32 44)
  %adev19.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %adev19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %adev, ptr %adev19.i, align 4
  %node.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 2
  %head20.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %head20.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head20.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %head20.i, ptr noundef %17) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.i.amdgpu_ras_create_obj.exit_crit_edge

if.end17.i.amdgpu_ras_create_obj.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_create_obj.exit

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %head20.i, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %head20.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %node.i, ptr %head20.i, align 4
  br label %amdgpu_ras_create_obj.exit

amdgpu_ras_create_obj.exit:                       ; preds = %if.end.i.i.i, %if.end17.i.amdgpu_ras_create_obj.exit_crit_edge
  %22 = ptrtoint ptr %use.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %use.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %use.i, align 4
  %tobool3.not = icmp eq ptr %obj.0.i, null
  br i1 %tobool3.not, label %amdgpu_ras_create_obj.exit.cleanup_crit_edge, label %amdgpu_ras_create_obj.exit.if.end5_crit_edge

amdgpu_ras_create_obj.exit.if.end5_crit_edge:     ; preds = %amdgpu_ras_create_obj.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

amdgpu_ras_create_obj.exit.cleanup_crit_edge:     ; preds = %amdgpu_ras_create_obj.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %use = getelementptr inbounds %struct.ras_manager, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %use, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %use, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.body, %amdgpu_ras_create_obj.exit.if.end5_crit_edge
  %obj.0 = phi ptr [ %call, %do.body ], [ %obj.0.i, %amdgpu_ras_create_obj.exit.if.end5_crit_edge ]
  %ih_data = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7
  %cb6 = getelementptr inbounds %struct.ras_ih_if, ptr %info, i32 0, i32 1
  %26 = ptrtoint ptr %cb6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb6, align 4
  %28 = call ptr @memset(ptr %ih_data, i32 0, i32 48)
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.326.0..sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 5
  %31 = ptrtoint ptr %.compoundliteral.sroa.326.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 64, ptr %.compoundliteral.sroa.326.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 6
  %32 = call ptr @memset(ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 0, i32 12)
  tail call void @__init_work(ptr noundef %ih_data, i32 noundef 0) #16
  %33 = ptrtoint ptr %ih_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %ih_data, align 4
  %lockdep_map = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.53, ptr noundef nonnull @amdgpu_ras_interrupt_add_handler.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry13 = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 0, i32 1
  %34 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 0, i32 2
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @amdgpu_ras_interrupt_process_handler, ptr %func, align 4
  %37 = ptrtoint ptr %.compoundliteral.sroa.326.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %.compoundliteral.sroa.326.0..sroa_idx, align 4
  %add = add i32 %38, 7
  %and = and i32 %add, -8
  %39 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %mul = shl i32 %and, 6
  %ring_size = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 4
  %40 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %ring_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #21
  %41 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9.i, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %tobool22.not = icmp eq ptr %call9.i, null
  br i1 %tobool22.not, label %land.lhs.true.i, label %if.end24

land.lhs.true.i:                                  ; preds = %if.end5
  %use.i50 = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 1
  %42 = ptrtoint ptr %use.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %use.i50, align 4
  %dec.i = add i32 %43, -1
  store i32 %dec.i, ptr %use.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i51 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i51, label %if.then.i54, label %land.lhs.true.i.land.lhs.true2.i_crit_edge

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true2.i

if.then.i54:                                      ; preds = %land.lhs.true.i
  %node.i52 = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 2
  %call.i.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i52) #16
  br i1 %call.i.i.i53, label %if.end.i.i.i55, label %if.then.i54.list_del.exit.i_crit_edge

if.then.i54.list_del.exit.i_crit_edge:            ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i55:                                   ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %node.i52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node.i52, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i55, %if.then.i54.list_del.exit.i_crit_edge
  %50 = ptrtoint ptr %node.i52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i52, align 4
  %prev.i.i = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %use.i50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i = load i32, ptr %use.i50, align 4
  br label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %list_del.exit.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %53 = phi i32 [ %dec.i, %land.lhs.true.i.land.lhs.true2.i_crit_edge ], [ %.pr.i, %list_del.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp4.i = icmp slt i32 %53, 0
  br i1 %cmp4.i, label %if.end.i.i57, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i57:                                     ; preds = %land.lhs.true2.i
  %54 = ptrtoint ptr %obj.0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %obj.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %55)
  %cmp.i.i56 = icmp ugt i32 %55, 14
  br i1 %cmp.i.i56, label %if.end.i.i57.get_ras_block_str.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i57.get_ras_block_str.exit.i_crit_edge:  ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %55)
  %cmp4.i.i = icmp eq i32 %55, 14
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i.i = getelementptr inbounds %struct.ras_common_if, ptr %obj.0, i32 0, i32 2
  %56 = ptrtoint ptr %sub_block_index.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sub_block_index.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %57
  br label %return.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %55
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.end6.i.i, %if.then5.i.i
  %arrayidx8.sink.i.i = phi ptr [ %arrayidx8.i.i, %if.end6.i.i ], [ %arrayidx.i.i, %if.then5.i.i ]
  %58 = ptrtoint ptr %arrayidx8.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx8.sink.i.i, align 4
  br label %get_ras_block_str.exit.i

get_ras_block_str.exit.i:                         ; preds = %return.sink.split.i.i, %if.end.i.i57.get_ras_block_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.25, %if.end.i.i57.get_ras_block_str.exit.i_crit_edge ], [ %59, %return.sink.split.i.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i) #16
  br label %cleanup

if.end24:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %inuse = getelementptr inbounds %struct.ras_manager, ptr %obj.0, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %inuse, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %get_ras_block_str.exit.i, %land.lhs.true2.i.cleanup_crit_edge, %amdgpu_ras_create_obj.exit.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.end.i48.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %amdgpu_ras_create_obj.exit.cleanup_crit_edge ], [ -12, %land.lhs.true2.i.cleanup_crit_edge ], [ -12, %get_ras_block_str.exit.i ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.i48.cleanup_crit_edge ], [ -22, %if.then6.i.cleanup_crit_edge ], [ -22, %if.end14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_ras_interrupt_process_handler(ptr nocapture noundef %work) #4 align 64 {
entry:
  %entry1.i = alloca %struct.amdgpu_iv_entry, align 8
  %err_data.i = alloca %struct.ras_err_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -156
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %entry1.i) #16
  %0 = call ptr @memset(ptr %entry1.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %err_data.i) #16
  %1 = call ptr @memset(ptr %err_data.i, i32 0, i32 16)
  %rptr.i = getelementptr i8, ptr %work, i32 68
  %wptr.i = getelementptr i8, ptr %work, i32 72
  %2 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rptr.i, align 4
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not41.i = icmp eq i32 %3, %5
  br i1 %cmp.not41.i, label %entry.amdgpu_ras_interrupt_handler.exit_crit_edge, label %while.body.lr.ph.i

entry.amdgpu_ras_interrupt_handler.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_interrupt_handler.exit

while.body.lr.ph.i:                               ; preds = %entry
  %ring.i = getelementptr i8, ptr %work, i32 52
  %element_size.i = getelementptr i8, ptr %work, i32 60
  %aligned_element_size.i = getelementptr i8, ptr %work, i32 64
  %ring_size.i = getelementptr i8, ptr %work, i32 56
  %cb.i = getelementptr i8, ptr %work, i32 48
  %adev.i = getelementptr i8, ptr %work, i32 -100
  %err_data16.i = getelementptr i8, ptr %work, i32 76
  %ce_count.i = getelementptr inbounds %struct.ras_err_data, ptr %err_data.i, i32 0, i32 1
  %ce_count20.i = getelementptr i8, ptr %work, i32 80
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !355
  %6 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring.i, align 4
  %8 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rptr.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 %9
  %10 = ptrtoint ptr %element_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %element_size.i, align 4
  %12 = call ptr @memcpy(ptr %entry1.i, ptr %arrayidx.i, i32 %11)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !356
  call void @arm_heavy_mb() #16
  %13 = ptrtoint ptr %aligned_element_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aligned_element_size.i, align 4
  %15 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rptr.i, align 4
  %add.i = add i32 %16, %14
  %17 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ring_size.i, align 4
  %rem.i = urem i32 %add.i, %18
  store i32 %rem.i, ptr %rptr.i, align 4
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cb.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %while.body.i.if.end23.i_crit_edge, label %if.then.i

while.body.i.if.end23.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i

if.then.i:                                        ; preds = %while.body.i
  %21 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev.i, align 4
  %ras.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %22, i32 0, i32 113, i32 34, i32 1
  %23 = ptrtoint ptr %ras.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ras.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then.i.if.else.i_crit_edge, label %amdgpu_ras_is_poison_mode_supported.exit.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

amdgpu_ras_is_poison_mode_supported.exit.i:       ; preds = %if.then.i
  %poison_supported.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %poison_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %poison_supported.i.i, align 1, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.i.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.i.not.i, label %amdgpu_ras_is_poison_mode_supported.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

amdgpu_ras_is_poison_mode_supported.exit.i.if.else.i_crit_edge: ; preds = %amdgpu_ras_is_poison_mode_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %amdgpu_ras_is_poison_mode_supported.exit.i
  %27 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp5.i = icmp eq i32 %28, 0
  br i1 %cmp5.i, label %do.end9.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

do.end9.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.140) #20
  br label %if.end23.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %amdgpu_ras_is_poison_mode_supported.exit.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %31 = call ptr @memset(ptr %err_data.i, i32 0, i32 16)
  %call13.i = call i32 %20(ptr noundef %22, ptr noundef nonnull %err_data.i, ptr noundef nonnull %entry1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %err_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %err_data.i, align 4
  %34 = ptrtoint ptr %err_data16.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %err_data16.i, align 4
  %add18.i = add i32 %35, %33
  store i32 %add18.i, ptr %err_data16.i, align 4
  %36 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ce_count.i, align 4
  %38 = ptrtoint ptr %ce_count20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ce_count20.i, align 4
  %add21.i = add i32 %39, %37
  store i32 %add21.i, ptr %ce_count20.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then15.i, %if.else.i.if.end23.i_crit_edge, %do.end9.i, %while.body.i.if.end23.i_crit_edge
  %40 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rptr.i, align 4
  %42 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wptr.i, align 4
  %cmp.not.i = icmp eq i32 %41, %43
  br i1 %cmp.not.i, label %if.end23.i.amdgpu_ras_interrupt_handler.exit_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end23.i.amdgpu_ras_interrupt_handler.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_interrupt_handler.exit

amdgpu_ras_interrupt_handler.exit:                ; preds = %if.end23.i.amdgpu_ras_interrupt_handler.exit_crit_edge, %entry.amdgpu_ras_interrupt_handler.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %err_data.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %entry1.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_add_bad_pages(ptr noundef %adev, ptr noundef readonly %bps, i32 noundef %pages) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %eh_data = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eh_data, align 8
  %tobool1.not = icmp eq ptr %3, null
  %tobool3.not = icmp eq ptr %bps, null
  %or.cond = or i1 %tobool3.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pages)
  %cmp = icmp slt i32 %pages, 1
  %or.cond53 = or i1 %cmp, %or.cond
  br i1 %or.cond53, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %recovery_lock = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %recovery_lock, i32 noundef 0) #16
  %4 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eh_data, align 8
  %tobool6.not.not = icmp eq ptr %5, null
  br i1 %tobool6.not.not, label %if.end.out_crit_edge, label %for.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %space_left = getelementptr inbounds %struct.ras_err_handler_data, ptr %5, i32 0, i32 2
  %count.i54 = getelementptr inbounds %struct.ras_err_handler_data, ptr %5, i32 0, i32 1
  %vram_mgr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.eeprom_table_record, ptr %bps, i32 %i.063
  %retired_page = getelementptr %struct.eeprom_table_record, ptr %bps, i32 %i.063, i32 1
  %6 = ptrtoint ptr %retired_page to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %retired_page, align 1
  %shl = and i64 %7, 4503599627370495
  %8 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eh_data, align 8
  %count.i = getelementptr inbounds %struct.ras_err_handler_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.i = icmp sgt i32 %11, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.body.lr.ph.i:                                 ; preds = %for.body
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %retired_page.i58 = getelementptr %struct.eeprom_table_record, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %retired_page.i58 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %retired_page.i58, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %15)
  %cmp1.i59 = icmp eq i64 %shl, %15
  br i1 %cmp1.i59, label %for.body.lr.ph.i.for.inc_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.for.inc_crit_edge:               ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.08.i60 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.08.i60, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %11)
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge, label %for.body.i

for.cond.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_check_bad_page_unlock.exit

for.body.i:                                       ; preds = %for.cond.i
  %retired_page.i = getelementptr %struct.eeprom_table_record, ptr %13, i32 %inc.i, i32 1
  %16 = ptrtoint ptr %retired_page.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %retired_page.i, align 1
  %cmp1.i = icmp eq i64 %shl, %17
  br i1 %cmp1.i, label %for.body.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

for.body.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_check_bad_page_unlock.exit

amdgpu_ras_check_bad_page_unlock.exit:            ; preds = %for.body.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge, %for.cond.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %11)
  %cmp.i.le = icmp slt i32 %inc.i, %11
  br i1 %cmp.i.le, label %amdgpu_ras_check_bad_page_unlock.exit.for.inc_crit_edge, label %amdgpu_ras_check_bad_page_unlock.exit.if.end11_crit_edge

amdgpu_ras_check_bad_page_unlock.exit.if.end11_crit_edge: ; preds = %amdgpu_ras_check_bad_page_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

amdgpu_ras_check_bad_page_unlock.exit.for.inc_crit_edge: ; preds = %amdgpu_ras_check_bad_page_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end11:                                         ; preds = %amdgpu_ras_check_bad_page_unlock.exit.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %18 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %space_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end11
  %20 = ptrtoint ptr %count.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i54, align 4
  %add2.i = add i32 %21, 767
  %and.i = and i32 %add2.i, -512
  %mul.i = mul i32 %and.i, 31
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #21
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %amdgpu_ras_realloc_eh_data_space.exit, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %if.end.i.amdgpu_ras_realloc_eh_data_space.exit.thread_crit_edge, label %if.then5.i

if.end.i.amdgpu_ras_realloc_eh_data_space.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_realloc_eh_data_space.exit.thread

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %count.i54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i54, align 4
  %mul8.i = mul i32 %25, 31
  %26 = call ptr @memcpy(ptr %call9.i.i, ptr %23, i32 %mul8.i)
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %28) #16
  br label %amdgpu_ras_realloc_eh_data_space.exit.thread

amdgpu_ras_realloc_eh_data_space.exit.thread:     ; preds = %if.then5.i, %if.end.i.amdgpu_ras_realloc_eh_data_space.exit.thread_crit_edge
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %5, align 4
  %sub.i = sub i32 %and.i, %21
  %30 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %space_left, align 4
  %add13.i = add i32 %sub.i, %31
  store i32 %add13.i, ptr %space_left, align 4
  br label %if.end16

amdgpu_ras_realloc_eh_data_space.exit:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef null) #16
  br label %out

if.end16:                                         ; preds = %amdgpu_ras_realloc_eh_data_space.exit.thread, %if.end11.if.end16_crit_edge
  %32 = ptrtoint ptr %retired_page to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %retired_page, align 1
  %shl19 = shl i64 %33, 12
  %call20 = tail call i32 @amdgpu_vram_mgr_reserve_range(ptr noundef %vram_mgr, i64 noundef %shl19, i64 noundef 4096) #16
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %36 = ptrtoint ptr %count.i54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i54, align 4
  %arrayidx22 = getelementptr %struct.eeprom_table_record, ptr %35, i32 %37
  %38 = call ptr @memcpy(ptr %arrayidx22, ptr %arrayidx, i32 31)
  %39 = load i32, ptr %count.i54, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %count.i54, align 4
  %40 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %space_left, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %space_left, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %amdgpu_ras_check_bad_page_unlock.exit.for.inc_crit_edge, %for.body.lr.ph.i.for.inc_crit_edge
  %inc26 = add nuw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc26, %pages
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %amdgpu_ras_realloc_eh_data_space.exit, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ -12, %amdgpu_ras_realloc_eh_data_space.exit ], [ 0, %for.inc.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %recovery_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vram_mgr_reserve_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_save_bad_pages(ptr nocapture noundef readonly %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %eh_data = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eh_data, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %recovery_lock = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %recovery_lock, i32 noundef 0) #16
  %4 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eh_data, align 8
  %count = getelementptr inbounds %struct.ras_err_handler_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %ras_num_recs = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 13, i32 4
  %8 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ras_num_recs, align 4
  %sub = sub i32 %7, %9
  tail call void @mutex_unlock(ptr noundef %recovery_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %eeprom_control = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ras_num_recs, align 4
  %arrayidx = getelementptr %struct.eeprom_table_record, ptr %11, i32 %13
  %call = tail call i32 @amdgpu_ras_eeprom_append(ptr noundef %eeprom_control, ptr noundef %arrayidx, i32 noundef %sub) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  br i1 %tobool6.not, label %do.end11, label %do.end

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54) #20
  br label %cleanup

do.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.57, i32 noundef %sub) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_eeprom_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_recovery_init(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  %exc_err_limit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %exc_err_limit) #16
  %2 = ptrtoint ptr %exc_err_limit to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %exc_err_limit, align 1
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %adev1 = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %adev1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adev, ptr %adev1, align 4
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %4 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %eh_data = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #19
  %7 = ptrtoint ptr %eh_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %eh_data, align 4
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.end4.do.end50_crit_edge, label %do.body

if.end4.do.end50_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end50

do.body:                                          ; preds = %if.end4
  %recovery_lock = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %recovery_lock, ptr noundef nonnull @.str.59, ptr noundef nonnull @amdgpu_ras_recovery_init.__key) #16
  %recovery_work = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 6
  tail call void @__init_work(ptr noundef %recovery_work, i32 noundef 0) #16
  %8 = ptrtoint ptr %recovery_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %recovery_work, align 4
  %lockdep_map = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.61, ptr noundef nonnull @amdgpu_ras_recovery_init.__key.60, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry13 = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 6, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @amdgpu_ras_do_recovery, ptr %func, align 4
  %in_recovery = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_recovery, i32 noundef 4) #16
  %12 = ptrtoint ptr %in_recovery to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %in_recovery, align 4
  %call17 = tail call i32 @amdgpu_ras_eeprom_max_record_count() #16
  %13 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ras, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %15 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp slt i32 %15, 0
  br i1 %cmp.i, label %if.end180.i, label %if.else191.i

if.end180.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %mc_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 2
  %16 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mc_vram_size.i, align 8
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %17, i32 0) #22, !srcloc !357
  %asmresult.i.i = extractvalue { i64, i32 } %18, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %17, i64 %asmresult.i.i, i32 %asmresult4.i.i) #22, !srcloc !358
  %asmresult10.i.i = extractvalue { i64, i32 } %19, 0
  %extract288.i = lshr i64 %asmresult10.i.i, 26
  %extract.t289.i = trunc i64 %extract288.i to i32
  %20 = tail call i32 @llvm.umin.i32(i32 %extract.t289.i, i32 %call17) #16
  br label %amdgpu_ras_validate_threshold.exit

if.else191.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %21 = tail call i32 @llvm.smin.i32(i32 %15, i32 %call17) #16
  br label %amdgpu_ras_validate_threshold.exit

amdgpu_ras_validate_threshold.exit:               ; preds = %if.else191.i, %if.end180.i
  %.sink.i = phi i32 [ %20, %if.end180.i ], [ %21, %if.else191.i ]
  %22 = getelementptr inbounds %struct.amdgpu_ras, ptr %14, i32 0, i32 15
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %22, align 4
  %pending_reset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 9
  %24 = ptrtoint ptr %pending_reset to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pending_reset, align 1, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not = icmp eq i8 %25, 0
  br i1 %tobool18.not, label %if.end20, label %amdgpu_ras_validate_threshold.exit.cleanup_crit_edge

amdgpu_ras_validate_threshold.exit.cleanup_crit_edge: ; preds = %amdgpu_ras_validate_threshold.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %amdgpu_ras_validate_threshold.exit
  %eeprom_control = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 13
  %call21 = call i32 @amdgpu_ras_eeprom_init(ptr noundef %eeprom_control, ptr noundef nonnull %exc_err_limit) #16
  %26 = ptrtoint ptr %exc_err_limit to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %exc_err_limit, align 1, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool22.not = icmp eq i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  %or.cond = select i1 %tobool22.not, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %if.end25, label %if.end20.free_crit_edge

if.end20.free_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

if.end25:                                         ; preds = %if.end20
  %ras_num_recs = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 13, i32 4
  %28 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ras_num_recs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool27.not = icmp eq i32 %29, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.then28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  %30 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ras, align 8
  %eeprom_control.i = getelementptr inbounds %struct.amdgpu_ras, ptr %31, i32 0, i32 13
  %ras_num_recs.i = getelementptr inbounds %struct.amdgpu_ras, ptr %31, i32 0, i32 13, i32 4
  %32 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ras_num_recs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i90 = icmp eq i32 %33, 0
  br i1 %cmp.i90, label %if.then28.if.end32_crit_edge, label %lor.lhs.false.i

if.then28.if.end32_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

lor.lhs.false.i:                                  ; preds = %if.then28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %34 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1.i = icmp eq i32 %34, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end32_crit_edge, label %if.end.i

lor.lhs.false.i.if.end32_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.end.i:                                         ; preds = %lor.lhs.false.i
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 31) #16
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %if.end.i.free_crit_edge, label %if.end7.i.i.i, !prof !352

if.end.i.free_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

if.end7.i.i.i:                                    ; preds = %if.end.i
  %37 = extractvalue { i32, i1 } %35, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #21
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.free_crit_edge, label %if.end4.i

if.end7.i.i.i.free_crit_edge:                     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

if.end4.i:                                        ; preds = %if.end7.i.i.i
  %38 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ras_num_recs.i, align 4
  %call6.i = call i32 @amdgpu_ras_eeprom_read(ptr noundef %eeprom_control.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %39) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %amdgpu_ras_load_bad_pages.exit, label %amdgpu_ras_load_bad_pages.exit.thread97

amdgpu_ras_load_bad_pages.exit.thread97:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.142) #20
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #16
  br label %free

amdgpu_ras_load_bad_pages.exit:                   ; preds = %if.end4.i
  %42 = ptrtoint ptr %ras_num_recs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ras_num_recs.i, align 4
  %call10.i = call i32 @amdgpu_ras_add_bad_pages(ptr noundef %adev, ptr noundef nonnull %call8.i.i.i, i32 noundef %43) #16
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool30.not = icmp eq i32 %call10.i, 0
  br i1 %tobool30.not, label %amdgpu_ras_load_bad_pages.exit.if.end32_crit_edge, label %amdgpu_ras_load_bad_pages.exit.free_crit_edge

amdgpu_ras_load_bad_pages.exit.free_crit_edge:    ; preds = %amdgpu_ras_load_bad_pages.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

amdgpu_ras_load_bad_pages.exit.if.end32_crit_edge: ; preds = %amdgpu_ras_load_bad_pages.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.end32:                                         ; preds = %amdgpu_ras_load_bad_pages.exit.if.end32_crit_edge, %lor.lhs.false.i.if.end32_crit_edge, %if.then28.if.end32_crit_edge
  %smu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %ppt_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 2
  %44 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ppt_funcs, align 8
  %tobool33.not = icmp eq ptr %45, null
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %land.lhs.true

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end32
  %send_hbm_bad_pages_num = getelementptr inbounds %struct.pptable_funcs, ptr %45, i32 0, i32 110
  %46 = ptrtoint ptr %send_hbm_bad_pages_num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %send_hbm_bad_pages_num, align 4
  %tobool36.not = icmp eq ptr %47, null
  br i1 %tobool36.not, label %land.lhs.true.cleanup_crit_edge, label %if.then37

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %ras_num_recs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ras_num_recs, align 8
  %call44 = call i32 %47(ptr noundef %smu, i32 noundef %49) #16
  br label %cleanup

free:                                             ; preds = %amdgpu_ras_load_bad_pages.exit.free_crit_edge, %amdgpu_ras_load_bad_pages.exit.thread97, %if.end7.i.i.i.free_crit_edge, %if.end.i.free_crit_edge, %if.end20.free_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end20.free_crit_edge ], [ %call10.i, %amdgpu_ras_load_bad_pages.exit.free_crit_edge ], [ %call6.i, %amdgpu_ras_load_bad_pages.exit.thread97 ], [ -12, %if.end7.i.i.i.free_crit_edge ], [ -12, %if.end.i.free_crit_edge ]
  %50 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eh_data, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  call void @kfree(ptr noundef %53) #16
  %54 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %eh_data, align 4
  call void @kfree(ptr noundef %55) #16
  %56 = ptrtoint ptr %eh_data to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %eh_data, align 8
  br label %do.end50

do.end50:                                         ; preds = %free, %if.end4.do.end50_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free ], [ -12, %if.end4.do.end50_crit_edge ]
  %57 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.62, i32 noundef %ret.1) #20
  %59 = ptrtoint ptr %exc_err_limit to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %exc_err_limit, align 1, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool51.not = icmp eq i8 %60, 0
  %. = select i1 %tobool51.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.then37, %land.lhs.true.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %amdgpu_ras_validate_threshold.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end50 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %amdgpu_ras_validate_threshold.exit.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %exc_err_limit) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_ras_do_recovery(ptr noundef %work) #4 align 64 {
entry:
  %info.i = alloca %struct.ras_query_if, align 4
  %device_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %device_list) #16
  %2 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %device_list, align 4, !annotation !359
  %3 = getelementptr inbounds %struct.list_head, ptr %device_list, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !359
  %disable_ras_err_cnt_harvest = getelementptr i8, ptr %work, i32 300
  %5 = ptrtoint ptr %disable_ras_err_cnt_harvest to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %disable_ras_err_cnt_harvest, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then:                                          ; preds = %entry
  %call = tail call ptr @amdgpu_get_xgmi_hive(ptr noundef %1) #16
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 39, i32 4
  %7 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ugt i32 %8, 1
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %device_list4 = getelementptr inbounds %struct.amdgpu_hive_info, ptr %call, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %9 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %device_list, ptr %device_list, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %device_list, ptr %3, align 4
  %head = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 39, i32 5
  %call.i.i41 = call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef nonnull %device_list, ptr noundef nonnull %device_list) #16
  br i1 %call.i.i41, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %3, align 4
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %device_list, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 39, i32 5, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %device_list, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %head, ptr %device_list, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge, %if.then3
  %device_list_handle.0 = phi ptr [ %device_list4, %if.then3 ], [ %device_list, %if.else.if.end_crit_edge ], [ %device_list, %if.end.i.i ]
  %15 = ptrtoint ptr %device_list_handle.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn54 = load ptr, ptr %device_list_handle.0, align 4
  %cmp13.not55 = icmp eq ptr %.pn54, %device_list_handle.0
  br i1 %cmp13.not55, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ue_count.i = getelementptr inbounds %struct.ras_query_if, ptr %info.i, i32 0, i32 1
  %ce_count.i = getelementptr inbounds %struct.ras_query_if, ptr %info.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %amdgpu_ras_log_on_err_counter.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn56 = phi ptr [ %.pn54, %for.body.lr.ph ], [ %.pn, %amdgpu_ras_log_on_err_counter.exit.for.body_crit_edge ]
  %remote_adev.0 = getelementptr i8, ptr %.pn56, i32 -10208
  %ras.i = getelementptr i8, ptr %.pn56, i32 71800
  %16 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ras.i, align 8
  %ras_enabled.i = getelementptr i8, ptr %.pn56, i32 81456
  %18 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ras_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  %tobool1.not.i = icmp eq ptr %17, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %for.body.amdgpu_ras_query_err_status.exit_crit_edge, label %if.end.i

for.body.amdgpu_ras_query_err_status.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_query_err_status.exit

if.end.i:                                         ; preds = %for.body
  %head.i = getelementptr inbounds %struct.amdgpu_ras, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn18.i = load ptr, ptr %head.i, align 4
  %cmp.not19.i = icmp eq ptr %.pn18.i, %head.i
  br i1 %cmp.not19.i, label %if.end.i.amdgpu_ras_query_err_status.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.amdgpu_ras_query_err_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_query_err_status.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ras_funcs8.i.i = getelementptr i8, ptr %.pn56, i32 22624
  %ras_funcs.i.i = getelementptr i8, ptr %.pn56, i32 34336
  br label %for.body.i

for.body.i:                                       ; preds = %amdgpu_ras_error_status_query.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn20.i = phi ptr [ %.pn18.i, %for.body.lr.ph.i ], [ %.pn.i, %amdgpu_ras_error_status_query.exit.i.for.body.i_crit_edge ]
  %obj.0.i = getelementptr i8, ptr %.pn20.i, i32 -48
  %21 = ptrtoint ptr %obj.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %info.sroa.0.0.copyload.i = load i32, ptr %obj.0.i, align 4
  %22 = zext i32 %info.sroa.0.0.copyload.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %info.sroa.0.0.copyload.i, label %for.body.i.amdgpu_ras_error_status_query.exit.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 3, label %sw.bb7.i.i
  ]

for.body.i.amdgpu_ras_error_status_query.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_error_status_query.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i
  %23 = ptrtoint ptr %ras_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ras_funcs.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %sw.bb.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_error_status_query.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %query_ras_error_status.i.i = getelementptr inbounds %struct.amdgpu_gfx_ras_funcs, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %query_ras_error_status.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %query_ras_error_status.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge, label %land.lhs.true.i.i.sw.epilog.sink.split.i.i_crit_edge

land.lhs.true.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i.i

land.lhs.true.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_error_status_query.exit.i

sw.bb7.i.i:                                       ; preds = %for.body.i
  %27 = ptrtoint ptr %ras_funcs8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ras_funcs8.i.i, align 8
  %tobool9.not.i.i = icmp eq ptr %28, null
  br i1 %tobool9.not.i.i, label %sw.bb7.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge, label %land.lhs.true10.i.i

sw.bb7.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge: ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_error_status_query.exit.i

land.lhs.true10.i.i:                              ; preds = %sw.bb7.i.i
  %query_ras_error_status13.i.i = getelementptr inbounds %struct.amdgpu_mmhub_ras_funcs, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %query_ras_error_status13.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %query_ras_error_status13.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %30, null
  br i1 %tobool14.not.i.i, label %land.lhs.true10.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge, label %land.lhs.true10.i.i.sw.epilog.sink.split.i.i_crit_edge

land.lhs.true10.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i.i

land.lhs.true10.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge: ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_error_status_query.exit.i

sw.epilog.sink.split.i.i:                         ; preds = %land.lhs.true10.i.i.sw.epilog.sink.split.i.i_crit_edge, %land.lhs.true.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %26, %land.lhs.true.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ %30, %land.lhs.true10.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  call void %.sink.i.i(ptr noundef %remote_adev.0) #16
  br label %amdgpu_ras_error_status_query.exit.i

amdgpu_ras_error_status_query.exit.i:             ; preds = %sw.epilog.sink.split.i.i, %land.lhs.true10.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge, %sw.bb7.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge, %land.lhs.true.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge, %sw.bb.i.i.amdgpu_ras_error_status_query.exit.i_crit_edge, %for.body.i.amdgpu_ras_error_status_query.exit.i_crit_edge
  %31 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp.not.i, label %amdgpu_ras_error_status_query.exit.i.amdgpu_ras_query_err_status.exit_crit_edge, label %amdgpu_ras_error_status_query.exit.i.for.body.i_crit_edge

amdgpu_ras_error_status_query.exit.i.for.body.i_crit_edge: ; preds = %amdgpu_ras_error_status_query.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

amdgpu_ras_error_status_query.exit.i.amdgpu_ras_query_err_status.exit_crit_edge: ; preds = %amdgpu_ras_error_status_query.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_query_err_status.exit

amdgpu_ras_query_err_status.exit:                 ; preds = %amdgpu_ras_error_status_query.exit.i.amdgpu_ras_query_err_status.exit_crit_edge, %if.end.i.amdgpu_ras_query_err_status.exit_crit_edge, %for.body.amdgpu_ras_query_err_status.exit_crit_edge
  %32 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ras.i, align 8
  %34 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ras_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i44 = icmp eq i32 %35, 0
  %tobool1.not.i45 = icmp eq ptr %33, null
  %or.cond.i46 = select i1 %tobool.not.i44, i1 true, i1 %tobool1.not.i45
  br i1 %or.cond.i46, label %amdgpu_ras_query_err_status.exit.amdgpu_ras_log_on_err_counter.exit_crit_edge, label %if.end.i48

amdgpu_ras_query_err_status.exit.amdgpu_ras_log_on_err_counter.exit_crit_edge: ; preds = %amdgpu_ras_query_err_status.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_log_on_err_counter.exit

if.end.i48:                                       ; preds = %amdgpu_ras_query_err_status.exit
  %head.i47 = getelementptr inbounds %struct.amdgpu_ras, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %head.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn33.i = load ptr, ptr %head.i47, align 4
  %cmp.not34.i = icmp eq ptr %.pn33.i, %head.i47
  br i1 %cmp.not34.i, label %if.end.i48.amdgpu_ras_log_on_err_counter.exit_crit_edge, label %for.body.lr.ph.i49

if.end.i48.amdgpu_ras_log_on_err_counter.exit_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_log_on_err_counter.exit

for.body.lr.ph.i49:                               ; preds = %if.end.i48
  %arrayidx.i = getelementptr i8, ptr %.pn56, i32 82076
  br label %for.body.i51

for.body.i51:                                     ; preds = %cleanup.i.for.body.i51_crit_edge, %for.body.lr.ph.i49
  %.pn35.i = phi ptr [ %.pn33.i, %for.body.lr.ph.i49 ], [ %.pn.i52, %cleanup.i.for.body.i51_crit_edge ]
  %obj.0.i50 = getelementptr i8, ptr %.pn35.i, i32 -48
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %info.i) #16
  %37 = call ptr @memset(ptr %info.i, i32 255, i32 52)
  %38 = call ptr @memcpy(ptr %info.i, ptr %obj.0.i50, i32 44)
  %39 = ptrtoint ptr %ue_count.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ue_count.i, align 4
  %40 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ce_count.i, align 4
  %41 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %info.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %42, label %for.body.i51.if.end15.i_crit_edge [
    i32 5, label %for.body.i51.cleanup.i_crit_edge
    i32 0, label %land.lhs.true.i
  ]

for.body.i51.cleanup.i_crit_edge:                 ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

for.body.i51.if.end15.i_crit_edge:                ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %for.body.i51
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %45)
  %cmp13.i = icmp eq i32 %45, 851970
  br i1 %cmp13.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %for.body.i51.if.end15.i_crit_edge
  %call.i = call i32 @amdgpu_ras_query_error_status(ptr noundef %remote_adev.0, ptr noundef nonnull %info.i) #16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end15.i, %land.lhs.true.i.cleanup.i_crit_edge, %for.body.i51.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info.i) #16
  %46 = ptrtoint ptr %.pn35.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i52 = load ptr, ptr %.pn35.i, align 4
  %cmp.not.i53 = icmp eq ptr %.pn.i52, %head.i47
  br i1 %cmp.not.i53, label %cleanup.i.amdgpu_ras_log_on_err_counter.exit_crit_edge, label %cleanup.i.for.body.i51_crit_edge

cleanup.i.for.body.i51_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i51

cleanup.i.amdgpu_ras_log_on_err_counter.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_log_on_err_counter.exit

amdgpu_ras_log_on_err_counter.exit:               ; preds = %cleanup.i.amdgpu_ras_log_on_err_counter.exit_crit_edge, %if.end.i48.amdgpu_ras_log_on_err_counter.exit_crit_edge, %amdgpu_ras_query_err_status.exit.amdgpu_ras_log_on_err_counter.exit_crit_edge
  %47 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn = load ptr, ptr %.pn56, align 4
  %cmp13.not = icmp eq ptr %.pn, %device_list_handle.0
  br i1 %cmp13.not, label %amdgpu_ras_log_on_err_counter.exit.for.end_crit_edge, label %amdgpu_ras_log_on_err_counter.exit.for.body_crit_edge

amdgpu_ras_log_on_err_counter.exit.for.body_crit_edge: ; preds = %amdgpu_ras_log_on_err_counter.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

amdgpu_ras_log_on_err_counter.exit.for.end_crit_edge: ; preds = %amdgpu_ras_log_on_err_counter.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %amdgpu_ras_log_on_err_counter.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @amdgpu_put_xgmi_hive(ptr noundef %call) #16
  br label %if.end21

if.end21:                                         ; preds = %for.end, %entry.if.end21_crit_edge
  %48 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adev1, align 4
  %call23 = call zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef %49) #16
  br i1 %call23, label %if.then24, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adev1, align 4
  %call26 = call i32 @amdgpu_device_gpu_recover(ptr noundef %51, ptr noundef null) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %in_recovery = getelementptr i8, ptr %work, i32 44
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %in_recovery, i32 noundef 4) #16
  %52 = ptrtoint ptr %in_recovery to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %in_recovery, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %device_list) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_eeprom_max_record_count() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_eeprom_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_init(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 5984) #19
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %adev4 = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 8
  %3 = ptrtoint ptr %adev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adev, ptr %adev4, align 4
  %ras_counte_delay_work = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %ras_counte_delay_work, i32 noundef 0) #16
  %4 = ptrtoint ptr %ras_counte_delay_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %ras_counte_delay_work, align 4
  %lockdep_map = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 18, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.65, ptr noundef nonnull @amdgpu_ras_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry12 = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 18, i32 0, i32 1
  %5 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry12, ptr %entry12, align 8
  %prev.i = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 18, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 18, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @amdgpu_ras_counte_dw, ptr %func, align 8
  %timer = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.67, ptr noundef nonnull @amdgpu_ras_init.__key.66) #16
  %ras_ce_count = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ras_ce_count, i32 noundef 4) #16
  %8 = ptrtoint ptr %ras_ce_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %ras_ce_count, align 4
  %ras_ue_count = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 19
  %call.i.i201 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ras_ue_count, i32 noundef 4) #16
  %9 = ptrtoint ptr %ras_ue_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %ras_ue_count, align 8
  %add.ptr = getelementptr %struct.amdgpu_ras, ptr %call7.i, i32 1
  %objs = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 5
  %10 = ptrtoint ptr %objs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %objs, align 8
  %11 = ptrtoint ptr %ras to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %ras, align 8
  tail call fastcc void @amdgpu_ras_check_supported(ptr noundef %adev)
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %12 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  %asic_type28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %14 = ptrtoint ptr %asic_type28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asic_type28, align 8
  br i1 %tobool24.not, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %15)
  %cmp = icmp eq i32 %15, 19
  br i1 %cmp, label %lor.lhs.false.release_con_crit_edge, label %if.end32

lor.lhs.false.release_con_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_con

land.lhs.true:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %15)
  %cmp29 = icmp eq i32 %15, 21
  br i1 %cmp29, label %if.then30, label %land.lhs.true.release_con_crit_edge

land.lhs.true.release_con_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_con

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call7.i, align 8
  %or = or i32 %17, 4
  store i32 %or, ptr %call7.i, align 8
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %call7.i, align 8
  %head = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %head, ptr %head, align 4
  %prev.i202 = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i202 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %head, ptr %prev.i202, align 8
  %flags = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 11
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %flags, align 8
  %22 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %15, label %if.end32.sw.epilog_crit_edge [
    i32 21, label %if.end32.sw.bb_crit_edge
    i32 23, label %if.end32.sw.bb_crit_edge204
    i32 25, label %if.end32.sw.bb_crit_edge205
  ]

if.end32.sw.bb_crit_edge205:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end32.sw.bb_crit_edge204:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end32.sw.bb_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end32.sw.bb_crit_edge, %if.end32.sw.bb_crit_edge204, %if.end32.sw.bb_crit_edge205
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %23 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %connected_to_cpu, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool35.not = icmp eq i8 %24, 0
  br i1 %tobool35.not, label %if.then36, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then36:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %ras_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 5
  %25 = ptrtoint ptr %ras_funcs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nbio_v7_4_ras_funcs, ptr %ras_funcs, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then36, %sw.bb.sw.epilog_crit_edge, %if.end32.sw.epilog_crit_edge
  %ras_funcs39 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 101, i32 5
  %26 = ptrtoint ptr %ras_funcs39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ras_funcs39, align 4
  %tobool40.not = icmp eq ptr %27, null
  br i1 %tobool40.not, label %sw.epilog.if.end69_crit_edge, label %land.lhs.true41

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

land.lhs.true41:                                  ; preds = %sw.epilog
  %init_ras_controller_interrupt = getelementptr inbounds %struct.amdgpu_nbio_ras_funcs, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %init_ras_controller_interrupt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_ras_controller_interrupt, align 4
  %tobool44.not = icmp eq ptr %29, null
  br i1 %tobool44.not, label %land.lhs.true41.if.end53_crit_edge, label %if.then45

land.lhs.true41.if.end53_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then45:                                        ; preds = %land.lhs.true41
  %call49 = tail call i32 %29(ptr noundef %adev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then45.if.end53_crit_edge, label %if.then45.release_con_crit_edge

if.then45.release_con_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_con

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.end53:                                         ; preds = %if.then45.if.end53_crit_edge, %land.lhs.true41.if.end53_crit_edge
  %30 = ptrtoint ptr %ras_funcs39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load ptr, ptr %ras_funcs39, align 4
  %tobool56.not = icmp eq ptr %.pr, null
  br i1 %tobool56.not, label %if.end53.if.end69_crit_edge, label %land.lhs.true57

if.end53.if.end69_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

land.lhs.true57:                                  ; preds = %if.end53
  %init_ras_err_event_athub_interrupt = getelementptr inbounds %struct.amdgpu_nbio_ras_funcs, ptr %.pr, i32 0, i32 3
  %31 = ptrtoint ptr %init_ras_err_event_athub_interrupt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_ras_err_event_athub_interrupt, align 4
  %tobool60.not = icmp eq ptr %32, null
  br i1 %tobool60.not, label %land.lhs.true57.if.end69_crit_edge, label %if.then61

land.lhs.true57.if.end69_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then61:                                        ; preds = %land.lhs.true57
  %call65 = tail call i32 %32(ptr noundef %adev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then61.if.end69_crit_edge, label %if.then61.release_con_crit_edge

if.then61.release_con_crit_edge:                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %release_con

if.then61.if.end69_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.end69:                                         ; preds = %if.then61.if.end69_crit_edge, %land.lhs.true57.if.end69_crit_edge, %if.end53.if.end69_crit_edge, %sw.epilog.if.end69_crit_edge
  %connected_to_cpu72 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %33 = ptrtoint ptr %connected_to_cpu72 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %connected_to_cpu72, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool73.not = icmp eq i8 %34, 0
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  %poison_supported = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 17
  %35 = ptrtoint ptr %poison_supported to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %poison_supported, align 1
  br label %if.end120

if.else:                                          ; preds = %if.end69
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 120, i32 1
  %36 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs, align 4
  %tobool75.not = icmp eq ptr %37, null
  br i1 %tobool75.not, label %if.else.if.end120_crit_edge, label %land.lhs.true76

if.else.if.end120_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

land.lhs.true76:                                  ; preds = %if.else
  %query_ras_poison_mode = getelementptr inbounds %struct.amdgpu_df_funcs, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %query_ras_poison_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %query_ras_poison_mode, align 4
  %tobool79.not = icmp eq ptr %39, null
  br i1 %tobool79.not, label %land.lhs.true76.if.end120_crit_edge, label %land.lhs.true80

land.lhs.true76.if.end120_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

land.lhs.true80:                                  ; preds = %land.lhs.true76
  %ras_funcs81 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 7
  %40 = ptrtoint ptr %ras_funcs81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ras_funcs81, align 4
  %tobool82.not = icmp eq ptr %41, null
  br i1 %tobool82.not, label %land.lhs.true80.if.end120_crit_edge, label %land.lhs.true83

land.lhs.true80.if.end120_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %query_ras_poison_mode86 = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %query_ras_poison_mode86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %query_ras_poison_mode86, align 4
  %tobool87.not = icmp eq ptr %43, null
  br i1 %tobool87.not, label %land.lhs.true83.if.end120_crit_edge, label %if.then88

land.lhs.true83.if.end120_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.then88:                                        ; preds = %land.lhs.true83
  %call92 = tail call zeroext i1 %39(ptr noundef %adev) #16
  %44 = ptrtoint ptr %ras_funcs81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ras_funcs81, align 4
  %query_ras_poison_mode95 = getelementptr inbounds %struct.amdgpu_umc_ras_funcs, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %query_ras_poison_mode95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %query_ras_poison_mode95, align 4
  %call96 = tail call zeroext i1 %47(ptr noundef %adev) #16
  %48 = select i1 %call92, i1 %call96, i1 false
  br i1 %48, label %if.then101, label %if.else103

if.then101:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #18
  %poison_supported102 = getelementptr inbounds %struct.amdgpu_ras, ptr %call7.i, i32 0, i32 17
  %49 = ptrtoint ptr %poison_supported102 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %poison_supported102, align 1
  br label %if.end120

if.else103:                                       ; preds = %if.then88
  %50 = xor i1 %call92, %call96
  br i1 %50, label %do.end112, label %if.else103.if.end120_crit_edge

if.else103.if.end120_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

do.end112:                                        ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #18
  %conv106 = zext i1 %call96 to i32
  %conv = zext i1 %call92 to i32
  %51 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.68, i32 noundef %conv, i32 noundef %conv106) #20
  br label %if.end120

if.end120:                                        ; preds = %do.end112, %if.else103.if.end120_crit_edge, %if.then101, %land.lhs.true83.if.end120_crit_edge, %land.lhs.true80.if.end120_crit_edge, %land.lhs.true76.if.end120_crit_edge, %if.else.if.end120_crit_edge, %if.then74
  tail call fastcc void @amdgpu_ras_fs_init(ptr noundef %adev)
  %53 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adev, align 8
  %ras_hw_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 166
  %55 = ptrtoint ptr %ras_hw_enabled to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ras_hw_enabled, align 4
  %57 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ras_enabled, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.71, i32 noundef %56, i32 noundef %58) #20
  br label %cleanup

release_con:                                      ; preds = %if.then61.release_con_crit_edge, %if.then45.release_con_crit_edge, %land.lhs.true.release_con_crit_edge, %lor.lhs.false.release_con_crit_edge
  %r.0 = phi i32 [ %call49, %if.then45.release_con_crit_edge ], [ %call65, %if.then61.release_con_crit_edge ], [ 0, %land.lhs.true.release_con_crit_edge ], [ 0, %lor.lhs.false.release_con_crit_edge ]
  %59 = ptrtoint ptr %ras to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %ras, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

cleanup:                                          ; preds = %release_con, %if.end120, %if.then30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %release_con ], [ 0, %if.then30 ], [ 0, %if.end120 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_ras_counte_dw(ptr noundef %work) #4 align 64 {
entry:
  %info.i = alloca %struct.ras_query_if, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr i8, ptr %work, i32 -256
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %dev2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.Out_crit_edge, label %if.end

entry.Out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %Out

if.end:                                           ; preds = %entry
  %ras.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 34, i32 1
  %4 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ras.i, align 8
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 167
  %6 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ras_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.end.if.end7_crit_edge, label %if.end.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %head.i = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn52.i = load ptr, ptr %head.i, align 4
  %cmp.not53.i = icmp eq ptr %.pn52.i, %head.i
  br i1 %cmp.not53.i, label %if.end.i.if.then6_crit_edge, label %for.body.lr.ph.i

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ue_count9.i = getelementptr inbounds %struct.ras_query_if, ptr %info.i, i32 0, i32 1
  %ce_count10.i = getelementptr inbounds %struct.ras_query_if, ptr %info.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn56.i = phi ptr [ %.pn52.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %ce.055.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %cleanup.i.for.body.i_crit_edge ]
  %ue.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add16.i, %cleanup.i.for.body.i_crit_edge ]
  %obj.0.i = getelementptr i8, ptr %.pn56.i, i32 -48
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %info.i) #16
  %9 = call ptr @memset(ptr %info.i, i32 255, i32 52)
  %10 = call ptr @memcpy(ptr %info.i, ptr %obj.0.i, i32 44)
  %11 = ptrtoint ptr %ue_count9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ue_count9.i, align 4
  %12 = ptrtoint ptr %ce_count10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ce_count10.i, align 4
  %call.i17 = call i32 @amdgpu_ras_query_error_status(ptr noundef %1, ptr noundef nonnull %info.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool11.not.i = icmp eq i32 %call.i17, 0
  br i1 %tobool11.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info.i) #16
  br label %if.end7

cleanup.i:                                        ; preds = %for.body.i
  %13 = ptrtoint ptr %ce_count10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ce_count10.i, align 4
  %add.i = add i32 %14, %ce.055.i
  %15 = ptrtoint ptr %ue_count9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ue_count9.i, align 4
  %add16.i = add i32 %16, %ue.054.i
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info.i) #16
  %17 = ptrtoint ptr %.pn56.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn56.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp.not.i, label %cleanup.i.if.then6_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup.i.if.then6_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

if.then6:                                         ; preds = %cleanup.i.if.then6_crit_edge, %if.end.i.if.then6_crit_edge
  %ce_count.0.ph = phi i32 [ 0, %if.end.i.if.then6_crit_edge ], [ %add.i, %cleanup.i.if.then6_crit_edge ]
  %ue_count.0.ph = phi i32 [ 0, %if.end.i.if.then6_crit_edge ], [ %add16.i, %cleanup.i.if.then6_crit_edge ]
  %ras_ce_count = getelementptr i8, ptr %work, i32 104
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ras_ce_count, i32 noundef 4) #16
  %18 = ptrtoint ptr %ras_ce_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %ce_count.0.ph, ptr %ras_ce_count, align 4
  %ras_ue_count = getelementptr i8, ptr %work, i32 100
  %call.i.i16 = call zeroext i1 @__kasan_check_write(ptr noundef %ras_ue_count, i32 noundef 4) #16
  %19 = ptrtoint ptr %ras_ue_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %ue_count.0.ph, ptr %ras_ue_count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %cleanup.thread.i, %if.end.if.end7_crit_edge
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  %call.i18 = call i64 @ktime_get_mono_fast_ns() #16
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  br label %Out

Out:                                              ; preds = %if.end7, %entry.Out_crit_edge
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  %call.i19 = call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ras_check_supported(ptr noundef %adev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %0 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ras_enabled, align 8
  %ras_hw_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 166
  %1 = ptrtoint ptr %ras_hw_enabled to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ras_hw_enabled, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %is_atom_fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 25
  %4 = ptrtoint ptr %is_atom_fw to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_fw, align 2, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %7, label %lor.lhs.false2.return_crit_edge [
    i32 19, label %lor.lhs.false2.if.end_crit_edge
    i32 21, label %lor.lhs.false2.if.end_crit_edge53
    i32 23, label %lor.lhs.false2.if.end_crit_edge54
    i32 25, label %lor.lhs.false2.if.end_crit_edge55
    i32 30, label %lor.lhs.false2.if.end_crit_edge56
  ]

lor.lhs.false2.if.end_crit_edge56:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false2.if.end_crit_edge55:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false2.if.end_crit_edge54:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false2.if.end_crit_edge53:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %lor.lhs.false2.if.end_crit_edge, %lor.lhs.false2.if.end_crit_edge53, %lor.lhs.false2.if.end_crit_edge54, %lor.lhs.false2.if.end_crit_edge55, %lor.lhs.false2.if.end_crit_edge56
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %9 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %connected_to_cpu, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.then4, label %if.else24

if.then4:                                         ; preds = %if.end
  %call5 = tail call zeroext i1 @amdgpu_atomfirmware_mem_ecc_supported(ptr noundef %adev) #16
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  br i1 %call5, label %do.end, label %do.end9

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.144) #20
  %13 = ptrtoint ptr %ras_hw_enabled to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ras_hw_enabled, align 4
  %or = or i32 %14, 257
  store i32 %or, ptr %ras_hw_enabled, align 4
  br label %if.end11

do.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.147) #20
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %do.end
  %call12 = tail call zeroext i1 @amdgpu_atomfirmware_sram_ecc_supported(ptr noundef %adev) #16
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  br i1 %call12, label %do.end15, label %do.end21

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.150) #20
  %17 = ptrtoint ptr %ras_hw_enabled to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ras_hw_enabled, align 4
  %or18 = or i32 %18, -258
  store i32 %or18, ptr %ras_hw_enabled, align 4
  br label %if.end27

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.153) #20
  br label %if.end27

if.else24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %ras_hw_enabled to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 14, ptr %ras_hw_enabled, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %do.end21, %do.end15
  %mode_info.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  %20 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mode_info.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end27.amdgpu_ras_get_quirks.exit_crit_edge, label %if.end.i

if.end27.amdgpu_ras_get_quirks.exit_crit_edge:    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_get_quirks.exit

if.end.i:                                         ; preds = %if.end27
  %vbios_version.i = getelementptr inbounds %struct.atom_context, ptr %21, i32 0, i32 17
  %call.i = tail call ptr @strnstr(ptr noundef %vbios_version.i, ptr noundef nonnull @.str.155, i32 noundef 20) #16
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.if.then6.i_crit_edge

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call4.i = tail call ptr @strnstr(ptr noundef %vbios_version.i, ptr noundef nonnull @.str.156, i32 noundef 20) #16
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %lor.lhs.false.i.amdgpu_ras_get_quirks.exit_crit_edge, label %lor.lhs.false.i.if.then6.i_crit_edge

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6.i

lor.lhs.false.i.amdgpu_ras_get_quirks.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_get_quirks.exit

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %22 = ptrtoint ptr %ras_hw_enabled to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ras_hw_enabled, align 4
  %or.i = or i32 %23, 4
  store i32 %or.i, ptr %ras_hw_enabled, align 4
  br label %amdgpu_ras_get_quirks.exit

amdgpu_ras_get_quirks.exit:                       ; preds = %if.then6.i, %lor.lhs.false.i.amdgpu_ras_get_quirks.exit_crit_edge, %if.end27.amdgpu_ras_get_quirks.exit_crit_edge
  %24 = ptrtoint ptr %ras_hw_enabled to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ras_hw_enabled, align 4
  %26 = and i32 %25, 32767
  store i32 %26, ptr %ras_hw_enabled, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_enable to i32))
  %27 = load i32, ptr @amdgpu_ras_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %amdgpu_ras_get_quirks.exit.cond.end_crit_edge, label %cond.false

amdgpu_ras_get_quirks.exit.cond.end_crit_edge:    ; preds = %amdgpu_ras_get_quirks.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %amdgpu_ras_get_quirks.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_mask to i32))
  %28 = load i32, ptr @amdgpu_ras_mask, align 4
  %and33 = and i32 %28, %26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %amdgpu_ras_get_quirks.exit.cond.end_crit_edge
  %cond = phi i32 [ %and33, %cond.false ], [ 0, %amdgpu_ras_get_quirks.exit.cond.end_crit_edge ]
  %29 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %ras_enabled, align 8
  br label %return

return:                                           ; preds = %cond.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ras_fs_init(ptr nocapture noundef readonly %adev) unnamed_addr #4 align 64 {
entry:
  %group = alloca %struct.attribute_group, align 4
  %attrs = alloca [2 x ptr], align 4
  %bin_attrs = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %group) #16
  %2 = getelementptr inbounds %struct.attribute_group, ptr %group, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %group, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 16)
  %5 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.96, ptr %group, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %attrs) #16
  %6 = getelementptr inbounds [2 x ptr], ptr %attrs, i32 0, i32 1
  %features_attr = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %features_attr, ptr %attrs, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bin_attrs) #16
  %9 = ptrtoint ptr %bin_attrs to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %bin_attrs, align 8
  %10 = call ptr @memcpy(ptr %features_attr, ptr @dev_attr_features, i32 28)
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %attrs, ptr %2, align 4
  %key = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @amdgpu_ras_fs_init.__key, ptr %key, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %13 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %14 = getelementptr inbounds %struct.attribute_group, ptr %group, i32 0, i32 4
  store ptr null, ptr getelementptr inbounds (%struct.bin_attribute, ptr @bin_attr_gpu_vram_bad_pages, i32 0, i32 2), align 4
  %badpages_attr = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %badpages_attr, ptr @bin_attr_gpu_vram_bad_pages, i32 44)
  %16 = ptrtoint ptr %bin_attrs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %badpages_attr, ptr %bin_attrs, align 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bin_attrs, ptr %14, align 4
  %key10 = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 3, i32 0, i32 3
  %18 = ptrtoint ptr %key10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @amdgpu_ras_fs_init.__key.157, ptr %key10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adev, align 8
  %call = call i32 @sysfs_create_group(ptr noundef %20, ptr noundef nonnull %group) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %do.end16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.158) #20
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bin_attrs) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attrs) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %group) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_late_init(ptr noundef %adev, ptr noundef %ras_block, ptr noundef %fs_info, ptr noundef %ih_info) local_unnamed_addr #4 align 64 {
entry:
  %info.i = alloca %struct.ras_query_if, align 4
  %ue_count = alloca i32, align 4
  %ce_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ue_count) #16
  %2 = ptrtoint ptr %ue_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ue_count, align 4, !annotation !359
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ce_count) #16
  %3 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ce_count, align 4, !annotation !359
  %4 = ptrtoint ptr %ras_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ras_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp.i = icmp ugt i32 %5, 14
  %tobool.not.i71 = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not.i71, label %if.end.i.cleanup39_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i.cleanup39_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

amdgpu_ras_is_supported.exit:                     ; preds = %if.end.i
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %6 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ras_enabled.i, align 8
  %8 = shl nuw nsw i32 1, %5
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %amdgpu_ras_is_supported.exit.if.end.i72_crit_edge, label %if.end

amdgpu_ras_is_supported.exit.if.end.i72_crit_edge: ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i72

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i71, label %if.then.cleanup39_crit_edge, label %if.then.if.end.i72_crit_edge

if.then.if.end.i72_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i72

if.then.cleanup39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

if.end.i72:                                       ; preds = %if.then.if.end.i72_crit_edge, %amdgpu_ras_is_supported.exit.if.end.i72_crit_edge
  %flags.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else31.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i72
  %call12.i = tail call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %ras_block, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then2.i.cleanup39_crit_edge

if.then2.i.cleanup39_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

if.end15.i:                                       ; preds = %if.then2.i
  %12 = ptrtoint ptr %ras_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ras_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16.i = icmp eq i32 %13, 2
  br i1 %cmp16.i, label %if.then17.i, label %if.end15.i.if.end19.i_crit_edge

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %or.i = or i32 %15, 4
  store i32 %or.i, ptr %1, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end19.i_crit_edge
  %call20.i = tail call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %ras_block, i1 noundef zeroext false) #16
  %ras_enabled.i73 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %16 = ptrtoint ptr %ras_enabled.i73 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ras_enabled.i73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not.i = icmp eq i32 %17, 0
  br i1 %tobool21.not.i, label %if.end19.i.cleanup39_crit_edge, label %land.lhs.true.i

if.end19.i.cleanup39_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

land.lhs.true.i:                                  ; preds = %if.end19.i
  %18 = ptrtoint ptr %ras_block to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ras_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp23.i = icmp eq i32 %19, 2
  br i1 %cmp23.i, label %if.then24.i, label %land.lhs.true.i.cleanup39_crit_edge

land.lhs.true.i.cleanup39_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 8
  %and28.i = and i32 %21, -5
  store i32 %and28.i, ptr %1, align 8
  br label %cleanup39

if.else31.i:                                      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #18
  %call33.i = tail call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %ras_block, i1 noundef zeroext false) #16
  br label %cleanup39

if.end:                                           ; preds = %amdgpu_ras_is_supported.exit
  %call2 = tail call i32 @amdgpu_ras_feature_enable_on_boot(ptr noundef %adev, ptr noundef %ras_block, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 137
  %22 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_suspend, align 1, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not = icmp eq i8 %23, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then4
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #16
  %24 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not = icmp eq i32 %25, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup39_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.cleanup39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %info.i) #16
  %26 = call ptr @memcpy(ptr %info.i, ptr %ras_block, i32 44)
  %ue_count.i = getelementptr inbounds %struct.ras_query_if, ptr %info.i, i32 0, i32 1
  %27 = ptrtoint ptr %ue_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ue_count.i, align 4
  %ce_count.i = getelementptr inbounds %struct.ras_query_if, ptr %info.i, i32 0, i32 2
  %28 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ce_count.i, align 4
  %connected_to_cpu.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %29 = ptrtoint ptr %connected_to_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %connected_to_cpu.i.i, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i75 = icmp eq i8 %30, 0
  br i1 %tobool.not.i75, label %if.end9.amdgpu_persistent_edc_harvesting.exit_crit_edge, label %if.end.i76

if.end9.amdgpu_persistent_edc_harvesting.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_persistent_edc_harvesting.exit

if.end.i76:                                       ; preds = %if.end9
  %call1.i = call i32 @amdgpu_ras_query_error_status(ptr noundef %adev, ptr noundef nonnull %info.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end.i76.if.end4.i_crit_edge, label %do.end.i

if.end.i76.if.end4.i_crit_edge:                   ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #20
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.i76.if.end4.i_crit_edge
  %31 = ptrtoint ptr %ras_block to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ras_block, align 4
  %call5.i = call i32 @amdgpu_ras_reset_error_status(ptr noundef %adev, i32 noundef %32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.not.i, label %if.end4.i.amdgpu_persistent_edc_harvesting.exit_crit_edge, label %do.end10.i

if.end4.i.amdgpu_persistent_edc_harvesting.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_persistent_edc_harvesting.exit

do.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %call12.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #20
  br label %amdgpu_persistent_edc_harvesting.exit

amdgpu_persistent_edc_harvesting.exit:            ; preds = %do.end10.i, %if.end4.i.amdgpu_persistent_edc_harvesting.exit_crit_edge, %if.end9.amdgpu_persistent_edc_harvesting.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info.i) #16
  %in_suspend11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 137
  %33 = ptrtoint ptr %in_suspend11 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %in_suspend11, align 1, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool12.not = icmp eq i8 %34, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %amdgpu_persistent_edc_harvesting.exit.cleanup39_crit_edge

amdgpu_persistent_edc_harvesting.exit.cleanup39_crit_edge: ; preds = %amdgpu_persistent_edc_harvesting.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

lor.lhs.false13:                                  ; preds = %amdgpu_persistent_edc_harvesting.exit
  %in_gpu_reset.i78 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i79 = call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i78, i32 noundef 4) #16
  %35 = ptrtoint ptr %in_gpu_reset.i78 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %in_gpu_reset.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool15.not = icmp eq i32 %36, 0
  br i1 %tobool15.not, label %if.end17, label %lor.lhs.false13.cleanup39_crit_edge

lor.lhs.false13.cleanup39_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

if.end17:                                         ; preds = %lor.lhs.false13
  %cb = getelementptr inbounds %struct.ras_ih_if, ptr %ih_info, i32 0, i32 1
  %37 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cb, align 4
  %tobool18.not = icmp eq ptr %38, null
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %call20 = call i32 @amdgpu_ras_interrupt_add_handler(ptr noundef %adev, ptr noundef %ih_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.interrupt_crit_edge

if.then19.interrupt_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %interrupt

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %call25 = call i32 @amdgpu_ras_sysfs_create(ptr noundef %adev, ptr noundef %fs_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.sysfs_crit_edge

if.end24.sysfs_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %sysfs

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @amdgpu_ras_query_error_count(ptr noundef %adev, ptr noundef nonnull %ce_count, ptr noundef nonnull %ue_count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp eq i32 %call29, 0
  br i1 %cmp, label %if.then30, label %if.end28.cleanup39_crit_edge

if.end28.cleanup39_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup39

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %ras_ce_count = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 20
  %39 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ce_count, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ras_ce_count, i32 noundef 4) #16
  %41 = ptrtoint ptr %ras_ce_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %40, ptr %ras_ce_count, align 4
  %ras_ue_count = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %ue_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ue_count, align 4
  %call.i.i70 = call zeroext i1 @__kasan_check_write(ptr noundef %ras_ue_count, i32 noundef 4) #16
  %44 = ptrtoint ptr %ras_ue_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %43, ptr %ras_ue_count, align 4
  br label %cleanup39

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %call32 = tail call i32 @amdgpu_ras_sysfs_remove(ptr noundef %adev, ptr noundef %ras_block)
  br label %sysfs

sysfs:                                            ; preds = %cleanup, %if.end24.sysfs_crit_edge
  %r.0 = phi i32 [ %call2, %cleanup ], [ %call25, %if.end24.sysfs_crit_edge ]
  %cb33 = getelementptr inbounds %struct.ras_ih_if, ptr %ih_info, i32 0, i32 1
  %45 = ptrtoint ptr %cb33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cb33, align 4
  %tobool34.not = icmp eq ptr %46, null
  br i1 %tobool34.not, label %sysfs.interrupt_crit_edge, label %if.then35

sysfs.interrupt_crit_edge:                        ; preds = %sysfs
  call void @__sanitizer_cov_trace_pc() #18
  br label %interrupt

if.then35:                                        ; preds = %sysfs
  call void @__sanitizer_cov_trace_pc() #18
  %call36 = call i32 @amdgpu_ras_interrupt_remove_handler(ptr noundef %adev, ptr noundef %ih_info)
  br label %interrupt

interrupt:                                        ; preds = %if.then35, %sysfs.interrupt_crit_edge, %if.then19.interrupt_crit_edge
  %r.1 = phi i32 [ %r.0, %if.then35 ], [ %r.0, %sysfs.interrupt_crit_edge ], [ %call20, %if.then19.interrupt_crit_edge ]
  %call38 = call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %ras_block, i1 noundef zeroext false)
  br label %cleanup39

cleanup39:                                        ; preds = %interrupt, %if.then30, %if.end28.cleanup39_crit_edge, %lor.lhs.false13.cleanup39_crit_edge, %amdgpu_persistent_edc_harvesting.exit.cleanup39_crit_edge, %lor.lhs.false.cleanup39_crit_edge, %if.else31.i, %if.then24.i, %land.lhs.true.i.cleanup39_crit_edge, %if.end19.i.cleanup39_crit_edge, %if.then2.i.cleanup39_crit_edge, %if.then.cleanup39_crit_edge, %if.end.i.cleanup39_crit_edge
  %retval.0 = phi i32 [ %r.1, %interrupt ], [ %call2, %lor.lhs.false.cleanup39_crit_edge ], [ 0, %lor.lhs.false13.cleanup39_crit_edge ], [ 0, %amdgpu_persistent_edc_harvesting.exit.cleanup39_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end28.cleanup39_crit_edge ], [ 0, %if.then.cleanup39_crit_edge ], [ 0, %if.then2.i.cleanup39_crit_edge ], [ 0, %if.end19.i.cleanup39_crit_edge ], [ 0, %land.lhs.true.i.cleanup39_crit_edge ], [ 0, %if.then24.i ], [ 0, %if.else31.i ], [ 0, %if.end.i.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ce_count) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ue_count) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ras_late_fini(ptr nocapture noundef readonly %adev, ptr noundef %ras_block, ptr noundef %ih_info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ras_block, null
  %tobool1.not = icmp eq ptr %ih_info, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end:                                           ; preds = %entry
  %call = tail call i32 @amdgpu_ras_sysfs_remove(ptr noundef %adev, ptr noundef nonnull %ras_block)
  %cb = getelementptr inbounds %struct.ras_ih_if, ptr %ih_info, i32 0, i32 1
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 @amdgpu_ras_interrupt_remove_handler(ptr noundef %adev, ptr noundef nonnull %ih_info)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ras_resume(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  %head.i = alloca %struct.ras_common_if, align 4
  %head14.i = alloca %struct.ras_common_if, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool1.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.then.cleanup_crit_edge, label %land.lhs.true.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then3.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %and5.i = and i32 %5, -5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and5.i, ptr %1, align 8
  %7 = ptrtoint ptr %ras to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ras, align 8
  tail call void @kfree(ptr noundef nonnull %1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %type.i = getelementptr inbounds %struct.ras_common_if, ptr %head.i, i32 0, i32 1
  %10 = getelementptr inbounds i8, ptr %head.i, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then3
  %i.04.i = phi i32 [ 0, %if.then3 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %head.i) #16
  %11 = call ptr @memset(ptr %10, i32 0, i32 36)
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.04.i, ptr %head.i, align 4
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.04.i)
  %cmp1.i = icmp eq i32 %i.04.i, 14
  br i1 %cmp1.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %head.i) #16
  br label %for.end.i

cleanup.i:                                        ; preds = %for.body.i
  %call.i = call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef nonnull %head.i, i32 noundef 1) #16
  %tobool3.not.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %head.i) #16
  %inc.i = add nuw nsw i32 %i.04.i, 1
  br i1 %tobool3.not.not.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %cleanup.thread.i
  %type16.i = getelementptr inbounds %struct.ras_common_if, ptr %head14.i, i32 0, i32 1
  %sub_block_index.i = getelementptr inbounds %struct.ras_common_if, ptr %head14.i, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.ras_common_if, ptr %head14.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %head14.i) #16
  %14 = ptrtoint ptr %head14.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 14, ptr %head14.i, align 4
  %15 = call ptr @memset(ptr %type16.i, i32 0, i32 40)
  %call19.i = call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef nonnull %head14.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %head14.i) #16
  br i1 %tobool20.not.i, label %for.cond11.i, label %for.end.i.amdgpu_ras_enable_all_features.exit_crit_edge

for.end.i.amdgpu_ras_enable_all_features.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_enable_all_features.exit

for.cond11.i:                                     ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %head14.i) #16
  %16 = ptrtoint ptr %head14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 14, ptr %head14.i, align 4
  %17 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type16.i, align 4
  %18 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %sub_block_index.i, align 4
  %19 = call ptr @memset(ptr %name.i, i32 0, i32 32)
  %call19.1.i = call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef nonnull %head14.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1.i)
  %tobool20.not.1.i = icmp eq i32 %call19.1.i, 0
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %head14.i) #16
  br i1 %tobool20.not.1.i, label %for.cond11.1.i, label %for.cond11.i.amdgpu_ras_enable_all_features.exit_crit_edge

for.cond11.i.amdgpu_ras_enable_all_features.exit_crit_edge: ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_enable_all_features.exit

for.cond11.1.i:                                   ; preds = %for.cond11.i
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %head14.i) #16
  %20 = ptrtoint ptr %head14.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 14, ptr %head14.i, align 4
  %21 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type16.i, align 4
  %22 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %sub_block_index.i, align 4
  %23 = call ptr @memset(ptr %name.i, i32 0, i32 32)
  %call19.2.i = call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef nonnull %head14.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2.i)
  %tobool20.not.2.i = icmp eq i32 %call19.2.i, 0
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %head14.i) #16
  br i1 %tobool20.not.2.i, label %for.cond11.2.i, label %for.cond11.1.i.amdgpu_ras_enable_all_features.exit_crit_edge

for.cond11.1.i.amdgpu_ras_enable_all_features.exit_crit_edge: ; preds = %for.cond11.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_enable_all_features.exit

for.cond11.2.i:                                   ; preds = %for.cond11.1.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %head14.i) #16
  %24 = ptrtoint ptr %head14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 14, ptr %head14.i, align 4
  %25 = ptrtoint ptr %type16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type16.i, align 4
  %26 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %sub_block_index.i, align 4
  %27 = call ptr @memset(ptr %name.i, i32 0, i32 32)
  %call19.3.i = call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef nonnull %head14.i, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %head14.i) #16
  br label %amdgpu_ras_enable_all_features.exit

amdgpu_ras_enable_all_features.exit:              ; preds = %for.cond11.2.i, %for.cond11.1.i.amdgpu_ras_enable_all_features.exit_crit_edge, %for.cond11.i.amdgpu_ras_enable_all_features.exit_crit_edge, %for.end.i.amdgpu_ras_enable_all_features.exit_crit_edge
  %head = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head, align 4
  %cmp.not74 = icmp eq ptr %29, %head
  br i1 %cmp.not74, label %amdgpu_ras_enable_all_features.exit.cleanup_crit_edge, label %amdgpu_ras_enable_all_features.exit.for.body_crit_edge

amdgpu_ras_enable_all_features.exit.for.body_crit_edge: ; preds = %amdgpu_ras_enable_all_features.exit
  br label %for.body

amdgpu_ras_enable_all_features.exit.cleanup_crit_edge: ; preds = %amdgpu_ras_enable_all_features.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %amdgpu_ras_enable_all_features.exit.for.body_crit_edge
  %.pn.in75 = phi ptr [ %.pn77, %for.inc.for.body_crit_edge ], [ %29, %amdgpu_ras_enable_all_features.exit.for.body_crit_edge ]
  %obj.076 = getelementptr i8, ptr %.pn.in75, i32 -48
  %30 = ptrtoint ptr %.pn.in75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn77 = load ptr, ptr %.pn.in75, align 4
  %31 = ptrtoint ptr %obj.076 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %obj.076, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %32)
  %cmp.i65 = icmp ugt i32 %32, 14
  br i1 %cmp.i65, label %for.body.if.then14_crit_edge, label %if.end.i67

for.body.if.then14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

if.end.i67:                                       ; preds = %for.body
  %33 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ras, align 8
  %tobool.not.i66 = icmp eq ptr %34, null
  br i1 %tobool.not.i66, label %if.end.i67.if.then14_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i67.if.then14_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

amdgpu_ras_is_supported.exit:                     ; preds = %if.end.i67
  %35 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ras_enabled, align 8
  %37 = shl nuw nsw i32 1, %32
  %38 = and i32 %36, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool13.not = icmp eq i32 %38, 0
  br i1 %tobool13.not, label %amdgpu_ras_is_supported.exit.if.then14_crit_edge, label %amdgpu_ras_is_supported.exit.for.inc_crit_edge

amdgpu_ras_is_supported.exit.for.inc_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

amdgpu_ras_is_supported.exit.if.then14_crit_edge: ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

if.then14:                                        ; preds = %amdgpu_ras_is_supported.exit.if.then14_crit_edge, %if.end.i67.if.then14_crit_edge, %for.body.if.then14_crit_edge
  %call16 = call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %obj.076, i1 noundef zeroext false)
  %use = getelementptr i8, ptr %.pn.in75, i32 -4
  %39 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool17.not = icmp eq i32 %40, 0
  br i1 %tobool17.not, label %if.then14.for.inc_crit_edge, label %do.end, !prof !351

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 2552, i32 noundef 9, ptr noundef null) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then14.for.inc_crit_edge, %amdgpu_ras_is_supported.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn77, %head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %amdgpu_ras_enable_all_features.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then3.i, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_release_ras_context(ptr nocapture noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %and5 = and i32 %5, -5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and5, ptr %1, align 8
  %7 = ptrtoint ptr %ras to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ras, align 8
  tail call void @kfree(ptr noundef nonnull %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ras_suspend(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 4
  %cmp.not4.i = icmp eq ptr %5, %head.i
  br i1 %cmp.not4.i, label %if.end.amdgpu_ras_disable_all_features.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.amdgpu_ras_disable_all_features.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_disable_all_features.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn6.in.i = phi ptr [ %.pn6.i, %for.body.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %obj.05.i = getelementptr i8, ptr %.pn6.in.i, i32 -48
  %6 = ptrtoint ptr %.pn6.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn6.i = load ptr, ptr %.pn6.in.i, align 4
  %call12.i = tail call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %obj.05.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp ne i32 %call12.i, 0
  %cmp.not.old.i = icmp eq ptr %.pn6.i, %head.i
  %or.cond7.i = select i1 %tobool13.not.i, i1 true, i1 %cmp.not.old.i
  br i1 %or.cond7.i, label %for.body.i.amdgpu_ras_disable_all_features.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.amdgpu_ras_disable_all_features.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_disable_all_features.exit

amdgpu_ras_disable_all_features.exit:             ; preds = %for.body.i.amdgpu_ras_disable_all_features.exit_crit_edge, %if.end.amdgpu_ras_disable_all_features.exit_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %amdgpu_ras_disable_all_features.exit.cleanup_crit_edge, label %if.then3

amdgpu_ras_disable_all_features.exit.cleanup_crit_edge: ; preds = %amdgpu_ras_disable_all_features.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %amdgpu_ras_disable_all_features.exit
  %9 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ras, align 8
  %head.i11 = getelementptr inbounds %struct.amdgpu_ras, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %head.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i11, align 4
  %cmp.not4.i12 = icmp eq ptr %12, %head.i11
  br i1 %cmp.not4.i12, label %if.then3.cleanup_crit_edge, label %if.then3.for.body.i16_crit_edge

if.then3.for.body.i16_crit_edge:                  ; preds = %if.then3
  br label %for.body.i16

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %if.then3.for.body.i16_crit_edge
  %.pn6.in.i13 = phi ptr [ %.pn6.i15, %for.body.i16.for.body.i16_crit_edge ], [ %12, %if.then3.for.body.i16_crit_edge ]
  %obj.05.i14 = getelementptr i8, ptr %.pn6.in.i13, i32 -48
  %13 = ptrtoint ptr %.pn6.in.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn6.i15 = load ptr, ptr %.pn6.in.i13, align 4
  %call.i = tail call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %obj.05.i14, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp ne i32 %call.i, 0
  %cmp.not.i = icmp eq ptr %.pn6.i15, %head.i11
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %for.body.i16.cleanup_crit_edge, label %for.body.i16.for.body.i16_crit_edge

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i16

for.body.i16.cleanup_crit_edge:                   ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.body.i16.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %amdgpu_ras_disable_all_features.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_pre_fini(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %0 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %2 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ras, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %head.i = getelementptr inbounds %struct.amdgpu_ras, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 4
  %cmp.not4.i = icmp eq ptr %5, %head.i
  br i1 %cmp.not4.i, label %if.end.amdgpu_ras_disable_all_features.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.amdgpu_ras_disable_all_features.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_disable_all_features.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn6.in.i = phi ptr [ %.pn6.i, %for.body.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %obj.05.i = getelementptr i8, ptr %.pn6.in.i, i32 -48
  %6 = ptrtoint ptr %.pn6.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn6.i = load ptr, ptr %.pn6.in.i, align 4
  %call12.i = tail call i32 @amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %obj.05.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp ne i32 %call12.i, 0
  %cmp.not.old.i = icmp eq ptr %.pn6.i, %head.i
  %or.cond7.i = select i1 %tobool13.not.i, i1 true, i1 %cmp.not.old.i
  br i1 %or.cond7.i, label %for.body.i.amdgpu_ras_disable_all_features.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.amdgpu_ras_disable_all_features.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_disable_all_features.exit

amdgpu_ras_disable_all_features.exit:             ; preds = %for.body.i.amdgpu_ras_disable_all_features.exit_crit_edge, %if.end.amdgpu_ras_disable_all_features.exit_crit_edge
  %7 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ras, align 8
  %eh_data.i = getelementptr inbounds %struct.amdgpu_ras, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %eh_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eh_data.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %amdgpu_ras_disable_all_features.exit.cleanup_crit_edge, label %if.end.i

amdgpu_ras_disable_all_features.exit.cleanup_crit_edge: ; preds = %amdgpu_ras_disable_all_features.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %amdgpu_ras_disable_all_features.exit
  call void @__sanitizer_cov_trace_pc() #18
  %recovery_work.i = getelementptr inbounds %struct.amdgpu_ras, ptr %8, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %recovery_work.i) #16
  %recovery_lock.i = getelementptr inbounds %struct.amdgpu_ras, ptr %8, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %recovery_lock.i, i32 noundef 0) #16
  %11 = ptrtoint ptr %eh_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %eh_data.i, align 8
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %13) #16
  tail call void @kfree(ptr noundef nonnull %10) #16
  tail call void @mutex_unlock(ptr noundef %recovery_lock.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %amdgpu_ras_disable_all_features.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ras_fini(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  %info.i = alloca %struct.ras_ih_if, align 4
  %attrs.i.i.i = alloca [2 x ptr], align 4
  %group.i.i.i = alloca %struct.attribute_group, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %ras_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 167
  %2 = ptrtoint ptr %ras_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ras_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 4
  %cmp.not4.i = icmp eq ptr %5, %head.i
  br i1 %cmp.not4.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in5.i = phi ptr [ %.pn6.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn6.i = load ptr, ptr %.pn.in5.i, align 4
  %con_obj.0.i = getelementptr i8, ptr %.pn.in5.i, i32 -48
  %call.i = tail call ptr @amdgpu_ras_find_obj(ptr noundef %adev, ptr noundef %con_obj.0.i) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %use.i.i = getelementptr inbounds %struct.ras_manager, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %use.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %use.i.i, align 4
  %dec.i.i = add i32 %8, -1
  store i32 %dec.i.i, ptr %use.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.land.lhs.true2.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true2.i.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true2.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %node.i.i = getelementptr inbounds %struct.ras_manager, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i, align 4
  %11 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %15 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ras_manager, ptr %call.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %use.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr.i.i = load i32, ptr %use.i.i, align 4
  br label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %list_del.exit.i.i, %land.lhs.true.i.i.land.lhs.true2.i.i_crit_edge
  %18 = phi i32 [ %dec.i.i, %land.lhs.true.i.i.land.lhs.true2.i.i_crit_edge ], [ %.pr.i.i, %list_del.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i.i = icmp slt i32 %18, 0
  br i1 %cmp4.i.i, label %if.end.i.i.i, label %land.lhs.true2.i.i.for.inc.i_crit_edge

land.lhs.true2.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %land.lhs.true2.i.i
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp.i.i.i = icmp ugt i32 %20, 14
  br i1 %cmp.i.i.i, label %if.end.i.i.i.get_ras_block_str.exit.i.i_crit_edge, label %if.end2.i.i.i

if.end.i.i.i.get_ras_block_str.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_ras_block_str.exit.i.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp4.i.i.i = icmp eq i32 %20, 14
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end6.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub_block_index.i.i.i = getelementptr inbounds %struct.ras_common_if, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %sub_block_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sub_block_index.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x ptr], ptr @ras_mca_block_string, i32 0, i32 %22
  br label %return.sink.split.i.i.i

if.end6.i.i.i:                                    ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i.i.i = getelementptr [15 x ptr], ptr @ras_block_string, i32 0, i32 %20
  br label %return.sink.split.i.i.i

return.sink.split.i.i.i:                          ; preds = %if.end6.i.i.i, %if.then5.i.i.i
  %arrayidx8.sink.i.i.i = phi ptr [ %arrayidx8.i.i.i, %if.end6.i.i.i ], [ %arrayidx.i.i.i, %if.then5.i.i.i ]
  %23 = ptrtoint ptr %arrayidx8.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx8.sink.i.i.i, align 4
  br label %get_ras_block_str.exit.i.i

get_ras_block_str.exit.i.i:                       ; preds = %return.sink.split.i.i.i, %if.end.i.i.i.get_ras_block_str.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ @.str.25, %if.end.i.i.i.get_ras_block_str.exit.i.i_crit_edge ], [ %24, %return.sink.split.i.i.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %get_ras_block_str.exit.i.i, %land.lhs.true2.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn6.i, %head.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %25 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ras, align 8
  %head.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i, align 4
  %cmp.not3.i.i = icmp eq ptr %28, %head.i.i
  br i1 %cmp.not3.i.i, label %for.end.i.for.end.i.i_crit_edge, label %for.end.i.for.body.i.i_crit_edge

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.end.i.for.end.i.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %.pn.in4.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %28, %for.end.i.for.body.i.i_crit_edge ]
  %obj.0.i.i = getelementptr i8, ptr %.pn.in4.i.i, i32 -48
  %29 = ptrtoint ptr %.pn.in4.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i = load ptr, ptr %.pn.in4.i.i, align 4
  %call.i.i = tail call i32 @amdgpu_ras_sysfs_remove(ptr noundef %adev, ptr noundef %obj.0.i.i) #16
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %head.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.end.i.for.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %30 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp14.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp14.not.i.i, label %for.end.i.i.amdgpu_ras_fs_fini.exit_crit_edge, label %if.then.i2.i

for.end.i.i.amdgpu_ras_fs_fini.exit_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_fs_fini.exit

if.then.i2.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ras, align 8
  %33 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adev, align 8
  %badpages_attr.i.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %32, i32 0, i32 3
  tail call void @sysfs_remove_file_from_group(ptr noundef %34, ptr noundef %badpages_attr.i.i.i, ptr noundef nonnull @.str.96) #16
  br label %amdgpu_ras_fs_fini.exit

amdgpu_ras_fs_fini.exit:                          ; preds = %if.then.i2.i, %for.end.i.i.amdgpu_ras_fs_fini.exit_crit_edge
  %35 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ras, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %attrs.i.i.i) #16
  %37 = getelementptr inbounds [2 x ptr], ptr %attrs.i.i.i, i32 0, i32 1
  %features_attr.i.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %36, i32 0, i32 2
  %38 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %features_attr.i.i.i, ptr %attrs.i.i.i, align 4
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %group.i.i.i) #16
  %40 = getelementptr inbounds %struct.attribute_group, ptr %group.i.i.i, i32 0, i32 1
  %41 = getelementptr inbounds %struct.attribute_group, ptr %group.i.i.i, i32 0, i32 2
  %42 = getelementptr inbounds %struct.attribute_group, ptr %group.i.i.i, i32 0, i32 3
  %43 = getelementptr inbounds %struct.attribute_group, ptr %group.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.96, ptr %group.i.i.i, align 4
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %40, align 4
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %41, align 4
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %attrs.i.i.i, ptr %42, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %43, align 4
  %49 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adev, align 8
  call void @sysfs_remove_group(ptr noundef %50, ptr noundef nonnull %group.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %group.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attrs.i.i.i) #16
  %51 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ras, align 8
  %head.i45 = getelementptr inbounds %struct.amdgpu_ras, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %head.i45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i45, align 4
  %cmp.not2.i = icmp eq ptr %54, %head.i45
  br i1 %cmp.not2.i, label %amdgpu_ras_fs_fini.exit.amdgpu_ras_interrupt_remove_all.exit_crit_edge, label %for.body.lr.ph.i

amdgpu_ras_fs_fini.exit.amdgpu_ras_interrupt_remove_all.exit_crit_edge: ; preds = %amdgpu_ras_fs_fini.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_interrupt_remove_all.exit

for.body.lr.ph.i:                                 ; preds = %amdgpu_ras_fs_fini.exit
  %cb.i = getelementptr inbounds %struct.ras_ih_if, ptr %info.i, i32 0, i32 1
  br label %for.body.i48

for.body.i48:                                     ; preds = %for.body.i48.for.body.i48_crit_edge, %for.body.lr.ph.i
  %.pn.in3.i = phi ptr [ %54, %for.body.lr.ph.i ], [ %.pn.i, %for.body.i48.for.body.i48_crit_edge ]
  %obj.0.i = getelementptr i8, ptr %.pn.in3.i, i32 -48
  %55 = ptrtoint ptr %.pn.in3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn.in3.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info.i) #16
  %56 = call ptr @memset(ptr %info.i, i32 255, i32 48)
  %57 = call ptr @memcpy(ptr %info.i, ptr %obj.0.i, i32 44)
  %58 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %cb.i, align 4
  %call.i46 = call i32 @amdgpu_ras_interrupt_remove_handler(ptr noundef %adev, ptr noundef nonnull %info.i) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i) #16
  %cmp.not.i47 = icmp eq ptr %.pn.i, %head.i45
  br i1 %cmp.not.i47, label %for.body.i48.amdgpu_ras_interrupt_remove_all.exit_crit_edge, label %for.body.i48.for.body.i48_crit_edge

for.body.i48.for.body.i48_crit_edge:              ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i48

for.body.i48.amdgpu_ras_interrupt_remove_all.exit_crit_edge: ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_interrupt_remove_all.exit

amdgpu_ras_interrupt_remove_all.exit:             ; preds = %for.body.i48.amdgpu_ras_interrupt_remove_all.exit_crit_edge, %amdgpu_ras_fs_fini.exit.amdgpu_ras_interrupt_remove_all.exit_crit_edge
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool3.not = icmp eq i32 %60, 0
  br i1 %tobool3.not, label %amdgpu_ras_interrupt_remove_all.exit.if.end29_crit_edge, label %if.end18, !prof !351

amdgpu_ras_interrupt_remove_all.exit.if.end29_crit_edge: ; preds = %amdgpu_ras_interrupt_remove_all.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end18:                                         ; preds = %amdgpu_ras_interrupt_remove_all.exit
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 2596, i32 noundef 9, ptr noundef nonnull @.str.73) #16
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end18.if.end29_crit_edge, label %if.then27

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then27:                                        ; preds = %if.end18
  %62 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ras, align 8
  %head.i51 = getelementptr inbounds %struct.amdgpu_ras, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %head.i51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i51, align 4
  %cmp.not4.i52 = icmp eq ptr %65, %head.i51
  br i1 %cmp.not4.i52, label %if.then27.if.end29_crit_edge, label %if.then27.for.body.i54_crit_edge

if.then27.for.body.i54_crit_edge:                 ; preds = %if.then27
  br label %for.body.i54

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %if.then27.for.body.i54_crit_edge
  %.pn6.in.i = phi ptr [ %.pn6.i53, %for.body.i54.for.body.i54_crit_edge ], [ %65, %if.then27.for.body.i54_crit_edge ]
  %obj.05.i = getelementptr i8, ptr %.pn6.in.i, i32 -48
  %66 = ptrtoint ptr %.pn6.in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn6.i53 = load ptr, ptr %.pn6.in.i, align 4
  %call.i55 = call fastcc i32 @__amdgpu_ras_feature_enable(ptr noundef %adev, ptr noundef %obj.05.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool9.not.i = icmp ne i32 %call.i55, 0
  %cmp.not.i56 = icmp eq ptr %.pn6.i53, %head.i51
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %cmp.not.i56
  br i1 %or.cond.i, label %for.body.i54.if.end29_crit_edge, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i54

for.body.i54.if.end29_crit_edge:                  ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end29:                                         ; preds = %for.body.i54.if.end29_crit_edge, %if.then27.if.end29_crit_edge, %if.end18.if.end29_crit_edge, %amdgpu_ras_interrupt_remove_all.exit.if.end29_crit_edge
  %ras_counte_delay_work = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 18
  %call30 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ras_counte_delay_work) #16
  %67 = ptrtoint ptr %ras to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %ras, align 8
  call void @kfree(ptr noundef nonnull %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ras_global_ras_isr(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amdgpu_ras_check_supported(ptr noundef %adev)
  %ras_hw_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 166
  %0 = ptrtoint ptr %ras_hw_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ras_hw_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !360
  tail call void @llvm.prefetch.p0(ptr nonnull @amdgpu_ras_in_intr, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @amdgpu_ras_in_intr, ptr nonnull @amdgpu_ras_in_intr, i32 0, i32 1, ptr nonnull elementtype(i32) @amdgpu_ras_in_intr) #16, !srcloc !361
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !362
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp, label %do.end, label %atomic_cmpxchg.exit.if.end3_crit_edge

atomic_cmpxchg.exit.if.end3_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

do.end:                                           ; preds = %atomic_cmpxchg.exit
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.74) #20
  %ras1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %5 = ptrtoint ptr %ras1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ras1.i, align 8
  %in_recovery.i = getelementptr inbounds %struct.amdgpu_ras, ptr %6, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_recovery.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !360
  tail call void @llvm.prefetch.p0(ptr %in_recovery.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.end
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %in_recovery.i, ptr %in_recovery.i, i32 0, i32 1, ptr elementtype(i32) %in_recovery.i) #16, !srcloc !361
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !362
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %atomic_cmpxchg.exit.i.if.end3_crit_edge

atomic_cmpxchg.exit.i.if.end3_crit_edge:          ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then.i:                                        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %recovery_work.i = getelementptr inbounds %struct.amdgpu_ras, ptr %6, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i1.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %recovery_work.i) #16
  br label %if.end3

if.end3:                                          ; preds = %if.then.i, %atomic_cmpxchg.exit.i.if.end3_crit_edge, %atomic_cmpxchg.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_ras_need_emergency_restart(ptr noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cmp = icmp eq i32 %1, 21
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true:                                    ; preds = %entry
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 17
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2634753, i32 %3)
  %cmp1 = icmp ult i32 %3, 2634753
  br i1 %cmp1, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %land.lhs.true
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_funcs, align 4
  %reset_method = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %reset_method to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_method, align 4
  %call = tail call i32 %7(ptr noundef %adev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp2 = icmp eq i32 %call, 4
  br i1 %cmp2, label %if.then.return_crit_edge, label %land.rhs

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.rhs:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #16
  %8 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i = icmp ne i32 %8, 0
  br label %return

return:                                           ; preds = %land.rhs, %if.then.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then.return_crit_edge ], [ %tobool.i, %land.rhs ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_get_ecc_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_set_df_cstate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_allow_xgmi_power_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ras_debugfs_set_ret_size(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ras_debugfs_ctrl_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #4 align 64 {
entry:
  %err_rec.i = alloca %struct.eeprom_table_record, align 8
  %str.i = alloca [65 x i8], align 1
  %block_name.i = alloca [33 x i8], align 1
  %err.i = alloca [9 x i8], align 1
  %sub_block.i = alloca i32, align 4
  %address.i = alloca i64, align 8
  %value.i = alloca i64, align 8
  %data = alloca %struct.ras_debug_if, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %data) #16
  %4 = call ptr @memset(ptr %data, i32 255, i32 72)
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %land.lhs.true.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true.i:                                  ; preds = %entry
  %ras.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 113, i32 34, i32 1
  %5 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ras.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end_crit_edge, label %amdgpu_ras_get_error_query_ready.exit

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

amdgpu_ras_get_error_query_ready.exit:            ; preds = %land.lhs.true.i
  %error_query_ready.i = getelementptr inbounds %struct.amdgpu_ras, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %error_query_ready.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %error_query_ready.i, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.i.not = icmp eq i8 %8, 0
  br i1 %tobool5.i.not, label %amdgpu_ras_get_error_query_ready.exit.do.end_crit_edge, label %if.end

amdgpu_ras_get_error_query_ready.exit.do.end_crit_edge: ; preds = %amdgpu_ras_get_error_query_ready.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %amdgpu_ras_get_error_query_ready.exit.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %entry.do.end_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.107) #20
  br label %cleanup

if.end:                                           ; preds = %amdgpu_ras_get_error_query_ready.exit
  %11 = tail call i32 @llvm.umin.i32(i32 %size, i32 64) #16
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %str.i) #16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %block_name.i) #16
  %12 = call ptr @memset(ptr %block_name.i, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %err.i) #16
  %13 = call ptr @memcpy(ptr %err.i, ptr @__const.amdgpu_ras_debugfs_ctrl_parse_data.err, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sub_block.i) #16
  %14 = ptrtoint ptr %sub_block.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %sub_block.i, align 4, !annotation !359
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %address.i) #16
  %15 = ptrtoint ptr %address.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %address.i, align 8, !annotation !359
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #16
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %value.i, align 8, !annotation !359
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not.i65 = icmp eq i64 %18, 0
  br i1 %tobool.not.i65, label %if.end.i, label %if.end.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge

if.end.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i32 %size to i64
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv.i, ptr %pos, align 8
  %20 = call ptr @memset(ptr %str.i, i32 0, i32 65)
  %21 = call ptr @memset(ptr %data, i32 0, i32 72)
  call void @__check_object_size(ptr noundef nonnull %str.i, i32 noundef %11, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.125, i32 noundef 156) #16
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i, label %if.end.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.end.i.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %11, i32 -1226833920) #22, !srcloc !363
  %asmresult.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !351

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %str.i, i32 noundef %11) #16
  %23 = call i32 @llvm.read_register.i32(metadata !341) #16
  %and.i.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !364
  %and.i.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #16, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !366
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %str.i, ptr noundef %buf, i32 noundef %11) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #16, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !366
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %11, %if.end.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %11, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i, label %if.then11.i.i.i, !prof !351

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = sub i32 %11, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %str.i, i32 %sub.i.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

if.end7.i:                                        ; preds = %if.end.i.i.i
  %call10.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.115, ptr noundef nonnull %block_name.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 1
  br i1 %cmp11.i, label %if.end7.i.if.end74.i_crit_edge, label %if.else.i

if.end7.i.if.end74.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74.i

if.else.i:                                        ; preds = %if.end7.i
  %call17.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.116, ptr noundef nonnull %block_name.i, ptr noundef nonnull %err.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17.i)
  %cmp18.i = icmp eq i32 %call17.i, 2
  br i1 %cmp18.i, label %if.else.i.if.end74.i_crit_edge, label %if.else21.i

if.else.i.if.end74.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74.i

if.else21.i:                                      ; preds = %if.else.i
  %call25.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.117, ptr noundef nonnull %block_name.i, ptr noundef nonnull %err.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 2
  br i1 %cmp26.i, label %if.else21.i.if.end74.i_crit_edge, label %if.else29.i

if.else21.i.if.end74.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74.i

if.else29.i:                                      ; preds = %if.else21.i
  %call31.i = call ptr @strstr(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.118) #16
  %cmp32.not.i = icmp eq ptr %call31.i, null
  br i1 %cmp32.not.i, label %if.else35.i, label %if.then60.i

if.else35.i:                                      ; preds = %if.else29.i
  %27 = ptrtoint ptr %str.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %str.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37.not.i = icmp eq i8 %28, 0
  br i1 %tobool37.not.i, label %if.else35.i.if.else111.i_crit_edge, label %land.lhs.true.i66

if.else35.i.if.else111.i_crit_edge:               ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else111.i

land.lhs.true.i66:                                ; preds = %if.else35.i
  %arrayidx38.i = getelementptr inbounds [65 x i8], ptr %str.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx38.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not.i = icmp eq i8 %30, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i66.if.else111.i_crit_edge, label %land.lhs.true41.i

land.lhs.true.i66.if.else111.i_crit_edge:         ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else111.i

land.lhs.true41.i:                                ; preds = %land.lhs.true.i66
  %arrayidx42.i = getelementptr inbounds [65 x i8], ptr %str.i, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool44.not.i = icmp eq i8 %32, 0
  br i1 %tobool44.not.i, label %land.lhs.true41.i.if.else111.i_crit_edge, label %land.lhs.true45.i

land.lhs.true41.i.if.else111.i_crit_edge:         ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else111.i

land.lhs.true45.i:                                ; preds = %land.lhs.true41.i
  %arrayidx46.i = getelementptr inbounds [65 x i8], ptr %str.i, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx46.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool48.not.i = icmp ne i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %size)
  %cmp112.i = icmp ult i32 %size, 72
  %or.cond.i = or i1 %cmp112.i, %tobool48.not.i
  br i1 %or.cond.i, label %land.lhs.true45.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge, label %land.lhs.true45.i.if.end8.i.i6.i_crit_edge

land.lhs.true45.i.if.end8.i.i6.i_crit_edge:       ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i6.i

land.lhs.true45.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge: ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

if.then60.i:                                      ; preds = %if.else29.i
  %call62.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.119, ptr noundef nonnull %address.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call62.i)
  %cmp63.not.i = icmp eq i32 %call62.i, 1
  br i1 %cmp63.not.i, label %if.then60.i.if.end71.i_crit_edge, label %land.lhs.true65.i

if.then60.i.if.end71.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.i

land.lhs.true65.i:                                ; preds = %if.then60.i
  %call67.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.120, ptr noundef nonnull %address.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67.i)
  %cmp68.not.i = icmp eq i32 %call67.i, 1
  br i1 %cmp68.not.i, label %land.lhs.true65.i.if.end71.i_crit_edge, label %land.lhs.true65.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge

land.lhs.true65.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge: ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

land.lhs.true65.i.if.end71.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.i

if.end71.i:                                       ; preds = %land.lhs.true65.i.if.end71.i_crit_edge, %if.then60.i.if.end71.i_crit_edge
  %op72.i = getelementptr inbounds %struct.ras_debug_if, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %op72.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %op72.i, align 8
  %36 = ptrtoint ptr %address.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %address.i, align 8
  %address73.i = getelementptr inbounds %struct.ras_inject_if, ptr %data, i32 0, i32 1
  %38 = ptrtoint ptr %address73.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %address73.i, align 8
  br label %if.end4

if.end74.i:                                       ; preds = %if.else21.i.if.end74.i_crit_edge, %if.else.i.if.end74.i_crit_edge, %if.end7.i.if.end74.i_crit_edge
  %cmp94.ph.i = phi i1 [ true, %if.else21.i.if.end74.i_crit_edge ], [ false, %if.else.i.if.end74.i_crit_edge ], [ false, %if.end7.i.if.end74.i_crit_edge ]
  %op.0.ph.i = phi i32 [ 2, %if.else21.i.if.end74.i_crit_edge ], [ 1, %if.else.i.if.end74.i_crit_edge ], [ 0, %if.end7.i.if.end74.i_crit_edge ]
  %39 = load ptr, ptr @ras_block_string, align 4
  %call.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %39) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.end74.i.if.end79.i_crit_edge, label %for.cond.i.i

if.end74.i.if.end79.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.i.i:                                     ; preds = %if.end74.i
  %40 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 1), align 4
  %call.1.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %40) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp1.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.end79.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end79.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %41 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 2), align 4
  %call.2.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %41) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %cmp1.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.if.end79.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %42 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 3), align 4
  %call.3.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %42) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %cmp1.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %cmp1.3.i.i, label %for.cond.2.i.i.if.end79.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %43 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 4), align 4
  %call.4.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %43) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i.i)
  %cmp1.4.i.i = icmp eq i32 %call.4.i.i, 0
  br i1 %cmp1.4.i.i, label %for.cond.3.i.i.if.end79.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %44 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 5), align 4
  %call.5.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %44) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i.i)
  %cmp1.5.i.i = icmp eq i32 %call.5.i.i, 0
  br i1 %cmp1.5.i.i, label %for.cond.4.i.i.if.end79.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %45 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 6), align 4
  %call.6.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %45) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i.i)
  %cmp1.6.i.i = icmp eq i32 %call.6.i.i, 0
  br i1 %cmp1.6.i.i, label %for.cond.5.i.i.if.end79.i_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %46 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 7), align 4
  %call.7.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %46) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i.i)
  %cmp1.7.i.i = icmp eq i32 %call.7.i.i, 0
  br i1 %cmp1.7.i.i, label %for.cond.6.i.i.if.end79.i_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %47 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 8), align 4
  %call.8.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %47) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i.i)
  %cmp1.8.i.i = icmp eq i32 %call.8.i.i, 0
  br i1 %cmp1.8.i.i, label %for.cond.7.i.i.if.end79.i_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %48 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 9), align 4
  %call.9.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %48) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i.i)
  %cmp1.9.i.i = icmp eq i32 %call.9.i.i, 0
  br i1 %cmp1.9.i.i, label %for.cond.8.i.i.if.end79.i_crit_edge, label %for.cond.9.i.i

for.cond.8.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  %49 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 10), align 4
  %call.10.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %49) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i.i)
  %cmp1.10.i.i = icmp eq i32 %call.10.i.i, 0
  br i1 %cmp1.10.i.i, label %for.cond.9.i.i.if.end79.i_crit_edge, label %for.cond.10.i.i

for.cond.9.i.i.if.end79.i_crit_edge:              ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.10.i.i:                                  ; preds = %for.cond.9.i.i
  %50 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 11), align 4
  %call.11.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %50) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i.i)
  %cmp1.11.i.i = icmp eq i32 %call.11.i.i, 0
  br i1 %cmp1.11.i.i, label %for.cond.10.i.i.if.end79.i_crit_edge, label %for.cond.11.i.i

for.cond.10.i.i.if.end79.i_crit_edge:             ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.11.i.i:                                  ; preds = %for.cond.10.i.i
  %51 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 12), align 4
  %call.12.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %51) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12.i.i)
  %cmp1.12.i.i = icmp eq i32 %call.12.i.i, 0
  br i1 %cmp1.12.i.i, label %for.cond.11.i.i.if.end79.i_crit_edge, label %for.cond.12.i.i

for.cond.11.i.i.if.end79.i_crit_edge:             ; preds = %for.cond.11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.12.i.i:                                  ; preds = %for.cond.11.i.i
  %52 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 13), align 4
  %call.13.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %52) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13.i.i)
  %cmp1.13.i.i = icmp eq i32 %call.13.i.i, 0
  br i1 %cmp1.13.i.i, label %for.cond.12.i.i.if.end79.i_crit_edge, label %for.cond.13.i.i

for.cond.12.i.i.if.end79.i_crit_edge:             ; preds = %for.cond.12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

for.cond.13.i.i:                                  ; preds = %for.cond.12.i.i
  %53 = load ptr, ptr getelementptr inbounds ([15 x ptr], ptr @ras_block_string, i32 0, i32 14), align 4
  %call.14.i.i = call i32 @strcmp(ptr noundef nonnull %block_name.i, ptr noundef %53) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14.i.i)
  %cmp1.14.i.i = icmp eq i32 %call.14.i.i, 0
  br i1 %cmp1.14.i.i, label %for.cond.13.i.i.if.end79.i_crit_edge, label %for.cond.13.i.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge

for.cond.13.i.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge: ; preds = %for.cond.13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

for.cond.13.i.i.if.end79.i_crit_edge:             ; preds = %for.cond.13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

if.end79.i:                                       ; preds = %for.cond.13.i.i.if.end79.i_crit_edge, %for.cond.12.i.i.if.end79.i_crit_edge, %for.cond.11.i.i.if.end79.i_crit_edge, %for.cond.10.i.i.if.end79.i_crit_edge, %for.cond.9.i.i.if.end79.i_crit_edge, %for.cond.8.i.i.if.end79.i_crit_edge, %for.cond.7.i.i.if.end79.i_crit_edge, %for.cond.6.i.i.if.end79.i_crit_edge, %for.cond.5.i.i.if.end79.i_crit_edge, %for.cond.4.i.i.if.end79.i_crit_edge, %for.cond.3.i.i.if.end79.i_crit_edge, %for.cond.2.i.i.if.end79.i_crit_edge, %for.cond.1.i.i.if.end79.i_crit_edge, %for.cond.i.i.if.end79.i_crit_edge, %if.end74.i.if.end79.i_crit_edge
  %block_id.0.ph.i = phi i32 [ 13, %for.cond.12.i.i.if.end79.i_crit_edge ], [ 12, %for.cond.11.i.i.if.end79.i_crit_edge ], [ 11, %for.cond.10.i.i.if.end79.i_crit_edge ], [ 10, %for.cond.9.i.i.if.end79.i_crit_edge ], [ 9, %for.cond.8.i.i.if.end79.i_crit_edge ], [ 8, %for.cond.7.i.i.if.end79.i_crit_edge ], [ 7, %for.cond.6.i.i.if.end79.i_crit_edge ], [ 6, %for.cond.5.i.i.if.end79.i_crit_edge ], [ 5, %for.cond.4.i.i.if.end79.i_crit_edge ], [ 4, %for.cond.3.i.i.if.end79.i_crit_edge ], [ 3, %for.cond.2.i.i.if.end79.i_crit_edge ], [ 2, %for.cond.1.i.i.if.end79.i_crit_edge ], [ 1, %for.cond.i.i.if.end79.i_crit_edge ], [ 0, %if.end74.i.if.end79.i_crit_edge ], [ 14, %for.cond.13.i.i.if.end79.i_crit_edge ]
  %54 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %block_id.0.ph.i, ptr %data, align 8
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) @.str.94, ptr noundef nonnull dereferenceable(2) %err.i, i32 2) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool82.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool82.not.i, label %if.end79.i.if.end92.i_crit_edge, label %if.else84.i

if.end79.i.if.end92.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92.i

if.else84.i:                                      ; preds = %if.end79.i
  %bcmp1.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) @.str.95, ptr noundef nonnull dereferenceable(2) %err.i, i32 2) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool87.not.i = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool87.not.i, label %if.else84.i.if.end92.i_crit_edge, label %if.else84.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge

if.else84.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge: ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

if.else84.i.if.end92.i_crit_edge:                 ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else84.i.if.end92.i_crit_edge, %if.end79.i.if.end92.i_crit_edge
  %.sink.i = phi i32 [ 4, %if.end79.i.if.end92.i_crit_edge ], [ 2, %if.else84.i.if.end92.i_crit_edge ]
  %type89.i = getelementptr inbounds %struct.ras_common_if, ptr %data, i32 0, i32 1
  %55 = ptrtoint ptr %type89.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink.i, ptr %type89.i, align 4
  %op93.i = getelementptr inbounds %struct.ras_debug_if, ptr %data, i32 0, i32 1
  %56 = ptrtoint ptr %op93.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %op.0.ph.i, ptr %op93.i, align 8
  br i1 %cmp94.ph.i, label %if.then96.i, label %if.end92.i.if.end4_crit_edge

if.end92.i.if.end4_crit_edge:                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then96.i:                                      ; preds = %if.end92.i
  %call98.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.121, ptr noundef nonnull %sub_block.i, ptr noundef nonnull %address.i, ptr noundef nonnull %value.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call98.i)
  %cmp99.not.i = icmp eq i32 %call98.i, 3
  br i1 %cmp99.not.i, label %if.then96.i.if.end107.i_crit_edge, label %land.lhs.true101.i

if.then96.i.if.end107.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i

land.lhs.true101.i:                               ; preds = %if.then96.i
  %call103.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.122, ptr noundef nonnull %sub_block.i, ptr noundef nonnull %address.i, ptr noundef nonnull %value.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call103.i)
  %cmp104.not.i = icmp eq i32 %call103.i, 3
  br i1 %cmp104.not.i, label %land.lhs.true101.i.if.end107.i_crit_edge, label %land.lhs.true101.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge

land.lhs.true101.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge: ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

land.lhs.true101.i.if.end107.i_crit_edge:         ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i

if.end107.i:                                      ; preds = %land.lhs.true101.i.if.end107.i_crit_edge, %if.then96.i.if.end107.i_crit_edge
  %57 = ptrtoint ptr %sub_block.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sub_block.i, align 4
  %sub_block_index.i = getelementptr inbounds %struct.ras_common_if, ptr %data, i32 0, i32 2
  %59 = ptrtoint ptr %sub_block_index.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sub_block_index.i, align 8
  %60 = ptrtoint ptr %address.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %address.i, align 8
  %address108.i = getelementptr inbounds %struct.ras_inject_if, ptr %data, i32 0, i32 1
  %62 = ptrtoint ptr %address108.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %address108.i, align 8
  %63 = ptrtoint ptr %value.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %value.i, align 8
  %value109.i = getelementptr inbounds %struct.ras_inject_if, ptr %data, i32 0, i32 2
  %65 = ptrtoint ptr %value109.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %value109.i, align 8
  br label %if.end4

if.else111.i:                                     ; preds = %land.lhs.true41.i.if.else111.i_crit_edge, %land.lhs.true.i66.if.else111.i_crit_edge, %if.else35.i.if.else111.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %size)
  %cmp112.old.i = icmp ult i32 %size, 72
  br i1 %cmp112.old.i, label %if.else111.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge, label %if.else111.i.if.end8.i.i6.i_crit_edge

if.else111.i.if.end8.i.i6.i_crit_edge:            ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i6.i

if.else111.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge: ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

if.end8.i.i6.i:                                   ; preds = %if.else111.i.if.end8.i.i6.i_crit_edge, %land.lhs.true45.i.if.end8.i.i6.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.125, i32 noundef 156) #16
  %call.i.i7.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i7.i, label %if.end8.i.i6.i.if.then11.i.i24.i_crit_edge, label %land.lhs.true.i.i11.i

if.end8.i.i6.i.if.then11.i.i24.i_crit_edge:       ; preds = %if.end8.i.i6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i24.i

land.lhs.true.i.i11.i:                            ; preds = %if.end8.i.i6.i
  %66 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 72, i32 -1226833920) #22, !srcloc !363
  %asmresult.i.i9.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i9.i)
  %cmp.i6.i10.i = icmp eq i32 %asmresult.i.i9.i, 0
  br i1 %cmp.i6.i10.i, label %if.end.i.i21.i, label %land.lhs.true.i.i11.i.if.then11.i.i24.i_crit_edge, !prof !351

land.lhs.true.i.i11.i.if.then11.i.i24.i_crit_edge: ; preds = %land.lhs.true.i.i11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i24.i

if.end.i.i21.i:                                   ; preds = %land.lhs.true.i.i11.i
  %call.i.i.i12.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef 72) #16
  %67 = call i32 @llvm.read_register.i32(metadata !341) #16
  %and.i.i.i.i.i.i13.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i13.i to ptr
  %cpu_domain.i.i.i.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i14.i) #10, !srcloc !364
  %and.i.i.i.i15.i = and i32 %69, -13
  %or.i.i.i.i16.i = or i32 %and.i.i.i.i15.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i16.i) #16, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !366
  %call1.i.i.i17.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %buf, i32 noundef 72) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #16, !srcloc !365
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !366
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i17.i)
  %tobool4.not.i.i20.i = icmp eq i32 %call1.i.i.i17.i, 0
  br i1 %tobool4.not.i.i20.i, label %if.end.i.i21.i.if.end4_crit_edge, label %if.end.i.i21.i.if.then11.i.i24.i_crit_edge, !prof !351

if.end.i.i21.i.if.then11.i.i24.i_crit_edge:       ; preds = %if.end.i.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i24.i

if.end.i.i21.i.if.end4_crit_edge:                 ; preds = %if.end.i.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then11.i.i24.i:                                ; preds = %if.end.i.i21.i.if.then11.i.i24.i_crit_edge, %land.lhs.true.i.i11.i.if.then11.i.i24.i_crit_edge, %if.end8.i.i6.i.if.then11.i.i24.i_crit_edge
  %res.0.i.i1944.i = phi i32 [ %call1.i.i.i17.i, %if.end.i.i21.i.if.then11.i.i24.i_crit_edge ], [ 72, %if.end8.i.i6.i.if.then11.i.i24.i_crit_edge ], [ 72, %land.lhs.true.i.i11.i.if.then11.i.i24.i_crit_edge ]
  %sub.i.i22.i = sub i32 72, %res.0.i.i1944.i
  %add.ptr.i.i23.i = getelementptr i8, ptr %data, i32 %sub.i.i22.i
  %70 = call ptr @memset(ptr %add.ptr.i.i23.i, i32 0, i32 %res.0.i.i1944.i)
  br label %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread

amdgpu_ras_debugfs_ctrl_parse_data.exit.thread:   ; preds = %if.then11.i.i24.i, %if.else111.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge, %land.lhs.true101.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge, %if.else84.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge, %for.cond.13.i.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge, %land.lhs.true65.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge, %land.lhs.true45.i.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge, %if.then11.i.i.i, %if.end.amdgpu_ras_debugfs_ctrl_parse_data.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %address.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub_block.i) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %err.i) #16
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %block_name.i) #16
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %str.i) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i21.i.if.end4_crit_edge, %if.end107.i, %if.end92.i.if.end4_crit_edge, %if.end71.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %address.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub_block.i) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %err.i) #16
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %block_name.i) #16
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %str.i) #16
  %op = getelementptr inbounds %struct.ras_debug_if, ptr %data, i32 0, i32 1
  %71 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp = icmp eq i32 %72, 3
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end4
  %address = getelementptr inbounds %struct.ras_inject_if, ptr %data, i32 0, i32 1
  %73 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %address, align 8
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %err_rec.i) #16
  %75 = getelementptr inbounds %struct.eeprom_table_record, ptr %err_rec.i, i32 0, i32 1
  %76 = getelementptr inbounds %struct.eeprom_table_record, ptr %err_rec.i, i32 0, i32 2
  %77 = getelementptr inbounds %struct.eeprom_table_record, ptr %err_rec.i, i32 0, i32 3
  %mc_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 62, i32 2
  %78 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %mc_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %79, i64 %74)
  %cmp.not.i = icmp ule i64 %79, %74
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627370495, i64 %74)
  %cmp1.i = icmp ugt i64 %74, 4503599627370495
  %or.cond.i68 = or i1 %cmp1.i, %cmp.not.i
  br i1 %or.cond.i68, label %amdgpu_reserve_page_direct.exit, label %if.end.i69

if.end.i69:                                       ; preds = %if.then5
  %80 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ras.i, align 8
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.end.i69.if.end7.i70_crit_edge, label %lor.lhs.false.i.i

if.end.i69.if.end7.i70_crit_edge:                 ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i70

lor.lhs.false.i.i:                                ; preds = %if.end.i69
  %eh_data.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %eh_data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %eh_data.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %83, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.end7.i70_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end7.i70_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i70

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %recovery_lock.i.i = getelementptr inbounds %struct.amdgpu_ras, ptr %81, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %recovery_lock.i.i, i32 noundef 0) #16
  %84 = ptrtoint ptr %eh_data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %eh_data.i.i, align 8
  %shr.i.i.i = lshr i64 %74, 12
  %count.i.i.i = getelementptr inbounds %struct.ras_err_handler_data, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp7.i.i.i = icmp sgt i32 %87, 0
  br i1 %cmp7.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end.i.i.if.end7.sink.split.i_crit_edge

if.end.i.i.if.end7.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.sink.split.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  %retired_page.i11.i.i = getelementptr %struct.eeprom_table_record, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %retired_page.i11.i.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %retired_page.i11.i.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i.i, i64 %91)
  %cmp1.i12.i.i = icmp eq i64 %shr.i.i.i, %91
  br i1 %cmp1.i12.i.i, label %amdgpu_ras_check_bad_page.exit.thread44.i, label %for.body.lr.ph.i.i.i.for.cond.i.i.i_crit_edge

for.body.lr.ph.i.i.i.for.cond.i.i.i_crit_edge:    ; preds = %for.body.lr.ph.i.i.i
  br label %for.cond.i.i.i

amdgpu_ras_check_bad_page.exit.thread44.i:        ; preds = %for.body.lr.ph.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @mutex_unlock(ptr noundef %recovery_lock.i.i) #16
  br label %do.end5.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.for.cond.i.i.i_crit_edge
  %i.08.i13.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.08.i13.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %87)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %87
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end7.sink.split.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end7.sink.split.i_crit_edge:    ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.sink.split.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %retired_page.i.i.i = getelementptr %struct.eeprom_table_record, ptr %89, i32 %inc.i.i.i, i32 1
  %92 = ptrtoint ptr %retired_page.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %93 = load i64, ptr %retired_page.i.i.i, align 1
  %cmp1.i.i.i = icmp eq i64 %shr.i.i.i, %93
  br i1 %cmp1.i.i.i, label %amdgpu_ras_check_bad_page.exit.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.i

amdgpu_ras_check_bad_page.exit.i:                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %87)
  %cmp.i.le.i.i = icmp slt i32 %inc.i.i.i, %87
  call void @mutex_unlock(ptr noundef %recovery_lock.i.i) #16
  br i1 %cmp.i.le.i.i, label %amdgpu_ras_check_bad_page.exit.i.do.end5.i_crit_edge, label %amdgpu_ras_check_bad_page.exit.i.if.end7.i70_crit_edge

amdgpu_ras_check_bad_page.exit.i.if.end7.i70_crit_edge: ; preds = %amdgpu_ras_check_bad_page.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i70

amdgpu_ras_check_bad_page.exit.i.do.end5.i_crit_edge: ; preds = %amdgpu_ras_check_bad_page.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end5.i

do.end5.i:                                        ; preds = %amdgpu_ras_check_bad_page.exit.i.do.end5.i_crit_edge, %amdgpu_ras_check_bad_page.exit.thread44.i
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.129, i64 noundef %74) #20
  br label %110

if.end7.sink.split.i:                             ; preds = %for.cond.i.i.i.if.end7.sink.split.i_crit_edge, %if.end.i.i.if.end7.sink.split.i_crit_edge
  call void @mutex_unlock(ptr noundef %recovery_lock.i.i) #16
  br label %if.end7.i70

if.end7.i70:                                      ; preds = %if.end7.sink.split.i, %amdgpu_ras_check_bad_page.exit.i.if.end7.i70_crit_edge, %lor.lhs.false.i.i.if.end7.i70_crit_edge, %if.end.i69.if.end7.i70_crit_edge
  %96 = call ptr @memset(ptr %77, i32 0, i32 7)
  %97 = ptrtoint ptr %err_rec.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %74, ptr %err_rec.i, align 8
  %shr.i = lshr i64 %74, 12
  %98 = ptrtoint ptr %75 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %shr.i, ptr %75, align 8
  %call8.i = call i64 @ktime_get_real_seconds() #16
  %99 = ptrtoint ptr %76 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %call8.i, ptr %76, align 8
  %100 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %77, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bad_page_threshold to i32))
  %101 = load i32, ptr @amdgpu_bad_page_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp9.not.i = icmp eq i32 %101, 0
  br i1 %cmp9.not.i, label %if.end7.i70.do.end18.i_crit_edge, label %if.then10.i

if.end7.i70.do.end18.i_crit_edge:                 ; preds = %if.end7.i70
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end18.i

if.then10.i:                                      ; preds = %if.end7.i70
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i = call i32 @amdgpu_ras_add_bad_pages(ptr noundef nonnull %3, ptr noundef nonnull %err_rec.i, i32 noundef 1) #16
  %call14.i = call i32 @amdgpu_ras_save_bad_pages(ptr noundef nonnull %3) #16
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.then10.i, %if.end7.i70.do.end18.i_crit_edge
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.132) #20
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %105, ptr noundef nonnull @.str.135) #20
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.138) #20
  br label %110

amdgpu_reserve_page_direct.exit:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.126, i64 noundef %74) #20
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %err_rec.i) #16
  br label %cleanup

110:                                              ; preds = %do.end18.i, %do.end5.i
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %err_rec.i) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %112)
  %cmp.i = icmp ugt i32 %112, 14
  br i1 %cmp.i, label %if.end9.cleanup_crit_edge, label %if.end.i73

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i73:                                       ; preds = %if.end9
  %113 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ras.i, align 8
  %tobool.not.i72 = icmp eq ptr %114, null
  br i1 %tobool.not.i72, label %if.end.i73.cleanup_crit_edge, label %amdgpu_ras_is_supported.exit

if.end.i73.cleanup_crit_edge:                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

amdgpu_ras_is_supported.exit:                     ; preds = %if.end.i73
  %ras_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 167
  %115 = ptrtoint ptr %ras_enabled.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ras_enabled.i, align 8
  %117 = shl nuw nsw i32 1, %112
  %118 = and i32 %116, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool11.not = icmp eq i32 %118, 0
  br i1 %tobool11.not, label %amdgpu_ras_is_supported.exit.cleanup_crit_edge, label %if.end13

amdgpu_ras_is_supported.exit.cleanup_crit_edge:   ; preds = %amdgpu_ras_is_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %amdgpu_ras_is_supported.exit
  %119 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %72, label %if.end13.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb18
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = call i32 @amdgpu_ras_feature_enable(ptr noundef nonnull %3, ptr noundef nonnull %data, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = call i32 @amdgpu_ras_feature_enable(ptr noundef nonnull %3, ptr noundef nonnull %data, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end13
  %address19 = getelementptr inbounds %struct.ras_inject_if, ptr %data, i32 0, i32 1
  %120 = ptrtoint ptr %address19 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %address19, align 8
  %mc_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 62, i32 2
  %122 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %mc_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %123)
  %cmp20.not = icmp uge i64 %121, %123
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627370495, i64 %121)
  %cmp22 = icmp ugt i64 %121, 4503599627370495
  %or.cond = or i1 %cmp22, %cmp20.not
  br i1 %or.cond, label %do.end26, label %if.end29

do.end26:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #18
  %124 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.110, i64 noundef %121) #20
  br label %cleanup

if.end29:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp31 = icmp eq i32 %112, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end29.if.end40_crit_edge

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end29
  %call33 = call fastcc zeroext i1 @amdgpu_ras_check_bad_page(ptr noundef nonnull %3, i64 noundef %121)
  br i1 %call33, label %sw.epilog.thread84, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

sw.epilog.thread84:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %126 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %3, align 8
  %128 = ptrtoint ptr %address19 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %address19, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.113, i64 noundef %129) #20
  br label %130

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.end29.if.end40_crit_edge
  %call41 = call i32 @amdgpu_ras_error_inject(ptr noundef nonnull %3, ptr noundef nonnull %data)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %sw.bb16, %sw.bb
  %ret.0 = phi i32 [ %call41, %if.end40 ], [ %call17, %sw.bb16 ], [ %call15, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool42.not = icmp eq i32 %ret.0, 0
  br i1 %tobool42.not, label %sw.epilog._crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %130

130:                                              ; preds = %sw.epilog._crit_edge, %sw.epilog.thread84
  br label %cleanup

cleanup:                                          ; preds = %130, %sw.epilog.cleanup_crit_edge, %do.end26, %if.end13.cleanup_crit_edge, %amdgpu_ras_is_supported.exit.cleanup_crit_edge, %if.end.i73.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %110, %amdgpu_reserve_page_direct.exit, %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread, %do.end
  %retval.0 = phi i32 [ %size, %do.end ], [ -22, %amdgpu_ras_is_supported.exit.cleanup_crit_edge ], [ -22, %amdgpu_ras_debugfs_ctrl_parse_data.exit.thread ], [ %size, %110 ], [ -22, %amdgpu_reserve_page_direct.exit ], [ %size, %130 ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end.i73.cleanup_crit_edge ], [ -22, %do.end26 ], [ -22, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %data) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @amdgpu_ras_check_bad_page(ptr nocapture noundef readonly %adev, i64 noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 1
  %0 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ras, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %eh_data = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eh_data, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %recovery_lock = getelementptr inbounds %struct.amdgpu_ras, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %recovery_lock, i32 noundef 0) #16
  %4 = ptrtoint ptr %eh_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eh_data, align 8
  %shr.i = lshr i64 %addr, 12
  %count.i = getelementptr inbounds %struct.ras_err_handler_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.i = icmp sgt i32 %7, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %if.end.amdgpu_ras_check_bad_page_unlock.exit_crit_edge

if.end.amdgpu_ras_check_bad_page_unlock.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_check_bad_page_unlock.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %retired_page.i11 = getelementptr %struct.eeprom_table_record, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %retired_page.i11 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %retired_page.i11, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %11)
  %cmp1.i12 = icmp eq i64 %shr.i, %11
  br i1 %cmp1.i12, label %for.body.lr.ph.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_check_bad_page_unlock.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.08.i13 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.08.i13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %7)
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.amdgpu_ras_check_bad_page_unlock.exit.loopexit_crit_edge, label %for.body.i

for.cond.i.amdgpu_ras_check_bad_page_unlock.exit.loopexit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_check_bad_page_unlock.exit.loopexit

for.body.i:                                       ; preds = %for.cond.i
  %retired_page.i = getelementptr %struct.eeprom_table_record, ptr %9, i32 %inc.i, i32 1
  %12 = ptrtoint ptr %retired_page.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %retired_page.i, align 1
  %cmp1.i = icmp eq i64 %shr.i, %13
  br i1 %cmp1.i, label %for.body.i.amdgpu_ras_check_bad_page_unlock.exit.loopexit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

for.body.i.amdgpu_ras_check_bad_page_unlock.exit.loopexit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_check_bad_page_unlock.exit.loopexit

amdgpu_ras_check_bad_page_unlock.exit.loopexit:   ; preds = %for.body.i.amdgpu_ras_check_bad_page_unlock.exit.loopexit_crit_edge, %for.cond.i.amdgpu_ras_check_bad_page_unlock.exit.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %7)
  %cmp.i.le = icmp slt i32 %inc.i, %7
  br label %amdgpu_ras_check_bad_page_unlock.exit

amdgpu_ras_check_bad_page_unlock.exit:            ; preds = %amdgpu_ras_check_bad_page_unlock.exit.loopexit, %for.body.lr.ph.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge, %if.end.amdgpu_ras_check_bad_page_unlock.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ false, %if.end.amdgpu_ras_check_bad_page_unlock.exit_crit_edge ], [ true, %for.body.lr.ph.i.amdgpu_ras_check_bad_page_unlock.exit_crit_edge ], [ %cmp.i.le, %amdgpu_ras_check_bad_page_unlock.exit.loopexit ]
  tail call void @mutex_unlock(ptr noundef %recovery_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_ras_check_bad_page_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.lcssa.i, %amdgpu_ras_check_bad_page_unlock.exit ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ras_debugfs_eeprom_write(ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %ras = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 113, i32 34, i32 1
  %4 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ras, align 8
  %eeprom_control = getelementptr inbounds %struct.amdgpu_ras, ptr %5, i32 0, i32 13
  %call1 = tail call i32 @amdgpu_ras_eeprom_reset_table(ptr noundef %eeprom_control) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %ras to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ras, align 8
  %flags = getelementptr inbounds %struct.amdgpu_ras, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.then ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_eeprom_reset_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ras_debugfs_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #4 align 64 {
entry:
  %info = alloca %struct.ras_query_if, align 4
  %val = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %info) #16
  %4 = call ptr @memcpy(ptr %info, ptr %3, i32 44)
  %ue_count = getelementptr inbounds %struct.ras_query_if, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %ue_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ue_count, align 4
  %ce_count = getelementptr inbounds %struct.ras_query_if, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %ce_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ce_count, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %val) #16
  %7 = call ptr @memset(ptr %val, i32 255, i32 128)
  %adev = getelementptr inbounds %struct.ras_manager, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 4
  %call2 = call i32 @amdgpu_ras_query_error_status(ptr noundef %9, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %ue_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ue_count, align 4
  %12 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ce_count, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %val, i32 noundef 128, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef %11, ptr noundef nonnull @.str.95, i32 noundef %13)
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %conv = sext i32 %call5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv)
  %cmp.not = icmp slt i64 %15, %conv
  br i1 %cmp.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %16 = trunc i64 %15 to i32
  %conv10 = sub i32 %call5, %16
  %conv11 = sext i32 %conv10 to i64
  %conv12 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv11, i64 %conv12)
  %cmp13 = icmp ult i64 %conv11, %conv12
  %conv10.size = select i1 %cmp13, i32 %conv10, i32 %size
  %arrayidx = getelementptr [128 x i8], ptr %val, i32 0, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10.size)
  %cmp9.i.i = icmp slt i32 %conv10.size, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !351

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.123, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8
  call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %conv10.size, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.125, i32 noundef 174) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %conv10.size, i32 -1226833920) #22, !srcloc !367
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef %conv10.size) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %conv10.size) #16
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %conv10.size, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv10.size, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool17.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool17.not, label %if.end19, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv2038 = zext i32 %conv10.size to i64
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos, align 8
  %add = add i64 %19, %conv2038
  store i64 %add, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv10.size, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %copy_to_user.exit.cleanup_crit_edge ], [ -22, %if.then27.i.i ], [ -22, %land.rhs16.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %val) #16
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_xgmi_hive(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_put_xgmi_hive(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_gpu_recover(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ras_eeprom_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atomfirmware_mem_ecc_supported(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atomfirmware_sram_ecc_supported(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ras_sysfs_features_read(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.161, i32 noundef %1) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ras_sysfs_badpages_read(ptr nocapture noundef readnone %f, ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i64 noundef %ppos, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr i8, ptr %attr, i32 100
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %sub = add i64 %ppos, 27
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7905747460161236407, i64 %sub, i32 0) #22, !srcloc !357
  %asmresult.i.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7905747460161236407, i64 %sub, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #22, !srcloc !358
  %asmresult10.i.i.i = extractvalue { i64, i32 } %3, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 4
  %conv = trunc i64 %div1581.i.i to i32
  %conv2 = zext i32 %count to i64
  %add3 = add i64 %ppos, -1
  %sub4 = add i64 %add3, %conv2
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7905747460161236407, i64 %sub4, i32 0) #22, !srcloc !357
  %asmresult.i.i.i34 = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i35 = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7905747460161236407, i64 %sub4, i64 %asmresult.i.i.i34, i32 %asmresult4.i.i.i35) #22, !srcloc !358
  %asmresult10.i.i.i36 = extractvalue { i64, i32 } %5, 0
  %div1581.i.i37 = lshr i64 %asmresult10.i.i.i36, 4
  %conv6 = trunc i64 %div1581.i.i37 to i32
  %6 = call ptr @memset(ptr %buf, i32 0, i32 %count)
  %ras.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 113, i32 34, i32 1
  %7 = ptrtoint ptr %ras.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ras.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %eh_data.i = getelementptr inbounds %struct.amdgpu_ras, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %eh_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eh_data.i, align 8
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %recovery_lock.i = getelementptr inbounds %struct.amdgpu_ras, ptr %8, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %recovery_lock.i, i32 noundef 0) #16
  %11 = ptrtoint ptr %eh_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eh_data.i, align 8
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %if.end.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge, label %lor.lhs.false8.i

if.end.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_badpages_read.exit.thread47

lor.lhs.false8.i:                                 ; preds = %if.end.i
  %count9.i = getelementptr inbounds %struct.ras_err_handler_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %count9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %lor.lhs.false8.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge, label %if.end8.i.i

lor.lhs.false8.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_badpages_read.exit.thread47

if.end8.i.i:                                      ; preds = %lor.lhs.false8.i
  %mul.i = mul i32 %14, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #21
  %tobool13.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not.i, label %if.end8.i.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge, label %for.cond.preheader.i

if.end8.i.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_badpages_read.exit.thread47

for.cond.preheader.i:                             ; preds = %if.end8.i.i
  %15 = ptrtoint ptr %count9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1771.i = icmp sgt i32 %16, 0
  br i1 %cmp1771.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.amdgpu_ras_badpages_read.exit_crit_edge

for.cond.preheader.i.amdgpu_ras_badpages_read.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_badpages_read.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %vram_mgr.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ras_badpage, ptr %call9.i.i, i32 %i.072.i
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %retired_page.i = getelementptr %struct.eeprom_table_record, ptr %18, i32 %i.072.i, i32 1
  %19 = ptrtoint ptr %retired_page.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %retired_page.i, align 1
  %conv.i = trunc i64 %20 to i32
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %arrayidx.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %22 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %23 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i, align 4
  %24 = load ptr, ptr %12, align 4
  %retired_page22.i = getelementptr %struct.eeprom_table_record, ptr %24, i32 %i.072.i, i32 1
  %25 = ptrtoint ptr %retired_page22.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %retired_page22.i, align 1
  %call23.i = tail call i32 @amdgpu_vram_mgr_query_page_status(ptr noundef %vram_mgr.i, i64 noundef %26) #16
  %27 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %call23.i, label %for.body.i.for.inc.i_crit_edge [
    i32 -16, label %for.body.i.for.inc.sink.split.i_crit_edge
    i32 -2, label %if.then31.i
  ]

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then31.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then31.i, %for.body.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.then31.i ], [ 1, %for.body.i.for.inc.sink.split.i_crit_edge ]
  %flags28.i = getelementptr %struct.ras_badpage, ptr %call9.i.i, i32 %i.072.i, i32 2
  %28 = ptrtoint ptr %flags28.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink.i, ptr %flags28.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %29 = ptrtoint ptr %count9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count9.i, align 4
  %cmp17.i = icmp slt i32 %inc.i, %30
  br i1 %cmp17.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.amdgpu_ras_badpages_read.exit_crit_edge

for.inc.i.amdgpu_ras_badpages_read.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %amdgpu_ras_badpages_read.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

amdgpu_ras_badpages_read.exit.thread47:           ; preds = %if.end8.i.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge, %lor.lhs.false8.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge, %if.end.i.amdgpu_ras_badpages_read.exit.thread47_crit_edge
  tail call void @mutex_unlock(ptr noundef %recovery_lock.i) #16
  br label %cleanup

amdgpu_ras_badpages_read.exit:                    ; preds = %for.inc.i.amdgpu_ras_badpages_read.exit_crit_edge, %for.cond.preheader.i.amdgpu_ras_badpages_read.exit_crit_edge
  %bps_count.0 = phi i32 [ %16, %for.cond.preheader.i.amdgpu_ras_badpages_read.exit_crit_edge ], [ %30, %for.inc.i.amdgpu_ras_badpages_read.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %recovery_lock.i) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv6)
  %cmp52 = icmp ult i32 %conv, %conv6
  call void @__sanitizer_cov_trace_cmp4(i32 %bps_count.0, i32 %conv)
  %cmp953 = icmp ugt i32 %bps_count.0, %conv
  %or.cond54 = select i1 %cmp52, i1 %cmp953, i1 false
  br i1 %or.cond54, label %amdgpu_ras_badpages_read.exit.for.body_crit_edge, label %amdgpu_ras_badpages_read.exit.for.end_crit_edge

amdgpu_ras_badpages_read.exit.for.end_crit_edge:  ; preds = %amdgpu_ras_badpages_read.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

amdgpu_ras_badpages_read.exit.for.body_crit_edge: ; preds = %amdgpu_ras_badpages_read.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %amdgpu_ras_badpages_read.exit.for.body_crit_edge
  %s.056 = phi i32 [ %add16, %for.body.for.body_crit_edge ], [ 0, %amdgpu_ras_badpages_read.exit.for.body_crit_edge ]
  %start.055 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %conv, %amdgpu_ras_badpages_read.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %s.056
  %arrayidx11 = getelementptr %struct.ras_badpage, ptr %call9.i.i, i32 %start.055
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx11, align 4
  %size = getelementptr %struct.ras_badpage, ptr %call9.i.i, i32 %start.055, i32 1
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %flags = getelementptr %struct.ras_badpage, ptr %call9.i.i, i32 %start.055, i32 2
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %switch.selectcmp.i = icmp eq i32 %36, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.165, ptr @.str.166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %switch.selectcmp3.i = icmp eq i32 %36, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.164, ptr %switch.select.i
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx, i32 noundef 29, ptr noundef nonnull @.str.163, i32 noundef %32, i32 noundef %34, ptr noundef nonnull %switch.select4.i) #16
  %add16 = add i32 %call15, %s.056
  %inc = add nuw i32 %start.055, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv6)
  %cmp = icmp ult i32 %inc, %conv6
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %bps_count.0)
  %cmp9 = icmp ult i32 %inc, %bps_count.0
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %amdgpu_ras_badpages_read.exit.for.end_crit_edge
  %s.0.lcssa = phi i32 [ 0, %amdgpu_ras_badpages_read.exit.for.end_crit_edge ], [ %add16, %for.body.for.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %amdgpu_ras_badpages_read.exit.thread47, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %s.0.lcssa, %for.end ], [ 0, %amdgpu_ras_badpages_read.exit.thread47 ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vram_mgr_query_page_status(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !180, !181, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !247, !249, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !276, !278, !279, !280, !281, !283, !284, !285, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !307, !309, !311, !313, !314, !315, !316, !318, !319, !321, !323, !324, !326, !328, !330, !332, !334, !335, !336, !337, !339, !340}
!llvm.named.register.sp = !{!341}
!llvm.module.flags = !{!342, !343, !344, !345, !346, !347, !348, !349}
!llvm.ident = !{!350}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 46, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 47, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 48, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 49, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 50, i32 2}
!10 = !{ptr @ras_error_string, !11, !"ras_error_string", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 45, i32 13}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 54, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 55, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 56, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 57, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 58, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 59, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 60, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 61, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 62, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 63, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 64, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 65, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 66, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 67, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 68, i32 2}
!42 = !{ptr @ras_block_string, !43, !"ras_block_string", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 53, i32 13}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 72, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 73, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 74, i32 2}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 75, i32 2}
!52 = !{ptr @ras_mca_block_string, !53, !"ras_mca_block_string", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 71, i32 13}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 81, i32 10}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 84, i32 10}
!58 = !{ptr @amdgpu_ras_in_intr, !59, !"amdgpu_ras_in_intr", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 108, i32 10}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 720, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 725, i32 4}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @amdgpu_ras_feature_enable._entry, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @amdgpu_ras_feature_enable._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 767, i32 6}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @amdgpu_ras_feature_enable_on_boot._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @amdgpu_ras_feature_enable_on_boot._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 999, i32 4}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @amdgpu_ras_query_error_status._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @amdgpu_ras_query_error_status._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1008, i32 4}
!84 = !{ptr @amdgpu_ras_query_error_status._entry.38, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @amdgpu_ras_query_error_status._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1019, i32 4}
!88 = !{ptr @amdgpu_ras_query_error_status._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @amdgpu_ras_query_error_status._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1027, i32 4}
!92 = !{ptr @amdgpu_ras_query_error_status._entry.44, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @amdgpu_ras_query_error_status._entry_ptr.46, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1150, i32 3}
!96 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @amdgpu_ras_error_inject._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @amdgpu_ras_error_inject._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1156, i32 3}
!101 = !{ptr @amdgpu_ras_error_inject._entry.49, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @amdgpu_ras_error_inject._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @amdgpu_ras_sysfs_create.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1352, i32 2}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1499, i32 34}
!107 = !{ptr @amdgpu_ras_interrupt_add_handler.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1695, i32 2}
!109 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1981, i32 4}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @amdgpu_ras_save_bad_pages._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @amdgpu_ras_save_bad_pages._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1985, i32 3}
!117 = !{ptr @amdgpu_ras_save_bad_pages._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @amdgpu_ras_save_bad_pages._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @amdgpu_ras_recovery_init.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2118, i32 2}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @amdgpu_ras_recovery_init.__key.60, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2119, i32 2}
!124 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2160, i32 2}
!127 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @amdgpu_ras_recovery_init._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @amdgpu_ras_recovery_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @amdgpu_ras_init.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2315, i32 2}
!133 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @amdgpu_ras_init.__key.66, !132, !"__key", i1 false, i1 false}
!135 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2390, i32 4}
!138 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @amdgpu_ras_init._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @amdgpu_ras_init._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2399, i32 2}
!143 = !{ptr @amdgpu_ras_init._entry.70, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @amdgpu_ras_init._entry_ptr.72, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2596, i32 2}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2616, i32 3}
!149 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @amdgpu_ras_global_ras_isr._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @amdgpu_ras_global_ras_isr._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h", i32 573, i32 3}
!154 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ras.h", i32 592, i32 3}
!158 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1088, i32 3}
!161 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @amdgpu_ras_error_inject_xgmi._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @amdgpu_ras_error_inject_xgmi._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1091, i32 3}
!166 = !{ptr @amdgpu_ras_error_inject_xgmi._entry.81, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @amdgpu_ras_error_inject_xgmi._entry_ptr.83, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1099, i32 3}
!170 = !{ptr @amdgpu_ras_error_inject_xgmi._entry.84, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @amdgpu_ras_error_inject_xgmi._entry_ptr.86, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1102, i32 3}
!174 = !{ptr @amdgpu_ras_error_inject_xgmi._entry.87, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @amdgpu_ras_error_inject_xgmi._entry_ptr.89, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 541, i32 26}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 548, i32 4}
!180 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @amdgpu_ras_sysfs_read._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @amdgpu_ras_sysfs_read._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.93, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 551, i32 25}
!185 = !{ptr @.str.94, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 551, i32 47}
!187 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 552, i32 6}
!189 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 43, i32 34}
!191 = distinct !{null, !192, !"RAS_FS_NAME", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 43, i32 20}
!193 = !{ptr @.str.97, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 565, i32 3}
!195 = !{ptr @.str.98, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1427, i32 22}
!197 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1429, i32 22}
!199 = !{ptr @.str.100, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1431, i32 21}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1433, i32 21}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1434, i32 21}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1435, i32 22}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1437, i32 49}
!209 = !{ptr @.str.105, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1450, i32 22}
!211 = !{ptr @.str.106, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1456, i32 22}
!213 = !{ptr @amdgpu_ras_debugfs_ctrl_ops, !214, !"amdgpu_ras_debugfs_ctrl_ops", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 497, i32 37}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 400, i32 3}
!217 = !{ptr @.str.108, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @amdgpu_ras_debugfs_ctrl_write._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @amdgpu_ras_debugfs_ctrl_write._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 430, i32 4}
!222 = !{ptr @amdgpu_ras_debugfs_ctrl_write._entry.109, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @amdgpu_ras_debugfs_ctrl_write._entry_ptr.111, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.113, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 440, i32 4}
!226 = !{ptr @amdgpu_ras_debugfs_ctrl_write._entry.112, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @amdgpu_ras_debugfs_ctrl_write._entry_ptr.114, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 253, i32 18}
!230 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 255, i32 23}
!232 = !{ptr @.str.117, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 257, i32 23}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 259, i32 23}
!236 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 267, i32 20}
!238 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 268, i32 20}
!240 = !{ptr @.str.121, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 292, i32 20}
!242 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 294, i32 20}
!244 = distinct !{null, !245, !"__already_done", i1 false, i1 false}
!245 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!246 = !{ptr @.str.123, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.124, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!251 = !{ptr @.str.126, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 144, i32 3}
!253 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @amdgpu_reserve_page_direct._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @amdgpu_reserve_page_direct._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 151, i32 3}
!258 = !{ptr @amdgpu_reserve_page_direct._entry.128, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @amdgpu_reserve_page_direct._entry_ptr.130, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.132, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 173, i32 2}
!262 = !{ptr @amdgpu_reserve_page_direct._entry.131, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @amdgpu_reserve_page_direct._entry_ptr.133, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.135, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 174, i32 2}
!266 = !{ptr @amdgpu_reserve_page_direct._entry.134, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @amdgpu_reserve_page_direct._entry_ptr.136, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.138, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 175, i32 2}
!270 = !{ptr @amdgpu_reserve_page_direct._entry.137, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @amdgpu_reserve_page_direct._entry_ptr.139, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @amdgpu_ras_debugfs_eeprom_ops, !273, !"amdgpu_ras_debugfs_eeprom_ops", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 504, i32 37}
!274 = !{ptr @amdgpu_ras_debugfs_ops, !275, !"amdgpu_ras_debugfs_ops", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 211, i32 37}
!276 = !{ptr @.str.140, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1589, i32 5}
!278 = !{ptr @.str.141, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @amdgpu_ras_interrupt_handler._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @amdgpu_ras_interrupt_handler._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2012, i32 3}
!283 = !{ptr @.str.143, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @amdgpu_ras_load_bad_pages._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @amdgpu_ras_load_bad_pages._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.144, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2242, i32 4}
!288 = !{ptr @.str.145, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @amdgpu_ras_check_supported._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @amdgpu_ras_check_supported._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.147, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2246, i32 4}
!293 = !{ptr @amdgpu_ras_check_supported._entry.146, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @amdgpu_ras_check_supported._entry_ptr.148, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.150, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2250, i32 4}
!297 = !{ptr @amdgpu_ras_check_supported._entry.149, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @amdgpu_ras_check_supported._entry_ptr.151, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.153, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2254, i32 4}
!301 = !{ptr @amdgpu_ras_check_supported._entry.152, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @amdgpu_ras_check_supported._entry_ptr.154, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.155, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2216, i32 34}
!305 = !{ptr @.str.156, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2218, i32 31}
!307 = !{ptr @amdgpu_ras_fs_init.__key, !308, !"__key", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1533, i32 2}
!309 = !{ptr @amdgpu_ras_fs_init.__key.157, !310, !"__key", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1541, i32 3}
!311 = !{ptr @.str.158, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1546, i32 3}
!313 = !{ptr @.str.159, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @amdgpu_ras_fs_init._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @amdgpu_ras_fs_init._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.160, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1512, i32 8}
!318 = !{ptr @dev_attr_features, !317, !"dev_attr_features", i1 false, i1 false}
!319 = !{ptr @.str.161, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1302, i32 35}
!321 = !{ptr @.str.162, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1510, i32 8}
!323 = !{ptr @bin_attr_gpu_vram_bad_pages, !322, !"bin_attr_gpu_vram_bad_pages", i1 false, i1 false}
!324 = !{ptr @.str.163, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1286, i32 5}
!326 = !{ptr @.str.164, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1225, i32 10}
!328 = !{ptr @.str.165, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1227, i32 10}
!330 = !{ptr @.str.166, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 1230, i32 10}
!332 = !{ptr @.str.167, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2429, i32 3}
!334 = !{ptr @.str.168, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @amdgpu_persistent_edc_harvesting._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @amdgpu_persistent_edc_harvesting._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.170, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c", i32 2432, i32 3}
!339 = !{ptr @amdgpu_persistent_edc_harvesting._entry.169, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @amdgpu_persistent_edc_harvesting._entry_ptr.171, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{!"sp"}
!342 = !{i32 1, !"wchar_size", i32 2}
!343 = !{i32 1, !"min_enum_size", i32 4}
!344 = !{i32 8, !"branch-target-enforcement", i32 0}
!345 = !{i32 8, !"sign-return-address", i32 0}
!346 = !{i32 8, !"sign-return-address-all", i32 0}
!347 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!348 = !{i32 7, !"uwtable", i32 1}
!349 = !{i32 7, !"frame-pointer", i32 2}
!350 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!351 = !{!"branch_weights", i32 2000, i32 1}
!352 = !{!"branch_weights", i32 1, i32 2000}
!353 = !{i8 0, i8 2}
!354 = !{i64 2159906822}
!355 = !{i64 2159902238}
!356 = !{i64 2159902386}
!357 = !{i64 1099108, i64 1099135, i64 1099157, i64 1099185}
!358 = !{i64 1099516, i64 1099543, i64 1099576, i64 1099597, i64 1099624, i64 1099650}
!359 = !{!"auto-init"}
!360 = !{i64 2148836714}
!361 = !{i64 1220380, i64 1220404, i64 1220425, i64 1220442, i64 1220459}
!362 = !{i64 2148836940}
!363 = !{i64 2152247346, i64 2152247371}
!364 = !{i64 4742901}
!365 = !{i64 4743098}
!366 = !{i64 2152228331}
!367 = !{i64 2152248027, i64 2152248052}
