; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.83 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.amdgpu_gfx_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_debugfs_regs2_data = type { ptr, %struct.mutex, %struct.amdgpu_debugfs_regs2_iocdata }
%struct.amdgpu_debugfs_regs2_iocdata = type { i32, i32, i32, %struct.anon.115, %struct.anon.116 }
%struct.anon.115 = type { i32, i32, i32 }
%struct.anon.116 = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_sched_backend_ops = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.94, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.anon.94 = type { %union.anon.95, [128 x i64] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }

@debugfs_regs_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [56 x i8] zeroinitializer }, align 32
@debugfs_regs = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @amdgpu_debugfs_regs_fops, ptr @amdgpu_debugfs_regs2_fops, ptr @amdgpu_debugfs_regs_didt_fops, ptr @amdgpu_debugfs_regs_pcie_fops, ptr @amdgpu_debugfs_regs_smc_fops, ptr @amdgpu_debugfs_gca_config_fops, ptr @amdgpu_debugfs_sensors_fops, ptr @amdgpu_debugfs_wave_fops, ptr @amdgpu_debugfs_gpr_fops, ptr @amdgpu_debugfs_gfxoff_fops], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_smu_debug\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_preempt_ib\00", [46 x i8] zeroinitializer }, align 32
@fops_ib_preempt = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_ib_preempt_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to create amdgpu_preempt_ib debugsfs file\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_force_sclk\00", [46 x i8] zeroinitializer }, align 32
@fops_sclk_set = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_sclk_set_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to create amdgpu_set_sclk debugsfs file\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_evict_vram\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_evict_vram_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_evict_vram_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_evict_gtt\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_evict_gtt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_evict_gtt_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_test_ib\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_test_ib_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_debugfs_test_ib_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_vm_info\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_vm_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_debugfs_vm_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amdgpu_vbios\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_discovery\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amdgpu_regs\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amdgpu_regs2\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_regs_didt\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_regs_pcie\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_regs_smc\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_gca_config\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_sensors\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amdgpu_wave\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"amdgpu_gpr\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amdgpu_gfxoff\00", [18 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_regs_read, ptr @amdgpu_debugfs_regs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_regs2_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_regs2_read, ptr @amdgpu_debugfs_regs2_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amdgpu_debugfs_regs2_ioctl, ptr null, ptr null, i32 0, ptr @amdgpu_debugfs_regs2_open, ptr null, ptr @amdgpu_debugfs_regs2_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_regs_didt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_regs_didt_read, ptr @amdgpu_debugfs_regs_didt_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_regs_pcie_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_regs_pcie_read, ptr @amdgpu_debugfs_regs_pcie_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_regs_smc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_regs_smc_read, ptr @amdgpu_debugfs_regs_smc_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_gca_config_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_gca_config_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_sensors_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_sensor_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_wave_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_wave_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_gpr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_gpr_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_gfxoff_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_debugfs_gfxoff_read, ptr @amdgpu_debugfs_gfxoff_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_regs2_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rd->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_ib_preempt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.22, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014[drm] failed to preempt ring %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_debugfs_ib_preempt\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_ib_preempt._entry_ptr = internal global ptr @amdgpu_debugfs_ib_preempt._entry, section ".printk_index", align 4
@amdgpu_debugfs_ib_preempt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.22, i32 1540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016[drm] ring %d was preempted\0A\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_debugfs_ib_preempt._entry_ptr.33 = internal global ptr @amdgpu_debugfs_ib_preempt._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"run ib test:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ib ring tests failed (%d).\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ib ring tests passed.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pid:%d\09Process:%s ----------\0A\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.41, i32 179, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"debugfs_regs_names\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1233, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"debugfs_regs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1220, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1621, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1624, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"fops_ib_preempt\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1627, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1631, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"fops_sclk_set\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1609, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1634, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1670, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"amdgpu_evict_vram_fops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1672, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"amdgpu_evict_gtt_fops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1394, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1674, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant [28 x i8] c"amdgpu_debugfs_test_ib_fops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1390, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1676, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant [28 x i8] c"amdgpu_debugfs_vm_info_fops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1391, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1681, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1686, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1234, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1235, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1236, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1237, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1238, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1239, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1240, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1241, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1242, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1243, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [25 x i8] c"amdgpu_debugfs_regs_fops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1165, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant [26 x i8] c"amdgpu_debugfs_regs2_fops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1155, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant [30 x i8] c"amdgpu_debugfs_regs_didt_fops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1171, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant [30 x i8] c"amdgpu_debugfs_regs_pcie_fops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1177, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"amdgpu_debugfs_regs_smc_fops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1183, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant [31 x i8] c"amdgpu_debugfs_gca_config_fops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1190, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"amdgpu_debugfs_sensors_fops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1196, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"amdgpu_debugfs_wave_fops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1202, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant [24 x i8] c"amdgpu_debugfs_gpr_fops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1207, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"amdgpu_debugfs_gfxoff_fops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1213, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 150, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 156, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 213, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 271, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1606, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1532, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1540, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1392, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1295, i32 16 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1298, i32 17 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1300, i32 17 }
@___asan_gen_.208 = private constant [47 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1376, i32 17 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 179, i32 4 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_debugfs_ib_preempt._entry, ptr @amdgpu_debugfs_ib_preempt._entry.31, ptr @amdgpu_debugfs_ib_preempt._entry_ptr, ptr @amdgpu_debugfs_ib_preempt._entry_ptr.33, ptr @debugfs_regs_names, ptr @debugfs_regs, ptr @.str, ptr @.str.1, ptr @fops_ib_preempt, ptr @.str.2, ptr @.str.3, ptr @fops_sclk_set, ptr @.str.4, ptr @.str.6, ptr @amdgpu_evict_vram_fops, ptr @.str.7, ptr @amdgpu_evict_gtt_fops, ptr @.str.8, ptr @amdgpu_debugfs_test_ib_fops, ptr @.str.9, ptr @amdgpu_debugfs_vm_info_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @amdgpu_debugfs_regs_fops, ptr @amdgpu_debugfs_regs2_fops, ptr @amdgpu_debugfs_regs_didt_fops, ptr @amdgpu_debugfs_regs_pcie_fops, ptr @amdgpu_debugfs_regs_smc_fops, ptr @amdgpu_debugfs_gca_config_fops, ptr @amdgpu_debugfs_sensors_fops, ptr @amdgpu_debugfs_wave_fops, ptr @amdgpu_debugfs_gpr_fops, ptr @amdgpu_debugfs_gfxoff_fops, ptr @.str.22, ptr @.str.25, ptr @amdgpu_debugfs_regs2_open.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_regs_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ib_preempt to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_sclk_set to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_evict_vram_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_evict_gtt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_test_ib_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_vm_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_regs2_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_regs_didt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_regs_pcie_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_regs_smc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_gca_config_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_sensors_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_wave_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_gpr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_gfxoff_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_regs2_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_ib_preempt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_debugfs_ib_preempt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_debugfs_regs_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  %rmmio_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x ptr], ptr @debugfs_regs_names, i32 0, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [10 x ptr], ptr @debugfs_regs, i32 0, i32 %i.011
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef %5, i16 noundef zeroext -32476, ptr noundef %3, ptr noundef %adev, ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011)
  %tobool.not = icmp eq i32 %i.011, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %d_inode = getelementptr inbounds %struct.dentry, ptr %call2, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode, align 8
  %10 = ptrtoint ptr %rmmio_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_size, align 4
  %conv = zext i32 %11 to i64
  %12 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %15, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.then.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then.i_size_write.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !139
  %21 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %26, ptrtoint (ptr @lockdep_recursion to i32)
  %27 = inttoptr i32 %add.i28.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !140
  %30 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i7.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool20.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %34 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i29.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %38 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i9.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %41, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !141
  %42 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %45, ptrtoint (ptr @hardirqs_enabled to i32)
  %46 = inttoptr i32 %add47.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !142
  %49 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i12.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %52, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool54.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !143

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 23
  %53 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !144
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 23, i32 1
  %55 = tail call ptr @llvm.returnaddress(i32 0) #10
  %56 = ptrtoint ptr %55 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %56) #10
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 14
  %57 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %56) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  %58 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !146
  %60 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i26.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %i_size_write.exit, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_debugfs_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  %call1 = tail call zeroext i1 @debugfs_initialized() #10
  br i1 %call1, label %if.end, label %entry.cleanup34_crit_edge

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.end:                                           ; preds = %entry
  %smu_debug_mask = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 29
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %smu_debug_mask) #10
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @fops_ib_preempt) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #10
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup34

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 128, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @fops_sclk_set) #10
  %cmp.i85 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #10
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup34

if.end11:                                         ; preds = %if.end6
  tail call void @amdgpu_ttm_debugfs_init(ptr noundef %adev) #10
  tail call void @amdgpu_debugfs_pm_init(ptr noundef %adev) #10
  tail call void @amdgpu_debugfs_sa_init(ptr noundef %adev) #10
  tail call void @amdgpu_debugfs_fence_init(ptr noundef %adev) #10
  tail call void @amdgpu_debugfs_gem_init(ptr noundef %adev) #10
  %call12 = tail call i32 @amdgpu_debugfs_regs_init(ptr noundef %adev)
  tail call void @amdgpu_debugfs_firmware_init(ptr noundef %adev) #10
  %call15 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #10
  br i1 %call15, label %if.then16, label %if.end11.for.body.preheader_crit_edge

if.end11.for.body.preheader_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dtn_debugfs_init(ptr noundef %adev) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then16, %if.end11.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %i.086 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 90, i32 %i.086
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %for.body.cleanup_crit_edge, label %if.end20

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_debugfs_ring_init(ptr noundef %adev, ptr noundef nonnull %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_ras_debugfs_create_all(ptr noundef %adev) #10
  tail call void @amdgpu_rap_debugfs_init(ptr noundef %adev) #10
  tail call void @amdgpu_securedisplay_debugfs_init(ptr noundef %adev) #10
  tail call void @amdgpu_fw_attestation_debugfs_init(ptr noundef %adev) #10
  %call21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_evict_vram_fops) #10
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_evict_gtt_fops) #10
  %call23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_debugfs_test_ib_fops) #10
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_debugfs_vm_info_fops) #10
  %bios = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 26
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %debugfs_vbios_blob = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 18
  %10 = ptrtoint ptr %debugfs_vbios_blob to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %debugfs_vbios_blob, align 8
  %bios_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 27
  %11 = ptrtoint ptr %bios_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bios_size, align 8
  %size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size, align 4
  %call27 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %debugfs_vbios_blob) #10
  %discovery_bin = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 19
  %14 = ptrtoint ptr %discovery_bin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %discovery_bin, align 8
  %debugfs_discovery_blob = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 19
  %16 = ptrtoint ptr %debugfs_discovery_blob to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %debugfs_discovery_blob, align 8
  %discovery_tmr_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 20
  %17 = ptrtoint ptr %discovery_tmr_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %discovery_tmr_size, align 4
  %size31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %size31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %size31, align 4
  %call33 = tail call ptr @debugfs_create_blob(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %debugfs_discovery_blob) #10
  br label %cleanup34

