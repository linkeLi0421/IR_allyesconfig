; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/amdgpu_smu.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amd_pm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pptable_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.pp_states_info = type { i32, [16 x i32] }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.81 = type { %struct.callback_head }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.83 = type { ptr }

@smu_allow_xgmi_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2066, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: [AllowXgmiPowerDown] failed!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smu_allow_xgmi_power_down\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smu_allow_xgmi_power_down._entry_ptr = internal global ptr @smu_allow_xgmi_power_down._entry, section ".printk_index", align 4
@smu_set_ac_dc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Failed to switch to %s mode!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smu_set_ac_dc\00", [18 x i8] zeroinitializer }, align 32
@smu_set_ac_dc._entry_ptr = internal global ptr @smu_set_ac_dc._entry, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AC\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DC\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smu\00", [28 x i8] zeroinitializer }, align 32
@smu_ip_funcs = dso_local constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str.9, ptr @smu_early_init, ptr @smu_late_init, ptr @smu_sw_init, ptr @smu_sw_fini, ptr null, ptr @smu_hw_init, ptr @smu_hw_fini, ptr null, ptr @smu_suspend, ptr @smu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_set_clockgating_state, ptr @smu_set_powergating_state, ptr null, ptr @smu_enable_umd_pstate }, [44 x i8] zeroinitializer }, align 32
@smu_v11_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 3, i32 11, i32 0, i32 0, ptr @smu_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@smu_v12_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 3, i32 12, i32 0, i32 0, ptr @smu_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@smu_v13_0_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 3, i32 13, i32 0, i32 0, ptr @smu_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu_smu_stb_dump\00", [44 x i8] zeroinitializer }, align 32
@smu_stb_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @smu_stb_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smu_stb_debugfs_open, ptr null, ptr @smu_stb_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_dpm = external dso_local local_unnamed_addr global i32, align 4
@smu_early_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&smu->mutex\00", [20 x i8] zeroinitializer }, align 32
@smu_early_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&smu->smu_baco.mutex\00", [43 x i8] zeroinitializer }, align 32
@swsmu_pm_funcs = internal constant { %struct.amd_pm_funcs, [80 x i8] } { %struct.amd_pm_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smu_pp_set_fan_control_mode, ptr @smu_get_fan_control_mode, ptr @smu_set_fan_speed_pwm, ptr @smu_get_fan_speed_pwm, ptr @smu_force_ppclk_levels, ptr @smu_print_ppclk_levels, ptr @smu_force_performance_level, ptr null, ptr null, ptr null, ptr null, ptr @smu_read_sensor, ptr @smu_get_performance_level, ptr @smu_get_current_power_state, ptr @smu_get_fan_speed_rpm, ptr @smu_set_fan_speed_rpm, ptr @smu_get_power_num_states, ptr @smu_sys_get_pp_table, ptr @smu_sys_set_pp_table, ptr null, ptr @smu_switch_power_profile, ptr null, ptr @smu_handle_dpm_task, ptr @smu_load_microcode, ptr null, ptr @smu_dpm_set_power_gate, ptr null, ptr @smu_set_power_limit, ptr @smu_get_power_limit, ptr @smu_get_power_profile_mode, ptr @smu_set_power_profile_mode, ptr null, ptr @smu_od_edit_dpm_table, ptr @smu_set_mp1_state, ptr null, ptr @smu_gfx_state_change_set, ptr @smu_get_sclk, ptr @smu_get_mclk, ptr @smu_display_configuration_change, ptr null, ptr null, ptr null, ptr @smu_get_clock_by_type_with_latency, ptr null, ptr null, ptr @smu_display_clock_voltage_request, ptr null, ptr null, ptr @smu_enable_mgpu_fan_boost, ptr @smu_set_display_count, ptr null, ptr null, ptr @smu_set_deep_sleep_dcefclk, ptr @smu_get_baco_capability, ptr null, ptr @smu_baco_set_state, ptr @smu_sys_get_pp_feature_mask, ptr @smu_sys_set_pp_feature_mask, ptr @smu_mode2_reset, ptr @smu_set_df_cstate, ptr @smu_set_xgmi_pstate, ptr @smu_sys_get_gpu_metrics, ptr @smu_set_watermarks_for_clock_ranges, ptr @smu_display_disable_memory_clock_switch, ptr @smu_get_max_sustainable_clocks_by_dc, ptr @smu_get_uclk_dpm_states, ptr @smu_get_dpm_clock_table, ptr @smu_get_prv_buffer_details }, [80 x i8] zeroinitializer }, align 32
@smu_force_smuclk_levels.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 -26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smu_force_smuclk_levels\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: force clock level is for dpm manual mode only.\0A\00", [40 x i8] zeroinitializer }, align 32
@smu_adjust_power_state_dynamic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1736, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Failed to change display config!\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smu_adjust_power_state_dynamic\00", [33 x i8] zeroinitializer }, align 32
@smu_adjust_power_state_dynamic._entry_ptr = internal global ptr @smu_adjust_power_state_dynamic._entry, section ".printk_index", align 4
@smu_adjust_power_state_dynamic._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Failed to apply clocks adjust rules!\00", [51 x i8] zeroinitializer }, align 32
@smu_adjust_power_state_dynamic._entry_ptr.21 = internal global ptr @smu_adjust_power_state_dynamic._entry.19, section ".printk_index", align 4
@smu_adjust_power_state_dynamic._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1750, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Failed to notify smc display config!\00", [51 x i8] zeroinitializer }, align 32
@smu_adjust_power_state_dynamic._entry_ptr.24 = internal global ptr @smu_adjust_power_state_dynamic._entry.22, section ".printk_index", align 4
@smu_adjust_power_state_dynamic._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 1758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Failed to set performance level!\00", [55 x i8] zeroinitializer }, align 32
@smu_adjust_power_state_dynamic._entry_ptr.27 = internal global ptr @smu_adjust_power_state_dynamic._entry.25, section ".printk_index", align 4
@smu_sys_set_pp_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 526, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: pp table size not matched !\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smu_sys_set_pp_table\00", [43 x i8] zeroinitializer }, align 32
@smu_sys_set_pp_table._entry_ptr = internal global ptr @smu_sys_set_pp_table._entry, section ".printk_index", align 4
@smu_sys_set_pp_table._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 550, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: smu reset failed, ret = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@smu_sys_set_pp_table._entry_ptr.33 = internal global ptr @smu_sys_set_pp_table._entry.30, section ".printk_index", align 4
@smu_load_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 2195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: Load microcode failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smu_load_microcode\00", [45 x i8] zeroinitializer }, align 32
@smu_load_microcode._entry_ptr = internal global ptr @smu_load_microcode._entry, section ".printk_index", align 4
@smu_load_microcode._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 2203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu: SMC is not ready\0A\00", [38 x i8] zeroinitializer }, align 32
@smu_load_microcode._entry_ptr.38 = internal global ptr @smu_load_microcode._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s %s: SMU uninitialized but power %s requested for %u!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gate\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ungate\00", [25 x i8] zeroinitializer }, align 32
@smu_dpm_set_power_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: Failed to power %s VCN!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smu_dpm_set_power_gate\00", [41 x i8] zeroinitializer }, align 32
@smu_dpm_set_power_gate._entry_ptr = internal global ptr @smu_dpm_set_power_gate._entry, section ".printk_index", align 4
@smu_dpm_set_power_gate._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: Failed to %s gfxoff!\0A\00", [34 x i8] zeroinitializer }, align 32
@smu_dpm_set_power_gate._entry_ptr.46 = internal global ptr @smu_dpm_set_power_gate._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@smu_dpm_set_power_gate._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to power %s SDMA!\0A\00", [62 x i8] zeroinitializer }, align 32
@smu_dpm_set_power_gate._entry_ptr.51 = internal global ptr @smu_dpm_set_power_gate._entry.49, section ".printk_index", align 4
@smu_dpm_set_power_gate._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.43, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to power %s JPEG!\0A\00", [62 x i8] zeroinitializer }, align 32
@smu_dpm_set_power_gate._entry_ptr.54 = internal global ptr @smu_dpm_set_power_gate._entry.52, section ".printk_index", align 4
@smu_dpm_set_power_gate._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.43, ptr @.str.2, i32 318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: Unsupported block type!\0A\00", [63 x i8] zeroinitializer }, align 32
@smu_dpm_set_power_gate._entry_ptr.57 = internal global ptr @smu_dpm_set_power_gate._entry.55, section ".printk_index", align 4
@smu_set_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 2365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: New power limit (%d) is over the max allowed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smu_set_power_limit\00", [44 x i8] zeroinitializer }, align 32
@smu_set_power_limit._entry_ptr = internal global ptr @smu_set_power_limit._entry, section ".printk_index", align 4
@smu_get_clock_by_type_with_latency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 2739, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: Invalid clock type!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"smu_get_clock_by_type_with_latency\00", [61 x i8] zeroinitializer }, align 32
@smu_get_clock_by_type_with_latency._entry_ptr = internal global ptr @smu_get_clock_by_type_with_latency._entry, section ".printk_index", align 4
@smu_baco_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 2862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to %s BACO state!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smu_baco_set_state\00", [45 x i8] zeroinitializer }, align 32
@smu_baco_set_state._entry_ptr = internal global ptr @smu_baco_set_state._entry, section ".printk_index", align 4
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enter\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exit\00", [27 x i8] zeroinitializer }, align 32
@smu_mode2_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 2934, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: Mode2 reset failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smu_mode2_reset\00", [16 x i8] zeroinitializer }, align 32
@smu_mode2_reset._entry_ptr = internal global ptr @smu_mode2_reset._entry, section ".printk_index", align 4
@smu_set_df_cstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 2045, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: [SetDfCstate] failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smu_set_df_cstate\00", [46 x i8] zeroinitializer }, align 32
@smu_set_df_cstate._entry_ptr = internal global ptr @smu_set_df_cstate._entry, section ".printk_index", align 4
@smu_set_xgmi_pstate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 2808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: Failed to set XGMI pstate!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smu_set_xgmi_pstate\00", [44 x i8] zeroinitializer }, align 32
@smu_set_xgmi_pstate._entry_ptr = internal global ptr @smu_set_xgmi_pstate._entry, section ".printk_index", align 4
@smu_late_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 703, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to post smu init!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smu_late_init\00", [18 x i8] zeroinitializer }, align 32
@smu_late_init._entry_ptr = internal global ptr @smu_late_init._entry, section ".printk_index", align 4
@smu_late_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 714, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: Failed to setup default OD settings!\0A\00", [50 x i8] zeroinitializer }, align 32
@smu_late_init._entry_ptr.76 = internal global ptr @smu_late_init._entry.74, section ".printk_index", align 4
@smu_late_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.2, i32 721, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: Failed to populate UMD state clocks!\0A\00", [50 x i8] zeroinitializer }, align 32
@smu_late_init._entry_ptr.79 = internal global ptr @smu_late_init._entry.77, section ".printk_index", align 4
@smu_late_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.2, i32 730, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: Failed to get asic power limits!\0A\00", [54 x i8] zeroinitializer }, align 32
@smu_late_init._entry_ptr.82 = internal global ptr @smu_late_init._entry.80, section ".printk_index", align 4
@smu_restore_dpm_user_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 386, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Failed to set power limit value\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smu_restore_dpm_user_profile\00", [35 x i8] zeroinitializer }, align 32
@smu_restore_dpm_user_profile._entry_ptr = internal global ptr @smu_restore_dpm_user_profile._entry, section ".printk_index", align 4
@smu_restore_dpm_user_profile._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 404, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Failed to set clock type = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@smu_restore_dpm_user_profile._entry_ptr.87 = internal global ptr @smu_restore_dpm_user_profile._entry.85, section ".printk_index", align 4
@smu_restore_dpm_user_profile._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: Failed to set manual fan control mode\0A\00", [49 x i8] zeroinitializer }, align 32
@smu_restore_dpm_user_profile._entry_ptr.90 = internal global ptr @smu_restore_dpm_user_profile._entry.88, section ".printk_index", align 4
@smu_restore_dpm_user_profile._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.2, i32 423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: Failed to set manual fan speed in pwm\0A\00", [49 x i8] zeroinitializer }, align 32
@smu_restore_dpm_user_profile._entry_ptr.93 = internal global ptr @smu_restore_dpm_user_profile._entry.91, section ".printk_index", align 4
@smu_restore_dpm_user_profile._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.84, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: Failed to set manual fan speed in rpm\0A\00", [49 x i8] zeroinitializer }, align 32
@smu_restore_dpm_user_profile._entry_ptr.96 = internal global ptr @smu_restore_dpm_user_profile._entry.94, section ".printk_index", align 4
@smu_restore_dpm_user_profile._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.84, ptr @.str.2, i32 438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: Failed to upload customized OD settings\0A\00", [47 x i8] zeroinitializer }, align 32
@smu_restore_dpm_user_profile._entry_ptr.99 = internal global ptr @smu_restore_dpm_user_profile._entry.97, section ".printk_index", align 4
@smu_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&smu->smu_feature.mutex\00", [40 x i8] zeroinitializer }, align 32
@smu_sw_init.__key.101 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&smu->sensor_lock\00", [46 x i8] zeroinitializer }, align 32
@smu_sw_init.__key.103 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&smu->metrics_lock\00", [45 x i8] zeroinitializer }, align 32
@smu_sw_init.__key.105 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&smu->message_lock\00", [45 x i8] zeroinitializer }, align 32
@smu_sw_init.__key.107 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&smu->throttling_logging_work)\00", [47 x i8] zeroinitializer }, align 32
@smu_sw_init.__key.109 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&smu->interrupt_work)\00", [56 x i8] zeroinitializer }, align 32
@smu_sw_init.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&smu->smu_power.power_gate.vcn_gate_lock\00", [55 x i8] zeroinitializer }, align 32
@smu_sw_init.__key.113 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"&smu->smu_power.power_gate.jpeg_gate_lock\00", [54 x i8] zeroinitializer }, align 32
@smu_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1078, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Failed to load smu firmware!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smu_sw_init\00", [20 x i8] zeroinitializer }, align 32
@smu_sw_init._entry_ptr = internal global ptr @smu_sw_init._entry, section ".printk_index", align 4
@smu_sw_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 1084, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Failed to sw init smc table!\0A\00", [58 x i8] zeroinitializer }, align 32
@smu_sw_init._entry_ptr.119 = internal global ptr @smu_sw_init._entry.117, section ".printk_index", align 4
@smu_sw_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 1090, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Failed to register smc irq handler!\0A\00", [51 x i8] zeroinitializer }, align 32
@smu_sw_init._entry_ptr.122 = internal global ptr @smu_sw_init._entry.120, section ".printk_index", align 4
@smu_smc_table_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 938, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: Failed to init smc tables!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smu_smc_table_sw_init\00", [42 x i8] zeroinitializer }, align 32
@smu_smc_table_sw_init._entry_ptr = internal global ptr @smu_smc_table_sw_init._entry, section ".printk_index", align 4
@smu_smc_table_sw_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 948, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to init smu_init_power!\0A\00", [56 x i8] zeroinitializer }, align 32
@smu_smc_table_sw_init._entry_ptr.127 = internal global ptr @smu_smc_table_sw_init._entry.125, section ".printk_index", align 4
@smu_init_fb_allocations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: VRAM allocation for tool table failed!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smu_init_fb_allocations\00", [40 x i8] zeroinitializer }, align 32
@smu_init_fb_allocations._entry_ptr = internal global ptr @smu_init_fb_allocations._entry, section ".printk_index", align 4
@smu_init_fb_allocations._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 797, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: VRAM allocation for driver table failed!\0A\00", [46 x i8] zeroinitializer }, align 32
@smu_init_fb_allocations._entry_ptr.132 = internal global ptr @smu_init_fb_allocations._entry.130, section ".printk_index", align 4
@smu_alloc_memory_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 863, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: VRAM allocation for dramlog failed!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smu_alloc_memory_pool\00", [42 x i8] zeroinitializer }, align 32
@smu_alloc_memory_pool._entry_ptr = internal global ptr @smu_alloc_memory_pool._entry, section ".printk_index", align 4
@smu_alloc_dummy_read_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 909, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"amdgpu: VRAM allocation for dummy read table failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smu_alloc_dummy_read_table\00", [37 x i8] zeroinitializer }, align 32
@smu_alloc_dummy_read_table._entry_ptr = internal global ptr @smu_alloc_dummy_read_table._entry, section ".printk_index", align 4
@smu_sw_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Failed to sw fini smc table!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smu_sw_fini\00", [20 x i8] zeroinitializer }, align 32
@smu_sw_fini._entry_ptr = internal global ptr @smu_sw_fini._entry, section ".printk_index", align 4
@smu_smc_table_sw_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 992, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to init smu_fini_power!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smu_smc_table_sw_fini\00", [42 x i8] zeroinitializer }, align 32
@smu_smc_table_sw_fini._entry_ptr = internal global ptr @smu_smc_table_sw_fini._entry, section ".printk_index", align 4
@smu_smc_table_sw_fini._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 998, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Failed to smu_fini_smc_tables!\0A\00", [56 x i8] zeroinitializer }, align 32
@smu_smc_table_sw_fini._entry_ptr.143 = internal global ptr @smu_smc_table_sw_fini._entry.141, section ".printk_index", align 4
@smu_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 1348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: SMC engine is not correctly up!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smu_hw_init\00", [20 x i8] zeroinitializer }, align 32
@smu_hw_init._entry_ptr = internal global ptr @smu_hw_init._entry, section ".printk_index", align 4
@smu_hw_init._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 1364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: Failed to get VBIOS boot clock values!\0A\00", [48 x i8] zeroinitializer }, align 32
@smu_hw_init._entry_ptr.148 = internal global ptr @smu_hw_init._entry.146, section ".printk_index", align 4
@smu_hw_init._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 1370, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu: Failed to setup pptable!\0A\00", [62 x i8] zeroinitializer }, align 32
@smu_hw_init._entry_ptr.151 = internal global ptr @smu_hw_init._entry.149, section ".printk_index", align 4
@smu_hw_init._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 1380, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: Failed to setup smc hw!\0A\00", [63 x i8] zeroinitializer }, align 32
@smu_hw_init._entry_ptr.154 = internal global ptr @smu_hw_init._entry.152, section ".printk_index", align 4
@smu_hw_init._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.145, ptr @.str.2, i32 1393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: Failed to init max sustainable clocks!\0A\00", [48 x i8] zeroinitializer }, align 32
@smu_hw_init._entry_ptr.157 = internal global ptr @smu_hw_init._entry.155, section ".printk_index", align 4
@smu_hw_init._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.145, ptr @.str.2, i32 1399, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: SMU is initialized successfully!\0A\00", [54 x i8] zeroinitializer }, align 32
@smu_hw_init._entry_ptr.160 = internal global ptr @smu_hw_init._entry.158, section ".printk_index", align 4
@smu_start_smc_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.161, ptr @.str.2, i32 1319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smu_start_smc_engine\00", [43 x i8] zeroinitializer }, align 32
@smu_start_smc_engine._entry_ptr = internal global ptr @smu_start_smc_engine._entry, section ".printk_index", align 4
@smu_smc_hw_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 1152, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: dpm has been enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smu_smc_hw_setup\00", [47 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr = internal global ptr @smu_smc_hw_setup._entry, section ".printk_index", align 4
@smu_smc_hw_setup._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 1161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Failed system features control!\0A\00", [55 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.166 = internal global ptr @smu_smc_hw_setup._entry.164, section ".printk_index", align 4
@smu_smc_hw_setup._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.163, ptr @.str.2, i32 1171, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: Failed to pre-set display count as 0!\0A\00", [49 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.169 = internal global ptr @smu_smc_hw_setup._entry.167, section ".printk_index", align 4
@smu_smc_hw_setup._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 1177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Failed to SetDriverDramAddr!\0A\00", [58 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.172 = internal global ptr @smu_smc_hw_setup._entry.170, section ".printk_index", align 4
@smu_smc_hw_setup._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.163, ptr @.str.2, i32 1186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Failed to SetToolsDramAddr!\0A\00", [59 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.175 = internal global ptr @smu_smc_hw_setup._entry.173, section ".printk_index", align 4
@smu_smc_hw_setup._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.163, ptr @.str.2, i32 1196, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Failed to SetDramLogDramAddr!\0A\00", [57 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.178 = internal global ptr @smu_smc_hw_setup._entry.176, section ".printk_index", align 4
@smu_smc_hw_setup._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.163, ptr @.str.2, i32 1207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: Failed to transfer pptable to SMC!\0A\00", [52 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.181 = internal global ptr @smu_smc_hw_setup._entry.179, section ".printk_index", align 4
@smu_smc_hw_setup._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.163, ptr @.str.2, i32 1218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Failed to set driver allowed features mask!\0A\00", [43 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.184 = internal global ptr @smu_smc_hw_setup._entry.182, section ".printk_index", align 4
@smu_smc_hw_setup._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.163, ptr @.str.2, i32 1224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: Failed to enable requested dpm features!\0A\00", [46 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.187 = internal global ptr @smu_smc_hw_setup._entry.185, section ".printk_index", align 4
@smu_smc_hw_setup._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.163, ptr @.str.2, i32 1229, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: dpm has been disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.190 = internal global ptr @smu_smc_hw_setup._entry.188, section ".printk_index", align 4
@smu_smc_hw_setup._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.163, ptr @.str.2, i32 1258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: Attempt to override pcie params failed!\0A\00", [47 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.193 = internal global ptr @smu_smc_hw_setup._entry.191, section ".printk_index", align 4
@smu_smc_hw_setup._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.163, ptr @.str.2, i32 1264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: Failed to get thermal temperature ranges!\0A\00", [45 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.196 = internal global ptr @smu_smc_hw_setup._entry.194, section ".printk_index", align 4
@smu_smc_hw_setup._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.163, ptr @.str.2, i32 1270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Failed to enable thermal alert!\0A\00", [55 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.199 = internal global ptr @smu_smc_hw_setup._entry.197, section ".printk_index", align 4
@smu_smc_hw_setup._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.163, ptr @.str.2, i32 1281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: Failed to setup default dpm clock tables!\0A\00", [45 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.202 = internal global ptr @smu_smc_hw_setup._entry.200, section ".printk_index", align 4
@smu_smc_hw_setup._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.163, ptr @.str.2, i32 1287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: Failed to notify display change!\0A\00", [54 x i8] zeroinitializer }, align 32
@smu_smc_hw_setup._entry_ptr.205 = internal global ptr @smu_smc_hw_setup._entry.203, section ".printk_index", align 4
@smu_set_default_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.206, ptr @.str.2, i32 677, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smu_set_default_dpm_table\00", [38 x i8] zeroinitializer }, align 32
@smu_set_default_dpm_table._entry_ptr = internal global ptr @smu_set_default_dpm_table._entry, section ".printk_index", align 4
@smu_smc_hw_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.2, i32 1499, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: Fail to disable thermal alert!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smu_smc_hw_cleanup\00", [45 x i8] zeroinitializer }, align 32
@smu_smc_hw_cleanup._entry_ptr = internal global ptr @smu_smc_hw_cleanup._entry, section ".printk_index", align 4
@smu_smc_hw_cleanup._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.208, ptr @.str.2, i32 1505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: Fail to disable dpm features!\0A\00", [57 x i8] zeroinitializer }, align 32
@smu_smc_hw_cleanup._entry_ptr.211 = internal global ptr @smu_smc_hw_cleanup._entry.209, section ".printk_index", align 4
@smu_disable_dpms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.2, i32 1475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: Failed to disable smu features except BACO.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smu_disable_dpms\00", [47 x i8] zeroinitializer }, align 32
@smu_disable_dpms._entry_ptr = internal global ptr @smu_disable_dpms._entry, section ".printk_index", align 4
@smu_disable_dpms._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.2, i32 1479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: Failed to disable smu features.\0A\00", [55 x i8] zeroinitializer }, align 32
@smu_disable_dpms._entry_ptr.216 = internal global ptr @smu_disable_dpms._entry.214, section ".printk_index", align 4
@smu_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 1595, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: SMU is resuming...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smu_resume\00", [21 x i8] zeroinitializer }, align 32
@smu_resume._entry_ptr = internal global ptr @smu_resume._entry, section ".printk_index", align 4
@smu_resume._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.218, ptr @.str.2, i32 1599, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@smu_resume._entry_ptr.220 = internal global ptr @smu_resume._entry.219, section ".printk_index", align 4
@smu_resume._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.218, ptr @.str.2, i32 1605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@smu_resume._entry_ptr.222 = internal global ptr @smu_resume._entry.221, section ".printk_index", align 4
@smu_resume._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.218, ptr @.str.2, i32 1615, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: SMU is resumed successfully!\0A\00", [58 x i8] zeroinitializer }, align 32
@smu_resume._entry_ptr.225 = internal global ptr @smu_resume._entry.223, section ".printk_index", align 4
@switch.table.smu_force_ppclk_levels = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 13, i32 14, i32 15, i32 6, i32 12, i32 8, i32 1, i32 2, i32 18, i32 19, i32 20, i32 21], [48 x i8] zeroinitializer }, align 32
@switch.table.smu_print_ppclk_levels = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 13, i32 14, i32 15, i32 6, i32 12, i32 8, i32 1, i32 2, i32 18, i32 19, i32 20, i32 21, i32 22, i32 17], [40 x i8] zeroinitializer }, align 32
@switch.table.smu_get_clock_by_type_with_latency = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 9, i32 0, i32 14, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 720896, i64 720898, i64 720901, i64 720903, i64 720904, i64 720905, i64 720907, i64 720908, i64 720909, i64 722176, i64 786432, i64 786433, i64 851969, i64 851970, i64 851971]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 32, i64 851969, i64 851971]
@__sancov_gen_cov_switch_values.227 = internal global [6 x i64] [i64 4, i64 64, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.228 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.229 = internal global [7 x i64] [i64 5, i64 32, i64 720903, i64 720907, i64 720908, i64 720909, i64 851970]
@__sancov_gen_cov_switch_values.230 = internal global [9 x i64] [i64 7, i64 32, i64 13, i64 14, i64 18, i64 19, i64 20, i64 21, i64 23]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 512]
@__sancov_gen_cov_switch_values.232 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.233 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 7, i64 8, i64 11, i64 13]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.235 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 12, i64 14]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 512]
@__sancov_gen_cov_switch_values.237 = internal global [6 x i64] [i64 4, i64 32, i64 720903, i64 720907, i64 720908, i64 722176]
@__sancov_gen_cov_switch_values.238 = internal global [10 x i64] [i64 8, i64 32, i64 720896, i64 720901, i64 720903, i64 720905, i64 720907, i64 720908, i64 720909, i64 722176]
@__sancov_gen_cov_switch_values.239 = internal global [6 x i64] [i64 4, i64 32, i64 720896, i64 720901, i64 720903, i64 720905]
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2066, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2126, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2134, i32 10 }
@___asan_gen_.276 = private unnamed_addr constant [13 x i8] c"smu_ip_funcs\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2133, i32 27 }
@___asan_gen_.279 = private unnamed_addr constant [19 x i8] c"smu_v11_0_ip_block\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2152, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"smu_v12_0_ip_block\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2161, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c"smu_v13_0_ip_block\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2170, i32 38 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 3277, i32 27 }
@___asan_gen_.291 = private unnamed_addr constant [21 x i8] c"smu_stb_debugfs_fops\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 3258, i32 37 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 638, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 639, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [15 x i8] c"swsmu_pm_funcs\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 3114, i32 34 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1944, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1736, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1743, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1750, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1758, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 526, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 550, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2195, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2203, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 281, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 296, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 302, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 308, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 314, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 318, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2363, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2739, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2861, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2934, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2045, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 2808, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 703, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 714, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 721, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 730, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 386, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 403, i32 6 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 417, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 423, i32 5 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 429, i32 5 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 438, i32 5 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1034, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1039, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1040, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1041, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1043, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1044, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1052, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1053, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1078, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1084, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1090, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 938, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 948, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 768, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 797, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 863, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 909, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1109, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 992, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 998, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1348, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1364, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1370, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1380, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1393, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1399, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1319, i32 4 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1152, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1161, i32 5 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1171, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1177, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1186, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1196, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1207, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1218, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1224, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1229, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1258, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1264, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1270, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1281, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1287, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 676, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1499, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1505, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1475, i32 4 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1479, i32 4 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1595, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1599, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1605, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.885 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.886 = private constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.886, i32 1615, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant [36 x i8] c"switch.table.smu_force_ppclk_levels\00", align 1
@___asan_gen_.889 = private unnamed_addr constant [36 x i8] c"switch.table.smu_print_ppclk_levels\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [48 x i8] c"switch.table.smu_get_clock_by_type_with_latency\00", align 1
@llvm.compiler.used = appending global [293 x ptr] [ptr @smu_adjust_power_state_dynamic._entry, ptr @smu_adjust_power_state_dynamic._entry.19, ptr @smu_adjust_power_state_dynamic._entry.22, ptr @smu_adjust_power_state_dynamic._entry.25, ptr @smu_adjust_power_state_dynamic._entry_ptr, ptr @smu_adjust_power_state_dynamic._entry_ptr.21, ptr @smu_adjust_power_state_dynamic._entry_ptr.24, ptr @smu_adjust_power_state_dynamic._entry_ptr.27, ptr @smu_alloc_dummy_read_table._entry, ptr @smu_alloc_dummy_read_table._entry_ptr, ptr @smu_alloc_memory_pool._entry, ptr @smu_alloc_memory_pool._entry_ptr, ptr @smu_allow_xgmi_power_down._entry, ptr @smu_allow_xgmi_power_down._entry_ptr, ptr @smu_baco_set_state._entry, ptr @smu_baco_set_state._entry_ptr, ptr @smu_disable_dpms._entry, ptr @smu_disable_dpms._entry.214, ptr @smu_disable_dpms._entry_ptr, ptr @smu_disable_dpms._entry_ptr.216, ptr @smu_dpm_set_power_gate._entry, ptr @smu_dpm_set_power_gate._entry.44, ptr @smu_dpm_set_power_gate._entry.49, ptr @smu_dpm_set_power_gate._entry.52, ptr @smu_dpm_set_power_gate._entry.55, ptr @smu_dpm_set_power_gate._entry_ptr, ptr @smu_dpm_set_power_gate._entry_ptr.46, ptr @smu_dpm_set_power_gate._entry_ptr.51, ptr @smu_dpm_set_power_gate._entry_ptr.54, ptr @smu_dpm_set_power_gate._entry_ptr.57, ptr @smu_get_clock_by_type_with_latency._entry, ptr @smu_get_clock_by_type_with_latency._entry_ptr, ptr @smu_hw_init._entry, ptr @smu_hw_init._entry.146, ptr @smu_hw_init._entry.149, ptr @smu_hw_init._entry.152, ptr @smu_hw_init._entry.155, ptr @smu_hw_init._entry.158, ptr @smu_hw_init._entry_ptr, ptr @smu_hw_init._entry_ptr.148, ptr @smu_hw_init._entry_ptr.151, ptr @smu_hw_init._entry_ptr.154, ptr @smu_hw_init._entry_ptr.157, ptr @smu_hw_init._entry_ptr.160, ptr @smu_init_fb_allocations._entry, ptr @smu_init_fb_allocations._entry.130, ptr @smu_init_fb_allocations._entry_ptr, ptr @smu_init_fb_allocations._entry_ptr.132, ptr @smu_late_init._entry, ptr @smu_late_init._entry.74, ptr @smu_late_init._entry.77, ptr @smu_late_init._entry.80, ptr @smu_late_init._entry_ptr, ptr @smu_late_init._entry_ptr.76, ptr @smu_late_init._entry_ptr.79, ptr @smu_late_init._entry_ptr.82, ptr @smu_load_microcode._entry, ptr @smu_load_microcode._entry.36, ptr @smu_load_microcode._entry_ptr, ptr @smu_load_microcode._entry_ptr.38, ptr @smu_mode2_reset._entry, ptr @smu_mode2_reset._entry_ptr, ptr @smu_restore_dpm_user_profile._entry, ptr @smu_restore_dpm_user_profile._entry.85, ptr @smu_restore_dpm_user_profile._entry.88, ptr @smu_restore_dpm_user_profile._entry.91, ptr @smu_restore_dpm_user_profile._entry.94, ptr @smu_restore_dpm_user_profile._entry.97, ptr @smu_restore_dpm_user_profile._entry_ptr, ptr @smu_restore_dpm_user_profile._entry_ptr.87, ptr @smu_restore_dpm_user_profile._entry_ptr.90, ptr @smu_restore_dpm_user_profile._entry_ptr.93, ptr @smu_restore_dpm_user_profile._entry_ptr.96, ptr @smu_restore_dpm_user_profile._entry_ptr.99, ptr @smu_resume._entry, ptr @smu_resume._entry.219, ptr @smu_resume._entry.221, ptr @smu_resume._entry.223, ptr @smu_resume._entry_ptr, ptr @smu_resume._entry_ptr.220, ptr @smu_resume._entry_ptr.222, ptr @smu_resume._entry_ptr.225, ptr @smu_set_ac_dc._entry, ptr @smu_set_ac_dc._entry_ptr, ptr @smu_set_default_dpm_table._entry, ptr @smu_set_default_dpm_table._entry_ptr, ptr @smu_set_df_cstate._entry, ptr @smu_set_df_cstate._entry_ptr, ptr @smu_set_power_limit._entry, ptr @smu_set_power_limit._entry_ptr, ptr @smu_set_xgmi_pstate._entry, ptr @smu_set_xgmi_pstate._entry_ptr, ptr @smu_smc_hw_cleanup._entry, ptr @smu_smc_hw_cleanup._entry.209, ptr @smu_smc_hw_cleanup._entry_ptr, ptr @smu_smc_hw_cleanup._entry_ptr.211, ptr @smu_smc_hw_setup._entry, ptr @smu_smc_hw_setup._entry.164, ptr @smu_smc_hw_setup._entry.167, ptr @smu_smc_hw_setup._entry.170, ptr @smu_smc_hw_setup._entry.173, ptr @smu_smc_hw_setup._entry.176, ptr @smu_smc_hw_setup._entry.179, ptr @smu_smc_hw_setup._entry.182, ptr @smu_smc_hw_setup._entry.185, ptr @smu_smc_hw_setup._entry.188, ptr @smu_smc_hw_setup._entry.191, ptr @smu_smc_hw_setup._entry.194, ptr @smu_smc_hw_setup._entry.197, ptr @smu_smc_hw_setup._entry.200, ptr @smu_smc_hw_setup._entry.203, ptr @smu_smc_hw_setup._entry_ptr, ptr @smu_smc_hw_setup._entry_ptr.166, ptr @smu_smc_hw_setup._entry_ptr.169, ptr @smu_smc_hw_setup._entry_ptr.172, ptr @smu_smc_hw_setup._entry_ptr.175, ptr @smu_smc_hw_setup._entry_ptr.178, ptr @smu_smc_hw_setup._entry_ptr.181, ptr @smu_smc_hw_setup._entry_ptr.184, ptr @smu_smc_hw_setup._entry_ptr.187, ptr @smu_smc_hw_setup._entry_ptr.190, ptr @smu_smc_hw_setup._entry_ptr.193, ptr @smu_smc_hw_setup._entry_ptr.196, ptr @smu_smc_hw_setup._entry_ptr.199, ptr @smu_smc_hw_setup._entry_ptr.202, ptr @smu_smc_hw_setup._entry_ptr.205, ptr @smu_smc_table_sw_fini._entry, ptr @smu_smc_table_sw_fini._entry.141, ptr @smu_smc_table_sw_fini._entry_ptr, ptr @smu_smc_table_sw_fini._entry_ptr.143, ptr @smu_smc_table_sw_init._entry, ptr @smu_smc_table_sw_init._entry.125, ptr @smu_smc_table_sw_init._entry_ptr, ptr @smu_smc_table_sw_init._entry_ptr.127, ptr @smu_start_smc_engine._entry, ptr @smu_start_smc_engine._entry_ptr, ptr @smu_sw_fini._entry, ptr @smu_sw_fini._entry_ptr, ptr @smu_sw_init._entry, ptr @smu_sw_init._entry.117, ptr @smu_sw_init._entry.120, ptr @smu_sw_init._entry_ptr, ptr @smu_sw_init._entry_ptr.119, ptr @smu_sw_init._entry_ptr.122, ptr @smu_sys_set_pp_table._entry, ptr @smu_sys_set_pp_table._entry.30, ptr @smu_sys_set_pp_table._entry_ptr, ptr @smu_sys_set_pp_table._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @smu_ip_funcs, ptr @smu_v11_0_ip_block, ptr @smu_v12_0_ip_block, ptr @smu_v13_0_ip_block, ptr @.str.10, ptr @smu_stb_debugfs_fops, ptr @smu_early_init.__key, ptr @.str.11, ptr @smu_early_init.__key.12, ptr @.str.13, ptr @swsmu_pm_funcs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @smu_sw_init.__key, ptr @.str.100, ptr @smu_sw_init.__key.101, ptr @.str.102, ptr @smu_sw_init.__key.103, ptr @.str.104, ptr @smu_sw_init.__key.105, ptr @.str.106, ptr @smu_sw_init.__key.107, ptr @.str.108, ptr @smu_sw_init.__key.109, ptr @.str.110, ptr @smu_sw_init.__key.111, ptr @.str.112, ptr @smu_sw_init.__key.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.210, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.217, ptr @.str.218, ptr @.str.224, ptr @switch.table.smu_force_ppclk_levels, ptr @switch.table.smu_print_ppclk_levels, ptr @switch.table.smu_get_clock_by_type_with_latency], section "llvm.metadata"
@0 = internal global [219 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_allow_xgmi_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_set_ac_dc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v11_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v12_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_stb_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_early_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_early_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swsmu_pm_funcs to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_adjust_power_state_dynamic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_adjust_power_state_dynamic._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_adjust_power_state_dynamic._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_adjust_power_state_dynamic._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sys_set_pp_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sys_set_pp_table._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_load_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_load_microcode._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_dpm_set_power_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_dpm_set_power_gate._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_dpm_set_power_gate._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_dpm_set_power_gate._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_dpm_set_power_gate._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_set_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_get_clock_by_type_with_latency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_baco_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_mode2_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_set_df_cstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_set_xgmi_pstate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_late_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_late_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_late_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_late_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_restore_dpm_user_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_restore_dpm_user_profile._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_restore_dpm_user_profile._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_restore_dpm_user_profile._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_restore_dpm_user_profile._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_restore_dpm_user_profile._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init.__key.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init.__key.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init.__key.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init.__key.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init.__key.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init.__key.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_table_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_table_sw_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_init_fb_allocations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_init_fb_allocations._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_alloc_memory_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_alloc_dummy_read_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_sw_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_table_sw_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_table_sw_fini._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_hw_init._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_hw_init._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_hw_init._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_hw_init._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_hw_init._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_start_smc_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_setup._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_set_default_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_smc_hw_cleanup._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_disable_dpms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_disable_dpms._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_resume._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_resume._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_resume._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smu_force_ppclk_levels to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smu_print_ppclk_levels to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smu_get_clock_by_type_with_latency to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_get_status_gfxoff(ptr noundef %adev, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cmp.i = icmp eq i32 %1, 21
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %is_support_sw_smu.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

is_support_sw_smu.exit:                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %3)
  %cmp2.i = icmp ugt i32 %3, 720895
  br i1 %cmp2.i, label %land.lhs.true, label %is_support_sw_smu.exit.if.end_crit_edge

is_support_sw_smu.exit.if.end_crit_edge:          ; preds = %is_support_sw_smu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %is_support_sw_smu.exit
  %ppt_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 2
  %4 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppt_funcs, align 8
  %get_gfx_off_status = getelementptr inbounds %struct.pptable_funcs, ptr %5, i32 0, i32 79
  %6 = ptrtoint ptr %get_gfx_off_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_gfx_off_status, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.cond.end12_crit_edge, label %cond.true7

if.then.cond.end12_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.true7:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 %7(ptr noundef %smu1) #10
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true7, %if.then.cond.end12_crit_edge
  %cond13 = phi i32 [ %call10, %cond.true7 ], [ -22, %if.then.cond.end12_crit_edge ]
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond13, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end12, %land.lhs.true.if.end_crit_edge, %is_support_sw_smu.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %cond.end12 ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %is_support_sw_smu.exit.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_support_sw_smu(ptr nocapture noundef readonly %adev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cmp = icmp eq i32 %1, 21
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %3)
  %cmp2 = icmp ugt i32 %3, 720895
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp2, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_set_soft_freq_range(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %min, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %set_soft_freq_limited_range = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 93
  %2 = ptrtoint ptr %set_soft_freq_limited_range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_soft_freq_limited_range, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %min, i32 noundef %max) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_get_dpm_freq_range(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %min, ptr noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %min, null
  %tobool1.not = icmp eq ptr %max, null
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %get_dpm_ultimate_freq = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 92
  %2 = ptrtoint ptr %get_dpm_ultimate_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_dpm_ultimate_freq, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %min, ptr noundef %max) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_support_cclk_dpm(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cmp.i = icmp eq i32 %1, 21
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %is_support_sw_smu.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_support_sw_smu.exit:                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 15
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %3)
  %cmp2.i = icmp ugt i32 %3, 720895
  br i1 %cmp2.i, label %if.end, label %is_support_sw_smu.exit.cleanup_crit_edge

is_support_sw_smu.exit.cleanup_crit_edge:         ; preds = %is_support_sw_smu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_support_sw_smu.exit
  %ppt_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 2
  %4 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppt_funcs, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %cond.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

cond.true:                                        ; preds = %if.end
  %feature_is_enabled = getelementptr inbounds %struct.pptable_funcs, ptr %5, i32 0, i32 64
  %6 = ptrtoint ptr %feature_is_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %feature_is_enabled, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %cond.true.cleanup_crit_edge, label %cond.true4

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true4:                                       ; preds = %cond.true
  %call7 = tail call i32 %7(ptr noundef %smu1, i32 noundef 60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cond.true4.cleanup_crit_edge, label %cond.true4.if.end11_crit_edge

cond.true4.if.end11_crit_edge:                    ; preds = %cond.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

cond.true4.cleanup_crit_edge:                     ; preds = %cond.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %cond.true4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %cond.true4.cleanup_crit_edge, %cond.true.cleanup_crit_edge, %is_support_sw_smu.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end11 ], [ false, %is_support_sw_smu.exit.cleanup_crit_edge ], [ false, %cond.true.cleanup_crit_edge ], [ false, %cond.true4.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_allow_xgmi_power_down(ptr noundef %smu, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %allow_xgmi_power_down = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 34
  %8 = ptrtoint ptr %allow_xgmi_power_down to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %allow_xgmi_power_down, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %10 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppt_funcs, align 8
  %allow_xgmi_power_down9 = getelementptr inbounds %struct.pptable_funcs, ptr %11, i32 0, i32 34
  %12 = ptrtoint ptr %allow_xgmi_power_down9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %allow_xgmi_power_down9, align 4
  %call = tail call i32 %13(ptr noundef %smu, i1 noundef zeroext %en) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end7.if.end14_crit_edge, label %do.end

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smu, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end7.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end14 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_write_watermarks_table(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cond.end9_crit_edge, label %cond.true

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true:                                        ; preds = %if.end
  %set_watermarks_table = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %set_watermarks_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_watermarks_table, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %cond.true.cond.end9_crit_edge, label %cond.true5

cond.true.cond.end9_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true5:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %smu, ptr noundef null) #10
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true5, %cond.true.cond.end9_crit_edge, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.true.cond.end9_crit_edge ], [ -22, %if.end.cond.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond10, %cond.end9 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_set_ac_dc(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dc_controlled_by_gpio = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 48
  %6 = ptrtoint ptr %dc_controlled_by_gpio to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dc_controlled_by_gpio, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %8 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppt_funcs, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end4.do.end_crit_edge, label %cond.true

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.true:                                        ; preds = %if.end4
  %set_power_source = getelementptr inbounds %struct.pptable_funcs, ptr %9, i32 0, i32 94
  %10 = ptrtoint ptr %set_power_source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_power_source, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %cond.true.if.end26_crit_edge, label %cond.end16

cond.true.if.end26_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

cond.end16:                                       ; preds = %cond.true
  %12 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smu, align 8
  %ac_power = getelementptr inbounds %struct.amdgpu_device, ptr %13, i32 0, i32 98, i32 23
  %14 = ptrtoint ptr %ac_power to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ac_power, align 4, !range !394
  %16 = xor i8 %15, 1
  %17 = zext i8 %16 to i32
  %call = tail call i32 %11(ptr noundef %smu, i32 noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %cond.end16.if.end26_crit_edge, label %cond.end16.do.end_crit_edge

cond.end16.do.end_crit_edge:                      ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.end16.if.end26_crit_edge:                    ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end:                                           ; preds = %cond.end16.do.end_crit_edge, %if.end4.do.end_crit_edge
  %cond1747 = phi i32 [ %call, %cond.end16.do.end_crit_edge ], [ -22, %if.end4.do.end_crit_edge ]
  %18 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smu, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %ac_power23 = getelementptr inbounds %struct.amdgpu_device, ptr %19, i32 0, i32 98, i32 23
  %22 = ptrtoint ptr %ac_power23 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ac_power23, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond25) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end, %cond.end16.if.end26_crit_edge, %cond.true.if.end26_crit_edge
  %cond1743 = phi i32 [ %cond1747, %do.end ], [ 0, %cond.end16.if.end26_crit_edge ], [ 0, %cond.true.if.end26_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond1743, %if.end26 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97
  %0 = ptrtoint ptr %smu1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %handle, ptr %smu1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_dpm to i32))
  %1 = load i32, ptr @amdgpu_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %pm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 42
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %pm_enabled, align 4
  %is_apu = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 43
  %3 = ptrtoint ptr %is_apu to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_apu, align 1
  %mutex = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 9
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @smu_early_init.__key) #10
  %smu_baco = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 19
  tail call void @__mutex_init(ptr noundef %smu_baco, ptr noundef nonnull @.str.13, ptr noundef nonnull @smu_early_init.__key.12) #10
  %state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 19, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  %platform_support = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 19, i32 2
  %5 = ptrtoint ptr %platform_support to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %platform_support, align 8
  %user_dpm_profile = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64
  %6 = ptrtoint ptr %user_dpm_profile to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %user_dpm_profile, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %7 = ptrtoint ptr %powerplay to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %smu1, ptr %powerplay, align 8
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95, i32 1
  %8 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @swsmu_pm_funcs, ptr %pp_funcs, align 4
  %pp_feature.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 24
  %9 = ptrtoint ptr %pp_feature.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pp_feature.i, align 8
  %and.i = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %od_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 25
  %11 = ptrtoint ptr %od_enabled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %od_enabled.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 15
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end.i.smu_set_funcs.exit_crit_edge [
    i32 720896, label %if.end.i.sw.bb.i_crit_edge
    i32 720901, label %if.end.i.sw.bb.i_crit_edge23
    i32 720905, label %if.end.i.sw.bb.i_crit_edge24
    i32 720903, label %if.end.i.sw.bb3.i_crit_edge
    i32 720907, label %if.end.i.sw.bb3.i_crit_edge25
    i32 720908, label %if.end.i.sw.bb3.i_crit_edge26
    i32 720909, label %if.end.i.sw.bb3.i_crit_edge27
    i32 786432, label %if.end.i.sw.bb4.i_crit_edge
    i32 786433, label %if.end.i.sw.bb4.i_crit_edge28
    i32 722176, label %sw.bb5.i
    i32 851969, label %if.end.i.sw.bb6.i_crit_edge
    i32 851971, label %if.end.i.sw.bb6.i_crit_edge29
    i32 720904, label %sw.bb7.i
    i32 720898, label %sw.bb8.i
    i32 851970, label %sw.bb13.i
  ]

if.end.i.sw.bb6.i_crit_edge29:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

if.end.i.sw.bb6.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

if.end.i.sw.bb4.i_crit_edge28:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end.i.sw.bb4.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end.i.sw.bb3.i_crit_edge27:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge26:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge25:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.end.i.sw.bb.i_crit_edge24:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge23:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end.i.smu_set_funcs.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_funcs.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge23, %if.end.i.sw.bb.i_crit_edge24
  tail call void @navi10_set_ppt_funcs(ptr noundef %smu1) #10
  br label %smu_set_funcs.exit

sw.bb3.i:                                         ; preds = %if.end.i.sw.bb3.i_crit_edge, %if.end.i.sw.bb3.i_crit_edge25, %if.end.i.sw.bb3.i_crit_edge26, %if.end.i.sw.bb3.i_crit_edge27
  tail call void @sienna_cichlid_set_ppt_funcs(ptr noundef %smu1) #10
  br label %smu_set_funcs.exit

sw.bb4.i:                                         ; preds = %if.end.i.sw.bb4.i_crit_edge, %if.end.i.sw.bb4.i_crit_edge28
  tail call void @renoir_set_ppt_funcs(ptr noundef %smu1) #10
  br label %smu_set_funcs.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vangogh_set_ppt_funcs(ptr noundef %smu1) #10
  br label %smu_set_funcs.exit

sw.bb6.i:                                         ; preds = %if.end.i.sw.bb6.i_crit_edge, %if.end.i.sw.bb6.i_crit_edge29
  tail call void @yellow_carp_set_ppt_funcs(ptr noundef %smu1) #10
  br label %smu_set_funcs.exit

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cyan_skillfish_set_ppt_funcs(ptr noundef %smu1) #10
  br label %smu_set_funcs.exit

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and11.i = and i32 %10, -32769
  %15 = ptrtoint ptr %pp_feature.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and11.i, ptr %pp_feature.i, align 8
  tail call void @arcturus_set_ppt_funcs(ptr noundef %smu1) #10
  %od_enabled12.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 25
  %16 = ptrtoint ptr %od_enabled12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %od_enabled12.i, align 4
  br label %smu_set_funcs.exit

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @aldebaran_set_ppt_funcs(ptr noundef %smu1) #10
  %od_enabled14.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 25
  %17 = ptrtoint ptr %od_enabled14.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %od_enabled14.i, align 4
  br label %smu_set_funcs.exit

smu_set_funcs.exit:                               ; preds = %sw.bb13.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb.i, %if.end.i.smu_set_funcs.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end.i.smu_set_funcs.exit_crit_edge ], [ 0, %sw.bb13.i ], [ 0, %sw.bb8.i ], [ 0, %sw.bb7.i ], [ 0, %sw.bb6.i ], [ 0, %sw.bb5.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_late_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97
  %ppt_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end8_crit_edge, label %cond.true

entry.cond.end8_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end8

cond.true:                                        ; preds = %entry
  %set_fine_grain_gfx_freq_parameters = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %set_fine_grain_gfx_freq_parameters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_fine_grain_gfx_freq_parameters, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %cond.true.cond.end8_crit_edge, label %cond.true4

cond.true.cond.end8_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end8

cond.true4:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %smu1) #10
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true4, %cond.true.cond.end8_crit_edge, %entry.cond.end8_crit_edge
  %pm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 42
  %4 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %cond.end8.cleanup_crit_edge, label %if.end

cond.end8.cleanup_crit_edge:                      ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end8
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end.do.end_crit_edge, label %cond.true13

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.true13:                                      ; preds = %if.end
  %post_init = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %post_init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %post_init, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %cond.true13.if.end28_crit_edge, label %cond.end24

cond.true13.if.end28_crit_edge:                   ; preds = %cond.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

cond.end24:                                       ; preds = %cond.true13
  %call19 = tail call i32 %9(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool26.not = icmp eq i32 %call19, 0
  br i1 %tobool26.not, label %cond.end24.if.end28_crit_edge, label %cond.end24.do.end_crit_edge

cond.end24.do.end_crit_edge:                      ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.end24.if.end28_crit_edge:                    ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end:                                           ; preds = %cond.end24.do.end_crit_edge, %if.end.do.end_crit_edge
  %cond25219 = phi i32 [ %call19, %cond.end24.do.end_crit_edge ], [ -22, %if.end.do.end_crit_edge ]
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.72) #13
  br label %cleanup

if.end28:                                         ; preds = %cond.end24.if.end28_crit_edge, %cond.true13.if.end28_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 172, i32 15
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %13, label %if.end35 [
    i32 851969, label %if.end28.cleanup_crit_edge
    i32 851971, label %if.end28.cleanup_crit_edge239
  ]

if.end28.cleanup_crit_edge239:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virt, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end35.if.then39_crit_edge, label %lor.lhs.false37

if.end35.if.then39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

lor.lhs.false37:                                  ; preds = %if.end35
  %od_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 25
  %17 = ptrtoint ptr %od_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %od_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool38.not = icmp eq i8 %18, 0
  br i1 %tobool38.not, label %lor.lhs.false37.if.end62_crit_edge, label %lor.lhs.false37.if.then39_crit_edge

lor.lhs.false37.if.then39_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

lor.lhs.false37.if.end62_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then39:                                        ; preds = %lor.lhs.false37.if.then39_crit_edge, %if.end35.if.then39_crit_edge
  %19 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ppt_funcs, align 8
  %tobool41.not = icmp eq ptr %20, null
  br i1 %tobool41.not, label %if.then39.do.end59_crit_edge, label %cond.true42

if.then39.do.end59_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

cond.true42:                                      ; preds = %if.then39
  %set_default_od_settings = getelementptr inbounds %struct.pptable_funcs, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %set_default_od_settings to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_default_od_settings, align 4
  %tobool44.not = icmp eq ptr %22, null
  br i1 %tobool44.not, label %cond.true42.if.end62_crit_edge, label %cond.end53

cond.true42.if.end62_crit_edge:                   ; preds = %cond.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

cond.end53:                                       ; preds = %cond.true42
  %call48 = tail call i32 %22(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool55.not = icmp eq i32 %call48, 0
  br i1 %tobool55.not, label %cond.end53.if.end62_crit_edge, label %cond.end53.do.end59_crit_edge

cond.end53.do.end59_crit_edge:                    ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

cond.end53.if.end62_crit_edge:                    ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

do.end59:                                         ; preds = %cond.end53.do.end59_crit_edge, %if.then39.do.end59_crit_edge
  %cond54225 = phi i32 [ %call48, %cond.end53.do.end59_crit_edge ], [ -22, %if.then39.do.end59_crit_edge ]
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.75) #13
  br label %cleanup

if.end62:                                         ; preds = %cond.end53.if.end62_crit_edge, %cond.true42.if.end62_crit_edge, %lor.lhs.false37.if.end62_crit_edge
  %25 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ppt_funcs, align 8
  %tobool64.not = icmp eq ptr %26, null
  br i1 %tobool64.not, label %if.end62.do.end82_crit_edge, label %cond.true65

if.end62.do.end82_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

cond.true65:                                      ; preds = %if.end62
  %populate_umd_state_clk = getelementptr inbounds %struct.pptable_funcs, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %populate_umd_state_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %populate_umd_state_clk, align 4
  %tobool67.not = icmp eq ptr %28, null
  br i1 %tobool67.not, label %cond.true65.if.end84_crit_edge, label %cond.end76

cond.true65.if.end84_crit_edge:                   ; preds = %cond.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

cond.end76:                                       ; preds = %cond.true65
  %call71 = tail call i32 %28(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool78.not = icmp eq i32 %call71, 0
  br i1 %tobool78.not, label %cond.end76.if.end84_crit_edge, label %cond.end76.do.end82_crit_edge

cond.end76.do.end82_crit_edge:                    ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

cond.end76.if.end84_crit_edge:                    ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end82:                                         ; preds = %cond.end76.do.end82_crit_edge, %if.end62.do.end82_crit_edge
  %cond77231 = phi i32 [ %call71, %cond.end76.do.end82_crit_edge ], [ -22, %if.end62.do.end82_crit_edge ]
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.78) #13
  br label %cleanup

if.end84:                                         ; preds = %cond.end76.if.end84_crit_edge, %cond.true65.if.end84_crit_edge
  %31 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ppt_funcs, align 8
  %tobool86.not = icmp eq ptr %32, null
  br i1 %tobool86.not, label %if.end84.do.end104_crit_edge, label %cond.true87

if.end84.do.end104_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

cond.true87:                                      ; preds = %if.end84
  %get_power_limit = getelementptr inbounds %struct.pptable_funcs, ptr %32, i32 0, i32 31
  %33 = ptrtoint ptr %get_power_limit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_power_limit, align 4
  %tobool89.not = icmp eq ptr %34, null
  br i1 %tobool89.not, label %cond.true87.if.end106_crit_edge, label %cond.end98

cond.true87.if.end106_crit_edge:                  ; preds = %cond.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

cond.end98:                                       ; preds = %cond.true87
  %current_power_limit = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 26
  %default_power_limit = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 27
  %max_power_limit = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 28
  %call93 = tail call i32 %34(ptr noundef %smu1, ptr noundef %current_power_limit, ptr noundef %default_power_limit, ptr noundef %max_power_limit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool100.not = icmp eq i32 %call93, 0
  br i1 %tobool100.not, label %cond.end98.if.end106_crit_edge, label %cond.end98.do.end104_crit_edge

cond.end98.do.end104_crit_edge:                   ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

cond.end98.if.end106_crit_edge:                   ; preds = %cond.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

do.end104:                                        ; preds = %cond.end98.do.end104_crit_edge, %if.end84.do.end104_crit_edge
  %cond99237 = phi i32 [ %call93, %cond.end98.do.end104_crit_edge ], [ -22, %if.end84.do.end104_crit_edge ]
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.81) #13
  br label %cleanup

if.end106:                                        ; preds = %cond.end98.if.end106_crit_edge, %cond.true87.if.end106_crit_edge
  %37 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %virt, align 8
  %and109 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then111, label %if.end106.if.end124_crit_edge

if.end106.if.end124_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then111:                                       ; preds = %if.end106
  %39 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ppt_funcs, align 8
  %tobool113.not = icmp eq ptr %40, null
  br i1 %tobool113.not, label %if.then111.cond.end138_crit_edge, label %cond.true114

if.then111.cond.end138_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end138

cond.true114:                                     ; preds = %if.then111
  %get_unique_id = getelementptr inbounds %struct.pptable_funcs, ptr %40, i32 0, i32 38
  %41 = ptrtoint ptr %get_unique_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_unique_id, align 4
  %tobool116.not = icmp eq ptr %42, null
  br i1 %tobool116.not, label %cond.true114.if.end124_crit_edge, label %cond.true117

cond.true114.if.end124_crit_edge:                 ; preds = %cond.true114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

cond.true117:                                     ; preds = %cond.true114
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %42(ptr noundef %smu1) #10
  br label %if.end124

if.end124:                                        ; preds = %cond.true117, %cond.true114.if.end124_crit_edge, %if.end106.if.end124_crit_edge
  %43 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load ptr, ptr %ppt_funcs, align 8
  %tobool126.not = icmp eq ptr %.pr, null
  br i1 %tobool126.not, label %if.end124.cond.end138_crit_edge, label %cond.true127

if.end124.cond.end138_crit_edge:                  ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end138

cond.true127:                                     ; preds = %if.end124
  %get_fan_parameters = getelementptr inbounds %struct.pptable_funcs, ptr %.pr, i32 0, i32 102
  %44 = ptrtoint ptr %get_fan_parameters to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_fan_parameters, align 4
  %tobool129.not = icmp eq ptr %45, null
  br i1 %tobool129.not, label %cond.true127.cond.end138_crit_edge, label %cond.true130

cond.true127.cond.end138_crit_edge:               ; preds = %cond.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end138

cond.true130:                                     ; preds = %cond.true127
  call void @__sanitizer_cov_trace_pc() #12
  %call133 = tail call i32 %45(ptr noundef %smu1) #10
  br label %cond.end138

cond.end138:                                      ; preds = %cond.true130, %cond.true127.cond.end138_crit_edge, %if.end124.cond.end138_crit_edge, %if.then111.cond.end138_crit_edge
  %dpm_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 15, i32 4
  %46 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dpm_level, align 8
  %48 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i, label %cond.end138.smu_handle_task.exit_crit_edge, label %lor.lhs.false.i

cond.end138.smu_handle_task.exit_crit_edge:       ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_handle_task.exit

lor.lhs.false.i:                                  ; preds = %cond.end138
  %50 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %smu1, align 8
  %dpm_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %51, i32 0, i32 98, i32 13
  %52 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dpm_enabled.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool1.not.i = icmp eq i8 %53, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.smu_handle_task.exit_crit_edge, label %if.end.i

lor.lhs.false.i.smu_handle_task.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_handle_task.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = tail call fastcc i32 @smu_adjust_power_state_dynamic(ptr noundef %smu1, i32 noundef %47, i1 noundef zeroext true) #10
  br label %smu_handle_task.exit

smu_handle_task.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.smu_handle_task.exit_crit_edge, %cond.end138.smu_handle_task.exit_crit_edge
  %54 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smu1, align 8
  %in_suspend.i = getelementptr inbounds %struct.amdgpu_device, ptr %55, i32 0, i32 137
  %56 = ptrtoint ptr %in_suspend.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %in_suspend.i, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i208 = icmp eq i8 %57, 0
  br i1 %tobool.not.i208, label %smu_handle_task.exit.cleanup_crit_edge, label %if.end.i211

smu_handle_task.exit.cleanup_crit_edge:           ; preds = %smu_handle_task.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i211:                                      ; preds = %smu_handle_task.exit
  %58 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool1.not.i210 = icmp eq i8 %59, 0
  br i1 %tobool1.not.i210, label %if.end.i211.cleanup_crit_edge, label %lor.lhs.false.i213

if.end.i211.cleanup_crit_edge:                    ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i213:                               ; preds = %if.end.i211
  %dpm_enabled.i212 = getelementptr inbounds %struct.amdgpu_device, ptr %55, i32 0, i32 98, i32 13
  %60 = ptrtoint ptr %dpm_enabled.i212 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dpm_enabled.i212, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool3.not.i = icmp eq i8 %61, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i213.cleanup_crit_edge, label %if.end5.i

lor.lhs.false.i213.cleanup_crit_edge:             ; preds = %lor.lhs.false.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %lor.lhs.false.i213
  %user_dpm_profile.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64
  %flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 4
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %63, 1
  store i32 %or.i, ptr %flags.i, align 4
  %power_limit.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 1
  %64 = ptrtoint ptr %power_limit.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %power_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool7.not.i = icmp eq i32 %65, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end15.i_crit_edge, label %if.then8.i

if.end5.i.if.end15.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.end5.i
  %call.i = tail call i32 @smu_set_power_limit(ptr noundef %smu1, i32 noundef %65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.if.end15.i_crit_edge, label %do.end.i

if.then8.i.if.end15.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %smu1, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.83) #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.then8.i.if.end15.i_crit_edge, %if.end5.i.if.end15.i_crit_edge
  %70 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp.i = icmp eq i32 %71, 2
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.end15.i.if.end36.i_crit_edge

if.end15.i.if.end36.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

for.cond.preheader.i:                             ; preds = %if.end15.i
  %clk_dependency.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %clk_type.0228.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %clk_dependency.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %clk_dependency.i, align 4
  %shl.i = shl nuw nsw i32 1, %clk_type.0228.i
  %and.i = and i32 %73, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 6, i32 %clk_type.0228.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool21.not.i = icmp eq i32 %75, 0
  br i1 %tobool21.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then22.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  %call26.i = tail call fastcc i32 @smu_force_smuclk_levels(ptr noundef %smu1, i32 noundef %clk_type.0228.i, i32 noundef %75) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then22.i.for.inc.i_crit_edge, label %do.end31.i

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end31.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %smu1, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.86, i32 noundef %clk_type.0228.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end31.i, %if.then22.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %clk_type.0228.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.inc.i.if.end36.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end36.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %for.inc.i.if.end36.i_crit_edge, %if.end15.i.if.end36.i_crit_edge
  %80 = ptrtoint ptr %user_dpm_profile.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %user_dpm_profile.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %switch.i = icmp ult i32 %81, 2
  br i1 %switch.i, label %if.then43.i, label %if.end36.i.if.end91.i_crit_edge

if.end36.i.if.end91.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i

if.then43.i:                                      ; preds = %if.end36.i
  %82 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i, label %if.then43.i.if.then48.i_crit_edge, label %lor.lhs.false.i.i

if.then43.i.if.then48.i_crit_edge:                ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

lor.lhs.false.i.i:                                ; preds = %if.then43.i
  %84 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %smu1, align 8
  %dpm_enabled.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %85, i32 0, i32 98, i32 13
  %86 = ptrtoint ptr %dpm_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %dpm_enabled.i.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool1.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.then48.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.then48.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %mutex.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %88 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ppt_funcs, align 8
  %set_fan_control_mode.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %89, i32 0, i32 74
  %90 = ptrtoint ptr %set_fan_control_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_fan_control_mode.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %91, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = tail call i32 %91(ptr noundef %smu1, i32 noundef %81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %if.then3.i.i.if.end11.i.i_crit_edge

if.then3.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

land.lhs.true.i.i:                                ; preds = %if.then3.i.i
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %land.lhs.true.i.i.if.end11.i.i_crit_edge

land.lhs.true.i.i.if.end11.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %user_dpm_profile.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %81, ptr %user_dpm_profile.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true.i.i.if.end11.i.i_crit_edge, %if.then3.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then3.i.i.if.end11.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end11.i.i_crit_edge ], [ 0, %if.then8.i.i ], [ 0, %if.end.i.i.if.end11.i.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool13.not.i.i = icmp ne i32 %ret.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.not.i.i = icmp eq i32 %81, 1
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool13.not.i.i
  br i1 %or.cond.i.i, label %smu_set_fan_control_mode.exit.i, label %land.lhs.true15.i.i

land.lhs.true15.i.i:                              ; preds = %if.end11.i.i
  %95 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags.i, align 4
  %and18.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.then20.i.i, label %land.lhs.true15.i.i.if.end58.i_crit_edge

land.lhs.true15.i.i.if.end58.i_crit_edge:         ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then20.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %fan_speed_pwm.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 2
  %97 = ptrtoint ptr %fan_speed_pwm.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %fan_speed_pwm.i.i, align 4
  %fan_speed_rpm.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 3
  %98 = ptrtoint ptr %fan_speed_rpm.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %fan_speed_rpm.i.i, align 4
  %and25.i.i = and i32 %96, -7
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and25.i.i, ptr %flags.i, align 4
  br label %if.end58.i

smu_set_fan_control_mode.exit.i:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool47.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool47.not.i, label %smu_set_fan_control_mode.exit.i.if.end58.i_crit_edge, label %smu_set_fan_control_mode.exit.i.if.then48.i_crit_edge

smu_set_fan_control_mode.exit.i.if.then48.i_crit_edge: ; preds = %smu_set_fan_control_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

smu_set_fan_control_mode.exit.i.if.end58.i_crit_edge: ; preds = %smu_set_fan_control_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then48.i:                                      ; preds = %smu_set_fan_control_mode.exit.i.if.then48.i_crit_edge, %lor.lhs.false.i.i.if.then48.i_crit_edge, %if.then43.i.if.then48.i_crit_edge
  %fan_speed_pwm.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 2
  %100 = ptrtoint ptr %fan_speed_pwm.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %fan_speed_pwm.i, align 4
  %fan_speed_rpm.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 3
  %101 = ptrtoint ptr %fan_speed_rpm.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %fan_speed_rpm.i, align 4
  %102 = ptrtoint ptr %user_dpm_profile.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %user_dpm_profile.i, align 4
  %103 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %smu1, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.89) #13
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then48.i, %smu_set_fan_control_mode.exit.i.if.end58.i_crit_edge, %if.then20.i.i, %land.lhs.true15.i.i.if.end58.i_crit_edge
  %fan_speed_pwm60.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 2
  %107 = ptrtoint ptr %fan_speed_pwm60.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fan_speed_pwm60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool61.not.i = icmp eq i32 %108, 0
  br i1 %tobool61.not.i, label %if.end58.i.if.end74.i_crit_edge, label %if.then62.i

if.end58.i.if.end74.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.then62.i:                                      ; preds = %if.end58.i
  %109 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i166.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i166.i, label %if.then62.i.do.end70.i_crit_edge, label %lor.lhs.false.i169.i

if.then62.i.do.end70.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70.i

lor.lhs.false.i169.i:                             ; preds = %if.then62.i
  %111 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %smu1, align 8
  %dpm_enabled.i167.i = getelementptr inbounds %struct.amdgpu_device, ptr %112, i32 0, i32 98, i32 13
  %113 = ptrtoint ptr %dpm_enabled.i167.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %dpm_enabled.i167.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool1.not.i168.i = icmp eq i8 %114, 0
  br i1 %tobool1.not.i168.i, label %lor.lhs.false.i169.i.do.end70.i_crit_edge, label %if.end.i173.i

lor.lhs.false.i169.i.do.end70.i_crit_edge:        ; preds = %lor.lhs.false.i169.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70.i

if.end.i173.i:                                    ; preds = %lor.lhs.false.i169.i
  %mutex.i170.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i170.i, i32 noundef 0) #10
  %115 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ppt_funcs, align 8
  %set_fan_speed_pwm.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %116, i32 0, i32 75
  %117 = ptrtoint ptr %set_fan_speed_pwm.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %set_fan_speed_pwm.i.i, align 4
  %tobool2.not.i172.i = icmp eq ptr %118, null
  br i1 %tobool2.not.i172.i, label %if.end.i173.i.smu_set_fan_speed_pwm.exit.thread219.i_crit_edge, label %if.then3.i176.i