cleanup34:                                        ; preds = %for.end, %if.then9, %if.then4, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %5, %if.then9 ], [ 0, %for.end ], [ 0, %entry.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_debugfs_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_debugfs_sa_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_debugfs_fence_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_debugfs_gem_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_debugfs_firmware_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_dc_support(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dtn_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_debugfs_ring_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ras_debugfs_create_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_rap_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_securedisplay_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_fw_attestation_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_debugfs_process_reg_op(i1 noundef zeroext true, ptr noundef %f, ptr noundef %buf, i32 noundef %size, ptr noundef %pos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @amdgpu_debugfs_process_reg_op(i1 noundef zeroext false, ptr noundef %f, ptr noundef %buf, i32 noundef %size, ptr noundef %pos)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_debugfs_process_reg_op(i1 noundef zeroext %read, ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup156_crit_edge

entry.cleanup156_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup156

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup156_crit_edge

lor.lhs.false.cleanup156_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup156

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %and4 = and i64 %5, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  %and6 = and i64 %5, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  %6 = and i64 %5, 6917529027641081856
  call void @__sanitizer_cov_trace_const_cmp8(i64 6917529027641081856, i64 %6)
  %.not = icmp eq i64 %6, 6917529027641081856
  br i1 %.not, label %lor.lhs.false3.cleanup156_crit_edge, label %if.end

lor.lhs.false3.cleanup156_crit_edge:              ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup156

if.end:                                           ; preds = %lor.lhs.false3
  %7 = and i64 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool9.not = icmp eq i64 %7, 0
  br i1 %tobool5.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and14 = lshr i64 %5, 24
  %8 = trunc i64 %and14 to i32
  %conv = and i32 %8, 1023
  %and16 = lshr i64 %5, 34
  %9 = trunc i64 %and16 to i32
  %conv18 = and i32 %9, 1023
  %and19 = lshr i64 %5, 44
  %10 = trunc i64 %and19 to i32
  %conv21 = and i32 %10, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %conv)
  %cmp = icmp eq i32 %conv, 1023
  %spec.store.select = select i1 %cmp, i32 -1, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %conv18)
  %cmp25 = icmp eq i32 %conv18, 1023
  %spec.store.select170 = select i1 %cmp25, i32 -1, i32 %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %conv21)
  %cmp29 = icmp eq i32 %conv21, 1023
  %spec.store.select169 = select i1 %cmp29, i32 -1, i32 %conv21
  br label %if.end50

if.else:                                          ; preds = %if.end
  br i1 %tobool7.not, label %if.else.if.end50_crit_edge, label %if.then35

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and36 = lshr i64 %5, 24
  %11 = trunc i64 %and36 to i32
  %conv38 = and i32 %11, 1023
  %and39 = lshr i64 %5, 34
  %12 = trunc i64 %and39 to i32
  %conv41 = and i32 %12, 1023
  %and42 = lshr i64 %5, 44
  %13 = trunc i64 %and42 to i32
  %conv44 = and i32 %13, 1023
  %and45 = lshr i64 %5, 54
  %14 = trunc i64 %and45 to i32
  %conv47 = and i32 %14, 31
  br label %if.end50

if.end50:                                         ; preds = %if.then35, %if.else.if.end50_crit_edge, %if.then13
  %vmid.0 = phi i32 [ 0, %if.then13 ], [ %conv47, %if.then35 ], [ 0, %if.else.if.end50_crit_edge ]
  %queue.0 = phi i32 [ 0, %if.then13 ], [ %conv44, %if.then35 ], [ 0, %if.else.if.end50_crit_edge ]
  %pipe.0 = phi i32 [ 0, %if.then13 ], [ %conv41, %if.then35 ], [ 0, %if.else.if.end50_crit_edge ]
  %me.0 = phi i32 [ 0, %if.then13 ], [ %conv38, %if.then35 ], [ 0, %if.else.if.end50_crit_edge ]
  %se_bank.0 = phi i32 [ %spec.store.select, %if.then13 ], [ 0, %if.then35 ], [ 0, %if.else.if.end50_crit_edge ]
  %sh_bank.0 = phi i32 [ %spec.store.select170, %if.then13 ], [ 0, %if.then35 ], [ 0, %if.else.if.end50_crit_edge ]
  %instance_bank.0 = phi i32 [ %spec.store.select169, %if.then13 ], [ 0, %if.then35 ], [ 0, %if.else.if.end50_crit_edge ]
  %use_ring.0.off0 = phi i1 [ false, %if.then13 ], [ true, %if.then35 ], [ false, %if.else.if.end50_crit_edge ]
  %and51 = and i64 %5, 4194303
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %and51, ptr %pos, align 8
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp54 = icmp slt i32 %call.i, 0
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i242 = tail call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #10
  br label %cleanup156

if.end60:                                         ; preds = %if.end50
  %call61 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end68

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i244 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #10
  br label %cleanup156

if.end68:                                         ; preds = %if.end60
  br i1 %tobool5.not, label %if.else92, label %if.then70

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sh_bank.0)
  %cmp71.not = icmp eq i32 %sh_bank.0, -1
  br i1 %cmp71.not, label %if.then70.lor.lhs.false76_crit_edge, label %land.lhs.true73

if.then70.lor.lhs.false76_crit_edge:              ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false76

land.lhs.true73:                                  ; preds = %if.then70
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 3
  %22 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_sh_per_se, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sh_bank.0, i32 %23)
  %cmp74.not = icmp ult i32 %sh_bank.0, %23
  br i1 %cmp74.not, label %land.lhs.true73.lor.lhs.false76_crit_edge, label %land.lhs.true73.if.then84_crit_edge

land.lhs.true73.if.then84_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

land.lhs.true73.lor.lhs.false76_crit_edge:        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %land.lhs.true73.lor.lhs.false76_crit_edge, %if.then70.lor.lhs.false76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %se_bank.0)
  %cmp77.not = icmp eq i32 %se_bank.0, -1
  br i1 %cmp77.not, label %lor.lhs.false76.if.end90_crit_edge, label %land.lhs.true79

lor.lhs.false76.if.end90_crit_edge:               ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

land.lhs.true79:                                  ; preds = %lor.lhs.false76
  %config81 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1
  %24 = ptrtoint ptr %config81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %config81, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %se_bank.0, i32 %25)
  %cmp82.not = icmp ult i32 %se_bank.0, %25
  br i1 %cmp82.not, label %land.lhs.true79.if.end90_crit_edge, label %land.lhs.true79.if.then84_crit_edge

land.lhs.true79.if.then84_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

land.lhs.true79.if.end90_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then84:                                        ; preds = %land.lhs.true79.if.then84_crit_edge, %land.lhs.true73.if.then84_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.i246 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i246, ptr %last_busy.i, align 8
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %call.i248 = tail call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup156

if.end90:                                         ; preds = %land.lhs.true79.if.end90_crit_edge, %lor.lhs.false76.if.end90_crit_edge
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #10
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %31 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs, align 4
  %select_se_sh = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %select_se_sh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %select_se_sh, align 4
  tail call void %34(ptr noundef %3, i32 noundef %se_bank.0, i32 noundef %sh_bank.0, i32 noundef %instance_bank.0) #10
  br label %if.end98

if.else92:                                        ; preds = %if.end68
  br i1 %use_ring.0.off0, label %if.then94, label %if.else92.if.end98_crit_edge

if.else92.if.end98_crit_edge:                     ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then94:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #12
  %srbm_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %srbm_mutex, i32 noundef 0) #10
  %funcs96 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %35 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs96, align 4
  %select_me_pipe_q = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %select_me_pipe_q to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %select_me_pipe_q, align 4
  tail call void %38(ptr noundef %3, i32 noundef %me.0, i32 noundef %pipe.0, i32 noundef %queue.0, i32 noundef %vmid.0) #10
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.else92.if.end98_crit_edge, %if.end90
  br i1 %tobool9.not, label %if.end98.if.end101_crit_edge, label %if.then100

if.end98.if.end101_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end98.if.end101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool102.not267 = icmp eq i32 %size, 0
  br i1 %tobool102.not267, label %if.end101.end_crit_edge, label %if.end101.while.body_crit_edge

if.end101.while.body_crit_edge:                   ; preds = %if.end101
  br label %while.body

if.end101.end_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end101.while.body_crit_edge
  %buf.addr.0270 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %if.end101.while.body_crit_edge ]
  %size.addr.0269 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %size, %if.end101.while.body_crit_edge ]
  %result.0268 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %if.end101.while.body_crit_edge ]
  br i1 %read, label %if.end126, label %if.else110

if.else110:                                       ; preds = %while.body
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 152) #10
  %39 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i237 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i237 to ptr
  %cpu_domain.i.i238 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i238) #3, !srcloc !147
  %and.i239 = and i32 %41, -13
  %or.i240 = or i32 %and.i239, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i240) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %42 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.0270, i32 -1226833921) #10, !srcloc !150
  %asmresult = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool121.not = icmp eq i32 %asmresult, 0
  br i1 %tobool121.not, label %if.end126.thread, label %end.loopexit.split.loop.exit

if.end126.thread:                                 ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult119 = extractvalue { i32, i32 } %42, 1
  %43 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pos, align 8
  %45 = lshr i64 %44, 2
  %conv124 = trunc i64 %45 to i32
  tail call void @amdgpu_mm_wreg_mmio_rlc(ptr noundef %3, i32 noundef %conv124, i32 noundef %asmresult119) #10
  br label %cleanup

if.end126:                                        ; preds = %while.body
  %46 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %pos, align 8
  %48 = lshr i64 %47, 2
  %conv106 = trunc i64 %48 to i32
  %call107 = tail call i32 @amdgpu_device_rreg(ptr noundef %3, i32 noundef %conv106, i32 noundef 0) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 150) #10
  %49 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %51, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.0270, i32 %call107, i32 -1226833921) #10, !srcloc !151
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool127.not = icmp eq i32 %52, 0
  br i1 %tobool127.not, label %if.end126.cleanup_crit_edge, label %if.end126.end_crit_edge

if.end126.end_crit_edge:                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end126.cleanup_crit_edge, %if.end126.thread
  %add = add i32 %result.0268, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.0270, i32 4
  %53 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %pos, align 8
  %add130 = add i64 %54, 4
  store i64 %add130, ptr %pos, align 8
  %sub = add i32 %size.addr.0269, -4
  %tobool102.not = icmp eq i32 %sub, 0
  br i1 %tobool102.not, label %cleanup.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.end_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

end.loopexit.split.loop.exit:                     ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult.le = extractvalue { i32, i32 } %42, 0
  br label %end

end:                                              ; preds = %end.loopexit.split.loop.exit, %cleanup.end_crit_edge, %if.end126.end_crit_edge, %if.end101.end_crit_edge
  %result.2 = phi i32 [ 0, %if.end101.end_crit_edge ], [ %asmresult.le, %end.loopexit.split.loop.exit ], [ %52, %if.end126.end_crit_edge ], [ %add, %cleanup.end_crit_edge ]
  br i1 %tobool5.not, label %if.else137, label %if.then132

if.then132:                                       ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  %funcs134 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %55 = ptrtoint ptr %funcs134 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %funcs134, align 4
  %select_se_sh135 = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %select_se_sh135 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %select_se_sh135, align 4
  tail call void %58(ptr noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef -1) #10
  %grbm_idx_mutex136 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 21
  br label %if.end145.sink.split

if.else137:                                       ; preds = %end
  br i1 %use_ring.0.off0, label %if.then139, label %if.else137.if.end145_crit_edge

if.else137.if.end145_crit_edge:                   ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then139:                                       ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #12
  %funcs141 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %59 = ptrtoint ptr %funcs141 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %funcs141, align 4
  %select_me_pipe_q142 = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %select_me_pipe_q142 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %select_me_pipe_q142, align 4
  tail call void %62(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %srbm_mutex143 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 20
  br label %if.end145.sink.split

if.end145.sink.split:                             ; preds = %if.then139, %if.then132
  %srbm_mutex143.sink = phi ptr [ %srbm_mutex143, %if.then139 ], [ %grbm_idx_mutex136, %if.then132 ]
  tail call void @mutex_unlock(ptr noundef %srbm_mutex143.sink) #10
  br label %if.end145

if.end145:                                        ; preds = %if.end145.sink.split, %if.else137.if.end145_crit_edge
  br i1 %tobool9.not, label %if.end145.if.end150_crit_edge, label %if.then147

if.end145.if.end150_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then147:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  %pm148 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98
  tail call void @mutex_unlock(ptr noundef %pm148) #10
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %if.end145.if.end150_crit_edge
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %call.i250 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i251 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 12, i32 22
  %65 = ptrtoint ptr %last_busy.i251 to i32
  call void @__asan_store8_noabort(i32 %65)
  store volatile i64 %call.i250, ptr %last_busy.i251, align 8
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %call.i253 = tail call i32 @__pm_runtime_suspend(ptr noundef %67, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup156

cleanup156:                                       ; preds = %if.end150, %if.then84, %if.then64, %if.then56, %lor.lhs.false3.cleanup156_crit_edge, %lor.lhs.false.cleanup156_crit_edge, %entry.cleanup156_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then56 ], [ %call61, %if.then64 ], [ -22, %if.then84 ], [ %result.2, %if.end150 ], [ -22, %lor.lhs.false3.cleanup156_crit_edge ], [ -22, %lor.lhs.false.cleanup156_crit_edge ], [ -22, %entry.cleanup156_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_virt_enable_access_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_virt_disable_access_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_mm_wreg_mmio_rlc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs2_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %conv = trunc i64 %1 to i32
  %call = tail call fastcc i32 @amdgpu_debugfs_regs2_op(ptr noundef %f, ptr noundef %buf, i32 noundef %conv, i32 noundef %size, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs2_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %conv = trunc i64 %1 to i32
  %call = tail call fastcc i32 @amdgpu_debugfs_regs2_op(ptr noundef %f, ptr noundef %buf, i32 noundef %conv, i32 noundef %size, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs2_ioctl(ptr nocapture noundef readonly %f, i32 noundef %cmd, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1071112192, i32 %cmd)
  %cond3 = icmp eq i32 %cmd, -1071112192
  br i1 %cond3, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %id = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2
  %2 = inttoptr i32 %data to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 40, i32 -1226833920) #13, !srcloc !152
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !143

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %id, i32 noundef 40) #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !147
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %id, ptr noundef %2, i32 noundef 40) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup.sink.split_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !143

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %sw.bb.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %id, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11.i.i, %if.end.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.then11.i.i ], [ 0, %if.end.i.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs2_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_private, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @amdgpu_debugfs_regs2_open.__key) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs2_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_debugfs_regs2_op(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %offset, i32 noundef %size, i32 noundef %write_en) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = or i32 %size, %offset
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i199 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i201 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 13) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %lock = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %id = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2
  %use_grbm = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %use_grbm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %use_grbm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool17.not = icmp eq i32 %14, 0
  br i1 %tobool17.not, label %if.end16.if.end53_crit_edge, label %if.then18

if.end16.if.end53_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then18:                                        ; preds = %if.end16
  %grbm = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 3
  %sh = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 3, i32 1
  %15 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp20.not = icmp eq i32 %16, -1
  br i1 %cmp20.not, label %if.then18.lor.lhs.false25_crit_edge, label %land.lhs.true

if.then18.lor.lhs.false25_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false25

land.lhs.true:                                    ; preds = %if.then18
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 3
  %17 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_sh_per_se, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp24.not = icmp ult i32 %16, %18
  br i1 %cmp24.not, label %land.lhs.true.lor.lhs.false25_crit_edge, label %land.lhs.true.if.then36_crit_edge

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

land.lhs.true.lor.lhs.false25_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true.lor.lhs.false25_crit_edge, %if.then18.lor.lhs.false25_crit_edge
  %19 = ptrtoint ptr %grbm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %grbm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp28.not = icmp eq i32 %20, -1
  br i1 %cmp28.not, label %lor.lhs.false25.if.end43_crit_edge, label %land.lhs.true29

lor.lhs.false25.if.end43_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true29:                                  ; preds = %lor.lhs.false25
  %config34 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1
  %21 = ptrtoint ptr %config34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %config34, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp35.not = icmp ult i32 %20, %22
  br i1 %cmp35.not, label %land.lhs.true29.if.end43_crit_edge, label %land.lhs.true29.if.then36_crit_edge

land.lhs.true29.if.then36_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

land.lhs.true29.if.end43_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then36:                                        ; preds = %land.lhs.true29.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call.i203 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i203, ptr %last_busy.i, align 8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call.i205 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true29.if.end43_crit_edge, %lor.lhs.false25.if.end43_crit_edge
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #10
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs, align 4
  %select_se_sh = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %select_se_sh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %select_se_sh, align 4
  %32 = ptrtoint ptr %grbm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %grbm, align 4
  %34 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sh, align 4
  %instance = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 3, i32 2
  %36 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %instance, align 4
  tail call void %31(ptr noundef %3, i32 noundef %33, i32 noundef %35, i32 noundef %37) #10
  br label %if.end53

if.end53:                                         ; preds = %if.end43, %if.end16.if.end53_crit_edge
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  br i1 %tobool55.not, label %if.end53.if.end66_crit_edge, label %if.then56

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %srbm_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %srbm_mutex, i32 noundef 0) #10
  %funcs58 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %40 = ptrtoint ptr %funcs58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs58, align 4
  %select_me_pipe_q = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %select_me_pipe_q to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %select_me_pipe_q, align 4
  %srbm = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %srbm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %srbm, align 4
  %pipe = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 4, i32 1
  %46 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pipe, align 4
  %queue = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 4, i32 2
  %48 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %queue, align 4
  %vmid = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 4, i32 3
  %50 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vmid, align 4
  tail call void %43(ptr noundef %3, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %if.end53.if.end66_crit_edge
  %pg_lock = getelementptr inbounds %struct.amdgpu_debugfs_regs2_data, ptr %1, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %pg_lock to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pg_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool68.not = icmp eq i32 %53, 0
  br i1 %tobool68.not, label %if.end66.if.end70_crit_edge, label %if.then69

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66.if.end70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool71.not220 = icmp eq i32 %size, 0
  br i1 %tobool71.not220, label %if.end70.end_crit_edge, label %while.body.lr.ph

if.end70.end_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

while.body.lr.ph:                                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_en)
  %tobool72.not = icmp eq i32 %write_en, 0
  br label %while.body

while.body:                                       ; preds = %if.end94.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0225 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end94.while.body_crit_edge ]
  %offset.addr.0223 = phi i32 [ %offset, %while.body.lr.ph ], [ %add, %if.end94.while.body_crit_edge ]
  %size.addr.0222 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %if.end94.while.body_crit_edge ]
  %result.0221 = phi i32 [ 0, %while.body.lr.ph ], [ %add95, %if.end94.while.body_crit_edge ]
  br i1 %tobool72.not, label %if.end91, label %if.else

if.else:                                          ; preds = %while.body
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 280) #10
  %54 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i194 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i194 to ptr
  %cpu_domain.i.i195 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i195) #3, !srcloc !147
  %and.i196 = and i32 %56, -13
  %or.i197 = or i32 %and.i196, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i197) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %57 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.0225, i32 -1226833921) #10, !srcloc !153
  %asmresult = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool87.not = icmp eq i32 %asmresult, 0
  br i1 %tobool87.not, label %if.end91.thread, label %end.loopexit.split.loop.exit

if.end91.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult85 = extractvalue { i32, i32 } %57, 1
  %shr89 = lshr i32 %offset.addr.0223, 2
  tail call void @amdgpu_mm_wreg_mmio_rlc(ptr noundef %3, i32 noundef %shr89, i32 noundef %asmresult85) #10
  br label %if.end94

if.end91:                                         ; preds = %while.body
  %shr = lshr i32 %offset.addr.0223, 2
  %call74 = tail call i32 @amdgpu_device_rreg(ptr noundef %3, i32 noundef %shr, i32 noundef 0) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 278) #10
  %58 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %60, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %61 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.0225, i32 %call74, i32 -1226833921) #10, !srcloc !154
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool92.not = icmp eq i32 %61, 0
  br i1 %tobool92.not, label %if.end91.if.end94_crit_edge, label %if.end91.end_crit_edge

if.end91.end_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

if.end91.if.end94_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.end94:                                         ; preds = %if.end91.if.end94_crit_edge, %if.end91.thread
  %add = add i32 %offset.addr.0223, 4
  %sub = add i32 %size.addr.0222, -4
  %add95 = add i32 %result.0221, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.0225, i32 4
  %tobool71.not = icmp eq i32 %sub, 0
  br i1 %tobool71.not, label %if.end94.end_crit_edge, label %if.end94.while.body_crit_edge

if.end94.while.body_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end94.end_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %end

end.loopexit.split.loop.exit:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult.le = extractvalue { i32, i32 } %57, 0
  br label %end

end:                                              ; preds = %end.loopexit.split.loop.exit, %if.end94.end_crit_edge, %if.end91.end_crit_edge, %if.end70.end_crit_edge
  %result.1 = phi i32 [ 0, %if.end70.end_crit_edge ], [ %asmresult.le, %end.loopexit.split.loop.exit ], [ %61, %if.end91.end_crit_edge ], [ %add95, %if.end94.end_crit_edge ]
  %62 = ptrtoint ptr %use_grbm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %use_grbm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool98.not = icmp eq i32 %63, 0
  br i1 %tobool98.not, label %end.if.end104_crit_edge, label %if.then99