if.end.i173.i.smu_set_fan_speed_pwm.exit.thread219.i_crit_edge: ; preds = %if.end.i173.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_fan_speed_pwm.exit.thread219.i

if.then3.i176.i:                                  ; preds = %if.end.i173.i
  %call.i174.i = tail call i32 %118(ptr noundef %smu1, i32 noundef %108) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.i)
  %tobool6.not.i175.i = icmp eq i32 %call.i174.i, 0
  br i1 %tobool6.not.i175.i, label %land.lhs.true.i180.i, label %smu_set_fan_speed_pwm.exit.i

land.lhs.true.i180.i:                             ; preds = %if.then3.i176.i
  %119 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i, align 4
  %and.i178.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178.i)
  %tobool7.not.i179.i = icmp eq i32 %and.i178.i, 0
  br i1 %tobool7.not.i179.i, label %if.then8.i183.i, label %land.lhs.true.i180.i.smu_set_fan_speed_pwm.exit.thread219.i_crit_edge

land.lhs.true.i180.i.smu_set_fan_speed_pwm.exit.thread219.i_crit_edge: ; preds = %land.lhs.true.i180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_fan_speed_pwm.exit.thread219.i

if.then8.i183.i:                                  ; preds = %land.lhs.true.i180.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %fan_speed_pwm60.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %108, ptr %fan_speed_pwm60.i, align 4
  %or.i.i = and i32 %120, -7
  %and14.i.i = or i32 %or.i.i, 4
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %and14.i.i, ptr %flags.i, align 4
  %fan_speed_rpm.i182.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 3
  %123 = ptrtoint ptr %fan_speed_rpm.i182.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %fan_speed_rpm.i182.i, align 4
  br label %smu_set_fan_speed_pwm.exit.thread219.i

smu_set_fan_speed_pwm.exit.thread219.i:           ; preds = %if.then8.i183.i, %land.lhs.true.i180.i.smu_set_fan_speed_pwm.exit.thread219.i_crit_edge, %if.end.i173.i.smu_set_fan_speed_pwm.exit.thread219.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i170.i) #10
  br label %if.end74.i

smu_set_fan_speed_pwm.exit.i:                     ; preds = %if.then3.i176.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex.i170.i) #10
  br label %do.end70.i

do.end70.i:                                       ; preds = %smu_set_fan_speed_pwm.exit.i, %lor.lhs.false.i169.i.do.end70.i_crit_edge, %if.then62.i.do.end70.i_crit_edge
  %124 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %smu1, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.92) #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end70.i, %smu_set_fan_speed_pwm.exit.thread219.i, %if.end58.i.if.end74.i_crit_edge
  %fan_speed_rpm76.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 3
  %128 = ptrtoint ptr %fan_speed_rpm76.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fan_speed_rpm76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool77.not.i = icmp eq i32 %129, 0
  br i1 %tobool77.not.i, label %if.end74.i.if.end91.i_crit_edge, label %if.then78.i

if.end74.i.if.end91.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i

if.then78.i:                                      ; preds = %if.end74.i
  %130 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i187.i = icmp eq i8 %131, 0
  br i1 %tobool.not.i187.i, label %if.then78.i.do.end86.i_crit_edge, label %lor.lhs.false.i190.i

if.then78.i.do.end86.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i

lor.lhs.false.i190.i:                             ; preds = %if.then78.i
  %132 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %smu1, align 8
  %dpm_enabled.i188.i = getelementptr inbounds %struct.amdgpu_device, ptr %133, i32 0, i32 98, i32 13
  %134 = ptrtoint ptr %dpm_enabled.i188.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %dpm_enabled.i188.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool1.not.i189.i = icmp eq i8 %135, 0
  br i1 %tobool1.not.i189.i, label %lor.lhs.false.i190.i.do.end86.i_crit_edge, label %if.end.i194.i

lor.lhs.false.i190.i.do.end86.i_crit_edge:        ; preds = %lor.lhs.false.i190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i

if.end.i194.i:                                    ; preds = %lor.lhs.false.i190.i
  %mutex.i191.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i191.i, i32 noundef 0) #10
  %136 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ppt_funcs, align 8
  %set_fan_speed_rpm.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %137, i32 0, i32 76
  %138 = ptrtoint ptr %set_fan_speed_rpm.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %set_fan_speed_rpm.i.i, align 4
  %tobool2.not.i193.i = icmp eq ptr %139, null
  br i1 %tobool2.not.i193.i, label %if.end.i194.i.smu_set_fan_speed_rpm.exit.thread225.i_crit_edge, label %if.then3.i197.i