end.if.end104_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then99:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #12
  %funcs101 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %64 = ptrtoint ptr %funcs101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %funcs101, align 4
  %select_se_sh102 = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %select_se_sh102 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %select_se_sh102, align 4
  tail call void %67(ptr noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef -1) #10
  %grbm_idx_mutex103 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex103) #10
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %end.if.end104_crit_edge
  %68 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool107.not = icmp eq i32 %69, 0
  br i1 %tobool107.not, label %if.end104.if.end113_crit_edge, label %if.then108

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %funcs110 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %70 = ptrtoint ptr %funcs110 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %funcs110, align 4
  %select_me_pipe_q111 = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %select_me_pipe_q111 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %select_me_pipe_q111, align 4
  tail call void %73(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %srbm_mutex112 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 20
  tail call void @mutex_unlock(ptr noundef %srbm_mutex112) #10
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %if.end104.if.end113_crit_edge
  %74 = ptrtoint ptr %pg_lock to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pg_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool116.not = icmp eq i32 %75, 0
  br i1 %tobool116.not, label %if.end113.if.end120_crit_edge, label %if.then117

if.end113.if.end120_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %pm118 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98
  tail call void @mutex_unlock(ptr noundef %pm118) #10
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.end113.if.end120_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  %call.i207 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i208 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 12, i32 22
  %78 = ptrtoint ptr %last_busy.i208 to i32
  call void @__asan_store8_noabort(i32 %78)
  store volatile i64 %call.i207, ptr %last_busy.i208, align 8
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %call.i210 = tail call i32 @__pm_runtime_suspend(ptr noundef %80, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then36, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ %call10, %if.then12 ], [ -22, %if.then36 ], [ %result.1, %if.end120 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs_didt_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup35_crit_edge

lor.lhs.false.cleanup35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup35

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool17.not78 = icmp eq i32 %size, 0
  br i1 %tobool17.not78, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %didt_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 49
  br label %while.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #10
  br label %cleanup35

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.081 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.080 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %result.079 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %12 = ptrtoint ptr %didt_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %didt_rreg, align 8
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %16 = lshr i64 %15, 2
  %conv = trunc i64 %16 to i32
  %call18 = tail call i32 %13(ptr noundef %3, i32 noundef %conv) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 501) #10
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %19, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.081, i32 %call18, i32 -1226833921) #10, !srcloc !155
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i65 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i65, ptr %last_busy.i, align 8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i67 = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup:                                          ; preds = %while.body
  %add = add i32 %result.079, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.081, i32 4
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos, align 8
  %add29 = add i64 %27, 4
  store i64 %add29, ptr %pos, align 8
  %sub = add i32 %size.addr.080, -4
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.i69 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i70 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i70 to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i69, ptr %last_busy.i70, align 8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %32, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup35:                                        ; preds = %while.end, %cleanup.thread, %if.then12, %if.then5, %lor.lhs.false.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.then5 ], [ %call10, %if.then12 ], [ %result.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup35_crit_edge ], [ -22, %entry.cleanup35_crit_edge ], [ %20, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs_didt_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup35_crit_edge

lor.lhs.false.cleanup35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup35

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool17.not78 = icmp eq i32 %size, 0
  br i1 %tobool17.not78, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %didt_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 50
  br label %while.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #10
  br label %cleanup35

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.081 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.080 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %result.079 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 559) #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.081, i32 -1226833921) #10, !srcloc !156
  %asmresult = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool21.not = icmp eq i32 %asmresult, 0
  br i1 %tobool21.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult.le = extractvalue { i32, i32 } %15, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i65 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i65, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i67 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup:                                          ; preds = %while.body
  %asmresult19 = extractvalue { i32, i32 } %15, 1
  %21 = ptrtoint ptr %didt_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %didt_wreg, align 4
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pos, align 8
  %25 = lshr i64 %24, 2
  %conv = trunc i64 %25 to i32
  tail call void %22(ptr noundef %3, i32 noundef %conv, i32 noundef %asmresult19) #10
  %add = add i32 %result.079, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.081, i32 4
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos, align 8
  %add29 = add i64 %27, 4
  store i64 %add29, ptr %pos, align 8
  %sub = add i32 %size.addr.080, -4
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.i69 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i70 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i70 to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i69, ptr %last_busy.i70, align 8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %32, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup35:                                        ; preds = %while.end, %cleanup.thread, %if.then12, %if.then5, %lor.lhs.false.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.then5 ], [ %call10, %if.then12 ], [ %result.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup35_crit_edge ], [ -22, %entry.cleanup35_crit_edge ], [ %asmresult.le, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs_pcie_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup35_crit_edge

lor.lhs.false.cleanup35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup35

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool17.not78 = icmp eq i32 %size, 0
  br i1 %tobool17.not78, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 39
  br label %while.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #10
  br label %cleanup35

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.081 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.080 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %result.079 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %12 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_rreg, align 8
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %conv = trunc i64 %15 to i32
  %call18 = tail call i32 %13(ptr noundef %3, i32 noundef %conv) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 382) #10
  %16 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %18, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.081, i32 %call18, i32 -1226833921) #10, !srcloc !157
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i65 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i65, ptr %last_busy.i, align 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call.i67 = tail call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup:                                          ; preds = %while.body
  %add = add i32 %result.079, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.081, i32 4
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos, align 8
  %add29 = add i64 %26, 4
  store i64 %add29, ptr %pos, align 8
  %sub = add i32 %size.addr.080, -4
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i69 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i70 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i70 to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i69, ptr %last_busy.i70, align 8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup35:                                        ; preds = %while.end, %cleanup.thread, %if.then12, %if.then5, %lor.lhs.false.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.then5 ], [ %call10, %if.then12 ], [ %result.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup35_crit_edge ], [ -22, %entry.cleanup35_crit_edge ], [ %19, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs_pcie_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup35_crit_edge

lor.lhs.false.cleanup35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup35

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool17.not78 = icmp eq i32 %size, 0
  br i1 %tobool17.not78, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pcie_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 40
  br label %while.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #10
  br label %cleanup35

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.081 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.080 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %result.079 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 440) #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.081, i32 -1226833921) #10, !srcloc !158
  %asmresult = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool21.not = icmp eq i32 %asmresult, 0
  br i1 %tobool21.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult.le = extractvalue { i32, i32 } %15, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i65 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i65, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i67 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup:                                          ; preds = %while.body
  %asmresult19 = extractvalue { i32, i32 } %15, 1
  %21 = ptrtoint ptr %pcie_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcie_wreg, align 4
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pos, align 8
  %conv = trunc i64 %24 to i32
  tail call void %22(ptr noundef %3, i32 noundef %conv, i32 noundef %asmresult19) #10
  %add = add i32 %result.079, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.081, i32 4
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos, align 8
  %add29 = add i64 %26, 4
  store i64 %add29, ptr %pos, align 8
  %sub = add i32 %size.addr.080, -4
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i69 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i70 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i70 to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i69, ptr %last_busy.i70, align 8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup35:                                        ; preds = %while.end, %cleanup.thread, %if.then12, %if.then5, %lor.lhs.false.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.then5 ], [ %call10, %if.then12 ], [ %result.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup35_crit_edge ], [ -22, %entry.cleanup35_crit_edge ], [ %asmresult.le, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs_smc_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup35_crit_edge

lor.lhs.false.cleanup35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup35

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool17.not78 = icmp eq i32 %size, 0
  br i1 %tobool17.not78, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 36
  br label %while.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #10
  br label %cleanup35

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.081 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.080 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %result.079 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %12 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smc_rreg, align 4
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %conv = trunc i64 %15 to i32
  %call18 = tail call i32 %13(ptr noundef %3, i32 noundef %conv) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 620) #10
  %16 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %18, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.081, i32 %call18, i32 -1226833921) #10, !srcloc !159
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i65 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i65, ptr %last_busy.i, align 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call.i67 = tail call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup:                                          ; preds = %while.body
  %add = add i32 %result.079, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.081, i32 4
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos, align 8
  %add29 = add i64 %26, 4
  store i64 %add29, ptr %pos, align 8
  %sub = add i32 %size.addr.080, -4
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i69 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i70 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i70 to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i69, ptr %last_busy.i70, align 8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup35:                                        ; preds = %while.end, %cleanup.thread, %if.then12, %if.then5, %lor.lhs.false.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.then5 ], [ %call10, %if.then12 ], [ %result.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup35_crit_edge ], [ -22, %entry.cleanup35_crit_edge ], [ %19, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_regs_smc_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup35_crit_edge

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup35_crit_edge

lor.lhs.false.cleanup35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup35

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool17.not78 = icmp eq i32 %size, 0
  br i1 %tobool17.not78, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 37
  br label %while.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #10
  br label %cleanup35

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.081 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.080 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %result.079 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 678) #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.081, i32 -1226833921) #10, !srcloc !160
  %asmresult = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool21.not = icmp eq i32 %asmresult, 0
  br i1 %tobool21.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult.le = extractvalue { i32, i32 } %15, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i65 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i65, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i67 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup:                                          ; preds = %while.body
  %asmresult19 = extractvalue { i32, i32 } %15, 1
  %21 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smc_wreg, align 8
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pos, align 8
  %conv = trunc i64 %24 to i32
  tail call void %22(ptr noundef %3, i32 noundef %conv, i32 noundef %asmresult19) #10
  %add = add i32 %result.079, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.081, i32 4
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos, align 8
  %add29 = add i64 %26, 4
  store i64 %add29, ptr %pos, align 8
  %sub = add i32 %size.addr.080, -4
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i69 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i70 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i70 to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i69, ptr %last_busy.i70, align 8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup35

cleanup35:                                        ; preds = %while.end, %cleanup.thread, %if.then12, %if.then5, %lor.lhs.false.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.then5 ], [ %call10, %if.then12 ], [ %result.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup35_crit_edge ], [ -22, %entry.cleanup35_crit_edge ], [ %asmresult.le, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_gca_config_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup132_crit_edge

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup132_crit_edge

lor.lhs.false.cleanup132_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1024) #14
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup132_crit_edge, label %if.end6

if.end.cleanup132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %call7.i.i, align 8
  %config7 = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1
  %8 = ptrtoint ptr %config7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config7, align 8
  %arrayidx9 = getelementptr i32, ptr %call7.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx9, align 4
  %max_tile_pipes = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 1
  %11 = ptrtoint ptr %max_tile_pipes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_tile_pipes, align 4
  %arrayidx13 = getelementptr i32, ptr %call7.i.i, i32 2
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx13, align 8
  %max_cu_per_sh = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 2
  %14 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_cu_per_sh, align 8
  %arrayidx17 = getelementptr i32, ptr %call7.i.i, i32 3
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx17, align 4
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 3
  %17 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_sh_per_se, align 4
  %arrayidx21 = getelementptr i32, ptr %call7.i.i, i32 4
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx21, align 8
  %max_backends_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 4
  %20 = ptrtoint ptr %max_backends_per_se to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_backends_per_se, align 8
  %arrayidx25 = getelementptr i32, ptr %call7.i.i, i32 5
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx25, align 4
  %max_texture_channel_caches = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 5
  %23 = ptrtoint ptr %max_texture_channel_caches to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_texture_channel_caches, align 4
  %arrayidx29 = getelementptr i32, ptr %call7.i.i, i32 6
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx29, align 8
  %max_gprs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 6
  %26 = ptrtoint ptr %max_gprs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_gprs, align 8
  %arrayidx33 = getelementptr i32, ptr %call7.i.i, i32 7
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx33, align 4
  %max_gs_threads = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 7
  %29 = ptrtoint ptr %max_gs_threads to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_gs_threads, align 4
  %arrayidx37 = getelementptr i32, ptr %call7.i.i, i32 8
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx37, align 8
  %max_hw_contexts = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 8
  %32 = ptrtoint ptr %max_hw_contexts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_hw_contexts, align 8
  %arrayidx41 = getelementptr i32, ptr %call7.i.i, i32 9
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx41, align 4
  %sc_prim_fifo_size_frontend = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 9
  %35 = ptrtoint ptr %sc_prim_fifo_size_frontend to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sc_prim_fifo_size_frontend, align 4
  %arrayidx45 = getelementptr i32, ptr %call7.i.i, i32 10
  %37 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx45, align 8
  %sc_prim_fifo_size_backend = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 10
  %38 = ptrtoint ptr %sc_prim_fifo_size_backend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sc_prim_fifo_size_backend, align 8
  %arrayidx49 = getelementptr i32, ptr %call7.i.i, i32 11
  %40 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx49, align 4
  %sc_hiz_tile_fifo_size = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 11
  %41 = ptrtoint ptr %sc_hiz_tile_fifo_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sc_hiz_tile_fifo_size, align 4
  %arrayidx53 = getelementptr i32, ptr %call7.i.i, i32 12
  %43 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx53, align 8
  %sc_earlyz_tile_fifo_size = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 12
  %44 = ptrtoint ptr %sc_earlyz_tile_fifo_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sc_earlyz_tile_fifo_size, align 8
  %arrayidx57 = getelementptr i32, ptr %call7.i.i, i32 13
  %46 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx57, align 4
  %num_tile_pipes = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 13
  %47 = ptrtoint ptr %num_tile_pipes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_tile_pipes, align 4
  %arrayidx61 = getelementptr i32, ptr %call7.i.i, i32 14
  %49 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx61, align 8
  %backend_enable_mask = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 14
  %50 = ptrtoint ptr %backend_enable_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %backend_enable_mask, align 8
  %arrayidx65 = getelementptr i32, ptr %call7.i.i, i32 15
  %52 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx65, align 4
  %mem_max_burst_length_bytes = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 15
  %53 = ptrtoint ptr %mem_max_burst_length_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mem_max_burst_length_bytes, align 4
  %arrayidx69 = getelementptr i32, ptr %call7.i.i, i32 16
  %55 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx69, align 8
  %mem_row_size_in_kb = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 16
  %56 = ptrtoint ptr %mem_row_size_in_kb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mem_row_size_in_kb, align 8
  %arrayidx73 = getelementptr i32, ptr %call7.i.i, i32 17
  %58 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx73, align 4
  %shader_engine_tile_size = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 17
  %59 = ptrtoint ptr %shader_engine_tile_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %shader_engine_tile_size, align 4
  %arrayidx77 = getelementptr i32, ptr %call7.i.i, i32 18
  %61 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx77, align 8
  %num_gpus = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 18
  %62 = ptrtoint ptr %num_gpus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_gpus, align 8
  %arrayidx81 = getelementptr i32, ptr %call7.i.i, i32 19
  %64 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx81, align 4
  %multi_gpu_tile_size = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 19
  %65 = ptrtoint ptr %multi_gpu_tile_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %multi_gpu_tile_size, align 4
  %arrayidx85 = getelementptr i32, ptr %call7.i.i, i32 20
  %67 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx85, align 8
  %mc_arb_ramcfg = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 20
  %68 = ptrtoint ptr %mc_arb_ramcfg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mc_arb_ramcfg, align 8
  %arrayidx89 = getelementptr i32, ptr %call7.i.i, i32 21
  %70 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx89, align 4
  %gb_addr_config = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 23
  %71 = ptrtoint ptr %gb_addr_config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gb_addr_config, align 4
  %arrayidx93 = getelementptr i32, ptr %call7.i.i, i32 22
  %73 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx93, align 8
  %num_rbs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 1, i32 24
  %74 = ptrtoint ptr %num_rbs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_rbs, align 8
  %arrayidx97 = getelementptr i32, ptr %call7.i.i, i32 23
  %76 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx97, align 4
  %rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 7
  %77 = ptrtoint ptr %rev_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rev_id, align 8
  %arrayidx99 = getelementptr i32, ptr %call7.i.i, i32 24
  %79 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx99, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 100
  %80 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pg_flags, align 4
  %arrayidx101 = getelementptr i32, ptr %call7.i.i, i32 25
  %82 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx101, align 4
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 99
  %83 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cg_flags, align 8
  %arrayidx103 = getelementptr i32, ptr %call7.i.i, i32 26
  %85 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx103, align 8
  %family = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 6
  %86 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %family, align 4
  %arrayidx105 = getelementptr i32, ptr %call7.i.i, i32 27
  %88 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx105, align 4
  %external_rev_id = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 8
  %89 = ptrtoint ptr %external_rev_id to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %external_rev_id, align 4
  %arrayidx107 = getelementptr i32, ptr %call7.i.i, i32 28
  %91 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx107, align 8
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 1
  %92 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %device, align 2
  %conv = zext i16 %95 to i32
  %arrayidx109 = getelementptr i32, ptr %call7.i.i, i32 29
  %96 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv, ptr %arrayidx109, align 4
  %97 = load ptr, ptr %pdev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %revision, align 4
  %conv111 = zext i8 %99 to i32
  %arrayidx113 = getelementptr i32, ptr %call7.i.i, i32 30
  %100 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv111, ptr %arrayidx113, align 8
  %101 = load ptr, ptr %pdev, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %subsystem_device, align 2
  %conv115 = zext i16 %103 to i32
  %arrayidx117 = getelementptr i32, ptr %call7.i.i, i32 31
  %104 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv115, ptr %arrayidx117, align 4
  %105 = load ptr, ptr %pdev, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 9
  %106 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %subsystem_vendor, align 4
  %conv119 = zext i16 %107 to i32
  %arrayidx121 = getelementptr i32, ptr %call7.i.i, i32 32
  %108 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv119, ptr %arrayidx121, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool122.not251 = icmp eq i32 %size, 0
  br i1 %tobool122.not251, label %if.end6.cleanup132.sink.split_crit_edge, label %land.rhs.preheader

if.end6.cleanup132.sink.split_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132.sink.split

land.rhs.preheader:                               ; preds = %if.end6
  %109 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %109)
  %.pr = load i64, ptr %pos, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.preheader
  %110 = phi i64 [ %.pr, %land.rhs.preheader ], [ %add131, %cleanup.land.rhs_crit_edge ]
  %buf.addr.0254 = phi ptr [ %buf, %land.rhs.preheader ], [ %add.ptr, %cleanup.land.rhs_crit_edge ]
  %size.addr.0253 = phi i32 [ %size, %land.rhs.preheader ], [ %sub, %cleanup.land.rhs_crit_edge ]
  %result.0252 = phi i32 [ 0, %land.rhs.preheader ], [ %add, %cleanup.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 132, i64 %110)
  %cmp = icmp slt i64 %110, 132
  br i1 %cmp, label %while.body, label %land.rhs.cleanup132.sink.split_crit_edge

land.rhs.cleanup132.sink.split_crit_edge:         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132.sink.split

while.body:                                       ; preds = %land.rhs
  %111 = lshr i64 %110, 2
  %idxprom = trunc i64 %111 to i32
  %arrayidx125 = getelementptr i32, ptr %call7.i.i, i32 %idxprom
  %112 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx125, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 775) #10
  %114 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 4
  %116 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %116, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %117 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.0254, i32 %113, i32 -1226833921) #10, !srcloc !161
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool128.not = icmp eq i32 %117, 0
  br i1 %tobool128.not, label %cleanup, label %while.body.cleanup132.sink.split_crit_edge

while.body.cleanup132.sink.split_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132.sink.split

cleanup:                                          ; preds = %while.body
  %add = add i32 %result.0252, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.0254, i32 4
  %118 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %pos, align 8
  %add131 = add i64 %119, 4
  store i64 %add131, ptr %pos, align 8
  %sub = add i32 %size.addr.0253, -4
  %tobool122.not = icmp eq i32 %sub, 0
  br i1 %tobool122.not, label %cleanup.cleanup132.sink.split_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup.cleanup132.sink.split_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132.sink.split

cleanup132.sink.split:                            ; preds = %cleanup.cleanup132.sink.split_crit_edge, %while.body.cleanup132.sink.split_crit_edge, %land.rhs.cleanup132.sink.split_crit_edge, %if.end6.cleanup132.sink.split_crit_edge
  %retval.2.ph = phi i32 [ 0, %if.end6.cleanup132.sink.split_crit_edge ], [ %117, %while.body.cleanup132.sink.split_crit_edge ], [ %add, %cleanup.cleanup132.sink.split_crit_edge ], [ %result.0252, %land.rhs.cleanup132.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup132

cleanup132:                                       ; preds = %cleanup132.sink.split, %if.end.cleanup132_crit_edge, %lor.lhs.false.cleanup132_crit_edge, %entry.cleanup132_crit_edge
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup132_crit_edge ], [ -22, %entry.cleanup132_crit_edge ], [ -12, %if.end.cleanup132_crit_edge ], [ %retval.2.ph, %cleanup132.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_sensor_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %valuesize = alloca i32, align 4
  %values = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valuesize) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %values) #10
  %4 = call ptr @memset(ptr %values, i32 255, i32 64)
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos, align 8
  %and1 = and i64 %6, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 13
  %7 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dpm_enabled, align 8, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = lshr i64 %6, 2
  %conv = trunc i64 %9 to i32
  %10 = ptrtoint ptr %valuesize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %valuesize, align 4
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i74 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i76 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call22 = call i32 @amdgpu_dpm_read_sensor(ptr noundef %3, i32 noundef %conv, ptr noundef nonnull %values, ptr noundef nonnull %valuesize) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i78 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i78, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i80 = call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool28.not = icmp eq i32 %call22, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %22 = ptrtoint ptr %valuesize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valuesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %size)
  %cmp31 = icmp ult i32 %23, %size
  br i1 %cmp31, label %if.then33, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool37.not81 = icmp eq i32 %size, 0
  br i1 %tobool37.not81, label %if.end41.thread, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.end41.thread:                                  ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %30

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buf.addr.085 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %size.addr.084 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %size, %while.cond.preheader.while.body_crit_edge ]
  %x.083 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %outsize.082 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i32 %x.083, 1
  %arrayidx38 = getelementptr [16 x i32], ptr %values, i32 0, i32 %x.083
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx38, align 4
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 853) #10
  %26 = call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %28, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %29 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.085, i32 %25, i32 -1226833921) #10, !srcloc !163
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %add.ptr = getelementptr i8, ptr %buf.addr.085, i32 4
  %sub = add i32 %size.addr.084, -4
  %add = add i32 %outsize.082, 4
  %tobool37.not = icmp eq i32 %sub, 0
  br i1 %tobool37.not, label %if.end41, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end41:                                         ; preds = %while.body
  call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool42.not = icmp eq i32 %29, 0
  br i1 %tobool42.not, label %if.end41._crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41._crit_edge:                              ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %30

30:                                               ; preds = %if.end41._crit_edge, %if.end41.thread
  %outsize.0.lcssa90 = phi i32 [ 0, %if.end41.thread ], [ %add, %if.end41._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %30, %if.end41.cleanup_crit_edge, %if.then33, %if.then29, %if.then17, %if.then9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ %call14, %if.then17 ], [ %call22, %if.then29 ], [ -22, %if.then33 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %outsize.0.lcssa90, %30 ], [ %29, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %values) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valuesize) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_read_sensor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_wave_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %x = alloca i32, align 4
  %data = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %data) #10
  %4 = call ptr @memset(ptr %data, i32 255, i32 128)
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup63_crit_edge

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos, align 8
  %and1 = and i64 %6, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup63_crit_edge

lor.lhs.false.cleanup63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

if.end:                                           ; preds = %lor.lhs.false
  %7 = trunc i64 %6 to i32
  %conv = and i32 %7, 127
  %8 = lshr i32 %7, 7
  %conv5 = and i32 %8, 255
  %9 = lshr i32 %7, 15
  %conv8 = and i32 %9, 255
  %10 = lshr i32 %7, 23
  %conv11 = and i32 %10, 255
  %and12 = lshr i64 %6, 31
  %11 = trunc i64 %and12 to i32
  %conv14 = and i32 %11, 63
  %and15 = lshr i64 %6, 37
  %12 = trunc i64 %and15 to i32
  %conv17 = and i32 %12, 255
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i110 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  br label %cleanup63

if.end24:                                         ; preds = %if.end
  %call25 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i112 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #10
  br label %cleanup63

if.end32:                                         ; preds = %if.end24
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #10
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs, align 4
  %select_se_sh = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %select_se_sh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %select_se_sh, align 4
  tail call void %22(ptr noundef %3, i32 noundef %conv5, i32 noundef %conv8, i32 noundef %conv11) #10
  %23 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %x, align 4
  %24 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs, align 4
  %read_wave_data = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %read_wave_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_wave_data, align 4
  %tobool35.not = icmp eq ptr %27, null
  br i1 %tobool35.not, label %if.end32.if.end40_crit_edge, label %if.then36

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  call void %27(ptr noundef %3, i32 noundef %conv17, i32 noundef %conv14, ptr noundef nonnull %data, ptr noundef nonnull %x) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end32.if.end40_crit_edge
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs, align 4
  %select_se_sh43 = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %select_se_sh43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %select_se_sh43, align 4
  call void %31(ptr noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef -1) #10
  call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #10
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call.i114 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i114, ptr %last_busy.i, align 8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %call.i116 = call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #10
  %37 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool50.not = icmp eq i32 %38, 0
  br i1 %tobool50.not, label %if.then51, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool53.not123 = icmp eq i32 %size, 0
  br i1 %tobool53.not123, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup63

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %buf.addr.0127 = phi ptr [ %add.ptr, %cleanup.land.rhs_crit_edge ], [ %buf, %while.cond.preheader.land.rhs_crit_edge ]
  %size.addr.0126 = phi i32 [ %sub, %cleanup.land.rhs_crit_edge ], [ %size, %while.cond.preheader.land.rhs_crit_edge ]
  %result.0125 = phi i32 [ %add, %cleanup.land.rhs_crit_edge ], [ 0, %while.cond.preheader.land.rhs_crit_edge ]
  %offset.0124 = phi i32 [ %add62, %cleanup.land.rhs_crit_edge ], [ %conv, %while.cond.preheader.land.rhs_crit_edge ]
  %39 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %x, align 4
  %mul = shl i32 %40, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0124, i32 %mul)
  %cmp54 = icmp ult i32 %offset.0124, %mul
  br i1 %cmp54, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %shr56 = lshr i32 %offset.0124, 2
  %arrayidx = getelementptr [32 x i32], ptr %data, i32 0, i32 %shr56
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 939) #10
  %43 = call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 4
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %45, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %46 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.0127, i32 %42, i32 -1226833921) #10, !srcloc !164
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool59.not = icmp eq i32 %46, 0
  br i1 %tobool59.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup63