if.end.i194.i.smu_set_fan_speed_rpm.exit.thread225.i_crit_edge: ; preds = %if.end.i194.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_fan_speed_rpm.exit.thread225.i

if.then3.i197.i:                                  ; preds = %if.end.i194.i
  %call.i195.i = tail call i32 %139(ptr noundef %smu1, i32 noundef %129) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195.i)
  %tobool6.not.i196.i = icmp eq i32 %call.i195.i, 0
  br i1 %tobool6.not.i196.i, label %land.lhs.true.i201.i, label %smu_set_fan_speed_rpm.exit.i

land.lhs.true.i201.i:                             ; preds = %if.then3.i197.i
  %140 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags.i, align 4
  %and.i199.i = and i32 %141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199.i)
  %tobool7.not.i200.i = icmp eq i32 %and.i199.i, 0
  br i1 %tobool7.not.i200.i, label %if.then8.i206.i, label %land.lhs.true.i201.i.smu_set_fan_speed_rpm.exit.thread225.i_crit_edge

land.lhs.true.i201.i.smu_set_fan_speed_rpm.exit.thread225.i_crit_edge: ; preds = %land.lhs.true.i201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_fan_speed_rpm.exit.thread225.i

if.then8.i206.i:                                  ; preds = %land.lhs.true.i201.i
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %fan_speed_rpm76.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %129, ptr %fan_speed_rpm76.i, align 4
  %or.i203.i = and i32 %141, -7
  %and14.i204.i = or i32 %or.i203.i, 2
  %143 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %and14.i204.i, ptr %flags.i, align 4
  %144 = ptrtoint ptr %fan_speed_pwm60.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %fan_speed_pwm60.i, align 4
  br label %smu_set_fan_speed_rpm.exit.thread225.i

smu_set_fan_speed_rpm.exit.thread225.i:           ; preds = %if.then8.i206.i, %land.lhs.true.i201.i.smu_set_fan_speed_rpm.exit.thread225.i_crit_edge, %if.end.i194.i.smu_set_fan_speed_rpm.exit.thread225.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i191.i) #10
  br label %if.end91.i

smu_set_fan_speed_rpm.exit.i:                     ; preds = %if.then3.i197.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex.i191.i) #10
  br label %do.end86.i

do.end86.i:                                       ; preds = %smu_set_fan_speed_rpm.exit.i, %lor.lhs.false.i190.i.do.end86.i_crit_edge, %if.then78.i.do.end86.i_crit_edge
  %145 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %smu1, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.95) #13
  br label %if.end91.i

if.end91.i:                                       ; preds = %do.end86.i, %smu_set_fan_speed_rpm.exit.thread225.i, %if.end74.i.if.end91.i_crit_edge, %if.end36.i.if.end91.i_crit_edge
  %user_od.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 64, i32 5
  %149 = ptrtoint ptr %user_od.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %user_od.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool93.not.i = icmp eq i32 %150, 0
  br i1 %tobool93.not.i, label %if.end91.i.if.end109.i_crit_edge, label %if.then94.i

if.end91.i.if.end109.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.i

if.then94.i:                                      ; preds = %if.end91.i
  %151 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ppt_funcs, align 8
  %restore_user_od_settings.i = getelementptr inbounds %struct.pptable_funcs, ptr %152, i32 0, i32 9
  %153 = ptrtoint ptr %restore_user_od_settings.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %restore_user_od_settings.i, align 4
  %tobool95.not.i = icmp eq ptr %154, null
  br i1 %tobool95.not.i, label %if.then94.i.if.end109.i_crit_edge, label %if.then96.i

if.then94.i.if.end109.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.i

if.then96.i:                                      ; preds = %if.then94.i
  %call99.i = tail call i32 %154(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.then96.i.if.end109.i_crit_edge, label %do.end104.i

if.then96.i.if.end109.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.i

do.end104.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %smu1, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.98) #13
  br label %if.end109.i

if.end109.i:                                      ; preds = %do.end104.i, %if.then96.i.if.end109.i_crit_edge, %if.then94.i.if.end109.i_crit_edge, %if.end91.i.if.end109.i_crit_edge
  %159 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %flags.i, align 4
  %and112.i = and i32 %160, -2
  store i32 %and112.i, ptr %flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end109.i, %lor.lhs.false.i213.cleanup_crit_edge, %if.end.i211.cleanup_crit_edge, %smu_handle_task.exit.cleanup_crit_edge, %do.end104, %do.end82, %do.end59, %if.end28.cleanup_crit_edge, %if.end28.cleanup_crit_edge239, %do.end, %cond.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond25219, %do.end ], [ %cond54225, %do.end59 ], [ %cond77231, %do.end82 ], [ %cond99237, %do.end104 ], [ 0, %cond.end8.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge239 ], [ 0, %smu_handle_task.exit.cleanup_crit_edge ], [ 0, %if.end.i211.cleanup_crit_edge ], [ 0, %lor.lhs.false.i213.cleanup_crit_edge ], [ 0, %if.end109.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_sw_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97
  %smu_prv_buffer_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 21
  %0 = ptrtoint ptr %smu_prv_buffer_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smu_prv_buffer_size, align 4
  %conv = zext i32 %1 to i64
  %pool_size = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 13
  %2 = ptrtoint ptr %pool_size to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %pool_size, align 8
  %smu_feature = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 17
  %3 = ptrtoint ptr %smu_feature to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %smu_feature, align 4
  %mutex = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 17, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.100, ptr noundef nonnull @smu_sw_init.__key) #10
  %supported = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 17, i32 1
  %sensor_lock = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 10
  %4 = call ptr @memset(ptr %supported, i32 0, i32 24)
  tail call void @__mutex_init(ptr noundef %sensor_lock, ptr noundef nonnull @.str.102, ptr noundef nonnull @smu_sw_init.__key.101) #10
  %metrics_lock = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 11
  tail call void @__mutex_init(ptr noundef %metrics_lock, ptr noundef nonnull @.str.104, ptr noundef nonnull @smu_sw_init.__key.103) #10
  %message_lock = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 12
  tail call void @__mutex_init(ptr noundef %message_lock, ptr noundef nonnull @.str.106, ptr noundef nonnull @smu_sw_init.__key.105) #10
  %throttling_logging_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 49
  tail call void @__init_work(ptr noundef %throttling_logging_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %throttling_logging_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %throttling_logging_work, align 8
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 49, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.108, ptr noundef nonnull @smu_sw_init.__key.107, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry21 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 49, i32 1
  %6 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 49, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry21, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 49, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @smu_throttling_logging_work_fn, ptr %func, align 4
  %interrupt_work = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 51
  tail call void @__init_work(ptr noundef %interrupt_work, i32 noundef 0) #10
  %9 = ptrtoint ptr %interrupt_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %interrupt_work, align 8
  %lockdep_map31 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 51, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map31, ptr noundef nonnull @.str.110, ptr noundef nonnull @smu_sw_init.__key.109, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry33 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 51, i32 1
  %10 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i200 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 51, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i200 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry33, ptr %prev.i200, align 4
  %func35 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 51, i32 2
  %12 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @smu_interrupt_work_fn, ptr %func35, align 4
  %throttle_int_counter = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %throttle_int_counter, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %throttle_int_counter, i64 noundef 0) #10
  %watermarks_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 34
  %13 = ptrtoint ptr %watermarks_bitmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %watermarks_bitmap, align 4
  %power_profile_mode = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 40
  %14 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %power_profile_mode, align 4
  %default_power_profile_mode = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 41
  %15 = ptrtoint ptr %default_power_profile_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %default_power_profile_mode, align 8
  %vcn_gated = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 2
  %call.i.i198 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vcn_gated, i32 noundef 4) #10
  %16 = ptrtoint ptr %vcn_gated to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %vcn_gated, align 4
  %jpeg_gated = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 3
  %call.i.i199 = tail call zeroext i1 @__kasan_check_write(ptr noundef %jpeg_gated, i32 noundef 4) #10
  %17 = ptrtoint ptr %jpeg_gated to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %jpeg_gated, align 4
  %vcn_gate_lock = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 4
  tail call void @__mutex_init(ptr noundef %vcn_gate_lock, ptr noundef nonnull @.str.112, ptr noundef nonnull @smu_sw_init.__key.111) #10
  %jpeg_gate_lock = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 5
  tail call void @__mutex_init(ptr noundef %jpeg_gate_lock, ptr noundef nonnull @.str.114, ptr noundef nonnull @smu_sw_init.__key.113) #10
  %workload_prority = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 38
  %18 = ptrtoint ptr %workload_prority to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %workload_prority, align 4
  %shl = shl nuw i32 1, %19
  %workload_mask = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 37
  %20 = ptrtoint ptr %workload_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl, ptr %workload_mask, align 8
  store i32 0, ptr %workload_prority, align 4
  %arrayidx53 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 38, i32 1
  %21 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx53, align 4
  %arrayidx55 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 38, i32 2
  %22 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %arrayidx55, align 4
  %arrayidx57 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 38, i32 3
  %23 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %arrayidx57, align 4
  %arrayidx59 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 38, i32 4
  %24 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %arrayidx59, align 4
  %arrayidx61 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 38, i32 5
  %25 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %arrayidx61, align 4
  %arrayidx63 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 38, i32 6
  %26 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6, ptr %arrayidx63, align 4
  %workload_setting = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 39
  %27 = ptrtoint ptr %workload_setting to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %workload_setting, align 8
  %arrayidx66 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 39, i32 1
  %28 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %arrayidx66, align 4
  %arrayidx68 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 39, i32 2
  %29 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %arrayidx68, align 8
  %arrayidx70 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 39, i32 3
  %30 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %arrayidx70, align 4
  %arrayidx72 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 39, i32 4
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %arrayidx72, align 8
  %arrayidx74 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 39, i32 5
  %32 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %arrayidx74, align 4
  %arrayidx76 = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 39, i32 6
  %33 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %arrayidx76, align 8
  %pm_display_cfg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 20
  %display_config = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 18
  %34 = ptrtoint ptr %display_config to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pm_display_cfg, ptr %display_config, align 4
  %dpm_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 15, i32 4
  %35 = ptrtoint ptr %dpm_level to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %dpm_level, align 8
  %requested_dpm_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 15, i32 6
  %36 = ptrtoint ptr %requested_dpm_level to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %requested_dpm_level, align 8
  %ppt_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %37 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ppt_funcs, align 8
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %entry.do.end90_crit_edge, label %cond.true

entry.do.end90_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end90

cond.true:                                        ; preds = %entry
  %init_microcode = getelementptr inbounds %struct.pptable_funcs, ptr %38, i32 0, i32 40
  %39 = ptrtoint ptr %init_microcode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_microcode, align 4
  %tobool80.not = icmp eq ptr %40, null
  br i1 %tobool80.not, label %cond.true.if.end_crit_edge, label %cond.end85

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.end85:                                       ; preds = %cond.true
  %call = tail call i32 %40(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool87.not = icmp eq i32 %call, 0
  br i1 %tobool87.not, label %cond.end85.if.end_crit_edge, label %cond.end85.do.end90_crit_edge

cond.end85.do.end90_crit_edge:                    ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end90

cond.end85.if.end_crit_edge:                      ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end90:                                         ; preds = %cond.end85.do.end90_crit_edge, %entry.do.end90_crit_edge
  %cond86207 = phi i32 [ %call, %cond.end85.do.end90_crit_edge ], [ -22, %entry.do.end90_crit_edge ]
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.115) #13
  br label %cleanup

if.end:                                           ; preds = %cond.end85.if.end_crit_edge, %cond.true.if.end_crit_edge
  %43 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ppt_funcs, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end.do.end.i_crit_edge, label %cond.true.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

cond.true.i:                                      ; preds = %if.end
  %init_smc_tables.i = getelementptr inbounds %struct.pptable_funcs, ptr %44, i32 0, i32 43
  %45 = ptrtoint ptr %init_smc_tables.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_smc_tables.i, align 4
  %tobool2.not.i = icmp eq ptr %46, null
  br i1 %tobool2.not.i, label %cond.true.i.if.end.i_crit_edge, label %cond.end7.i

cond.true.i.if.end.i_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

cond.end7.i:                                      ; preds = %cond.true.i
  %call.i = tail call i32 %46(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %cond.end7.i.if.end.i_crit_edge, label %cond.end7.i.do.end.i_crit_edge

cond.end7.i.do.end.i_crit_edge:                   ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

cond.end7.i.if.end.i_crit_edge:                   ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %cond.end7.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %cond8121.i = phi i32 [ %call.i, %cond.end7.i.do.end.i_crit_edge ], [ -22, %if.end.do.end.i_crit_edge ]
  %47 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %smu1, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.123) #13
  br label %do.end96

if.end.i:                                         ; preds = %cond.end7.i.if.end.i_crit_edge, %cond.true.i.if.end.i_crit_edge
  %51 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ppt_funcs, align 8
  %tobool11.not.i = icmp eq ptr %52, null
  br i1 %tobool11.not.i, label %if.end.i.do.end29.i_crit_edge, label %cond.true12.i

if.end.i.do.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29.i

cond.true12.i:                                    ; preds = %if.end.i
  %init_power.i = getelementptr inbounds %struct.pptable_funcs, ptr %52, i32 0, i32 45
  %53 = ptrtoint ptr %init_power.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_power.i, align 4
  %tobool14.not.i = icmp eq ptr %54, null
  br i1 %tobool14.not.i, label %cond.true12.i.if.end32.i_crit_edge, label %cond.end23.i

cond.true12.i.if.end32.i_crit_edge:               ; preds = %cond.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

cond.end23.i:                                     ; preds = %cond.true12.i
  %call18.i = tail call i32 %54(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool25.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool25.not.i, label %cond.end23.i.if.end32.i_crit_edge, label %cond.end23.i.do.end29.i_crit_edge

cond.end23.i.do.end29.i_crit_edge:                ; preds = %cond.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29.i

cond.end23.i.if.end32.i_crit_edge:                ; preds = %cond.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

do.end29.i:                                       ; preds = %cond.end23.i.do.end29.i_crit_edge, %if.end.i.do.end29.i_crit_edge
  %cond24127.i = phi i32 [ %call18.i, %cond.end23.i.do.end29.i_crit_edge ], [ -22, %if.end.i.do.end29.i_crit_edge ]
  %55 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %smu1, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.126) #13
  br label %do.end96

if.end32.i:                                       ; preds = %cond.end23.i.if.end32.i_crit_edge, %cond.true12.i.if.end32.i_crit_edge
  %59 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %smu1, align 8
  %tables3.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11
  %driver_table4.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12
  %arrayidx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %tobool.not.i.i = icmp eq i64 %62, 0
  br i1 %tobool.not.i.i, label %if.end32.i.for.body.i.i.preheader_crit_edge, label %if.then.i.i

if.end32.i.for.body.i.i.preheader_crit_edge:      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then.i.i.for.body.i.i.preheader_crit_edge, %if.end32.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %if.end32.i
  %conv.i.i = trunc i64 %62 to i32
  %align.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 1
  %63 = ptrtoint ptr %align.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %align.i.i, align 8
  %domain.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 2
  %65 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %domain.i.i, align 4
  %conv9.i.i = zext i8 %66 to i32
  %bo.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 5
  %mc_address.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 3
  %cpu_addr.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 4
  %call.i.i201 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %60, i32 noundef %conv.i.i, i32 noundef %64, i32 noundef %conv9.i.i, ptr noundef %bo.i.i, ptr noundef %mc_address.i.i, ptr noundef %cpu_addr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201)
  %tobool13.not.i.i = icmp eq i32 %call.i.i201, 0
  br i1 %tobool13.not.i.i, label %if.then.i.i.for.body.i.i.preheader_crit_edge, label %do.end.i.i

if.then.i.i.for.body.i.i.preheader_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.preheader

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.128) #13
  br label %do.end96

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.0112.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %max_table_size.0111.i.i = phi i32 [ %max_table_size.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx17.i.i = getelementptr %struct.smu_table, ptr %tables3.i.i, i32 %i.0112.i.i
  %69 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx17.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %cmp19.i.i = icmp ne i64 %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0112.i.i)
  %cmp23.i.i = icmp ne i32 %i.0112.i.i, 7
  %or.cond.i.i = select i1 %cmp19.i.i, i1 %cmp23.i.i, i1 false
  %conv27.i.i = zext i32 %max_table_size.0111.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %conv27.i.i)
  %cmp30.i.i = icmp ugt i64 %70, %conv27.i.i
  %or.cond110.i.i = select i1 %or.cond.i.i, i1 %cmp30.i.i, i1 false
  %conv35.i.i = trunc i64 %70 to i32
  %max_table_size.1.i.i = select i1 %or.cond110.i.i, i32 %conv35.i.i, i32 %max_table_size.0111.i.i
  %inc.i.i = add nuw nsw i32 %i.0112.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 15
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %conv37.i.i = zext i32 %max_table_size.1.i.i to i64
  %71 = ptrtoint ptr %driver_table4.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv37.i.i, ptr %driver_table4.i.i, align 8
  %align39.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12, i32 1
  %72 = ptrtoint ptr %align39.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4096, ptr %align39.i.i, align 8
  %domain40.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12, i32 2
  %73 = ptrtoint ptr %domain40.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 4, ptr %domain40.i.i, align 4
  %bo46.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12, i32 5
  %mc_address47.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12, i32 3
  %cpu_addr48.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12, i32 4
  %call49.i.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %60, i32 noundef %max_table_size.1.i.i, i32 noundef 4096, i32 noundef 4, ptr noundef %bo46.i.i, ptr noundef %mc_address47.i.i, ptr noundef %cpu_addr48.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end36.i, label %do.end54.i.i

do.end54.i.i:                                     ; preds = %for.end.i.i
  %74 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.131) #13
  %mc_address57.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 3
  %76 = ptrtoint ptr %mc_address57.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %mc_address57.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %tobool58.not.i.i = icmp eq i64 %77, 0
  br i1 %tobool58.not.i.i, label %do.end54.i.i.do.end96_crit_edge, label %if.then59.i.i

do.end54.i.i.do.end96_crit_edge:                  ; preds = %do.end54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

if.then59.i.i:                                    ; preds = %do.end54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bo61.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 5
  %cpu_addr65.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %bo61.i.i, ptr noundef %mc_address57.i.i, ptr noundef %cpu_addr65.i.i) #10
  br label %do.end96

if.end36.i:                                       ; preds = %for.end.i.i
  %78 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %smu1, align 8
  %80 = ptrtoint ptr %pool_size to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %pool_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %81)
  %cmp.i.i = icmp eq i64 %81, 0
  br i1 %cmp.i.i, label %if.end36.i.if.end40.i_crit_edge, label %if.end.i.i

if.end36.i.if.end40.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.end.i.i:                                       ; preds = %if.end36.i
  %memory_pool3.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13
  %82 = ptrtoint ptr %memory_pool3.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %memory_pool3.i.i, align 8
  %align.i97.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13, i32 1
  %83 = ptrtoint ptr %align.i97.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4096, ptr %align.i97.i, align 8
  %domain.i98.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13, i32 2
  %84 = ptrtoint ptr %domain.i98.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %domain.i98.i, align 4
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.227)
  switch i64 %81, label %if.end.i.i.if.end40.i_crit_edge [
    i64 268435456, label %if.end.i.i.sw.bb.i.i_crit_edge
    i64 536870912, label %if.end.i.i.sw.bb.i.i_crit_edge220
    i64 1073741824, label %if.end.i.i.sw.bb.i.i_crit_edge221
    i64 2147483648, label %if.end.i.i.sw.bb.i.i_crit_edge222
  ]

if.end.i.i.sw.bb.i.i_crit_edge222:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge221:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge220:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.end.i.i.if.end40.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge220, %if.end.i.i.sw.bb.i.i_crit_edge221, %if.end.i.i.sw.bb.i.i_crit_edge222
  %conv.i99.i = trunc i64 %81 to i32
  %bo.i100.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13, i32 5
  %mc_address.i101.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13, i32 3
  %cpu_addr.i102.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13, i32 4
  %call.i103.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %79, i32 noundef %conv.i99.i, i32 noundef 4096, i32 noundef 2, ptr noundef %bo.i100.i, ptr noundef %mc_address.i101.i, ptr noundef %cpu_addr.i102.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool.not.i104.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool.not.i104.i, label %sw.bb.i.i.if.end40.i_crit_edge, label %smu_alloc_memory_pool.exit.i

sw.bb.i.i.if.end40.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

smu_alloc_memory_pool.exit.i:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %79, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.133) #13
  br label %do.end96

if.end40.i:                                       ; preds = %sw.bb.i.i.if.end40.i_crit_edge, %if.end.i.i.if.end40.i_crit_edge, %if.end36.i.if.end40.i_crit_edge
  %dummy_read_1_table2.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14
  %87 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %smu1, align 8
  %89 = ptrtoint ptr %dummy_read_1_table2.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 262144, ptr %dummy_read_1_table2.i.i, align 8
  %align.i107.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14, i32 1
  %90 = ptrtoint ptr %align.i107.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4096, ptr %align.i107.i, align 8
  %domain.i108.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14, i32 2
  %91 = ptrtoint ptr %domain.i108.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 4, ptr %domain.i108.i, align 4
  %bo.i109.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14, i32 5
  %mc_address.i110.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14, i32 3
  %cpu_addr.i111.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14, i32 4
  %call.i112.i = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %88, i32 noundef 262144, i32 noundef 4096, i32 noundef 4, ptr noundef %bo.i109.i, ptr noundef %mc_address.i110.i, ptr noundef %cpu_addr.i111.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %tobool.not.i113.i = icmp eq i32 %call.i112.i, 0
  br i1 %tobool.not.i113.i, label %if.end44.i, label %smu_alloc_dummy_read_table.exit.i

smu_alloc_dummy_read_table.exit.i:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %88, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.135) #13
  br label %do.end96

if.end44.i:                                       ; preds = %if.end40.i
  %94 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ppt_funcs, align 8
  %tobool46.not.i = icmp eq ptr %95, null
  br i1 %tobool46.not.i, label %if.end44.i.do.end96_crit_edge, label %cond.true47.i

if.end44.i.do.end96_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

cond.true47.i:                                    ; preds = %if.end44.i
  %i2c_init.i = getelementptr inbounds %struct.pptable_funcs, ptr %95, i32 0, i32 36
  %96 = ptrtoint ptr %i2c_init.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i2c_init.i, align 4
  %tobool49.not.i = icmp eq ptr %97, null
  br i1 %tobool49.not.i, label %cond.true47.i.if.end98_crit_edge, label %smu_smc_table_sw_init.exit

cond.true47.i.if.end98_crit_edge:                 ; preds = %cond.true47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

smu_smc_table_sw_init.exit:                       ; preds = %cond.true47.i
  %98 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %smu1, align 8
  %smu_i2c.i = getelementptr inbounds %struct.amdgpu_device, ptr %99, i32 0, i32 98, i32 25
  %call54.i = tail call i32 %97(ptr noundef %smu1, ptr noundef %smu_i2c.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool92.not = icmp eq i32 %call54.i, 0
  br i1 %tobool92.not, label %smu_smc_table_sw_init.exit.if.end98_crit_edge, label %smu_smc_table_sw_init.exit.do.end96_crit_edge

smu_smc_table_sw_init.exit.do.end96_crit_edge:    ; preds = %smu_smc_table_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

smu_smc_table_sw_init.exit.if.end98_crit_edge:    ; preds = %smu_smc_table_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.end96:                                         ; preds = %smu_smc_table_sw_init.exit.do.end96_crit_edge, %if.end44.i.do.end96_crit_edge, %smu_alloc_dummy_read_table.exit.i, %smu_alloc_memory_pool.exit.i, %if.then59.i.i, %do.end54.i.i.do.end96_crit_edge, %do.end.i.i, %do.end29.i, %do.end.i
  %retval.0.i210 = phi i32 [ %call54.i, %smu_smc_table_sw_init.exit.do.end96_crit_edge ], [ -22, %if.end44.i.do.end96_crit_edge ], [ %call.i.i201, %do.end.i.i ], [ %call49.i.i, %do.end54.i.i.do.end96_crit_edge ], [ %call49.i.i, %if.then59.i.i ], [ %call.i112.i, %smu_alloc_dummy_read_table.exit.i ], [ %call.i103.i, %smu_alloc_memory_pool.exit.i ], [ %cond24127.i, %do.end29.i ], [ %cond8121.i, %do.end.i ]
  %100 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.118) #13
  br label %cleanup

if.end98:                                         ; preds = %smu_smc_table_sw_init.exit.if.end98_crit_edge, %cond.true47.i.if.end98_crit_edge
  %102 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ppt_funcs, align 8
  %tobool100.not = icmp eq ptr %103, null
  br i1 %tobool100.not, label %if.end98.do.end118_crit_edge, label %cond.true101

if.end98.do.end118_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118

cond.true101:                                     ; preds = %if.end98
  %register_irq_handler = getelementptr inbounds %struct.pptable_funcs, ptr %103, i32 0, i32 80
  %104 = ptrtoint ptr %register_irq_handler to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %register_irq_handler, align 4
  %tobool103.not = icmp eq ptr %105, null
  br i1 %tobool103.not, label %cond.true101.if.end120_crit_edge, label %cond.end112

cond.true101.if.end120_crit_edge:                 ; preds = %cond.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

cond.end112:                                      ; preds = %cond.true101
  %call107 = tail call i32 %105(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool114.not = icmp eq i32 %call107, 0
  br i1 %tobool114.not, label %cond.end112.if.end120_crit_edge, label %cond.end112.do.end118_crit_edge

cond.end112.do.end118_crit_edge:                  ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118

cond.end112.if.end120_crit_edge:                  ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

do.end118:                                        ; preds = %cond.end112.do.end118_crit_edge, %if.end98.do.end118_crit_edge
  %cond113219 = phi i32 [ %call107, %cond.end112.do.end118_crit_edge ], [ -22, %if.end98.do.end118_crit_edge ]
  %106 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.121) #13
  br label %cleanup

if.end120:                                        ; preds = %cond.end112.if.end120_crit_edge, %cond.true101.if.end120_crit_edge
  %108 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ppt_funcs, align 8
  %get_fan_control_mode = getelementptr inbounds %struct.pptable_funcs, ptr %109, i32 0, i32 73
  %110 = ptrtoint ptr %get_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %get_fan_control_mode, align 4
  %tobool122.not = icmp eq ptr %111, null
  br i1 %tobool122.not, label %if.then123, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %smu1, align 8
  %no_fan = getelementptr inbounds %struct.amdgpu_device, ptr %113, i32 0, i32 98, i32 9
  %114 = ptrtoint ptr %no_fan to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %no_fan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.end120.cleanup_crit_edge, %do.end118, %do.end96, %do.end90
  %retval.0 = phi i32 [ %cond86207, %do.end90 ], [ %retval.0.i210, %do.end96 ], [ %cond113219, %do.end118 ], [ 0, %if.then123 ], [ 0, %if.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_sw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97
  %ppt_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %0 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cond.end7.i_crit_edge, label %cond.true.i

entry.cond.end7.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end7.i

cond.true.i:                                      ; preds = %entry
  %i2c_fini.i = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %i2c_fini.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_fini.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %cond.true.i.cond.end7.i_crit_edge, label %cond.true3.i

cond.true.i.cond.end7.i_crit_edge:                ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end7.i

cond.true3.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu1, align 8
  %smu_i2c.i = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 98, i32 25
  tail call void %3(ptr noundef %smu1, ptr noundef %smu_i2c.i) #10
  br label %cond.end7.i

cond.end7.i:                                      ; preds = %cond.true3.i, %cond.true.i.cond.end7.i_crit_edge, %entry.cond.end7.i_crit_edge
  %dummy_read_1_table2.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14
  %bo.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14, i32 5
  %mc_address.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14, i32 3
  %cpu_addr.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 14, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %bo.i.i, ptr noundef %mc_address.i.i, ptr noundef %cpu_addr.i.i) #10
  %6 = call ptr @memset(ptr %dummy_read_1_table2.i.i, i32 0, i32 32)
  %memory_pool2.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13
  %7 = ptrtoint ptr %memory_pool2.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %memory_pool2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.i.i = icmp eq i64 %8, 0
  br i1 %cmp.i.i, label %cond.end7.i.smu_free_memory_pool.exit.i_crit_edge, label %if.end.i.i

cond.end7.i.smu_free_memory_pool.exit.i_crit_edge: ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_free_memory_pool.exit.i

if.end.i.i:                                       ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %bo.i83.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13, i32 5
  %mc_address.i84.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13, i32 3
  %cpu_addr.i85.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 13, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %bo.i83.i, ptr noundef %mc_address.i84.i, ptr noundef %cpu_addr.i85.i) #10
  %9 = call ptr @memset(ptr %memory_pool2.i.i, i32 0, i32 32)
  br label %smu_free_memory_pool.exit.i

smu_free_memory_pool.exit.i:                      ; preds = %if.end.i.i, %cond.end7.i.smu_free_memory_pool.exit.i_crit_edge
  %mc_address.i86.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 3
  %10 = ptrtoint ptr %mc_address.i86.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mc_address.i86.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i.i, label %smu_free_memory_pool.exit.i.smu_fini_fb_allocations.exit.i_crit_edge, label %if.then.i.i

smu_free_memory_pool.exit.i.smu_fini_fb_allocations.exit.i_crit_edge: ; preds = %smu_free_memory_pool.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_fini_fb_allocations.exit.i

if.then.i.i:                                      ; preds = %smu_free_memory_pool.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bo.i87.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 5
  %cpu_addr.i88.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 11, i32 7, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %bo.i87.i, ptr noundef %mc_address.i86.i, ptr noundef %cpu_addr.i88.i) #10
  br label %smu_fini_fb_allocations.exit.i

smu_fini_fb_allocations.exit.i:                   ; preds = %if.then.i.i, %smu_free_memory_pool.exit.i.smu_fini_fb_allocations.exit.i_crit_edge
  %bo8.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12, i32 5
  %mc_address9.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12, i32 3
  %cpu_addr10.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 14, i32 12, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %bo8.i.i, ptr noundef %mc_address9.i.i, ptr noundef %cpu_addr10.i.i) #10
  %12 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ppt_funcs.i, align 8
  %tobool14.not.i = icmp eq ptr %13, null
  br i1 %tobool14.not.i, label %smu_fini_fb_allocations.exit.i.do.end_crit_edge, label %cond.true15.i

smu_fini_fb_allocations.exit.i.do.end_crit_edge:  ; preds = %smu_fini_fb_allocations.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.true15.i:                                    ; preds = %smu_fini_fb_allocations.exit.i
  %fini_power.i = getelementptr inbounds %struct.pptable_funcs, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %fini_power.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fini_power.i, align 4
  %tobool17.not.i = icmp eq ptr %15, null
  br i1 %tobool17.not.i, label %cond.true15.i.if.end30.i_crit_edge, label %cond.end25.i

cond.true15.i.if.end30.i_crit_edge:               ; preds = %cond.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

cond.end25.i:                                     ; preds = %cond.true15.i
  %call21.i = tail call i32 %15(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool27.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool27.not.i, label %cond.end25.i.if.end30.i_crit_edge, label %cond.end25.i.do.end_crit_edge

cond.end25.i.do.end_crit_edge:                    ; preds = %cond.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.end25.i.if.end30.i_crit_edge:                ; preds = %cond.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %cond.end25.i.if.end30.i_crit_edge, %cond.true15.i.if.end30.i_crit_edge
  %16 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ppt_funcs.i, align 8
  %tobool32.not.i = icmp eq ptr %17, null
  br i1 %tobool32.not.i, label %if.end30.i.do.end_crit_edge, label %cond.true33.i

if.end30.i.do.end_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.true33.i:                                    ; preds = %if.end30.i
  %fini_smc_tables.i = getelementptr inbounds %struct.pptable_funcs, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %fini_smc_tables.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fini_smc_tables.i, align 4
  %tobool35.not.i = icmp eq ptr %19, null
  br i1 %tobool35.not.i, label %cond.true33.i.if.end_crit_edge, label %cond.end44.i

cond.true33.i.if.end_crit_edge:                   ; preds = %cond.true33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.end44.i:                                     ; preds = %cond.true33.i
  %call39.i = tail call i32 %19(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool46.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool46.not.i, label %cond.end44.i.if.end_crit_edge, label %cond.end44.i.do.end_crit_edge

cond.end44.i.do.end_crit_edge:                    ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.end44.i.if.end_crit_edge:                    ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %cond.end44.i.do.end_crit_edge, %if.end30.i.do.end_crit_edge, %cond.end25.i.do.end_crit_edge, %smu_fini_fb_allocations.exit.i.do.end_crit_edge
  %.str.142.sink.i = phi ptr [ @.str.139, %smu_fini_fb_allocations.exit.i.do.end_crit_edge ], [ @.str.139, %cond.end25.i.do.end_crit_edge ], [ @.str.142, %if.end30.i.do.end_crit_edge ], [ @.str.142, %cond.end44.i.do.end_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %smu_fini_fb_allocations.exit.i.do.end_crit_edge ], [ %call21.i, %cond.end25.i.do.end_crit_edge ], [ -22, %if.end30.i.do.end_crit_edge ], [ %call39.i, %cond.end44.i.do.end_crit_edge ]
  %20 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smu1, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %.str.142.sink.i) #13
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.137) #13
  br label %cleanup

if.end:                                           ; preds = %cond.end44.i.if.end_crit_edge, %cond.true33.i.if.end_crit_edge
  %26 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ppt_funcs.i, align 8
  %tobool2.not = icmp eq ptr %27, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %cond.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true:                                        ; preds = %if.end
  %fini_microcode = getelementptr inbounds %struct.pptable_funcs, ptr %27, i32 0, i32 42
  %28 = ptrtoint ptr %fini_microcode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fini_microcode, align 4
  %tobool4.not = icmp eq ptr %29, null
  br i1 %tobool4.not, label %cond.true.cleanup_crit_edge, label %cond.true5

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true5:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %29(ptr noundef %smu1) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.true5, %cond.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.ph.i, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cond.true5 ], [ 0, %cond.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_hw_init(ptr noundef %handle) #0 align 64 {
entry:
  %allowed_feature_mask.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 12
  %2 = ptrtoint ptr %gim_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gim_feature, align 4
  %and3 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %pm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 42
  %4 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pm_enabled, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu1, align 8
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %6, i32 0, i32 112, i32 1
  %7 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 2
  br i1 %cmp.not.i, label %if.end.if.end12.i_crit_edge, label %if.then.i

if.end.if.end12.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then.i:                                        ; preds = %if.end
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %6, i32 0, i32 172, i32 15
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %10)
  %cmp3.i = icmp ult i32 %10, 720896
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end12.i_crit_edge

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.then.i
  %ppt_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %11 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ppt_funcs.i, align 8
  %load_microcode.i = getelementptr inbounds %struct.pptable_funcs, ptr %12, i32 0, i32 41
  %13 = ptrtoint ptr %load_microcode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %load_microcode.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then4.i.if.end12.i_crit_edge, label %if.then5.i