cleanup:                                          ; preds = %while.body
  %add = add i32 %result.0125, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.0127, i32 4
  %add62 = add i32 %offset.0124, 4
  %sub = add i32 %size.addr.0126, -4
  %tobool53.not = icmp eq i32 %sub, 0
  br i1 %tobool53.not, label %cleanup.while.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ], [ %result.0125, %land.rhs.while.end_crit_edge ]
  call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup63

cleanup63:                                        ; preds = %while.end, %cleanup.thread, %if.then51, %if.then28, %if.then20, %lor.lhs.false.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.then20 ], [ %call25, %if.then28 ], [ %result.0.lcssa, %while.end ], [ -22, %if.then51 ], [ -22, %lor.lhs.false.cleanup63_crit_edge ], [ -22, %entry.cleanup63_crit_edge ], [ %46, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_gpr_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %size)
  %cmp = icmp ult i32 %size, 4097
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false1, label %entry.cleanup81_crit_edge

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

lor.lhs.false1:                                   ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and2 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false1.cleanup81_crit_edge

lor.lhs.false1.cleanup81_crit_edge:               ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

if.end:                                           ; preds = %lor.lhs.false1
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 2
  %conv = and i32 %7, 1023
  %8 = lshr i32 %6, 12
  %conv7 = and i32 %8, 255
  %9 = lshr i32 %6, 20
  %conv10 = and i32 %9, 255
  %and11 = lshr i64 %5, 28
  %10 = trunc i64 %and11 to i32
  %conv13 = and i32 %10, 255
  %and14 = lshr i64 %5, 36
  %11 = trunc i64 %and14 to i32
  %conv16 = and i32 %11, 255
  %and17 = lshr i64 %5, 44
  %12 = trunc i64 %and17 to i32
  %conv19 = and i32 %12, 255
  %and20 = lshr i64 %5, 52
  %13 = trunc i64 %and20 to i32
  %conv22 = and i32 %13, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 4096) #14
  %tobool26.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool26.not, label %if.end.cleanup81_crit_edge, label %if.end28

if.end.cleanup81_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup81

if.end28:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp slt i32 %call.i, 0
  br i1 %cmp31, label %if.end28.err_crit_edge, label %if.end34

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end34:                                         ; preds = %if.end28
  %call35 = tail call i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.err_crit_edge, label %if.end39

if.end34.err_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end39:                                         ; preds = %if.end34
  %grbm_idx_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %grbm_idx_mutex, i32 noundef 0) #10
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 106, i32 49
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs, align 4
  %select_se_sh = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %select_se_sh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %select_se_sh, align 4
  tail call void %20(ptr noundef %3, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv13) #10
  %21 = and i64 %5, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp40 = icmp eq i64 %21, 0
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end39
  %read_wave_vgprs = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %read_wave_vgprs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_wave_vgprs, align 4
  %tobool45.not = icmp eq ptr %25, null
  br i1 %tobool45.not, label %if.then42.if.end61_crit_edge, label %if.then46

if.then42.if.end61_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %shr50 = lshr i32 %size, 2
  tail call void %25(ptr noundef %3, i32 noundef %conv19, i32 noundef %conv16, i32 noundef %conv22, i32 noundef %conv, i32 noundef %shr50, ptr noundef nonnull %call7.i.i.i) #10
  br label %if.end61

if.else:                                          ; preds = %if.end39
  %read_wave_sgprs = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %read_wave_sgprs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_wave_sgprs, align 4
  %tobool54.not = icmp eq ptr %27, null
  br i1 %tobool54.not, label %if.else.if.end61_crit_edge, label %if.then55

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %shr59 = lshr i32 %size, 2
  tail call void %27(ptr noundef %3, i32 noundef %conv19, i32 noundef %conv16, i32 noundef %conv, i32 noundef %shr59, ptr noundef nonnull %call7.i.i.i) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.else.if.end61_crit_edge, %if.then46, %if.then42.if.end61_crit_edge
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs, align 4
  %select_se_sh64 = getelementptr inbounds %struct.amdgpu_gfx_funcs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %select_se_sh64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %select_se_sh64, align 4
  tail call void %31(ptr noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef -1) #10
  tail call void @mutex_unlock(ptr noundef %grbm_idx_mutex) #10
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call.i142 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i142, ptr %last_busy.i, align 8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %call.i144 = tail call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool71.not153 = icmp eq i32 %size, 0
  br i1 %tobool71.not153, label %if.end61.while.end_crit_edge, label %if.end61.while.body_crit_edge

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  br label %while.body

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end61.while.body_crit_edge
  %buf.addr.0156 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %if.end61.while.body_crit_edge ]
  %size.addr.0155 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %size, %if.end61.while.body_crit_edge ]
  %result.0154 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %if.end61.while.body_crit_edge ]
  %shr72 = ashr exact i32 %result.0154, 2
  %arrayidx = getelementptr i32, ptr %call7.i.i.i, i32 %shr72
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 1032) #10
  %39 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %41, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %42 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.0156, i32 %38, i32 -1226833921) #10, !srcloc !165
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool75.not = icmp eq i32 %42, 0
  br i1 %tobool75.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %err

cleanup:                                          ; preds = %while.body
  %add = add i32 %result.0154, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.0156, i32 4
  %sub = add i32 %size.addr.0155, -4
  %tobool71.not = icmp eq i32 %sub, 0
  br i1 %tobool71.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end61.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end61.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  tail call void @amdgpu_virt_disable_access_debugfs(ptr noundef %3) #10
  br label %cleanup81

err:                                              ; preds = %cleanup.thread, %if.end34.err_crit_edge, %if.end28.err_crit_edge
  %r.0 = phi i32 [ %call.i, %if.end28.err_crit_edge ], [ %call35, %if.end34.err_crit_edge ], [ %42, %cleanup.thread ]
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %call.i146 = tail call i32 @__pm_runtime_suspend(ptr noundef %44, i32 noundef 13) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup81

cleanup81:                                        ; preds = %err, %while.end, %if.end.cleanup81_crit_edge, %lor.lhs.false1.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.0 = phi i32 [ %r.0, %err ], [ %result.0.lcssa, %while.end ], [ -22, %lor.lhs.false1.cleanup81_crit_edge ], [ -22, %entry.cleanup81_crit_edge ], [ -12, %if.end.cleanup81_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_gfxoff_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup33_crit_edge

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup33_crit_edge

lor.lhs.false.cleanup33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup33_crit_edge, label %while.cond.preheader

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool7.not75 = icmp eq i32 %size, 0
  br i1 %tobool7.not75, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buf.addr.078 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %size.addr.077 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %size, %while.cond.preheader.while.body_crit_edge ]
  %result.076 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value, align 4, !annotation !166
  %call8 = call i32 @amdgpu_get_gfx_off_status(ptr noundef %3, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end16:                                         ; preds = %while.body
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 1136) #10
  %11 = call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %14 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.078, i32 %10, i32 -1226833921) #10, !srcloc !167
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %cleanup, label %if.end16.cleanup.thread_crit_edge

if.end16.cleanup.thread_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end16.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call8, %while.body.cleanup.thread_crit_edge ], [ %14, %if.end16.cleanup.thread_crit_edge ]
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i58 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i59 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i59 to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i58, ptr %last_busy.i59, align 8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i61 = call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  br label %cleanup33

cleanup:                                          ; preds = %if.end16
  %add = add i32 %result.076, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.078, i32 4
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos, align 8
  %add27 = add i64 %21, 4
  store i64 %add27, ptr %pos, align 8
  %sub = add i32 %size.addr.077, -4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  %tobool7.not = icmp eq i32 %sub, 0
  br i1 %tobool7.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call.i63 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i64 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i64 to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i63, ptr %last_busy.i64, align 8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call.i66 = call i32 @__pm_runtime_suspend(ptr noundef %26, i32 noundef 13) #10
  br label %cleanup33

cleanup33:                                        ; preds = %while.end, %cleanup.thread, %if.end.cleanup33_crit_edge, %lor.lhs.false.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.2 = phi i32 [ %result.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup33_crit_edge ], [ -22, %entry.cleanup33_crit_edge ], [ %call.i, %if.end.cleanup33_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_gfxoff_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup30_crit_edge

lor.lhs.false.cleanup30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup30.sink.split_crit_edge, label %while.cond.preheader

if.end.cleanup30.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.sink.split

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool10.not64 = icmp eq i32 %size, 0
  br i1 %tobool10.not64, label %while.cond.preheader.cleanup30.sink.split.sink.split_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup30.sink.split.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.sink.split.sink.split

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buf.addr.067 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %size.addr.066 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %size, %while.cond.preheader.while.body_crit_edge ]
  %result.065 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 1082) #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !128) #10
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !147
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.067, i32 -1226833921) #10, !srcloc !168
  %asmresult = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult.le = extractvalue { i32, i32 } %11, 0
  br label %cleanup30.sink.split.sink.split

cleanup:                                          ; preds = %while.body
  %asmresult12 = extractvalue { i32, i32 } %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult12)
  %tobool22 = icmp ne i32 %asmresult12, 0
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %3, i1 noundef zeroext %tobool22) #10
  %add = add i32 %result.065, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.067, i32 4
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %add24 = add i64 %13, 4
  store i64 %add24, ptr %pos, align 8
  %sub = add i32 %size.addr.066, -4
  %tobool10.not = icmp eq i32 %sub, 0
  br i1 %tobool10.not, label %cleanup.cleanup30.sink.split.sink.split_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup30.sink.split.sink.split_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.sink.split.sink.split

cleanup30.sink.split.sink.split:                  ; preds = %cleanup.cleanup30.sink.split.sink.split_crit_edge, %cleanup.thread, %while.cond.preheader.cleanup30.sink.split.sink.split_crit_edge
  %retval.2.ph.ph = phi i32 [ %asmresult.le, %cleanup.thread ], [ 0, %while.cond.preheader.cleanup30.sink.split.sink.split_crit_edge ], [ %add, %cleanup.cleanup30.sink.split.sink.split_crit_edge ]
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i55 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i56 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i56 to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i55, ptr %last_busy.i56, align 8
  br label %cleanup30.sink.split