if.then4.i.if.end12.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.then4.i
  %call.i = tail call i32 %14(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.end12.i_crit_edge, label %if.then5.i.do.end_crit_edge

if.then5.i.do.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then5.i.if.end12.i_crit_edge, %if.then4.i.if.end12.i_crit_edge, %if.then.i.if.end12.i_crit_edge, %if.end.if.end12.i_crit_edge
  %ppt_funcs13.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %15 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppt_funcs13.i, align 8
  %check_fw_status.i = getelementptr inbounds %struct.pptable_funcs, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %check_fw_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %check_fw_status.i, align 4
  %tobool14.not.i = icmp eq ptr %18, null
  br i1 %tobool14.not.i, label %if.end12.i.if.end22.i_crit_edge, label %if.then15.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end12.i
  %call18.i = tail call i32 %18(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end22thread-pre-split.i, label %do.end.i

do.end.i:                                         ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.37) #13
  br label %do.end

if.end22thread-pre-split.i:                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load ptr, ptr %ppt_funcs13.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22thread-pre-split.i, %if.end12.i.if.end22.i_crit_edge
  %22 = phi ptr [ %.pr.i, %if.end22thread-pre-split.i ], [ %16, %if.end12.i.if.end22.i_crit_edge ]
  %tobool24.not.i = icmp eq ptr %22, null
  br i1 %tobool24.not.i, label %if.end22.i.do.end_crit_edge, label %cond.true.i

if.end22.i.do.end_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.true.i:                                      ; preds = %if.end22.i
  %check_fw_version.i = getelementptr inbounds %struct.pptable_funcs, ptr %22, i32 0, i32 51
  %23 = ptrtoint ptr %check_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %check_fw_version.i, align 4
  %tobool26.not.i = icmp eq ptr %24, null
  br i1 %tobool26.not.i, label %cond.true.i.if.end7_crit_edge, label %smu_start_smc_engine.exit

cond.true.i.if.end7_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

smu_start_smc_engine.exit:                        ; preds = %cond.true.i
  %call30.i = tail call i32 %24(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool5.not = icmp eq i32 %call30.i, 0
  br i1 %tobool5.not, label %smu_start_smc_engine.exit.if.end7_crit_edge, label %smu_start_smc_engine.exit.do.end_crit_edge

smu_start_smc_engine.exit.do.end_crit_edge:       ; preds = %smu_start_smc_engine.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

smu_start_smc_engine.exit.if.end7_crit_edge:      ; preds = %smu_start_smc_engine.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %smu_start_smc_engine.exit.do.end_crit_edge, %if.end22.i.do.end_crit_edge, %do.end.i, %if.then5.i.do.end_crit_edge
  %retval.0.i164 = phi i32 [ %call30.i, %smu_start_smc_engine.exit.do.end_crit_edge ], [ -22, %if.end22.i.do.end_crit_edge ], [ %call.i, %if.then5.i.do.end_crit_edge ], [ %call18.i, %do.end.i ]
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.144) #13
  br label %cleanup

if.end7:                                          ; preds = %smu_start_smc_engine.exit.if.end7_crit_edge, %cond.true.i.if.end7_crit_edge
  %is_apu = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 43
  %27 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_apu, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not = icmp eq i8 %28, 0
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  %vcn_gate_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %vcn_gate_lock.i, i32 noundef 0) #10
  %29 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ppt_funcs13.i, align 8
  %dpm_set_vcn_enable.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %dpm_set_vcn_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dpm_set_vcn_enable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.then9.smu_dpm_set_vcn_enable.exit_crit_edge, label %if.end.i.i

if.then9.smu_dpm_set_vcn_enable.exit_crit_edge:   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_vcn_enable.exit

if.end.i.i:                                       ; preds = %if.then9
  %vcn_gated.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vcn_gated.i.i, i32 noundef 4) #10
  %33 = ptrtoint ptr %vcn_gated.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %vcn_gated.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %tobool4.not.i.i = icmp eq i32 %34, 1
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.smu_dpm_set_vcn_enable.exit_crit_edge

if.end.i.i.smu_dpm_set_vcn_enable.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_vcn_enable.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %35 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ppt_funcs13.i, align 8
  %dpm_set_vcn_enable8.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %dpm_set_vcn_enable8.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dpm_set_vcn_enable8.i.i, align 4
  %call10.i.i = tail call i32 %38(ptr noundef %smu1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end6.i.i.smu_dpm_set_vcn_enable.exit_crit_edge

if.end6.i.i.smu_dpm_set_vcn_enable.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_vcn_enable.exit

if.then12.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i25.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vcn_gated.i.i, i32 noundef 4) #10
  %39 = ptrtoint ptr %vcn_gated.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %vcn_gated.i.i, align 4
  br label %smu_dpm_set_vcn_enable.exit

smu_dpm_set_vcn_enable.exit:                      ; preds = %if.then12.i.i, %if.end6.i.i.smu_dpm_set_vcn_enable.exit_crit_edge, %if.end.i.i.smu_dpm_set_vcn_enable.exit_crit_edge, %if.then9.smu_dpm_set_vcn_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vcn_gate_lock.i) #10
  %jpeg_gate_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 5
  tail call void @mutex_lock_nested(ptr noundef %jpeg_gate_lock.i, i32 noundef 0) #10
  %40 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ppt_funcs13.i, align 8
  %dpm_set_jpeg_enable.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %dpm_set_jpeg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dpm_set_jpeg_enable.i.i, align 4
  %tobool.not.i.i144 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i144, label %smu_dpm_set_vcn_enable.exit.smu_dpm_set_jpeg_enable.exit_crit_edge, label %if.end.i.i147

smu_dpm_set_vcn_enable.exit.smu_dpm_set_jpeg_enable.exit_crit_edge: ; preds = %smu_dpm_set_vcn_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_jpeg_enable.exit

if.end.i.i147:                                    ; preds = %smu_dpm_set_vcn_enable.exit
  %jpeg_gated.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 3
  %call.i.i.i.i145 = tail call zeroext i1 @__kasan_check_read(ptr noundef %jpeg_gated.i.i, i32 noundef 4) #10
  %44 = ptrtoint ptr %jpeg_gated.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %jpeg_gated.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %tobool4.not.i.i146 = icmp eq i32 %45, 1
  br i1 %tobool4.not.i.i146, label %if.end6.i.i150, label %if.end.i.i147.smu_dpm_set_jpeg_enable.exit_crit_edge

if.end.i.i147.smu_dpm_set_jpeg_enable.exit_crit_edge: ; preds = %if.end.i.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_jpeg_enable.exit

if.end6.i.i150:                                   ; preds = %if.end.i.i147
  %46 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ppt_funcs13.i, align 8
  %dpm_set_jpeg_enable8.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %dpm_set_jpeg_enable8.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dpm_set_jpeg_enable8.i.i, align 4
  %call10.i.i148 = tail call i32 %49(ptr noundef %smu1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i148)
  %tobool11.not.i.i149 = icmp eq i32 %call10.i.i148, 0
  br i1 %tobool11.not.i.i149, label %if.then12.i.i152, label %if.end6.i.i150.smu_dpm_set_jpeg_enable.exit_crit_edge

if.end6.i.i150.smu_dpm_set_jpeg_enable.exit_crit_edge: ; preds = %if.end6.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_jpeg_enable.exit

if.then12.i.i152:                                 ; preds = %if.end6.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i25.i.i151 = tail call zeroext i1 @__kasan_check_write(ptr noundef %jpeg_gated.i.i, i32 noundef 4) #10
  %50 = ptrtoint ptr %jpeg_gated.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %jpeg_gated.i.i, align 4
  br label %smu_dpm_set_jpeg_enable.exit

smu_dpm_set_jpeg_enable.exit:                     ; preds = %if.then12.i.i152, %if.end6.i.i150.smu_dpm_set_jpeg_enable.exit_crit_edge, %if.end.i.i147.smu_dpm_set_jpeg_enable.exit_crit_edge, %smu_dpm_set_vcn_enable.exit.smu_dpm_set_jpeg_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %jpeg_gate_lock.i) #10
  %mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %51 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ppt_funcs13.i, align 8
  %set_gfx_cgpg.i = getelementptr inbounds %struct.pptable_funcs, ptr %52, i32 0, i32 53
  %53 = ptrtoint ptr %set_gfx_cgpg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_gfx_cgpg.i, align 4
  %tobool.not.i155 = icmp eq ptr %54, null
  br i1 %tobool.not.i155, label %smu_dpm_set_jpeg_enable.exit.smu_set_gfx_cgpg.exit_crit_edge, label %if.then.i157

smu_dpm_set_jpeg_enable.exit.smu_set_gfx_cgpg.exit_crit_edge: ; preds = %smu_dpm_set_jpeg_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_gfx_cgpg.exit

if.then.i157:                                     ; preds = %smu_dpm_set_jpeg_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i156 = tail call i32 %54(ptr noundef %smu1, i1 noundef zeroext true) #10
  br label %smu_set_gfx_cgpg.exit

smu_set_gfx_cgpg.exit:                            ; preds = %if.then.i157, %smu_dpm_set_jpeg_enable.exit.smu_set_gfx_cgpg.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %if.end14

if.end14:                                         ; preds = %smu_set_gfx_cgpg.exit, %if.end7.if.end14_crit_edge
  %pm_enabled15 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 42
  %55 = ptrtoint ptr %pm_enabled15 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pm_enabled15, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool16.not = icmp eq i8 %56, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %57 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ppt_funcs13.i, align 8
  %tobool19.not = icmp eq ptr %58, null
  br i1 %tobool19.not, label %if.end18.do.end33_crit_edge, label %cond.true

if.end18.do.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

cond.true:                                        ; preds = %if.end18
  %get_vbios_bootup_values = getelementptr inbounds %struct.pptable_funcs, ptr %58, i32 0, i32 50
  %59 = ptrtoint ptr %get_vbios_bootup_values to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_vbios_bootup_values, align 4
  %tobool21.not = icmp eq ptr %60, null
  br i1 %tobool21.not, label %cond.true.if.end35_crit_edge, label %cond.end27

cond.true.if.end35_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

cond.end27:                                       ; preds = %cond.true
  %call25 = tail call i32 %60(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %cond.end27.if.end35_crit_edge, label %cond.end27.do.end33_crit_edge

cond.end27.do.end33_crit_edge:                    ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

cond.end27.if.end35_crit_edge:                    ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end33:                                         ; preds = %cond.end27.do.end33_crit_edge, %if.end18.do.end33_crit_edge
  %cond28173 = phi i32 [ %call25, %cond.end27.do.end33_crit_edge ], [ -22, %if.end18.do.end33_crit_edge ]
  %61 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.147) #13
  br label %cleanup

if.end35:                                         ; preds = %cond.end27.if.end35_crit_edge, %cond.true.if.end35_crit_edge
  %63 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ppt_funcs13.i, align 8
  %tobool37.not = icmp eq ptr %64, null
  br i1 %tobool37.not, label %if.end35.do.end55_crit_edge, label %cond.true38

if.end35.do.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

cond.true38:                                      ; preds = %if.end35
  %setup_pptable = getelementptr inbounds %struct.pptable_funcs, ptr %64, i32 0, i32 49
  %65 = ptrtoint ptr %setup_pptable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %setup_pptable, align 4
  %tobool40.not = icmp eq ptr %66, null
  br i1 %tobool40.not, label %cond.true38.if.end57_crit_edge, label %cond.end49

cond.true38.if.end57_crit_edge:                   ; preds = %cond.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

cond.end49:                                       ; preds = %cond.true38
  %call44 = tail call i32 %66(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool51.not = icmp eq i32 %call44, 0
  br i1 %tobool51.not, label %cond.end49.if.end57_crit_edge, label %cond.end49.do.end55_crit_edge

cond.end49.do.end55_crit_edge:                    ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

cond.end49.if.end57_crit_edge:                    ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.end55:                                         ; preds = %cond.end49.do.end55_crit_edge, %if.end35.do.end55_crit_edge
  %cond50179 = phi i32 [ %call44, %cond.end49.do.end55_crit_edge ], [ -22, %if.end35.do.end55_crit_edge ]
  %67 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.150) #13
  br label %cleanup

if.end57:                                         ; preds = %cond.end49.if.end57_crit_edge, %cond.true38.if.end57_crit_edge
  %smu_feature.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %allowed_feature_mask.i) #10
  %69 = ptrtoint ptr %allowed_feature_mask.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %allowed_feature_mask.i, align 4, !annotation !395
  %70 = getelementptr inbounds [2 x i32], ptr %allowed_feature_mask.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %70, align 4, !annotation !395
  %allowed.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 17, i32 2
  %72 = ptrtoint ptr %allowed.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 0, ptr %allowed.i, align 4
  %73 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ppt_funcs13.i, align 8
  %tobool.not.i159 = icmp eq ptr %74, null
  br i1 %tobool.not.i159, label %if.end57.smu_get_driver_allowed_feature_mask.exit_crit_edge, label %cond.true.i160

if.end57.smu_get_driver_allowed_feature_mask.exit_crit_edge: ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_get_driver_allowed_feature_mask.exit

cond.true.i160:                                   ; preds = %if.end57
  %get_allowed_feature_mask.i = getelementptr inbounds %struct.pptable_funcs, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %get_allowed_feature_mask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %get_allowed_feature_mask.i, align 4
  %tobool2.not.i = icmp eq ptr %76, null
  br i1 %tobool2.not.i, label %cond.true.i160.if.else.i.i_crit_edge, label %cond.end8.i

cond.true.i160.if.else.i.i_crit_edge:             ; preds = %cond.true.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

cond.end8.i:                                      ; preds = %cond.true.i160
  %call.i161 = call i32 %76(ptr noundef %smu1, ptr noundef nonnull %allowed_feature_mask.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool10.not.i = icmp eq i32 %call.i161, 0
  br i1 %tobool10.not.i, label %cond.end8.i.if.else.i.i_crit_edge, label %cond.end8.i.smu_get_driver_allowed_feature_mask.exit_crit_edge

cond.end8.i.smu_get_driver_allowed_feature_mask.exit_crit_edge: ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_get_driver_allowed_feature_mask.exit

cond.end8.i.if.else.i.i_crit_edge:                ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %cond.end8.i.if.else.i.i_crit_edge, %cond.true.i160.if.else.i.i_crit_edge
  %77 = ptrtoint ptr %smu_feature.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %smu_feature.i, align 4
  call void @__bitmap_or(ptr noundef %allowed.i, ptr noundef %allowed.i, ptr noundef nonnull %allowed_feature_mask.i, i32 noundef %78) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %allowed_feature_mask.i) #10
  %call62 = call fastcc i32 @smu_smc_hw_setup(ptr noundef %smu1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end69, label %do.end67

smu_get_driver_allowed_feature_mask.exit:         ; preds = %cond.end8.i.smu_get_driver_allowed_feature_mask.exit_crit_edge, %if.end57.smu_get_driver_allowed_feature_mask.exit_crit_edge
  %cond930.i = phi i32 [ %call.i161, %cond.end8.i.smu_get_driver_allowed_feature_mask.exit_crit_edge ], [ -22, %if.end57.smu_get_driver_allowed_feature_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %allowed_feature_mask.i) #10
  br label %cleanup

do.end67:                                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.153) #13
  br label %cleanup

if.end69:                                         ; preds = %if.else.i.i
  %81 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ppt_funcs13.i, align 8
  %tobool71.not = icmp eq ptr %82, null
  br i1 %tobool71.not, label %if.end69.do.end89_crit_edge, label %cond.true72

if.end69.do.end89_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

cond.true72:                                      ; preds = %if.end69
  %init_max_sustainable_clocks = getelementptr inbounds %struct.pptable_funcs, ptr %82, i32 0, i32 68
  %83 = ptrtoint ptr %init_max_sustainable_clocks to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_max_sustainable_clocks, align 4
  %tobool74.not = icmp eq ptr %84, null
  br i1 %tobool74.not, label %cond.true72.if.end91_crit_edge, label %cond.end83

cond.true72.if.end91_crit_edge:                   ; preds = %cond.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

cond.end83:                                       ; preds = %cond.true72
  %call78 = call i32 %84(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool85.not = icmp eq i32 %call78, 0
  br i1 %tobool85.not, label %cond.end83.if.end91_crit_edge, label %cond.end83.do.end89_crit_edge

cond.end83.do.end89_crit_edge:                    ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

cond.end83.if.end91_crit_edge:                    ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

do.end89:                                         ; preds = %cond.end83.do.end89_crit_edge, %if.end69.do.end89_crit_edge
  %cond84187 = phi i32 [ %call78, %cond.end83.do.end89_crit_edge ], [ -22, %if.end69.do.end89_crit_edge ]
  %85 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.156) #13
  br label %cleanup

if.end91:                                         ; preds = %cond.end83.if.end91_crit_edge, %cond.true72.if.end91_crit_edge
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %87 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %dpm_enabled, align 8
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %handle, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.159) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end89, %do.end67, %smu_get_driver_allowed_feature_mask.exit, %do.end55, %do.end33, %if.end14.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i164, %do.end ], [ %cond28173, %do.end33 ], [ %cond50179, %do.end55 ], [ %call62, %do.end67 ], [ %cond84187, %do.end89 ], [ 0, %if.end91 ], [ 0, %if.then ], [ 0, %if.end14.cleanup_crit_edge ], [ %cond930.i, %smu_get_driver_allowed_feature_mask.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_hw_fini(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 12
  %2 = ptrtoint ptr %gim_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gim_feature, align 4
  %and3 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vcn_gate_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %vcn_gate_lock.i, i32 noundef 0) #10
  %ppt_funcs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %4 = ptrtoint ptr %ppt_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppt_funcs.i.i, align 8
  %dpm_set_vcn_enable.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %dpm_set_vcn_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpm_set_vcn_enable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.smu_dpm_set_vcn_enable.exit_crit_edge, label %if.end.i.i

if.end.smu_dpm_set_vcn_enable.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_vcn_enable.exit

if.end.i.i:                                       ; preds = %if.end
  %vcn_gated.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vcn_gated.i.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %vcn_gated.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %vcn_gated.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.smu_dpm_set_vcn_enable.exit_crit_edge

if.end.i.i.smu_dpm_set_vcn_enable.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_vcn_enable.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %10 = ptrtoint ptr %ppt_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppt_funcs.i.i, align 8
  %dpm_set_vcn_enable8.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %dpm_set_vcn_enable8.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dpm_set_vcn_enable8.i.i, align 4
  %call10.i.i = tail call i32 %13(ptr noundef %smu1, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end6.i.i.smu_dpm_set_vcn_enable.exit_crit_edge

if.end6.i.i.smu_dpm_set_vcn_enable.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_vcn_enable.exit

if.then12.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i25.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vcn_gated.i.i, i32 noundef 4) #10
  %14 = ptrtoint ptr %vcn_gated.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %vcn_gated.i.i, align 4
  br label %smu_dpm_set_vcn_enable.exit

smu_dpm_set_vcn_enable.exit:                      ; preds = %if.then12.i.i, %if.end6.i.i.smu_dpm_set_vcn_enable.exit_crit_edge, %if.end.i.i.smu_dpm_set_vcn_enable.exit_crit_edge, %if.end.smu_dpm_set_vcn_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vcn_gate_lock.i) #10
  %jpeg_gate_lock.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 5
  tail call void @mutex_lock_nested(ptr noundef %jpeg_gate_lock.i, i32 noundef 0) #10
  %15 = ptrtoint ptr %ppt_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppt_funcs.i.i, align 8
  %dpm_set_jpeg_enable.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %dpm_set_jpeg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dpm_set_jpeg_enable.i.i, align 4
  %tobool.not.i.i21 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i21, label %smu_dpm_set_vcn_enable.exit.smu_dpm_set_jpeg_enable.exit_crit_edge, label %if.end.i.i24

smu_dpm_set_vcn_enable.exit.smu_dpm_set_jpeg_enable.exit_crit_edge: ; preds = %smu_dpm_set_vcn_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_jpeg_enable.exit

if.end.i.i24:                                     ; preds = %smu_dpm_set_vcn_enable.exit
  %jpeg_gated.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 16, i32 2, i32 3
  %call.i.i.i.i22 = tail call zeroext i1 @__kasan_check_read(ptr noundef %jpeg_gated.i.i, i32 noundef 4) #10
  %19 = ptrtoint ptr %jpeg_gated.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %jpeg_gated.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i.i23 = icmp eq i32 %20, 0
  br i1 %tobool4.not.i.i23, label %if.end6.i.i27, label %if.end.i.i24.smu_dpm_set_jpeg_enable.exit_crit_edge

if.end.i.i24.smu_dpm_set_jpeg_enable.exit_crit_edge: ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_jpeg_enable.exit

if.end6.i.i27:                                    ; preds = %if.end.i.i24
  %21 = ptrtoint ptr %ppt_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ppt_funcs.i.i, align 8
  %dpm_set_jpeg_enable8.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %dpm_set_jpeg_enable8.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dpm_set_jpeg_enable8.i.i, align 4
  %call10.i.i25 = tail call i32 %24(ptr noundef %smu1, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i25)
  %tobool11.not.i.i26 = icmp eq i32 %call10.i.i25, 0
  br i1 %tobool11.not.i.i26, label %if.then12.i.i29, label %if.end6.i.i27.smu_dpm_set_jpeg_enable.exit_crit_edge

if.end6.i.i27.smu_dpm_set_jpeg_enable.exit_crit_edge: ; preds = %if.end6.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_jpeg_enable.exit

if.then12.i.i29:                                  ; preds = %if.end6.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i25.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %jpeg_gated.i.i, i32 noundef 4) #10
  %25 = ptrtoint ptr %jpeg_gated.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %jpeg_gated.i.i, align 4
  br label %smu_dpm_set_jpeg_enable.exit

smu_dpm_set_jpeg_enable.exit:                     ; preds = %if.then12.i.i29, %if.end6.i.i27.smu_dpm_set_jpeg_enable.exit_crit_edge, %if.end.i.i24.smu_dpm_set_jpeg_enable.exit_crit_edge, %smu_dpm_set_vcn_enable.exit.smu_dpm_set_jpeg_enable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %jpeg_gate_lock.i) #10
  %cur_state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 110, i32 4
  %26 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cur_state, align 8
  %cur_state6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 5
  %27 = ptrtoint ptr %cur_state6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cur_state6, align 4
  %pm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 42
  %28 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool7.not = icmp eq i8 %29, 0
  br i1 %tobool7.not, label %smu_dpm_set_jpeg_enable.exit.cleanup_crit_edge, label %if.end9

smu_dpm_set_jpeg_enable.exit.cleanup_crit_edge:   ; preds = %smu_dpm_set_jpeg_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %smu_dpm_set_jpeg_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %30 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dpm_enabled, align 8
  %call10 = tail call fastcc i32 @smu_smc_hw_cleanup(ptr noundef %smu1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %smu_dpm_set_jpeg_enable.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %smu_dpm_set_jpeg_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_suspend(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 12
  %2 = ptrtoint ptr %gim_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gim_feature, align 4
  %and3 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 42
  %4 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %6 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dpm_enabled, align 8
  %call = tail call fastcc i32 @smu_smc_hw_cleanup(ptr noundef %smu1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %watermarks_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 34
  %7 = ptrtoint ptr %watermarks_bitmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %watermarks_bitmap, align 4
  %and11 = and i32 %8, -3
  store i32 %and11, ptr %watermarks_bitmap, align 4
  %mutex.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %ppt_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %9 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ppt_funcs.i, align 8
  %set_gfx_cgpg.i = getelementptr inbounds %struct.pptable_funcs, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %set_gfx_cgpg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_gfx_cgpg.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end10.smu_set_gfx_cgpg.exit_crit_edge, label %if.then.i

if.end10.smu_set_gfx_cgpg.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_gfx_cgpg.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %12(ptr noundef %smu1, i1 noundef zeroext false) #10
  br label %smu_set_gfx_cgpg.exit

smu_set_gfx_cgpg.exit:                            ; preds = %if.then.i, %if.end10.smu_set_gfx_cgpg.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %cleanup

cleanup:                                          ; preds = %smu_set_gfx_cgpg.exit, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smu_set_gfx_cgpg.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_resume(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 132, i32 12
  %2 = ptrtoint ptr %gim_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gim_feature, align 4
  %and3 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 42
  %4 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.217) #13
  %8 = ptrtoint ptr %smu1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smu1, align 8
  %load_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %9, i32 0, i32 112, i32 1
  %10 = ptrtoint ptr %load_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %load_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 2
  br i1 %cmp.not.i, label %do.end.if.end12.i_crit_edge, label %if.then.i

do.end.if.end12.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then.i:                                        ; preds = %do.end
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %9, i32 0, i32 172, i32 15
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720896, i32 %13)
  %cmp3.i = icmp ult i32 %13, 720896
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end12.i_crit_edge

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.then.i
  %ppt_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %14 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ppt_funcs.i, align 8
  %load_microcode.i = getelementptr inbounds %struct.pptable_funcs, ptr %15, i32 0, i32 41
  %16 = ptrtoint ptr %load_microcode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %load_microcode.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then4.i.if.end12.i_crit_edge, label %if.then5.i

if.then4.i.if.end12.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.then4.i
  %call.i = tail call i32 %17(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.end12.i_crit_edge, label %if.then5.i.do.end12_crit_edge

if.then5.i.do.end12_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then5.i.if.end12.i_crit_edge, %if.then4.i.if.end12.i_crit_edge, %if.then.i.if.end12.i_crit_edge, %do.end.if.end12.i_crit_edge
  %ppt_funcs13.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 2
  %18 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ppt_funcs13.i, align 8
  %check_fw_status.i = getelementptr inbounds %struct.pptable_funcs, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %check_fw_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %check_fw_status.i, align 4
  %tobool14.not.i = icmp eq ptr %21, null
  br i1 %tobool14.not.i, label %if.end12.i.if.end22.i_crit_edge, label %if.then15.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end12.i
  %call18.i = tail call i32 %21(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end22thread-pre-split.i, label %do.end.i

do.end.i:                                         ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.37) #13
  br label %do.end12

if.end22thread-pre-split.i:                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %ppt_funcs13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i = load ptr, ptr %ppt_funcs13.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22thread-pre-split.i, %if.end12.i.if.end22.i_crit_edge
  %25 = phi ptr [ %.pr.i, %if.end22thread-pre-split.i ], [ %19, %if.end12.i.if.end22.i_crit_edge ]
  %tobool24.not.i = icmp eq ptr %25, null
  br i1 %tobool24.not.i, label %if.end22.i.do.end12_crit_edge, label %cond.true.i

if.end22.i.do.end12_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

cond.true.i:                                      ; preds = %if.end22.i
  %check_fw_version.i = getelementptr inbounds %struct.pptable_funcs, ptr %25, i32 0, i32 51
  %26 = ptrtoint ptr %check_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %check_fw_version.i, align 4
  %tobool26.not.i = icmp eq ptr %27, null
  br i1 %tobool26.not.i, label %cond.true.i.if.end14_crit_edge, label %smu_start_smc_engine.exit

cond.true.i.if.end14_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

smu_start_smc_engine.exit:                        ; preds = %cond.true.i
  %call30.i = tail call i32 %27(ptr noundef %smu1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool8.not = icmp eq i32 %call30.i, 0
  br i1 %tobool8.not, label %smu_start_smc_engine.exit.if.end14_crit_edge, label %smu_start_smc_engine.exit.do.end12_crit_edge

smu_start_smc_engine.exit.do.end12_crit_edge:     ; preds = %smu_start_smc_engine.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

smu_start_smc_engine.exit.if.end14_crit_edge:     ; preds = %smu_start_smc_engine.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end12:                                         ; preds = %smu_start_smc_engine.exit.do.end12_crit_edge, %if.end22.i.do.end12_crit_edge, %do.end.i, %if.then5.i.do.end12_crit_edge
  %retval.0.i47 = phi i32 [ %call30.i, %smu_start_smc_engine.exit.do.end12_crit_edge ], [ -22, %if.end22.i.do.end12_crit_edge ], [ %call.i, %if.then5.i.do.end12_crit_edge ], [ %call18.i, %do.end.i ]
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.144) #13
  br label %cleanup

if.end14:                                         ; preds = %smu_start_smc_engine.exit.if.end14_crit_edge, %cond.true.i.if.end14_crit_edge
  %call15 = tail call fastcc i32 @smu_smc_hw_setup(ptr noundef %smu1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.153) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @smu_set_gfx_cgpg(ptr noundef %smu1, i1 noundef zeroext true)
  %disable_uclk_switch = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 97, i32 36
  %32 = ptrtoint ptr %disable_uclk_switch to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %disable_uclk_switch, align 4
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %33 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dpm_enabled, align 8
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handle, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.224) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end20, %do.end12, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i47, %do.end12 ], [ %call15, %do.end20 ], [ 0, %if.end22 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_enable_umd_pstate(ptr noundef %handle, ptr nocapture noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 43
  %0 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_apu, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dpm_context = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %dpm_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm_context, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dpm_level, align 4
  %and = and i32 %5, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 4
  %and4 = and i32 %7, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.then6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.then3
  %saved_dpm_level = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 5
  %8 = ptrtoint ptr %saved_dpm_level to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %saved_dpm_level, align 4
  %enable_umd_pstate = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 3
  %9 = ptrtoint ptr %enable_umd_pstate to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %enable_umd_pstate, align 4
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %10 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppt_funcs, align 8
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.then6.cond.end15_crit_edge, label %cond.true

if.then6.cond.end15_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end15

cond.true:                                        ; preds = %if.then6
  %gpo_control = getelementptr inbounds %struct.pptable_funcs, ptr %11, i32 0, i32 105
  %12 = ptrtoint ptr %gpo_control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpo_control, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %cond.true.cond.end15_crit_edge, label %cond.true11

cond.true.cond.end15_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end15

cond.true11:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %13(ptr noundef %handle, i1 noundef zeroext false) #10
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true11, %cond.true.cond.end15_crit_edge, %if.then6.cond.end15_crit_edge
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 8
  %call17 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %15, i32 noundef 6, i32 noundef 1) #10
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 8
  %call19 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %17, i32 noundef 6, i32 noundef 1) #10
  %18 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ppt_funcs, align 8
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %cond.end15.cond.end48_crit_edge, label %cond.true22

cond.end15.cond.end48_crit_edge:                  ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end48

cond.true22:                                      ; preds = %cond.end15
  %gfx_ulv_control = getelementptr inbounds %struct.pptable_funcs, ptr %19, i32 0, i32 100
  %20 = ptrtoint ptr %gfx_ulv_control to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gfx_ulv_control, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %cond.true22.cond.end33_crit_edge, label %cond.true25

cond.true22.cond.end33_crit_edge:                 ; preds = %cond.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end33

cond.true25:                                      ; preds = %cond.true22
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 %21(ptr noundef %handle, i1 noundef zeroext false) #10
  br label %cond.end33

cond.end33:                                       ; preds = %cond.true25, %cond.true22.cond.end33_crit_edge
  %22 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load ptr, ptr %ppt_funcs, align 8
  %tobool36.not = icmp eq ptr %.pr, null
  br i1 %tobool36.not, label %cond.end33.cond.end48_crit_edge, label %cond.true37

cond.end33.cond.end48_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end48

cond.true37:                                      ; preds = %cond.end33
  %deep_sleep_control = getelementptr inbounds %struct.pptable_funcs, ptr %.pr, i32 0, i32 101
  %23 = ptrtoint ptr %deep_sleep_control to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %deep_sleep_control, align 4
  %tobool39.not = icmp eq ptr %24, null
  br i1 %tobool39.not, label %cond.true37.cond.end48_crit_edge, label %cond.true40

cond.true37.cond.end48_crit_edge:                 ; preds = %cond.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end48

cond.true40:                                      ; preds = %cond.true37
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 %24(ptr noundef %handle, i1 noundef zeroext false) #10
  br label %cond.end48

cond.end48:                                       ; preds = %cond.true40, %cond.true37.cond.end48_crit_edge, %cond.end33.cond.end48_crit_edge, %cond.end15.cond.end48_crit_edge
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle, align 8
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic_funcs, align 4
  %update_umd_stable_pstate = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %update_umd_stable_pstate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %update_umd_stable_pstate, align 4
  %tobool51.not = icmp eq ptr %30, null
  br i1 %tobool51.not, label %cond.end48.cleanup_crit_edge, label %cond.true52

cond.end48.cleanup_crit_edge:                     ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true52:                                      ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call i32 %30(ptr noundef %26, i1 noundef zeroext true) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool5.not, label %if.then64, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %cmp = icmp eq i32 %7, 256
  br i1 %cmp, label %if.then65, label %if.then64.if.end67_crit_edge

if.then64.if.end67_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %saved_dpm_level66 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 5
  %31 = ptrtoint ptr %saved_dpm_level66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saved_dpm_level66, align 4
  %33 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %level, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.then64.if.end67_crit_edge
  %enable_umd_pstate68 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 3
  %34 = ptrtoint ptr %enable_umd_pstate68 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %enable_umd_pstate68, align 4
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle, align 8
  %asic_funcs70 = getelementptr inbounds %struct.amdgpu_device, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %asic_funcs70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %asic_funcs70, align 4
  %update_umd_stable_pstate71 = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %38, i32 0, i32 21
  %39 = ptrtoint ptr %update_umd_stable_pstate71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %update_umd_stable_pstate71, align 4
  %tobool72.not = icmp eq ptr %40, null
  br i1 %tobool72.not, label %if.end67.cond.end80_crit_edge, label %cond.true73

if.end67.cond.end80_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end80

cond.true73:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %call78 = tail call i32 %40(ptr noundef %36, i1 noundef zeroext false) #10
  br label %cond.end80

cond.end80:                                       ; preds = %cond.true73, %if.end67.cond.end80_crit_edge
  %ppt_funcs82 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %41 = ptrtoint ptr %ppt_funcs82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ppt_funcs82, align 8
  %tobool83.not = icmp eq ptr %42, null
  br i1 %tobool83.not, label %cond.end80.cond.end112_crit_edge, label %cond.true84

cond.end80.cond.end112_crit_edge:                 ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end112

cond.true84:                                      ; preds = %cond.end80
  %deep_sleep_control86 = getelementptr inbounds %struct.pptable_funcs, ptr %42, i32 0, i32 101
  %43 = ptrtoint ptr %deep_sleep_control86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %deep_sleep_control86, align 4
  %tobool87.not = icmp eq ptr %44, null
  br i1 %tobool87.not, label %cond.true84.cond.end96_crit_edge, label %cond.true88

cond.true84.cond.end96_crit_edge:                 ; preds = %cond.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end96

cond.true88:                                      ; preds = %cond.true84
  call void @__sanitizer_cov_trace_pc() #12
  %call91 = tail call i32 %44(ptr noundef %handle, i1 noundef zeroext true) #10
  br label %cond.end96

cond.end96:                                       ; preds = %cond.true88, %cond.true84.cond.end96_crit_edge
  %45 = ptrtoint ptr %ppt_funcs82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr198 = load ptr, ptr %ppt_funcs82, align 8
  %tobool99.not = icmp eq ptr %.pr198, null
  br i1 %tobool99.not, label %cond.end96.cond.end112_crit_edge, label %cond.true100

cond.end96.cond.end112_crit_edge:                 ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end112

cond.true100:                                     ; preds = %cond.end96
  %gfx_ulv_control102 = getelementptr inbounds %struct.pptable_funcs, ptr %.pr198, i32 0, i32 100
  %46 = ptrtoint ptr %gfx_ulv_control102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gfx_ulv_control102, align 4
  %tobool103.not = icmp eq ptr %47, null
  br i1 %tobool103.not, label %cond.true100.cond.end112_crit_edge, label %cond.true104

cond.true100.cond.end112_crit_edge:               ; preds = %cond.true100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end112

cond.true104:                                     ; preds = %cond.true100
  call void @__sanitizer_cov_trace_pc() #12
  %call107 = tail call i32 %47(ptr noundef %handle, i1 noundef zeroext true) #10
  br label %cond.end112

cond.end112:                                      ; preds = %cond.true104, %cond.true100.cond.end112_crit_edge, %cond.end96.cond.end112_crit_edge, %cond.end80.cond.end112_crit_edge
  %48 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %handle, align 8
  %call115 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %49, i32 noundef 6, i32 noundef 0) #10
  %50 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %handle, align 8
  %call117 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %51, i32 noundef 6, i32 noundef 0) #10
  %52 = ptrtoint ptr %ppt_funcs82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ppt_funcs82, align 8
  %tobool119.not = icmp eq ptr %53, null
  br i1 %tobool119.not, label %cond.end112.cleanup_crit_edge, label %cond.true120

cond.end112.cleanup_crit_edge:                    ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true120:                                     ; preds = %cond.end112
  %gpo_control122 = getelementptr inbounds %struct.pptable_funcs, ptr %53, i32 0, i32 105
  %54 = ptrtoint ptr %gpo_control122 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpo_control122, align 4
  %tobool123.not = icmp eq ptr %55, null
  br i1 %tobool123.not, label %cond.true120.cleanup_crit_edge, label %cond.true124

cond.true120.cleanup_crit_edge:                   ; preds = %cond.true120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true124:                                     ; preds = %cond.true120
  call void @__sanitizer_cov_trace_pc() #12
  %call127 = tail call i32 %55(ptr noundef %handle, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.true124, %cond.true120.cleanup_crit_edge, %cond.end112.cleanup_crit_edge, %if.else.cleanup_crit_edge, %cond.true52, %cond.end48.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %cond.end112.cleanup_crit_edge ], [ 0, %cond.true124 ], [ 0, %cond.true120.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %cond.end48.cleanup_crit_edge ], [ 0, %cond.true52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_get_power_limit(ptr noundef %handle, ptr noundef %limit, i32 noundef %pp_limit_level, i32 noundef %pp_power_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %2 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pp_power_type)
  %switch = icmp ult i32 %pp_power_type, 2
  %or.cond = and i1 %switch, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pp_limit_level)
  %switch66 = icmp ult i32 %pp_limit_level, 3
  %or.cond67 = and i1 %switch66, %or.cond
  br i1 %or.cond67, label %sw.epilog10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog10:                                      ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pp_power_type)
  %cmp.not = icmp eq i32 %pp_power_type, 0
  br i1 %cmp.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %sw.epilog10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_ppt_limit = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %get_ppt_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_ppt_limit, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.then11.if.end38_crit_edge, label %if.then13

if.then11.if.end38_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, ptr noundef %limit, i32 noundef 1, i32 noundef %pp_limit_level) #10
  br label %if.end38

if.else:                                          ; preds = %sw.epilog10
  %10 = zext i32 %pp_limit_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %pp_limit_level, label %if.else.if.end38_crit_edge [
    i32 0, label %sw.bb17
    i32 1, label %sw.bb34
    i32 2, label %sw.bb35
  ]

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

sw.bb17:                                          ; preds = %if.else
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %12, label %sw.bb17.sw.epilog32_crit_edge [
    i32 851970, label %sw.bb17.sw.bb19_crit_edge
    i32 720903, label %sw.bb17.sw.bb19_crit_edge68
    i32 720907, label %sw.bb17.sw.bb19_crit_edge69
    i32 720908, label %sw.bb17.sw.bb19_crit_edge70
    i32 720909, label %sw.bb17.sw.bb19_crit_edge71
  ]

sw.bb17.sw.bb19_crit_edge71:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

sw.bb17.sw.bb19_crit_edge70:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

sw.bb17.sw.bb19_crit_edge69:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

sw.bb17.sw.bb19_crit_edge68:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

sw.bb17.sw.bb19_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

sw.bb17.sw.epilog32_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

sw.bb19:                                          ; preds = %sw.bb17.sw.bb19_crit_edge, %sw.bb17.sw.bb19_crit_edge68, %sw.bb17.sw.bb19_crit_edge69, %sw.bb17.sw.bb19_crit_edge70, %sw.bb17.sw.bb19_crit_edge71
  %ppt_funcs20 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %14 = ptrtoint ptr %ppt_funcs20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ppt_funcs20, align 8
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %sw.bb19.sw.epilog32_crit_edge, label %cond.true

sw.bb19.sw.epilog32_crit_edge:                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

cond.true:                                        ; preds = %sw.bb19
  %get_power_limit = getelementptr inbounds %struct.pptable_funcs, ptr %15, i32 0, i32 31
  %16 = ptrtoint ptr %get_power_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_power_limit, align 4
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %cond.true.sw.epilog32_crit_edge, label %cond.true24

cond.true.sw.epilog32_crit_edge:                  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog32

cond.true24:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %current_power_limit = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 26
  %call27 = tail call i32 %17(ptr noundef %handle, ptr noundef %current_power_limit, ptr noundef null, ptr noundef null) #10
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %cond.true24, %cond.true.sw.epilog32_crit_edge, %sw.bb19.sw.epilog32_crit_edge, %sw.bb17.sw.epilog32_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb17.sw.epilog32_crit_edge ], [ %call27, %cond.true24 ], [ 0, %cond.true.sw.epilog32_crit_edge ], [ -22, %sw.bb19.sw.epilog32_crit_edge ]
  %current_power_limit33 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 26
  %18 = ptrtoint ptr %current_power_limit33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %current_power_limit33, align 8
  %20 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %limit, align 4
  br label %if.end38

sw.bb34:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %default_power_limit = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 27
  %21 = ptrtoint ptr %default_power_limit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %default_power_limit, align 4
  %23 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %limit, align 4
  br label %if.end38

sw.bb35:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %max_power_limit = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 28
  %24 = ptrtoint ptr %max_power_limit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_power_limit, align 8
  %26 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %limit, align 4
  br label %if.end38