cleanup30.sink.split:                             ; preds = %cleanup30.sink.split.sink.split, %if.end.cleanup30.sink.split_crit_edge
  %retval.2.ph = phi i32 [ %call.i, %if.end.cleanup30.sink.split_crit_edge ], [ %retval.2.ph.ph, %cleanup30.sink.split.sink.split ]
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i53 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #10
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.sink.split, %lor.lhs.false.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup30_crit_edge ], [ -22, %entry.cleanup30_crit_edge ], [ %retval.2.ph, %cleanup30.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_get_gfx_off_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_off_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_ib_preempt_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @amdgpu_debugfs_ib_preempt, ptr noundef nonnull @.str.28) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_ib_preempt(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 27, i64 %val)
  %cmp = icmp ugt i64 %val, 27
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %idxprom = trunc i64 %val to i32
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %data, i32 0, i32 90, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %preempt_ib = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %preempt_ib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %preempt_ib, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %sched = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 3
  %thread = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 3, i32 11
  %6 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end5

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  %trail_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %trail_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trail_seq, align 8
  %trail_fence_cpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %trail_fence_cpu_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trail_fence_cpu_addr, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %14)
  %cmp6.not = icmp eq i32 %9, %14
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %num_fences_mask = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 2, i32 8
  %15 = ptrtoint ptr %num_fences_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_fences_mask, align 8
  %add = add i32 %16, 1
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #10
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end8.cleanup_crit_edge, label %if.end7.i.i, !prof !169

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end8
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #15
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end11

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7.i.i
  %reset_sem = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 143
  %call12 = tail call i32 @down_read_killable(ptr noundef %reset_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.pro_end_crit_edge

if.end11.pro_end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %pro_end

if.end15:                                         ; preds = %if.end11
  %20 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %thread, align 8
  %call18 = tail call i32 @kthread_park(ptr noundef %21) #10
  %mman = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 68
  %call19 = tail call i32 @ttm_bo_lock_delayed_workqueue(ptr noundef %mman) #10
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %preempt_ib21 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %23, i32 0, i32 38
  %24 = ptrtoint ptr %preempt_ib21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %preempt_ib21, align 4
  %call22 = tail call i32 %25(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %idx = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %27) #16
  br label %failure

if.end26:                                         ; preds = %if.end15
  %call27 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef nonnull %1) #10
  %last_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 2, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 4) #10
  %28 = ptrtoint ptr %last_seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %last_seq, align 4
  %sync_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sync_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp31.not = icmp eq i32 %29, %31
  br i1 %cmp31.not, label %if.end26.failure_crit_edge, label %do.end35

if.end26.failure_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %failure

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %idx37 = getelementptr inbounds %struct.amdgpu_ring, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %idx37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx37, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %33) #16
  tail call fastcc void @amdgpu_ib_preempt_mark_partial_job(ptr noundef nonnull %1)
  tail call fastcc void @amdgpu_ib_preempt_fences_swap(ptr noundef nonnull %1, ptr noundef nonnull %call8.i.i)
  tail call void @amdgpu_fence_driver_force_completion(ptr noundef nonnull %1) #10
  tail call fastcc void @amdgpu_ib_preempt_job_recovery(ptr noundef %sched)
  %call40 = tail call i32 @amdgpu_fence_wait_empty(ptr noundef nonnull %1) #10
  tail call fastcc void @amdgpu_ib_preempt_signal_fences(ptr noundef nonnull %call8.i.i, i32 noundef %add)
  br label %failure

failure:                                          ; preds = %do.end35, %if.end26.failure_crit_edge, %do.end
  %34 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %thread, align 8
  tail call void @kthread_unpark(ptr noundef %35) #10
  tail call void @up_read(ptr noundef %reset_sem) #10
  tail call void @ttm_bo_unlock_delayed_workqueue(ptr noundef %mman, i32 noundef %call19) #10
  br label %pro_end

pro_end:                                          ; preds = %failure, %if.end11.pro_end_crit_edge
  %r.0 = phi i32 [ %call12, %if.end11.pro_end_crit_edge ], [ %call22, %failure ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %pro_end, %if.end7.i.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %pro_end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_lock_delayed_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ib_preempt_mark_partial_job(ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sched1 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpu_addr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_addr, align 8
  %add.ptr = getelementptr i32, ptr %5, i32 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %last_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 4) #10
  %9 = ptrtoint ptr %last_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %last_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp2.not = icmp ugt i32 %8, %10
  br i1 %cmp2.not, label %if.end4, label %if.end.no_preempt_crit_edge

if.end.no_preempt_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_preempt

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %num_fences_mask = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 8
  %11 = ptrtoint ptr %num_fences_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_fences_mask, align 8
  %and = and i32 %12, %8
  %fences = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 10
  %13 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fences, align 8
  %arrayidx = getelementptr ptr, ptr %14, i32 %and
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  br label %no_preempt

no_preempt:                                       ; preds = %if.end4, %if.end.no_preempt_crit_edge
  %fence.0 = phi ptr [ %16, %if.end4 ], [ inttoptr (i32 -1 to ptr), %if.end.no_preempt_crit_edge ]
  %job_list_lock = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3, i32 13
  tail call void @_raw_spin_lock(ptr noundef %job_list_lock) #10
  %pending_list = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pending_list, align 4
  %cmp14.not62 = icmp eq ptr %18, %pending_list
  br i1 %cmp14.not62, label %no_preempt.for.end_crit_edge, label %no_preempt.for.body_crit_edge

no_preempt.for.body_crit_edge:                    ; preds = %no_preempt
  br label %for.body

no_preempt.for.end_crit_edge:                     ; preds = %no_preempt
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %no_preempt.for.body_crit_edge
  %.pn.in63 = phi ptr [ %.pn67, %for.inc.for.body_crit_edge ], [ %18, %no_preempt.for.body_crit_edge ]
  %s_job.066 = getelementptr i8, ptr %.pn.in63, i32 -4
  %19 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn67 = load ptr, ptr %.pn.in63, align 4
  %s_fence = getelementptr i8, ptr %.pn.in63, i32 12
  %20 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fence, align 8
  %finished = getelementptr inbounds %struct.drm_sched_fence, ptr %21, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.drm_sched_fence, ptr %21, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.if.then16_crit_edge

for.body.if.then16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.i:                                         ; preds = %for.body
  %ops.i = getelementptr inbounds %struct.drm_sched_fence, ptr %21, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.end.i.if.end18_crit_edge, label %land.lhs.true.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %27(ptr noundef %finished) #10
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end18_crit_edge

land.lhs.true.i.if.end18_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %finished) #10
  br label %if.then16

if.then16:                                        ; preds = %if.then5.i, %for.body.if.then16_crit_edge
  %call.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in63) #10
  br i1 %call.i.i58, label %if.end.i.i, label %if.then16.list_del_init.exit_crit_edge

if.then16.list_del_init.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in63, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in63, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then16.list_del_init.exit_crit_edge
  %34 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %.pn.in63, ptr %.pn.in63, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in63, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %.pn.in63, ptr %prev.i3.i, align 4
  %36 = ptrtoint ptr %sched1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sched1, align 8
  %free_job = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %free_job to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %free_job, align 4
  tail call void %39(ptr noundef %s_job.066) #10
  br label %for.inc

if.end18:                                         ; preds = %land.lhs.true.i.if.end18_crit_edge, %if.end.i.if.end18_crit_edge
  %hw_fence = getelementptr i8, ptr %.pn.in63, i32 268
  %cmp22 = icmp eq ptr %hw_fence, %fence.0
  %or.cond = select i1 %cmp2.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then23, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %preemption_status = getelementptr i8, ptr %.pn.in63, i32 324
  %40 = ptrtoint ptr %preemption_status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %preemption_status, align 8
  %or = or i32 %41, 8
  store i32 %or, ptr %preemption_status, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %if.end18.for.inc_crit_edge, %list_del_init.exit
  %cmp14.not = icmp eq ptr %.pn67, %pending_list
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %no_preempt.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ib_preempt_fences_swap(ptr noundef %ring, ptr nocapture noundef writeonly %fences) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %last_seq2 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq2, i32 noundef 4) #10
  %0 = ptrtoint ptr %last_seq2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %last_seq2, align 4
  %sync_seq4 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %sync_seq4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sync_seq4, align 4
  %num_fences_mask = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %num_fences_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_fences_mask, align 8
  %and = and i32 %5, %1
  %and6 = and i32 %5, %3
  %fences9 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 10
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %entry
  %last_seq.0 = phi i32 [ %and, %entry ], [ %and8, %cleanup.do.body_crit_edge ]
  %inc = add i32 %last_seq.0, 1
  %6 = ptrtoint ptr %num_fences_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_fences_mask, align 8
  %and8 = and i32 %inc, %7
  %8 = ptrtoint ptr %fences9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fences9, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %and8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  store volatile ptr null, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23 = getelementptr ptr, ptr %fences, i32 %and8
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %arrayidx23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body.cleanup_crit_edge
  %cmp.not = icmp eq i32 %and8, %and6
  br i1 %cmp.not, label %do.end26, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end26:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_fence_driver_force_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ib_preempt_job_recovery(ptr noundef %sched) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %job_list_lock = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %job_list_lock) #10
  %pending_list = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %sched, i32 0, i32 12
  %0 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn14 = load ptr, ptr %pending_list, align 4
  %cmp.not15 = icmp eq ptr %.pn14, %pending_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %dma_fence_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %dma_fence_put.exit.for.body_crit_edge ], [ %.pn14, %entry.for.body_crit_edge ]
  %s_job.0 = getelementptr i8, ptr %.pn16, i32 -4
  %1 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sched, align 8
  %run_job = getelementptr inbounds %struct.drm_sched_backend_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %run_job to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %run_job, align 4
  %call = tail call ptr %4(ptr noundef %s_job.0) #10
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %for.body.dma_fence_put.exit_crit_edge, label %if.then.i

for.body.dma_fence_put.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %for.body
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !171
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !143

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %for.body.dma_fence_put.exit_crit_edge
  %6 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %pending_list
  br i1 %cmp.not, label %dma_fence_put.exit.for.end_crit_edge, label %dma_fence_put.exit.for.body_crit_edge

dma_fence_put.exit.for.body_crit_edge:            ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