if.end38:                                         ; preds = %sw.bb35, %sw.bb34, %sw.epilog32, %if.else.if.end38_crit_edge, %if.then13, %if.then11.if.end38_crit_edge
  %ret.1 = phi i32 [ %call, %if.then13 ], [ 0, %if.then11.if.end38_crit_edge ], [ 0, %if.else.if.end38_crit_edge ], [ 0, %sw.bb35 ], [ 0, %sw.bb34 ], [ %ret.0, %sw.epilog32 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end38 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smu_mode1_reset_is_support(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %2 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppt_funcs, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %mode1_reset_is_support = getelementptr inbounds %struct.pptable_funcs, ptr %3, i32 0, i32 88
  %4 = ptrtoint ptr %mode1_reset_is_support to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode1_reset_is_support, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 %5(ptr noundef %smu) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %ret.0.off0 = phi i1 [ %call, %if.then4 ], [ false, %land.lhs.true.if.end7_crit_edge ], [ false, %if.end.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %if.end7 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smu_mode2_reset_is_support(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %2 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppt_funcs, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %mode2_reset_is_support = getelementptr inbounds %struct.pptable_funcs, ptr %3, i32 0, i32 89
  %4 = ptrtoint ptr %mode2_reset_is_support to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode2_reset_is_support, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 %5(ptr noundef %smu) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %ret.0.off0 = phi i1 [ %call, %if.then4 ], [ false, %land.lhs.true.if.end7_crit_edge ], [ false, %if.end.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %if.end7 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_mode1_reset(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %2 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppt_funcs, align 8
  %mode1_reset = getelementptr inbounds %struct.pptable_funcs, ptr %3, i32 0, i32 90
  %4 = ptrtoint ptr %mode1_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode1_reset, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %5(ptr noundef %smu) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %ret.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_handle_passthrough_sbr(ptr noundef %smu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %smu_handle_passthrough_sbr = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 108
  %2 = ptrtoint ptr %smu_handle_passthrough_sbr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_handle_passthrough_sbr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %smu, i1 noundef zeroext %enable) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_get_ecc_info(ptr noundef %smu, ptr noundef %umc_ecc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %get_ecc_info = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 111
  %2 = ptrtoint ptr %get_ecc_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_ecc_info, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %smu, ptr noundef %umc_ecc) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -95, %land.lhs.true.if.end_crit_edge ], [ -95, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_wait_for_event(ptr noundef %adev, i32 noundef %event, i64 noundef %event_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %wait_for_event = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 109
  %2 = ptrtoint ptr %wait_for_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait_for_event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppt_funcs, align 8
  %wait_for_event3 = getelementptr inbounds %struct.pptable_funcs, ptr %5, i32 0, i32 109
  %6 = ptrtoint ptr %wait_for_event3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait_for_event3, align 4
  %call = tail call i32 %7(ptr noundef %smu1, i32 noundef %event, i64 noundef %event_arg) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_stb_collect_info(ptr noundef %smu, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %stb_collect_info = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 112
  %2 = ptrtoint ptr %stb_collect_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stb_collect_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 65, i32 1
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %stb_context = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 65
  %6 = ptrtoint ptr %stb_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stb_context, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %size)
  %cmp.not = icmp eq i32 %7, %size
  br i1 %cmp.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %smu, ptr noundef %buf, i32 noundef %size) #10
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -95, %lor.lhs.false.return_crit_edge ], [ -95, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_smu_stb_debug_fs_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stb_context = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 65
  %0 = ptrtoint ptr %stb_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stb_context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root, align 4
  %conv = zext i32 %1 to i64
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %5, ptr noundef %adev, ptr noundef nonnull @smu_stb_debugfs_fops, i64 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_file_size(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smu_pp_set_fan_control_mode(ptr noundef %handle, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled.i, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.smu_set_fan_control_mode.exit_crit_edge, label %lor.lhs.false.i

entry.smu_set_fan_control_mode.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_fan_control_mode.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.smu_set_fan_control_mode.exit_crit_edge, label %if.end.i

lor.lhs.false.i.smu_set_fan_control_mode.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_fan_control_mode.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %ppt_funcs.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs.i, align 8
  %set_fan_control_mode.i = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 74
  %8 = ptrtoint ptr %set_fan_control_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_fan_control_mode.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then3.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 %9(ptr noundef %handle, i32 noundef %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.then3.i.if.end11.i_crit_edge

if.then3.i.if.end11.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %flags.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 4
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %user_dpm_profile.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64
  %12 = ptrtoint ptr %user_dpm_profile.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %value, ptr %user_dpm_profile.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %land.lhs.true.i.if.end11.i_crit_edge, %if.then3.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then3.i.if.end11.i_crit_edge ], [ 0, %land.lhs.true.i.if.end11.i_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.end.i.if.end11.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool13.not.i = icmp ne i32 %ret.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp.not.i = icmp eq i32 %value, 1
  %or.cond.i = or i1 %cmp.not.i, %tobool13.not.i
  br i1 %or.cond.i, label %if.end11.i.smu_set_fan_control_mode.exit_crit_edge, label %land.lhs.true15.i

if.end11.i.smu_set_fan_control_mode.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_fan_control_mode.exit

land.lhs.true15.i:                                ; preds = %if.end11.i
  %flags17.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 4
  %13 = ptrtoint ptr %flags17.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags17.i, align 4
  %and18.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %land.lhs.true15.i.smu_set_fan_control_mode.exit_crit_edge

land.lhs.true15.i.smu_set_fan_control_mode.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_fan_control_mode.exit

if.then20.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  %fan_speed_pwm.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 2
  %15 = ptrtoint ptr %fan_speed_pwm.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fan_speed_pwm.i, align 4
  %fan_speed_rpm.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 3
  %16 = ptrtoint ptr %fan_speed_rpm.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fan_speed_rpm.i, align 4
  %and25.i = and i32 %14, -7
  %17 = ptrtoint ptr %flags17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and25.i, ptr %flags17.i, align 4
  br label %smu_set_fan_control_mode.exit

smu_set_fan_control_mode.exit:                    ; preds = %if.then20.i, %land.lhs.true15.i.smu_set_fan_control_mode.exit_crit_edge, %if.end11.i.smu_set_fan_control_mode.exit_crit_edge, %lor.lhs.false.i.smu_set_fan_control_mode.exit_crit_edge, %entry.smu_set_fan_control_mode.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_fan_control_mode(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_fan_control_mode = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 73
  %8 = ptrtoint ptr %get_fan_control_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_fan_control_mode, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_fan_speed_pwm(ptr noundef %handle, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %set_fan_speed_pwm = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 75
  %8 = ptrtoint ptr %set_fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_fan_speed_pwm, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %if.then3

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %speed) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.then3.if.end17_crit_edge

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then3
  %flags = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %fan_speed_pwm = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 2
  %12 = ptrtoint ptr %fan_speed_pwm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %speed, ptr %fan_speed_pwm, align 4
  %or = and i32 %11, -7
  %and14 = or i32 %or, 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and14, ptr %flags, align 4
  %fan_speed_rpm = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 3
  %14 = ptrtoint ptr %fan_speed_rpm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %fan_speed_rpm, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %land.lhs.true.if.end17_crit_edge, %if.then3.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3.if.end17_crit_edge ], [ 0, %land.lhs.true.if.end17_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end.if.end17_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end17 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_fan_speed_pwm(ptr noundef %handle, ptr noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_fan_speed_pwm = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %get_fan_speed_pwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_fan_speed_pwm, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, ptr noundef %speed) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_force_ppclk_levels(ptr noundef %handle, i32 noundef %type, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %type)
  %0 = icmp ult i32 %type, 12
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.smu_force_ppclk_levels, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call fastcc i32 @smu_force_smuclk_levels(ptr noundef %handle, i32 noundef %switch.load, i32 noundef %mask)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_print_ppclk_levels(ptr noundef %handle, i32 noundef %type, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %type)
  %0 = icmp ult i32 %type, 14
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.smu_print_ppclk_levels, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pm_enabled.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %2 = ptrtoint ptr %pm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_enabled.i, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %switch.lookup.cleanup_crit_edge, label %lor.lhs.false.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %switch.lookup
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 8
  %dpm_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 98, i32 13
  %6 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dpm_enabled.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %ppt_funcs.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %8 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppt_funcs.i, align 8
  %print_clk_levels.i = getelementptr inbounds %struct.pptable_funcs, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %print_clk_levels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %print_clk_levels.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %11(ptr noundef %handle, i32 noundef %switch.load, ptr noundef %buf) #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then3.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %lor.lhs.false.i.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i, %if.end6.i ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_force_performance_level(ptr noundef %handle, i32 noundef %level) #0 align 64 {
entry:
  %level.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %level.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %level.addr, align 4
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %1 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %4, i32 0, i32 98, i32 13
  %5 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 43
  %7 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_apu, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %dpm_context = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %dpm_context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dpm_context, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = call i32 @smu_enable_umd_pstate(ptr noundef %handle, ptr noundef nonnull %level.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %11 = ptrtoint ptr %level.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %level.addr, align 4
  %13 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end9.smu_handle_task.exit.thread_crit_edge, label %lor.lhs.false.i

if.end9.smu_handle_task.exit.thread_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_handle_task.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end9
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle, align 8
  %dpm_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %16, i32 0, i32 98, i32 13
  %17 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dpm_enabled.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.smu_handle_task.exit.thread_crit_edge, label %smu_handle_task.exit

lor.lhs.false.i.smu_handle_task.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_handle_task.exit.thread

smu_handle_task.exit.thread:                      ; preds = %lor.lhs.false.i.smu_handle_task.exit.thread_crit_edge, %if.end9.smu_handle_task.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

smu_handle_task.exit:                             ; preds = %lor.lhs.false.i
  %call17.i = tail call fastcc i32 @smu_adjust_power_state_dynamic(ptr noundef %handle, i32 noundef %12, i1 noundef zeroext true) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool12.not = icmp eq i32 %call17.i, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %smu_handle_task.exit.cleanup_crit_edge

smu_handle_task.exit.cleanup_crit_edge:           ; preds = %smu_handle_task.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true13:                                  ; preds = %smu_handle_task.exit
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 4
  %19 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.not = icmp eq i32 %20, 2
  br i1 %cmp.not, label %land.lhs.true13.cleanup_crit_edge, label %if.then14

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  %clk_mask = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 6
  %21 = call ptr @memset(ptr %clk_mask, i32 0, i32 96)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %land.lhs.true13.cleanup_crit_edge, %smu_handle_task.exit.cleanup_crit_edge, %smu_handle_task.exit.thread, %if.then7, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then7 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %land.lhs.true13.cleanup_crit_edge ], [ %call17.i, %smu_handle_task.exit.cleanup_crit_edge ], [ -95, %smu_handle_task.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_read_sensor(ptr noundef %handle, i32 noundef %sensor, ptr noundef %data, ptr noundef %size_arg) #0 align 64 {
entry:
  %size_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size_val) #10
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool3.not = icmp eq ptr %data, null
  %tobool5.not = icmp eq ptr %size_arg, null
  %or.cond = or i1 %tobool3.not, %tobool5.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %size_arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size_arg, align 4
  %8 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %size_val, align 4
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %9 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ppt_funcs, align 8
  %read_sensor = getelementptr inbounds %struct.pptable_funcs, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %read_sensor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_sensor, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.end7.if.end15_crit_edge, label %if.then9

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9:                                         ; preds = %if.end7
  %call = call i32 %12(ptr noundef %handle, i32 noundef %sensor, ptr noundef nonnull %data, ptr noundef nonnull %size_val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then9.unlock_crit_edge, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9.unlock_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %13 = zext i32 %sensor to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %sensor, label %sw.default [
    i32 18, label %sw.bb
    i32 19, label %sw.bb16
    i32 20, label %sw.bb19
    i32 14, label %sw.bb31
    i32 13, label %sw.bb49
    i32 23, label %sw.bb68
    i32 21, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %standard = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 22, i32 0, i32 1
  %14 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %standard, align 4
  %mul = mul i32 %15, 100
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %data, align 4
  %17 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %size_val, align 4
  br label %unlock

sw.bb16:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %standard17 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 22, i32 2, i32 1
  %18 = ptrtoint ptr %standard17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %standard17, align 4
  %mul18 = mul i32 %19, 100
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul18, ptr %data, align 4
  %21 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %size_val, align 4
  br label %unlock

sw.bb19:                                          ; preds = %if.end15
  %22 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ppt_funcs, align 8
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %sw.bb19.cond.end29_crit_edge, label %cond.true

sw.bb19.cond.end29_crit_edge:                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end29

cond.true:                                        ; preds = %sw.bb19
  %get_enabled_mask = getelementptr inbounds %struct.pptable_funcs, ptr %23, i32 0, i32 63
  %24 = ptrtoint ptr %get_enabled_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_enabled_mask, align 4
  %tobool23.not = icmp eq ptr %25, null
  br i1 %tobool23.not, label %cond.true.cond.end29_crit_edge, label %cond.true24

cond.true.cond.end29_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end29

cond.true24:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = call i32 %25(ptr noundef %handle, ptr noundef nonnull %data, i32 noundef 2) #10
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true24, %cond.true.cond.end29_crit_edge, %sw.bb19.cond.end29_crit_edge
  %cond30 = phi i32 [ %call27, %cond.true24 ], [ 0, %cond.true.cond.end29_crit_edge ], [ -22, %sw.bb19.cond.end29_crit_edge ]
  %26 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %size_val, align 4
  br label %unlock

sw.bb31:                                          ; preds = %if.end15
  %27 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ppt_funcs, align 8
  %tobool33.not = icmp eq ptr %28, null
  br i1 %tobool33.not, label %sw.bb31.cond.end45_crit_edge, label %cond.true34

sw.bb31.cond.end45_crit_edge:                     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end45

cond.true34:                                      ; preds = %sw.bb31
  %feature_is_enabled = getelementptr inbounds %struct.pptable_funcs, ptr %28, i32 0, i32 64
  %29 = ptrtoint ptr %feature_is_enabled to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %feature_is_enabled, align 4
  %tobool36.not = icmp eq ptr %30, null
  br i1 %tobool36.not, label %cond.true34.cond.end45_crit_edge, label %cond.true37

cond.true34.cond.end45_crit_edge:                 ; preds = %cond.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end45

cond.true37:                                      ; preds = %cond.true34
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = call i32 %30(ptr noundef %handle, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %phi.cmp124 = icmp ne i32 %call40, 0
  %phi.cast125 = zext i1 %phi.cmp124 to i32
  br label %cond.end45

cond.end45:                                       ; preds = %cond.true37, %cond.true34.cond.end45_crit_edge, %sw.bb31.cond.end45_crit_edge
  %cond46 = phi i32 [ %phi.cast125, %cond.true37 ], [ 0, %cond.true34.cond.end45_crit_edge ], [ 1, %sw.bb31.cond.end45_crit_edge ]
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond46, ptr %data, align 4
  %32 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %size_val, align 4
  br label %unlock

sw.bb49:                                          ; preds = %if.end15
  %33 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ppt_funcs, align 8
  %tobool51.not = icmp eq ptr %34, null
  br i1 %tobool51.not, label %sw.bb49.cond.end64_crit_edge, label %cond.true52

sw.bb49.cond.end64_crit_edge:                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end64

cond.true52:                                      ; preds = %sw.bb49
  %feature_is_enabled54 = getelementptr inbounds %struct.pptable_funcs, ptr %34, i32 0, i32 64
  %35 = ptrtoint ptr %feature_is_enabled54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %feature_is_enabled54, align 4
  %tobool55.not = icmp eq ptr %36, null
  br i1 %tobool55.not, label %cond.true52.cond.end64_crit_edge, label %cond.true56

cond.true52.cond.end64_crit_edge:                 ; preds = %cond.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end64

cond.true56:                                      ; preds = %cond.true52
  call void @__sanitizer_cov_trace_pc() #12
  %call59 = call i32 %36(ptr noundef %handle, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %phi.cmp = icmp ne i32 %call59, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %cond.end64

cond.end64:                                       ; preds = %cond.true56, %cond.true52.cond.end64_crit_edge, %sw.bb49.cond.end64_crit_edge
  %cond65 = phi i32 [ %phi.cast, %cond.true56 ], [ 0, %cond.true52.cond.end64_crit_edge ], [ 1, %sw.bb49.cond.end64_crit_edge ]
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond65, ptr %data, align 4
  %38 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %size_val, align 4
  br label %unlock

sw.bb68:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %vcn_gated = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 16, i32 2, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %vcn_gated, i32 noundef 4) #10
  %39 = ptrtoint ptr %vcn_gated to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %vcn_gated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool70.not = icmp eq i32 %40, 0
  %cond71 = zext i1 %tobool70.not to i32
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond71, ptr %data, align 4
  %42 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %size_val, align 4
  br label %unlock

sw.bb72:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %data, align 4
  %44 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %size_val, align 4
  br label %unlock

sw.default:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %size_val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %size_val, align 4
  br label %unlock

unlock:                                           ; preds = %sw.default, %sw.bb72, %sw.bb68, %cond.end64, %cond.end45, %cond.end29, %sw.bb16, %sw.bb, %if.then9.unlock_crit_edge
  %ret.0 = phi i32 [ -95, %sw.default ], [ 0, %sw.bb72 ], [ 0, %sw.bb68 ], [ 0, %cond.end64 ], [ 0, %cond.end45 ], [ %cond30, %cond.end29 ], [ 0, %sw.bb16 ], [ 0, %sw.bb ], [ 0, %if.then9.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  %46 = ptrtoint ptr %size_val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size_val, align 4
  %48 = ptrtoint ptr %size_arg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %size_arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_performance_level(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 43
  %6 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_apu, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %dpm_context = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %dpm_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm_context, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 4
  %10 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dpm_level, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end5 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_current_power_state(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_current_power_state = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %get_current_power_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_current_power_state, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %pm_state.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %pm_state.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_fan_speed_rpm(ptr noundef %handle, ptr noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_fan_speed_rpm = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %get_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_fan_speed_rpm, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, ptr noundef %speed) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_fan_speed_rpm(ptr noundef %handle, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %set_fan_speed_rpm = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 76
  %8 = ptrtoint ptr %set_fan_speed_rpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_fan_speed_rpm, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %if.then3

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %speed) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.then3.if.end17_crit_edge

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then3
  %flags = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %fan_speed_rpm = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 3
  %12 = ptrtoint ptr %fan_speed_rpm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %speed, ptr %fan_speed_rpm, align 4
  %or = and i32 %11, -7
  %and14 = or i32 %or, 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and14, ptr %flags, align 4
  %fan_speed_pwm = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 2
  %14 = ptrtoint ptr %fan_speed_pwm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %fan_speed_pwm, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %land.lhs.true.if.end17_crit_edge, %if.then3.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3.if.end17_crit_edge ], [ 0, %land.lhs.true.if.end17_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end.if.end17_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end17 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @smu_get_power_num_states(ptr nocapture noundef readnone %handle, ptr noundef writeonly %state_info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %state_info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds i8, ptr %state_info, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %state_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state_info, align 4
  %states = getelementptr inbounds %struct.pp_states_info, ptr %state_info, i32 0, i32 1
  %3 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %states, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_sys_get_pp_table(ptr noundef %handle, ptr nocapture noundef writeonly %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_table1 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %smu_table1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu_table1, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %hardcode_pptable = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14, i32 2
  %8 = ptrtoint ptr %hardcode_pptable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hardcode_pptable, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %hardcode_pptable7 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %hardcode_pptable7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hardcode_pptable7, align 8
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.else, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %smu_table1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smu_table1, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end6.if.end12_crit_edge
  %storemerge = phi ptr [ %13, %if.else ], [ %11, %if.end6.if.end12_crit_edge ]
  %14 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %storemerge, ptr %table, align 4
  %power_play_table_size = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %power_play_table_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %power_play_table_size, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.end12 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_sys_set_pp_table(ptr noundef %handle, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_table1 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %buf, align 1
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %size)
  %cmp.not = icmp eq i32 %conv, %size
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %hardcode_pptable = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %hardcode_pptable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hardcode_pptable, align 8
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end8.i.i, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end8.i.i:                                      ; preds = %if.end6
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3520) #14
  %12 = ptrtoint ptr %hardcode_pptable to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i, ptr %hardcode_pptable, align 8
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %if.end8.i.i.failed_crit_edge, label %if.end8.i.i.if.end14_crit_edge

if.end8.i.i.if.end14_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end8.i.i.failed_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end14:                                         ; preds = %if.end8.i.i.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %13 = phi ptr [ %call9.i.i, %if.end8.i.i.if.end14_crit_edge ], [ %11, %if.end6.if.end14_crit_edge ]
  %14 = call ptr @memcpy(ptr %13, ptr %buf, i32 %size)
  %15 = ptrtoint ptr %hardcode_pptable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hardcode_pptable, align 8
  %17 = ptrtoint ptr %smu_table1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %smu_table1, align 8
  %power_play_table_size = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %power_play_table_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %size, ptr %power_play_table_size, align 4
  %uploading_custom_pp_table = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 47
  %19 = ptrtoint ptr %uploading_custom_pp_table to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %uploading_custom_pp_table, align 4
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 8
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %21, i1 noundef zeroext false) #10
  %call.i = tail call i32 @smu_hw_fini(ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.do.end22_crit_edge

if.end14.do.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.end.i:                                         ; preds = %if.end14
  %call3.i = tail call i32 @smu_hw_init(ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.do.end22_crit_edge

if.end.i.do.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @smu_late_init(ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %smu_reset.exit, label %if.end6.i.do.end22_crit_edge

if.end6.i.do.end22_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

smu_reset.exit:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle, align 8
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %23, i1 noundef zeroext true) #10
  br label %if.end25

do.end22:                                         ; preds = %if.end6.i.do.end22_crit_edge, %if.end.i.do.end22_crit_edge, %if.end14.do.end22_crit_edge
  %retval.0.i.ph = phi i32 [ %call7.i, %if.end6.i.do.end22_crit_edge ], [ %call3.i, %if.end.i.do.end22_crit_edge ], [ %call.i, %if.end14.do.end22_crit_edge ]
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i.ph) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %smu_reset.exit
  %retval.0.i59 = phi i32 [ %retval.0.i.ph, %do.end22 ], [ 0, %smu_reset.exit ]
  %28 = ptrtoint ptr %uploading_custom_pp_table to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %uploading_custom_pp_table, align 4
  br label %failed

failed:                                           ; preds = %if.end25, %if.end8.i.i.failed_crit_edge
  %ret.0 = phi i32 [ %retval.0.i59, %if.end25 ], [ -12, %if.end8.i.i.failed_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %failed, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.0, %failed ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_switch_power_profile(ptr noundef %handle, i32 noundef %type, i1 noundef zeroext %en) #0 align 64 {
entry:
  %workload = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %workload) #10
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp = icmp ult i32 %type, 6
  br i1 %cmp, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %arrayidx11 = getelementptr %struct.smu_context, ptr %handle, i32 0, i32 38, i32 %type
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx11, align 4
  %shl12 = shl nuw i32 1, %7
  br i1 %en, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shl12, -1
  %workload_mask = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 37
  %8 = ptrtoint ptr %workload_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %workload_mask, align 8
  %and = and i32 %9, %neg
  store i32 %and, ptr %workload_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %and, i1 true) #10, !range !396
  %sub.i.op = xor i32 %10, 31
  %11 = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %12 = icmp ult i32 %11, 7
  %cond = select i1 %12, i32 %11, i32 0
  br label %if.end24

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %workload_mask13 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 37
  %13 = ptrtoint ptr %workload_mask13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %workload_mask13, align 8
  %or = or i32 %14, %shl12
  store i32 %or, ptr %workload_mask13, align 8
  %15 = tail call i32 @llvm.ctlz.i32(i32 %or, i1 true) #10, !range !396
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %or)
  %cmp16 = icmp ult i32 %or, 128
  %sub18 = xor i32 %15, 31
  %spec.select = select i1 %cmp16, i32 %sub18, i32 0
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then5
  %cond.pn = phi i32 [ %cond, %if.then5 ], [ %spec.select, %if.else ]
  %storemerge.in = getelementptr %struct.smu_context, ptr %handle, i32 0, i32 39, i32 %cond.pn
  %16 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %17 = ptrtoint ptr %workload to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %workload, align 4
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 4
  %18 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dpm_level, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %19, label %if.then29 [
    i32 2, label %if.end24.if.end31_crit_edge
    i32 512, label %if.end24.if.end31_crit_edge60
  ]

if.end24.if.end31_crit_edge60:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %if.end24
  %ppt_funcs.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %21 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ppt_funcs.i, align 8
  %set_power_profile_mode.i = getelementptr inbounds %struct.pptable_funcs, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %set_power_profile_mode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_power_profile_mode.i, align 4
  %tobool.not.i59 = icmp eq ptr %24, null
  br i1 %tobool.not.i59, label %if.then29.if.end31_crit_edge, label %if.then.i

if.then29.if.end31_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 %24(ptr noundef %handle, ptr noundef nonnull %workload, i32 noundef 0) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then.i, %if.then29.if.end31_crit_edge, %if.end24.if.end31_crit_edge, %if.end24.if.end31_crit_edge60
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %workload) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_handle_dpm_task(ptr noundef %handle, i32 noundef %task_id, ptr nocapture noundef readnone %user_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 15, i32 4
  %0 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dpm_level, align 4
  %pm_enabled.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %2 = ptrtoint ptr %pm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_enabled.i, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.smu_handle_task.exit_crit_edge, label %lor.lhs.false.i

entry.smu_handle_task.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_handle_task.exit

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 8
  %dpm_enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 98, i32 13
  %6 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dpm_enabled.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.smu_handle_task.exit_crit_edge, label %if.end.i

lor.lhs.false.i.smu_handle_task.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_handle_task.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %8 = zext i32 %task_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %task_id, label %if.end.i.out.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 3, label %if.end.i.out.sink.split.i_crit_edge
    i32 2, label %if.end.i.out.sink.split.i_crit_edge3
  ]

if.end.i.out.sink.split.i_crit_edge3:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

if.end.i.out.sink.split.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

sw.bb.i:                                          ; preds = %if.end.i
  %ppt_funcs.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %9 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ppt_funcs.i, align 8
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %sw.bb.i.out.i_crit_edge, label %cond.true.i

sw.bb.i.out.i_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

cond.true.i:                                      ; preds = %sw.bb.i
  %pre_display_config_changed.i = getelementptr inbounds %struct.pptable_funcs, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %pre_display_config_changed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pre_display_config_changed.i, align 4
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %cond.true.i.out.sink.split.i_crit_edge, label %cond.end12.i

cond.true.i.out.sink.split.i_crit_edge:           ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

cond.end12.i:                                     ; preds = %cond.true.i
  %call.i = tail call i32 %12(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %cond.end12.i.out.sink.split.i_crit_edge, label %cond.end12.i.out.i_crit_edge

cond.end12.i.out.i_crit_edge:                     ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

cond.end12.i.out.sink.split.i_crit_edge:          ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %cond.end12.i.out.sink.split.i_crit_edge, %cond.true.i.out.sink.split.i_crit_edge, %if.end.i.out.sink.split.i_crit_edge, %if.end.i.out.sink.split.i_crit_edge3
  %.sink.i = phi i1 [ false, %cond.true.i.out.sink.split.i_crit_edge ], [ false, %cond.end12.i.out.sink.split.i_crit_edge ], [ true, %if.end.i.out.sink.split.i_crit_edge ], [ true, %if.end.i.out.sink.split.i_crit_edge3 ]
  %call17.i = tail call fastcc i32 @smu_adjust_power_state_dynamic(ptr noundef %handle, i32 noundef %1, i1 noundef zeroext %.sink.i) #10
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %cond.end12.i.out.i_crit_edge, %sw.bb.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i.out.i_crit_edge ], [ %call.i, %cond.end12.i.out.i_crit_edge ], [ -22, %sw.bb.i.out.i_crit_edge ], [ %call17.i, %out.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %smu_handle_task.exit

smu_handle_task.exit:                             ; preds = %out.i, %lor.lhs.false.i.smu_handle_task.exit_crit_edge, %entry.smu_handle_task.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %lor.lhs.false.i.smu_handle_task.exit_crit_edge ], [ -95, %entry.smu_handle_task.exit_crit_edge ], [ %ret.0.i, %out.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_load_microcode(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %2 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 1
  %4 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %load_microcode = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %load_microcode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %load_microcode, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end3.if.end11_crit_edge, label %if.then5

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  %call = tail call i32 %9(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %10 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppt_funcs, align 8
  %check_fw_status = getelementptr inbounds %struct.pptable_funcs, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %check_fw_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %check_fw_status, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  %call17 = tail call i32 %13(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then14.cleanup_crit_edge, label %if.then14.cleanup.sink.split_crit_edge

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then14.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.str.37.sink = phi ptr [ @.str.34, %if.then5.cleanup.sink.split_crit_edge ], [ @.str.37, %if.then14.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then5.cleanup.sink.split_crit_edge ], [ %call17, %if.then14.cleanup.sink.split_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull %.str.37.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_dpm_set_power_gate(ptr noundef %handle, i32 noundef %block_type, i1 noundef zeroext %gate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end23

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call = tail call ptr @dev_driver_string(ptr noundef %9) #10
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %do.end.dev_name.exit_crit_edge ]
  %cond = select i1 %gate, ptr @.str.40, ptr @.str.41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 283, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call, ptr noundef %retval.0.i, ptr noundef nonnull %cond, i32 noundef %block_type) #10
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %18 = zext i32 %block_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %block_type, label %do.end105 [
    i32 8, label %if.end23.sw.bb_crit_edge
    i32 11, label %if.end23.sw.bb_crit_edge173
    i32 6, label %sw.bb38
    i32 7, label %sw.bb61
    i32 13, label %sw.bb88
  ]

if.end23.sw.bb_crit_edge173:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end23.sw.bb_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end23.sw.bb_crit_edge, %if.end23.sw.bb_crit_edge173
  %lnot25 = xor i1 %gate, true
  %vcn_gate_lock.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 16, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %vcn_gate_lock.i, i32 noundef 0) #10
  %ppt_funcs.i.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %19 = ptrtoint ptr %ppt_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ppt_funcs.i.i, align 8
  %dpm_set_vcn_enable.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %dpm_set_vcn_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dpm_set_vcn_enable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %sw.bb.smu_dpm_set_vcn_enable.exit.thread_crit_edge, label %if.end.i.i

sw.bb.smu_dpm_set_vcn_enable.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_vcn_enable.exit.thread

if.end.i.i:                                       ; preds = %sw.bb
  %vcn_gated.i.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 16, i32 2, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vcn_gated.i.i, i32 noundef 4) #10
  %23 = ptrtoint ptr %vcn_gated.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %vcn_gated.i.i, align 4
  %conv.i.i = zext i1 %lnot25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %24, %conv.i.i
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.smu_dpm_set_vcn_enable.exit.thread_crit_edge

if.end.i.i.smu_dpm_set_vcn_enable.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_vcn_enable.exit.thread

if.end6.i.i:                                      ; preds = %if.end.i.i
  %25 = ptrtoint ptr %ppt_funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ppt_funcs.i.i, align 8
  %dpm_set_vcn_enable8.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %dpm_set_vcn_enable8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dpm_set_vcn_enable8.i.i, align 4
  %call10.i.i = tail call i32 %28(ptr noundef %handle, i1 noundef zeroext %lnot25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %do.end32

if.then12.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %lnot.ext.i.i = zext i1 %gate to i32
  %call.i.i25.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vcn_gated.i.i, i32 noundef 4) #10
  %29 = ptrtoint ptr %vcn_gated.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %lnot.ext.i.i, ptr %vcn_gated.i.i, align 4
  br label %smu_dpm_set_vcn_enable.exit.thread

smu_dpm_set_vcn_enable.exit.thread:               ; preds = %if.then12.i.i, %if.end.i.i.smu_dpm_set_vcn_enable.exit.thread_crit_edge, %sw.bb.smu_dpm_set_vcn_enable.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %vcn_gate_lock.i) #10
  br label %cleanup

do.end32:                                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %vcn_gate_lock.i) #10
  %30 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %cond36 = select i1 %gate, ptr @.str.40, ptr @.str.41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond36) #13
  br label %cleanup

sw.bb38:                                          ; preds = %if.end23
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %34 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ppt_funcs, align 8
  %tobool39.not = icmp eq ptr %35, null
  br i1 %tobool39.not, label %sw.bb38.do.end55_crit_edge, label %cond.true

sw.bb38.do.end55_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

cond.true:                                        ; preds = %sw.bb38
  %gfx_off_control = getelementptr inbounds %struct.pptable_funcs, ptr %35, i32 0, i32 78
  %36 = ptrtoint ptr %gfx_off_control to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gfx_off_control, align 4
  %tobool41.not = icmp eq ptr %37, null
  br i1 %tobool41.not, label %cond.true.cleanup_crit_edge, label %cond.end49

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end49:                                       ; preds = %cond.true
  %call46 = tail call i32 %37(ptr noundef %handle, i1 noundef zeroext %gate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool51.not = icmp eq i32 %call46, 0
  br i1 %tobool51.not, label %cond.end49.cleanup_crit_edge, label %cond.end49.do.end55_crit_edge

cond.end49.do.end55_crit_edge:                    ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

cond.end49.cleanup_crit_edge:                     ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end55:                                         ; preds = %cond.end49.do.end55_crit_edge, %sw.bb38.do.end55_crit_edge
  %cond50164 = phi i32 [ %call46, %cond.end49.do.end55_crit_edge ], [ -22, %sw.bb38.do.end55_crit_edge ]
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %cond59 = select i1 %gate, ptr @.str.47, ptr @.str.48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond59) #13
  br label %cleanup

sw.bb61:                                          ; preds = %if.end23
  %ppt_funcs62 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %42 = ptrtoint ptr %ppt_funcs62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ppt_funcs62, align 8
  %tobool63.not = icmp eq ptr %43, null
  br i1 %tobool63.not, label %sw.bb61.do.end82_crit_edge, label %cond.true64

sw.bb61.do.end82_crit_edge:                       ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

cond.true64:                                      ; preds = %sw.bb61
  %powergate_sdma = getelementptr inbounds %struct.pptable_funcs, ptr %43, i32 0, i32 52
  %44 = ptrtoint ptr %powergate_sdma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %powergate_sdma, align 4
  %tobool66.not = icmp eq ptr %45, null
  br i1 %tobool66.not, label %cond.true64.cleanup_crit_edge, label %cond.end76

cond.true64.cleanup_crit_edge:                    ; preds = %cond.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end76:                                       ; preds = %cond.true64
  %call71 = tail call i32 %45(ptr noundef %handle, i1 noundef zeroext %gate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool78.not = icmp eq i32 %call71, 0
  br i1 %tobool78.not, label %cond.end76.cleanup_crit_edge, label %cond.end76.do.end82_crit_edge

cond.end76.do.end82_crit_edge:                    ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

cond.end76.cleanup_crit_edge:                     ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end82:                                         ; preds = %cond.end76.do.end82_crit_edge, %sw.bb61.do.end82_crit_edge
  %cond77170 = phi i32 [ %call71, %cond.end76.do.end82_crit_edge ], [ -22, %sw.bb61.do.end82_crit_edge ]
  %46 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %handle, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %cond86 = select i1 %gate, ptr @.str.40, ptr @.str.41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond86) #13
  br label %cleanup

sw.bb88:                                          ; preds = %if.end23
  %lnot90 = xor i1 %gate, true
  %jpeg_gate_lock.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 16, i32 2, i32 5
  tail call void @mutex_lock_nested(ptr noundef %jpeg_gate_lock.i, i32 noundef 0) #10
  %ppt_funcs.i.i144 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %50 = ptrtoint ptr %ppt_funcs.i.i144 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ppt_funcs.i.i144, align 8
  %dpm_set_jpeg_enable.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %dpm_set_jpeg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dpm_set_jpeg_enable.i.i, align 4
  %tobool.not.i.i145 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i145, label %sw.bb88.smu_dpm_set_jpeg_enable.exit.thread_crit_edge, label %if.end.i.i149

sw.bb88.smu_dpm_set_jpeg_enable.exit.thread_crit_edge: ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_jpeg_enable.exit.thread

if.end.i.i149:                                    ; preds = %sw.bb88
  %jpeg_gated.i.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 16, i32 2, i32 3
  %call.i.i.i.i146 = tail call zeroext i1 @__kasan_check_read(ptr noundef %jpeg_gated.i.i, i32 noundef 4) #10
  %54 = ptrtoint ptr %jpeg_gated.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %jpeg_gated.i.i, align 4
  %conv.i.i147 = zext i1 %lnot90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv.i.i147)
  %tobool4.not.i.i148 = icmp eq i32 %55, %conv.i.i147
  br i1 %tobool4.not.i.i148, label %if.end6.i.i152, label %if.end.i.i149.smu_dpm_set_jpeg_enable.exit.thread_crit_edge

if.end.i.i149.smu_dpm_set_jpeg_enable.exit.thread_crit_edge: ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_dpm_set_jpeg_enable.exit.thread

if.end6.i.i152:                                   ; preds = %if.end.i.i149
  %56 = ptrtoint ptr %ppt_funcs.i.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ppt_funcs.i.i144, align 8
  %dpm_set_jpeg_enable8.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %dpm_set_jpeg_enable8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dpm_set_jpeg_enable8.i.i, align 4
  %call10.i.i150 = tail call i32 %59(ptr noundef %handle, i1 noundef zeroext %lnot90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i150)
  %tobool11.not.i.i151 = icmp eq i32 %call10.i.i150, 0
  br i1 %tobool11.not.i.i151, label %if.then12.i.i155, label %do.end97

if.then12.i.i155:                                 ; preds = %if.end6.i.i152
  call void @__sanitizer_cov_trace_pc() #12
  %lnot.ext.i.i153 = zext i1 %gate to i32
  %call.i.i25.i.i154 = tail call zeroext i1 @__kasan_check_write(ptr noundef %jpeg_gated.i.i, i32 noundef 4) #10
  %60 = ptrtoint ptr %jpeg_gated.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %lnot.ext.i.i153, ptr %jpeg_gated.i.i, align 4
  br label %smu_dpm_set_jpeg_enable.exit.thread

smu_dpm_set_jpeg_enable.exit.thread:              ; preds = %if.then12.i.i155, %if.end.i.i149.smu_dpm_set_jpeg_enable.exit.thread_crit_edge, %sw.bb88.smu_dpm_set_jpeg_enable.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %jpeg_gate_lock.i) #10
  br label %cleanup

do.end97:                                         ; preds = %if.end6.i.i152
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %jpeg_gate_lock.i) #10
  %61 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %handle, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %cond101 = select i1 %gate, ptr @.str.40, ptr @.str.41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond101) #13
  br label %cleanup

do.end105:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.56) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %do.end97, %smu_dpm_set_jpeg_enable.exit.thread, %do.end82, %cond.end76.cleanup_crit_edge, %cond.true64.cleanup_crit_edge, %do.end55, %cond.end49.cleanup_crit_edge, %cond.true.cleanup_crit_edge, %do.end32, %smu_dpm_set_vcn_enable.exit.thread, %dev_name.exit
  %retval.0 = phi i32 [ -22, %do.end105 ], [ -95, %dev_name.exit ], [ %call10.i.i150, %do.end97 ], [ %cond77170, %do.end82 ], [ 0, %cond.end76.cleanup_crit_edge ], [ %cond50164, %do.end55 ], [ 0, %cond.end49.cleanup_crit_edge ], [ %call10.i.i, %do.end32 ], [ 0, %smu_dpm_set_vcn_enable.exit.thread ], [ 0, %smu_dpm_set_jpeg_enable.exit.thread ], [ 0, %cond.true.cleanup_crit_edge ], [ 0, %cond.true64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_power_limit(ptr noundef %handle, i32 noundef %limit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %limit, 24
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %and = and i32 %limit, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %limit)
  %cmp.not = icmp ult i32 %limit, 16777216
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %set_power_limit = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 67
  %8 = ptrtoint ptr %set_power_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_power_limit, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then2.if.end8_crit_edge, label %if.then4

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %shr, i32 noundef %and) #10
  br label %out

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %max_power_limit = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 28
  %10 = ptrtoint ptr %max_power_limit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_power_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp9 = icmp ugt i32 %and, %11
  br i1 %cmp9, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.58, i32 noundef %and, i32 noundef %11) #13
  br label %out

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %current_power_limit = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 26
  %16 = ptrtoint ptr %current_power_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_power_limit, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %limit.addr.0 = phi i32 [ %and, %if.end13.if.end16_crit_edge ], [ %17, %if.then15 ]
  %ppt_funcs17 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %18 = ptrtoint ptr %ppt_funcs17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ppt_funcs17, align 8
  %set_power_limit18 = getelementptr inbounds %struct.pptable_funcs, ptr %19, i32 0, i32 67
  %20 = ptrtoint ptr %set_power_limit18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_power_limit18, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %if.end16.out_crit_edge, label %if.then20

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then20:                                        ; preds = %if.end16
  %call23 = tail call i32 %21(ptr noundef %handle, i32 noundef %shr, i32 noundef %limit.addr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.then20.out_crit_edge

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true:                                    ; preds = %if.then20
  %flags = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and25 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %power_limit = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 64, i32 1
  %24 = ptrtoint ptr %power_limit to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %limit.addr.0, ptr %power_limit, align 4
  br label %out

out:                                              ; preds = %if.then27, %land.lhs.true.out_crit_edge, %if.then20.out_crit_edge, %if.end16.out_crit_edge, %do.end, %if.then4
  %ret.0 = phi i32 [ %call, %if.then4 ], [ -22, %do.end ], [ %call23, %if.then20.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end16.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_power_profile_mode(ptr noundef %handle, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_power_profile_mode = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %get_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_power_profile_mode, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %tobool4.not = icmp eq ptr %buf, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %10 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppt_funcs, align 8
  %get_power_profile_mode8 = getelementptr inbounds %struct.pptable_funcs, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %get_power_profile_mode8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_power_profile_mode8, align 4
  %call = tail call i32 %13(ptr noundef %handle, ptr noundef nonnull %buf) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ -95, %lor.lhs.false2.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_power_profile_mode(ptr noundef %handle, ptr noundef %param, i32 noundef %param_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %set_power_profile_mode = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %set_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_power_profile_mode, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %10 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppt_funcs, align 8
  %set_power_profile_mode.i = getelementptr inbounds %struct.pptable_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %set_power_profile_mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_power_profile_mode.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.smu_bump_power_profile_mode.exit_crit_edge, label %if.then.i

if.end.smu_bump_power_profile_mode.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_bump_power_profile_mode.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %13(ptr noundef %handle, ptr noundef %param, i32 noundef %param_size) #10
  br label %smu_bump_power_profile_mode.exit

smu_bump_power_profile_mode.exit:                 ; preds = %if.then.i, %if.end.smu_bump_power_profile_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %smu_bump_power_profile_mode.exit, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smu_bump_power_profile_mode.exit ], [ -95, %lor.lhs.false2.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_od_edit_dpm_table(ptr noundef %handle, i32 noundef %type, ptr noundef %input, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %od_edit_dpm_table = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %od_edit_dpm_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %od_edit_dpm_table, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %type, ptr noundef %input, i32 noundef %size) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_mp1_state(ptr noundef %handle, i32 noundef %mp1_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %2 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppt_funcs, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %set_mp1_state = getelementptr inbounds %struct.pptable_funcs, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %set_mp1_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_mp1_state, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %5(ptr noundef %handle, i32 noundef %mp1_state) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call, %if.then4 ], [ 0, %land.lhs.true.if.end7_crit_edge ], [ 0, %if.end.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end7 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_gfx_state_change_set(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %gfx_state_change_set = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 106
  %2 = ptrtoint ptr %gfx_state_change_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gfx_state_change_set, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %handle, i32 noundef %state) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_sclk(ptr noundef %handle, i1 noundef zeroext %low) #0 align 64 {
entry:
  %clk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_freq) #10
  %0 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clk_freq, align 4, !annotation !395
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %ppt_funcs.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %1 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ppt_funcs.i, align 8
  %get_dpm_ultimate_freq.i = getelementptr inbounds %struct.pptable_funcs, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %get_dpm_ultimate_freq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_dpm_ultimate_freq.i, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %smu_get_dpm_freq_range.exit.thread12, label %smu_get_dpm_freq_range.exit

smu_get_dpm_freq_range.exit.thread12:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %if.end

smu_get_dpm_freq_range.exit:                      ; preds = %entry
  %cond5 = select i1 %low, ptr null, ptr %clk_freq
  %clk_freq. = select i1 %low, ptr %clk_freq, ptr null
  %call.i = call i32 %4(ptr noundef %handle, i32 noundef 0, ptr noundef %clk_freq., ptr noundef %cond5) #10
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %smu_get_dpm_freq_range.exit.if.end_crit_edge, label %smu_get_dpm_freq_range.exit.cleanup_crit_edge

smu_get_dpm_freq_range.exit.cleanup_crit_edge:    ; preds = %smu_get_dpm_freq_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

smu_get_dpm_freq_range.exit.if.end_crit_edge:     ; preds = %smu_get_dpm_freq_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %smu_get_dpm_freq_range.exit.if.end_crit_edge, %smu_get_dpm_freq_range.exit.thread12
  %5 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_freq, align 4
  %mul = mul i32 %6, 100
  br label %cleanup

cleanup:                                          ; preds = %if.end, %smu_get_dpm_freq_range.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ 0, %smu_get_dpm_freq_range.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_freq) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_mclk(ptr noundef %handle, i1 noundef zeroext %low) #0 align 64 {
entry:
  %clk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_freq) #10
  %0 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clk_freq, align 4, !annotation !395
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %ppt_funcs.i = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %1 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ppt_funcs.i, align 8
  %get_dpm_ultimate_freq.i = getelementptr inbounds %struct.pptable_funcs, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %get_dpm_ultimate_freq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_dpm_ultimate_freq.i, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %smu_get_dpm_freq_range.exit.thread12, label %smu_get_dpm_freq_range.exit

smu_get_dpm_freq_range.exit.thread12:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %if.end

smu_get_dpm_freq_range.exit:                      ; preds = %entry
  %cond5 = select i1 %low, ptr null, ptr %clk_freq
  %clk_freq. = select i1 %low, ptr %clk_freq, ptr null
  %call.i = call i32 %4(ptr noundef %handle, i32 noundef 7, ptr noundef %clk_freq., ptr noundef %cond5) #10
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %smu_get_dpm_freq_range.exit.if.end_crit_edge, label %smu_get_dpm_freq_range.exit.cleanup_crit_edge

smu_get_dpm_freq_range.exit.cleanup_crit_edge:    ; preds = %smu_get_dpm_freq_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

smu_get_dpm_freq_range.exit.if.end_crit_edge:     ; preds = %smu_get_dpm_freq_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %smu_get_dpm_freq_range.exit.if.end_crit_edge, %smu_get_dpm_freq_range.exit.thread12
  %5 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_freq, align 4
  %mul = mul i32 %6, 100
  br label %cleanup

cleanup:                                          ; preds = %if.end, %smu_get_dpm_freq_range.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ 0, %smu_get_dpm_freq_range.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_freq) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_display_configuration_change(ptr noundef %handle, ptr noundef readonly %display_config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq ptr %display_config, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.cond.end12_crit_edge, label %cond.true

if.end4.cond.end12_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.true:                                        ; preds = %if.end4
  %set_min_dcef_deep_sleep = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 71
  %8 = ptrtoint ptr %set_min_dcef_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_min_dcef_deep_sleep, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %cond.true.cond.end12_crit_edge, label %cond.true8

cond.true.cond.end12_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.true8:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %min_dcef_deep_sleep_set_clk = getelementptr inbounds %struct.amd_pp_display_configuration, ptr %display_config, i32 0, i32 21
  %10 = ptrtoint ptr %min_dcef_deep_sleep_set_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_dcef_deep_sleep_set_clk, align 4
  %div = udiv i32 %11, 100
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %div) #10
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true8, %cond.true.cond.end12_crit_edge, %if.end4.cond.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end12, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end12 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_clock_by_type_with_latency(ptr noundef %handle, i32 noundef %type, ptr noundef %clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_clock_by_type_with_latency = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %get_clock_by_type_with_latency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_clock_by_type_with_latency, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then3:                                         ; preds = %if.end
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.60) #13
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.smu_get_clock_by_type_with_latency, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %switch.load, ptr noundef %clocks) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %do.end, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %do.end ], [ %call, %switch.lookup ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_display_clock_voltage_request(ptr noundef %handle, ptr noundef %clock_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %display_clock_voltage_request = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %display_clock_voltage_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display_clock_voltage_request, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, ptr noundef %clock_req) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_enable_mgpu_fan_boost(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %enable_mgpu_fan_boost = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %enable_mgpu_fan_boost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_mgpu_fan_boost, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_display_count(ptr noundef %handle, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cond.end9_crit_edge, label %cond.true

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true:                                        ; preds = %if.end
  %init_display_count = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %init_display_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_display_count, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %cond.true.cond.end9_crit_edge, label %cond.true5

cond.true.cond.end9_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true5:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %count) #10
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true5, %cond.true.cond.end9_crit_edge, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.true.cond.end9_crit_edge ], [ -22, %if.end.cond.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond10, %cond.end9 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_deep_sleep_dcefclk(ptr noundef %handle, i32 noundef %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cond.end9_crit_edge, label %cond.true

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true:                                        ; preds = %if.end
  %set_min_dcef_deep_sleep = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 71
  %8 = ptrtoint ptr %set_min_dcef_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_min_dcef_deep_sleep, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %cond.true.cond.end9_crit_edge, label %cond.true5

cond.true.cond.end9_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true5:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %clk) #10
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true5, %cond.true.cond.end9_crit_edge, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.true.cond.end9_crit_edge ], [ -22, %if.end.cond.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond10, %cond.end9 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_baco_capability(ptr noundef %handle, ptr nocapture noundef writeonly %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cap, align 1
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %1 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %3 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ppt_funcs, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %baco_is_support = getelementptr inbounds %struct.pptable_funcs, ptr %4, i32 0, i32 83
  %5 = ptrtoint ptr %baco_is_support to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %baco_is_support, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 %6(ptr noundef %handle) #10
  %frombool = zext i1 %call to i8
  %7 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %cap, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_baco_set_state(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then1
    i32 1, label %if.then9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %3 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ppt_funcs, align 8
  %baco_exit = getelementptr inbounds %struct.pptable_funcs, ptr %4, i32 0, i32 87
  %5 = ptrtoint ptr %baco_exit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %baco_exit, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then1.if.end21_crit_edge, label %if.then1.if.end21.sink.split_crit_edge

if.then1.if.end21.sink.split_crit_edge:           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.sink.split

if.then1.if.end21_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %if.end
  %mutex10 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex10, i32 noundef 0) #10
  %ppt_funcs11 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %7 = ptrtoint ptr %ppt_funcs11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ppt_funcs11, align 8
  %baco_enter = getelementptr inbounds %struct.pptable_funcs, ptr %8, i32 0, i32 86
  %9 = ptrtoint ptr %baco_enter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %baco_enter, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.then9.if.end21_crit_edge, label %if.then9.if.end21.sink.split_crit_edge

if.then9.if.end21.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.sink.split

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21.sink.split:                              ; preds = %if.then9.if.end21.sink.split_crit_edge, %if.then1.if.end21.sink.split_crit_edge
  %.sink = phi ptr [ %6, %if.then1.if.end21.sink.split_crit_edge ], [ %10, %if.then9.if.end21.sink.split_crit_edge ]
  %mutex10.sink.ph = phi ptr [ %mutex, %if.then1.if.end21.sink.split_crit_edge ], [ %mutex10, %if.then9.if.end21.sink.split_crit_edge ]
  %call16 = tail call i32 %.sink(ptr noundef %handle) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.then9.if.end21_crit_edge, %if.then1.if.end21_crit_edge
  %mutex10.sink = phi ptr [ %mutex, %if.then1.if.end21_crit_edge ], [ %mutex10, %if.then9.if.end21_crit_edge ], [ %mutex10.sink.ph, %if.end21.sink.split ]
  %ret.2 = phi i32 [ 0, %if.then1.if.end21_crit_edge ], [ 0, %if.then9.if.end21_crit_edge ], [ %call16, %if.end21.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex10.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool22.not = icmp eq i32 %ret.2, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %do.end

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool24.not = icmp eq i32 %state, 0
  %cond = select i1 %tobool24.not, ptr @.str.65, ptr @.str.64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.62, ptr noundef nonnull %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.2, %do.end ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_sys_get_pp_feature_mask(ptr noundef %handle, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cond.end9_crit_edge, label %cond.true

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true:                                        ; preds = %if.end
  %get_pp_feature_mask = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 96
  %8 = ptrtoint ptr %get_pp_feature_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_pp_feature_mask, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %cond.true.cond.end9_crit_edge, label %cond.true5

cond.true.cond.end9_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true5:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, ptr noundef %buf) #10
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true5, %cond.true.cond.end9_crit_edge, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.true.cond.end9_crit_edge ], [ -22, %if.end.cond.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond10, %cond.end9 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_sys_set_pp_feature_mask(ptr noundef %handle, i64 noundef %new_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cond.end9_crit_edge, label %cond.true

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true:                                        ; preds = %if.end
  %set_pp_feature_mask = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 97
  %8 = ptrtoint ptr %set_pp_feature_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_pp_feature_mask, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %cond.true.cond.end9_crit_edge, label %cond.true5

cond.true.cond.end9_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end9

cond.true5:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, i64 noundef %new_mask) #10
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true5, %cond.true.cond.end9_crit_edge, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %call, %cond.true5 ], [ 0, %cond.true.cond.end9_crit_edge ], [ -22, %if.end.cond.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond10, %cond.end9 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_mode2_reset(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %2 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppt_funcs, align 8
  %mode2_reset = getelementptr inbounds %struct.pptable_funcs, ptr %3, i32 0, i32 91
  %4 = ptrtoint ptr %mode2_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode2_reset, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call = tail call i32 %5(ptr noundef %handle) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.66) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end5.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end5.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_df_cstate(ptr noundef %handle, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %set_df_cstate = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %set_df_cstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_df_cstate, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %10 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppt_funcs, align 8
  %set_df_cstate9 = getelementptr inbounds %struct.pptable_funcs, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %set_df_cstate9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_df_cstate9, align 4
  %call = tail call i32 %13(ptr noundef %handle, i32 noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %do.end

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.68) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end7.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end13 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_xgmi_pstate(ptr noundef %handle, i32 noundef %pstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %set_xgmi_pstate = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 77
  %8 = ptrtoint ptr %set_xgmi_pstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_xgmi_pstate, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call = tail call i32 %9(ptr noundef %handle, i32 noundef %pstate) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %do.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.70) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %if.end6.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end6.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_sys_get_gpu_metrics(ptr noundef %handle, ptr noundef %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_gpu_metrics = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 98
  %8 = ptrtoint ptr %get_gpu_metrics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_gpu_metrics, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %10 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ppt_funcs, align 8
  %get_gpu_metrics6 = getelementptr inbounds %struct.pptable_funcs, ptr %11, i32 0, i32 98
  %12 = ptrtoint ptr %get_gpu_metrics6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_gpu_metrics6, align 4
  %call = tail call i32 %13(ptr noundef %handle, ptr noundef %table) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_set_watermarks_for_clock_ranges(ptr noundef %handle, ptr noundef %clock_ranges) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %disable_watermark = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 33
  %6 = ptrtoint ptr %disable_watermark to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disable_watermark, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %8 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppt_funcs, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end4.cond.end12_crit_edge, label %cond.true

if.end4.cond.end12_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.true:                                        ; preds = %if.end4
  %set_watermarks_table = getelementptr inbounds %struct.pptable_funcs, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %set_watermarks_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_watermarks_table, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %cond.true.cond.end12_crit_edge, label %cond.true8

cond.true.cond.end12_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.true8:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %11(ptr noundef %handle, ptr noundef %clock_ranges) #10
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true8, %cond.true.cond.end12_crit_edge, %if.end4.cond.end12_crit_edge
  %cond13 = phi i32 [ %call, %cond.true8 ], [ 0, %cond.true.cond.end12_crit_edge ], [ -22, %if.end4.cond.end12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end12, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond13, %cond.end12 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_display_disable_memory_clock_switch(ptr noundef %handle, i1 noundef zeroext %disable_memory_clock_switch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %display_disable_memory_clock_switch = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %display_disable_memory_clock_switch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display_disable_memory_clock_switch, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, i1 noundef zeroext %disable_memory_clock_switch) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ -22, %if.end.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end7 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_max_sustainable_clocks_by_dc(ptr noundef %handle, ptr noundef %max_clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_max_sustainable_clocks_by_dc = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 82
  %8 = ptrtoint ptr %get_max_sustainable_clocks_by_dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_max_sustainable_clocks_by_dc, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, ptr noundef %max_clocks) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_uclk_dpm_states(ptr noundef %handle, ptr noundef %clock_values_in_khz, ptr noundef %num_states) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_uclk_dpm_states = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %get_uclk_dpm_states to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_uclk_dpm_states, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, ptr noundef %clock_values_in_khz, ptr noundef %num_states) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_dpm_clock_table(ptr noundef %handle, ptr noundef %clock_table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 2
  %6 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppt_funcs, align 8
  %get_dpm_clock_table = getelementptr inbounds %struct.pptable_funcs, ptr %7, i32 0, i32 39
  %8 = ptrtoint ptr %get_dpm_clock_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_dpm_clock_table, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %9(ptr noundef %handle, ptr noundef %clock_table) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_get_prv_buffer_details(ptr noundef %handle, ptr noundef writeonly %addr, ptr noundef writeonly %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %memory_pool2 = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14, i32 13
  %tobool.not = icmp eq ptr %addr, null
  %tobool3.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %addr, align 4
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %size, align 4
  %mutex = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %bo = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14, i32 13, i32 5
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cpu_addr = getelementptr inbounds %struct.smu_context, ptr %handle, i32 0, i32 14, i32 13, i32 4
  %4 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_addr, align 8
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %addr, align 4
  %7 = ptrtoint ptr %memory_pool2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %memory_pool2, align 8
  %conv = trunc i64 %8 to i32
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %size, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu_force_smuclk_levels(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %6 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu_force_smuclk_levels.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu_force_smuclk_levels, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !397

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smu, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smu_force_smuclk_levels.__UNIQUE_ID_ddebug343, ptr noundef %11, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %12 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ppt_funcs, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end23_crit_edge, label %land.lhs.true

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end9
  %force_clk_levels = getelementptr inbounds %struct.pptable_funcs, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %force_clk_levels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %force_clk_levels, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %land.lhs.true.if.end23_crit_edge, label %if.then13

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then13:                                        ; preds = %land.lhs.true
  %call16 = tail call i32 %15(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %mask) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true18:                                  ; preds = %if.then13
  %flags = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true18.if.end23_crit_edge

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 64, i32 6, i32 %clk_type
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mask, ptr %arrayidx, align 4
  tail call fastcc void @smu_set_user_clk_dependencies(ptr noundef %smu, i32 noundef %clk_type)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true18.if.end23_crit_edge, %if.then13.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end9.if.end23_crit_edge
  %ret.0 = phi i32 [ %call16, %if.then13.if.end23_crit_edge ], [ 0, %land.lhs.true18.if.end23_crit_edge ], [ 0, %if.then20 ], [ 0, %land.lhs.true.if.end23_crit_edge ], [ 0, %if.end9.if.end23_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then6, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end23 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @smu_set_user_clk_dependencies(ptr nocapture noundef %smu, i32 noundef %clk) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %2 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_suspend, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end:                                           ; preds = %entry
  %4 = zext i32 %clk to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %clk, label %if.end.if.end30_crit_edge [
    i32 14, label %if.then1
    i32 12, label %if.then5
    i32 6, label %if.then17
  ]

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %clk_dependency = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 7
  %5 = ptrtoint ptr %clk_dependency to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4160, ptr %clk_dependency, align 4
  br label %if.end30

if.then5:                                         ; preds = %if.end
  %clk_dependency7 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 7
  %6 = ptrtoint ptr %clk_dependency7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_dependency7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4160, i32 %7)
  %cmp8 = icmp eq i32 %7, 4160
  br i1 %cmp8, label %if.then5.if.end30_crit_edge, label %if.end10

if.then5.if.end30_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %clk_dependency7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16448, ptr %clk_dependency7, align 4
  br label %if.end30

if.then17:                                        ; preds = %if.end
  %clk_dependency19 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 64, i32 7
  %9 = ptrtoint ptr %clk_dependency19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_dependency19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4160, i32 %10)
  %cmp20 = icmp eq i32 %10, 4160
  br i1 %cmp20, label %if.then17.if.end30_crit_edge, label %if.end22

if.then17.if.end30_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end22:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %clk_dependency19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20480, ptr %clk_dependency19, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end22, %if.then17.if.end30_crit_edge, %if.end10, %if.then5.if.end30_crit_edge, %if.then1, %if.end.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu_adjust_power_state_dynamic(ptr noundef %smu, i32 noundef %level, i1 noundef zeroext %skip_display_settings) unnamed_addr #0 align 64 {
entry:
  %workload = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %workload) #10
  br i1 %skip_display_settings, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.do.end_crit_edge, label %cond.true

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.true:                                        ; preds = %if.then
  %display_config_changed = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %display_config_changed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display_config_changed, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %cond.true.if.end12_crit_edge, label %cond.end8

cond.true.if.end12_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

cond.end8:                                        ; preds = %cond.true
  %call = tail call i32 %3(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %cond.end8.if.end12_crit_edge, label %cond.end8.do.end_crit_edge

cond.end8.do.end_crit_edge:                       ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.end8.if.end12_crit_edge:                     ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end:                                           ; preds = %cond.end8.do.end_crit_edge, %if.then.do.end_crit_edge
  %cond9164 = phi i32 [ %call, %cond.end8.do.end_crit_edge ], [ -22, %if.then.do.end_crit_edge ]
  %4 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end12:                                         ; preds = %cond.end8.if.end12_crit_edge, %cond.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ppt_funcs13 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %8 = ptrtoint ptr %ppt_funcs13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppt_funcs13, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end12.do.end32_crit_edge, label %cond.true15

if.end12.do.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

cond.true15:                                      ; preds = %if.end12
  %apply_clocks_adjust_rules = getelementptr inbounds %struct.pptable_funcs, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %apply_clocks_adjust_rules to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %apply_clocks_adjust_rules, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %cond.true15.if.end35_crit_edge, label %cond.end26

cond.true15.if.end35_crit_edge:                   ; preds = %cond.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

cond.end26:                                       ; preds = %cond.true15
  %call21 = tail call i32 %11(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool28.not = icmp eq i32 %call21, 0
  br i1 %tobool28.not, label %cond.end26.if.end35_crit_edge, label %cond.end26.do.end32_crit_edge

cond.end26.do.end32_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

cond.end26.if.end35_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end32:                                         ; preds = %cond.end26.do.end32_crit_edge, %if.end12.do.end32_crit_edge
  %cond27170 = phi i32 [ %call21, %cond.end26.do.end32_crit_edge ], [ -22, %if.end12.do.end32_crit_edge ]
  %12 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smu, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end35:                                         ; preds = %cond.end26.if.end35_crit_edge, %cond.true15.if.end35_crit_edge
  br i1 %skip_display_settings, label %if.end35.if.end61_crit_edge, label %if.then37

if.end35.if.end61_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then37:                                        ; preds = %if.end35
  %16 = ptrtoint ptr %ppt_funcs13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ppt_funcs13, align 8
  %tobool39.not = icmp eq ptr %17, null
  br i1 %tobool39.not, label %if.then37.do.end57_crit_edge, label %cond.true40

if.then37.do.end57_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

cond.true40:                                      ; preds = %if.then37
  %notify_smc_display_config = getelementptr inbounds %struct.pptable_funcs, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %notify_smc_display_config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notify_smc_display_config, align 4
  %tobool42.not = icmp eq ptr %19, null
  br i1 %tobool42.not, label %cond.true40.if.end61_crit_edge, label %cond.end51

cond.true40.if.end61_crit_edge:                   ; preds = %cond.true40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

cond.end51:                                       ; preds = %cond.true40
  %call46 = tail call i32 %19(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool53.not = icmp eq i32 %call46, 0
  br i1 %tobool53.not, label %cond.end51.if.end61_crit_edge, label %cond.end51.do.end57_crit_edge

cond.end51.do.end57_crit_edge:                    ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

cond.end51.if.end61_crit_edge:                    ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.end57:                                         ; preds = %cond.end51.do.end57_crit_edge, %if.then37.do.end57_crit_edge
  %cond52176 = phi i32 [ %call46, %cond.end51.do.end57_crit_edge ], [ -22, %if.then37.do.end57_crit_edge ]
  %20 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smu, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.23) #13
  br label %cleanup

if.end61:                                         ; preds = %cond.end51.if.end61_crit_edge, %cond.true40.if.end61_crit_edge, %if.end35.if.end61_crit_edge
  %dpm_level = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 4
  %24 = ptrtoint ptr %dpm_level to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dpm_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %level)
  %cmp.not = icmp eq i32 %25, %level
  br i1 %cmp.not, label %if.end61.if.end87_crit_edge, label %if.then62

if.end61.if.end87_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then62:                                        ; preds = %if.end61
  %26 = ptrtoint ptr %ppt_funcs13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ppt_funcs13, align 8
  %tobool64.not = icmp eq ptr %27, null
  br i1 %tobool64.not, label %if.then62.do.end82_crit_edge, label %cond.true65

if.then62.do.end82_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

cond.true65:                                      ; preds = %if.then62
  %set_performance_level = getelementptr inbounds %struct.pptable_funcs, ptr %27, i32 0, i32 28
  %28 = ptrtoint ptr %set_performance_level to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_performance_level, align 4
  %tobool67.not = icmp eq ptr %29, null
  br i1 %tobool67.not, label %cond.true65.do.end82_crit_edge, label %cond.end76

cond.true65.do.end82_crit_edge:                   ; preds = %cond.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

cond.end76:                                       ; preds = %cond.true65
  %call71 = tail call i32 %29(ptr noundef %smu, i32 noundef %level) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool78.not = icmp eq i32 %call71, 0
  br i1 %tobool78.not, label %if.end85, label %cond.end76.do.end82_crit_edge

cond.end76.do.end82_crit_edge:                    ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

do.end82:                                         ; preds = %cond.end76.do.end82_crit_edge, %cond.true65.do.end82_crit_edge, %if.then62.do.end82_crit_edge
  %cond77179 = phi i32 [ %call71, %cond.end76.do.end82_crit_edge ], [ -22, %cond.true65.do.end82_crit_edge ], [ -22, %if.then62.do.end82_crit_edge ]
  %30 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smu, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.26) #13
  br label %cleanup

if.end85:                                         ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dpm_level to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %level, ptr %dpm_level, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end61.if.end87_crit_edge
  %35 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %level, label %if.then92 [
    i32 2, label %if.end87.cleanup_crit_edge
    i32 512, label %if.end87.cleanup_crit_edge180
  ]

if.end87.cleanup_crit_edge180:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then92:                                        ; preds = %if.end87
  %workload_mask = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 37
  %36 = ptrtoint ptr %workload_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %workload_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  %38 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 true) #10, !range !396
  %sub.i.op = xor i32 %38, 31
  %39 = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %39)
  %40 = icmp ult i32 %39, 7
  %cond100 = select i1 %40, i32 %39, i32 0
  %arrayidx = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 39, i32 %cond100
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %workload to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %workload, align 4
  %power_profile_mode = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 40
  %44 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %42)
  %cmp101.not = icmp eq i32 %45, %42
  br i1 %cmp101.not, label %if.then92.cleanup_crit_edge, label %if.then102

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then102:                                       ; preds = %if.then92
  %46 = ptrtoint ptr %ppt_funcs13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ppt_funcs13, align 8
  %set_power_profile_mode.i = getelementptr inbounds %struct.pptable_funcs, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %set_power_profile_mode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_power_profile_mode.i, align 4
  %tobool.not.i158 = icmp eq ptr %49, null
  br i1 %tobool.not.i158, label %if.then102.cleanup_crit_edge, label %if.then.i

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 %49(ptr noundef %smu, ptr noundef nonnull %workload, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then102.cleanup_crit_edge, %if.then92.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end87.cleanup_crit_edge180, %do.end82, %do.end57, %do.end32, %do.end
  %retval.0 = phi i32 [ %cond27170, %do.end32 ], [ %cond77179, %do.end82 ], [ %cond52176, %do.end57 ], [ %cond9164, %do.end ], [ 0, %if.end87.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge180 ], [ 0, %if.then92.cleanup_crit_edge ], [ 0, %if.then102.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %workload) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_off_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @navi10_set_ppt_funcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sienna_cichlid_set_ppt_funcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @renoir_set_ppt_funcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vangogh_set_ppt_funcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @yellow_carp_set_ppt_funcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cyan_skillfish_set_ppt_funcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arcturus_set_ppt_funcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aldebaran_set_ppt_funcs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smu_throttling_logging_work_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1968
  %ppt_funcs = getelementptr i8, ptr %work, i32 -1952
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end7_crit_edge, label %cond.true

entry.cond.end7_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end7

cond.true:                                        ; preds = %entry
  %log_thermal_throttling_event = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %log_thermal_throttling_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log_thermal_throttling_event, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %cond.true.cond.end7_crit_edge, label %cond.true3

cond.true.cond.end7_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end7

cond.true3:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %add.ptr) #10
  br label %cond.end7

cond.end7:                                        ; preds = %cond.true3, %cond.true.cond.end7_crit_edge, %entry.cond.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smu_interrupt_work_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2024
  %mutex = getelementptr i8, ptr %work, i32 -1980
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr i8, ptr %work, i32 -2008
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %interrupt_work = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 104
  %2 = ptrtoint ptr %interrupt_work to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_work, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %add.ptr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smu_set_gfx_cgpg(ptr noundef %smu, i1 noundef zeroext %enabled) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %0 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt_funcs, align 8
  %set_gfx_cgpg = getelementptr inbounds %struct.pptable_funcs, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %set_gfx_cgpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_gfx_cgpg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %smu, i1 noundef zeroext %enabled) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu_smc_hw_setup(ptr noundef %smu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 137
  %2 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_suspend, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %land.lhs.true

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %4 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppt_funcs, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %cond.true

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cond.true:                                        ; preds = %land.lhs.true
  %is_dpm_running = getelementptr inbounds %struct.pptable_funcs, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %is_dpm_running to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_dpm_running, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %cond.true.if.end29_crit_edge, label %cond.true5

cond.true.if.end29_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

cond.true5:                                       ; preds = %cond.true
  %call = tail call zeroext i1 %7(ptr noundef %smu) #10
  br i1 %call, label %cond.true5.do.end_crit_edge, label %cond.true5.if.end29_crit_edge

cond.true5.if.end29_crit_edge:                    ; preds = %cond.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

cond.true5.do.end_crit_edge:                      ; preds = %cond.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %cond.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.162) #13
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %11, label %do.end.cleanup_crit_edge [
    i32 720903, label %do.end.sw.bb_crit_edge
    i32 720907, label %do.end.sw.bb_crit_edge613
    i32 722176, label %do.end.sw.bb_crit_edge614
    i32 720908, label %do.end.sw.bb_crit_edge615
  ]

do.end.sw.bb_crit_edge615:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge614:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge613:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge613, %do.end.sw.bb_crit_edge614, %do.end.sw.bb_crit_edge615
  %13 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ppt_funcs, align 8
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %sw.bb.do.end27_crit_edge, label %cond.true12

sw.bb.do.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

cond.true12:                                      ; preds = %sw.bb
  %system_features_control = getelementptr inbounds %struct.pptable_funcs, ptr %14, i32 0, i32 58
  %15 = ptrtoint ptr %system_features_control to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %system_features_control, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %cond.true12.cleanup_crit_edge, label %cond.end21

cond.true12.cleanup_crit_edge:                    ; preds = %cond.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end21:                                       ; preds = %cond.true12
  %call18 = tail call i32 %16(ptr noundef %smu, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %cond.end21.cleanup_crit_edge, label %cond.end21.do.end27_crit_edge

cond.end21.do.end27_crit_edge:                    ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

cond.end21.cleanup_crit_edge:                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end27:                                         ; preds = %cond.end21.do.end27_crit_edge, %sw.bb.do.end27_crit_edge
  %cond22540 = phi i32 [ %call18, %cond.end21.do.end27_crit_edge ], [ -22, %sw.bb.do.end27_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.165) #13
  br label %cleanup

if.end29:                                         ; preds = %cond.true5.if.end29_crit_edge, %cond.true.if.end29_crit_edge, %entry.if.end29_crit_edge
  %ppt_funcs30 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %19 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ppt_funcs30, align 8
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %if.end29.do.end49_crit_edge, label %cond.true32

if.end29.do.end49_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

cond.true32:                                      ; preds = %if.end29
  %init_display_count = getelementptr inbounds %struct.pptable_funcs, ptr %20, i32 0, i32 61
  %21 = ptrtoint ptr %init_display_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_display_count, align 4
  %tobool34.not = icmp eq ptr %22, null
  br i1 %tobool34.not, label %cond.true32.if.end51_crit_edge, label %cond.end43

cond.true32.if.end51_crit_edge:                   ; preds = %cond.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

cond.end43:                                       ; preds = %cond.true32
  %call38 = tail call i32 %22(ptr noundef %smu, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool45.not = icmp eq i32 %call38, 0
  br i1 %tobool45.not, label %cond.end43.if.end51_crit_edge, label %cond.end43.do.end49_crit_edge

cond.end43.do.end49_crit_edge:                    ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

cond.end43.if.end51_crit_edge:                    ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end49:                                         ; preds = %cond.end43.do.end49_crit_edge, %if.end29.do.end49_crit_edge
  %cond44546 = phi i32 [ %call38, %cond.end43.do.end49_crit_edge ], [ -22, %if.end29.do.end49_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.168) #13
  br label %cleanup

if.end51:                                         ; preds = %cond.end43.if.end51_crit_edge, %cond.true32.if.end51_crit_edge
  %25 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ppt_funcs30, align 8
  %tobool53.not = icmp eq ptr %26, null
  br i1 %tobool53.not, label %if.end51.do.end71_crit_edge, label %cond.true54

if.end51.do.end71_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

cond.true54:                                      ; preds = %if.end51
  %set_driver_table_location = getelementptr inbounds %struct.pptable_funcs, ptr %26, i32 0, i32 55
  %27 = ptrtoint ptr %set_driver_table_location to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_driver_table_location, align 4
  %tobool56.not = icmp eq ptr %28, null
  br i1 %tobool56.not, label %cond.true54.if.end73_crit_edge, label %cond.end65

cond.true54.if.end73_crit_edge:                   ; preds = %cond.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

cond.end65:                                       ; preds = %cond.true54
  %call60 = tail call i32 %28(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool67.not = icmp eq i32 %call60, 0
  br i1 %tobool67.not, label %cond.end65.if.end73_crit_edge, label %cond.end65.do.end71_crit_edge

cond.end65.do.end71_crit_edge:                    ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

cond.end65.if.end73_crit_edge:                    ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.end71:                                         ; preds = %cond.end65.do.end71_crit_edge, %if.end51.do.end71_crit_edge
  %cond66552 = phi i32 [ %call60, %cond.end65.do.end71_crit_edge ], [ -22, %if.end51.do.end71_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.171) #13
  br label %cleanup

if.end73:                                         ; preds = %cond.end65.if.end73_crit_edge, %cond.true54.if.end73_crit_edge
  %31 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ppt_funcs30, align 8
  %tobool75.not = icmp eq ptr %32, null
  br i1 %tobool75.not, label %if.end73.do.end93_crit_edge, label %cond.true76

if.end73.do.end93_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

cond.true76:                                      ; preds = %if.end73
  %set_tool_table_location = getelementptr inbounds %struct.pptable_funcs, ptr %32, i32 0, i32 56
  %33 = ptrtoint ptr %set_tool_table_location to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_tool_table_location, align 4
  %tobool78.not = icmp eq ptr %34, null
  br i1 %tobool78.not, label %cond.true76.if.end95_crit_edge, label %cond.end87

cond.true76.if.end95_crit_edge:                   ; preds = %cond.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

cond.end87:                                       ; preds = %cond.true76
  %call82 = tail call i32 %34(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool89.not = icmp eq i32 %call82, 0
  br i1 %tobool89.not, label %cond.end87.if.end95_crit_edge, label %cond.end87.do.end93_crit_edge

cond.end87.do.end93_crit_edge:                    ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

cond.end87.if.end95_crit_edge:                    ; preds = %cond.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

do.end93:                                         ; preds = %cond.end87.do.end93_crit_edge, %if.end73.do.end93_crit_edge
  %cond88558 = phi i32 [ %call82, %cond.end87.do.end93_crit_edge ], [ -22, %if.end73.do.end93_crit_edge ]
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.174) #13
  br label %cleanup

if.end95:                                         ; preds = %cond.end87.if.end95_crit_edge, %cond.true76.if.end95_crit_edge
  %37 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ppt_funcs30, align 8
  %tobool97.not = icmp eq ptr %38, null
  br i1 %tobool97.not, label %if.end95.do.end115_crit_edge, label %cond.true98

if.end95.do.end115_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end115

cond.true98:                                      ; preds = %if.end95
  %notify_memory_pool_location = getelementptr inbounds %struct.pptable_funcs, ptr %38, i32 0, i32 57
  %39 = ptrtoint ptr %notify_memory_pool_location to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %notify_memory_pool_location, align 4
  %tobool100.not = icmp eq ptr %40, null
  br i1 %tobool100.not, label %cond.true98.if.end117_crit_edge, label %cond.end109

cond.true98.if.end117_crit_edge:                  ; preds = %cond.true98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

cond.end109:                                      ; preds = %cond.true98
  %call104 = tail call i32 %40(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool111.not = icmp eq i32 %call104, 0
  br i1 %tobool111.not, label %cond.end109.if.end117_crit_edge, label %cond.end109.do.end115_crit_edge

cond.end109.do.end115_crit_edge:                  ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end115

cond.end109.if.end117_crit_edge:                  ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

do.end115:                                        ; preds = %cond.end109.do.end115_crit_edge, %if.end95.do.end115_crit_edge
  %cond110564 = phi i32 [ %call104, %cond.end109.do.end115_crit_edge ], [ -22, %if.end95.do.end115_crit_edge ]
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.177) #13
  br label %cleanup

if.end117:                                        ; preds = %cond.end109.if.end117_crit_edge, %cond.true98.if.end117_crit_edge
  %43 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ppt_funcs30, align 8
  %tobool119.not = icmp eq ptr %44, null
  br i1 %tobool119.not, label %if.end117.do.end137_crit_edge, label %cond.true120

if.end117.do.end137_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end137

cond.true120:                                     ; preds = %if.end117
  %write_pptable = getelementptr inbounds %struct.pptable_funcs, ptr %44, i32 0, i32 54
  %45 = ptrtoint ptr %write_pptable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_pptable, align 4
  %tobool122.not = icmp eq ptr %46, null
  br i1 %tobool122.not, label %cond.true120.if.end139_crit_edge, label %cond.end131

cond.true120.if.end139_crit_edge:                 ; preds = %cond.true120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

cond.end131:                                      ; preds = %cond.true120
  %call126 = tail call i32 %46(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool133.not = icmp eq i32 %call126, 0
  br i1 %tobool133.not, label %cond.end131.if.end139_crit_edge, label %cond.end131.do.end137_crit_edge

cond.end131.do.end137_crit_edge:                  ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end137

cond.end131.if.end139_crit_edge:                  ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

do.end137:                                        ; preds = %cond.end131.do.end137_crit_edge, %if.end117.do.end137_crit_edge
  %cond132570 = phi i32 [ %call126, %cond.end131.do.end137_crit_edge ], [ -22, %if.end117.do.end137_crit_edge ]
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.180) #13
  br label %cleanup

if.end139:                                        ; preds = %cond.end131.if.end139_crit_edge, %cond.true120.if.end139_crit_edge
  %49 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ppt_funcs30, align 8
  %tobool141.not = icmp eq ptr %50, null
  br i1 %tobool141.not, label %if.end139.cleanup_crit_edge, label %cond.true142

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true142:                                     ; preds = %if.end139
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool144.not = icmp eq ptr %52, null
  br i1 %tobool144.not, label %cond.true142.cond.true160_crit_edge, label %cond.end153

cond.true142.cond.true160_crit_edge:              ; preds = %cond.true142
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true160

cond.end153:                                      ; preds = %cond.true142
  %call148 = tail call i32 %52(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool155.not = icmp eq i32 %call148, 0
  br i1 %tobool155.not, label %if.end157, label %cond.end153.cleanup_crit_edge

cond.end153.cleanup_crit_edge:                    ; preds = %cond.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end157:                                        ; preds = %cond.end153
  %53 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr611 = load ptr, ptr %ppt_funcs30, align 8
  %tobool159.not = icmp eq ptr %.pr611, null
  br i1 %tobool159.not, label %if.end157.do.end177_crit_edge, label %if.end157.cond.true160_crit_edge

if.end157.cond.true160_crit_edge:                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true160

if.end157.do.end177_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end177

cond.true160:                                     ; preds = %if.end157.cond.true160_crit_edge, %cond.true142.cond.true160_crit_edge
  %54 = phi ptr [ %.pr611, %if.end157.cond.true160_crit_edge ], [ %50, %cond.true142.cond.true160_crit_edge ]
  %set_allowed_mask = getelementptr inbounds %struct.pptable_funcs, ptr %54, i32 0, i32 62
  %55 = ptrtoint ptr %set_allowed_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_allowed_mask, align 4
  %tobool162.not = icmp eq ptr %56, null
  br i1 %tobool162.not, label %cond.true160.if.end179_crit_edge, label %cond.end171

cond.true160.if.end179_crit_edge:                 ; preds = %cond.true160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

cond.end171:                                      ; preds = %cond.true160
  %call166 = tail call i32 %56(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool173.not = icmp eq i32 %call166, 0
  br i1 %tobool173.not, label %cond.end171.if.end179_crit_edge, label %cond.end171.do.end177_crit_edge

cond.end171.do.end177_crit_edge:                  ; preds = %cond.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end177

cond.end171.if.end179_crit_edge:                  ; preds = %cond.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.end177:                                        ; preds = %cond.end171.do.end177_crit_edge, %if.end157.do.end177_crit_edge
  %cond172581 = phi i32 [ %call166, %cond.end171.do.end177_crit_edge ], [ -22, %if.end157.do.end177_crit_edge ]
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.183) #13
  br label %cleanup

if.end179:                                        ; preds = %cond.end171.if.end179_crit_edge, %cond.true160.if.end179_crit_edge
  %59 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ppt_funcs30, align 8
  %tobool181.not = icmp eq ptr %60, null
  br i1 %tobool181.not, label %if.end179.do.end200_crit_edge, label %cond.true182

if.end179.do.end200_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end200

cond.true182:                                     ; preds = %if.end179
  %system_features_control184 = getelementptr inbounds %struct.pptable_funcs, ptr %60, i32 0, i32 58
  %61 = ptrtoint ptr %system_features_control184 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %system_features_control184, align 4
  %tobool185.not = icmp eq ptr %62, null
  br i1 %tobool185.not, label %cond.true182.if.end202_crit_edge, label %cond.end194

cond.true182.if.end202_crit_edge:                 ; preds = %cond.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end202

cond.end194:                                      ; preds = %cond.true182
  %call189 = tail call i32 %62(ptr noundef %smu, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool196.not = icmp eq i32 %call189, 0
  br i1 %tobool196.not, label %cond.end194.if.end202_crit_edge, label %cond.end194.do.end200_crit_edge

cond.end194.do.end200_crit_edge:                  ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end200

cond.end194.if.end202_crit_edge:                  ; preds = %cond.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end202

do.end200:                                        ; preds = %cond.end194.do.end200_crit_edge, %if.end179.do.end200_crit_edge
  %cond195587 = phi i32 [ %call189, %cond.end194.do.end200_crit_edge ], [ -22, %if.end179.do.end200_crit_edge ]
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.186) #13
  br label %cleanup

if.end202:                                        ; preds = %cond.end194.if.end202_crit_edge, %cond.true182.if.end202_crit_edge
  %65 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ppt_funcs30, align 8
  %tobool204.not = icmp eq ptr %66, null
  br i1 %tobool204.not, label %if.end202.if.end220_crit_edge, label %cond.true205

if.end202.if.end220_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

cond.true205:                                     ; preds = %if.end202
  %is_dpm_running207 = getelementptr inbounds %struct.pptable_funcs, ptr %66, i32 0, i32 21
  %67 = ptrtoint ptr %is_dpm_running207 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %is_dpm_running207, align 4
  %tobool208.not = icmp eq ptr %68, null
  br i1 %tobool208.not, label %cond.true205.do.end218_crit_edge, label %cond.true209

cond.true205.do.end218_crit_edge:                 ; preds = %cond.true205
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end218

cond.true209:                                     ; preds = %cond.true205
  %call212 = tail call zeroext i1 %68(ptr noundef %smu) #10
  br i1 %call212, label %cond.true209.if.end220_crit_edge, label %cond.true209.do.end218_crit_edge

cond.true209.do.end218_crit_edge:                 ; preds = %cond.true209
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end218

cond.true209.if.end220_crit_edge:                 ; preds = %cond.true209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

do.end218:                                        ; preds = %cond.true209.do.end218_crit_edge, %cond.true205.do.end218_crit_edge
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.189) #13
  br label %if.end220

if.end220:                                        ; preds = %do.end218, %cond.true209.if.end220_crit_edge, %if.end202.if.end220_crit_edge
  %pcie_gen_mask = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 18
  %71 = ptrtoint ptr %pcie_gen_mask to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pcie_gen_mask, align 8
  %and = and i32 %72, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool221.not = icmp eq i32 %and, 0
  br i1 %tobool221.not, label %if.else, label %if.end220.if.end243_crit_edge

if.end220.if.end243_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.else:                                          ; preds = %if.end220
  %and225 = and i32 %72, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.else228, label %if.else.if.end243_crit_edge

if.else.if.end243_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.else228:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and231 = lshr i32 %72, 17
  %and231.lobit = and i32 %and231, 1
  br label %if.end243

if.end243:                                        ; preds = %if.else228, %if.else.if.end243_crit_edge, %if.end220.if.end243_crit_edge
  %pcie_gen.0 = phi i32 [ 3, %if.end220.if.end243_crit_edge ], [ 2, %if.else.if.end243_crit_edge ], [ %and231.lobit, %if.else228 ]
  %pcie_mlw_mask = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 19
  %73 = ptrtoint ptr %pcie_mlw_mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pcie_mlw_mask, align 4
  %and245 = and i32 %74, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %if.else248, label %if.end243.if.end283_crit_edge

if.end243.if.end283_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

if.else248:                                       ; preds = %if.end243
  %and251 = and i32 %74, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %if.else254, label %if.else248.if.end283_crit_edge

if.else248.if.end283_crit_edge:                   ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

if.else254:                                       ; preds = %if.else248
  %and257 = and i32 %74, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  br i1 %tobool258.not, label %if.else260, label %if.else254.if.end283_crit_edge

if.else254.if.end283_crit_edge:                   ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

if.else260:                                       ; preds = %if.else254
  %and263 = and i32 %74, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %if.else266, label %if.else260.if.end283_crit_edge

if.else260.if.end283_crit_edge:                   ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

if.else266:                                       ; preds = %if.else260
  %and269 = and i32 %74, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  br i1 %tobool270.not, label %if.else272, label %if.else266.if.end283_crit_edge

if.else266.if.end283_crit_edge:                   ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

if.else272:                                       ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #12
  %and275 = lshr i32 %74, 16
  %and275.lobit = and i32 %and275, 1
  br label %if.end283

if.end283:                                        ; preds = %if.else272, %if.else266.if.end283_crit_edge, %if.else260.if.end283_crit_edge, %if.else254.if.end283_crit_edge, %if.else248.if.end283_crit_edge, %if.end243.if.end283_crit_edge
  %pcie_width.0 = phi i32 [ 6, %if.end243.if.end283_crit_edge ], [ 5, %if.else248.if.end283_crit_edge ], [ 4, %if.else254.if.end283_crit_edge ], [ 3, %if.else260.if.end283_crit_edge ], [ 2, %if.else266.if.end283_crit_edge ], [ %and275.lobit, %if.else272 ]
  %75 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ppt_funcs30, align 8
  %tobool285.not = icmp eq ptr %76, null
  br i1 %tobool285.not, label %if.end283.do.end303_crit_edge, label %cond.true286

if.end283.do.end303_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end303

cond.true286:                                     ; preds = %if.end283
  %update_pcie_parameters = getelementptr inbounds %struct.pptable_funcs, ptr %76, i32 0, i32 35
  %77 = ptrtoint ptr %update_pcie_parameters to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %update_pcie_parameters, align 4
  %tobool288.not = icmp eq ptr %78, null
  br i1 %tobool288.not, label %cond.true286.if.end305_crit_edge, label %cond.end297

cond.true286.if.end305_crit_edge:                 ; preds = %cond.true286
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

cond.end297:                                      ; preds = %cond.true286
  %call292 = tail call i32 %78(ptr noundef %smu, i32 noundef %pcie_gen.0, i32 noundef %pcie_width.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool299.not = icmp eq i32 %call292, 0
  br i1 %tobool299.not, label %cond.end297.if.end305_crit_edge, label %cond.end297.do.end303_crit_edge

cond.end297.do.end303_crit_edge:                  ; preds = %cond.end297
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end303

cond.end297.if.end305_crit_edge:                  ; preds = %cond.end297
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

do.end303:                                        ; preds = %cond.end297.do.end303_crit_edge, %if.end283.do.end303_crit_edge
  %cond298593 = phi i32 [ %call292, %cond.end297.do.end303_crit_edge ], [ -22, %if.end283.do.end303_crit_edge ]
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.192) #13
  br label %cleanup

if.end305:                                        ; preds = %cond.end297.if.end305_crit_edge, %cond.true286.if.end305_crit_edge
  %81 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %smu, align 8
  %thermal_range.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20
  %83 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ppt_funcs30, align 8
  %get_thermal_temperature_range.i = getelementptr inbounds %struct.pptable_funcs, ptr %84, i32 0, i32 25
  %85 = ptrtoint ptr %get_thermal_temperature_range.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %get_thermal_temperature_range.i, align 4
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %if.end305.if.end313_crit_edge, label %if.end.i

if.end305.if.end313_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end313

if.end.i:                                         ; preds = %if.end305
  %call.i = tail call i32 %86(ptr noundef %smu, ptr noundef %thermal_range.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end311

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %thermal_range.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %thermal_range.i, align 4
  %min_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 1
  %89 = ptrtoint ptr %min_temp.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %min_temp.i, align 4
  %max.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20, i32 1
  %90 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max.i, align 4
  %max_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 2
  %92 = ptrtoint ptr %max_temp.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %max_temp.i, align 4
  %edge_emergency_max.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20, i32 2
  %93 = ptrtoint ptr %edge_emergency_max.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %edge_emergency_max.i, align 4
  %max_edge_emergency_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 3
  %95 = ptrtoint ptr %max_edge_emergency_temp.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %max_edge_emergency_temp.i, align 4
  %hotspot_min.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20, i32 3
  %96 = ptrtoint ptr %hotspot_min.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hotspot_min.i, align 4
  %min_hotspot_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 4
  %98 = ptrtoint ptr %min_hotspot_temp.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %min_hotspot_temp.i, align 4
  %hotspot_crit_max.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20, i32 4
  %99 = ptrtoint ptr %hotspot_crit_max.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hotspot_crit_max.i, align 4
  %max_hotspot_crit_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 5
  %101 = ptrtoint ptr %max_hotspot_crit_temp.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %max_hotspot_crit_temp.i, align 4
  %hotspot_emergency_max.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20, i32 5
  %102 = ptrtoint ptr %hotspot_emergency_max.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hotspot_emergency_max.i, align 4
  %max_hotspot_emergency_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 6
  %104 = ptrtoint ptr %max_hotspot_emergency_temp.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %max_hotspot_emergency_temp.i, align 4
  %mem_min.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20, i32 6
  %105 = ptrtoint ptr %mem_min.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mem_min.i, align 4
  %min_mem_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 7
  %107 = ptrtoint ptr %min_mem_temp.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %min_mem_temp.i, align 4
  %mem_crit_max.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20, i32 7
  %108 = ptrtoint ptr %mem_crit_max.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mem_crit_max.i, align 4
  %max_mem_crit_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 8
  %110 = ptrtoint ptr %max_mem_crit_temp.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %max_mem_crit_temp.i, align 4
  %mem_emergency_max.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 20, i32 8
  %111 = ptrtoint ptr %mem_emergency_max.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mem_emergency_max.i, align 4
  %max_mem_emergency_temp.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 98, i32 15, i32 35, i32 9
  %113 = ptrtoint ptr %max_mem_emergency_temp.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %max_mem_emergency_temp.i, align 4
  %114 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr = load ptr, ptr %ppt_funcs30, align 8
  br label %if.end313

do.end311:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.195) #13
  br label %cleanup

if.end313:                                        ; preds = %if.end6.i, %if.end305.if.end313_crit_edge
  %117 = phi ptr [ %.pr, %if.end6.i ], [ %84, %if.end305.if.end313_crit_edge ]
  %tobool315.not = icmp eq ptr %117, null
  br i1 %tobool315.not, label %if.end313.do.end333_crit_edge, label %cond.true316

if.end313.do.end333_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end333

cond.true316:                                     ; preds = %if.end313
  %enable_thermal_alert = getelementptr inbounds %struct.pptable_funcs, ptr %117, i32 0, i32 69
  %118 = ptrtoint ptr %enable_thermal_alert to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %enable_thermal_alert, align 4
  %tobool318.not = icmp eq ptr %119, null
  br i1 %tobool318.not, label %cond.true316.if.end335_crit_edge, label %cond.end327

cond.true316.if.end335_crit_edge:                 ; preds = %cond.true316
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end335

cond.end327:                                      ; preds = %cond.true316
  %call322 = tail call i32 %119(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call322)
  %tobool329.not = icmp eq i32 %call322, 0
  br i1 %tobool329.not, label %cond.end327.if.end335_crit_edge, label %cond.end327.do.end333_crit_edge

cond.end327.do.end333_crit_edge:                  ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end333

cond.end327.if.end335_crit_edge:                  ; preds = %cond.end327
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end335

do.end333:                                        ; preds = %cond.end327.do.end333_crit_edge, %if.end313.do.end333_crit_edge
  %cond328601 = phi i32 [ %call322, %cond.end327.do.end333_crit_edge ], [ -22, %if.end313.do.end333_crit_edge ]
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.198) #13
  br label %cleanup

if.end335:                                        ; preds = %cond.end327.if.end335_crit_edge, %cond.true316.if.end335_crit_edge
  %122 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ppt_funcs30, align 8
  %set_default_dpm_table.i = getelementptr inbounds %struct.pptable_funcs, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %set_default_dpm_table.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %set_default_dpm_table.i, align 4
  %tobool.not.i532 = icmp eq ptr %125, null
  br i1 %tobool.not.i532, label %if.end335.if.end343_crit_edge, label %if.end.i533

if.end335.if.end343_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end343

if.end.i533:                                      ; preds = %if.end335
  %vcn_gate_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %vcn_gate_lock.i, i32 noundef 0) #10
  %jpeg_gate_lock.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16, i32 2, i32 5
  tail call void @mutex_lock_nested(ptr noundef %jpeg_gate_lock.i, i32 noundef 0) #10
  %vcn_gated.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16, i32 2, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vcn_gated.i, i32 noundef 4) #10
  %126 = ptrtoint ptr %vcn_gated.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %vcn_gated.i, align 4
  %jpeg_gated.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16, i32 2, i32 3
  %call.i.i45.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %jpeg_gated.i, i32 noundef 4) #10
  %128 = ptrtoint ptr %jpeg_gated.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %jpeg_gated.i, align 4
  %130 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ppt_funcs30, align 8
  %dpm_set_vcn_enable.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %131, i32 0, i32 14
  %132 = ptrtoint ptr %dpm_set_vcn_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dpm_set_vcn_enable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %133, null
  br i1 %tobool.not.i.i, label %if.end.i533.if.end7.i_crit_edge, label %if.end.i.i

if.end.i533.if.end7.i_crit_edge:                  ; preds = %if.end.i533
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end.i.i:                                       ; preds = %if.end.i533
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vcn_gated.i, i32 noundef 4) #10
  %134 = ptrtoint ptr %vcn_gated.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %vcn_gated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %tobool4.not.i.i = icmp eq i32 %135, 1
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.if.end7.i_crit_edge

if.end.i.i.if.end7.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %136 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ppt_funcs30, align 8
  %dpm_set_vcn_enable8.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %137, i32 0, i32 14
  %138 = ptrtoint ptr %dpm_set_vcn_enable8.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dpm_set_vcn_enable8.i.i, align 4
  %call10.i.i = tail call i32 %139(ptr noundef %smu, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end6.i.i.smu_set_default_dpm_table.exit_crit_edge

if.end6.i.i.smu_set_default_dpm_table.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_default_dpm_table.exit

if.then12.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i25.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vcn_gated.i, i32 noundef 4) #10
  %140 = ptrtoint ptr %vcn_gated.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 0, ptr %vcn_gated.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then12.i.i, %if.end.i.i.if.end7.i_crit_edge, %if.end.i533.if.end7.i_crit_edge
  %141 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ppt_funcs30, align 8
  %dpm_set_jpeg_enable.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %142, i32 0, i32 15
  %143 = ptrtoint ptr %dpm_set_jpeg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dpm_set_jpeg_enable.i.i, align 4
  %tobool.not.i47.i = icmp eq ptr %144, null
  br i1 %tobool.not.i47.i, label %if.end7.i.if.end11.i_crit_edge, label %if.end.i50.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end.i50.i:                                     ; preds = %if.end7.i
  %call.i.i.i48.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %jpeg_gated.i, i32 noundef 4) #10
  %145 = ptrtoint ptr %jpeg_gated.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %jpeg_gated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %tobool4.not.i49.i = icmp eq i32 %146, 1
  br i1 %tobool4.not.i49.i, label %if.end6.i53.i, label %if.end.i50.i.if.end11.i_crit_edge

if.end.i50.i.if.end11.i_crit_edge:                ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end6.i53.i:                                    ; preds = %if.end.i50.i
  %147 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ppt_funcs30, align 8
  %dpm_set_jpeg_enable8.i.i = getelementptr inbounds %struct.pptable_funcs, ptr %148, i32 0, i32 15
  %149 = ptrtoint ptr %dpm_set_jpeg_enable8.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dpm_set_jpeg_enable8.i.i, align 4
  %call10.i51.i = tail call i32 %150(ptr noundef %smu, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i51.i)
  %tobool11.not.i52.i = icmp eq i32 %call10.i51.i, 0
  br i1 %tobool11.not.i52.i, label %if.then12.i55.i, label %if.end6.i53.i.err1_out.i_crit_edge

if.end6.i53.i.err1_out.i_crit_edge:               ; preds = %if.end6.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1_out.i

if.then12.i55.i:                                  ; preds = %if.end6.i53.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i25.i54.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %jpeg_gated.i, i32 noundef 4) #10
  %151 = ptrtoint ptr %jpeg_gated.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 0, ptr %jpeg_gated.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then12.i55.i, %if.end.i50.i.if.end11.i_crit_edge, %if.end7.i.if.end11.i_crit_edge
  %152 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ppt_funcs30, align 8
  %set_default_dpm_table13.i = getelementptr inbounds %struct.pptable_funcs, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %set_default_dpm_table13.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %set_default_dpm_table13.i, align 4
  %call14.i = tail call i32 %155(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end11.i.if.end17.i_crit_edge, label %do.end.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %156 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %smu, align 8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.201) #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %if.end11.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool18.not.i = icmp eq i32 %129, 0
  %160 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ppt_funcs30, align 8
  %dpm_set_jpeg_enable.i58.i = getelementptr inbounds %struct.pptable_funcs, ptr %161, i32 0, i32 15
  %162 = ptrtoint ptr %dpm_set_jpeg_enable.i58.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dpm_set_jpeg_enable.i58.i, align 4
  %tobool.not.i59.i = icmp eq ptr %163, null
  br i1 %tobool.not.i59.i, label %if.end17.i.err1_out.i_crit_edge, label %if.end.i63.i

if.end17.i.err1_out.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1_out.i

if.end.i63.i:                                     ; preds = %if.end17.i
  %call.i.i.i61.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %jpeg_gated.i, i32 noundef 4) #10
  %164 = ptrtoint ptr %jpeg_gated.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %jpeg_gated.i, align 4
  %conv.i.i = zext i1 %tobool18.not.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %conv.i.i)
  %tobool4.not.i62.i = icmp eq i32 %165, %conv.i.i
  br i1 %tobool4.not.i62.i, label %if.end6.i67.i, label %if.end.i63.i.err1_out.i_crit_edge

if.end.i63.i.err1_out.i_crit_edge:                ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1_out.i

if.end6.i67.i:                                    ; preds = %if.end.i63.i
  %166 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ppt_funcs30, align 8
  %dpm_set_jpeg_enable8.i64.i = getelementptr inbounds %struct.pptable_funcs, ptr %167, i32 0, i32 15
  %168 = ptrtoint ptr %dpm_set_jpeg_enable8.i64.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dpm_set_jpeg_enable8.i64.i, align 4
  %call10.i65.i = tail call i32 %169(ptr noundef %smu, i1 noundef zeroext %tobool18.not.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i65.i)
  %tobool11.not.i66.i = icmp eq i32 %call10.i65.i, 0
  br i1 %tobool11.not.i66.i, label %if.then12.i69.i, label %if.end6.i67.i.err1_out.i_crit_edge

if.end6.i67.i.err1_out.i_crit_edge:               ; preds = %if.end6.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1_out.i

if.then12.i69.i:                                  ; preds = %if.end6.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  %lnot.i.i = xor i1 %tobool18.not.i, true
  %lnot.ext.i.i = zext i1 %lnot.i.i to i32
  %call.i.i25.i68.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %jpeg_gated.i, i32 noundef 4) #10
  %170 = ptrtoint ptr %jpeg_gated.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile i32 %lnot.ext.i.i, ptr %jpeg_gated.i, align 4
  br label %err1_out.i

err1_out.i:                                       ; preds = %if.then12.i69.i, %if.end6.i67.i.err1_out.i_crit_edge, %if.end.i63.i.err1_out.i_crit_edge, %if.end17.i.err1_out.i_crit_edge, %if.end6.i53.i.err1_out.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i51.i, %if.end6.i53.i.err1_out.i_crit_edge ], [ %call14.i, %if.end17.i.err1_out.i_crit_edge ], [ %call14.i, %if.end.i63.i.err1_out.i_crit_edge ], [ %call14.i, %if.end6.i67.i.err1_out.i_crit_edge ], [ %call14.i, %if.then12.i69.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool20.not.i = icmp eq i32 %127, 0
  %171 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ppt_funcs30, align 8
  %dpm_set_vcn_enable.i73.i = getelementptr inbounds %struct.pptable_funcs, ptr %172, i32 0, i32 14
  %173 = ptrtoint ptr %dpm_set_vcn_enable.i73.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dpm_set_vcn_enable.i73.i, align 4
  %tobool.not.i74.i = icmp eq ptr %174, null
  br i1 %tobool.not.i74.i, label %err1_out.i.smu_set_default_dpm_table.exit_crit_edge, label %if.end.i79.i

err1_out.i.smu_set_default_dpm_table.exit_crit_edge: ; preds = %err1_out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_default_dpm_table.exit

if.end.i79.i:                                     ; preds = %err1_out.i
  %call.i.i.i76.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vcn_gated.i, i32 noundef 4) #10
  %175 = ptrtoint ptr %vcn_gated.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %vcn_gated.i, align 4
  %conv.i77.i = zext i1 %tobool20.not.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %conv.i77.i)
  %tobool4.not.i78.i = icmp eq i32 %176, %conv.i77.i
  br i1 %tobool4.not.i78.i, label %if.end6.i83.i, label %if.end.i79.i.smu_set_default_dpm_table.exit_crit_edge

if.end.i79.i.smu_set_default_dpm_table.exit_crit_edge: ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_default_dpm_table.exit

if.end6.i83.i:                                    ; preds = %if.end.i79.i
  %177 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ppt_funcs30, align 8
  %dpm_set_vcn_enable8.i80.i = getelementptr inbounds %struct.pptable_funcs, ptr %178, i32 0, i32 14
  %179 = ptrtoint ptr %dpm_set_vcn_enable8.i80.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dpm_set_vcn_enable8.i80.i, align 4
  %call10.i81.i = tail call i32 %180(ptr noundef %smu, i1 noundef zeroext %tobool20.not.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i81.i)
  %tobool11.not.i82.i = icmp eq i32 %call10.i81.i, 0
  br i1 %tobool11.not.i82.i, label %if.then12.i87.i, label %if.end6.i83.i.smu_set_default_dpm_table.exit_crit_edge

if.end6.i83.i.smu_set_default_dpm_table.exit_crit_edge: ; preds = %if.end6.i83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_set_default_dpm_table.exit

if.then12.i87.i:                                  ; preds = %if.end6.i83.i
  call void @__sanitizer_cov_trace_pc() #12
  %lnot.i84.i = xor i1 %tobool20.not.i, true
  %lnot.ext.i85.i = zext i1 %lnot.i84.i to i32
  %call.i.i25.i86.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vcn_gated.i, i32 noundef 4) #10
  %181 = ptrtoint ptr %vcn_gated.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile i32 %lnot.ext.i85.i, ptr %vcn_gated.i, align 4
  br label %smu_set_default_dpm_table.exit

smu_set_default_dpm_table.exit:                   ; preds = %if.then12.i87.i, %if.end6.i83.i.smu_set_default_dpm_table.exit_crit_edge, %if.end.i79.i.smu_set_default_dpm_table.exit_crit_edge, %err1_out.i.smu_set_default_dpm_table.exit_crit_edge, %if.end6.i.i.smu_set_default_dpm_table.exit_crit_edge
  %ret.1.i = phi i32 [ %call10.i.i, %if.end6.i.i.smu_set_default_dpm_table.exit_crit_edge ], [ %ret.0.i, %err1_out.i.smu_set_default_dpm_table.exit_crit_edge ], [ %ret.0.i, %if.end.i79.i.smu_set_default_dpm_table.exit_crit_edge ], [ %ret.0.i, %if.end6.i83.i.smu_set_default_dpm_table.exit_crit_edge ], [ %ret.0.i, %if.then12.i87.i ]
  tail call void @mutex_unlock(ptr noundef %jpeg_gate_lock.i) #10
  tail call void @mutex_unlock(ptr noundef %vcn_gate_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool337.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool337.not, label %if.end343thread-pre-split, label %do.end341

do.end341:                                        ; preds = %smu_set_default_dpm_table.exit
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.201) #13
  br label %cleanup

if.end343thread-pre-split:                        ; preds = %smu_set_default_dpm_table.exit
  call void @__sanitizer_cov_trace_pc() #12
  %184 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %184)
  %.pr604 = load ptr, ptr %ppt_funcs30, align 8
  br label %if.end343