dma_fence_put.exit.for.end_crit_edge:             ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %dma_fence_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %job_list_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ib_preempt_signal_fences(ptr nocapture noundef readonly %fences, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp5 = icmp sgt i32 %length, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %fences, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %for.body
  %call = tail call i32 @dma_fence_signal(ptr noundef nonnull %1) #10
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !171
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !143

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %for.inc

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_unlock_delayed_workqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_sclk_set_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @amdgpu_debugfs_sclk_set, ptr noundef nonnull @.str.28) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_sclk_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  %max_freq = alloca i32, align 4
  %min_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_freq) #10
  %0 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_freq, align 4, !annotation !166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_freq) #10
  %1 = ptrtoint ptr %min_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %min_freq, align 4, !annotation !166
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 132, i32 12
  %4 = ptrtoint ptr %gim_feature to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gim_feature, align 4
  %and2 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i53 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %data) #10
  br i1 %call10, label %if.then11, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %smu = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 97
  %call12 = call i32 @smu_get_dpm_freq_range(ptr noundef %smu, i32 noundef 13, ptr noundef nonnull %min_freq, ptr noundef nonnull %max_freq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then11
  %10 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_freq, align 4
  %conv = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp14 = icmp ult i64 %conv, %val
  br i1 %cmp14, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %min_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_freq, align 4
  %conv17 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv17, i64 %val)
  %cmp18 = icmp ugt i64 %conv17, %val
  br i1 %cmp18, label %lor.lhs.false16.cleanup_crit_edge, label %if.end21

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  %conv23 = trunc i64 %val to i32
  %call25 = call i32 @smu_set_soft_freq_range(ptr noundef %smu, i32 noundef 13, i32 noundef %conv23, i32 noundef %conv23) #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i55 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i55, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i57 = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool32.not = icmp eq i32 %call25, 0
  %. = select i1 %tobool32.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then5, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ %., %if.end21 ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_freq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_freq) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_support_sw_smu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_get_dpm_freq_range(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_set_soft_freq_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_evict_vram_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @amdgpu_debugfs_evict_vram, ptr noundef null, ptr noundef nonnull @.str.34) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_evict_vram(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @amdgpu_ttm_evict_resources(ptr noundef %data, i32 noundef 2) #10
  %conv = sext i32 %call5 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %call.i17 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 22
  %5 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store volatile i64 %call.i17, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %call.i18 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_evict_resources(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_evict_gtt_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @amdgpu_debugfs_evict_gtt, ptr noundef null, ptr noundef nonnull @.str.34) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_evict_gtt(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @amdgpu_ttm_evict_resources(ptr noundef %data, i32 noundef 1) #10
  %conv = sext i32 %call5 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %call.i17 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 22
  %5 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store volatile i64 %call.i17, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %call.i18 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_test_ib_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_debugfs_test_ib_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_test_ib_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup45.sink.split_crit_edge, label %if.end

entry.cleanup45.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45.sink.split

if.end:                                           ; preds = %entry
  %reset_sem = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 143
  %call5 = tail call i32 @down_write_killable(ptr noundef %reset_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.for.body_crit_edge, label %if.end.cleanup45_crit_edge

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.080 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 90, i32 %i.080
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %thread = getelementptr inbounds %struct.amdgpu_ring, ptr %5, i32 0, i32 3, i32 11
  %6 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread, align 8
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 @kthread_park(ptr noundef nonnull %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35) #10
  %call16 = tail call i32 @amdgpu_ib_ring_tests(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %call16) #10
  br label %for.body22.preheader

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37) #10
  br label %for.body22.preheader

for.body22.preheader:                             ; preds = %if.else, %if.then18
  br label %for.body22

for.body22:                                       ; preds = %cleanup35.for.body22_crit_edge, %for.body22.preheader
  %i.181 = phi i32 [ %inc39, %cleanup35.for.body22_crit_edge ], [ 0, %for.body22.preheader ]
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 90, i32 %i.181
  %8 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %9, null
  br i1 %tobool26.not, label %for.body22.cleanup35_crit_edge, label %lor.lhs.false27

for.body22.cleanup35_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

lor.lhs.false27:                                  ; preds = %for.body22
  %thread29 = getelementptr inbounds %struct.amdgpu_ring, ptr %9, i32 0, i32 3, i32 11
  %10 = ptrtoint ptr %thread29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread29, align 8
  %tobool30.not = icmp eq ptr %11, null
  br i1 %tobool30.not, label %lor.lhs.false27.cleanup35_crit_edge, label %if.end32

lor.lhs.false27.cleanup35_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup35

if.end32:                                         ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kthread_unpark(ptr noundef nonnull %11) #10
  br label %cleanup35

cleanup35:                                        ; preds = %if.end32, %lor.lhs.false27.cleanup35_crit_edge, %for.body22.cleanup35_crit_edge
  %inc39 = add nuw nsw i32 %i.181, 1
  %exitcond82.not = icmp eq i32 %inc39, 28
  br i1 %exitcond82.not, label %for.end40, label %cleanup35.for.body22_crit_edge

cleanup35.for.body22_crit_edge:                   ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22

for.end40:                                        ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef %reset_sem) #10
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %call.i78 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i78, ptr %last_busy.i, align 8
  br label %cleanup45.sink.split

cleanup45.sink.split:                             ; preds = %for.end40, %entry.cleanup45.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.end40 ], [ %call.i, %entry.cleanup45.sink.split_crit_edge ]
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %call.i79 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup45.sink.split, %if.end.cleanup45_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end.cleanup45_crit_edge ], [ %retval.0.ph, %cleanup45.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_ring_tests(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_vm_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_debugfs_vm_info_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_debugfs_vm_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %filelist_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 17
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %filelist_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup18

if.end:                                           ; preds = %entry
  %filelist = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2, i32 18
  %2 = ptrtoint ptr %filelist to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn39 = load ptr, ptr %filelist, align 4
  %cmp.not40 = icmp eq ptr %.pn39, %filelist
  br i1 %cmp.not40, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn39, %if.end.for.body_crit_edge ]
  %driver_priv = getelementptr i8, ptr %.pn41, i32 224
  %3 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_priv, align 4
  %task_info = getelementptr inbounds %struct.amdgpu_vm, ptr %4, i32 0, i32 26
  %pid = getelementptr inbounds %struct.amdgpu_vm, ptr %4, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %6, ptr noundef %task_info) #10
  %bo = getelementptr inbounds %struct.amdgpu_vm, ptr %4, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %8, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %8, i32 0, i32 4, i32 0, i32 9
  %11 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %12, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %13 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %cleanup
    i32 -512, label %for.body.for.end_crit_edge
  ], !prof !173

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -17736
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.39, ptr noundef %8) #16
  br label %for.end

cleanup:                                          ; preds = %for.body
  tail call void @amdgpu_debugfs_vm_bo_info(ptr noundef %4, ptr noundef %m) #10
  %16 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %21, ptr noundef null) #10
  %22 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4, i32 0, i32 9
  %24 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %25) #10
  tail call void @ww_mutex_unlock(ptr noundef %25) #10
  %26 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, %filelist
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.i, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %r.1 = phi i32 [ %retval.1.i.i, %do.end.i ], [ 0, %if.end.for.end_crit_edge ], [ %retval.1.i.i, %for.body.for.end_crit_edge ], [ %retval.1.i.i, %cleanup.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %filelist_mutex) #10
  br label %cleanup18

cleanup18:                                        ; preds = %for.end, %entry.cleanup18_crit_edge
  %retval.0 = phi i32 [ %r.1, %for.end ], [ %call1, %entry.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_debugfs_vm_bo_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !124, !125, !126}
!llvm.named.register.sp = !{!128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1621, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1624, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1627, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1631, i32 28}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1634, i32 3}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1647, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1670, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1672, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1674, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1676, i32 22}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1681, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1686, i32 22}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1234, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1235, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1236, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1237, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1238, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1239, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1240, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1241, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1242, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1243, i32 2}
!44 = !{ptr @debugfs_regs_names, !45, !"debugfs_regs_names", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1233, i32 20}
!46 = !{ptr @debugfs_regs, !47, !"debugfs_regs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1220, i32 38}
!48 = !{ptr @amdgpu_debugfs_regs_fops, !49, !"amdgpu_debugfs_regs_fops", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1165, i32 37}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 150, i32 8}
!52 = !{ptr @amdgpu_debugfs_regs2_fops, !53, !"amdgpu_debugfs_regs2_fops", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1155, i32 37}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!56 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!61 = !{ptr @amdgpu_debugfs_regs2_open.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 213, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @amdgpu_debugfs_regs_didt_fops, !65, !"amdgpu_debugfs_regs_didt_fops", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1171, i32 37}
!66 = !{ptr @amdgpu_debugfs_regs_pcie_fops, !67, !"amdgpu_debugfs_regs_pcie_fops", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1177, i32 37}
!68 = !{ptr @amdgpu_debugfs_regs_smc_fops, !69, !"amdgpu_debugfs_regs_smc_fops", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1183, i32 37}
!70 = !{ptr @amdgpu_debugfs_gca_config_fops, !71, !"amdgpu_debugfs_gca_config_fops", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1190, i32 37}
!72 = !{ptr @amdgpu_debugfs_sensors_fops, !73, !"amdgpu_debugfs_sensors_fops", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1196, i32 37}
!74 = !{ptr @amdgpu_debugfs_wave_fops, !75, !"amdgpu_debugfs_wave_fops", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1202, i32 37}
!76 = !{ptr @amdgpu_debugfs_gpr_fops, !77, !"amdgpu_debugfs_gpr_fops", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1207, i32 37}
!78 = !{ptr @amdgpu_debugfs_gfxoff_fops, !79, !"amdgpu_debugfs_gfxoff_fops", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1213, i32 37}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @fops_ib_preempt, !84, !"fops_ib_preempt", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1606, i32 1}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1532, i32 3}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @amdgpu_debugfs_ib_preempt._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @amdgpu_debugfs_ib_preempt._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1540, i32 3}
!93 = !{ptr @amdgpu_debugfs_ib_preempt._entry.31, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @amdgpu_debugfs_ib_preempt._entry_ptr.33, !92, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1476, i32 10}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1416, i32 11}
!99 = !{ptr @fops_sclk_set, !100, !"fops_sclk_set", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1609, i32 1}
!101 = !{ptr @amdgpu_evict_vram_fops, !102, !"amdgpu_evict_vram_fops", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1392, i32 1}
!103 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @amdgpu_evict_gtt_fops, !105, !"amdgpu_evict_gtt_fops", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1394, i32 1}
!106 = !{ptr @amdgpu_debugfs_test_ib_fops, !107, !"amdgpu_debugfs_test_ib_fops", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1390, i32 1}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1295, i32 16}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1298, i32 17}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1300, i32 17}
!114 = !{ptr @amdgpu_debugfs_vm_info_fops, !115, !"amdgpu_debugfs_vm_info_fops", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1391, i32 1}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c", i32 1376, i32 17}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!120 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @amdgpu_bo_reserve._entry, !119, !"_entry", i1 false, i1 false}
!125 = !{ptr @amdgpu_bo_reserve._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!128 = !{!"sp"}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 2154212722}
!139 = !{i64 2150116170}
!140 = !{i64 2150121104}
!141 = !{i64 2150142822}
!142 = !{i64 2150147716}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{i64 2150224243}
!145 = !{i64 2150224568}
!146 = !{i64 2154224584}
!147 = !{i64 6421784}
!148 = !{i64 6421981}
!149 = !{i64 2153907214}
!150 = !{i64 2158834448, i64 2158834728, i64 2158835062, i64 2158835396}
!151 = !{i64 2158822893, i64 2158823173, i64 2158823507, i64 2158823841}
!152 = !{i64 2153926229, i64 2153926254}
!153 = !{i64 2158856570, i64 2158856850, i64 2158857184, i64 2158857518}
!154 = !{i64 2158845015, i64 2158845295, i64 2158845629, i64 2158845963}
!155 = !{i64 2158888701, i64 2158888981, i64 2158889315, i64 2158889649}
!156 = !{i64 2158900259, i64 2158900539, i64 2158900873, i64 2158901207}
!157 = !{i64 2158867518, i64 2158867798, i64 2158868132, i64 2158868466}
!158 = !{i64 2158879076, i64 2158879356, i64 2158879690, i64 2158880024}
!159 = !{i64 2158913944, i64 2158914224, i64 2158914558, i64 2158914892}
!160 = !{i64 2158925502, i64 2158925782, i64 2158926116, i64 2158926450}
!161 = !{i64 2158935271, i64 2158935551, i64 2158935885, i64 2158936219}
!162 = !{i8 0, i8 2}
!163 = !{i64 2158944142, i64 2158944422, i64 2158944756, i64 2158945090}
!164 = !{i64 2158957436, i64 2158957716, i64 2158958050, i64 2158958384}
!165 = !{i64 2158972334, i64 2158972614, i64 2158972948, i64 2158973282}
!166 = !{!"auto-init"}
!167 = !{i64 2158993435, i64 2158993715, i64 2158994049, i64 2158994383}
!168 = !{i64 2158983893, i64 2158984173, i64 2158984507, i64 2158984841}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{i64 2148568888}
!171 = !{i64 2148483352, i64 2148483384, i64 2148483413, i64 2148483447, i64 2148483478, i64 2148483501}
!172 = !{i64 2149604374}
!173 = !{!"branch_weights", i32 1, i32 4000, i32 1}