if.end343:                                        ; preds = %if.end343thread-pre-split, %if.end335.if.end343_crit_edge
  %185 = phi ptr [ %.pr604, %if.end343thread-pre-split ], [ %123, %if.end335.if.end343_crit_edge ]
  %tobool345.not = icmp eq ptr %185, null
  br i1 %tobool345.not, label %if.end343.do.end363_crit_edge, label %cond.true346

if.end343.do.end363_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end363

cond.true346:                                     ; preds = %if.end343
  %notify_display_change = getelementptr inbounds %struct.pptable_funcs, ptr %185, i32 0, i32 66
  %186 = ptrtoint ptr %notify_display_change to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %notify_display_change, align 4
  %tobool348.not = icmp eq ptr %187, null
  br i1 %tobool348.not, label %cond.true346.if.end365_crit_edge, label %cond.end357

cond.true346.if.end365_crit_edge:                 ; preds = %cond.true346
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end365

cond.end357:                                      ; preds = %cond.true346
  %call352 = tail call i32 %187(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call352)
  %tobool359.not = icmp eq i32 %call352, 0
  br i1 %tobool359.not, label %cond.end357.if.end365_crit_edge, label %cond.end357.do.end363_crit_edge

cond.end357.do.end363_crit_edge:                  ; preds = %cond.end357
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end363

cond.end357.if.end365_crit_edge:                  ; preds = %cond.end357
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end365

do.end363:                                        ; preds = %cond.end357.do.end363_crit_edge, %if.end343.do.end363_crit_edge
  %cond358610 = phi i32 [ %call352, %cond.end357.do.end363_crit_edge ], [ -22, %if.end343.do.end363_crit_edge ]
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.204) #13
  br label %cleanup

if.end365:                                        ; preds = %cond.end357.if.end365_crit_edge, %cond.true346.if.end365_crit_edge
  %190 = ptrtoint ptr %ppt_funcs30 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ppt_funcs30, align 8
  %tobool367.not = icmp eq ptr %191, null
  br i1 %tobool367.not, label %if.end365.cleanup_crit_edge, label %cond.true368

if.end365.cleanup_crit_edge:                      ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true368:                                     ; preds = %if.end365
  %set_min_dcef_deep_sleep = getelementptr inbounds %struct.pptable_funcs, ptr %191, i32 0, i32 71
  %192 = ptrtoint ptr %set_min_dcef_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %set_min_dcef_deep_sleep, align 4
  %tobool370.not = icmp eq ptr %193, null
  br i1 %tobool370.not, label %cond.true368.cleanup_crit_edge, label %cond.true371

cond.true368.cleanup_crit_edge:                   ; preds = %cond.true368
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true371:                                     ; preds = %cond.true368
  call void @__sanitizer_cov_trace_pc() #12
  %dcefclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %194 = ptrtoint ptr %dcefclk to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dcefclk, align 8
  %div = udiv i32 %195, 100
  %call374 = tail call i32 %193(ptr noundef %smu, i32 noundef %div) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.true371, %cond.true368.cleanup_crit_edge, %if.end365.cleanup_crit_edge, %do.end363, %do.end341, %do.end333, %do.end311, %do.end303, %do.end200, %do.end177, %cond.end153.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %do.end137, %do.end115, %do.end93, %do.end71, %do.end49, %do.end27, %cond.end21.cleanup_crit_edge, %cond.true12.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond44546, %do.end49 ], [ %cond66552, %do.end71 ], [ %cond88558, %do.end93 ], [ %cond110564, %do.end115 ], [ %cond132570, %do.end137 ], [ %cond172581, %do.end177 ], [ %cond195587, %do.end200 ], [ %cond298593, %do.end303 ], [ %call.i, %do.end311 ], [ %cond328601, %do.end333 ], [ %ret.1.i, %do.end341 ], [ %cond358610, %do.end363 ], [ 0, %do.end.cleanup_crit_edge ], [ %cond22540, %do.end27 ], [ 0, %cond.end21.cleanup_crit_edge ], [ %call148, %cond.end153.cleanup_crit_edge ], [ %call374, %cond.true371 ], [ 0, %cond.true368.cleanup_crit_edge ], [ -22, %if.end365.cleanup_crit_edge ], [ 0, %cond.true12.cleanup_crit_edge ], [ -22, %if.end139.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu_smc_hw_cleanup(ptr noundef %smu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %throttling_logging_work = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 49
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %throttling_logging_work) #10
  %interrupt_work = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 51
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %interrupt_work) #10
  %ppt_funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 2
  %2 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppt_funcs, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %cond.true

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cond.true:                                        ; preds = %entry
  %disable_thermal_alert = getelementptr inbounds %struct.pptable_funcs, ptr %3, i32 0, i32 70
  %4 = ptrtoint ptr %disable_thermal_alert to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_thermal_alert, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %cond.true.if.end_crit_edge, label %cond.end10

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.end10:                                       ; preds = %cond.true
  %call8 = tail call i32 %5(ptr noundef %smu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool12.not = icmp eq i32 %call8, 0
  br i1 %tobool12.not, label %cond.end10.if.end_crit_edge, label %cond.end10.cleanup.sink.split_crit_edge

cond.end10.cleanup.sink.split_crit_edge:          ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cond.end10.if.end_crit_edge:                      ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %cond.end10.if.end_crit_edge, %cond.true.if.end_crit_edge
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %is_apu.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %8 = ptrtoint ptr %is_apu.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_apu.i, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.land.end13.i_crit_edge

if.end.land.end13.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end13.i

land.rhs.i:                                       ; preds = %if.end
  %in_gpu_reset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 141
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %in_gpu_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %in_gpu_reset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %land.rhs.i.land.lhs.true5.i_crit_edge

land.rhs.i.land.lhs.true5.i_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true5.i

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %in_suspend.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 137
  %12 = ptrtoint ptr %in_suspend.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %in_suspend.i, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %in_s0ix.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 140
  %14 = ptrtoint ptr %in_s0ix.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %in_s0ix.i, align 8, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.land.lhs.true5.i_crit_edge, label %land.lhs.true.i.lor.rhs.i_crit_edge

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

land.lhs.true.i.land.lhs.true5.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i.land.lhs.true5.i_crit_edge, %land.rhs.i.land.lhs.true5.i_crit_edge
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 12
  %16 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic_funcs.i, align 4
  %reset_method.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %reset_method.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_method.i, align 4
  %call6.i = tail call i32 %19(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call6.i)
  %cmp.i = icmp eq i32 %call6.i, 4
  br i1 %cmp.i, label %land.lhs.true5.i.land.end13.i_crit_edge, label %land.lhs.true5.i.lor.rhs.i_crit_edge

land.lhs.true5.i.lor.rhs.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

land.lhs.true5.i.land.end13.i_crit_edge:          ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end13.i

lor.rhs.i:                                        ; preds = %land.lhs.true5.i.lor.rhs.i_crit_edge, %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %in_runpm.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 156
  %20 = ptrtoint ptr %in_runpm.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %in_runpm.i, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i = icmp eq i8 %21, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.rhs.i.land.rhs10.i_crit_edge

lor.rhs.i.land.rhs10.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs10.i

lor.lhs.false8.i:                                 ; preds = %lor.rhs.i
  %in_s4.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 139
  %22 = ptrtoint ptr %in_s4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_s4.i, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool9.not.i = icmp eq i8 %23, 0
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.land.end13.i_crit_edge, label %lor.lhs.false8.i.land.rhs10.i_crit_edge

lor.lhs.false8.i.land.rhs10.i_crit_edge:          ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs10.i

lor.lhs.false8.i.land.end13.i_crit_edge:          ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end13.i

land.rhs10.i:                                     ; preds = %lor.lhs.false8.i.land.rhs10.i_crit_edge, %lor.rhs.i.land.rhs10.i_crit_edge
  %asic_funcs11.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 12
  %24 = ptrtoint ptr %asic_funcs11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic_funcs11.i, align 4
  %supports_baco.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %supports_baco.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %supports_baco.i, align 4
  %call12.i = tail call zeroext i1 %27(ptr noundef %7) #10
  br label %land.end13.i

land.end13.i:                                     ; preds = %land.rhs10.i, %lor.lhs.false8.i.land.end13.i_crit_edge, %land.lhs.true5.i.land.end13.i_crit_edge, %if.end.land.end13.i_crit_edge
  %28 = phi i1 [ false, %if.end.land.end13.i_crit_edge ], [ true, %land.lhs.true5.i.land.end13.i_crit_edge ], [ false, %lor.lhs.false8.i.land.end13.i_crit_edge ], [ %call12.i, %land.rhs10.i ]
  %uploading_custom_pp_table.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 47
  %29 = ptrtoint ptr %uploading_custom_pp_table.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %uploading_custom_pp_table.i, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool14.not.i = icmp eq i8 %30, 0
  br i1 %tobool14.not.i, label %land.end13.i.if.end.i_crit_edge, label %if.then.i

land.end13.i.if.end.i_crit_edge:                  ; preds = %land.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.end13.i
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %7, i32 0, i32 172, i32 15
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %32, label %if.then.i.if.end.i_crit_edge [
    i32 720896, label %if.then.i.sw.bb.i_crit_edge
    i32 720901, label %if.then.i.sw.bb.i_crit_edge47
    i32 720905, label %if.then.i.sw.bb.i_crit_edge48
    i32 720903, label %if.then.i.sw.bb.i_crit_edge49
    i32 720907, label %if.then.i.sw.bb.i_crit_edge50
    i32 722176, label %if.then.i.sw.bb.i_crit_edge51
    i32 720908, label %if.then.i.sw.bb.i_crit_edge52
    i32 720909, label %if.then.i.sw.bb.i_crit_edge53
  ]

if.then.i.sw.bb.i_crit_edge53:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge52:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge51:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge50:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge49:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge48:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge47:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge47, %if.then.i.sw.bb.i_crit_edge48, %if.then.i.sw.bb.i_crit_edge49, %if.then.i.sw.bb.i_crit_edge50, %if.then.i.sw.bb.i_crit_edge51, %if.then.i.sw.bb.i_crit_edge52, %if.then.i.sw.bb.i_crit_edge53
  %34 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ppt_funcs, align 8
  %tobool16.not.i = icmp eq ptr %35, null
  br i1 %tobool16.not.i, label %sw.bb.i.cleanup.sink.split_crit_edge, label %cond.true.i

sw.bb.i.cleanup.sink.split_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cond.true.i:                                      ; preds = %sw.bb.i
  %disable_all_features_with_exception.i = getelementptr inbounds %struct.pptable_funcs, ptr %35, i32 0, i32 65
  %36 = ptrtoint ptr %disable_all_features_with_exception.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disable_all_features_with_exception.i, align 4
  %tobool18.not.i = icmp eq ptr %37, null
  br i1 %tobool18.not.i, label %cond.true.i.cleanup_crit_edge, label %cond.true19.i

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true19.i:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call22.i = tail call i32 %37(ptr noundef %smu, i1 noundef zeroext true, i32 noundef 95) #10
  br label %smu_disable_dpms.exit

if.end.i:                                         ; preds = %if.then.i.if.end.i_crit_edge, %land.end13.i.if.end.i_crit_edge
  br i1 %28, label %if.then27.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then27.i:                                      ; preds = %if.end.i
  %arrayidx29.i = getelementptr %struct.amdgpu_device, ptr %7, i32 0, i32 172, i32 15
  %38 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx29.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %39, label %land.lhs.true52.critedge.i [
    i32 720903, label %if.then27.i.sw.bb31.i_crit_edge
    i32 720896, label %if.then27.i.sw.bb31.i_crit_edge54
    i32 720901, label %if.then27.i.sw.bb31.i_crit_edge55
    i32 720905, label %if.then27.i.sw.bb31.i_crit_edge56
  ]

if.then27.i.sw.bb31.i_crit_edge56:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31.i

if.then27.i.sw.bb31.i_crit_edge55:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31.i

if.then27.i.sw.bb31.i_crit_edge54:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31.i

if.then27.i.sw.bb31.i_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31.i

sw.bb31.i:                                        ; preds = %if.then27.i.sw.bb31.i_crit_edge, %if.then27.i.sw.bb31.i_crit_edge54, %if.then27.i.sw.bb31.i_crit_edge55, %if.then27.i.sw.bb31.i_crit_edge56
  %41 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ppt_funcs, align 8
  %tobool33.not.i = icmp eq ptr %42, null
  br i1 %tobool33.not.i, label %sw.bb31.i.cleanup.sink.split_crit_edge, label %cond.true34.i

sw.bb31.i.cleanup.sink.split_crit_edge:           ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cond.true34.i:                                    ; preds = %sw.bb31.i
  %disable_all_features_with_exception36.i = getelementptr inbounds %struct.pptable_funcs, ptr %42, i32 0, i32 65
  %43 = ptrtoint ptr %disable_all_features_with_exception36.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %disable_all_features_with_exception36.i, align 4
  %tobool37.not.i = icmp eq ptr %44, null
  br i1 %tobool37.not.i, label %cond.true34.i.cleanup_crit_edge, label %cond.true38.i

cond.true34.i.cleanup_crit_edge:                  ; preds = %cond.true34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true38.i:                                    ; preds = %cond.true34.i
  call void @__sanitizer_cov_trace_pc() #12
  %call41.i = tail call i32 %44(ptr noundef %smu, i1 noundef zeroext true, i32 noundef 42) #10
  br label %smu_disable_dpms.exit

land.lhs.true52.critedge.i:                       ; preds = %if.then27.i
  %45 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ppt_funcs, align 8
  %tobool54.not.i = icmp eq ptr %46, null
  br i1 %tobool54.not.i, label %land.lhs.true52.critedge.i.if.end107.sink.split.i_crit_edge, label %cond.true55.i

land.lhs.true52.critedge.i.if.end107.sink.split.i_crit_edge: ; preds = %land.lhs.true52.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split.i

cond.true55.i:                                    ; preds = %land.lhs.true52.critedge.i
  %feature_is_enabled.i = getelementptr inbounds %struct.pptable_funcs, ptr %46, i32 0, i32 64
  %47 = ptrtoint ptr %feature_is_enabled.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %feature_is_enabled.i, align 4
  %tobool57.not.i = icmp eq ptr %48, null
  br i1 %tobool57.not.i, label %cond.true55.i.if.else.i_crit_edge, label %cond.true58.i

cond.true55.i.if.else.i_crit_edge:                ; preds = %cond.true55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

cond.true58.i:                                    ; preds = %cond.true55.i
  %call61.i = tail call i32 %48(ptr noundef %smu, i32 noundef 42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %cond.true58.i.if.else.i_crit_edge, label %if.then65.i

cond.true58.i.if.else.i_crit_edge:                ; preds = %cond.true58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then65.i:                                      ; preds = %cond.true58.i
  %49 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i = load ptr, ptr %ppt_funcs, align 8
  %tobool67.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool67.not.i, label %if.then65.i.if.end107.sink.split.i_crit_edge, label %cond.true68.i

if.then65.i.if.end107.sink.split.i_crit_edge:     ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split.i

cond.true68.i:                                    ; preds = %if.then65.i
  %disable_all_features_with_exception70.i = getelementptr inbounds %struct.pptable_funcs, ptr %.pr.i, i32 0, i32 65
  %50 = ptrtoint ptr %disable_all_features_with_exception70.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disable_all_features_with_exception70.i, align 4
  %tobool71.not.i = icmp eq ptr %51, null
  br i1 %tobool71.not.i, label %cond.true68.i.if.end107.i_crit_edge, label %cond.end80.i

cond.true68.i.if.end107.i_crit_edge:              ; preds = %cond.true68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.i

cond.end80.i:                                     ; preds = %cond.true68.i
  %call75.i = tail call i32 %51(ptr noundef %smu, i1 noundef zeroext false, i32 noundef 42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool82.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool82.not.i, label %cond.end80.i.if.end107.i_crit_edge, label %cond.end80.i.if.end107.sink.split.i_crit_edge

cond.end80.i.if.end107.sink.split.i_crit_edge:    ; preds = %cond.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split.i

cond.end80.i.if.end107.i_crit_edge:               ; preds = %cond.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.i

if.else.i:                                        ; preds = %cond.true58.i.if.else.i_crit_edge, %cond.true55.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %52 = ptrtoint ptr %ppt_funcs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ppt_funcs, align 8
  %tobool86.not.i = icmp eq ptr %53, null
  br i1 %tobool86.not.i, label %if.else.i.if.end107.sink.split.i_crit_edge, label %cond.true87.i

if.else.i.if.end107.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split.i

cond.true87.i:                                    ; preds = %if.else.i
  %system_features_control.i = getelementptr inbounds %struct.pptable_funcs, ptr %53, i32 0, i32 58
  %54 = ptrtoint ptr %system_features_control.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %system_features_control.i, align 4
  %tobool89.not.i = icmp eq ptr %55, null
  br i1 %tobool89.not.i, label %cond.true87.i.if.end107.i_crit_edge, label %cond.end98.i

cond.true87.i.if.end107.i_crit_edge:              ; preds = %cond.true87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.i

cond.end98.i:                                     ; preds = %cond.true87.i
  %call93.i = tail call i32 %55(ptr noundef %smu, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool100.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool100.not.i, label %cond.end98.i.if.end107.i_crit_edge, label %cond.end98.i.if.end107.sink.split.i_crit_edge

cond.end98.i.if.end107.sink.split.i_crit_edge:    ; preds = %cond.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split.i

cond.end98.i.if.end107.i_crit_edge:               ; preds = %cond.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.i

if.end107.sink.split.i:                           ; preds = %cond.end98.i.if.end107.sink.split.i_crit_edge, %if.else.i.if.end107.sink.split.i_crit_edge, %cond.end80.i.if.end107.sink.split.i_crit_edge, %if.then65.i.if.end107.sink.split.i_crit_edge, %land.lhs.true52.critedge.i.if.end107.sink.split.i_crit_edge
  %.str.215.sink.i = phi ptr [ @.str.212, %land.lhs.true52.critedge.i.if.end107.sink.split.i_crit_edge ], [ @.str.212, %if.then65.i.if.end107.sink.split.i_crit_edge ], [ @.str.212, %cond.end80.i.if.end107.sink.split.i_crit_edge ], [ @.str.215, %if.else.i.if.end107.sink.split.i_crit_edge ], [ @.str.215, %cond.end98.i.if.end107.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ -22, %land.lhs.true52.critedge.i.if.end107.sink.split.i_crit_edge ], [ -22, %if.then65.i.if.end107.sink.split.i_crit_edge ], [ %call75.i, %cond.end80.i.if.end107.sink.split.i_crit_edge ], [ -22, %if.else.i.if.end107.sink.split.i_crit_edge ], [ %call93.i, %cond.end98.i.if.end107.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull %.str.215.sink.i) #13
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end107.sink.split.i, %cond.end98.i.if.end107.i_crit_edge, %cond.true87.i.if.end107.i_crit_edge, %cond.end80.i.if.end107.i_crit_edge, %cond.true68.i.if.end107.i_crit_edge
  %ret.0.i = phi i32 [ 0, %cond.end80.i.if.end107.i_crit_edge ], [ 0, %cond.end98.i.if.end107.i_crit_edge ], [ 0, %cond.true68.i.if.end107.i_crit_edge ], [ 0, %cond.true87.i.if.end107.i_crit_edge ], [ %ret.0.ph.i, %if.end107.sink.split.i ]
  %arrayidx109.i = getelementptr %struct.amdgpu_device, ptr %7, i32 0, i32 172, i32 1
  %58 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 590849, i32 %59)
  %cmp111.i = icmp ugt i32 %59, 590849
  br i1 %cmp111.i, label %land.lhs.true112.i, label %if.end107.i.smu_disable_dpms.exit_crit_edge

if.end107.i.smu_disable_dpms.exit_crit_edge:      ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_disable_dpms.exit

land.lhs.true112.i:                               ; preds = %if.end107.i
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 106, i32 2, i32 15
  %60 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %funcs.i, align 4
  %stop.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stop.i, align 4
  %tobool113.not.i = icmp eq ptr %63, null
  br i1 %tobool113.not.i, label %land.lhs.true112.i.smu_disable_dpms.exit_crit_edge, label %if.then114.i

land.lhs.true112.i.smu_disable_dpms.exit_crit_edge: ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_disable_dpms.exit

if.then114.i:                                     ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %63(ptr noundef %7) #10
  br label %smu_disable_dpms.exit

smu_disable_dpms.exit:                            ; preds = %if.then114.i, %land.lhs.true112.i.smu_disable_dpms.exit_crit_edge, %if.end107.i.smu_disable_dpms.exit_crit_edge, %cond.true38.i, %cond.true19.i
  %retval.0.i = phi i32 [ %call22.i, %cond.true19.i ], [ %call41.i, %cond.true38.i ], [ %ret.0.i, %if.then114.i ], [ %ret.0.i, %land.lhs.true112.i.smu_disable_dpms.exit_crit_edge ], [ %ret.0.i, %if.end107.i.smu_disable_dpms.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool14.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool14.not, label %smu_disable_dpms.exit.cleanup_crit_edge, label %smu_disable_dpms.exit.cleanup.sink.split_crit_edge

smu_disable_dpms.exit.cleanup.sink.split_crit_edge: ; preds = %smu_disable_dpms.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

smu_disable_dpms.exit.cleanup_crit_edge:          ; preds = %smu_disable_dpms.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %smu_disable_dpms.exit.cleanup.sink.split_crit_edge, %sw.bb31.i.cleanup.sink.split_crit_edge, %sw.bb.i.cleanup.sink.split_crit_edge, %cond.end10.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.210.sink = phi ptr [ @.str.207, %entry.cleanup.sink.split_crit_edge ], [ @.str.207, %cond.end10.cleanup.sink.split_crit_edge ], [ @.str.210, %sw.bb31.i.cleanup.sink.split_crit_edge ], [ @.str.210, %sw.bb.i.cleanup.sink.split_crit_edge ], [ @.str.210, %smu_disable_dpms.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ %call8, %cond.end10.cleanup.sink.split_crit_edge ], [ -22, %sw.bb31.i.cleanup.sink.split_crit_edge ], [ -22, %sw.bb.i.cleanup.sink.split_crit_edge ], [ %retval.0.i, %smu_disable_dpms.exit.cleanup.sink.split_crit_edge ]
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull %.str.210.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %smu_disable_dpms.exit.cleanup_crit_edge, %cond.true34.i.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smu_disable_dpms.exit.cleanup_crit_edge ], [ 0, %cond.true.i.cleanup_crit_edge ], [ 0, %cond.true34.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_stb_debugfs_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %size, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %f_inode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  %stb_context = getelementptr inbounds %struct.amdgpu_device, ptr %5, i32 0, i32 97, i32 65
  %6 = ptrtoint ptr %stb_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stb_context, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %size, ptr noundef %pos, ptr noundef nonnull %1, i32 noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_stb_debugfs_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %stb_context = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 97, i32 65
  %4 = ptrtoint ptr %stb_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stb_context, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %5, i32 noundef 3264, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 97
  %6 = ptrtoint ptr %stb_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stb_context, align 4
  %ppt_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 97, i32 2
  %8 = ptrtoint ptr %ppt_funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppt_funcs.i, align 8
  %stb_collect_info.i = getelementptr inbounds %struct.pptable_funcs, ptr %9, i32 0, i32 112
  %10 = ptrtoint ptr %stb_collect_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stb_collect_info.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %lor.lhs.false.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end
  %enabled.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 97, i32 65, i32 1
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.out_crit_edge, label %if.end.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %stb_context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stb_context, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp.not.i = icmp eq i32 %15, %7
  br i1 %cmp.not.i, label %smu_stb_collect_info.exit, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

smu_stb_collect_info.exit:                        ; preds = %if.end.i
  %call.i = tail call i32 %11(ptr noundef %smu1, ptr noundef nonnull %call.i.i, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %smu_stb_collect_info.exit.out_crit_edge

smu_stb_collect_info.exit.out_crit_edge:          ; preds = %smu_stb_collect_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %smu_stb_collect_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %private_data, align 4
  br label %cleanup

out:                                              ; preds = %smu_stb_collect_info.exit.out_crit_edge, %if.end.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.end.out_crit_edge
  %retval.0.i20 = phi i32 [ %call.i, %smu_stb_collect_info.exit.out_crit_edge ], [ -22, %if.end.i.out_crit_edge ], [ -95, %if.end.out_crit_edge ], [ -95, %lor.lhs.false.i.out_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i20, %out ], [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_stb_debugfs_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kvfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !364, !366, !367, !368, !370, !371, !372, !373, !375, !376, !378, !379, !381, !382, !383}
!llvm.module.flags = !{!385, !386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2066, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smu_allow_xgmi_power_down._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @smu_allow_xgmi_power_down._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2126, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @smu_set_ac_dc._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @smu_set_ac_dc._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2134, i32 10}
!17 = !{ptr @smu_ip_funcs, !18, !"smu_ip_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2133, i32 27}
!19 = !{ptr @smu_v11_0_ip_block, !20, !"smu_v11_0_ip_block", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2152, i32 38}
!21 = !{ptr @smu_v12_0_ip_block, !22, !"smu_v12_0_ip_block", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2161, i32 38}
!23 = !{ptr @smu_v13_0_ip_block, !24, !"smu_v13_0_ip_block", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2170, i32 38}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 3277, i32 27}
!27 = !{ptr @smu_early_init.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 638, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @smu_early_init.__key.12, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 639, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @swsmu_pm_funcs, !34, !"swsmu_pm_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 3114, i32 34}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1944, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @smu_force_smuclk_levels.__UNIQUE_ID_ddebug343, !36, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1736, i32 4}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @smu_adjust_power_state_dynamic._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @smu_adjust_power_state_dynamic._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1743, i32 3}
!47 = !{ptr @smu_adjust_power_state_dynamic._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @smu_adjust_power_state_dynamic._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1750, i32 4}
!51 = !{ptr @smu_adjust_power_state_dynamic._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @smu_adjust_power_state_dynamic._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1758, i32 4}
!55 = !{ptr @smu_adjust_power_state_dynamic._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @smu_adjust_power_state_dynamic._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 526, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @smu_sys_set_pp_table._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @smu_sys_set_pp_table._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 550, i32 3}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @smu_sys_set_pp_table._entry.30, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @smu_sys_set_pp_table._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2195, i32 4}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @smu_load_microcode._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @smu_load_microcode._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2203, i32 4}
!74 = !{ptr @smu_load_microcode._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @smu_load_microcode._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 281, i32 3}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 296, i32 4}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @smu_dpm_set_power_gate._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @smu_dpm_set_power_gate._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 302, i32 4}
!87 = !{ptr @smu_dpm_set_power_gate._entry.44, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @smu_dpm_set_power_gate._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 308, i32 4}
!93 = !{ptr @smu_dpm_set_power_gate._entry.49, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @smu_dpm_set_power_gate._entry_ptr.51, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 314, i32 4}
!97 = !{ptr @smu_dpm_set_power_gate._entry.52, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @smu_dpm_set_power_gate._entry_ptr.54, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 318, i32 3}
!101 = !{ptr @smu_dpm_set_power_gate._entry.55, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @smu_dpm_set_power_gate._entry_ptr.57, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2363, i32 3}
!105 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @smu_set_power_limit._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @smu_set_power_limit._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2739, i32 4}
!110 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @smu_get_clock_by_type_with_latency._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @smu_get_clock_by_type_with_latency._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2861, i32 3}
!115 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @smu_baco_set_state._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @smu_baco_set_state._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2934, i32 3}
!122 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @smu_mode2_reset._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @smu_mode2_reset._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2045, i32 3}
!127 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @smu_set_df_cstate._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @smu_set_df_cstate._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 2808, i32 3}
!132 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @smu_set_xgmi_pstate._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @smu_set_xgmi_pstate._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 703, i32 3}
!137 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @smu_late_init._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @smu_late_init._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 714, i32 4}
!142 = !{ptr @smu_late_init._entry.74, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @smu_late_init._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 721, i32 3}
!146 = !{ptr @smu_late_init._entry.77, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @smu_late_init._entry_ptr.79, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 730, i32 3}
!150 = !{ptr @smu_late_init._entry.80, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @smu_late_init._entry_ptr.82, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 386, i32 4}
!154 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @smu_restore_dpm_user_profile._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @smu_restore_dpm_user_profile._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 403, i32 6}
!159 = !{ptr @smu_restore_dpm_user_profile._entry.85, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @smu_restore_dpm_user_profile._entry_ptr.87, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 417, i32 4}
!163 = !{ptr @smu_restore_dpm_user_profile._entry.88, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @smu_restore_dpm_user_profile._entry_ptr.90, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.92, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 423, i32 5}
!167 = !{ptr @smu_restore_dpm_user_profile._entry.91, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @smu_restore_dpm_user_profile._entry_ptr.93, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 429, i32 5}
!171 = !{ptr @smu_restore_dpm_user_profile._entry.94, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @smu_restore_dpm_user_profile._entry_ptr.96, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.98, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 438, i32 5}
!175 = !{ptr @smu_restore_dpm_user_profile._entry.97, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @smu_restore_dpm_user_profile._entry_ptr.99, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @smu_sw_init.__key, !178, !"__key", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1034, i32 2}
!179 = !{ptr @.str.100, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @smu_sw_init.__key.101, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1039, i32 2}
!182 = !{ptr @.str.102, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @smu_sw_init.__key.103, !184, !"__key", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1040, i32 2}
!185 = !{ptr @.str.104, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @smu_sw_init.__key.105, !187, !"__key", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1041, i32 2}
!188 = !{ptr @.str.106, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @smu_sw_init.__key.107, !190, !"__key", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1043, i32 2}
!191 = !{ptr @.str.108, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @smu_sw_init.__key.109, !193, !"__key", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1044, i32 2}
!194 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @smu_sw_init.__key.111, !196, !"__key", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1052, i32 2}
!197 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @smu_sw_init.__key.113, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1053, i32 2}
!200 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.115, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1078, i32 3}
!203 = !{ptr @.str.116, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @smu_sw_init._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @smu_sw_init._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.118, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1084, i32 3}
!208 = !{ptr @smu_sw_init._entry.117, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @smu_sw_init._entry_ptr.119, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.121, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1090, i32 3}
!212 = !{ptr @smu_sw_init._entry.120, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @smu_sw_init._entry_ptr.122, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.123, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 938, i32 3}
!216 = !{ptr @.str.124, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @smu_smc_table_sw_init._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @smu_smc_table_sw_init._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.126, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 948, i32 3}
!221 = !{ptr @smu_smc_table_sw_init._entry.125, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @smu_smc_table_sw_init._entry_ptr.127, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.128, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 768, i32 4}
!225 = !{ptr @.str.129, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @smu_init_fb_allocations._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @smu_init_fb_allocations._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.131, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 797, i32 3}
!230 = !{ptr @smu_init_fb_allocations._entry.130, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @smu_init_fb_allocations._entry_ptr.132, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.133, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 863, i32 4}
!234 = !{ptr @.str.134, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @smu_alloc_memory_pool._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @smu_alloc_memory_pool._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.135, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 909, i32 3}
!239 = !{ptr @.str.136, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @smu_alloc_dummy_read_table._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @smu_alloc_dummy_read_table._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.137, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1109, i32 3}
!244 = !{ptr @.str.138, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @smu_sw_fini._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @smu_sw_fini._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.139, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 992, i32 3}
!249 = !{ptr @.str.140, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @smu_smc_table_sw_fini._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @smu_smc_table_sw_fini._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.142, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 998, i32 3}
!254 = !{ptr @smu_smc_table_sw_fini._entry.141, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @smu_smc_table_sw_fini._entry_ptr.143, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.144, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1348, i32 3}
!258 = !{ptr @.str.145, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @smu_hw_init._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @smu_hw_init._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.147, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1364, i32 3}
!263 = !{ptr @smu_hw_init._entry.146, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @smu_hw_init._entry_ptr.148, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.150, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1370, i32 3}
!267 = !{ptr @smu_hw_init._entry.149, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @smu_hw_init._entry_ptr.151, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.153, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1380, i32 3}
!271 = !{ptr @smu_hw_init._entry.152, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @smu_hw_init._entry_ptr.154, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.156, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1393, i32 3}
!275 = !{ptr @smu_hw_init._entry.155, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @smu_hw_init._entry_ptr.157, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.159, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1399, i32 2}
!279 = !{ptr @smu_hw_init._entry.158, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @smu_hw_init._entry_ptr.160, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.161, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1319, i32 4}
!283 = !{ptr @smu_start_smc_engine._entry, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @smu_start_smc_engine._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.162, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1152, i32 3}
!287 = !{ptr @.str.163, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @smu_smc_hw_setup._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @smu_smc_hw_setup._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.165, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1161, i32 5}
!292 = !{ptr @smu_smc_hw_setup._entry.164, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @smu_smc_hw_setup._entry_ptr.166, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.168, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1171, i32 3}
!296 = !{ptr @smu_smc_hw_setup._entry.167, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @smu_smc_hw_setup._entry_ptr.169, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.171, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1177, i32 3}
!300 = !{ptr @smu_smc_hw_setup._entry.170, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @smu_smc_hw_setup._entry_ptr.172, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.174, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1186, i32 3}
!304 = !{ptr @smu_smc_hw_setup._entry.173, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @smu_smc_hw_setup._entry_ptr.175, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.177, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1196, i32 3}
!308 = !{ptr @smu_smc_hw_setup._entry.176, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @smu_smc_hw_setup._entry_ptr.178, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.180, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1207, i32 3}
!312 = !{ptr @smu_smc_hw_setup._entry.179, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @smu_smc_hw_setup._entry_ptr.181, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.183, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1218, i32 3}
!316 = !{ptr @smu_smc_hw_setup._entry.182, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @smu_smc_hw_setup._entry_ptr.184, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.186, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1224, i32 3}
!320 = !{ptr @smu_smc_hw_setup._entry.185, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @smu_smc_hw_setup._entry_ptr.187, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.189, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1229, i32 3}
!324 = !{ptr @smu_smc_hw_setup._entry.188, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @smu_smc_hw_setup._entry_ptr.190, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.192, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1258, i32 3}
!328 = !{ptr @smu_smc_hw_setup._entry.191, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @smu_smc_hw_setup._entry_ptr.193, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.195, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1264, i32 3}
!332 = !{ptr @smu_smc_hw_setup._entry.194, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @smu_smc_hw_setup._entry_ptr.196, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.198, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1270, i32 3}
!336 = !{ptr @smu_smc_hw_setup._entry.197, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @smu_smc_hw_setup._entry_ptr.199, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.201, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1281, i32 3}
!340 = !{ptr @smu_smc_hw_setup._entry.200, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @smu_smc_hw_setup._entry_ptr.202, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.204, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1287, i32 3}
!344 = !{ptr @smu_smc_hw_setup._entry.203, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @smu_smc_hw_setup._entry_ptr.205, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.206, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 676, i32 3}
!348 = !{ptr @smu_set_default_dpm_table._entry, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @smu_set_default_dpm_table._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.207, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1499, i32 3}
!352 = !{ptr @.str.208, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @smu_smc_hw_cleanup._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @smu_smc_hw_cleanup._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.210, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1505, i32 3}
!357 = !{ptr @smu_smc_hw_cleanup._entry.209, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @smu_smc_hw_cleanup._entry_ptr.211, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.212, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1475, i32 4}
!361 = !{ptr @.str.213, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @smu_disable_dpms._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @smu_disable_dpms._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.215, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1479, i32 4}
!366 = !{ptr @smu_disable_dpms._entry.214, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @smu_disable_dpms._entry_ptr.216, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.217, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1595, i32 2}
!370 = !{ptr @.str.218, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @smu_resume._entry, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @smu_resume._entry_ptr, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @smu_resume._entry.219, !374, !"_entry", i1 false, i1 false}
!374 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1599, i32 3}
!375 = !{ptr @smu_resume._entry_ptr.220, !374, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @smu_resume._entry.221, !377, !"_entry", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1605, i32 3}
!378 = !{ptr @smu_resume._entry_ptr.222, !377, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.224, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 1615, i32 2}
!381 = !{ptr @smu_resume._entry.223, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @smu_resume._entry_ptr.225, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @smu_stb_debugfs_fops, !384, !"smu_stb_debugfs_fops", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c", i32 3258, i32 37}
!385 = !{i32 1, !"wchar_size", i32 2}
!386 = !{i32 1, !"min_enum_size", i32 4}
!387 = !{i32 8, !"branch-target-enforcement", i32 0}
!388 = !{i32 8, !"sign-return-address", i32 0}
!389 = !{i32 8, !"sign-return-address-all", i32 0}
!390 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!391 = !{i32 7, !"uwtable", i32 1}
!392 = !{i32 7, !"frame-pointer", i32 2}
!393 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!394 = !{i8 0, i8 2}
!395 = !{!"auto-init"}
!396 = !{i32 0, i32 33}
!397 = !{i64 2148259338, i64 2148259343, i64 2148259356, i64 2148259400, i64 2148259434, i64 2148259455}
